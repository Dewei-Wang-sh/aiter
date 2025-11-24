# SPDX-License-Identifier: MIT
# Copyright (C) 2024-2025, Advanced Micro Devices, Inc. All rights reserved.

from typing import Optional
import functools
import json
import os
import torch
import triton
from aiter.ops.triton.utils._triton.pid_preprocessing import pid_grid, remap_xcd
import aiter.ops.triton.utils._triton.arch_info as arch_info
from aiter.ops.triton.utils.core import AITER_TRITON_CONFIGS_PATH
from aiter.ops.triton.utils.logger import AiterTritonLogger
from triton import language as tl

_LOGGER = AiterTritonLogger()
from triton.experimental import gluon
from triton.experimental.gluon import language as gl



@triton.heuristics(
    {
        "EVEN_K": lambda args: (args["K"] % (args["SPLITK_BLOCK_SIZE"]) == 0)
        and (args["SPLITK_BLOCK_SIZE"] % args["BLOCK_SIZE_K"] == 0),
        "GRID_MN": lambda args: triton.cdiv(args["M"], args["BLOCK_SIZE_M"])
        * triton.cdiv(args["N"], args["BLOCK_SIZE_N"]),
    }
)
@gluon.jit
#def _gemm_a16_w16_kernel_gluon(
def _gemm_a16_w16_kernel(
    a_ptr,
    b_ptr,
    bias_ptr,
    c_ptr,
    M,
    N,
    K,
    stride_am,
    stride_ak,
    stride_bk,
    stride_bn,
    stride_ck,
    stride_cm,
    stride_cn,
    # Meta-parameters
    BLOCK_SIZE_M: gl.constexpr,
    BLOCK_SIZE_N: gl.constexpr,
    BLOCK_SIZE_K: gl.constexpr,
    GROUP_SIZE_M: gl.constexpr,
    NUM_KSPLIT: gl.constexpr,
    SPLITK_BLOCK_SIZE: gl.constexpr,
    EVEN_K: gl.constexpr,
    GRID_MN: gl.constexpr,
    cache_modifier: gl.constexpr,
    activation: gl.constexpr,
    use_activation: gl.constexpr,
    ADD_BIAS: gl.constexpr,
    SKIP_REDUCE: gl.constexpr,
):
    """Kernel for computing the matmul C = A x B.
    A has shape (M, K), B has shape (K, N) and C has shape (M, N)
    """

    gl.assume(stride_am > 0)
    gl.assume(stride_ak > 0)
    gl.assume(stride_bk > 0)
    gl.assume(stride_bn > 0)
    gl.assume(stride_ck > 0)
    gl.assume(stride_cm > 0)
    gl.assume(stride_cn > 0)

    # -----------------------------------------------------------
    # Map program ids `pid` to the block of C it should compute.
    # This is done in a grouped ordering to promote L2 data reuse.
    pid_unified = gl.program_id(axis=0)
    pid_unified = remap_xcd(pid_unified, GRID_MN * NUM_KSPLIT, NUM_XCDS=8)
    pid_k = pid_unified % NUM_KSPLIT
    pid = pid_unified // NUM_KSPLIT
    num_pid_m = gl.cdiv(M, BLOCK_SIZE_M)
    num_pid_n = gl.cdiv(N, BLOCK_SIZE_N)

    if NUM_KSPLIT == 1:
        pid_m, pid_n = pid_grid(pid, num_pid_m, num_pid_n, GROUP_SIZE_M=GROUP_SIZE_M)
    else:
        pid_m = pid // num_pid_n
        pid_n = pid % num_pid_n

    gl.assume(pid_m >= 0)
    gl.assume(pid_n >= 0)
    gl.assume(pid_k >= 0)

    blocked_a: gl.constexpr = gl.BlockedLayout(
        size_per_thread=[1, 8],
        #threads_per_warp=[64/(BLOCK_SIZE_K/8), BLOCK_SIZE_K/8],
        threads_per_warp=[8, 8],
        warps_per_cta=[8, 1],
        order=[1, 0],
    )
    blocked_b: gl.constexpr = gl.BlockedLayout(
        size_per_thread=[8, 1],
        threads_per_warp=[8, 8],
        warps_per_cta=[1, 8],
        order=[0, 1],
    )
    mfma_layout: gl.constexpr = gl.amd.AMDMFMALayout(
        version=4,
        instr_shape=[16, 16, 32],
        transposed=True,
        warps_per_cta=[2, 4],
        #warps_per_cta=[NUM_WARPS // 2, 2],
    )
    dot_a_layout: gl.constexpr = gl.DotOperandLayout(
        operand_index=0, parent=mfma_layout, k_width=8
    )
    dot_b_layout: gl.constexpr = gl.DotOperandLayout(
        operand_index=1, parent=mfma_layout, k_width=8
    )
    shared_a: gl.constexpr = gl.SwizzledSharedLayout(
        vec=8, per_phase=2, max_phase=8, order=[1, 0]
    )
    shared_b: gl.constexpr = gl.SwizzledSharedLayout(
        vec=8, per_phase=2, max_phase=8, order=[0, 1]
    )
    smem_a = gl.allocate_shared_memory(
        a_ptr.type.element_ty, [BLOCK_SIZE_M, BLOCK_SIZE_K], layout=shared_a
    )
    smem_b = gl.allocate_shared_memory(
        b_ptr.type.element_ty, [BLOCK_SIZE_K, BLOCK_SIZE_N], layout=shared_b
    )


    split_k_start = pid_k * SPLITK_BLOCK_SIZE
    if split_k_start < K:
        # Create pointers for first block of A and B input matrices
        offs_ak = gl.arange(0, BLOCK_SIZE_K, layout=gl.SliceLayout(0, blocked_a))
        offs_bk = gl.arange(0, BLOCK_SIZE_K, layout=gl.SliceLayout(1, blocked_b))
        offs_ak_split = split_k_start + offs_ak
        offs_bk_split = split_k_start + offs_bk
        offs_am = (pid_m * BLOCK_SIZE_M + gl.arange(0, BLOCK_SIZE_M, layout=gl.SliceLayout(1, blocked_a))) % M
        offs_bn = (pid_n * BLOCK_SIZE_N + gl.arange(0, BLOCK_SIZE_N, layout=gl.SliceLayout(0, blocked_b))) % N

        a_offs = offs_am[:, None] * stride_am + offs_ak_split[None, :] * stride_ak
        b_offs = offs_bk_split[:, None] * stride_bk + offs_bn[None, :] * stride_bn
        a_ptrs = a_ptr + (
            offs_am[:, None] * stride_am + offs_ak_split[None, :] * stride_ak
        )
        b_ptrs = b_ptr + (
            offs_bk_split[:, None] * stride_bk + offs_bn[None, :] * stride_bn
        )

        acc_dtype = gl.float32 if c_ptr.type.element_ty != gl.int8 else gl.int32
        #if ADD_BIAS:
        #    if NUM_KSPLIT == 1 or (SKIP_REDUCE and pid_k == 0):
        #        accumulator = gl.load(bias_ptr + offs_bn).to(dtype=acc_dtype)
        #        accumulator = gl.broadcast_to(
        #            accumulator[None, :], (BLOCK_SIZE_M, BLOCK_SIZE_N)
        #        )
        #    else:
        #        accumulator = gl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=acc_dtype, layout=mfma_layout)
        #else:
        #    accumulator = gl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=acc_dtype, layout=mfma_layout)
        accumulator0 = gl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N//2), dtype=acc_dtype, layout=mfma_layout)
        accumulator1 = gl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N//2), dtype=acc_dtype, layout=mfma_layout)

        split_k_end = gl.minimum(split_k_start + SPLITK_BLOCK_SIZE, K)
        k_span = split_k_end - split_k_start
        num_k_iter = gl.cdiv(k_span, BLOCK_SIZE_K)

        # prologue
        #a = gl.load(a_ptrs)
        #b = gl.load(b_ptrs, cache_modifier=cache_modifier)
        a = gl.amd.cdna3.buffer_load(ptr=a_ptr, offsets=a_offs)
        b = gl.amd.cdna3.buffer_load(ptr=b_ptr, offsets=b_offs, cache=cache_modifier)
        smem_a.store(a)
        smem_b.store(b)

        a_offs += BLOCK_SIZE_K * stride_ak
        b_offs += BLOCK_SIZE_K * stride_bk

        b_s0 = smem_b.slice(0, 128, 1)
        b_s1 = smem_b.slice(128, 128, 1)

        gl.assume(num_k_iter > 2)
        # mainloop
        for k in range(num_k_iter-1):
            a = gl.amd.cdna3.buffer_load(ptr=a_ptr, offsets=a_offs)
            b = gl.amd.cdna3.buffer_load(ptr=b_ptr, offsets=b_offs, cache=cache_modifier)

            #gl.amd.cdna3.sched_barrier(0x0)
            #gl.amd.cdna3.iglp_opt(0x1)  # 1 is best perf

            cur_a = smem_a.load(layout=dot_a_layout)

            cur_b = b_s0.load(layout=dot_b_layout)
            accumulator0 = gl.amd.cdna4.mfma(cur_a, cur_b, accumulator0)
            cur_b = b_s1.load(layout=dot_b_layout)
            accumulator1 = gl.amd.cdna4.mfma(cur_a, cur_b, accumulator1)
            #gl.amd.cdna3.sched_barrier(0x0)

            smem_a.store(a)
            smem_b.store(b)
            a_offs += BLOCK_SIZE_K * stride_ak
            b_offs += BLOCK_SIZE_K * stride_bk

            #gl.amd.cdna3.sched_barrier(0x0)

        # epilogue
        cur_a = smem_a.load(layout=dot_a_layout)
        cur_b = b_s0.load(layout=dot_b_layout)
        accumulator0 = gl.amd.cdna4.mfma(cur_a, cur_b, accumulator0)
        cur_b = b_s1.load(layout=dot_b_layout)
        accumulator1 = gl.amd.cdna4.mfma(cur_a, cur_b, accumulator1)


        # Write back the block of the output matrix C with masks.
        c = accumulator0.to(c_ptr.type.element_ty)
        #offs_cm = pid_m.to(gl.int64) * BLOCK_SIZE_M + gl.arange(0, BLOCK_SIZE_M, layout=gl.SliceLayout(1, mfma_layout))
        #offs_cn = pid_n.to(gl.int64) * BLOCK_SIZE_N + gl.arange(0, BLOCK_SIZE_N, layout=gl.SliceLayout(0, mfma_layout))
        offs_cm = pid_m * BLOCK_SIZE_M + gl.arange(0, BLOCK_SIZE_M, layout=gl.SliceLayout(1, mfma_layout))
        offs_cn = pid_n * BLOCK_SIZE_N + gl.arange(0, BLOCK_SIZE_N//2, layout=gl.SliceLayout(0, mfma_layout))
        c_offs = stride_cm * offs_cm[:, None] + stride_cn * offs_cn[None, :] + pid_k * stride_ck

        # c_ptrs = c_ptr + c_offs
        # c_ptrs = (
        #     c_ptr
        #     + stride_cm * offs_cm[:, None]
        #     + stride_cn * offs_cn[None, :]
        #     + pid_k * stride_ck
        # )
        c_mask = (offs_cm[:, None] < M) & (offs_cn[None, :] < N)
        gl.amd.cdna4.buffer_store(
            stored_value=c, ptr=c_ptr, offsets=c_offs, mask=c_mask
        )


        c = accumulator1.to(c_ptr.type.element_ty)
        c_offs = c_offs + BLOCK_SIZE_N//2
        gl.amd.cdna4.buffer_store(
            stored_value=c, ptr=c_ptr, offsets=c_offs, mask=c_mask
        )
        # gl.store(c_ptrs, c, mask=c_mask)
