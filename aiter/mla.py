# SPDX-License-Identifier: MIT
# Copyright (C) 2024-2026, Advanced Micro Devices, Inc. All rights reserved.

# user interface

import functools
import math
from typing import Optional
import torch
import triton
import triton.language as tl

import aiter
from aiter import dtypes
from aiter.jit.utils.chip_info import get_cu_num, get_gfx

import os

_MLA_STAGE1_MODE = os.getenv("VLLM_AITER_MLA_STAGE1_MODE", "asm").strip().lower()
_MLA_STAGE2_MODE = os.getenv("VLLM_AITER_MLA_STAGE2_MODE", "triton").strip().lower()
_MLA_STAGE1_MFMA_MIN_TOKENS = max(
    1, int(os.getenv("VLLM_AITER_MLA_STAGE1_MFMA_MIN_TOKENS", "65536"))
)
_MLA_STAGE1_MFMA_TARGET_TOKENS = max(
    1024, int(os.getenv("VLLM_AITER_MLA_STAGE1_MFMA_TARGET_TOKENS", "8192"))
)
_MLA_STAGE1_MFMA_BLOCK_N = max(
    64, int(os.getenv("VLLM_AITER_MLA_STAGE1_MFMA_BLOCK_N", "128"))
)
_MLA_STAGE1_MFMA_BLOCK_K = 32
_MLA_STAGE1_MFMA_HEADS = int(os.getenv("VLLM_AITER_MLA_STAGE1_MFMA_HEADS", "4"))
_MLA_STAGE1_MFMA_BLOCK_V = 128

_LOG2E = math.log2(math.e)
_LN2 = math.log(2.0)
_MLA_STAGE1_MFMA_LOGGED = False


def _reinterpret_fp8_rows(kv_buffer: torch.Tensor) -> torch.Tensor:
    """Views packed MLA KV rows as FP8 rows without changing storage."""
    if kv_buffer.dtype == torch.uint8:
        kv_buffer = kv_buffer.view(dtypes.fp8)
    return kv_buffer.view(kv_buffer.shape[0], kv_buffer.shape[-1])


@triton.jit
def _fwd_kernel_stage2_asm(
    Mid_O,
    Mid_lse,
    O,  # noqa: E741
    Final_lse,
    qo_indptr,
    kv_indptr,
    num_kv_splits_indptr,
    stride_mid_ob: tl.int64,
    stride_mid_oh: tl.int64,
    stride_mid_os: tl.int64,
    stride_obs: tl.int64,
    stride_oh: tl.int64,
    stride_lse_bs: tl.int64,
    MAYBE_FINAL_OUT: tl.constexpr,
    HAS_FINAL_LSE: tl.constexpr,
    BATCH_NUM: tl.constexpr,
    BLOCK_DV: tl.constexpr,
    Lv: tl.constexpr,
    mgc: tl.constexpr,
):
    cur_batch = tl.program_id(0)
    cur_head = tl.program_id(1)
    cur_qo_start = tl.load(qo_indptr + cur_batch)
    cur_qo_end = tl.load(qo_indptr + cur_batch + 1)
    cur_split_start = tl.load(num_kv_splits_indptr + cur_batch)
    cur_split_end = tl.load(num_kv_splits_indptr + cur_batch + 1)
    num_max_kv_splits = tl.load(num_kv_splits_indptr + BATCH_NUM)
    cur_kv_seq_len = tl.load(kv_indptr + cur_batch + 1) - tl.load(kv_indptr + cur_batch)
    offs_d = tl.arange(0, BLOCK_DV)
    mask_d = offs_d < Lv

    offs_logic = cur_qo_start * stride_mid_ob + cur_head * stride_mid_oh
    offs_v = offs_logic * Lv + offs_d
    num_valid_kv_splits = tl.minimum(
        cur_split_end - cur_split_start, tl.cdiv(cur_kv_seq_len, mgc)
    )
    FINAL_OUT = MAYBE_FINAL_OUT and num_max_kv_splits == BATCH_NUM

    for cur_qo in range(cur_qo_start, cur_qo_end):
        if FINAL_OUT:
            input_ptr = Mid_O.to(tl.pointer_type(O.type.element_ty))
            out = tl.load(
                input_ptr
                + Lv * (cur_qo * stride_mid_os + cur_head * stride_mid_oh)
                + offs_d,
                mask=mask_d,
                other=0.0,
            )
            tl.store(
                O + cur_qo * stride_obs + cur_head * stride_oh + offs_d,
                out,
                mask=mask_d,
            )
        else:
            e_sum = 0.0
            e_max = -float("inf")
            acc = tl.zeros((BLOCK_DV,), dtype=tl.float32)
            for split_kv_id in range(0, num_valid_kv_splits):
                tv = tl.load(
                    Mid_O + offs_v + split_kv_id * stride_mid_os * Lv,
                    mask=mask_d,
                    other=0.0,
                )
                tlogic = tl.load(Mid_lse + offs_logic + split_kv_id * stride_mid_os)
                n_e_max = tl.maximum(tlogic, e_max)

                old_scale = tl.exp(e_max - n_e_max)
                acc *= old_scale
                exp_logic = tl.exp(tlogic - n_e_max)
                acc += exp_logic * tv

                e_sum = e_sum * old_scale + exp_logic
                e_max = n_e_max
            offs_logic += stride_mid_ob
            offs_v += stride_mid_ob * Lv
            tl.store(
                O + cur_qo * stride_obs + cur_head * stride_oh + offs_d,
                acc / e_sum,
                mask=mask_d,
            )
            if HAS_FINAL_LSE:
                tl.store(
                    Final_lse + cur_qo * stride_lse_bs + cur_head,
                    e_max + tl.log(e_sum),
                )


@triton.jit
def _mla_head4_mfma_fused_kernel(
    q_nope_ptr,  # [NUM_HEADS, v_head_dim]  e.g. [4, 512]
    q_pe_ptr,  # [NUM_HEADS, pe_dim]      e.g. [4, 64]
    kv_ptr,  # [total_tokens, full_dim]  e.g. [N, 576]
    kv_indices_ptr,  # [total_kv]
    split_ptr_ptr,  # [num_kv_splits + 1]
    numer_ptr,  # [num_kv_splits, NUM_HEADS, v_head_dim]
    meta_ptr,  # [num_kv_splits, NUM_HEADS, 2]
    stride_qn_h,
    stride_qn_d,
    stride_qp_h,
    stride_qp_d,
    stride_kv_row,
    stride_kv_d,
    stride_numer_s,
    stride_numer_h,
    stride_numer_v,
    stride_meta_s,
    stride_meta_h,
    v_head_dim: tl.constexpr,  # 512
    pe_dim: tl.constexpr,  # 64
    scale,
    kv_scale,
    BLOCK_N: tl.constexpr,  # 64 or 128
    NUM_HEADS: tl.constexpr,  # 4
):
    """Fused stage-1 MLA decode kernel for TP8 head-4 path.

    Each workgroup processes one KV split. Iterates over BLOCK_N tiles,
    computing QK scores (nope + pe), online softmax, and weighted-V
    accumulation in a single pass — no intermediate score buffer.

    QK is decomposed into nope and pe components:
      scores = q_nope[H, 512] @ kv_nope.T[512, N] + q_pe[H, 64] @ kv_pe.T[64, N]
    V reuses kv_nope directly:
      numer += weights[H, N] @ kv_nope[N, 512]
    """
    log2e: tl.constexpr = 1.4426950408889634

    pid_split = tl.program_id(0)

    split_start = tl.load(split_ptr_ptr + pid_split)
    split_end = tl.load(split_ptr_ptr + pid_split + 1)
    split_len = split_end - split_start

    offs_h = tl.arange(0, NUM_HEADS)
    offs_nope = tl.arange(0, v_head_dim)  # [0..511]
    offs_pe = tl.arange(0, pe_dim)  # [0..63]

    stride_qn_h_i64 = tl.full((), stride_qn_h, tl.int64)
    stride_qn_d_i64 = tl.full((), stride_qn_d, tl.int64)
    stride_qp_h_i64 = tl.full((), stride_qp_h, tl.int64)
    stride_qp_d_i64 = tl.full((), stride_qp_d, tl.int64)
    stride_kv_row_i64 = tl.full((), stride_kv_row, tl.int64)
    stride_kv_d_i64 = tl.full((), stride_kv_d, tl.int64)

    # Load Q once (shared across all tiles in this split)
    q_nope = tl.load(
        q_nope_ptr
        + offs_h[:, None].to(tl.int64) * stride_qn_h_i64
        + offs_nope[None, :].to(tl.int64) * stride_qn_d_i64,
    ).to(
        tl.bfloat16
    )  # [NUM_HEADS, 512]

    q_pe = tl.load(
        q_pe_ptr
        + offs_h[:, None].to(tl.int64) * stride_qp_h_i64
        + offs_pe[None, :].to(tl.int64) * stride_qp_d_i64,
    ).to(
        tl.bfloat16
    )  # [NUM_HEADS, 64]

    # Running accumulators
    run_max = tl.full((NUM_HEADS,), -float("inf"), dtype=tl.float32)
    run_denom = tl.zeros((NUM_HEADS,), dtype=tl.float32)
    run_numer = tl.zeros((NUM_HEADS, v_head_dim), dtype=tl.float32)

    for n0 in range(0, split_len, BLOCK_N):
        offs_n = n0 + tl.arange(0, BLOCK_N)
        token_mask = offs_n < split_len

        # Gather token indices for this tile
        token_indices = tl.load(
            kv_indices_ptr + split_start + offs_n,
            mask=token_mask,
            other=0,
        ).to(tl.int64)

        # Load kv_nope [BLOCK_N, 512] — serves as both K_nope and V
        kv_nope = tl.load(
            kv_ptr
            + token_indices[:, None] * stride_kv_row_i64
            + offs_nope[None, :].to(tl.int64) * stride_kv_d_i64,
            mask=token_mask[:, None],
            other=0.0,
        ).to(tl.bfloat16)

        # Load kv_pe [BLOCK_N, 64]
        kv_pe = tl.load(
            kv_ptr
            + token_indices[:, None] * stride_kv_row_i64
            + (v_head_dim + offs_pe[None, :]).to(tl.int64) * stride_kv_d_i64,
            mask=token_mask[:, None],
            other=0.0,
        ).to(tl.bfloat16)

        # QK scores: q_nope @ kv_nope.T + q_pe @ kv_pe.T  → [NUM_HEADS, BLOCK_N]
        scores = tl.dot(q_nope, tl.trans(kv_nope)) + tl.dot(q_pe, tl.trans(kv_pe))
        scores = scores * scale
        scores = tl.where(token_mask[None, :], scores, -float("inf"))

        # Online softmax
        tile_max = tl.max(scores, axis=1)  # [NUM_HEADS]
        next_max = tl.maximum(run_max, tile_max)
        old_scale = tl.exp2((run_max - next_max) * log2e)
        weights = tl.exp2((scores - next_max[:, None]) * log2e)
        weights = tl.where(token_mask[None, :], weights, 0.0)

        # V accumulation: weights @ kv_nope → [NUM_HEADS, 512]
        weighted_v = tl.dot(weights.to(tl.bfloat16), kv_nope)
        run_numer = (
            run_numer * old_scale[:, None] + weighted_v.to(tl.float32) * kv_scale
        )
        run_denom = run_denom * old_scale + tl.sum(weights, axis=1)
        run_max = next_max

    # Store output
    pid_split_i64 = tl.full((), pid_split, tl.int64)
    stride_numer_s_i64 = tl.full((), stride_numer_s, tl.int64)
    stride_numer_h_i64 = tl.full((), stride_numer_h, tl.int64)
    stride_numer_v_i64 = tl.full((), stride_numer_v, tl.int64)
    stride_meta_s_i64 = tl.full((), stride_meta_s, tl.int64)
    stride_meta_h_i64 = tl.full((), stride_meta_h, tl.int64)

    tl.store(
        numer_ptr
        + pid_split_i64 * stride_numer_s_i64
        + offs_h[:, None].to(tl.int64) * stride_numer_h_i64
        + offs_nope[None, :].to(tl.int64) * stride_numer_v_i64,
        run_numer,
    )
    meta_offs = (
        meta_ptr
        + pid_split_i64 * stride_meta_s_i64
        + offs_h.to(tl.int64) * stride_meta_h_i64
    )
    tl.store(meta_offs, run_max)
    tl.store(meta_offs + 1, run_denom)


@triton.jit
def _fwd_kernel_stage2_lazy_meta(
    Mid_O,
    Mid_lse,
    O,
    qo_indptr,
    kv_indptr,
    num_kv_splits_indptr,
    stride_logits_b: tl.int64,
    stride_logits_h: tl.int64,
    stride_logits_s: tl.int64,
    stride_meta_b: tl.int64,
    stride_meta_h: tl.int64,
    stride_meta_s: tl.int64,
    stride_obs: tl.int64,
    stride_oh: tl.int64,
    BATCH_NUM: tl.constexpr,
    BLOCK_DV: tl.constexpr,
    Lv: tl.constexpr,
    mgc: tl.constexpr,
):
    """Stage-2 cross-split reducer for lazy (max, denom) metadata format.

    Unlike the upstream _fwd_kernel_stage2_asm which reads a single LSE
    scalar, this kernel reads (split_max, split_denom) pairs and uses
    exp2-based numerically stable merge.
    """
    log2e = 1.4426950408889634
    cur_batch = tl.program_id(0)
    cur_head = tl.program_id(1)
    cur_qo_start = tl.load(qo_indptr + cur_batch)
    cur_qo_end = tl.load(qo_indptr + cur_batch + 1)
    cur_split_start = tl.load(num_kv_splits_indptr + cur_batch)
    cur_split_end = tl.load(num_kv_splits_indptr + cur_batch + 1)
    cur_kv_seq_len = tl.load(kv_indptr + cur_batch + 1) - tl.load(kv_indptr + cur_batch)

    offs_d = tl.arange(0, BLOCK_DV)
    mask_d = offs_d < Lv

    offs_meta = cur_qo_start * stride_meta_b + cur_head * stride_meta_h
    offs_logits = cur_qo_start * stride_logits_b + cur_head * stride_logits_h + offs_d
    num_valid_kv_splits = tl.minimum(
        cur_split_end - cur_split_start, tl.cdiv(cur_kv_seq_len, mgc)
    )

    for cur_qo in range(cur_qo_start, cur_qo_end):
        e_sum = 0.0
        e_max = -float("inf")
        acc = tl.zeros((BLOCK_DV,), dtype=tl.float32)
        for split_kv_id in range(0, num_valid_kv_splits):
            tv = tl.load(
                Mid_O + offs_logits + split_kv_id * stride_logits_s,
                mask=mask_d,
                other=0.0,
            )
            split_meta_base = Mid_lse + offs_meta + split_kv_id * stride_meta_s
            split_max = tl.load(split_meta_base + 0)
            split_denom = tl.load(split_meta_base + 1)
            n_e_max = tl.maximum(split_max, e_max)

            old_scale = tl.exp2((e_max - n_e_max) * log2e)
            acc *= old_scale
            split_scale = tl.exp2((split_max - n_e_max) * log2e)
            acc += split_scale * tv

            e_sum = e_sum * old_scale + split_scale * split_denom
            e_max = n_e_max
        offs_meta += stride_meta_b
        offs_logits += stride_logits_b
        tl.store(
            O + cur_qo * stride_obs + cur_head * stride_oh + offs_d,
            acc / e_sum,
            mask=mask_d,
        )


def _mla_stage1_head4_mfma(
    *,
    q: torch.Tensor,
    kv_buffer: torch.Tensor,
    logits: torch.Tensor,
    attn_lse: torch.Tensor,
    kv_indptr: torch.Tensor,
    kv_indices: torch.Tensor,
    num_kv_splits: int,
    sm_scale: float,
    kv_scale: torch.Tensor | None,
    v_head_dim: int,
) -> None:
    """Runs the fused MFMA stage-1 path for TP8 local-head4 decode."""

    total_kv = int(kv_indptr[-1].item() - kv_indptr[0].item())
    pe_dim = int(q.shape[2]) - v_head_dim  # 576 - 512 = 64

    # Build split pointers: evenly divide total_kv into num_kv_splits
    split_ptr = torch.linspace(
        0,
        total_kv,
        steps=num_kv_splits + 1,
        device=q.device,
        dtype=torch.int32,
    )
    split_ptr[0] = 0
    split_ptr[-1] = total_kv

    kv_rows = _reinterpret_fp8_rows(kv_buffer)
    kv_scale_val = float(kv_scale.item() if kv_scale is not None else 1.0)

    # Split Q [1, nhead, full_dim] into q_nope [nhead, v_head_dim] and q_pe [nhead, pe_dim]
    q_heads = q.view(q.shape[1], q.shape[2]).contiguous()  # [4, 576]
    q_nope = q_heads[:, :v_head_dim].contiguous()  # [4, 512]
    q_pe = q_heads[:, v_head_dim:].contiguous()  # [4, 64]

    # Output buffers for fused kernel
    numer = torch.zeros(
        (num_kv_splits, _MLA_STAGE1_MFMA_HEADS, v_head_dim),
        dtype=torch.float32,
        device=q.device,
    )
    meta = torch.zeros(
        (num_kv_splits, _MLA_STAGE1_MFMA_HEADS, 2),
        dtype=torch.float32,
        device=q.device,
    )

    grid = (num_kv_splits,)
    _mla_head4_mfma_fused_kernel[grid](
        q_nope,
        q_pe,
        kv_rows,
        kv_indices,
        split_ptr,
        numer,
        meta,
        q_nope.stride(0),
        q_nope.stride(1),
        q_pe.stride(0),
        q_pe.stride(1),
        kv_rows.stride(0),
        kv_rows.stride(1),
        numer.stride(0),
        numer.stride(1),
        numer.stride(2),
        meta.stride(0),
        meta.stride(1),
        v_head_dim=v_head_dim,
        pe_dim=pe_dim,
        scale=float(sm_scale),
        kv_scale=kv_scale_val,
        BLOCK_N=_MLA_STAGE1_MFMA_BLOCK_N,
        NUM_HEADS=_MLA_STAGE1_MFMA_HEADS,
        num_warps=4,
        num_stages=2,
    )

    # Copy into logits/attn_lse expected by caller: [total_s, splits, H, Dv] / [total_s, splits, H, 2]
    logits[0, :, :, :] = numer
    attn_lse[0, :, :, :] = meta


def _mla_stage2_reduce_torch_ref(
    logits: torch.Tensor,
    attn_lse: torch.Tensor,
    out: torch.Tensor,
    final_lse: torch.Tensor,
) -> None:
    """FP32 PyTorch fallback reducer supporting lazy (max, denom) metadata."""
    # logits: [S, splits, H, Dv]
    # attn_lse: [S, splits, H, 2] with [split_max, split_denom]
    split_max = attn_lse[..., 0]
    split_denom = attn_lse[..., 1].clamp_min_(1e-20)
    global_max = split_max.max(dim=1, keepdim=True).values
    weights = torch.exp2((split_max - global_max) * _LOG2E).unsqueeze(-1)
    numer = (logits * weights).sum(dim=1, keepdim=False)
    denom = (
        (split_denom * weights.squeeze(-1)).sum(dim=1, keepdim=False).clamp_min_(1e-20)
    )
    out.copy_((numer / denom.unsqueeze(-1)).to(dtype=out.dtype))
    final_lse.copy_(global_max.squeeze(1) + torch.log2(denom) * _LN2)


@functools.lru_cache()
def get_meta_param(num_kv_splits, bs, total_kv, nhead, max_seqlen_q, dtype):
    if num_kv_splits is None:
        cu_num = get_cu_num()
        avg_kv = total_kv / bs
        overhead = 84.1
        tmp = [
            (
                bs
                * i
                / ((bs * i + cu_num - 1) // cu_num * cu_num)
                * avg_kv
                / (avg_kv + overhead * i),
                i,
            )
            for i in range(1, 17)
        ]
        num_kv_splits = sorted(tmp, key=lambda x: x[0], reverse=True)[0][1]

    get_block_n_fp8 = {
        4: 128,
        5: 128,
        6: 128,
        7: 128,
        8: 128,
        9: 128,
        10: 128,
        11: 128,
        12: 128,
        13: 128,
        14: 128,
        15: 128,
        16: 128,
        32: 128,
        48: 64,
        64: 64,
        128: 32,
        256: 32,
        384: 32,
        512: 32,
    }

    if dtype == dtypes.fp8:
        min_block_n = get_block_n_fp8[int(nhead * max_seqlen_q)]
        num_kv_splits = min(
            num_kv_splits, int(total_kv / bs + min_block_n - 1) // min_block_n
        )
        if num_kv_splits > 1:
            num_kv_splits = min(
                num_kv_splits,
                (abs(total_kv / bs - max_seqlen_q) // min_block_n + 1),
            )

    num_kv_splits_indptr = torch.arange(
        0, (bs + 1) * num_kv_splits, num_kv_splits, dtype=torch.int, device="cuda"
    )

    return num_kv_splits, num_kv_splits_indptr


def mla_decode_fwd(
    q,
    kv_buffer,
    o,
    qo_indptr,
    kv_indptr,
    kv_indices,
    kv_last_page_lens,
    max_seqlen_q,
    page_size=1,
    nhead_kv=1,
    sm_scale=None,  # 1.0 / (qk_head_dim**0.5)
    logit_cap=0.0,
    num_kv_splits=None,  # for experts only!!!
    num_kv_splits_indptr=None,  # for experts only!!!
    work_meta_data=None,
    work_indptr=None,
    work_info_set=None,
    reduce_indptr=None,
    reduce_final_map=None,
    reduce_partial_map=None,
    q_scale=None,
    kv_scale=None,
    intra_batch_mode=False,
    return_logits=False,
    return_lse=False,
):
    device = q.device
    assert logit_cap <= 0, f"{logit_cap=} is not support yet"
    if kv_buffer.dtype != torch.uint8:
        _, _, _, qk_head_dim = kv_buffer.shape
    else:
        _, _, qk_head_dim = q.shape

    if sm_scale is None:
        sm_scale = 1.0 / (qk_head_dim**0.5)

    ori_total_s, ori_nhead, ori_v_head_dim = o.shape
    total_s, nhead, v_head_dim = o.shape
    bs = qo_indptr.shape[0] - 1
    total_kv = kv_indices.shape[0]

    persistent_mode = work_meta_data is not None

    io_transformed = False
    qseqlen_folded = False

    if not persistent_mode:
        if num_kv_splits is None or num_kv_splits_indptr is None:
            num_kv_splits, num_kv_splits_indptr = get_meta_param(
                num_kv_splits, bs, total_kv, nhead, max_seqlen_q, q.dtype
            )

        # ----- MFMA head-4 early-return path (TP=8 Kimi Linear) -----
        mfma_total_kv = int(kv_indptr[-1].item() - kv_indptr[0].item())
        if (
            _MLA_STAGE1_MODE == "mfma_head4"
            and bs == 1
            and max_seqlen_q == 1
            and int(nhead) == _MLA_STAGE1_MFMA_HEADS
            and q.dtype == dtypes.bf16
            and kv_buffer.dtype in (torch.uint8, dtypes.fp8)
            and _MLA_STAGE1_MFMA_MIN_TOKENS <= mfma_total_kv
        ):
            mfma_num_kv_splits = min(256, mfma_total_kv)
            mfma_num_kv_splits = max(1, mfma_num_kv_splits)
            kv_len_per_split = math.ceil(mfma_total_kv / mfma_num_kv_splits)
            mfma_num_kv_splits_indptr = torch.arange(
                0,
                (bs + 1) * mfma_num_kv_splits,
                mfma_num_kv_splits,
                dtype=torch.int,
                device=device,
            )

            global _MLA_STAGE1_MFMA_LOGGED
            if not _MLA_STAGE1_MFMA_LOGGED:
                print(
                    "[aiter.mla] stage1 mode=mfma_head4 (fused): "
                    f"total_kv={mfma_total_kv} "
                    f"num_kv_splits={mfma_num_kv_splits} "
                    f"kv_len_per_split={kv_len_per_split} "
                    f"min_tokens={_MLA_STAGE1_MFMA_MIN_TOKENS}",
                    flush=True,
                )
                _MLA_STAGE1_MFMA_LOGGED = True

            mfma_logits = torch.empty(
                (total_s, mfma_num_kv_splits, nhead, v_head_dim),
                dtype=dtypes.fp32,
                device=device,
            )
            mfma_attn_lse = torch.empty(
                (total_s, mfma_num_kv_splits, nhead, 2),
                dtype=dtypes.fp32,
                device=device,
            )
            mfma_final_lse = torch.empty(
                (total_s, nhead), dtype=dtypes.fp32, device=device
            )

            _mla_stage1_head4_mfma(
                q=q,
                kv_buffer=kv_buffer,
                logits=mfma_logits,
                attn_lse=mfma_attn_lse,
                kv_indptr=kv_indptr,
                kv_indices=kv_indices,
                num_kv_splits=mfma_num_kv_splits,
                sm_scale=float(sm_scale),
                kv_scale=kv_scale,
                v_head_dim=int(v_head_dim),
            )

            # Single-split shortcut: direct divide
            if mfma_num_kv_splits == 1:
                numer = mfma_logits[:, 0].to(torch.float32)
                s_max = mfma_attn_lse[:, 0, :, 0].to(torch.float32)
                s_denom = mfma_attn_lse[:, 0, :, 1].to(torch.float32).clamp_min_(1e-20)
                final = numer / s_denom.unsqueeze(-1)
                o.copy_(final.to(dtype=o.dtype))
                mfma_final_lse.copy_(s_max + torch.log(s_denom))
                return o, mfma_final_lse

            # Multi-split stage-2 reduction
            if _MLA_STAGE2_MODE == "torch_ref":
                _mla_stage2_reduce_torch_ref(
                    logits=mfma_logits,
                    attn_lse=mfma_attn_lse,
                    out=o,
                    final_lse=mfma_final_lse,
                )
            else:
                Lv = v_head_dim
                BLOCK_DV = triton.next_power_of_2(Lv)
                mgc_mfma = 16
                grid = (bs, nhead)
                _fwd_kernel_stage2_lazy_meta[grid](
                    mfma_logits,
                    mfma_attn_lse,
                    o,
                    qo_indptr,
                    kv_indptr,
                    mfma_num_kv_splits_indptr,
                    mfma_logits.stride(0),
                    mfma_logits.stride(2),
                    mfma_logits.stride(1),
                    mfma_attn_lse.stride(0),
                    mfma_attn_lse.stride(2),
                    mfma_attn_lse.stride(1),
                    o.stride(0),
                    o.stride(1),
                    BATCH_NUM=bs,
                    BLOCK_DV=BLOCK_DV,
                    Lv=Lv,
                    mgc=mgc_mfma,
                    num_warps=4,
                    num_stages=2,
                    waves_per_eu=4,
                )

            return mfma_logits, mfma_final_lse
        # ----- End MFMA head-4 path -----

        mgc = 64 if max_seqlen_q == 1 and nhead == 16 else 16
        mgc = (
            32
            if (
                nhead == 128 and q.dtype == dtypes.fp8 and kv_buffer.dtype == dtypes.fp8
            )
            or (
                nhead == 64
                and q.dtype == dtypes.bf16
                and kv_buffer.dtype == dtypes.bf16
                and max_seqlen_q == 1
            )
            else mgc
        )

        MAYBE_FINAL_OUT = True

        if nhead == 16 and max_seqlen_q == 1:
            MAYBE_FINAL_OUT = False

        logits = (
            o.view((total_s, num_kv_splits, nhead, v_head_dim))
            if (
                num_kv_splits == 1
                and (
                    q.dtype == dtypes.fp8
                    or (q.dtype == dtypes.bf16 and max_seqlen_q == 4)
                )
            )
            else torch.empty(
                (total_s, num_kv_splits, nhead, v_head_dim),
                dtype=dtypes.fp32,
                device=device,
            )
        )

        attn_lse = torch.empty(
            (total_s, num_kv_splits, nhead, 1), dtype=dtypes.fp32, device=device
        )
        final_lse = (
            torch.empty((total_s, nhead), dtype=dtypes.fp32, device=device)
            if return_lse
            else None
        )

        aiter.mla_decode_stage1_asm_fwd(
            q,
            kv_buffer,
            qo_indptr,
            kv_indptr,
            kv_indices,
            kv_last_page_lens,
            num_kv_splits_indptr,
            None,
            None,
            None,
            max_seqlen_q,
            page_size,
            nhead_kv,
            sm_scale,
            logits,
            attn_lse,
            o,
            final_lse,
            q_scale,
            kv_scale,
        )

        if num_kv_splits == 1 and (
            q.dtype == dtypes.fp8 or (q.dtype == dtypes.bf16 and max_seqlen_q == 4)
        ):
            lse = final_lse if return_lse else attn_lse
            return logits.view(total_s, nhead, v_head_dim), lse

        Lv = v_head_dim
        BLOCK_DV = triton.next_power_of_2(Lv)
        grid = (bs, nhead)
        extra_kargs = {"waves_per_eu": 4}

        has_final_lse = final_lse is not None
        final_lse_buf = (
            final_lse
            if has_final_lse
            else torch.empty((1,), dtype=dtypes.fp32, device=device)
        )

        _fwd_kernel_stage2_asm[grid](
            logits,
            attn_lse,
            o,
            final_lse_buf,
            qo_indptr,
            kv_indptr,
            num_kv_splits_indptr,
            attn_lse.stride(0),
            attn_lse.stride(2),
            attn_lse.stride(1),
            o.stride(0),
            o.stride(1),
            final_lse_buf.stride(0) if has_final_lse else 0,
            MAYBE_FINAL_OUT=MAYBE_FINAL_OUT,
            HAS_FINAL_LSE=has_final_lse,
            BATCH_NUM=bs,
            BLOCK_DV=BLOCK_DV,
            Lv=Lv,
            mgc=mgc,
            num_warps=4,
            num_stages=2,
            **extra_kargs,
        )
    else:
        if num_kv_splits is None:
            num_kv_splits = get_cu_num()
        if (
            nhead == 16
            or (
                get_gfx() in ("gfx942", "gfx950")
                and nhead == 128
                and q.dtype == dtypes.fp8
                and kv_buffer.dtype == dtypes.fp8
            )
            or (
                get_gfx() == "gfx950"
                and nhead == 32
                and q.dtype == dtypes.fp8
                and kv_buffer.dtype == dtypes.fp8
                and max_seqlen_q == 4
            )
            or (
                get_gfx() == "gfx950"
                and nhead == 32
                and q.dtype == dtypes.fp8
                and kv_buffer.dtype == dtypes.fp8
                and max_seqlen_q == 2
            )
            or (
                get_gfx() == "gfx950"
                and nhead * max_seqlen_q % 128 == 0
                and q.dtype == dtypes.bf16
                and kv_buffer.dtype == dtypes.bf16
            )
            or (
                get_gfx() == "gfx950"
                and nhead == 8
                and q.dtype == dtypes.fp8
                and kv_buffer.dtype == dtypes.fp8
                and max_seqlen_q == 4
            )
            or (
                get_gfx() == "gfx942"
                and nhead == 8
                and q.dtype == dtypes.bf16
                and kv_buffer.dtype == dtypes.bf16
                and max_seqlen_q == 2
            )
            or (
                get_gfx() == "gfx950"
                and nhead == 64
                and q.dtype == dtypes.fp8
                and kv_buffer.dtype == dtypes.fp8
                and max_seqlen_q == 1
            )
        ):
            # Natively support cases
            pass
        elif nhead in range(32, 128 + 1, 16) and persistent_mode:
            # we use nhead=16 to simulate such cases by customized metadata
            # metadata also views qo's tensor as shape (total_s * (nhead // 16), 16, ...)
            use_qseqlen_fold = (
                get_gfx() == "gfx950"
                and q.dtype == dtypes.fp8
                and kv_buffer.dtype == dtypes.fp8
                and (
                    (max_seqlen_q * (ori_nhead // 16) == 4)
                    or (ori_nhead == 64 and max_seqlen_q == 2)
                )
            )

            if use_qseqlen_fold and (ori_nhead == 64 and max_seqlen_q == 2):
                fold_factor = ori_nhead // 32
                nhead = 32
            else:
                fold_factor = ori_nhead // 16
                nhead = 16

            total_s = ori_total_s * fold_factor
            if use_qseqlen_fold:
                max_seqlen_q = max_seqlen_q * fold_factor
                q = q.view(total_s, nhead, -1)
                qseqlen_folded = True
            elif max_seqlen_q == 1:
                q = q.view(total_s, nhead, -1)
            else:
                q = (
                    q.reshape(
                        ori_total_s // max_seqlen_q,
                        max_seqlen_q,
                        ori_nhead // nhead,
                        nhead,
                        -1,
                    )
                    .permute(0, 2, 1, 3, 4)
                    .reshape(total_s, nhead, -1)
                )
                o_orig = o

            o = o.view(total_s, nhead, -1)
            io_transformed = True
        else:
            assert False, f"{nhead=} and {max_seqlen_q=} not supported"

        logits = torch.empty(
            (reduce_partial_map.size(0) * max_seqlen_q, 1, nhead, v_head_dim),
            dtype=dtypes.fp32,
            device=device,
        )
        attn_lse = torch.empty(
            (reduce_partial_map.size(0) * max_seqlen_q, 1, nhead, 1),
            dtype=dtypes.fp32,
            device=device,
        )
        final_lse = (
            torch.empty((total_s, nhead), dtype=dtypes.fp32, device=device)
            if return_lse
            else None
        )

        use_hk = (
            nhead == 128
            and q.dtype == dtypes.fp8
            and kv_buffer.dtype == dtypes.fp8
            and page_size == 1
            and os.getenv("AITER_ENABLE_EXPERIMENTAL", False)
        )

        if use_hk:
            aiter.hk_mla_decode_fwd(
                q,
                kv_buffer,
                qo_indptr,
                kv_indptr,
                kv_indices,
                kv_last_page_lens,
                work_indptr,
                work_info_set,
                max_seqlen_q,
                sm_scale,
                logits,
                attn_lse,
                o,
            )
        else:
            aiter.mla_decode_stage1_asm_fwd(
                q,
                kv_buffer,
                qo_indptr,
                kv_indptr,
                kv_indices,
                kv_last_page_lens,
                num_kv_splits_indptr,
                work_meta_data,
                work_indptr,
                work_info_set,
                max_seqlen_q,
                page_size,
                nhead_kv,
                sm_scale,
                logits,
                attn_lse,
                o,
                final_lse,
                q_scale,
                kv_scale,
            )

        aiter.mla_reduce_v1(
            logits,
            attn_lse,
            reduce_indptr,
            reduce_final_map,
            reduce_partial_map,
            max_seqlen_q,
            o,
            final_lse,
        )

    if io_transformed:
        if return_logits:
            logits = logits.view(-1, 1, ori_nhead, v_head_dim)

        if max_seqlen_q == 1 or qseqlen_folded:
            q = q.view(ori_total_s, ori_nhead, -1)
            o = o.view(ori_total_s, ori_nhead, -1)
            if final_lse is not None:
                final_lse = final_lse.view(ori_total_s, ori_nhead)
        else:
            new_o = (
                o.reshape(
                    ori_total_s // max_seqlen_q,
                    ori_nhead // nhead,
                    max_seqlen_q,
                    nhead,
                    -1,
                )
                .permute(0, 2, 1, 3, 4)
                .reshape(ori_total_s, ori_nhead, -1)
                .contiguous()
            )
            o_orig.set_(new_o)
            o = o_orig

            if final_lse is not None:
                final_lse = (
                    final_lse.reshape(
                        ori_total_s // max_seqlen_q,
                        ori_nhead // nhead,
                        max_seqlen_q,
                        nhead,
                    )
                    .permute(0, 2, 1, 3)
                    .reshape(ori_total_s, ori_nhead)
                    .contiguous()
                )

    return logits, final_lse


def mla_prefill_fwd(
    q,  # [num_seqs, num_heads, head_size]
    kv_buffer,  # [num_page, page_size, num_kv_heads, kv_lora_rank + qk_rope_head_dim]
    o,  # [num_seqs, num_heads, v_head_dim]
    qo_indptr,
    kv_indptr,
    kv_indices,
    kv_last_page_lens,
    max_seqlen_q,
    sm_scale=None,  # 1.0 / (qk_head_dim**0.5)
    logit_cap=0.0,
    num_kv_splits=None,  # for experts only!!!
):
    device = q.device
    num_page, page_size, nhead_kv, qk_head_dim = kv_buffer.shape
    assert logit_cap <= 0, f"{logit_cap=} is not support yet"
    if sm_scale is None:
        sm_scale = 1.0 / (qk_head_dim**0.5)
    bs, nhead, v_head_dim = o.shape

    num_kv_splits = 1

    logits = o.view(bs, num_kv_splits, nhead, v_head_dim)
    # logits = torch.empty(
    #     (bs, num_kv_splits, nhead, v_head_dim), dtype=dtypes.fp32, device=device
    # )
    attn_lse = torch.empty(
        (bs, num_kv_splits, nhead, 1), dtype=dtypes.fp32, device=device
    )

    aiter.mla_prefill_asm_fwd(
        q,
        kv_buffer,
        qo_indptr,
        kv_indptr,
        kv_indices,
        kv_last_page_lens,
        max_seqlen_q,
        sm_scale,
        logits,
        attn_lse,
    )

    # return logits.view(bs, nhead, v_head_dim).to(o.dtype), attn_lse
    return o.view(bs, nhead, v_head_dim), attn_lse


def mla_prefill_ps_fwd(
    Q: torch.Tensor,
    K: torch.Tensor,
    V: torch.Tensor,
    output: torch.Tensor,
    qo_indptr: torch.Tensor,
    kv_indptr: torch.Tensor,
    kv_page_indices: torch.Tensor,
    work_indptr: Optional[torch.Tensor],
    work_info_set: Optional[torch.Tensor],
    max_seqlen_q: int,
    is_causal: bool,
    reduce_indptr: Optional[torch.Tensor] = None,
    reduce_final_map: Optional[torch.Tensor] = None,
    reduce_partial_map: Optional[torch.Tensor] = None,
    softmax_scale: float = None,
    q_scale: Optional[torch.Tensor] = None,
    k_scale: Optional[torch.Tensor] = None,
    v_scale: Optional[torch.Tensor] = None,
) -> None:
    device = Q.device
    total_s, nhead, v_head_dim = output.shape
    if softmax_scale is None:
        softmax_scale = 1.0 / (v_head_dim**0.5)

    tile_q = 256
    logits = torch.empty(
        (reduce_partial_map.size(0) * tile_q, nhead, v_head_dim),
        dtype=dtypes.fp32,
        device=device,
    )
    attn_lse = torch.empty(
        (reduce_partial_map.size(0) * tile_q, nhead), dtype=dtypes.fp32, device=device
    )
    final_lse = torch.empty((total_s, nhead), dtype=dtypes.fp32, device=device)

    aiter.mla_prefill_ps_asm_fwd(
        Q,
        K,
        V,
        qo_indptr,
        kv_indptr,
        kv_page_indices,
        work_indptr,
        work_info_set,
        max_seqlen_q,
        softmax_scale,
        is_causal,
        logits,
        attn_lse,
        output,
        q_scale,
        k_scale,
        v_scale,
    )

    aiter.mla_reduce_v1(
        logits,
        attn_lse,
        reduce_indptr,
        reduce_final_map,
        reduce_partial_map,
        tile_q,
        output,
        final_lse,
    )

    return output.view(total_s, nhead, v_head_dim), attn_lse


@triton.jit
def _mla_prefill_reduce_kernel(
    # Input tensors
    partial_output_ptr,  # [padded_num_tokens * available_tgs, num_head_q, v_head_dim]
    partial_lse_ptr,  # [padded_num_tokens * available_tgs, num_head_q]
    # Metadata tensors
    reduce_indptr_ptr,  # [num_reduce_groups + 1]
    reduce_final_map_ptr,  # [num_reduce_groups, 2]: [qo_start, qo_end]
    reduce_partial_map_ptr,  # [num_partial_tiles]: [partial_qo_loc]
    # Output tensor
    output_ptr,  # [total_tokens, num_head_q, v_head_dim]
    # Strides
    stride_po_tok,
    stride_po_head,
    stride_po_dim,
    stride_lse_tok,
    stride_lse_head,
    stride_o_tok,
    stride_o_head,
    stride_o_dim,
    # Constants
    TILE_Q: tl.constexpr,
    V_HEAD_DIM: tl.constexpr,
    BLOCK_DIM: tl.constexpr,
    MAX_PARTIALS: tl.constexpr,
):
    """
    Each program processes one (reduce_group, head, token) combination.
    Grid: (num_reduce_groups, num_heads, TILE_Q)

    All heads are uniformly split and reduced together.
    """

    group_id = tl.program_id(0)
    head_id = tl.program_id(1)
    tok_offset = tl.program_id(2)  # q_tile

    # Load reduce group metadata (read once per block)
    start_idx = tl.load(reduce_indptr_ptr + group_id)
    end_idx = tl.load(reduce_indptr_ptr + group_id + 1)
    num_partials = end_idx - start_idx

    if num_partials == 0:
        return

    # Load final map: [qo_start, qo_end]
    final_map_offset = group_id * 2
    qo_start = tl.load(reduce_final_map_ptr + final_map_offset + 0)
    qo_end = tl.load(reduce_final_map_ptr + final_map_offset + 1)

    q_len = qo_end - qo_start
    tok_id = tok_offset

    # Skip if beyond valid range
    if tok_id >= q_len:
        return

    # compute max LSE and collect LSE values
    max_lse = -float("inf")
    lse_values = tl.zeros((MAX_PARTIALS,), dtype=tl.float32) - float("inf")

    for p_idx in range(num_partials):
        if p_idx < num_partials:
            partial_qo_loc = tl.load(reduce_partial_map_ptr + start_idx + p_idx)

            lse_offset = (
                partial_qo_loc + tok_id
            ) * stride_lse_tok + head_id * stride_lse_head
            lse = tl.load(partial_lse_ptr + lse_offset)

            is_valid = lse == lse
            lse = tl.where(is_valid, lse, -float("inf"))

            lse_values = tl.where(tl.arange(0, MAX_PARTIALS) == p_idx, lse, lse_values)

            # Update max
            max_lse = tl.maximum(max_lse, lse)

    # compute sum_exp
    sum_exp = 0.0
    for p_idx in tl.static_range(MAX_PARTIALS):
        if p_idx < num_partials:
            # Extract the lse value for this partition
            lse = tl.sum(tl.where(tl.arange(0, MAX_PARTIALS) == p_idx, lse_values, 0.0))
            exp_val = tl.exp(lse - max_lse)
            sum_exp += exp_val

    final_lse = max_lse + tl.log(sum_exp)

    # accumulate weighted outputs in chunks
    # Process V_HEAD_DIM in chunks of BLOCK_DIM
    num_dim_blocks = tl.cdiv(V_HEAD_DIM, BLOCK_DIM)

    for dim_block_id in range(num_dim_blocks):
        dim_offs = dim_block_id * BLOCK_DIM + tl.arange(0, BLOCK_DIM)
        dim_mask = dim_offs < V_HEAD_DIM

        acc = tl.zeros((BLOCK_DIM,), dtype=tl.float32)

        for p_idx in tl.static_range(MAX_PARTIALS):
            if p_idx < num_partials:
                partial_qo_loc = tl.load(reduce_partial_map_ptr + start_idx + p_idx)

                # Extract lse value
                lse = tl.sum(
                    tl.where(tl.arange(0, MAX_PARTIALS) == p_idx, lse_values, 0.0)
                )

                scale = tl.exp(lse - final_lse)

                # load partial output
                out_offset = (
                    (partial_qo_loc + tok_id) * stride_po_tok
                    + head_id * stride_po_head
                    + dim_offs * stride_po_dim
                )
                partial_out = tl.load(
                    partial_output_ptr + out_offset, mask=dim_mask, other=0.0
                )

                # Handle NaN in output (NaN != NaN)
                is_valid_out = partial_out == partial_out
                partial_out = tl.where(is_valid_out, partial_out, 0.0)

                acc += scale * partial_out

        output_offset = (
            (qo_start + tok_id) * stride_o_tok
            + head_id * stride_o_head
            + dim_offs * stride_o_dim
        )
        tl.store(
            output_ptr + output_offset,
            acc.to(output_ptr.dtype.element_ty),
            mask=dim_mask,
        )


def mla_prefill_reduce_triton(
    partial_output: torch.Tensor,  # [padded_num_tokens * available_tgs, num_head_q, v_head_dim]
    partial_lse: torch.Tensor,  # [padded_num_tokens * available_tgs, num_head_q]
    reduce_indptr: torch.Tensor,  # [num_reduce_groups + 1], int32
    reduce_final_map: torch.Tensor,  # [num_reduce_groups, 2], int32: [qo_start, qo_end]
    reduce_partial_map: torch.Tensor,  # [num_partial_tiles], int32: [partial_qo_loc]
    output: torch.Tensor,  # [total_tokens, num_head_q, v_head_dim], output buffer
    tile_q: int = 256,  # Q tile size (for padding)
    max_partials_static: int = None,  # Maximum number of partials, defaults to num_cu
) -> None:
    """Triton version of mla_prefill_reduce.
    All heads are uniformly split and reduced together.
    """
    MAX_PARTIALS_STATIC = (
        max_partials_static if max_partials_static is not None else get_cu_num()
    )

    num_reduce_groups = reduce_indptr.shape[0] - 1
    _, num_heads, v_head_dim = partial_output.shape

    if num_reduce_groups == 0:
        return

    # Check max_partials doesn't exceed the fixed constant in kernel
    max_partials = 0
    for i in range(num_reduce_groups):
        num_p = (reduce_indptr[i + 1] - reduce_indptr[i]).item()
        max_partials = max(max_partials, num_p)

    if max_partials > MAX_PARTIALS_STATIC:
        raise ValueError(
            f"max_partials={max_partials} exceeds MAX_PARTIALS_STATIC={MAX_PARTIALS_STATIC}. "
            "Consider increasing MAX_PARTIALS_STATIC."
        )

    # Choose block size for v_head_dim chunks
    BLOCK_DIM = 64
    if v_head_dim <= 64:
        BLOCK_DIM = triton.next_power_of_2(v_head_dim)

    # Grid: (num_reduce_groups, num_heads, TILE_Q)
    grid = (num_reduce_groups, num_heads, tile_q)

    _mla_prefill_reduce_kernel[grid](
        partial_output,
        partial_lse,
        reduce_indptr,
        reduce_final_map,
        reduce_partial_map,
        output,
        # Strides
        partial_output.stride(0),
        partial_output.stride(1),
        partial_output.stride(2),
        partial_lse.stride(0),
        partial_lse.stride(1),
        output.stride(0),
        output.stride(1),
        output.stride(2),
        # Constants
        TILE_Q=tile_q,
        V_HEAD_DIM=v_head_dim,
        BLOCK_DIM=BLOCK_DIM,
        MAX_PARTIALS=MAX_PARTIALS_STATIC,
        num_warps=4,
    )


def mla_prefill_reduce(
    partial_output: torch.Tensor,  # [padded_num_tokens * available_tgs, num_head_q, v_head_dim]
    partial_lse: torch.Tensor,  # [padded_num_tokens * available_tgs, num_head_q]
    reduce_indptr: torch.Tensor,  # [num_reduce_groups + 1], int32
    reduce_final_map: torch.Tensor,  # [num_reduce_groups, 2], int32: [qo_start, qo_end]
    reduce_partial_map: torch.Tensor,  # [num_partial_tiles], int32: [partial_qo_loc]
    output: torch.Tensor,  # [total_tokens, num_head_q, v_head_dim], output buffer
    tile_q: int = 256,  # Q tile size (for padding)
    use_triton: bool = True,  # Whether to use Triton kernel
) -> None:

    if True:
        try:
            return mla_prefill_reduce_triton(
                partial_output,
                partial_lse,
                reduce_indptr,
                reduce_final_map,
                reduce_partial_map,
                output,
                tile_q,
            )
        except Exception as e:
            print(f"Warning: Triton reduce failed ({e}), falling back to PyTorch")

    # torch implementation, just for reference
    num_reduce_groups = reduce_indptr.shape[0] - 1
    device = partial_output.device
    dtype = partial_output.dtype
    _, num_heads, v_head_dim = partial_output.shape

    for group_id in range(num_reduce_groups):
        start_idx = reduce_indptr[group_id].item()  # 0
        end_idx = reduce_indptr[group_id + 1].item()  # 2
        num_partials = end_idx - start_idx

        if num_partials == 0:
            continue

        final_map = reduce_final_map[group_id]
        qo_start = final_map[0].item()
        qo_end = final_map[1].item()

        q_len = qo_end - qo_start  # actual length (may be < tile_q for last tile)
        read_len = tile_q

        # Collect partial indices
        partial_indices = []
        for partial_idx in range(start_idx, end_idx):
            partial_qo_loc = reduce_partial_map[partial_idx].item()
            partial_indices.append(partial_qo_loc)

        # Process all heads together
        for head_idx in range(num_heads):
            partial_lses = []
            partial_outputs = []

            for partial_qo_loc in partial_indices:
                lse = partial_lse[partial_qo_loc : partial_qo_loc + read_len, head_idx]
                partial_lses.append(lse)

                out = partial_output[
                    partial_qo_loc : partial_qo_loc + read_len, head_idx, :
                ]
                partial_outputs.append(out)

            if len(partial_lses) == 0:
                continue

            partial_lses = torch.stack(partial_lses, dim=0)  # [K, tile_q]
            partial_outputs = torch.stack(partial_outputs, dim=0)  # [K, tile_q, D]

            nan_mask = torch.isnan(partial_lses)  # [K, tile_q]
            neg_inf = torch.tensor(float("-inf"), device=device, dtype=dtype)
            zero = torch.tensor(0.0, device=device, dtype=dtype)

            partial_lses_clean = torch.where(nan_mask, neg_inf, partial_lses)

            max_lse = torch.max(partial_lses_clean, dim=0)[0]  # [tile_q]

            # Compute sum_exp (NaN values contribute 0 to sum)
            # exp(-inf - max) = 0, so NaN values are automatically excluded
            sum_exp = torch.sum(
                torch.where(
                    nan_mask, zero, torch.exp(partial_lses - max_lse.unsqueeze(0))
                ),
                dim=0,
            )

            final_lse = max_lse + torch.log(sum_exp)

            scales = torch.exp(partial_lses_clean - final_lse.unsqueeze(0)).unsqueeze(
                -1
            )  # [K, tile_q, 1]

            nan_output_mask = torch.isnan(partial_outputs)  # [K, tile_q, D]
            partial_outputs_clean = torch.where(nan_output_mask, zero, partial_outputs)

            final_output = torch.sum(
                partial_outputs_clean * scales, dim=0
            )  # [tile_q, v_head_dim]

            output[qo_start:qo_end, head_idx, :] = final_output[:q_len, :]
