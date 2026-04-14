# SPDX-License-Identifier: MIT
# Copyright (C) 2024-2026, Advanced Micro Devices, Inc. All rights reserved.

# MLA Triton kernel is from: https://github.com/deepseek-ai/FlashMLA/blob/main/benchmark/bench_flash_mla.py
# Adapted below 2 places for aiter:
# KV layout (flat [N, dim] buffer + KV_PE_OFFSET),
# USE_2D_VIEW page table.

import torch
import triton
import triton.language as tl


@triton.jit
def _mla_attn_kernel(
    Q_nope,
    Q_pe,
    Kv_c_cache,
    K_pe_cache,
    Req_to_tokens,
    B_seq_len,
    O,
    sm_scale,
    stride_q_nope_bs,
    stride_q_nope_h,
    stride_q_pe_bs,
    stride_q_pe_h,
    stride_kv_c_bs,
    stride_k_pe_bs,
    stride_req_to_tokens_bs,
    stride_o_b,
    stride_o_h,
    stride_o_s,
    BLOCK_H: tl.constexpr,
    BLOCK_N: tl.constexpr,
    NUM_KV_SPLITS: tl.constexpr,
    PAGE_SIZE: tl.constexpr,
    HEAD_DIM_CKV: tl.constexpr,
    HEAD_DIM_KPE: tl.constexpr,
    KV_PE_OFFSET: tl.constexpr,
    USE_2D_VIEW: tl.constexpr,
):
    cur_batch = tl.program_id(0)
    cur_head_id = tl.program_id(1)
    split_kv_id = tl.program_id(2)

    # USE_2D_VIEW=True: block_table[batch, max_seqlen], cache_seqlens[batch]
    # USE_2D_VIEW=False: kv_indices[total_kv], kv_indptr[batch+1]
    if USE_2D_VIEW:
        batch_page_start = stride_req_to_tokens_bs * cur_batch
        cur_batch_seq_len = tl.load(B_seq_len + cur_batch)
    else:
        batch_page_start = tl.load(B_seq_len + cur_batch)
        cur_batch_seq_len = tl.load(B_seq_len + cur_batch + 1) - batch_page_start

    offs_d_ckv = tl.arange(0, HEAD_DIM_CKV)
    cur_head = cur_head_id * BLOCK_H + tl.arange(0, BLOCK_H)
    offs_q_nope = (
        cur_batch * stride_q_nope_bs
        + cur_head[:, None] * stride_q_nope_h
        + offs_d_ckv[None, :]
    )
    q_nope = tl.load(Q_nope + offs_q_nope)

    offs_d_kpe = tl.arange(0, HEAD_DIM_KPE)
    offs_q_pe = (
        cur_batch * stride_q_pe_bs
        + cur_head[:, None] * stride_q_pe_h
        + offs_d_kpe[None, :]
    )
    q_pe = tl.load(Q_pe + offs_q_pe)

    e_max = tl.zeros([BLOCK_H], dtype=tl.float32) - float("inf")
    e_sum = tl.zeros([BLOCK_H], dtype=tl.float32)
    acc = tl.zeros([BLOCK_H, HEAD_DIM_CKV], dtype=tl.float32)

    kv_len_per_split = tl.cdiv(cur_batch_seq_len, NUM_KV_SPLITS)
    split_kv_start = kv_len_per_split * split_kv_id
    split_kv_end = tl.minimum(split_kv_start + kv_len_per_split, cur_batch_seq_len)

    for start_n in range(split_kv_start, split_kv_end, BLOCK_N):
        offs_n = start_n + tl.arange(0, BLOCK_N)
        if USE_2D_VIEW:
            kv_page_number = tl.load(
                Req_to_tokens + batch_page_start + offs_n // PAGE_SIZE,
                mask=offs_n < split_kv_end,
                other=0,
            )
            kv_loc = kv_page_number * PAGE_SIZE + offs_n % PAGE_SIZE
        else:
            kv_loc = tl.load(
                Req_to_tokens + batch_page_start + offs_n,
                mask=offs_n < split_kv_end,
                other=0,
            )

        offs_k_c = kv_loc[None, :] * stride_kv_c_bs + offs_d_ckv[:, None]
        k_c = tl.load(
            Kv_c_cache + offs_k_c, mask=offs_n[None, :] < split_kv_end, other=0.0
        )

        qk = tl.dot(q_nope, k_c.to(q_nope.dtype))

        offs_k_pe = (
            kv_loc[None, :] * stride_k_pe_bs + offs_d_kpe[:, None] + KV_PE_OFFSET
        )
        k_pe = tl.load(
            K_pe_cache + offs_k_pe, mask=offs_n[None, :] < split_kv_end, other=0.0
        )

        qk += tl.dot(q_pe, k_pe.to(q_pe.dtype))
        qk *= sm_scale

        qk = tl.where(offs_n[None, :] < split_kv_end, qk, float("-inf"))

        v_c = tl.trans(k_c)

        n_e_max = tl.maximum(tl.max(qk, 1), e_max)
        re_scale = tl.exp(e_max - n_e_max)
        p = tl.exp(qk - n_e_max[:, None])
        acc *= re_scale[:, None]
        acc += tl.dot(p.to(v_c.dtype), v_c)

        e_sum = e_sum * re_scale + tl.sum(p, 1)
        e_max = n_e_max
    offs_o = (
        cur_batch * stride_o_b
        + cur_head[:, None] * stride_o_h
        + split_kv_id * stride_o_s
        + offs_d_ckv[None, :]
    )
    tl.store(O + offs_o, acc / e_sum[:, None])
    offs_o_1 = (
        cur_batch * stride_o_b
        + cur_head * stride_o_h
        + split_kv_id * stride_o_s
        + HEAD_DIM_CKV
    )
    tl.store(O + offs_o_1, e_max + tl.log(e_sum))


@triton.jit
def _mla_softmax_reducev_kernel(
    Logits,
    B_seq_len,
    O,
    stride_l_b,
    stride_l_h,
    stride_l_s,
    stride_o_b,
    stride_o_h,
    NUM_KV_SPLITS: tl.constexpr,
    HEAD_DIM_CKV: tl.constexpr,
    USE_2D_VIEW: tl.constexpr,
):
    cur_batch = tl.program_id(0)
    cur_head = tl.program_id(1)

    if USE_2D_VIEW:
        cur_batch_seq_len = tl.load(B_seq_len + cur_batch)
    else:
        cur_batch_seq_len = tl.load(B_seq_len + cur_batch + 1) - tl.load(
            B_seq_len + cur_batch
        )

    offs_d_ckv = tl.arange(0, HEAD_DIM_CKV)

    e_sum = 0.0
    e_max = -float("inf")
    acc = tl.zeros([HEAD_DIM_CKV], dtype=tl.float32)

    offs_l = cur_batch * stride_l_b + cur_head * stride_l_h + offs_d_ckv
    offs_l_1 = cur_batch * stride_l_b + cur_head * stride_l_h + HEAD_DIM_CKV

    for split_kv_id in range(0, NUM_KV_SPLITS):
        kv_len_per_split = tl.cdiv(cur_batch_seq_len, NUM_KV_SPLITS)
        split_kv_start = kv_len_per_split * split_kv_id
        split_kv_end = tl.minimum(split_kv_start + kv_len_per_split, cur_batch_seq_len)

        if split_kv_end > split_kv_start:
            logits = tl.load(Logits + offs_l + split_kv_id * stride_l_s)
            logits_1 = tl.load(Logits + offs_l_1 + split_kv_id * stride_l_s)

            n_e_max = tl.maximum(logits_1, e_max)
            old_scale = tl.exp(e_max - n_e_max)
            acc *= old_scale
            exp_logic = tl.exp(logits_1 - n_e_max)
            acc += exp_logic * logits

            e_sum = e_sum * old_scale + exp_logic
            e_max = n_e_max

    tl.store(
        O + cur_batch * stride_o_b + cur_head * stride_o_h + offs_d_ckv,
        acc / e_sum,
    )


def mla_decode_triton(
    q_nope,  # [batch, nhead, kv_lora_rank]
    q_pe,  # [batch, nhead, qk_rope_head_dim]
    # Shared: kv_c=[N, kv_lora_rank+qk_rope_head_dim], k_pe=None,              kv_pe_offset=kv_lora_rank
    # Split:  kv_c=[N, kv_lora_rank],                k_pe=[N,qk_rope_head_dim], kv_pe_offset=0
    kv_c,
    o,  # [batch, nhead, kv_lora_rank] output buffer
    page_table,  # 2D: block_table [batch, max_seqlen] | 1D: kv_indices [total_kv]
    seq_info,  # 2D: cache_seqlens [batch]           | 1D: kv_indptr [batch+1]
    sm_scale,
    k_pe=None,
    kv_pe_offset=512,
    num_kv_splits=1,
    page_size=1,
    use_2d_view=True,
):
    if k_pe is None:
        k_pe = kv_c

    batch_size, nhead, head_dim_ckv = q_nope.shape
    head_dim_kpe = q_pe.shape[-1]

    BLOCK_H = 64
    BLOCK_N = 32

    attn_logits = torch.empty(
        (batch_size, nhead, num_kv_splits, head_dim_ckv + 1),
        dtype=torch.float32,
        device=q_nope.device,
    )

    grid = (
        batch_size,
        triton.cdiv(nhead, BLOCK_H),
        num_kv_splits,
    )
    stride_page_bs = page_table.stride(0) if use_2d_view else 0

    _mla_attn_kernel[grid](
        q_nope,
        q_pe,
        kv_c,
        k_pe,
        page_table,
        seq_info,
        attn_logits,
        sm_scale,
        q_nope.stride(0),
        q_nope.stride(1),
        q_pe.stride(0),
        q_pe.stride(1),
        kv_c.stride(-2),
        k_pe.stride(-2),
        stride_page_bs,
        attn_logits.stride(0),
        attn_logits.stride(1),
        attn_logits.stride(2),
        BLOCK_H=BLOCK_H,
        BLOCK_N=BLOCK_N,
        NUM_KV_SPLITS=num_kv_splits,
        PAGE_SIZE=page_size,
        HEAD_DIM_CKV=head_dim_ckv,
        HEAD_DIM_KPE=head_dim_kpe,
        KV_PE_OFFSET=kv_pe_offset,
        USE_2D_VIEW=use_2d_view,
    )

    grid_reduce = (batch_size, nhead)
    _mla_softmax_reducev_kernel[grid_reduce](
        attn_logits,
        seq_info,
        o,
        attn_logits.stride(0),
        attn_logits.stride(1),
        attn_logits.stride(2),
        o.stride(0),
        o.stride(1),
        NUM_KV_SPLITS=num_kv_splits,
        HEAD_DIM_CKV=head_dim_ckv,
        USE_2D_VIEW=use_2d_view,
        num_warps=4,
        num_stages=2,
    )
    return o, None
