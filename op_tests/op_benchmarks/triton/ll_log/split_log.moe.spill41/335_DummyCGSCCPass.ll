*** IR Dump After DummyCGSCCPass (DummyCGSCCPass) ***
Printing <null> Function
=========================================
logs/gpt-oss-x2/fp8x-mx4w-TP1.csv...
=========================================
moe_gemm_a8w4 kernel config:
y.shape=torch.Size([1, 32768, 2048])
y.stride()=(67108864, 2048, 1)
y.dtype=torch.float8_e4m3fn
x.shape=torch.Size([4096, 7168])
x.stride()=(7168, 1)
x.dtype=torch.float8_e4m3fn
w.shape=torch.Size([256, 3584, 4096])
w.stride()=(14680064, 1, 3584)
w.dtype=torch.uint8
w_scales.shape=torch.Size([256, 7168, 128])
w_scales.stride()=(917504, 1, 7168)
config={'block_m': 128, 'block_n': 512, 'block_k': 256, 'num_warps': 8, 'num_stages': 2, 'group_m': 4, 'xcd_swizzle': 8, 'w_cache_modifier': None, 'split_k': 1, 'waves_per_eu': 0, 'matrix_instr_nonkdim': 16, 'kpack': 1}
x_static_scale=tensor(1.0000e-04, device='cuda:0')
quant_static_scale=tensor(1.0000e-04, device='cuda:0')
bias=tensor([[ 1.0784,  0.1147,  2.2400,  ..., -0.1543, -1.0713,  0.3277],
        [ 0.1821, -1.9689, -0.5005,  ...,  0.3771,  0.2497,  0.7034],
        [-0.0752,  1.7627,  0.0251,  ...,  1.2380, -1.2533,  0.2410],
        ...,
        [ 1.9726, -0.8658,  0.5651,  ..., -0.7995,  0.0460, -0.0049],
        [-0.6058, -0.0319,  0.4729,  ...,  0.2309, -1.3709,  0.4844],
        [-0.7433,  1.0887, -2.5769,  ...,  1.4714,  0.2638,  0.5534]],
       device='cuda:0')
stride_bias=4096
gammas=None
gather_indx=tensor([  160,   232,   384,  ..., 31599, 32119, 32215], device='cuda:0',
       dtype=torch.int32)
apply_swiglu_matmul=True
alpha=1.0
limit=1.0
reduction_n_matmul=2
routing_data.n_expts_act=8
swizzle_mx_scale='CDNA4_SCALE'
// -----// AMDGCN Dump //----- //
	.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
	.amdhsa_code_object_version 5
	.text
	.globl	_moe_gemm_a8w4                  ; -- Begin function _moe_gemm_a8w4
	.p2align	8
	.type	_moe_gemm_a8w4,@function
_moe_gemm_a8w4:                         ; @_moe_gemm_a8w4
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.63:
	.file	1 "/home/dewwang/aiter/aiter/ops/triton/_triton_kernels" "moe_op_gemm_a8w4.py"
	.loc	1 190 0 prologue_end            ; moe_op_gemm_a8w4.py:190:0
	s_load_dwordx2 s[2:3], s[0:1], 0x0
	s_load_dwordx8 s[4:11], s[0:1], 0x8
	s_load_dwordx4 s[12:15], s[0:1], 0x28
	s_waitcnt lgkmcnt(0)
	s_branch .LBB0_0
	.loc	1 0 0 is_stmt 0                 ; :0:0
.Ltmp0:
	.p2align	8
; %bb.64:
.LBB0_0:
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b64 s[20:21], s[2:3]
	s_load_dwordx2 s[2:3], s[0:1], 0x98
	s_load_dwordx2 s[6:7], s[0:1], 0x88
	v_mov_b32_e32 v240, v0
	v_mov_b32_e32 v1, 0
.Ltmp1:
	.loc	1 190 0 is_stmt 1               ; moe_op_gemm_a8w4.py:190
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 23, 1), 1
	.loc	1 294 37                        ; moe_op_gemm_a8w4.py:294:37
	s_waitcnt lgkmcnt(0)
	global_load_dword v0, v1, s[6:7]
	s_waitcnt vmcnt(0)
	v_readfirstlane_b32 s6, v0
	.loc	1 294 29 is_stmt 0              ; moe_op_gemm_a8w4.py:294:29
	v_sub_u32_e32 v0, s2, v0
	.loc	1 302 38 is_stmt 1              ; moe_op_gemm_a8w4.py:302:38
	s_mul_i32 s2, s6, s3
	.loc	1 303 32                        ; moe_op_gemm_a8w4.py:303:32
	s_cmp_lt_i32 s16, s2
	.loc	1 303 19 is_stmt 0              ; moe_op_gemm_a8w4.py:303:19
	v_cmp_gt_i32_e32 vcc, 1, v0
	.loc	1 303 32                        ; moe_op_gemm_a8w4.py:303:32
	s_cselect_b64 s[10:11], -1, 0
	s_or_b64 s[10:11], vcc, s[10:11]
	.loc	1 303 25                        ; moe_op_gemm_a8w4.py:303:25
	s_and_b64 vcc, exec, s[10:11]
	s_cbranch_vccz .LBB0_62
; %bb.1:
.Ltmp2:
	.loc	1 73 36 is_stmt 1               ; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 29
	s_add_i32 s4, s2, s4
	s_ashr_i32 s7, s4, 3
	.loc	1 74 37                         ; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_and_b32 s4, s4, -8
	s_sub_i32 s4, s2, s4
.Ltmp3:
	.loc	1 311 26                        ; moe_op_gemm_a8w4.py:311:26
	s_abs_i32 s2, s2
	v_cvt_f32_u32_e32 v0, s2
.Ltmp4:
	.loc	1 78 23                         ; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_ashr_i32 s9, s16, 31
	s_lshr_b32 s9, s9, 29
	s_add_i32 s9, s16, s9
.Ltmp5:
	.loc	1 311 26                        ; moe_op_gemm_a8w4.py:311:26
	v_rcp_iflag_f32_e32 v0, v0
.Ltmp6:
	.loc	1 78 23                         ; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_ashr_i32 s10, s9, 3
	.loc	1 77 18                         ; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_and_b32 s9, s9, -8
	s_sub_i32 s9, s16, s9
.Ltmp7:
	.loc	1 311 26                        ; moe_op_gemm_a8w4.py:311:26
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
.Ltmp8:
	.loc	1 81 50                         ; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_min_i32 s4, s9, s4
	.loc	1 81 22 is_stmt 0               ; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_mul_i32 s7, s7, s9
	.loc	1 81 39                         ; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_add_i32 s4, s4, s10
	.loc	1 81 70                         ; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:309:61 ]
	s_add_i32 s4, s4, s7
.Ltmp9:
	.loc	1 311 26 is_stmt 1              ; moe_op_gemm_a8w4.py:311:26
	s_sub_i32 s7, 0, s2
	v_readfirstlane_b32 s10, v0
	s_mul_i32 s7, s7, s10
	s_mul_hi_u32 s7, s10, s7
	s_ashr_i32 s9, s4, 31
	s_abs_i32 s4, s4
	s_add_i32 s10, s10, s7
	s_mul_hi_u32 s7, s4, s10
	s_mul_i32 s7, s7, s2
	s_sub_i32 s4, s4, s7
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	s_cselect_b32 s4, s7, s4
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	s_cselect_b32 s2, s7, s4
.Ltmp10:
	.file	2 "/home/dewwang/aiter/aiter/ops/triton/utils/_triton" "pid_preprocessing.py"
	.loc	2 72 42                         ; pid_preprocessing.py:72:42 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_lshl_b32 s7, s3, 2
	.loc	2 73 26                         ; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_abs_i32 s3, s7
	v_cvt_f32_u32_e32 v0, s3
.Ltmp11:
	.loc	1 311 26                        ; moe_op_gemm_a8w4.py:311:26
	s_xor_b32 s2, s2, s9
	s_sub_i32 s4, s2, s9
.Ltmp12:
	.loc	2 73 26                         ; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_sub_i32 s9, 0, s3
	v_rcp_iflag_f32_e32 v0, v0
	.loc	2 77 37                         ; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_abs_i32 s11, s4
	.loc	2 73 26                         ; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_xor_b32 s2, s4, s7
	s_ashr_i32 s2, s2, 31
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_nop 0
	v_readfirstlane_b32 s10, v0
	s_mul_i32 s9, s9, s10
	s_mul_hi_u32 s9, s10, s9
	s_add_i32 s10, s10, s9
	s_mul_hi_u32 s9, s11, s10
	s_mul_i32 s10, s9, s3
	s_sub_i32 s10, s11, s10
	s_add_i32 s16, s9, 1
	s_sub_i32 s17, s10, s3
	s_cmp_ge_u32 s10, s3
	s_cselect_b32 s9, s16, s9
	s_cselect_b32 s10, s17, s10
	s_add_i32 s16, s9, 1
	s_cmp_ge_u32 s10, s3
	s_cselect_b32 s3, s16, s9
	s_xor_b32 s3, s3, s2
	s_sub_i32 s9, s3, s2
	.loc	2 74 33                         ; pid_preprocessing.py:74:33 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_lshl_b32 s2, s9, 2
	.loc	2 75 39                         ; pid_preprocessing.py:75:39 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_sub_i32 s3, s6, s2
	.loc	2 75 52 is_stmt 0               ; pid_preprocessing.py:75:52 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_min_i32 s10, s3, 4
	.loc	2 77 37 is_stmt 1               ; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_abs_i32 s3, s10
	v_cvt_f32_u32_e32 v0, s3
	s_sub_i32 s6, 0, s3
	s_ashr_i32 s18, s4, 31
	s_load_dwordx2 s[16:17], s[0:1], 0x90
	v_rcp_iflag_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_nop 0
	v_readfirstlane_b32 s19, v0
	s_mul_i32 s6, s6, s19
	s_mul_hi_u32 s6, s19, s6
	s_add_i32 s6, s19, s6
	s_mul_hi_u32 s19, s11, s6
	s_mul_i32 s19, s19, s3
	s_sub_i32 s11, s11, s19
	s_sub_i32 s19, s11, s3
	s_cmp_ge_u32 s11, s3
	s_cselect_b32 s11, s19, s11
	s_sub_i32 s19, s11, s3
	s_cmp_ge_u32 s11, s3
	s_cselect_b32 s11, s19, s11
	s_xor_b32 s11, s11, s18
	s_sub_i32 s11, s11, s18
	.loc	2 77 31 is_stmt 0               ; pid_preprocessing.py:77:31 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_add_i32 s18, s2, s11
.Ltmp13:
	.loc	1 319 24 is_stmt 1              ; moe_op_gemm_a8w4.py:319:24
	s_ashr_i32 s19, s18, 31
	s_lshl_b64 s[18:19], s[18:19], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s16, s18
	s_addc_u32 s17, s17, s19
	global_load_dword v1, v1, s[16:17]
	s_mov_b32 s2, 0
	.loc	1 320 20                        ; moe_op_gemm_a8w4.py:320:20
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, -1, v1
	s_cbranch_vccnz .LBB0_62
; %bb.2:
	.loc	1 0 20 is_stmt 0                ; moe_op_gemm_a8w4.py:0:20
	s_load_dwordx4 s[16:19], s[0:1], 0x70
	.loc	1 322 26 is_stmt 1              ; moe_op_gemm_a8w4.py:322:26
	v_and_b32_e32 v151, 0xffff, v1
	.loc	1 324 16                        ; moe_op_gemm_a8w4.py:324:16
	v_lshlrev_b32_e32 v2, 2, v151
	.loc	1 323 28                        ; moe_op_gemm_a8w4.py:323:28
	v_ashrrev_i32_e32 v0, 16, v1
	.loc	1 326 60                        ; moe_op_gemm_a8w4.py:326:60
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 324 16                        ; moe_op_gemm_a8w4.py:324:16
	s_waitcnt lgkmcnt(0)
	global_load_dword v160, v2, s[18:19]
	s_load_dwordx2 s[18:19], s[0:1], 0x80
	.loc	1 331 49                        ; moe_op_gemm_a8w4.py:331:49
	v_lshrrev_b32_e32 v230, 4, v240
	.loc	1 331 25 is_stmt 0              ; moe_op_gemm_a8w4.py:331:25
	v_lshlrev_b64 v[234:235], 7, v[0:1]
	.loc	1 331 49                        ; moe_op_gemm_a8w4.py:331:49
	v_or_b32_e32 v231, 32, v230
	v_or_b32_e32 v232, 64, v230
	.loc	1 325 22 is_stmt 1              ; moe_op_gemm_a8w4.py:325:22
	s_waitcnt lgkmcnt(0)
	global_load_dword v237, v2, s[18:19]
	.loc	1 331 49                        ; moe_op_gemm_a8w4.py:331:49
	v_or_b32_e32 v233, 0x60, v230
	.loc	1 331 36 is_stmt 0              ; moe_op_gemm_a8w4.py:331:36
	v_or_b32_e32 v162, v234, v230
	v_or_b32_e32 v168, v234, v231
	v_or_b32_e32 v166, v234, v232
	v_or_b32_e32 v164, v234, v233
	.loc	1 332 59 is_stmt 1              ; moe_op_gemm_a8w4.py:332:59
	v_sub_u32_e32 v1, 0, v162
	v_sub_u32_e32 v2, 0, v168
	v_sub_u32_e32 v3, 0, v166
	v_sub_u32_e32 v4, 0, v164
	v_max_i32_e32 v1, v1, v162
	v_max_i32_e32 v2, v2, v168
	v_max_i32_e32 v3, v3, v166
	v_max_i32_e32 v4, v4, v164
.Ltmp14:
	.loc	2 78 23                         ; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_mul_i32 s9, s9, s7
	s_sub_i32 s4, s4, s9
	.loc	2 78 44 is_stmt 0               ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_ashr_i32 s7, s4, 31
	s_abs_i32 s4, s4
	s_mul_hi_u32 s6, s4, s6
	s_mul_i32 s9, s6, s3
	.loc	2 0 0                           ; pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_ashr_i32 s10, s10, 31
	.loc	2 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_sub_i32 s4, s4, s9
	s_xor_b32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s9, s4, s3
	s_cmp_ge_u32 s4, s3
.Ltmp15:
	.loc	1 332 59 is_stmt 1              ; moe_op_gemm_a8w4.py:332:59
	v_ashrrev_i32_e32 v0, 31, v234
.Ltmp16:
	.loc	2 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s4, s9, s4
	s_add_i32 s9, s6, 1
	s_mov_b32 s27, 0x27000
	s_mov_b32 s26, 0x7ffffffe
	s_cmp_ge_u32 s4, s3
.Ltmp17:
	.loc	1 338 27                        ; moe_op_gemm_a8w4.py:338:27
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.Ltmp18:
	.loc	2 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_cselect_b32 s3, s9, s6
.Ltmp19:
	.loc	1 338 27                        ; moe_op_gemm_a8w4.py:338:27
	s_and_b32 s17, s17, 0xffff
	s_load_dwordx2 s[22:23], s[0:1], 0x64
	s_load_dwordx2 s[28:29], s[0:1], 0x38
.Ltmp20:
	.loc	2 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_xor_b32 s3, s3, s7
.Ltmp21:
	.loc	1 339 46                        ; moe_op_gemm_a8w4.py:339:46
	v_and_b32_e32 v92, 15, v240
.Ltmp22:
	.loc	2 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
	s_sub_i32 s34, s3, s7
.Ltmp23:
	.loc	1 339 46                        ; moe_op_gemm_a8w4.py:339:46
	v_lshlrev_b32_e32 v170, 4, v92
.Ltmp24:
	.file	3 "/home/dewwang/triton-updated/python/triton/language" "standard.py"
	.loc	3 43 17                         ; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp25:
	.loc	1 328 28                        ; moe_op_gemm_a8w4.py:328:28
	s_ashr_i32 s35, s34, 31
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	s_cmpk_gt_i32 s4, 0xff
	.loc	1 324 16                        ; moe_op_gemm_a8w4.py:324:16
	v_mov_b32_e32 v21, 0
                                        ; implicit-def: $vgpr22_vgpr23
	.loc	1 332 59                        ; moe_op_gemm_a8w4.py:332:59
	s_waitcnt vmcnt(1)
	v_sub_u32_e32 v5, 0, v160
	v_max_i32_e32 v5, v160, v5
	v_cvt_f32_u32_e32 v6, v5
	v_sub_u32_e32 v7, 0, v5
	v_rcp_iflag_f32_e32 v6, v6
	s_nop 0
	v_mul_f32_e32 v6, 0x4f7ffffe, v6
	v_cvt_u32_f32_e32 v6, v6
	v_mul_lo_u32 v7, v7, v6
	v_mul_hi_u32 v7, v6, v7
	v_add_u32_e32 v6, v6, v7
	v_mul_hi_u32 v7, v1, v6
	v_mul_hi_u32 v8, v2, v6
	v_mul_hi_u32 v9, v3, v6
	v_mul_hi_u32 v6, v4, v6
	v_mul_lo_u32 v7, v7, v5
	v_mul_lo_u32 v8, v8, v5
	v_mul_lo_u32 v6, v6, v5
	v_sub_u32_e32 v1, v1, v7
	v_mul_lo_u32 v9, v9, v5
	v_sub_u32_e32 v2, v2, v8
	v_sub_u32_e32 v4, v4, v6
	v_sub_u32_e32 v6, v1, v5
	v_cmp_ge_u32_e32 vcc, v1, v5
	v_sub_u32_e32 v3, v3, v9
	v_sub_u32_e32 v7, v2, v5
	v_cndmask_b32_e32 v1, v1, v6, vcc
	v_cmp_ge_u32_e32 vcc, v2, v5
	v_sub_u32_e32 v8, v3, v5
	v_sub_u32_e32 v9, v4, v5
	v_cndmask_b32_e32 v2, v2, v7, vcc
	v_cmp_ge_u32_e32 vcc, v3, v5
	v_sub_u32_e32 v6, v1, v5
	v_sub_u32_e32 v7, v2, v5
	v_cndmask_b32_e32 v3, v3, v8, vcc
	v_cmp_ge_u32_e32 vcc, v4, v5
	v_sub_u32_e32 v8, v3, v5
	s_nop 0
	v_cndmask_b32_e32 v4, v4, v9, vcc
	v_cmp_ge_u32_e32 vcc, v1, v5
	v_sub_u32_e32 v9, v4, v5
	s_nop 0
	v_cndmask_b32_e32 v1, v1, v6, vcc
	v_cmp_ge_u32_e32 vcc, v2, v5
	v_xor_b32_e32 v1, v1, v0
	v_sub_u32_e32 v1, v1, v0
	v_cndmask_b32_e32 v2, v2, v7, vcc
	v_cmp_ge_u32_e32 vcc, v3, v5
	v_xor_b32_e32 v2, v2, v0
	v_sub_u32_e32 v2, v2, v0
	v_cndmask_b32_e32 v3, v3, v8, vcc
	v_cmp_ge_u32_e32 vcc, v4, v5
	v_xor_b32_e32 v3, v3, v0
	v_sub_u32_e32 v3, v3, v0
	v_cndmask_b32_e32 v4, v4, v9, vcc
	v_xor_b32_e32 v4, v4, v0
	v_sub_u32_e32 v0, v4, v0
	.loc	1 338 27                        ; moe_op_gemm_a8w4.py:338:27
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, v237, v1, 2
	v_add_lshl_u32 v2, v237, v2, 2
	v_add_lshl_u32 v3, v237, v3, 2
	v_add_lshl_u32 v0, v237, v0, 2
	buffer_load_dword v4, v1, s[16:19], 0 offen
	buffer_load_dword v5, v2, s[16:19], 0 offen
	buffer_load_dword v6, v3, s[16:19], 0 offen
	buffer_load_dword v7, v0, s[16:19], 0 offen
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	v_bfrev_b32_e32 v0, 1
	.loc	1 338 53                        ; moe_op_gemm_a8w4.py:338:53
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v1, 31, v4
	s_waitcnt vmcnt(2)
	v_ashrrev_i32_e32 v2, 31, v5
	s_waitcnt vmcnt(1)
	v_ashrrev_i32_e32 v3, 31, v6
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshrrev_b32_e32 v1, 29, v1
	v_lshrrev_b32_e32 v2, 29, v2
	v_lshrrev_b32_e32 v3, 29, v3
	v_lshrrev_b32_e32 v8, 29, v8
	v_add_u32_e32 v1, v4, v1
	v_add_u32_e32 v2, v5, v2
	v_add_u32_e32 v3, v6, v3
	v_add_u32_e32 v4, v7, v8
	v_ashrrev_i32_e32 v1, 3, v1
	v_ashrrev_i32_e32 v2, 3, v2
	v_ashrrev_i32_e32 v3, 3, v3
	v_ashrrev_i32_e32 v4, 3, v4
	.loc	1 343 10                        ; moe_op_gemm_a8w4.py:343:10
	v_mad_u64_u32 v[50:51], s[6:7], v1, s8, v[170:171]
	v_mad_u64_u32 v[52:53], s[6:7], v2, s8, v[170:171]
	v_mad_u64_u32 v[54:55], s[6:7], v3, s8, v[170:171]
	v_mad_u64_u32 v[56:57], s[6:7], v4, s8, v[170:171]
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	s_cselect_b64 s[6:7], -1, 0
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v1, v0, v50, s[6:7]
	v_cndmask_b32_e64 v18, v0, v52, s[6:7]
	v_cndmask_b32_e64 v19, v0, v54, s[6:7]
	v_cndmask_b32_e64 v0, v0, v56, s[6:7]
	buffer_load_dwordx4 v[2:5], v1, s[24:27], 0 offen
	buffer_load_dwordx4 v[6:9], v18, s[24:27], 0 offen
	buffer_load_dwordx4 v[10:13], v19, s[24:27], 0 offen
	buffer_load_dwordx4 v[14:17], v0, s[24:27], 0 offen
	.loc	1 362 30                        ; moe_op_gemm_a8w4.py:362:30
	s_lshl_b64 s[8:9], s[34:35], 4
	.loc	1 362 59 is_stmt 0              ; moe_op_gemm_a8w4.py:362:59
	v_lshrrev_b32_e32 v0, 5, v240
	.loc	1 362 77                        ; moe_op_gemm_a8w4.py:362:77
	s_ashr_i32 s23, s22, 31
	.loc	1 362 46                        ; moe_op_gemm_a8w4.py:362:46
	v_or_b32_e32 v18, s8, v0
	v_mov_b32_e32 v19, s9
	.loc	1 362 77                        ; moe_op_gemm_a8w4.py:362:77
	s_or_b64 s[8:9], s[8:9], s[22:23]
	s_mov_b32 s3, s9
	s_cmp_lg_u64 s[2:3], 0
	s_cselect_b64 s[2:3], -1, 0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz .LBB0_4
; %bb.3:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s10, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s11, s23, s2
	s_xor_b64 s[10:11], s[10:11], s[2:3]
	v_cvt_f32_u32_e32 v0, s10
	v_cvt_f32_u32_e32 v1, s11
	s_sub_u32 s2, 0, s10
	s_subb_u32 s3, 0, s11
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s16, v1
	v_readfirstlane_b32 s17, v0
	s_mul_i32 s18, s2, s16
	s_mul_hi_u32 s30, s2, s17
	s_mul_i32 s19, s3, s17
	s_add_i32 s18, s30, s18
	s_add_i32 s18, s18, s19
	s_mul_i32 s31, s2, s17
	s_mul_i32 s30, s17, s18
	s_mul_hi_u32 s33, s17, s31
	s_mul_hi_u32 s19, s17, s18
	s_add_u32 s30, s33, s30
	s_addc_u32 s19, 0, s19
	s_mul_hi_u32 s36, s16, s31
	s_mul_i32 s31, s16, s31
	s_add_u32 s30, s30, s31
	s_mul_hi_u32 s33, s16, s18
	s_addc_u32 s19, s19, s36
	s_addc_u32 s30, s33, 0
	s_mul_i32 s18, s16, s18
	s_add_u32 s18, s19, s18
	s_addc_u32 s19, 0, s30
	s_add_u32 s17, s17, s18
	s_addc_u32 s16, s16, s19
	s_mul_i32 s18, s2, s16
	s_mul_hi_u32 s19, s2, s17
	s_add_i32 s18, s19, s18
	s_mul_i32 s3, s3, s17
	s_add_i32 s18, s18, s3
	s_mul_i32 s2, s2, s17
	s_mul_hi_u32 s19, s16, s2
	s_mul_i32 s30, s16, s2
	s_mul_i32 s33, s17, s18
	s_mul_hi_u32 s2, s17, s2
	s_mul_hi_u32 s31, s17, s18
	s_add_u32 s2, s2, s33
	s_addc_u32 s31, 0, s31
	s_add_u32 s2, s2, s30
	s_mul_hi_u32 s3, s16, s18
	s_addc_u32 s2, s31, s19
	s_addc_u32 s3, s3, 0
	s_mul_i32 s18, s16, s18
	s_add_u32 s2, s2, s18
	v_ashrrev_i32_e32 v0, 31, v19
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s17, s17, s2
	v_lshl_add_u64 v[18:19], v[18:19], 0, v[0:1]
	s_addc_u32 s16, s16, s3
	v_xor_b32_e32 v26, v18, v0
	v_xor_b32_e32 v1, v19, v0
	v_mad_u64_u32 v[18:19], s[2:3], v26, s16, 0
	v_mul_hi_u32 v20, v26, s17
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[18:19]
	v_mad_u64_u32 v[24:25], s[2:3], v1, s17, 0
	v_add_co_u32_e32 v18, vcc, v18, v24
	v_mad_u64_u32 v[22:23], s[2:3], v1, s16, 0
	s_nop 0
	v_addc_co_u32_e32 v20, vcc, v19, v25, vcc
	s_nop 1
	v_addc_co_u32_e32 v23, vcc, 0, v23, vcc
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[22:23]
	v_mul_lo_u32 v20, s11, v18
	v_mul_lo_u32 v21, s10, v19
	v_mad_u64_u32 v[18:19], s[2:3], s10, v18, 0
	v_add3_u32 v19, v19, v21, v20
	v_sub_u32_e32 v20, v1, v19
	v_mov_b32_e32 v21, s11
	v_sub_co_u32_e32 v18, vcc, v26, v18
	s_nop 1
	v_subb_co_u32_e64 v20, s[2:3], v20, v21, vcc
	v_subrev_co_u32_e64 v21, s[2:3], s10, v18
	v_subb_co_u32_e32 v1, vcc, v1, v19, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v20, s[2:3], 0, v20, s[2:3]
	v_cmp_le_u32_e64 s[2:3], s11, v20
	v_cmp_le_u32_e32 vcc, s11, v1
	s_nop 0
	v_cndmask_b32_e64 v22, 0, -1, s[2:3]
	v_cmp_le_u32_e64 s[2:3], s10, v21
	v_cndmask_b32_e64 v19, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s10, v18
	v_cndmask_b32_e64 v23, 0, -1, s[2:3]
	v_cmp_eq_u32_e64 s[2:3], s11, v20
	s_nop 1
	v_cndmask_b32_e64 v20, v22, v23, s[2:3]
	v_cndmask_b32_e64 v23, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s11, v1
	v_subrev_co_u32_e64 v22, s[2:3], s10, v21
	s_nop 0
	v_cndmask_b32_e32 v1, v19, v23, vcc
	v_cmp_ne_u32_e32 vcc, 0, v20
	s_nop 1
	v_cndmask_b32_e32 v19, v21, v22, vcc
	v_cmp_ne_u32_e32 vcc, 0, v1
	s_nop 1
	v_cndmask_b32_e32 v1, v18, v19, vcc
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v22, vcc, v1, v0
                                        ; implicit-def: $vgpr18_vgpr19
.LBB0_4:                                ; %Flow349
	.loc	1 0 77                          ; moe_op_gemm_a8w4.py:0:77
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_load_dwordx2 s[2:3], s[0:1], 0x40
	v_cvt_f32_u32_e32 v19, s22
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz .LBB0_6
; %bb.5:
	.loc	1 362 77 is_stmt 1              ; moe_op_gemm_a8w4.py:362:77
	v_rcp_iflag_f32_e32 v0, v19
	s_sub_i32 s10, 0, s22
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s10, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v18, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v18, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v22, v0, v1, vcc
.LBB0_6:
	.loc	1 0 77 is_stmt 0                ; moe_op_gemm_a8w4.py:0:77
	s_or_b64 exec, exec, s[8:9]
	.loc	1 339 46 is_stmt 1              ; moe_op_gemm_a8w4.py:339:46
	v_lshlrev_b32_e32 v255, 3, v240
	v_and_b32_e32 v51, 0xf8, v255
	.loc	1 352 26                        ; moe_op_gemm_a8w4.py:352:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v53, v151, s2
	.loc	1 371 10                        ; moe_op_gemm_a8w4.py:371:10
	v_mul_lo_u32 v55, s3, v22
	v_add3_u32 v0, v53, v51, v55
	.loc	1 413 24                        ; moe_op_gemm_a8w4.py:413:24
	v_bfrev_b32_e32 v1, 1
	s_mov_b32 s31, 0x27000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v0, v1, v0, s[6:7]
	buffer_load_dwordx2 v[58:59], v0, s[28:31], 0 offen
	.loc	1 375 23                        ; moe_op_gemm_a8w4.py:375:23
	s_lshl_b64 s[18:19], s[34:35], 9
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_or_b64 s[10:11], s[18:19], s[22:23]
	s_mov_b32 s2, 0
	s_mov_b32 s3, s11
	.loc	1 375 55                        ; moe_op_gemm_a8w4.py:375:55
	v_lshrrev_b32_e32 v238, 3, v240
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[2:3], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v20, s18, v238
	v_mov_b32_e32 v21, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr18_vgpr19
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_8
; %bb.7:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_mov_b32_e32 v23, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v21
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v18, v0
	v_xor_b32_e32 v1, v19, v0
	v_mad_u64_u32 v[18:19], s[2:3], v21, s8, 0
	v_mul_hi_u32 v22, v21, s9
	v_lshl_add_u64 v[18:19], v[22:23], 0, v[18:19]
	v_mad_u64_u32 v[26:27], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v18, vcc, v18, v26
	v_mad_u64_u32 v[24:25], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v22, vcc, v19, v27, vcc
	s_nop 1
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[18:19], v[22:23], 0, v[24:25]
	v_mul_lo_u32 v22, s37, v18
	v_mul_lo_u32 v23, s36, v19
	v_mad_u64_u32 v[18:19], s[2:3], s36, v18, 0
	v_add3_u32 v19, v19, v23, v22
	v_sub_u32_e32 v22, v1, v19
	v_mov_b32_e32 v23, s37
	v_sub_co_u32_e32 v18, vcc, v21, v18
	s_nop 1
	v_subb_co_u32_e64 v21, s[2:3], v22, v23, vcc
	v_subrev_co_u32_e64 v22, s[2:3], s36, v18
	v_subb_co_u32_e32 v1, vcc, v1, v19, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v24, s[8:9], 0, v21, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v24
	v_subb_co_u32_e64 v21, s[2:3], v21, v23, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v22
	v_subrev_co_u32_e64 v23, s[2:3], s36, v22
	s_nop 0
	v_cndmask_b32_e64 v26, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v24
	v_subbrev_co_u32_e64 v21, s[2:3], 0, v21, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v25, v25, v26, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v25
	s_nop 0
	v_cndmask_b32_e64 v19, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v18
	v_cndmask_b32_e64 v21, v24, v21, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v24, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v19, v19, v24, vcc
	v_cmp_ne_u32_e32 vcc, 0, v19
	v_cndmask_b32_e64 v19, v22, v23, s[2:3]
	s_nop 0
	v_cndmask_b32_e32 v18, v18, v19, vcc
	v_cndmask_b32_e32 v1, v1, v21, vcc
	v_xor_b32_e32 v18, v18, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v18, vcc, v18, v0
	s_nop 1
	v_subb_co_u32_e32 v19, vcc, v1, v0, vcc
.LBB0_8:                                ; %Flow348
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v19, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v20, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v20, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v18, v0, v1, vcc
.LBB0_10:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or3_b32 v24, v238, s18, 64
	v_mov_b32_e32 v25, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr22_vgpr23
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_12
; %bb.11:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v22, v0
	v_xor_b32_e32 v1, v23, v0
	v_mad_u64_u32 v[22:23], s[2:3], v21, s8, 0
	v_mul_hi_u32 v24, v21, s9
	v_mov_b32_e32 v25, 0
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[22:23]
	v_mad_u64_u32 v[28:29], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v22, vcc, v22, v28
	v_mad_u64_u32 v[26:27], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v23, v29, vcc
	s_nop 1
	v_addc_co_u32_e32 v27, vcc, 0, v27, vcc
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[26:27]
	v_mul_lo_u32 v24, s37, v22
	v_mul_lo_u32 v25, s36, v23
	v_mad_u64_u32 v[22:23], s[2:3], s36, v22, 0
	v_add3_u32 v23, v23, v25, v24
	v_sub_u32_e32 v24, v1, v23
	v_mov_b32_e32 v25, s37
	v_sub_co_u32_e32 v21, vcc, v21, v22
	s_nop 1
	v_subb_co_u32_e64 v22, s[2:3], v24, v25, vcc
	v_subrev_co_u32_e64 v24, s[2:3], s36, v21
	v_subb_co_u32_e32 v1, vcc, v1, v23, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v26, s[8:9], 0, v22, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v26
	v_subb_co_u32_e64 v22, s[2:3], v22, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v27, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v24
	v_subrev_co_u32_e64 v25, s[2:3], s36, v24
	s_nop 0
	v_cndmask_b32_e64 v28, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v26
	v_subbrev_co_u32_e64 v22, s[2:3], 0, v22, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v27, v27, v28, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v27
	s_nop 0
	v_cndmask_b32_e64 v23, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v21
	v_cndmask_b32_e64 v22, v26, v22, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v26, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v23, v23, v26, vcc
	v_cmp_ne_u32_e32 vcc, 0, v23
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v22, vcc
	v_cndmask_b32_e64 v22, v24, v25, s[2:3]
	v_cndmask_b32_e32 v21, v21, v22, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v22, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v23, vcc, v1, v0, vcc
.LBB0_12:                               ; %Flow347
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v23, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v22, v0, v1, vcc
.LBB0_14:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v24, 0x80, v20
	v_mov_b32_e32 v25, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr26_vgpr27
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_16
; %bb.15:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_mov_b32_e32 v27, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v1, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s8, 0
	v_mul_hi_u32 v26, v21, s9
	v_lshl_add_u64 v[24:25], v[26:27], 0, v[24:25]
	v_mad_u64_u32 v[30:31], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v30
	v_mad_u64_u32 v[28:29], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v26, vcc, v25, v31, vcc
	s_nop 1
	v_addc_co_u32_e32 v29, vcc, 0, v29, vcc
	v_lshl_add_u64 v[24:25], v[26:27], 0, v[28:29]
	v_mul_lo_u32 v26, s37, v24
	v_mul_lo_u32 v27, s36, v25
	v_mad_u64_u32 v[24:25], s[2:3], s36, v24, 0
	v_add3_u32 v25, v25, v27, v26
	v_sub_u32_e32 v26, v1, v25
	v_mov_b32_e32 v27, s37
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v26, v27, vcc
	v_subrev_co_u32_e64 v26, s[2:3], s36, v21
	v_subb_co_u32_e32 v1, vcc, v1, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v28, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v28
	v_subb_co_u32_e64 v24, s[2:3], v24, v27, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v29, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v26
	v_subrev_co_u32_e64 v27, s[2:3], s36, v26
	s_nop 0
	v_cndmask_b32_e64 v30, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v28
	v_subbrev_co_u32_e64 v24, s[2:3], 0, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v29, v29, v30, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v29
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v21
	v_cndmask_b32_e64 v24, v28, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v28, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v28, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v24, vcc
	v_cndmask_b32_e64 v24, v26, v27, s[2:3]
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v26, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v27, vcc, v1, v0, vcc
.LBB0_16:                               ; %Flow346
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v27, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v26, v0, v1, vcc
.LBB0_18:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v24, 0xc0, v20
	v_mov_b32_e32 v25, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr28_vgpr29
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_20
; %bb.19:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_mov_b32_e32 v29, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v1, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s8, 0
	v_mul_hi_u32 v28, v21, s9
	v_lshl_add_u64 v[24:25], v[28:29], 0, v[24:25]
	v_mad_u64_u32 v[32:33], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v32
	v_mad_u64_u32 v[30:31], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v28, vcc, v25, v33, vcc
	s_nop 1
	v_addc_co_u32_e32 v31, vcc, 0, v31, vcc
	v_lshl_add_u64 v[24:25], v[28:29], 0, v[30:31]
	v_mul_lo_u32 v28, s37, v24
	v_mul_lo_u32 v29, s36, v25
	v_mad_u64_u32 v[24:25], s[2:3], s36, v24, 0
	v_add3_u32 v25, v25, v29, v28
	v_sub_u32_e32 v28, v1, v25
	v_mov_b32_e32 v29, s37
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v28, v29, vcc
	v_subrev_co_u32_e64 v28, s[2:3], s36, v21
	v_subb_co_u32_e32 v1, vcc, v1, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v30, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v30
	v_subb_co_u32_e64 v24, s[2:3], v24, v29, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v31, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v28
	v_subrev_co_u32_e64 v29, s[2:3], s36, v28
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v30
	v_subbrev_co_u32_e64 v24, s[2:3], 0, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v31, v31, v32, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v31
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v21
	v_cndmask_b32_e64 v24, v30, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v30, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v30, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v24, vcc
	v_cndmask_b32_e64 v24, v28, v29, s[2:3]
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v28, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v29, vcc, v1, v0, vcc
.LBB0_20:                               ; %Flow345
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v29, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v28, v0, v1, vcc
.LBB0_22:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v24, 0x100, v20
	v_mov_b32_e32 v25, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr34_vgpr35
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_24
; %bb.23:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_mov_b32_e32 v31, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v1, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s8, 0
	v_mul_hi_u32 v30, v21, s9
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[24:25]
	v_mad_u64_u32 v[34:35], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v34
	v_mad_u64_u32 v[32:33], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v25, v35, vcc
	s_nop 1
	v_addc_co_u32_e32 v33, vcc, 0, v33, vcc
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[32:33]
	v_mul_lo_u32 v30, s37, v24
	v_mul_lo_u32 v31, s36, v25
	v_mad_u64_u32 v[24:25], s[2:3], s36, v24, 0
	v_add3_u32 v25, v25, v31, v30
	v_sub_u32_e32 v30, v1, v25
	v_mov_b32_e32 v31, s37
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v30, v31, vcc
	v_subrev_co_u32_e64 v30, s[2:3], s36, v21
	v_subb_co_u32_e32 v1, vcc, v1, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v32, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v32
	v_subb_co_u32_e64 v24, s[2:3], v24, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v30
	v_subrev_co_u32_e64 v31, s[2:3], s36, v30
	s_nop 0
	v_cndmask_b32_e64 v34, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v32
	v_subbrev_co_u32_e64 v24, s[2:3], 0, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v33, v33, v34, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v33
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v21
	v_cndmask_b32_e64 v24, v32, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v24, vcc
	v_cndmask_b32_e64 v24, v30, v31, s[2:3]
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v34, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v35, vcc, v1, v0, vcc
.LBB0_24:                               ; %Flow344
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v35, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v34, v0, v1, vcc
.LBB0_26:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v24, 0x140, v20
	v_mov_b32_e32 v25, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr36_vgpr37
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_28
; %bb.27:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_mov_b32_e32 v31, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v1, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s8, 0
	v_mul_hi_u32 v30, v21, s9
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[24:25]
	v_mad_u64_u32 v[36:37], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v36
	v_mad_u64_u32 v[32:33], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v25, v37, vcc
	s_nop 1
	v_addc_co_u32_e32 v33, vcc, 0, v33, vcc
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[32:33]
	v_mul_lo_u32 v30, s37, v24
	v_mul_lo_u32 v31, s36, v25
	v_mad_u64_u32 v[24:25], s[2:3], s36, v24, 0
	v_add3_u32 v25, v25, v31, v30
	v_sub_u32_e32 v30, v1, v25
	v_mov_b32_e32 v31, s37
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v30, v31, vcc
	v_subrev_co_u32_e64 v30, s[2:3], s36, v21
	v_subb_co_u32_e32 v1, vcc, v1, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v32, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v32
	v_subb_co_u32_e64 v24, s[2:3], v24, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v30
	v_subrev_co_u32_e64 v31, s[2:3], s36, v30
	s_nop 0
	v_cndmask_b32_e64 v36, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v32
	v_subbrev_co_u32_e64 v24, s[2:3], 0, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v33, v33, v36, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v33
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v21
	v_cndmask_b32_e64 v24, v32, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v24, vcc
	v_cndmask_b32_e64 v24, v30, v31, s[2:3]
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v36, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v37, vcc, v1, v0, vcc
.LBB0_28:                               ; %Flow343
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v37, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v36, v0, v1, vcc
.LBB0_30:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v24, 0x180, v20
	v_mov_b32_e32 v25, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr42_vgpr43
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_32
; %bb.31:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[36:37], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s36
	v_cvt_f32_u32_e32 v1, s37
	s_sub_u32 s2, 0, s36
	s_subb_u32 s3, 0, s37
	v_mov_b32_e32 v31, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s38, s2, s9
	s_mul_i32 s33, s3, s9
	s_add_i32 s10, s38, s10
	s_add_i32 s10, s10, s33
	s_mul_i32 s39, s2, s9
	s_mul_i32 s38, s9, s10
	s_mul_hi_u32 s40, s9, s39
	s_mul_hi_u32 s33, s9, s10
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s8, s10
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s10, s33, s10
	s_addc_u32 s33, 0, s38
	s_add_u32 s9, s9, s10
	s_addc_u32 s8, s8, s33
	s_mul_i32 s10, s2, s8
	s_mul_hi_u32 s33, s2, s9
	s_add_i32 s10, s33, s10
	s_mul_i32 s3, s3, s9
	s_add_i32 s10, s10, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s33, s8, s2
	s_mul_i32 s38, s8, s2
	s_mul_i32 s40, s9, s10
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s39, s9, s10
	s_add_u32 s2, s2, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s2, s2, s38
	s_mul_hi_u32 s3, s8, s10
	s_addc_u32 s2, s39, s33
	s_addc_u32 s3, s3, 0
	s_mul_i32 s10, s8, s10
	s_add_u32 s2, s2, s10
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v1, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s8, 0
	v_mul_hi_u32 v30, v21, s9
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[24:25]
	v_mad_u64_u32 v[38:39], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v38
	v_mad_u64_u32 v[32:33], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v25, v39, vcc
	s_nop 1
	v_addc_co_u32_e32 v33, vcc, 0, v33, vcc
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[32:33]
	v_mul_lo_u32 v30, s37, v24
	v_mul_lo_u32 v31, s36, v25
	v_mad_u64_u32 v[24:25], s[2:3], s36, v24, 0
	v_add3_u32 v25, v25, v31, v30
	v_sub_u32_e32 v30, v1, v25
	v_mov_b32_e32 v31, s37
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v30, v31, vcc
	v_subrev_co_u32_e64 v30, s[2:3], s36, v21
	v_subb_co_u32_e32 v1, vcc, v1, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v32, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s37, v32
	v_subb_co_u32_e64 v24, s[2:3], v24, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v30
	v_subrev_co_u32_e64 v31, s[2:3], s36, v30
	s_nop 0
	v_cndmask_b32_e64 v38, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v32
	v_subbrev_co_u32_e64 v24, s[2:3], 0, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v33, v33, v38, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v33
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v21
	v_cndmask_b32_e64 v24, v32, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v1
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v24, vcc
	v_cndmask_b32_e64 v24, v30, v31, s[2:3]
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v42, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v43, vcc, v1, v0, vcc
.LBB0_32:                               ; %Flow342
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v43, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v42, v0, v1, vcc
.LBB0_34:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s10, 0
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	s_cmp_lg_u64 s[10:11], 0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v20, 0x1c0, v20
	v_mov_b32_e32 v21, s19
	.loc	1 377 35                        ; moe_op_gemm_a8w4.py:377:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr44_vgpr45
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[10:11], exec, s[8:9]
	s_cbranch_execz .LBB0_36
; %bb.35:
	s_ashr_i32 s2, s23, 31
	s_add_u32 s8, s22, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s23, s2
	s_xor_b64 s[16:17], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s16
	v_cvt_f32_u32_e32 v1, s17
	s_sub_u32 s2, 0, s16
	s_subb_u32 s3, 0, s17
	v_mov_b32_e32 v25, 0
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v1
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s33, s2, s8
	s_mul_hi_u32 s37, s2, s9
	s_mul_i32 s36, s3, s9
	s_add_i32 s33, s37, s33
	s_add_i32 s33, s33, s36
	s_mul_i32 s38, s2, s9
	s_mul_i32 s37, s9, s33
	s_mul_hi_u32 s39, s9, s38
	s_mul_hi_u32 s36, s9, s33
	s_add_u32 s37, s39, s37
	s_addc_u32 s36, 0, s36
	s_mul_hi_u32 s40, s8, s38
	s_mul_i32 s38, s8, s38
	s_add_u32 s37, s37, s38
	s_mul_hi_u32 s39, s8, s33
	s_addc_u32 s36, s36, s40
	s_addc_u32 s37, s39, 0
	s_mul_i32 s33, s8, s33
	s_add_u32 s33, s36, s33
	s_addc_u32 s36, 0, s37
	s_add_u32 s9, s9, s33
	s_addc_u32 s8, s8, s36
	s_mul_i32 s33, s2, s8
	s_mul_hi_u32 s36, s2, s9
	s_add_i32 s33, s36, s33
	s_mul_i32 s3, s3, s9
	s_add_i32 s33, s33, s3
	s_mul_i32 s2, s2, s9
	s_mul_hi_u32 s36, s8, s2
	s_mul_i32 s37, s8, s2
	s_mul_i32 s39, s9, s33
	s_mul_hi_u32 s2, s9, s2
	s_mul_hi_u32 s38, s9, s33
	s_add_u32 s2, s2, s39
	s_addc_u32 s38, 0, s38
	s_add_u32 s2, s2, s37
	s_mul_hi_u32 s3, s8, s33
	s_addc_u32 s2, s38, s36
	s_addc_u32 s3, s3, 0
	s_mul_i32 s33, s8, s33
	s_add_u32 s2, s2, s33
	v_ashrrev_i32_e32 v0, 31, v21
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s9, s9, s2
	v_lshl_add_u64 v[20:21], v[20:21], 0, v[0:1]
	s_addc_u32 s8, s8, s3
	v_xor_b32_e32 v38, v20, v0
	v_xor_b32_e32 v1, v21, v0
	v_mad_u64_u32 v[20:21], s[2:3], v38, s8, 0
	v_mul_hi_u32 v24, v38, s9
	v_lshl_add_u64 v[20:21], v[24:25], 0, v[20:21]
	v_mad_u64_u32 v[32:33], s[2:3], v1, s9, 0
	v_add_co_u32_e32 v20, vcc, v20, v32
	v_mad_u64_u32 v[30:31], s[2:3], v1, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v21, v33, vcc
	s_nop 1
	v_addc_co_u32_e32 v31, vcc, 0, v31, vcc
	v_lshl_add_u64 v[20:21], v[24:25], 0, v[30:31]
	v_mul_lo_u32 v24, s17, v20
	v_mul_lo_u32 v25, s16, v21
	v_mad_u64_u32 v[20:21], s[2:3], s16, v20, 0
	v_add3_u32 v21, v21, v25, v24
	v_sub_u32_e32 v24, v1, v21
	v_mov_b32_e32 v25, s17
	v_sub_co_u32_e32 v20, vcc, v38, v20
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v24, v25, vcc
	v_subrev_co_u32_e64 v30, s[2:3], s16, v20
	v_subb_co_u32_e32 v1, vcc, v1, v21, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v31, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s17, v31
	v_subb_co_u32_e64 v24, s[2:3], v24, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s16, v30
	v_subrev_co_u32_e64 v25, s[2:3], s16, v30
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s17, v31
	v_subbrev_co_u32_e64 v24, s[2:3], 0, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, v32, v33, s[8:9]
	v_cmp_le_u32_e32 vcc, s17, v1
	v_cmp_ne_u32_e64 s[2:3], 0, v32
	s_nop 0
	v_cndmask_b32_e64 v21, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s16, v20
	v_cndmask_b32_e64 v24, v31, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v31, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s17, v1
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v31, vcc
	v_cmp_ne_u32_e32 vcc, 0, v21
	v_cndmask_b32_e64 v21, v30, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e32 v20, v20, v21, vcc
	v_cndmask_b32_e32 v1, v1, v24, vcc
	v_xor_b32_e32 v20, v20, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v44, vcc, v20, v0
                                        ; implicit-def: $vgpr20_vgpr21
	s_nop 1
	v_subb_co_u32_e32 v45, vcc, v1, v0, vcc
.LBB0_36:                               ; %Flow341
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_andn2_saveexec_b64 s[2:3], s[10:11]
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 377 35 is_stmt 1              ; moe_op_gemm_a8w4.py:377:35
	v_cvt_f32_u32_e32 v0, s22
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v45, 0
	v_rcp_iflag_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v20, v0
	v_mul_lo_u32 v0, v0, s22
	v_sub_u32_e32 v0, v20, v0
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s22, v0
	v_cmp_le_u32_e32 vcc, s22, v0
	s_nop 1
	v_cndmask_b32_e32 v44, v0, v1, vcc
.LBB0_38:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 384 45 is_stmt 1              ; moe_op_gemm_a8w4.py:384:45
	s_ashr_i32 s8, s15, 31
	v_mul_lo_u32 v0, v19, s15
	v_mul_lo_u32 v1, v18, s8
	v_mad_u64_u32 v[64:65], s[2:3], v18, s15, 0
	.loc	1 331 49                        ; moe_op_gemm_a8w4.py:331:49
	v_lshlrev_b32_e32 v57, 4, v240
	.loc	1 331 36 is_stmt 0              ; moe_op_gemm_a8w4.py:331:36
	v_mov_b32_e32 v61, 0
	.loc	1 381 19 is_stmt 1              ; moe_op_gemm_a8w4.py:381:19
	v_mul_hi_i32 v63, v151, s14
	v_mul_lo_u32 v62, v151, s14
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_add3_u32 v65, v65, v1, v0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_cndmask_b32_e64 v0, 0, 1, s[6:7]
	.loc	1 331 49                        ; moe_op_gemm_a8w4.py:331:49
	v_and_b32_e32 v60, 0x70, v57
	.loc	1 381 9                         ; moe_op_gemm_a8w4.py:381:9
	v_lshl_add_u64 v[72:73], s[12:13], 0, v[62:63]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_cmp_ne_u32_e64 s[2:3], 1, v0
	s_andn2_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v18, v61
	v_mov_b32_e32 v19, v61
	v_mov_b32_e32 v20, v61
	v_mov_b32_e32 v21, v61
	s_cbranch_vccnz .LBB0_40
; %bb.39:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[64:65]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[18:21], v[0:1], off
.LBB0_40:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v23, s15
	v_mul_lo_u32 v1, v22, s8
	v_mad_u64_u32 v[66:67], s[6:7], v22, s15, 0
	v_add3_u32 v67, v67, v1, v0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v22, v61
	v_mov_b32_e32 v23, v61
	v_mov_b32_e32 v24, v61
	v_mov_b32_e32 v25, v61
	s_cbranch_vccnz .LBB0_42
; %bb.41:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[66:67]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[22:25], v[0:1], off
.LBB0_42:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v27, s15
	v_mul_lo_u32 v1, v26, s8
	v_mad_u64_u32 v[68:69], s[6:7], v26, s15, 0
	v_add3_u32 v69, v69, v1, v0
	v_mov_b32_e32 v26, 0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v33, 0
	s_cbranch_vccnz .LBB0_44
; %bb.43:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[68:69]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[30:33], v[0:1], off
.LBB0_44:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v29, s15
	v_mul_lo_u32 v1, v28, s8
	v_mad_u64_u32 v[70:71], s[6:7], v28, s15, 0
	v_add3_u32 v71, v71, v1, v0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v29, 0
	s_cbranch_vccnz .LBB0_46
; %bb.45:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[70:71]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[26:29], v[0:1], off
.LBB0_46:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v35, s15
	v_mul_lo_u32 v1, v34, s8
	v_mad_u64_u32 v[74:75], s[6:7], v34, s15, 0
	v_add3_u32 v75, v75, v1, v0
	v_mov_b32_e32 v34, 0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v41, 0
	s_cbranch_vccnz .LBB0_48
; %bb.47:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[74:75]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[38:41], v[0:1], off
.LBB0_48:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v37, s15
	v_mul_lo_u32 v1, v36, s8
	v_mad_u64_u32 v[76:77], s[6:7], v36, s15, 0
	v_add3_u32 v77, v77, v1, v0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v37, 0
	s_cbranch_vccnz .LBB0_50
; %bb.49:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[76:77]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[34:37], v[0:1], off
.LBB0_50:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v43, s15
	v_mul_lo_u32 v1, v42, s8
	v_mad_u64_u32 v[78:79], s[6:7], v42, s15, 0
	v_add3_u32 v79, v79, v1, v0
	v_mov_b32_e32 v42, 0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v49, 0
	s_cbranch_vccnz .LBB0_52
; %bb.51:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[78:79]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[46:49], v[0:1], off
.LBB0_52:
	.loc	1 384 45                        ; moe_op_gemm_a8w4.py:384:45
	v_mul_lo_u32 v0, v45, s15
	v_mul_lo_u32 v1, v44, s8
	v_mad_u64_u32 v[80:81], s[6:7], v44, s15, 0
	v_add3_u32 v81, v81, v1, v0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v45, 0
	s_cbranch_vccnz .LBB0_54
; %bb.53:
	.loc	1 383 8                         ; moe_op_gemm_a8w4.py:383:8
	v_lshl_add_u64 v[0:1], v[72:73], 0, v[80:81]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[42:45], v[0:1], off
.LBB0_54:
	.loc	1 0 20 is_stmt 0                ; moe_op_gemm_a8w4.py:0:20
	s_movk_i32 s6, 0xf0
	.loc	1 404 20 is_stmt 1              ; moe_op_gemm_a8w4.py:404:20
	v_bitop3_b32 v207, v57, v240, s6 bitop3:0x78
	s_load_dwordx4 s[8:11], s[0:1], 0x48
	s_load_dwordx2 s[16:17], s[0:1], 0x58
	v_add_u32_e32 v0, 0, v207
	v_add_u32_e32 v0, 0x10000, v0
	s_movk_i32 s6, 0x70
	s_waitcnt vmcnt(4)
	ds_write_b128 v0, v[2:5]
	s_waitcnt vmcnt(3)
	ds_write_b128 v0, v[6:9] offset:8192
	s_waitcnt vmcnt(2)
	ds_write_b128 v0, v[10:13] offset:16384
	s_waitcnt vmcnt(1)
	ds_write_b128 v0, v[14:17] offset:24576
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_bitop3_b32 v0, v57, v240, s6 bitop3:0x78
	v_add_u32_e32 v209, 0, v0
	.loc	1 413 24                        ; moe_op_gemm_a8w4.py:413:24
	v_add_u32_e32 v0, 0, v255
	v_add_u32_e32 v0, 0x18000, v0
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	s_cmpk_lt_i32 s4, 0x200
	v_and_b32_e32 v239, 48, v240
	v_lshlrev_b32_e32 v174, 6, v240
	v_lshlrev_b32_e32 v236, 2, v240
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_waitcnt vmcnt(0)
	ds_write_b128 v209, v[18:21]
	ds_write_b128 v209, v[22:25] offset:8192
	ds_write_b128 v209, v[30:33] offset:16384
	ds_write_b128 v209, v[26:29] offset:24576
	ds_write_b128 v209, v[38:41] offset:32768
	ds_write_b128 v209, v[34:37] offset:40960
	ds_write_b128 v209, v[46:49] offset:49152
	ds_write_b128 v209, v[42:45] offset:57344
	.loc	1 413 24                        ; moe_op_gemm_a8w4.py:413:24
	ds_write_b64 v0, v[58:59]
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	s_cbranch_scc1 .LBB0_58
; %bb.55:                               ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; moe_op_gemm_a8w4.py:0:19
	v_mul_u32_u24_e32 v0, 0x110, v92
	v_xor_b32_e32 v208, v0, v239
	v_and_b32_e32 v0, 0x7000, v174
	v_lshl_or_b32 v0, v92, 7, v0
	v_bitop3_b32 v1, v255, v239, s6 bitop3:0x6c
	v_or_b32_e32 v5, v0, v1
	v_bitop3_b32 v6, v0, 64, v1 bitop3:0x36
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_add_u32_e32 v0, v53, v55
	s_movk_i32 s6, 0x100
.Ltmp26:
	.loc	3 43 30 is_stmt 1               ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
	s_ashr_i32 s7, s4, 31
.Ltmp27:
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_add3_u32 v206, v0, v51, s6
	v_lshl_add_u64 v[0:1], v[80:81], 0, v[62:63]
.Ltmp28:
	.loc	3 43 30                         ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
	s_lshr_b32 s7, s7, 24
.Ltmp29:
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
.Ltmp30:
	.loc	3 43 30                         ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
	s_add_i32 s4, s4, s7
.Ltmp31:
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	s_mov_b64 s[6:7], 0x80
	v_lshl_add_u64 v[180:181], v[0:1], 0, s[6:7]
	v_lshl_add_u64 v[0:1], v[78:79], 0, v[62:63]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off offset:48 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[76:77], 0, v[62:63]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off offset:56 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[74:75], 0, v[62:63]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off offset:64 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[70:71], 0, v[62:63]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off offset:72 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[68:69], 0, v[62:63]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off offset:80 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[66:67], 0, v[62:63]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	scratch_store_dword off, v240, off offset:156 ; 4-byte Folded Spill
	scratch_store_dwordx2 off, v[168:169], off offset:148 ; 8-byte Folded Spill
	scratch_store_dwordx2 off, v[166:167], off offset:140 ; 8-byte Folded Spill
	scratch_store_dwordx2 off, v[164:165], off offset:132 ; 8-byte Folded Spill
	scratch_store_dwordx2 off, v[162:163], off offset:124 ; 8-byte Folded Spill
	scratch_store_dword off, v151, off offset:120 ; 4-byte Folded Spill
	scratch_store_dwordx2 off, v[160:161], off offset:112 ; 8-byte Folded Spill
	scratch_store_dword off, v237, off offset:108 ; 4-byte Folded Spill
	scratch_store_dwordx2 off, v[234:235], off offset:100 ; 8-byte Folded Spill
	scratch_store_dword off, v233, off offset:96 ; 4-byte Folded Spill
	scratch_store_dword off, v232, off offset:92 ; 4-byte Folded Spill
	scratch_store_dword off, v231, off offset:88 ; 4-byte Folded Spill
.Ltmp32:
	.loc	3 43 30                         ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
	s_ashr_i32 s4, s4, 8
.Ltmp33:
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_lshl_add_u64 v[234:235], v[0:1], 0, s[6:7]
	v_lshl_add_u64 v[0:1], v[64:65], 0, v[62:63]
	s_max_i32 s4, s4, 2
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[60:61]
	v_xor_b32_e32 v2, 64, v208
	v_xor_b32_e32 v3, 0x80, v208
	v_xor_b32_e32 v4, 0xc0, v208
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	s_lshl_b32 s4, s4, 7
	v_mov_b32_e32 v26, 0
	s_add_i32 s12, 0, 0x10000
	v_lshl_add_u64 v[230:231], v[0:1], 0, s[6:7]
	v_add_u32_e32 v243, 0x100, v56
	v_add_u32_e32 v244, 0x100, v54
	v_add_u32_e32 v245, 0x100, v52
	v_add_u32_e32 v246, 0x100, v50
	s_add_u32 s4, s4, 0xffffff80
	s_mov_b64 s[6:7], 0
	v_add_u32_e32 v247, s12, v2
	v_add_u32_e32 v248, s12, v3
	v_add_u32_e32 v249, s12, v4
	v_add_u32_e32 v250, 0, v5
	v_add_u32_e32 v251, 0, v6
	s_add_i32 s13, 0, 0x18000
	s_mov_b32 s14, 0x7050604
	v_mov_b32_e32 v252, 0x7f
	v_mov_b32_e32 v27, v26
	v_mov_b32_e32 v28, v26
	v_mov_b32_e32 v29, v26
	v_mov_b32_e32 v50, v26
	v_mov_b32_e32 v51, v26
	v_mov_b32_e32 v52, v26
	v_mov_b32_e32 v53, v26
	v_mov_b32_e32 v54, v26
	v_mov_b32_e32 v55, v26
	v_mov_b32_e32 v56, v26
	v_mov_b32_e32 v57, v26
	v_mov_b32_e32 v46, v26
	v_mov_b32_e32 v47, v26
	v_mov_b32_e32 v48, v26
	v_mov_b32_e32 v49, v26
	v_mov_b32_e32 v42, v26
	v_mov_b32_e32 v43, v26
	v_mov_b32_e32 v44, v26
	v_mov_b32_e32 v45, v26
	v_mov_b32_e32 v70, v26
	v_mov_b32_e32 v71, v26
	v_mov_b32_e32 v72, v26
	v_mov_b32_e32 v73, v26
	v_mov_b32_e32 v222, v26
	v_mov_b32_e32 v223, v26
	v_mov_b32_e32 v224, v26
	v_mov_b32_e32 v225, v26
	v_mov_b32_e32 v226, v26
	v_mov_b32_e32 v227, v26
	v_mov_b32_e32 v228, v26
	v_mov_b32_e32 v229, v26
	v_mov_b32_e32 v10, v26
	v_mov_b32_e32 v11, v26
	v_mov_b32_e32 v12, v26
	v_mov_b32_e32 v13, v26
	v_mov_b32_e32 v98, v26
	v_mov_b32_e32 v99, v26
	v_mov_b32_e32 v100, v26
	v_mov_b32_e32 v101, v26
	v_mov_b32_e32 v102, v26
	v_mov_b32_e32 v103, v26
	v_mov_b32_e32 v104, v26
	v_mov_b32_e32 v105, v26
	v_mov_b32_e32 v202, v26
	v_mov_b32_e32 v203, v26
	v_mov_b32_e32 v204, v26
	v_mov_b32_e32 v205, v26
	v_mov_b32_e32 v118, v26
	v_mov_b32_e32 v119, v26
	v_mov_b32_e32 v120, v26
	v_mov_b32_e32 v121, v26
	v_mov_b32_e32 v114, v26
	v_mov_b32_e32 v115, v26
	v_mov_b32_e32 v116, v26
	v_mov_b32_e32 v117, v26
	v_mov_b32_e32 v106, v26
	v_mov_b32_e32 v107, v26
	v_mov_b32_e32 v108, v26
	v_mov_b32_e32 v109, v26
	v_mov_b32_e32 v14, v26
	v_mov_b32_e32 v15, v26
	v_mov_b32_e32 v16, v26
	v_mov_b32_e32 v17, v26
	v_mov_b32_e32 v142, v26
	v_mov_b32_e32 v143, v26
	v_mov_b32_e32 v144, v26
	v_mov_b32_e32 v145, v26
	v_mov_b32_e32 v22, v26
	v_mov_b32_e32 v23, v26
	v_mov_b32_e32 v24, v26
	v_mov_b32_e32 v25, v26
	v_mov_b32_e32 v130, v26
	v_mov_b32_e32 v131, v26
	v_mov_b32_e32 v132, v26
	v_mov_b32_e32 v133, v26
	v_mov_b32_e32 v176, v26
	v_mov_b32_e32 v177, v26
	v_mov_b32_e32 v178, v26
	v_mov_b32_e32 v179, v26
	v_mov_b32_e32 v110, v26
	v_mov_b32_e32 v111, v26
	v_mov_b32_e32 v112, v26
	v_mov_b32_e32 v113, v26
	v_mov_b32_e32 v94, v26
	v_mov_b32_e32 v95, v26
	v_mov_b32_e32 v96, v26
	v_mov_b32_e32 v97, v26
	v_mov_b32_e32 v86, v26
	v_mov_b32_e32 v87, v26
	v_mov_b32_e32 v88, v26
	v_mov_b32_e32 v89, v26
	v_mov_b32_e32 v74, v26
	v_mov_b32_e32 v75, v26
	v_mov_b32_e32 v76, v26
	v_mov_b32_e32 v77, v26
	v_mov_b32_e32 v58, v26
	v_mov_b32_e32 v59, v26
	v_mov_b32_e32 v60, v26
	v_mov_b32_e32 v61, v26
	v_mov_b32_e32 v66, v26
	v_mov_b32_e32 v67, v26
	v_mov_b32_e32 v68, v26
	v_mov_b32_e32 v69, v26
	v_mov_b32_e32 v62, v26
	v_mov_b32_e32 v63, v26
	v_mov_b32_e32 v64, v26
	v_mov_b32_e32 v65, v26
	v_mov_b32_e32 v210, v26
	v_mov_b32_e32 v211, v26
	v_mov_b32_e32 v212, v26
	v_mov_b32_e32 v213, v26
	v_mov_b32_e32 v122, v26
	v_mov_b32_e32 v123, v26
	v_mov_b32_e32 v124, v26
	v_mov_b32_e32 v125, v26
	v_mov_b32_e32 v126, v26
	v_mov_b32_e32 v127, v26
	v_mov_b32_e32 v128, v26
	v_mov_b32_e32 v129, v26
	v_mov_b32_e32 v78, v26
	v_mov_b32_e32 v79, v26
	v_mov_b32_e32 v80, v26
	v_mov_b32_e32 v81, v26
	v_mov_b32_e32 v82, v26
	v_mov_b32_e32 v83, v26
	v_mov_b32_e32 v84, v26
	v_mov_b32_e32 v85, v26
	scratch_store_dword off, v92, off offset:160 ; 4-byte Folded Spill
.LBB0_56:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	buffer_load_dwordx4 v[32:35], v246, s[24:27], 0 offen
	.loc	1 429 17                        ; moe_op_gemm_a8w4.py:429:17
	scratch_load_dwordx2 v[6:7], off, off offset:72 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[8:9], off, off offset:64 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[18:19], off, off offset:56 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[20:21], off, off offset:48 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[4:5], off, off offset:80 ; 8-byte Folded Reload
	v_lshl_add_u64 v[0:1], v[230:231], 0, s[6:7]
	v_lshl_add_u64 v[2:3], v[234:235], 0, s[6:7]
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	v_lshl_add_u64 v[30:31], v[180:181], 0, s[6:7]
	v_add_u32_e32 v254, s12, v207
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_add_u32_e32 v246, 0x100, v246
	.loc	1 413 24                        ; moe_op_gemm_a8w4.py:413:24
	v_add_u32_e32 v242, s13, v255
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	buffer_load_dwordx4 v[146:149], v243, s[24:27], 0 offen
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_add_u32_e32 v243, 0x100, v243
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_waitcnt vmcnt(6)
	scratch_store_dwordx4 off, v[32:35], off ; 16-byte Folded Spill
	buffer_load_dwordx4 v[32:35], v245, s[24:27], 0 offen
	.loc	1 429 17                        ; moe_op_gemm_a8w4.py:429:17
	s_waitcnt vmcnt(7)
	v_lshl_add_u64 v[6:7], v[6:7], 0, s[6:7]
	s_waitcnt vmcnt(6)
	v_lshl_add_u64 v[8:9], v[8:9], 0, s[6:7]
	s_waitcnt vmcnt(5)
	v_lshl_add_u64 v[18:19], v[18:19], 0, s[6:7]
	s_waitcnt vmcnt(3)
	v_lshl_add_u64 v[4:5], v[4:5], 0, s[6:7]
	v_lshl_add_u64 v[20:21], v[20:21], 0, s[6:7]
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	s_add_u32 s6, s6, 0x80
	s_addc_u32 s7, s7, 0
	s_cmp_lg_u32 s4, s6
	v_add_u32_e32 v245, 0x100, v245
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[32:35], off offset:16 ; 16-byte Folded Spill
	buffer_load_dwordx4 v[32:35], v244, s[24:27], 0 offen
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_add_u32_e32 v244, 0x100, v244
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[32:35], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	global_load_dwordx4 v[150:153], v[0:1], off
	global_load_dwordx4 v[154:157], v[2:3], off
	global_load_dwordx4 v[158:161], v[4:5], off
	global_load_dwordx4 v[162:165], v[6:7], off
	global_load_dwordx4 v[166:169], v[8:9], off
	global_load_dwordx4 v[170:173], v[18:19], off
	global_load_dwordx4 v[134:137], v[20:21], off
	global_load_dwordx4 v[138:141], v[30:31], off
	v_mov_b64_e32 v[6:7], v[202:203]
	v_add_u32_e32 v0, s13, v236
	v_mov_b64_e32 v[8:9], v[204:205]
	ds_read_b128 v[202:205], v250 offset:34816
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	v_add_u32_e32 v4, s12, v208
.Ltmp34:
	.loc	1 94 27                         ; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
	ds_read2st64_b32 v[0:1], v0 offset1:8
.Ltmp35:
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[182:185], v4
	ds_read_b128 v[190:193], v4 offset:4096
	ds_read_b128 v[186:189], v247
	ds_read_b128 v[194:197], v247 offset:4096
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[198:201], v250
	ds_read_b128 v[214:217], v250 offset:2048
	ds_read_b128 v[218:221], v250 offset:32768
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v237, v0, v0, s14
	v_perm_b32 v253, v1, v1, s14
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[34:37], v4 offset:12288
	ds_read_b128 v[38:41], v247 offset:12288
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(4)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[238:241], v[198:201], v[182:189], v[26:29], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_nop 6
	ds_read_b128 v[26:29], v4 offset:8192
	ds_read_b128 v[30:33], v247 offset:8192
	.loc	1 413 24                        ; moe_op_gemm_a8w4.py:413:24
	buffer_load_dwordx2 v[232:233], v206, s[28:31], 0 offen
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	v_add_u32_e32 v206, 0x100, v206
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[198:201], v[26:33], v[10:13], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[214:217], v[26:33], v[98:101], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[218:221], v[26:33], v[102:105], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[202:205], v[26:33], v[6:9], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_nop 6
	ds_read_b128 v[6:9], v4 offset:16384
	ds_read_b128 v[10:13], v247 offset:16384
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[198:201], v[34:41], v[118:121], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[214:217], v[34:41], v[114:117], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[218:221], v[34:41], v[106:109], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[202:205], v[34:41], v[14:17], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_nop 6
	ds_read_b128 v[14:17], v4 offset:20480
	ds_read_b128 v[18:21], v247 offset:20480
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[0:3], v[214:217], v[6:13], v[22:25], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_nop 6
	ds_read_b128 v[22:25], v4 offset:24576
	ds_read_b128 v[26:29], v247 offset:24576
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[218:221], v[182:189], v[54:57], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[202:205], v[182:189], v[46:49], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[214:217], v[182:189], v[50:53], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mov_b64_e32 v[182:183], v[210:211]
	v_mov_b64_e32 v[184:185], v[212:213]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[186:189], v251 offset:32768
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[198:201], v[6:13], v[142:145], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[130:133], v[218:221], v[6:13], v[130:133], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[210:213], v[202:205], v[6:13], v[176:179], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(3)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[198:201], v[14:21], v[110:113], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[214:217], v[14:21], v[94:97], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[218:221], v[14:21], v[86:89], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[202:205], v[14:21], v[74:77], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[10:13], v4 offset:28672
	ds_read_b128 v[14:17], v247 offset:28672
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(3)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[198:201], v[22:29], v[58:61], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[202:205], v[22:29], v[182:185], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 6
	ds_read_b128 v[182:185], v251 offset:34816
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[222:225], v[218:221], v[190:197], v[222:225], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[226:229], v[202:205], v[190:197], v[226:229], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[198:201], v[190:197], v[42:45], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[214:217], v[190:197], v[70:73], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[194:197], v251
	ds_read_b128 v[190:193], v251 offset:2048
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[214:217], v[22:29], v[66:69], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[218:221], v[22:29], v[62:65], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(3)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[214:217], v[10:17], v[126:129], v237, v252 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[218:221], v[10:17], v[78:81], v253, v252 op_sel_hi:[0,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[214:217], v248 offset:16384
	ds_read_b128 v[218:221], v249 offset:16384
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[198:201], v[10:17], v[122:125], v237, v252 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[198:201], v[202:205], v[10:17], v[82:85], v253, v252 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[10:13], v248
	ds_read_b128 v[14:17], v249
	s_nop 0
	ds_read_b128 v[78:81], v248 offset:8192
	s_nop 2
	ds_read_b128 v[82:85], v249 offset:8192
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(4)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[142:145], v[194:197], v[214:221], v[38:41], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[190:193], v[214:221], v[0:3], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[130:133], v[186:189], v[214:221], v[130:133], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[176:179], v[182:185], v[214:221], v[210:213], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[214:217], v248 offset:20480
	ds_read_b128 v[218:221], v249 offset:20480
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(4)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[194:197], v[10:17], v[238:241], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[190:193], v[10:17], v[50:53], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[186:189], v[10:17], v[54:57], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[182:185], v[10:17], v[46:49], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[10:13], v248 offset:4096
	ds_read_b128 v[14:17], v249 offset:4096
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[194:197], v[214:221], v[110:113], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[190:193], v[214:221], v[94:97], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[186:189], v[214:221], v[86:89], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[182:185], v[214:221], v[74:77], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[214:217], v248 offset:24576
	ds_read_b128 v[218:221], v249 offset:24576
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[194:197], v[10:17], v[42:45], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[190:193], v[10:17], v[70:73], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[222:225], v[186:189], v[10:17], v[222:225], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[226:229], v[182:185], v[10:17], v[226:229], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[194:197], v[78:85], v[90:93], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[190:193], v[78:85], v[98:101], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[186:189], v[78:85], v[102:105], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[202:205], v[182:185], v[78:85], v[30:33], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[78:81], v248 offset:12288
	ds_read_b128 v[82:85], v249 offset:12288
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[210:213], v[182:185], v[214:221], v[58:61], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[194:197], v[214:221], v[6:9], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[2:5], v248 offset:28672
	s_nop 5
	ds_read_b128 v[6:9], v249 offset:28672
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[194:197], v[78:85], v[118:121], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[190:193], v[78:85], v[114:117], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[186:189], v[78:85], v[106:109], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[182:185], v[78:85], v[34:37], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[194:197], v[2:9], v[122:125], v237, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[190:193], v[2:9], v[126:129], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[186:189], v[2:9], v[18:21], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[182:185], v[2:9], v[198:201], v253, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	scratch_load_dwordx4 v[0:3], off, off   ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_write_b128 v254, v[0:3]
	scratch_load_dwordx4 v[0:3], off, off offset:16 ; 16-byte Folded Reload
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[186:189], v[214:221], v[62:65], v253, v252 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_waitcnt vmcnt(0)
	ds_write_b128 v254, v[0:3] offset:8192
	scratch_load_dwordx4 v[0:3], off, off offset:32 ; 16-byte Folded Reload
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[190:193], v[214:221], v[66:69], v237, v252 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_waitcnt vmcnt(0)
	ds_write_b128 v254, v[0:3] offset:16384
	ds_write_b128 v254, v[146:149] offset:24576
	.loc	1 413 24                        ; moe_op_gemm_a8w4.py:413:24
	ds_write_b64 v242, v[232:233]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_write_b128 v209, v[150:153]
	ds_write_b128 v209, v[154:157] offset:8192
	ds_write_b128 v209, v[158:161] offset:16384
	ds_write_b128 v209, v[162:165] offset:24576
	ds_write_b128 v209, v[166:169] offset:32768
	ds_write_b128 v209, v[170:173] offset:40960
	ds_write_b128 v209, v[134:137] offset:49152
	ds_write_b128 v209, v[138:141] offset:57344
	.loc	1 403 19                        ; moe_op_gemm_a8w4.py:403:19
	s_cbranch_scc1 .LBB0_56
; %bb.57:                               ; %Flow
	.loc	1 0 19 is_stmt 0                ; moe_op_gemm_a8w4.py:0:19
	scratch_load_dword v231, off, off offset:88 ; 4-byte Folded Reload
	scratch_load_dword v232, off, off offset:92 ; 4-byte Folded Reload
	scratch_load_dword v233, off, off offset:96 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[234:235], off, off offset:100 ; 8-byte Folded Reload
	scratch_load_dword v237, off, off offset:108 ; 4-byte Folded Reload
	scratch_load_dword v240, off, off offset:156 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[160:161], off, off offset:112 ; 8-byte Folded Reload
	scratch_load_dword v151, off, off offset:120 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[162:163], off, off offset:124 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[164:165], off, off offset:132 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[166:167], off, off offset:140 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[168:169], off, off offset:148 ; 8-byte Folded Reload
	scratch_load_dword v92, off, off offset:160 ; 4-byte Folded Reload
	v_mov_b64_e32 v[186:187], v[24:25]
	v_mov_b64_e32 v[184:185], v[22:23]
	v_mov_b64_e32 v[22:23], v[142:143]
	v_mov_b64_e32 v[24:25], v[144:145]
	s_waitcnt vmcnt(7)
	v_lshrrev_b32_e32 v230, 4, v240
	v_lshrrev_b32_e32 v238, 3, v240
	v_and_b32_e32 v239, 48, v240
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v170, 4, v92
	s_branch .LBB0_59
.LBB0_58:
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v84, v85
	v_mov_b32_e32 v83, v85
	v_mov_b32_e32 v82, v85
	v_mov_b32_e32 v81, v85
	v_mov_b32_e32 v80, v85
	v_mov_b32_e32 v79, v85
	v_mov_b32_e32 v78, v85
	v_mov_b32_e32 v129, v85
	v_mov_b32_e32 v128, v85
	v_mov_b32_e32 v127, v85
	v_mov_b32_e32 v126, v85
	v_mov_b32_e32 v125, v85
	v_mov_b32_e32 v124, v85
	v_mov_b32_e32 v123, v85
	v_mov_b32_e32 v122, v85
	v_mov_b32_e32 v213, v85
	v_mov_b32_e32 v212, v85
	v_mov_b32_e32 v211, v85
	v_mov_b32_e32 v210, v85
	v_mov_b32_e32 v65, v85
	v_mov_b32_e32 v64, v85
	v_mov_b32_e32 v63, v85
	v_mov_b32_e32 v62, v85
	v_mov_b32_e32 v69, v85
	v_mov_b32_e32 v68, v85
	v_mov_b32_e32 v67, v85
	v_mov_b32_e32 v66, v85
	v_mov_b32_e32 v61, v85
	v_mov_b32_e32 v60, v85
	v_mov_b32_e32 v59, v85
	v_mov_b32_e32 v58, v85
	v_mov_b32_e32 v77, v85
	v_mov_b32_e32 v76, v85
	v_mov_b32_e32 v75, v85
	v_mov_b32_e32 v74, v85
	v_mov_b32_e32 v89, v85
	v_mov_b32_e32 v88, v85
	v_mov_b32_e32 v87, v85
	v_mov_b32_e32 v86, v85
	v_mov_b32_e32 v97, v85
	v_mov_b32_e32 v96, v85
	v_mov_b32_e32 v95, v85
	v_mov_b32_e32 v94, v85
	v_mov_b32_e32 v113, v85
	v_mov_b32_e32 v112, v85
	v_mov_b32_e32 v111, v85
	v_mov_b32_e32 v110, v85
	v_mov_b32_e32 v179, v85
	v_mov_b32_e32 v178, v85
	v_mov_b32_e32 v177, v85
	v_mov_b32_e32 v176, v85
	v_mov_b32_e32 v133, v85
	v_mov_b32_e32 v132, v85
	v_mov_b32_e32 v131, v85
	v_mov_b32_e32 v130, v85
	v_mov_b32_e32 v187, v85
	v_mov_b32_e32 v186, v85
	v_mov_b32_e32 v185, v85
	v_mov_b32_e32 v184, v85
	v_mov_b32_e32 v25, v85
	v_mov_b32_e32 v24, v85
	v_mov_b32_e32 v23, v85
	v_mov_b32_e32 v22, v85
	v_mov_b32_e32 v17, v85
	v_mov_b32_e32 v16, v85
	v_mov_b32_e32 v15, v85
	v_mov_b32_e32 v14, v85
	v_mov_b32_e32 v109, v85
	v_mov_b32_e32 v108, v85
	v_mov_b32_e32 v107, v85
	v_mov_b32_e32 v106, v85
	v_mov_b32_e32 v117, v85
	v_mov_b32_e32 v116, v85
	v_mov_b32_e32 v115, v85
	v_mov_b32_e32 v114, v85
	v_mov_b32_e32 v121, v85
	v_mov_b32_e32 v120, v85
	v_mov_b32_e32 v119, v85
	v_mov_b32_e32 v118, v85
	v_mov_b32_e32 v205, v85
	v_mov_b32_e32 v204, v85
	v_mov_b32_e32 v203, v85
	v_mov_b32_e32 v202, v85
	v_mov_b32_e32 v105, v85
	v_mov_b32_e32 v104, v85
	v_mov_b32_e32 v103, v85
	v_mov_b32_e32 v102, v85
	v_mov_b32_e32 v101, v85
	v_mov_b32_e32 v100, v85
	v_mov_b32_e32 v99, v85
	v_mov_b32_e32 v98, v85
	v_mov_b32_e32 v13, v85
	v_mov_b32_e32 v12, v85
	v_mov_b32_e32 v11, v85
	v_mov_b32_e32 v10, v85
	v_mov_b32_e32 v229, v85
	v_mov_b32_e32 v228, v85
	v_mov_b32_e32 v227, v85
	v_mov_b32_e32 v226, v85
	v_mov_b32_e32 v225, v85
	v_mov_b32_e32 v224, v85
	v_mov_b32_e32 v223, v85
	v_mov_b32_e32 v222, v85
	v_mov_b32_e32 v73, v85
	v_mov_b32_e32 v72, v85
	v_mov_b32_e32 v71, v85
	v_mov_b32_e32 v70, v85
	v_mov_b32_e32 v45, v85
	v_mov_b32_e32 v44, v85
	v_mov_b32_e32 v43, v85
	v_mov_b32_e32 v42, v85
	v_mov_b32_e32 v49, v85
	v_mov_b32_e32 v48, v85
	v_mov_b32_e32 v47, v85
	v_mov_b32_e32 v46, v85
	v_mov_b32_e32 v57, v85
	v_mov_b32_e32 v56, v85
	v_mov_b32_e32 v55, v85
	v_mov_b32_e32 v54, v85
	v_mov_b32_e32 v53, v85
	v_mov_b32_e32 v52, v85
	v_mov_b32_e32 v51, v85
	v_mov_b32_e32 v50, v85
	v_mov_b32_e32 v29, v85
	v_mov_b32_e32 v28, v85
	v_mov_b32_e32 v27, v85
	v_mov_b32_e32 v26, v85
.LBB0_59:                               ; %Flow340
	s_load_dwordx2 s[14:15], s[0:1], 0xa0
	s_nop 0
	s_load_dword s0, s[0:1], 0x60
	v_mov_b64_e32 v[182:183], v[132:133]
	.loc	1 405 20 is_stmt 1              ; moe_op_gemm_a8w4.py:405:20
	v_and_b32_e32 v150, 14, v240
	v_and_b32_e32 v138, 0x1f0, v240
	v_and_b32_e32 v148, 0x1e0, v240
	v_mov_b64_e32 v[180:181], v[130:131]
	v_mov_b32_e32 v163, v235
	v_mov_b32_e32 v169, v235
	v_mov_b32_e32 v167, v235
	v_mov_b32_e32 v165, v235
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_and_b64 vcc, exec, s[2:3]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_lshlrev_b32_e32 v149, 3, v150
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_61
; %bb.60:
.Ltmp36:
	.loc	1 94 27                         ; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
	v_lshl_add_u32 v0, v240, 2, 0
	v_add_u32_e32 v0, 0x18000, v0
	ds_read2st64_b32 v[4:5], v0 offset1:8
.Ltmp37:
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_lshlrev_b32_e32 v0, 7, v92
	v_and_b32_e32 v1, 0x7000, v174
	v_xor_b32_e32 v2, v149, v239
	v_or3_b32 v0, v0, v1, v2
	v_add_u32_e32 v91, 0, v0
	ds_read_b128 v[134:137], v91
	v_xad_u32 v90, v0, 64, 0
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	v_mul_u32_u24_e32 v0, 0x110, v92
	v_xor_b32_e32 v18, v0, v239
	s_add_i32 s1, 0, 0x10000
	v_xad_u32 v131, v18, 64, s1
	v_xor_b32_e32 v0, 0xc0, v18
	ds_read_b128 v[144:147], v131
	v_add_u32_e32 v132, s1, v18
	v_add_u32_e32 v130, s1, v0
	ds_read_b128 v[140:143], v132
	ds_read_b128 v[156:159], v130
	s_mov_b32 s2, 0x7050604
	v_xor_b32_e32 v18, 0x80, v18
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[6:9], v90
	ds_read_b128 v[38:41], v90 offset:32768
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v4, v4, s2
	v_mov_b32_e32 v133, 0x7f
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	v_add_u32_e32 v139, s1, v18
	ds_read_b128 v[152:155], v139
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[30:33], v90 offset:2048
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(5)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[0:3], v[134:137], v[140:147], v[26:29], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_perm_b32 v5, v5, v5, s2
	v_mov_b64_e32 v[174:175], v[104:105]
	v_mov_b64_e32 v[172:173], v[102:103]
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[6:9], v[152:159], v[0:3], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 6
	ds_read_b128 v[0:3], v91 offset:2048
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[0:3], v[140:147], v[50:53], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[30:33], v[152:159], v[18:21], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 10
	ds_read_b128 v[18:21], v91 offset:32768
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[18:21], v[140:147], v[54:57], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[38:41], v[152:159], v[34:37], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 10
	ds_read_b128 v[34:37], v91 offset:34816
	ds_read_b128 v[90:93], v90 offset:34816
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[34:37], v[140:147], v[46:49], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:4096
	ds_read_b128 v[140:143], v132 offset:4096
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[18:21], v[140:147], v[222:225], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[90:93], v[152:159], v[46:49], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:4096
	ds_read_b128 v[152:155], v139 offset:4096
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[222:225], v[38:41], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[34:37], v[140:147], v[226:229], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[134:137], v[140:147], v[42:45], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[0:3], v[140:147], v[70:73], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:8192
	ds_read_b128 v[140:143], v132 offset:8192
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[226:229], v[90:93], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[18:21], v[140:147], v[172:175], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[6:9], v[152:159], v[42:45], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[30:33], v[152:159], v[70:73], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:8192
	ds_read_b128 v[152:155], v139 offset:8192
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[172:175], v[38:41], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[34:37], v[140:147], v[202:205], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[134:137], v[140:147], v[10:13], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[0:3], v[140:147], v[98:101], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:12288
	ds_read_b128 v[140:143], v132 offset:12288
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[202:205], v[90:93], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[134:137], v[140:147], v[118:121], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[6:9], v[152:159], v[10:13], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[30:33], v[152:159], v[98:101], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:12288
	ds_read_b128 v[152:155], v139 offset:12288
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[6:9], v[152:159], v[102:105], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[0:3], v[140:147], v[114:117], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[30:33], v[152:159], v[102:105], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[18:21], v[140:147], v[106:109], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[34:37], v[140:147], v[14:17], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:16384
	ds_read_b128 v[140:143], v132 offset:16384
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[38:41], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[0:3], v[140:147], v[184:187], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[90:93], v[152:159], v[14:17], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:16384
	ds_read_b128 v[152:155], v139 offset:16384
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[184:187], v[30:33], v[152:159], v[102:105], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[18:21], v[140:147], v[180:183], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[180:183], v[38:41], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[34:37], v[140:147], v[176:179], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[134:137], v[140:147], v[22:25], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:20480
	ds_read_b128 v[140:143], v132 offset:20480
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[176:179], v[90:93], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[134:137], v[140:147], v[110:113], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[6:9], v[152:159], v[22:25], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:20480
	ds_read_b128 v[152:155], v139 offset:20480
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[0:3], v[140:147], v[94:97], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[18:21], v[140:147], v[86:89], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[34:37], v[140:147], v[74:77], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:24576
	ds_read_b128 v[140:143], v132 offset:24576
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[6:9], v[152:159], v[102:105], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[134:137], v[140:147], v[58:61], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[0:3], v[140:147], v[66:69], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[18:21], v[140:147], v[62:65], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[34:37], v[140:147], v[210:213], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[144:147], v131 offset:28672
	ds_read_b128 v[140:143], v132 offset:28672
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[30:33], v[152:159], v[94:97], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[38:41], v[152:159], v[86:89], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[90:93], v[152:159], v[74:77], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:24576
	ds_read_b128 v[152:155], v139 offset:24576
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[0:3], v[0:3], v[140:147], v[126:129], v4, v133 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[6:9], v[152:159], v[58:61], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[30:33], v[152:159], v[66:69], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[38:41], v[152:159], v[62:65], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[210:213], v[90:93], v[152:159], v[102:105], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 404 20                        ; moe_op_gemm_a8w4.py:404:20
	ds_read_b128 v[156:159], v130 offset:28672
	ds_read_b128 v[152:155], v139 offset:28672
	.loc	1 421 46                        ; moe_op_gemm_a8w4.py:421:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[30:33], v[152:159], v[0:3], v4, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[0:3], v[18:21], v[140:147], v[78:81], v5, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[134:137], v[140:147], v[122:125], v4, v133 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[38:41], v[152:159], v[0:3], v5, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[0:3], v[34:37], v[140:147], v[82:85], v5, v133 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[6:9], v[152:159], v[102:105], v4, v133 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[90:93], v[152:159], v[0:3], v5, v133 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_nop 7
	v_mov_b64_e32 v[102:103], v[172:173]
	v_mov_b64_e32 v[104:105], v[174:175]
.LBB0_61:                               ; %._crit_edge._crit_edge
	.loc	1 470 30                        ; moe_op_gemm_a8w4.py:470:30
	v_mul_lo_u32 v2, v151, s0
	.loc	1 375 42                        ; moe_op_gemm_a8w4.py:375:42
	v_or_b32_e32 v0, s18, v240
	v_mov_b32_e32 v1, s19
	.loc	1 470 43                        ; moe_op_gemm_a8w4.py:470:43
	v_add_u32_e32 v2, s18, v2
	.loc	1 472 27                        ; moe_op_gemm_a8w4.py:472:27
	v_add_lshl_u32 v2, v2, v240, 2
	v_bfrev_b32_e32 v151, 1
	.loc	1 468 24                        ; moe_op_gemm_a8w4.py:468:24
	v_cmp_gt_i64_e32 vcc, s[22:23], v[0:1]
	.loc	1 472 27                        ; moe_op_gemm_a8w4.py:472:27
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x27000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v0, v151, v2, vcc
	buffer_load_dword v4, v0, s[16:19], 0 offen
	.loc	1 463 28                        ; moe_op_gemm_a8w4.py:463:28
	v_mov_b32_e32 v147, 0
	global_load_dword v0, v147, s[8:9]
	.loc	1 475 20                        ; moe_op_gemm_a8w4.py:475:20
	v_and_b32_e32 v1, 0x60, v255
	v_and_b32_e32 v2, 0x78c, v236
	v_and_b32_e32 v152, 16, v240
	v_add_u32_e32 v1, 0, v1
	v_lshl_add_u32 v3, v138, 1, 0
	v_add3_u32 v1, v1, v2, v152
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 59                        ; moe_op_gemm_a8w4.py:332:59
	v_ashrrev_i32_e32 v161, 31, v160
	.loc	1 482 33                        ; moe_op_gemm_a8w4.py:482:33
	s_lshl_b64 s[12:13], s[34:35], 8
	.loc	1 288 14                        ; moe_op_gemm_a8w4.py:288:14
	s_lshr_b32 s0, s22, 31
	.loc	1 339 46                        ; moe_op_gemm_a8w4.py:339:46
	v_or_b32_e32 v146, s12, v170
	.loc	1 288 14                        ; moe_op_gemm_a8w4.py:288:14
	s_add_i32 s12, s22, s0
	.loc	1 467 22                        ; moe_op_gemm_a8w4.py:467:22
	v_cmp_lt_i64_e64 s[6:7], v[162:163], v[160:161]
	v_cmp_lt_i64_e64 s[8:9], v[168:169], v[160:161]
	v_cmp_lt_i64_e64 s[2:3], v[166:167], v[160:161]
	v_cmp_lt_i64_e64 s[0:1], v[164:165], v[160:161]
	.loc	1 288 14                        ; moe_op_gemm_a8w4.py:288:14
	s_ashr_i32 s12, s12, 1
	s_mov_b32 s4, 0xffff
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 475 20                        ; moe_op_gemm_a8w4.py:475:20
	s_waitcnt vmcnt(1)
	ds_write_b32 v1, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[138:141], v3
	ds_read_b128 v[142:145], v3 offset:16
	ds_read_b128 v[134:137], v3 offset:1024
	ds_read_b128 v[6:9], v3 offset:1040
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_fma_f32 v3, v50, v0, v142
	v_fma_f32 v1, v26, v0, v138
	v_fma_f32 v4, v27, v0, v139
	v_fma_f32 v2, v28, v0, v140
	v_fma_f32 v5, v29, v0, v141
	v_fma_f32 v18, v51, v0, v143
	v_fma_f32 v19, v52, v0, v144
	v_fma_f32 v20, v53, v0, v145
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v21, v54, v0, v134
	v_fma_f32 v26, v55, v0, v135
	v_fma_f32 v27, v56, v0, v136
	v_fma_f32 v28, v57, v0, v137
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v29, v46, v0, v6
	v_fma_f32 v30, v47, v0, v7
	v_fma_f32 v31, v48, v0, v8
	v_fma_f32 v32, v49, v0, v9
	v_fma_f32 v33, v42, v0, v138
	v_fma_f32 v34, v43, v0, v139
	v_fma_f32 v35, v44, v0, v140
	v_fma_f32 v36, v45, v0, v141
	v_fma_f32 v37, v70, v0, v142
	v_fma_f32 v38, v71, v0, v143
	v_fma_f32 v39, v72, v0, v144
	v_fma_f32 v40, v73, v0, v145
	v_fma_f32 v41, v222, v0, v134
	v_fma_f32 v42, v223, v0, v135
	v_fma_f32 v43, v224, v0, v136
	v_fma_f32 v44, v225, v0, v137
	v_fma_f32 v45, v226, v0, v6
	v_fma_f32 v46, v227, v0, v7
	v_fma_f32 v47, v228, v0, v8
	v_fma_f32 v48, v229, v0, v9
	v_fma_f32 v10, v10, v0, v138
	v_fma_f32 v11, v11, v0, v139
	v_fma_f32 v12, v12, v0, v140
	v_fma_f32 v13, v13, v0, v141
	v_fma_f32 v49, v98, v0, v142
	v_fma_f32 v50, v99, v0, v143
	v_fma_f32 v51, v100, v0, v144
	v_fma_f32 v52, v101, v0, v145
	v_fma_f32 v53, v102, v0, v134
	v_fma_f32 v54, v103, v0, v135
	v_fma_f32 v55, v104, v0, v136
	v_fma_f32 v56, v105, v0, v137
	v_fma_f32 v57, v202, v0, v6
	v_fma_f32 v130, v203, v0, v7
	v_fma_f32 v70, v204, v0, v8
	v_fma_f32 v131, v205, v0, v9
	v_fma_f32 v71, v118, v0, v138
	v_fma_f32 v132, v119, v0, v139
	v_fma_f32 v72, v120, v0, v140
	v_fma_f32 v133, v121, v0, v141
	v_fma_f32 v73, v114, v0, v142
	v_fma_f32 v153, v115, v0, v143
	v_fma_f32 v101, v116, v0, v144
	v_fma_f32 v154, v117, v0, v145
	v_fma_f32 v102, v106, v0, v134
	v_fma_f32 v155, v107, v0, v135
	v_fma_f32 v103, v108, v0, v136
	v_fma_f32 v156, v109, v0, v137
	v_fma_f32 v14, v14, v0, v6
	v_fma_f32 v15, v15, v0, v7
	v_fma_f32 v16, v16, v0, v8
	v_fma_f32 v17, v17, v0, v9
	v_fma_f32 v22, v22, v0, v138
	v_fma_f32 v23, v23, v0, v139
	v_fma_f32 v24, v24, v0, v140
	v_fma_f32 v25, v25, v0, v141
	v_fma_f32 v108, v184, v0, v142
	v_fma_f32 v157, v185, v0, v143
	v_fma_f32 v109, v186, v0, v144
	v_fma_f32 v158, v187, v0, v145
	v_fma_f32 v114, v180, v0, v134
	v_fma_f32 v159, v181, v0, v135
	v_fma_f32 v115, v182, v0, v136
	v_fma_f32 v160, v183, v0, v137
	v_fma_f32 v116, v176, v0, v6
	v_fma_f32 v161, v177, v0, v7
	v_fma_f32 v117, v178, v0, v8
	v_fma_f32 v162, v179, v0, v9
	v_fma_f32 v118, v110, v0, v138
	v_fma_f32 v163, v111, v0, v139
	v_fma_f32 v119, v112, v0, v140
	v_fma_f32 v164, v113, v0, v141
	v_fma_f32 v120, v94, v0, v142
	v_fma_f32 v165, v95, v0, v143
	v_fma_f32 v121, v96, v0, v144
	v_fma_f32 v166, v97, v0, v145
	v_fma_f32 v167, v86, v0, v134
	v_fma_f32 v168, v87, v0, v135
	v_fma_f32 v169, v88, v0, v136
	v_fma_f32 v170, v89, v0, v137
	v_fma_f32 v74, v74, v0, v6
	v_fma_f32 v75, v75, v0, v7
	v_fma_f32 v76, v76, v0, v8
	v_fma_f32 v77, v77, v0, v9
	v_fma_f32 v58, v58, v0, v138
	v_fma_f32 v59, v59, v0, v139
	v_fma_f32 v60, v60, v0, v140
	v_fma_f32 v61, v61, v0, v141
	v_fma_f32 v66, v66, v0, v142
	v_fma_f32 v67, v67, v0, v143
	v_fma_f32 v68, v68, v0, v144
	v_fma_f32 v171, v69, v0, v145
	v_fma_f32 v62, v62, v0, v134
	v_fma_f32 v63, v63, v0, v135
	v_fma_f32 v64, v64, v0, v136
	v_fma_f32 v65, v65, v0, v137
	v_fma_f32 v69, v210, v0, v6
	v_fma_f32 v172, v211, v0, v7
	v_fma_f32 v173, v212, v0, v8
	v_fma_f32 v174, v213, v0, v9
	v_fma_f32 v138, v122, v0, v138
	v_fma_f32 v139, v123, v0, v139
	v_fma_f32 v140, v124, v0, v140
	v_fmac_f32_e32 v141, v125, v0
	v_fma_f32 v142, v126, v0, v142
	v_fma_f32 v143, v127, v0, v143
	v_fma_f32 v144, v128, v0, v144
	v_fmac_f32_e32 v145, v129, v0
	v_fma_f32 v78, v78, v0, v134
	v_fma_f32 v79, v79, v0, v135
	v_fma_f32 v80, v80, v0, v136
	v_fmac_f32_e32 v137, v81, v0
	v_fma_f32 v6, v82, v0, v6
	v_fma_f32 v7, v83, v0, v7
	v_fma_f32 v8, v84, v0, v8
	v_fmac_f32_e32 v9, v85, v0
.Ltmp38:
	.loc	1 100 24                        ; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
	v_max_f32_e64 v0, s15, s15
	v_min_f32_e32 v1, v1, v0
	v_min_f32_e32 v175, v2, v0
	v_min_f32_e32 v176, v3, v0
	v_min_f32_e32 v177, v19, v0
	v_min_f32_e32 v178, v21, v0
	v_min_f32_e32 v179, v27, v0
	v_min_f32_e32 v180, v29, v0
	v_min_f32_e32 v81, v31, v0
	v_min_f32_e32 v82, v33, v0
	v_min_f32_e32 v83, v35, v0
	v_min_f32_e32 v84, v37, v0
	v_min_f32_e32 v85, v39, v0
	v_min_f32_e32 v86, v41, v0
	v_min_f32_e32 v87, v43, v0
	v_min_f32_e32 v88, v45, v0
	v_min_f32_e32 v89, v47, v0
	v_min_f32_e32 v90, v10, v0
	v_min_f32_e32 v91, v12, v0
	v_min_f32_e32 v92, v49, v0
	v_min_f32_e32 v93, v51, v0
	v_min_f32_e32 v94, v53, v0
	v_min_f32_e32 v95, v55, v0
	v_min_f32_e32 v96, v57, v0
	v_min_f32_e32 v97, v70, v0
	v_min_f32_e32 v98, v71, v0
	v_min_f32_e32 v99, v72, v0
	v_min_f32_e32 v100, v73, v0
	v_min_f32_e32 v101, v101, v0
	v_min_f32_e32 v102, v102, v0
	v_min_f32_e32 v103, v103, v0
	v_min_f32_e32 v104, v14, v0
	v_min_f32_e32 v105, v16, v0
	v_min_f32_e32 v106, v22, v0
	v_min_f32_e32 v107, v24, v0
	v_min_f32_e32 v108, v108, v0
	v_min_f32_e32 v109, v109, v0
	v_min_f32_e32 v110, v114, v0
	v_min_f32_e32 v111, v115, v0
	v_min_f32_e32 v112, v116, v0
	v_min_f32_e32 v113, v117, v0
	v_min_f32_e32 v114, v118, v0
	v_min_f32_e32 v115, v119, v0
	v_min_f32_e32 v116, v120, v0
	v_min_f32_e32 v117, v121, v0
	v_min_f32_e32 v118, v167, v0
	v_min_f32_e32 v119, v169, v0
	v_min_f32_e32 v120, v74, v0
	v_min_f32_e32 v121, v76, v0
	v_min_f32_e32 v122, v58, v0
	v_min_f32_e32 v123, v60, v0
	v_min_f32_e32 v124, v66, v0
	v_min_f32_e32 v125, v68, v0
	v_min_f32_e32 v126, v62, v0
	v_min_f32_e32 v127, v64, v0
	v_min_f32_e32 v128, v69, v0
	v_min_f32_e32 v129, v173, v0
	v_min_f32_e32 v73, v138, v0
	v_min_f32_e32 v72, v140, v0
	v_min_f32_e32 v71, v142, v0
	v_min_f32_e32 v70, v144, v0
	v_min_f32_e32 v69, v78, v0
	v_min_f32_e32 v68, v80, v0
	v_min_f32_e32 v3, v6, v0
	v_min_f32_e32 v2, v8, v0
.Ltmp39:
	.loc	1 100 24 is_stmt 0              ; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
	v_min_f32_e32 v4, v4, v0
	v_min_f32_e32 v5, v5, v0
	v_min_f32_e32 v6, v18, v0
	v_min_f32_e32 v8, v20, v0
	v_min_f32_e32 v10, v26, v0
	v_min_f32_e32 v12, v28, v0
	v_min_f32_e32 v14, v30, v0
	v_min_f32_e32 v16, v32, v0
	v_min_f32_e32 v18, v34, v0
	v_min_f32_e32 v19, v36, v0
	v_min_f32_e32 v20, v38, v0
	v_min_f32_e32 v21, v40, v0
	v_min_f32_e32 v22, v42, v0
	v_min_f32_e32 v24, v44, v0
	v_min_f32_e32 v26, v46, v0
	v_min_f32_e32 v27, v48, v0
	v_min_f32_e32 v28, v11, v0
	v_min_f32_e32 v29, v13, v0
	v_min_f32_e32 v30, v50, v0
	v_min_f32_e32 v31, v52, v0
	v_min_f32_e32 v32, v54, v0
	v_min_f32_e32 v33, v56, v0
	v_min_f32_e32 v34, v130, v0
	v_min_f32_e32 v35, v131, v0
	v_min_f32_e32 v36, v132, v0
	v_min_f32_e32 v37, v133, v0
	v_min_f32_e32 v38, v153, v0
	v_min_f32_e32 v39, v154, v0
	v_min_f32_e32 v40, v155, v0
	v_min_f32_e32 v41, v156, v0
	v_min_f32_e32 v42, v15, v0
	v_min_f32_e32 v43, v17, v0
	v_min_f32_e32 v44, v23, v0
	v_min_f32_e32 v45, v25, v0
	v_min_f32_e32 v46, v157, v0
	v_min_f32_e32 v47, v158, v0
	v_min_f32_e32 v48, v159, v0
	v_min_f32_e32 v49, v160, v0
	v_min_f32_e32 v50, v161, v0
	v_min_f32_e32 v51, v162, v0
	v_min_f32_e32 v52, v163, v0
	v_min_f32_e32 v53, v164, v0
	v_min_f32_e32 v54, v165, v0
	v_min_f32_e32 v55, v166, v0
	v_min_f32_e32 v56, v168, v0
	v_min_f32_e32 v57, v170, v0
	v_min_f32_e32 v58, v75, v0
	v_min_f32_e32 v60, v77, v0
	v_min_f32_e32 v59, v59, v0
	v_min_f32_e32 v61, v61, v0
	v_min_f32_e32 v62, v67, v0
	v_min_f32_e32 v64, v171, v0
	v_min_f32_e32 v63, v63, v0
	v_min_f32_e32 v65, v65, v0
	v_min_f32_e32 v66, v172, v0
	v_min_f32_e32 v67, v174, v0
	v_min_f32_e32 v74, v139, v0
	v_min_f32_e32 v75, v141, v0
	v_min_f32_e32 v76, v143, v0
	v_min_f32_e32 v77, v145, v0
	v_min_f32_e32 v78, v79, v0
	v_min_f32_e32 v79, v137, v0
	v_min_f32_e32 v80, v7, v0
	v_min_f32_e32 v0, v9, v0
	.loc	1 102 33 is_stmt 1              ; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
	v_max_f32_e64 v7, -s15, v8
	v_max_f32_e64 v8, -s15, v10
	v_max_f32_e64 v10, -s15, v14
	v_max_f32_e64 v14, -s15, v20
	v_max_f32_e64 v20, -s15, v28
	v_max_f32_e64 v28, -s15, v36
	v_max_f32_e64 v36, -s15, v44
	v_max_f32_e64 v44, -s15, v52
	v_max_f32_e64 v52, -s15, v59
	v_max_f32_e64 v59, -s15, v67
	v_max_f32_e64 v67, -s15, v0
.Ltmp40:
	.loc	1 115 45                        ; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_mov_b32_e32 v0, 0xbfb8aa3b
	v_mul_f32_e32 v0, s14, v0
.Ltmp41:
	.loc	1 102 33                        ; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
	v_max_f32_e64 v13, -s15, v19
	v_max_f32_e64 v19, -s15, v27
	v_max_f32_e64 v27, -s15, v35
	v_max_f32_e64 v35, -s15, v43
	v_max_f32_e64 v43, -s15, v51
	v_max_f32_e64 v51, -s15, v60
	v_max_f32_e64 v60, -s15, v74
.Ltmp42:
	.loc	1 115 53                        ; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_mul_f32_e32 v74, v0, v1
	v_mul_f32_e32 v156, v0, v100
	v_mul_f32_e32 v174, v0, v118
	.loc	1 115 28 is_stmt 0              ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v74, v74
	.loc	1 115 53                        ; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_mul_f32_e32 v155, v0, v99
	v_mul_f32_e32 v181, v0, v119
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v174, v174
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v181, v181
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v74, 1.0, v74
.Ltmp43:
	.loc	1 102 33 is_stmt 1              ; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
	v_max_f32_e64 v4, -s15, v4
	v_max_f32_e64 v5, -s15, v5
	v_max_f32_e64 v6, -s15, v6
	v_max_f32_e64 v9, -s15, v12
	v_max_f32_e64 v11, -s15, v16
	v_max_f32_e64 v12, -s15, v18
	v_max_f32_e64 v15, -s15, v21
	v_max_f32_e64 v16, -s15, v22
	v_max_f32_e64 v17, -s15, v24
	v_max_f32_e64 v18, -s15, v26
	v_max_f32_e64 v21, -s15, v29
	v_max_f32_e64 v22, -s15, v30
	v_max_f32_e64 v23, -s15, v31
	v_max_f32_e64 v24, -s15, v32
	v_max_f32_e64 v25, -s15, v33
	v_max_f32_e64 v26, -s15, v34
	v_max_f32_e64 v29, -s15, v37
	v_max_f32_e64 v30, -s15, v38
	v_max_f32_e64 v31, -s15, v39
	v_max_f32_e64 v32, -s15, v40
	v_max_f32_e64 v33, -s15, v41
	v_max_f32_e64 v34, -s15, v42
	v_max_f32_e64 v37, -s15, v45
	v_max_f32_e64 v38, -s15, v46
	v_max_f32_e64 v39, -s15, v47
	v_max_f32_e64 v40, -s15, v48
	v_max_f32_e64 v41, -s15, v49
	v_max_f32_e64 v42, -s15, v50
	v_max_f32_e64 v45, -s15, v53
	v_max_f32_e64 v46, -s15, v54
	v_max_f32_e64 v47, -s15, v55
	v_max_f32_e64 v48, -s15, v56
	v_max_f32_e64 v49, -s15, v57
	v_max_f32_e64 v50, -s15, v58
	v_max_f32_e64 v53, -s15, v61
	v_max_f32_e64 v54, -s15, v62
	v_max_f32_e64 v55, -s15, v64
	v_max_f32_e64 v56, -s15, v63
	v_max_f32_e64 v57, -s15, v65
	v_max_f32_e64 v58, -s15, v66
	v_max_f32_e64 v61, -s15, v75
	v_max_f32_e64 v62, -s15, v76
	v_max_f32_e64 v63, -s15, v77
	v_max_f32_e64 v64, -s15, v78
	v_max_f32_e64 v65, -s15, v79
	v_max_f32_e64 v66, -s15, v80
.Ltmp44:
	.loc	1 115 53                        ; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_mul_f32_e32 v75, v0, v175
	v_mul_f32_e32 v76, v0, v176
	v_mul_f32_e32 v77, v0, v177
	v_mul_f32_e32 v78, v0, v178
	v_mul_f32_e32 v79, v0, v179
	v_mul_f32_e32 v80, v0, v180
	v_mul_f32_e32 v130, v0, v81
	v_mul_f32_e32 v131, v0, v82
	v_mul_f32_e32 v132, v0, v83
	v_mul_f32_e32 v133, v0, v84
	v_mul_f32_e32 v134, v0, v85
	v_mul_f32_e32 v135, v0, v86
	v_mul_f32_e32 v136, v0, v87
	v_mul_f32_e32 v137, v0, v88
	v_mul_f32_e32 v138, v0, v89
	v_mul_f32_e32 v139, v0, v90
	v_mul_f32_e32 v140, v0, v91
	v_mul_f32_e32 v141, v0, v92
	v_mul_f32_e32 v142, v0, v93
	v_mul_f32_e32 v143, v0, v94
	v_mul_f32_e32 v144, v0, v95
	v_mul_f32_e32 v145, v0, v96
	v_mul_f32_e32 v153, v0, v97
	v_mul_f32_e32 v154, v0, v98
	v_mul_f32_e32 v157, v0, v101
	v_mul_f32_e32 v158, v0, v102
	v_mul_f32_e32 v159, v0, v103
	v_mul_f32_e32 v160, v0, v104
	v_mul_f32_e32 v161, v0, v105
	v_mul_f32_e32 v162, v0, v106
	v_mul_f32_e32 v163, v0, v107
	v_mul_f32_e32 v164, v0, v108
	v_mul_f32_e32 v165, v0, v109
	v_mul_f32_e32 v166, v0, v110
	v_mul_f32_e32 v167, v0, v111
	v_mul_f32_e32 v168, v0, v112
	v_mul_f32_e32 v169, v0, v113
	v_mul_f32_e32 v170, v0, v114
	v_mul_f32_e32 v171, v0, v115
	v_mul_f32_e32 v172, v0, v116
	v_mul_f32_e32 v173, v0, v117
	v_mul_f32_e32 v182, v0, v120
	v_mul_f32_e32 v183, v0, v121
	v_mul_f32_e32 v184, v0, v122
	v_mul_f32_e32 v185, v0, v123
	v_mul_f32_e32 v186, v0, v124
	v_mul_f32_e32 v187, v0, v125
	v_mul_f32_e32 v188, v0, v126
	v_mul_f32_e32 v189, v0, v127
	v_mul_f32_e32 v190, v0, v128
	v_mul_f32_e32 v191, v0, v129
	v_mul_f32_e32 v192, v0, v73
	v_mul_f32_e32 v193, v0, v72
	v_mul_f32_e32 v194, v0, v71
	v_mul_f32_e32 v195, v0, v70
	v_mul_f32_e32 v196, v0, v69
	v_mul_f32_e32 v197, v0, v68
	v_mul_f32_e32 v198, v0, v3
	v_mul_f32_e32 v0, v0, v2
	.loc	1 115 20 is_stmt 0              ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v226, 1.0, v156
	v_add_f32_e32 v156, 1.0, v174
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_scale_f32 v174, s[14:15], v74, v74, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v0, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v225, 1.0, v155
	v_add_f32_e32 v155, 1.0, v181
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_rcp_f32_e32 v181, v174
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v183, v183
	v_exp_f32_e32 v75, v75
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v207, 1.0, v130
	v_add_f32_e32 v130, 1.0, v0
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v181, 1.0
	v_fmac_f32_e32 v181, v0, v181
	v_div_scale_f32 v0, vcc, v1, v74, v1
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v224, 1.0, v154
	v_add_f32_e32 v154, 1.0, v182
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_mul_f32_e32 v182, v0, v181
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v223, 1.0, v153
	v_add_f32_e32 v153, 1.0, v183
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v183, -v174, v182, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v182, v183, v181
	v_fma_f32 v0, -v174, v182, v0
	v_div_scale_f32 v174, s[14:15], v75, v75, v175
	v_rcp_f32_e32 v183, v174
	v_div_fmas_f32 v0, v0, v181, v182
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v76, v76
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v74, v0, v74, v1
	v_fma_f32 v0, -v174, v183, 1.0
	v_fmac_f32_e32 v183, v0, v183
	v_div_scale_f32 v0, vcc, v175, v75, v175
	v_mul_f32_e32 v1, v0, v183
	v_fma_f32 v181, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v181, v183
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v76, v76, v176
	v_rcp_f32_e32 v181, v174
	v_div_fmas_f32 v0, v0, v183, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v77, v77
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v75, v0, v75, v175
	v_fma_f32 v0, -v174, v181, 1.0
	v_fmac_f32_e32 v181, v0, v181
	v_div_scale_f32 v0, vcc, v176, v76, v176
	v_mul_f32_e32 v1, v0, v181
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v181
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v77, v77, v177
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v181, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v78, v78
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v76, v0, v76, v176
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v177, v77, v177
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v78, v78, v178
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v79, v79
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v77, v0, v77, v177
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v178, v78, v178
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v79, v79, v179
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v80, v80
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v78, v0, v78, v178
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v179, v79, v179
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v80, v80, v180
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	v_div_fixup_f32 v79, v0, v79, v179
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v131, v131
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v180, v80, v180
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v207, v207, v81
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	v_div_fixup_f32 v80, v0, v80, v180
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v208, 1.0, v131
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v81, v207, v81
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v208, v208, v82
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v132, v132
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v81, v0, v207, v81
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v82, v208, v82
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v209, 1.0, v132
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v209, v209, v83
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v133, v133
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v82, v0, v208, v82
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v83, v209, v83
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v210, 1.0, v133
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v210, v210, v84
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v134, v134
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v83, v0, v209, v83
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v84, v210, v84
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v211, 1.0, v134
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v211, v211, v85
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v135, v135
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v84, v0, v210, v84
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v85, v211, v85
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v212, 1.0, v135
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v212, v212, v86
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v136, v136
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v85, v0, v211, v85
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v86, v212, v86
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v213, 1.0, v136
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v213, v213, v87
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v137, v137
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v86, v0, v212, v86
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v87, v213, v87
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v214, 1.0, v137
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v214, v214, v88
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v138, v138
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v87, v0, v213, v87
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v88, v214, v88
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v215, 1.0, v138
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v215, v215, v89
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v139, v139
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v88, v0, v214, v88
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v89, v215, v89
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v216, 1.0, v139
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v216, v216, v90
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v140, v140
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v89, v0, v215, v89
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v90, v216, v90
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v217, 1.0, v140
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v217, v217, v91
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v141, v141
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v90, v0, v216, v90
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v91, v217, v91
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v218, 1.0, v141
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v218, v218, v92
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v142, v142
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v91, v0, v217, v91
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v92, v218, v92
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v219, 1.0, v142
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v219, v219, v93
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v143, v143
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v92, v0, v218, v92
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v93, v219, v93
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v220, 1.0, v143
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v220, v220, v94
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v144, v144
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v93, v0, v219, v93
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v94, v220, v94
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v221, 1.0, v144
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v221, v221, v95
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v145, v145
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fixup_f32 v94, v0, v220, v94
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v95, v221, v95
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v222, 1.0, v145
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v222, v222, v96
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	v_div_fixup_f32 v95, v0, v221, v95
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v157, v157
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v96, v222, v96
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v223, v223, v97
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	v_div_fixup_f32 v96, v0, v222, v96
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v206, v173
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v97, v223, v97
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v224, v224, v98
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	v_div_fixup_f32 v97, v0, v223, v97
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v173, 1.0, v157
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v98, v224, v98
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v225, v225, v99
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	v_div_fixup_f32 v98, v0, v224, v98
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v158, v158
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v99, v225, v99
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v226, v226, v100
	v_rcp_f32_e32 v176, v174
	v_div_fmas_f32 v0, v0, v175, v1
	v_div_fixup_f32 v99, v0, v225, v99
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v205, v172
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v100, v226, v100
	v_mul_f32_e32 v1, v0, v176
	v_fma_f32 v175, -v174, v1, v0
	v_fmac_f32_e32 v1, v175, v176
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v173, v173, v101
	v_rcp_f32_e32 v175, v174
	v_div_fmas_f32 v0, v0, v176, v1
	v_div_fixup_f32 v100, v0, v226, v100
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v172, 1.0, v158
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v0, v175
	v_div_scale_f32 v0, vcc, v101, v173, v101
	v_mul_f32_e32 v1, v0, v175
	v_fma_f32 v176, -v174, v1, v0
	v_fmac_f32_e32 v1, v176, v175
	v_fma_f32 v0, -v174, v1, v0
	v_div_scale_f32 v174, s[14:15], v172, v172, v102
	v_rcp_f32_e32 v176, v174
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v159, v159
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v175, v1
	v_div_fixup_f32 v101, v0, v173, v101
	v_fma_f32 v0, -v174, v176, 1.0
	v_fmac_f32_e32 v176, v0, v176
	v_div_scale_f32 v0, vcc, v102, v172, v102
	v_mul_f32_e32 v1, v0, v176
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v204, v171
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v171, 1.0, v159
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v173, -v174, v1, v0
	v_fmac_f32_e32 v1, v173, v176
	v_div_scale_f32 v173, s[14:15], v171, v171, v103
	v_fma_f32 v0, -v174, v1, v0
	v_rcp_f32_e32 v174, v173
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v160, v160
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v176, v1
	v_div_fixup_f32 v102, v0, v172, v102
	v_fma_f32 v0, -v173, v174, 1.0
	v_fmac_f32_e32 v174, v0, v174
	v_div_scale_f32 v0, vcc, v103, v171, v103
	v_mul_f32_e32 v1, v0, v174
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v203, v170
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v170, 1.0, v160
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v172, -v173, v1, v0
	v_fmac_f32_e32 v1, v172, v174
	v_div_scale_f32 v172, s[14:15], v170, v170, v104
	v_fma_f32 v0, -v173, v1, v0
	v_rcp_f32_e32 v173, v172
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v161, v161
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v174, v1
	v_div_fixup_f32 v103, v0, v171, v103
	v_fma_f32 v0, -v172, v173, 1.0
	v_fmac_f32_e32 v173, v0, v173
	v_div_scale_f32 v0, vcc, v104, v170, v104
	v_mul_f32_e32 v1, v0, v173
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v202, v169
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v169, 1.0, v161
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v171, -v172, v1, v0
	v_fmac_f32_e32 v1, v171, v173
	v_div_scale_f32 v171, s[14:15], v169, v169, v105
	v_fma_f32 v0, -v172, v1, v0
	v_rcp_f32_e32 v172, v171
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v162, v162
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v173, v1
	v_div_fixup_f32 v104, v0, v170, v104
	v_fma_f32 v0, -v171, v172, 1.0
	v_fmac_f32_e32 v172, v0, v172
	v_div_scale_f32 v0, vcc, v105, v169, v105
	v_mul_f32_e32 v1, v0, v172
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v201, v168
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v168, 1.0, v162
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v170, -v171, v1, v0
	v_fmac_f32_e32 v1, v170, v172
	v_div_scale_f32 v170, s[14:15], v168, v168, v106
	v_fma_f32 v0, -v171, v1, v0
	v_rcp_f32_e32 v171, v170
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v163, v163
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v172, v1
	v_div_fixup_f32 v105, v0, v169, v105
	v_fma_f32 v0, -v170, v171, 1.0
	v_fmac_f32_e32 v171, v0, v171
	v_div_scale_f32 v0, vcc, v106, v168, v106
	v_mul_f32_e32 v1, v0, v171
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v200, v167
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v167, 1.0, v163
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v169, -v170, v1, v0
	v_fmac_f32_e32 v1, v169, v171
	v_div_scale_f32 v169, s[14:15], v167, v167, v107
	v_fma_f32 v0, -v170, v1, v0
	v_rcp_f32_e32 v170, v169
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v164, v164
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v171, v1
	v_div_fixup_f32 v106, v0, v168, v106
	v_fma_f32 v0, -v169, v170, 1.0
	v_fmac_f32_e32 v170, v0, v170
	v_div_scale_f32 v0, vcc, v107, v167, v107
	v_mul_f32_e32 v1, v0, v170
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v199, v166
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v166, 1.0, v164
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v168, -v169, v1, v0
	v_fmac_f32_e32 v1, v168, v170
	v_div_scale_f32 v168, s[14:15], v166, v166, v108
	v_fma_f32 v0, -v169, v1, v0
	v_rcp_f32_e32 v169, v168
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v165, v165
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v170, v1
	v_div_fixup_f32 v107, v0, v167, v107
	v_fma_f32 v0, -v168, v169, 1.0
	v_fmac_f32_e32 v169, v0, v169
	v_div_scale_f32 v0, vcc, v108, v166, v108
	v_mul_f32_e32 v1, v0, v169
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v165, 1.0, v165
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v167, -v168, v1, v0
	v_fmac_f32_e32 v1, v167, v169
	v_div_scale_f32 v167, s[14:15], v165, v165, v109
	v_fma_f32 v0, -v168, v1, v0
	v_rcp_f32_e32 v168, v167
	v_div_fmas_f32 v0, v0, v169, v1
	v_div_fixup_f32 v108, v0, v166, v108
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v164, 1.0, v199
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v167, v168, 1.0
	v_fmac_f32_e32 v168, v0, v168
	v_div_scale_f32 v0, vcc, v109, v165, v109
	v_mul_f32_e32 v1, v0, v168
	v_fma_f32 v166, -v167, v1, v0
	v_fmac_f32_e32 v1, v166, v168
	v_div_scale_f32 v166, s[14:15], v164, v164, v110
	v_fma_f32 v0, -v167, v1, v0
	v_rcp_f32_e32 v167, v166
	v_div_fmas_f32 v0, v0, v168, v1
	v_div_fixup_f32 v109, v0, v165, v109
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v163, 1.0, v200
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v166, v167, 1.0
	v_fmac_f32_e32 v167, v0, v167
	v_div_scale_f32 v0, vcc, v110, v164, v110
	v_mul_f32_e32 v1, v0, v167
	v_fma_f32 v165, -v166, v1, v0
	v_fmac_f32_e32 v1, v165, v167
	v_div_scale_f32 v165, s[14:15], v163, v163, v111
	v_fma_f32 v0, -v166, v1, v0
	v_rcp_f32_e32 v166, v165
	v_div_fmas_f32 v0, v0, v167, v1
	v_div_fixup_f32 v110, v0, v164, v110
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v162, 1.0, v201
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v165, v166, 1.0
	v_fmac_f32_e32 v166, v0, v166
	v_div_scale_f32 v0, vcc, v111, v163, v111
	v_mul_f32_e32 v1, v0, v166
	v_fma_f32 v164, -v165, v1, v0
	v_fmac_f32_e32 v1, v164, v166
	v_div_scale_f32 v164, s[14:15], v162, v162, v112
	v_fma_f32 v0, -v165, v1, v0
	v_rcp_f32_e32 v165, v164
	v_div_fmas_f32 v0, v0, v166, v1
	v_div_fixup_f32 v111, v0, v163, v111
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v161, 1.0, v202
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v164, v165, 1.0
	v_fmac_f32_e32 v165, v0, v165
	v_div_scale_f32 v0, vcc, v112, v162, v112
	v_mul_f32_e32 v1, v0, v165
	v_fma_f32 v163, -v164, v1, v0
	v_fmac_f32_e32 v1, v163, v165
	v_div_scale_f32 v163, s[14:15], v161, v161, v113
	v_fma_f32 v0, -v164, v1, v0
	v_rcp_f32_e32 v164, v163
	v_div_fmas_f32 v0, v0, v165, v1
	v_div_fixup_f32 v112, v0, v162, v112
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v160, 1.0, v203
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v163, v164, 1.0
	v_fmac_f32_e32 v164, v0, v164
	v_div_scale_f32 v0, vcc, v113, v161, v113
	v_mul_f32_e32 v1, v0, v164
	v_fma_f32 v162, -v163, v1, v0
	v_fmac_f32_e32 v1, v162, v164
	v_div_scale_f32 v162, s[14:15], v160, v160, v114
	v_fma_f32 v0, -v163, v1, v0
	v_rcp_f32_e32 v163, v162
	v_div_fmas_f32 v0, v0, v164, v1
	v_div_fixup_f32 v113, v0, v161, v113
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v159, 1.0, v204
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v162, v163, 1.0
	v_fmac_f32_e32 v163, v0, v163
	v_div_scale_f32 v0, vcc, v114, v160, v114
	v_mul_f32_e32 v1, v0, v163
	v_fma_f32 v161, -v162, v1, v0
	v_fmac_f32_e32 v1, v161, v163
	v_div_scale_f32 v161, s[14:15], v159, v159, v115
	v_fma_f32 v0, -v162, v1, v0
	v_rcp_f32_e32 v162, v161
	v_div_fmas_f32 v0, v0, v163, v1
	v_div_fixup_f32 v114, v0, v160, v114
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v158, 1.0, v205
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v161, v162, 1.0
	v_fmac_f32_e32 v162, v0, v162
	v_div_scale_f32 v0, vcc, v115, v159, v115
	v_mul_f32_e32 v1, v0, v162
	v_fma_f32 v160, -v161, v1, v0
	v_fmac_f32_e32 v1, v160, v162
	v_div_scale_f32 v160, s[14:15], v158, v158, v116
	v_fma_f32 v0, -v161, v1, v0
	v_rcp_f32_e32 v161, v160
	v_div_fmas_f32 v0, v0, v162, v1
	v_div_fixup_f32 v115, v0, v159, v115
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v157, 1.0, v206
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v160, v161, 1.0
	v_fmac_f32_e32 v161, v0, v161
	v_div_scale_f32 v0, vcc, v116, v158, v116
	v_mul_f32_e32 v1, v0, v161
	v_fma_f32 v159, -v160, v1, v0
	v_fmac_f32_e32 v1, v159, v161
	v_div_scale_f32 v159, s[14:15], v157, v157, v117
	v_fma_f32 v0, -v160, v1, v0
	v_rcp_f32_e32 v160, v159
	v_div_fmas_f32 v0, v0, v161, v1
	v_div_fixup_f32 v116, v0, v158, v116
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v184, v184
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v159, v160, 1.0
	v_fmac_f32_e32 v160, v0, v160
	v_div_scale_f32 v0, vcc, v117, v157, v117
	v_mul_f32_e32 v1, v0, v160
	v_fma_f32 v158, -v159, v1, v0
	v_fmac_f32_e32 v1, v158, v160
	v_div_scale_f32 v158, s[14:15], v156, v156, v118
	v_fma_f32 v0, -v159, v1, v0
	v_rcp_f32_e32 v159, v158
	v_div_fmas_f32 v0, v0, v160, v1
	v_div_fixup_f32 v117, v0, v157, v117
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v145, 1.0, v184
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v158, v159, 1.0
	v_fmac_f32_e32 v159, v0, v159
	v_div_scale_f32 v0, vcc, v118, v156, v118
	v_mul_f32_e32 v1, v0, v159
	v_fma_f32 v157, -v158, v1, v0
	v_fmac_f32_e32 v1, v157, v159
	v_div_scale_f32 v157, s[14:15], v155, v155, v119
	v_fma_f32 v0, -v158, v1, v0
	v_rcp_f32_e32 v158, v157
	v_div_fmas_f32 v0, v0, v159, v1
	v_div_fixup_f32 v118, v0, v156, v118
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v185, v185
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v157, v158, 1.0
	v_fmac_f32_e32 v158, v0, v158
	v_div_scale_f32 v0, vcc, v119, v155, v119
	v_mul_f32_e32 v1, v0, v158
	v_fma_f32 v156, -v157, v1, v0
	v_fmac_f32_e32 v1, v156, v158
	v_div_scale_f32 v156, s[14:15], v154, v154, v120
	v_fma_f32 v0, -v157, v1, v0
	v_rcp_f32_e32 v157, v156
	v_div_fmas_f32 v0, v0, v158, v1
	v_div_fixup_f32 v119, v0, v155, v119
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v144, 1.0, v185
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v156, v157, 1.0
	v_fmac_f32_e32 v157, v0, v157
	v_div_scale_f32 v0, vcc, v120, v154, v120
	v_mul_f32_e32 v1, v0, v157
	v_fma_f32 v155, -v156, v1, v0
	v_fmac_f32_e32 v1, v155, v157
	v_div_scale_f32 v155, s[14:15], v153, v153, v121
	v_fma_f32 v0, -v156, v1, v0
	v_rcp_f32_e32 v156, v155
	v_div_fmas_f32 v0, v0, v157, v1
	v_div_fixup_f32 v120, v0, v154, v120
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v186, v186
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v155, v156, 1.0
	v_fmac_f32_e32 v156, v0, v156
	v_div_scale_f32 v0, vcc, v121, v153, v121
	v_mul_f32_e32 v1, v0, v156
	v_fma_f32 v154, -v155, v1, v0
	v_fmac_f32_e32 v1, v154, v156
	v_div_scale_f32 v154, s[14:15], v145, v145, v122
	v_fma_f32 v0, -v155, v1, v0
	v_rcp_f32_e32 v155, v154
	v_div_fmas_f32 v0, v0, v156, v1
	v_div_fixup_f32 v121, v0, v153, v121
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v143, 1.0, v186
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v154, v155, 1.0
	v_fmac_f32_e32 v155, v0, v155
	v_div_scale_f32 v0, vcc, v122, v145, v122
	v_mul_f32_e32 v1, v0, v155
	v_fma_f32 v153, -v154, v1, v0
	v_fmac_f32_e32 v1, v153, v155
	v_div_scale_f32 v153, s[14:15], v144, v144, v123
	v_fma_f32 v0, -v154, v1, v0
	v_rcp_f32_e32 v154, v153
	v_div_fmas_f32 v0, v0, v155, v1
	v_div_fixup_f32 v122, v0, v145, v122
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v187, v187
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v153, v154, 1.0
	v_fmac_f32_e32 v154, v0, v154
	v_div_scale_f32 v0, vcc, v123, v144, v123
	v_mul_f32_e32 v1, v0, v154
	v_fma_f32 v145, -v153, v1, v0
	v_fmac_f32_e32 v1, v145, v154
	v_div_scale_f32 v145, s[14:15], v143, v143, v124
	v_fma_f32 v0, -v153, v1, v0
	v_rcp_f32_e32 v153, v145
	v_div_fmas_f32 v0, v0, v154, v1
	v_div_fixup_f32 v123, v0, v144, v123
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v142, 1.0, v187
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v145, v153, 1.0
	v_fmac_f32_e32 v153, v0, v153
	v_div_scale_f32 v0, vcc, v124, v143, v124
	v_mul_f32_e32 v1, v0, v153
	v_fma_f32 v144, -v145, v1, v0
	v_fmac_f32_e32 v1, v144, v153
	v_div_scale_f32 v144, s[14:15], v142, v142, v125
	v_fma_f32 v0, -v145, v1, v0
	v_rcp_f32_e32 v145, v144
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v188, v188
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v153, v1
	v_div_fixup_f32 v124, v0, v143, v124
	v_fma_f32 v0, -v144, v145, 1.0
	v_fmac_f32_e32 v145, v0, v145
	v_div_scale_f32 v0, vcc, v125, v142, v125
	v_mul_f32_e32 v1, v0, v145
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v141, 1.0, v188
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v143, -v144, v1, v0
	v_fmac_f32_e32 v1, v143, v145
	v_div_scale_f32 v143, s[14:15], v141, v141, v126
	v_fma_f32 v0, -v144, v1, v0
	v_rcp_f32_e32 v144, v143
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v189, v189
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v145, v1
	v_div_fixup_f32 v125, v0, v142, v125
	v_fma_f32 v0, -v143, v144, 1.0
	v_fmac_f32_e32 v144, v0, v144
	v_div_scale_f32 v0, vcc, v126, v141, v126
	v_mul_f32_e32 v1, v0, v144
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v140, 1.0, v189
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v142, -v143, v1, v0
	v_fmac_f32_e32 v1, v142, v144
	v_div_scale_f32 v142, s[14:15], v140, v140, v127
	v_fma_f32 v0, -v143, v1, v0
	v_rcp_f32_e32 v143, v142
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v190, v190
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v144, v1
	v_div_fixup_f32 v126, v0, v141, v126
	v_fma_f32 v0, -v142, v143, 1.0
	v_fmac_f32_e32 v143, v0, v143
	v_div_scale_f32 v0, vcc, v127, v140, v127
	v_mul_f32_e32 v1, v0, v143
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v139, 1.0, v190
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v141, -v142, v1, v0
	v_fmac_f32_e32 v1, v141, v143
	v_div_scale_f32 v141, s[14:15], v139, v139, v128
	v_fma_f32 v0, -v142, v1, v0
	v_rcp_f32_e32 v142, v141
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v191, v191
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v143, v1
	v_div_fixup_f32 v127, v0, v140, v127
	v_fma_f32 v0, -v141, v142, 1.0
	v_fmac_f32_e32 v142, v0, v142
	v_div_scale_f32 v0, vcc, v128, v139, v128
	v_mul_f32_e32 v1, v0, v142
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v138, 1.0, v191
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v140, -v141, v1, v0
	v_fmac_f32_e32 v1, v140, v142
	v_div_scale_f32 v140, s[14:15], v138, v138, v129
	v_fma_f32 v0, -v141, v1, v0
	v_rcp_f32_e32 v141, v140
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v192, v192
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v142, v1
	v_div_fixup_f32 v128, v0, v139, v128
	v_fma_f32 v0, -v140, v141, 1.0
	v_fmac_f32_e32 v141, v0, v141
	v_div_scale_f32 v0, vcc, v129, v138, v129
	v_mul_f32_e32 v1, v0, v141
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v137, 1.0, v192
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v139, -v140, v1, v0
	v_fmac_f32_e32 v1, v139, v141
	v_div_scale_f32 v139, s[14:15], v137, v137, v73
	v_fma_f32 v0, -v140, v1, v0
	v_rcp_f32_e32 v140, v139
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v193, v193
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v141, v1
	v_div_fixup_f32 v129, v0, v138, v129
	v_fma_f32 v0, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v0, v140
	v_div_scale_f32 v0, vcc, v73, v137, v73
	v_mul_f32_e32 v1, v0, v140
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v136, 1.0, v193
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v138, -v139, v1, v0
	v_fmac_f32_e32 v1, v138, v140
	v_div_scale_f32 v138, s[14:15], v136, v136, v72
	v_fma_f32 v0, -v139, v1, v0
	v_rcp_f32_e32 v139, v138
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v194, v194
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v140, v1
	v_div_fixup_f32 v73, v0, v137, v73
	v_fma_f32 v0, -v138, v139, 1.0
	v_fmac_f32_e32 v139, v0, v139
	v_div_scale_f32 v0, vcc, v72, v136, v72
	v_mul_f32_e32 v1, v0, v139
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v135, 1.0, v194
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v137, -v138, v1, v0
	v_fmac_f32_e32 v1, v137, v139
	v_div_scale_f32 v137, s[14:15], v135, v135, v71
	v_fma_f32 v0, -v138, v1, v0
	v_rcp_f32_e32 v138, v137
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v195, v195
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v139, v1
	v_div_fixup_f32 v72, v0, v136, v72
	v_fma_f32 v0, -v137, v138, 1.0
	v_fmac_f32_e32 v138, v0, v138
	v_div_scale_f32 v0, vcc, v71, v135, v71
	v_mul_f32_e32 v1, v0, v138
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v134, 1.0, v195
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v136, -v137, v1, v0
	v_fmac_f32_e32 v1, v136, v138
	v_div_scale_f32 v136, s[14:15], v134, v134, v70
	v_fma_f32 v0, -v137, v1, v0
	v_rcp_f32_e32 v137, v136
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v196, v196
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v138, v1
	v_div_fixup_f32 v71, v0, v135, v71
	v_fma_f32 v0, -v136, v137, 1.0
	v_fmac_f32_e32 v137, v0, v137
	v_div_scale_f32 v0, vcc, v70, v134, v70
	v_mul_f32_e32 v1, v0, v137
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v133, 1.0, v196
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v135, -v136, v1, v0
	v_fmac_f32_e32 v1, v135, v137
	v_div_scale_f32 v135, s[14:15], v133, v133, v69
	v_fma_f32 v0, -v136, v1, v0
	v_rcp_f32_e32 v136, v135
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v197, v197
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v137, v1
	v_div_fixup_f32 v70, v0, v134, v70
	v_fma_f32 v0, -v135, v136, 1.0
	v_fmac_f32_e32 v136, v0, v136
	v_div_scale_f32 v0, vcc, v69, v133, v69
	v_mul_f32_e32 v1, v0, v136
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v132, 1.0, v197
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v134, -v135, v1, v0
	v_fmac_f32_e32 v1, v134, v136
	v_div_scale_f32 v134, s[14:15], v132, v132, v68
	v_fma_f32 v0, -v135, v1, v0
	v_rcp_f32_e32 v135, v134
	.loc	1 115 28                        ; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_exp_f32_e32 v198, v198
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_div_fmas_f32 v0, v0, v136, v1
	v_div_fixup_f32 v69, v0, v133, v69
	v_fma_f32 v0, -v134, v135, 1.0
	v_fmac_f32_e32 v135, v0, v135
	v_div_scale_f32 v0, vcc, v68, v132, v68
	v_mul_f32_e32 v1, v0, v135
	.loc	1 115 20                        ; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_add_f32_e32 v131, 1.0, v198
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v133, -v134, v1, v0
	v_fmac_f32_e32 v1, v133, v135
	v_div_scale_f32 v133, s[14:15], v131, v131, v3
	v_fma_f32 v0, -v134, v1, v0
	v_rcp_f32_e32 v134, v133
	v_div_fmas_f32 v0, v0, v135, v1
	v_div_fixup_f32 v68, v0, v132, v68
	.loc	1 116 29 is_stmt 1              ; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v74, v74, v4
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v133, v134, 1.0
	v_fmac_f32_e32 v134, v0, v134
	v_div_scale_f32 v0, vcc, v3, v131, v3
	v_mul_f32_e32 v1, v0, v134
	v_fma_f32 v132, -v133, v1, v0
	v_fmac_f32_e32 v1, v132, v134
.Ltmp45:
	.loc	1 495 53                        ; moe_op_gemm_a8w4.py:495:53
	global_load_dword v132, v147, s[10:11]
.Ltmp46:
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v133, v1, v0
	v_div_scale_f32 v133, s[14:15], v130, v130, v2
	v_rcp_f32_e32 v135, v133
	v_div_fmas_f32 v0, v0, v134, v1
	v_div_fixup_f32 v131, v0, v131, v3
	.loc	1 116 29                        ; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v75, v75, v5
	.loc	1 115 16                        ; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fma_f32 v0, -v133, v135, 1.0
	v_fmac_f32_e32 v135, v0, v135
	v_div_scale_f32 v0, vcc, v2, v130, v2
	v_mul_f32_e32 v1, v0, v135
	v_fma_f32 v3, -v133, v1, v0
	v_fmac_f32_e32 v1, v3, v135
	v_fma_f32 v0, -v133, v1, v0
	v_div_fmas_f32 v0, v0, v135, v1
	v_div_fixup_f32 v130, v0, v130, v2
	.loc	1 116 29                        ; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
	v_fmac_f32_e32 v76, v76, v6
	v_fmac_f32_e32 v77, v77, v7
	v_fmac_f32_e32 v78, v78, v8
	v_fmac_f32_e32 v79, v79, v9
	v_fmac_f32_e32 v80, v80, v10
	v_fmac_f32_e32 v81, v81, v11
	v_fmac_f32_e32 v82, v82, v12
	v_fmac_f32_e32 v83, v83, v13
	v_fmac_f32_e32 v84, v84, v14
	v_fmac_f32_e32 v85, v85, v15
	v_fmac_f32_e32 v86, v86, v16
	v_fmac_f32_e32 v87, v87, v17
	v_fmac_f32_e32 v88, v88, v18
	v_fmac_f32_e32 v89, v89, v19
	v_fmac_f32_e32 v90, v90, v20
	v_fmac_f32_e32 v91, v91, v21
	v_fmac_f32_e32 v92, v92, v22
	v_fmac_f32_e32 v93, v93, v23
	v_fmac_f32_e32 v94, v94, v24
	v_fmac_f32_e32 v95, v95, v25
	v_fmac_f32_e32 v96, v96, v26
	v_fmac_f32_e32 v97, v97, v27
	v_fmac_f32_e32 v98, v98, v28
	v_fmac_f32_e32 v99, v99, v29
	v_fmac_f32_e32 v100, v100, v30
	v_fmac_f32_e32 v101, v101, v31
	v_fmac_f32_e32 v102, v102, v32
	v_fmac_f32_e32 v103, v103, v33
	v_fmac_f32_e32 v104, v104, v34
	v_fmac_f32_e32 v105, v105, v35
	v_fmac_f32_e32 v106, v106, v36
	v_fmac_f32_e32 v107, v107, v37
	v_fmac_f32_e32 v108, v108, v38
	v_fmac_f32_e32 v109, v109, v39
	v_fmac_f32_e32 v110, v110, v40
	v_fmac_f32_e32 v111, v111, v41
	v_fmac_f32_e32 v112, v112, v42
	v_fmac_f32_e32 v113, v113, v43
	v_fmac_f32_e32 v114, v114, v44
	v_fmac_f32_e32 v115, v115, v45
	v_fmac_f32_e32 v116, v116, v46
	v_fmac_f32_e32 v117, v117, v47
	v_fmac_f32_e32 v118, v118, v48
	v_fmac_f32_e32 v119, v119, v49
	v_fmac_f32_e32 v120, v120, v50
	v_fmac_f32_e32 v121, v121, v51
	v_fmac_f32_e32 v122, v122, v52
	v_fmac_f32_e32 v123, v123, v53
	v_fmac_f32_e32 v124, v124, v54
	v_fmac_f32_e32 v125, v125, v55
	v_fmac_f32_e32 v126, v126, v56
	v_fmac_f32_e32 v127, v127, v57
	v_fmac_f32_e32 v128, v128, v58
	v_fmac_f32_e32 v129, v129, v59
	v_fmac_f32_e32 v73, v73, v60
	v_fmac_f32_e32 v72, v72, v61
	v_fmac_f32_e32 v71, v71, v62
	v_fmac_f32_e32 v70, v70, v63
	v_fmac_f32_e32 v69, v69, v64
	v_fmac_f32_e32 v68, v68, v65
	v_fmac_f32_e32 v131, v131, v66
	v_fmac_f32_e32 v130, v130, v67
.Ltmp47:
	.file	4 "/home/dewwang/aiter/aiter/ops/triton/_triton_kernels" "quant_moe.py"
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	s_waitcnt vmcnt(0)
	v_div_scale_f32 v0, s[10:11], v132, v132, v74
	v_rcp_f32_e32 v1, v0
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp48:
	.loc	1 482 41                        ; moe_op_gemm_a8w4.py:482:41
	v_mov_b32_e32 v147, s13
.Ltmp49:
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v4, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v4, v1
	v_div_scale_f32 v4, vcc, v74, v132, v74
	v_mul_f32_e32 v5, v4, v1
	v_fma_f32 v6, -v0, v5, v4
	v_fmac_f32_e32 v5, v6, v1
	v_div_scale_f32 v6, s[10:11], v132, v132, v75
	v_rcp_f32_e32 v7, v6
	v_fma_f32 v0, -v0, v5, v4
	v_div_fmas_f32 v0, v0, v1, v5
	v_div_fixup_f32 v4, v0, v132, v74
	v_fma_f32 v0, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v0, v7
	v_div_scale_f32 v0, vcc, v75, v132, v75
	v_mul_f32_e32 v1, v0, v7
	v_fma_f32 v5, -v6, v1, v0
	v_fmac_f32_e32 v1, v5, v7
	v_fma_f32 v0, -v6, v1, v0
	v_div_scale_f32 v6, s[10:11], v132, v132, v76
	v_rcp_f32_e32 v8, v6
	v_div_fmas_f32 v0, v0, v7, v1
	v_div_fixup_f32 v5, v0, v132, v75
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v4, v4, v5, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v0, -v6, v8, 1.0
	v_fmac_f32_e32 v8, v0, v8
	v_div_scale_f32 v0, vcc, v76, v132, v76
	v_mul_f32_e32 v1, v0, v8
	v_fma_f32 v7, -v6, v1, v0
	v_fmac_f32_e32 v1, v7, v8
	v_div_scale_f32 v7, s[10:11], v132, v132, v77
	v_rcp_f32_e32 v9, v7
	v_fma_f32 v0, -v6, v1, v0
	v_div_fmas_f32 v0, v0, v8, v1
	v_div_fixup_f32 v6, v0, v132, v76
	v_fma_f32 v0, -v7, v9, 1.0
	v_fmac_f32_e32 v9, v0, v9
	v_div_scale_f32 v0, vcc, v77, v132, v77
	v_mul_f32_e32 v1, v0, v9
	v_fma_f32 v8, -v7, v1, v0
	v_fmac_f32_e32 v1, v8, v9
	v_div_scale_f32 v8, s[10:11], v132, v132, v78
	v_rcp_f32_e32 v10, v8
	v_fma_f32 v0, -v7, v1, v0
	v_div_fmas_f32 v0, v0, v9, v1
	v_div_fixup_f32 v7, v0, v132, v77
	v_fma_f32 v0, -v8, v10, 1.0
	v_fmac_f32_e32 v10, v0, v10
	v_div_scale_f32 v0, vcc, v78, v132, v78
	v_mul_f32_e32 v1, v0, v10
	v_fma_f32 v9, -v8, v1, v0
	v_fmac_f32_e32 v1, v9, v10
	v_div_scale_f32 v9, s[10:11], v132, v132, v79
	v_rcp_f32_e32 v11, v9
	v_fma_f32 v0, -v8, v1, v0
	v_div_fmas_f32 v0, v0, v10, v1
	v_div_fixup_f32 v8, v0, v132, v78
	v_fma_f32 v0, -v9, v11, 1.0
	v_fmac_f32_e32 v11, v0, v11
	v_div_scale_f32 v0, vcc, v79, v132, v79
	v_mul_f32_e32 v1, v0, v11
	v_fma_f32 v10, -v9, v1, v0
	v_fmac_f32_e32 v1, v10, v11
	v_div_scale_f32 v10, s[10:11], v132, v132, v80
	v_rcp_f32_e32 v12, v10
	v_fma_f32 v0, -v9, v1, v0
	v_div_fmas_f32 v0, v0, v11, v1
	v_div_fixup_f32 v9, v0, v132, v79
	v_fma_f32 v0, -v10, v12, 1.0
	v_fmac_f32_e32 v12, v0, v12
	v_div_scale_f32 v0, vcc, v80, v132, v80
	v_mul_f32_e32 v1, v0, v12
	v_fma_f32 v11, -v10, v1, v0
	v_fmac_f32_e32 v1, v11, v12
	v_div_scale_f32 v11, s[10:11], v132, v132, v81
	v_rcp_f32_e32 v13, v11
	v_fma_f32 v0, -v10, v1, v0
	v_div_fmas_f32 v0, v0, v12, v1
	v_div_fixup_f32 v10, v0, v132, v80
	v_fma_f32 v0, -v11, v13, 1.0
	v_fmac_f32_e32 v13, v0, v13
	v_div_scale_f32 v0, vcc, v81, v132, v81
	v_mul_f32_e32 v1, v0, v13
	v_fma_f32 v12, -v11, v1, v0
	v_fmac_f32_e32 v1, v12, v13
	v_div_scale_f32 v12, s[10:11], v132, v132, v82
	v_rcp_f32_e32 v14, v12
	v_fma_f32 v0, -v11, v1, v0
	v_div_fmas_f32 v0, v0, v13, v1
	v_div_fixup_f32 v11, v0, v132, v81
	v_fma_f32 v0, -v12, v14, 1.0
	v_fmac_f32_e32 v14, v0, v14
	v_div_scale_f32 v0, vcc, v82, v132, v82
	v_mul_f32_e32 v1, v0, v14
	v_fma_f32 v13, -v12, v1, v0
	v_fmac_f32_e32 v1, v13, v14
	v_div_scale_f32 v13, s[10:11], v132, v132, v83
	v_rcp_f32_e32 v15, v13
	v_fma_f32 v0, -v12, v1, v0
	v_div_fmas_f32 v0, v0, v14, v1
	v_div_fixup_f32 v12, v0, v132, v82
	v_fma_f32 v0, -v13, v15, 1.0
	v_fmac_f32_e32 v15, v0, v15
	v_div_scale_f32 v0, vcc, v83, v132, v83
	v_mul_f32_e32 v1, v0, v15
	v_fma_f32 v14, -v13, v1, v0
	v_fmac_f32_e32 v1, v14, v15
	v_div_scale_f32 v14, s[10:11], v132, v132, v84
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v0, -v13, v1, v0
	v_div_fmas_f32 v0, v0, v15, v1
	v_div_fixup_f32 v13, v0, v132, v83
	v_fma_f32 v0, -v14, v16, 1.0
	v_fmac_f32_e32 v16, v0, v16
	v_div_scale_f32 v0, vcc, v84, v132, v84
	v_mul_f32_e32 v1, v0, v16
	v_fma_f32 v15, -v14, v1, v0
	v_fmac_f32_e32 v1, v15, v16
	v_div_scale_f32 v15, s[10:11], v132, v132, v85
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v0, -v14, v1, v0
	v_div_fmas_f32 v0, v0, v16, v1
	v_div_fixup_f32 v14, v0, v132, v84
	v_fma_f32 v0, -v15, v17, 1.0
	v_fmac_f32_e32 v17, v0, v17
	v_div_scale_f32 v0, vcc, v85, v132, v85
	v_mul_f32_e32 v1, v0, v17
	v_fma_f32 v16, -v15, v1, v0
	v_fmac_f32_e32 v1, v16, v17
	v_div_scale_f32 v16, s[10:11], v132, v132, v86
	v_rcp_f32_e32 v18, v16
	v_fma_f32 v0, -v15, v1, v0
	v_div_fmas_f32 v0, v0, v17, v1
	v_div_fixup_f32 v15, v0, v132, v85
	v_fma_f32 v0, -v16, v18, 1.0
	v_fmac_f32_e32 v18, v0, v18
	v_div_scale_f32 v0, vcc, v86, v132, v86
	v_mul_f32_e32 v1, v0, v18
	v_fma_f32 v17, -v16, v1, v0
	v_fmac_f32_e32 v1, v17, v18
	v_div_scale_f32 v17, s[10:11], v132, v132, v87
	v_rcp_f32_e32 v19, v17
	v_fma_f32 v0, -v16, v1, v0
	v_div_fmas_f32 v0, v0, v18, v1
	v_div_fixup_f32 v16, v0, v132, v86
	v_fma_f32 v0, -v17, v19, 1.0
	v_fmac_f32_e32 v19, v0, v19
	v_div_scale_f32 v0, vcc, v87, v132, v87
	v_mul_f32_e32 v1, v0, v19
	v_fma_f32 v18, -v17, v1, v0
	v_fmac_f32_e32 v1, v18, v19
	v_div_scale_f32 v18, s[10:11], v132, v132, v88
	v_rcp_f32_e32 v20, v18
	v_fma_f32 v0, -v17, v1, v0
	v_div_fmas_f32 v0, v0, v19, v1
	v_div_fixup_f32 v17, v0, v132, v87
	v_fma_f32 v0, -v18, v20, 1.0
	v_fmac_f32_e32 v20, v0, v20
	v_div_scale_f32 v0, vcc, v88, v132, v88
	v_mul_f32_e32 v1, v0, v20
	v_fma_f32 v19, -v18, v1, v0
	v_fmac_f32_e32 v1, v19, v20
	v_div_scale_f32 v19, s[10:11], v132, v132, v89
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v0, -v18, v1, v0
	v_div_fmas_f32 v0, v0, v20, v1
	v_div_fixup_f32 v18, v0, v132, v88
	v_fma_f32 v0, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v0, v21
	v_div_scale_f32 v0, vcc, v89, v132, v89
	v_mul_f32_e32 v1, v0, v21
	v_fma_f32 v20, -v19, v1, v0
	v_fmac_f32_e32 v1, v20, v21
	v_div_scale_f32 v20, s[10:11], v132, v132, v90
	v_rcp_f32_e32 v22, v20
	v_fma_f32 v0, -v19, v1, v0
	v_div_fmas_f32 v0, v0, v21, v1
	v_div_fixup_f32 v19, v0, v132, v89
	v_fma_f32 v0, -v20, v22, 1.0
	v_fmac_f32_e32 v22, v0, v22
	v_div_scale_f32 v0, vcc, v90, v132, v90
	v_mul_f32_e32 v1, v0, v22
	v_fma_f32 v21, -v20, v1, v0
	v_fmac_f32_e32 v1, v21, v22
	v_div_scale_f32 v21, s[10:11], v132, v132, v91
	v_rcp_f32_e32 v23, v21
	v_fma_f32 v0, -v20, v1, v0
	v_div_fmas_f32 v0, v0, v22, v1
	v_div_fixup_f32 v20, v0, v132, v90
	v_fma_f32 v0, -v21, v23, 1.0
	v_fmac_f32_e32 v23, v0, v23
	v_div_scale_f32 v0, vcc, v91, v132, v91
	v_mul_f32_e32 v1, v0, v23
	v_fma_f32 v22, -v21, v1, v0
	v_fmac_f32_e32 v1, v22, v23
	v_div_scale_f32 v22, s[10:11], v132, v132, v92
	v_rcp_f32_e32 v24, v22
	v_fma_f32 v0, -v21, v1, v0
	v_div_fmas_f32 v0, v0, v23, v1
	v_div_fixup_f32 v21, v0, v132, v91
	v_fma_f32 v0, -v22, v24, 1.0
	v_fmac_f32_e32 v24, v0, v24
	v_div_scale_f32 v0, vcc, v92, v132, v92
	v_mul_f32_e32 v1, v0, v24
	v_fma_f32 v23, -v22, v1, v0
	v_fmac_f32_e32 v1, v23, v24
	v_div_scale_f32 v23, s[10:11], v132, v132, v93
	v_rcp_f32_e32 v25, v23
	v_fma_f32 v0, -v22, v1, v0
	v_div_fmas_f32 v0, v0, v24, v1
	v_div_fixup_f32 v22, v0, v132, v92
	v_fma_f32 v0, -v23, v25, 1.0
	v_fmac_f32_e32 v25, v0, v25
	v_div_scale_f32 v0, vcc, v93, v132, v93
	v_mul_f32_e32 v1, v0, v25
	v_fma_f32 v24, -v23, v1, v0
	v_fmac_f32_e32 v1, v24, v25
	v_div_scale_f32 v24, s[10:11], v132, v132, v94
	v_rcp_f32_e32 v26, v24
	v_fma_f32 v0, -v23, v1, v0
	v_div_fmas_f32 v0, v0, v25, v1
	v_div_fixup_f32 v23, v0, v132, v93
	v_fma_f32 v0, -v24, v26, 1.0
	v_fmac_f32_e32 v26, v0, v26
	v_div_scale_f32 v0, vcc, v94, v132, v94
	v_mul_f32_e32 v1, v0, v26
	v_fma_f32 v25, -v24, v1, v0
	v_fmac_f32_e32 v1, v25, v26
	v_div_scale_f32 v25, s[10:11], v132, v132, v95
	v_rcp_f32_e32 v27, v25
	v_fma_f32 v0, -v24, v1, v0
	v_div_fmas_f32 v0, v0, v26, v1
	v_div_fixup_f32 v24, v0, v132, v94
	v_fma_f32 v0, -v25, v27, 1.0
	v_fmac_f32_e32 v27, v0, v27
	v_div_scale_f32 v0, vcc, v95, v132, v95
	v_mul_f32_e32 v1, v0, v27
	v_fma_f32 v26, -v25, v1, v0
	v_fmac_f32_e32 v1, v26, v27
	v_div_scale_f32 v26, s[10:11], v132, v132, v96
	v_rcp_f32_e32 v28, v26
	v_fma_f32 v0, -v25, v1, v0
	v_div_fmas_f32 v0, v0, v27, v1
	v_div_fixup_f32 v25, v0, v132, v95
	v_fma_f32 v0, -v26, v28, 1.0
	v_fmac_f32_e32 v28, v0, v28
	v_div_scale_f32 v0, vcc, v96, v132, v96
	v_mul_f32_e32 v1, v0, v28
	v_fma_f32 v27, -v26, v1, v0
	v_fmac_f32_e32 v1, v27, v28
	v_div_scale_f32 v27, s[10:11], v132, v132, v97
	v_rcp_f32_e32 v29, v27
	v_fma_f32 v0, -v26, v1, v0
	v_div_fmas_f32 v0, v0, v28, v1
	v_div_fixup_f32 v26, v0, v132, v96
	v_fma_f32 v0, -v27, v29, 1.0
	v_fmac_f32_e32 v29, v0, v29
	v_div_scale_f32 v0, vcc, v97, v132, v97
	v_mul_f32_e32 v1, v0, v29
	v_fma_f32 v28, -v27, v1, v0
	v_fmac_f32_e32 v1, v28, v29
	v_div_scale_f32 v28, s[10:11], v132, v132, v98
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v0, -v27, v1, v0
	v_div_fmas_f32 v0, v0, v29, v1
	v_div_fixup_f32 v27, v0, v132, v97
	v_fma_f32 v0, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v0, v30
	v_div_scale_f32 v0, vcc, v98, v132, v98
	v_mul_f32_e32 v1, v0, v30
	v_fma_f32 v29, -v28, v1, v0
	v_fmac_f32_e32 v1, v29, v30
	v_div_scale_f32 v29, s[10:11], v132, v132, v99
	v_rcp_f32_e32 v31, v29
	v_fma_f32 v0, -v28, v1, v0
	v_div_fmas_f32 v0, v0, v30, v1
	v_div_fixup_f32 v28, v0, v132, v98
	v_fma_f32 v0, -v29, v31, 1.0
	v_fmac_f32_e32 v31, v0, v31
	v_div_scale_f32 v0, vcc, v99, v132, v99
	v_mul_f32_e32 v1, v0, v31
	v_fma_f32 v30, -v29, v1, v0
	v_fmac_f32_e32 v1, v30, v31
	v_div_scale_f32 v30, s[10:11], v132, v132, v100
	v_rcp_f32_e32 v32, v30
	v_fma_f32 v0, -v29, v1, v0
	v_div_fmas_f32 v0, v0, v31, v1
	v_div_fixup_f32 v29, v0, v132, v99
	v_fma_f32 v0, -v30, v32, 1.0
	v_fmac_f32_e32 v32, v0, v32
	v_div_scale_f32 v0, vcc, v100, v132, v100
	v_mul_f32_e32 v1, v0, v32
	v_fma_f32 v31, -v30, v1, v0
	v_fmac_f32_e32 v1, v31, v32
	v_div_scale_f32 v31, s[10:11], v132, v132, v101
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v0, -v30, v1, v0
	v_div_fmas_f32 v0, v0, v32, v1
	v_div_fixup_f32 v30, v0, v132, v100
	v_fma_f32 v0, -v31, v33, 1.0
	v_fmac_f32_e32 v33, v0, v33
	v_div_scale_f32 v0, vcc, v101, v132, v101
	v_mul_f32_e32 v1, v0, v33
	v_fma_f32 v32, -v31, v1, v0
	v_fmac_f32_e32 v1, v32, v33
	v_div_scale_f32 v32, s[10:11], v132, v132, v102
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v0, -v31, v1, v0
	v_div_fmas_f32 v0, v0, v33, v1
	v_div_fixup_f32 v31, v0, v132, v101
	v_fma_f32 v0, -v32, v34, 1.0
	v_fmac_f32_e32 v34, v0, v34
	v_div_scale_f32 v0, vcc, v102, v132, v102
	v_mul_f32_e32 v1, v0, v34
	v_fma_f32 v33, -v32, v1, v0
	v_fmac_f32_e32 v1, v33, v34
	v_div_scale_f32 v33, s[10:11], v132, v132, v103
	v_rcp_f32_e32 v35, v33
	v_fma_f32 v0, -v32, v1, v0
	v_div_fmas_f32 v0, v0, v34, v1
	v_div_fixup_f32 v32, v0, v132, v102
	v_fma_f32 v0, -v33, v35, 1.0
	v_fmac_f32_e32 v35, v0, v35
	v_div_scale_f32 v0, vcc, v103, v132, v103
	v_mul_f32_e32 v1, v0, v35
	v_fma_f32 v34, -v33, v1, v0
	v_fmac_f32_e32 v1, v34, v35
	v_div_scale_f32 v34, s[10:11], v132, v132, v104
	v_rcp_f32_e32 v36, v34
	v_fma_f32 v0, -v33, v1, v0
	v_div_fmas_f32 v0, v0, v35, v1
	v_div_fixup_f32 v33, v0, v132, v103
	v_fma_f32 v0, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v0, v36
	v_div_scale_f32 v0, vcc, v104, v132, v104
	v_mul_f32_e32 v1, v0, v36
	v_fma_f32 v35, -v34, v1, v0
	v_fmac_f32_e32 v1, v35, v36
	v_div_scale_f32 v35, s[10:11], v132, v132, v105
	v_rcp_f32_e32 v37, v35
	v_fma_f32 v0, -v34, v1, v0
	v_div_fmas_f32 v0, v0, v36, v1
	v_div_fixup_f32 v34, v0, v132, v104
	v_fma_f32 v0, -v35, v37, 1.0
	v_fmac_f32_e32 v37, v0, v37
	v_div_scale_f32 v0, vcc, v105, v132, v105
	v_mul_f32_e32 v1, v0, v37
	v_fma_f32 v36, -v35, v1, v0
	v_fmac_f32_e32 v1, v36, v37
	v_div_scale_f32 v36, s[10:11], v132, v132, v106
	v_rcp_f32_e32 v38, v36
	v_fma_f32 v0, -v35, v1, v0
	v_div_fmas_f32 v0, v0, v37, v1
	v_div_fixup_f32 v35, v0, v132, v105
	v_fma_f32 v0, -v36, v38, 1.0
	v_fmac_f32_e32 v38, v0, v38
	v_div_scale_f32 v0, vcc, v106, v132, v106
	v_mul_f32_e32 v1, v0, v38
	v_fma_f32 v37, -v36, v1, v0
	v_fmac_f32_e32 v1, v37, v38
	v_div_scale_f32 v37, s[10:11], v132, v132, v107
	v_rcp_f32_e32 v39, v37
	v_fma_f32 v0, -v36, v1, v0
	v_div_fmas_f32 v0, v0, v38, v1
	v_div_fixup_f32 v36, v0, v132, v106
	v_fma_f32 v0, -v37, v39, 1.0
	v_fmac_f32_e32 v39, v0, v39
	v_div_scale_f32 v0, vcc, v107, v132, v107
	v_mul_f32_e32 v1, v0, v39
	v_fma_f32 v38, -v37, v1, v0
	v_fmac_f32_e32 v1, v38, v39
	v_div_scale_f32 v38, s[10:11], v132, v132, v108
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v0, -v37, v1, v0
	v_div_fmas_f32 v0, v0, v39, v1
	v_div_fixup_f32 v37, v0, v132, v107
	v_fma_f32 v0, -v38, v40, 1.0
	v_fmac_f32_e32 v40, v0, v40
	v_div_scale_f32 v0, vcc, v108, v132, v108
	v_mul_f32_e32 v1, v0, v40
	v_fma_f32 v39, -v38, v1, v0
	v_fmac_f32_e32 v1, v39, v40
	v_div_scale_f32 v39, s[10:11], v132, v132, v109
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v0, -v38, v1, v0
	v_div_fmas_f32 v0, v0, v40, v1
	v_div_fixup_f32 v38, v0, v132, v108
	v_fma_f32 v0, -v39, v41, 1.0
	v_fmac_f32_e32 v41, v0, v41
	v_div_scale_f32 v0, vcc, v109, v132, v109
	v_mul_f32_e32 v1, v0, v41
	v_fma_f32 v40, -v39, v1, v0
	v_fmac_f32_e32 v1, v40, v41
	v_fma_f32 v0, -v39, v1, v0
	v_div_scale_f32 v39, s[10:11], v132, v132, v110
	v_rcp_f32_e32 v40, v39
	v_div_fmas_f32 v0, v0, v41, v1
	v_div_fixup_f32 v0, v0, v132, v109
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v4, v6, v7, 1.0 op_sel:[0,0,0,1]
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v1, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v1, v40
	v_div_scale_f32 v1, vcc, v110, v132, v110
	v_mul_f32_e32 v41, v1, v40
	v_fma_f32 v42, -v39, v41, v1
	v_fmac_f32_e32 v41, v42, v40
	v_fma_f32 v1, -v39, v41, v1
	v_div_scale_f32 v39, s[10:11], v132, v132, v111
	v_rcp_f32_e32 v42, v39
	v_div_fmas_f32 v1, v1, v40, v41
	v_div_fixup_f32 v1, v1, v132, v110
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v8, v8, v9, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v40, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v40, vcc, v111, v132, v111
	v_mul_f32_e32 v41, v40, v42
	v_fma_f32 v43, -v39, v41, v40
	v_fmac_f32_e32 v41, v43, v42
	v_fma_f32 v39, -v39, v41, v40
	v_div_scale_f32 v40, s[10:11], v132, v132, v112
	v_rcp_f32_e32 v43, v40
	v_div_fmas_f32 v39, v39, v42, v41
	v_div_fixup_f32 v39, v39, v132, v111
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v5, v20, v21, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v41, -v40, v43, 1.0
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, vcc, v112, v132, v112
	v_mul_f32_e32 v42, v41, v43
	v_fma_f32 v44, -v40, v42, v41
	v_fmac_f32_e32 v42, v44, v43
	v_fma_f32 v40, -v40, v42, v41
	v_div_scale_f32 v41, s[10:11], v132, v132, v113
	v_rcp_f32_e32 v44, v41
	v_div_fmas_f32 v40, v40, v43, v42
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v6, v36, v37, 1.0
	v_and_b32_e32 v20, 1, v240
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v42, -v41, v44, 1.0
	v_fmac_f32_e32 v44, v42, v44
	v_div_scale_f32 v42, vcc, v113, v132, v113
	v_mul_f32_e32 v43, v42, v44
	v_fma_f32 v45, -v41, v43, v42
	v_fmac_f32_e32 v43, v45, v44
	v_fma_f32 v41, -v41, v43, v42
	v_div_scale_f32 v42, s[10:11], v132, v132, v114
	v_rcp_f32_e32 v45, v42
	v_div_fmas_f32 v41, v41, v44, v43
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v8, v10, v11, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v5, v22, v23, 1.0 op_sel:[0,0,0,1]
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v43, -v42, v45, 1.0
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v43, vcc, v114, v132, v114
	v_mul_f32_e32 v44, v43, v45
	v_fma_f32 v46, -v42, v44, v43
	v_fmac_f32_e32 v44, v46, v45
	v_fma_f32 v42, -v42, v44, v43
	v_div_scale_f32 v43, s[10:11], v132, v132, v115
	v_rcp_f32_e32 v46, v43
	v_div_fmas_f32 v42, v42, v45, v44
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v6, v38, v0, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v10, v1, v39, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v44, -v43, v46, 1.0
	v_fmac_f32_e32 v46, v44, v46
	v_div_scale_f32 v44, vcc, v115, v132, v115
	v_mul_f32_e32 v45, v44, v46
	v_fma_f32 v47, -v43, v45, v44
	v_fmac_f32_e32 v45, v47, v46
	v_fma_f32 v43, -v43, v45, v44
	v_div_scale_f32 v44, s[10:11], v132, v132, v116
	v_rcp_f32_e32 v47, v44
	v_div_fmas_f32 v43, v43, v46, v45
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_lshlrev_b32_e32 v0, 4, v239
	v_and_b32_e32 v1, 48, v238
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v45, -v44, v47, 1.0
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, vcc, v116, v132, v116
	v_mul_f32_e32 v46, v45, v47
	v_fma_f32 v48, -v44, v46, v45
	v_fmac_f32_e32 v46, v48, v47
	v_fma_f32 v44, -v44, v46, v45
	v_div_scale_f32 v45, s[10:11], v132, v132, v117
	v_rcp_f32_e32 v48, v45
	v_div_fmas_f32 v44, v44, v47, v46
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_lshlrev_b32_e32 v21, 13, v20
	v_lshlrev_b32_e32 v22, 8, v240
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v46, -v45, v48, 1.0
	v_fmac_f32_e32 v48, v46, v48
	v_div_scale_f32 v46, vcc, v117, v132, v117
	v_mul_f32_e32 v47, v46, v48
	v_fma_f32 v49, -v45, v47, v46
	v_fmac_f32_e32 v47, v49, v48
	v_fma_f32 v45, -v45, v47, v46
	v_div_scale_f32 v46, s[10:11], v132, v132, v118
	v_rcp_f32_e32 v49, v46
	v_div_fmas_f32 v45, v45, v48, v47
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_and_b32_e32 v22, 0x4000, v22
	v_lshl_or_b32 v21, v150, 9, v21
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v47, -v46, v49, 1.0
	v_fmac_f32_e32 v49, v47, v49
	v_div_scale_f32 v47, vcc, v118, v132, v118
	v_mul_f32_e32 v48, v47, v49
	v_fma_f32 v50, -v46, v48, v47
	v_fmac_f32_e32 v48, v50, v49
	v_fma_f32 v46, -v46, v48, v47
	v_div_scale_f32 v47, s[10:11], v132, v132, v119
	v_rcp_f32_e32 v50, v47
	v_div_fmas_f32 v46, v46, v49, v48
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_bitop3_b32 v0, v0, v1, v149 bitop3:0x36
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_div_fixup_f32 v40, v40, v132, v112
	v_fma_f32 v48, -v47, v50, 1.0
	v_fmac_f32_e32 v50, v48, v50
	v_div_scale_f32 v48, vcc, v119, v132, v119
	v_mul_f32_e32 v49, v48, v50
	v_fma_f32 v51, -v47, v49, v48
	v_fmac_f32_e32 v49, v51, v50
	v_fma_f32 v47, -v47, v49, v48
	v_div_scale_f32 v48, s[10:11], v132, v132, v120
	v_rcp_f32_e32 v51, v48
	v_div_fmas_f32 v47, v47, v50, v49
	v_div_fixup_f32 v41, v41, v132, v113
	v_div_fixup_f32 v42, v42, v132, v114
	v_fma_f32 v49, -v48, v51, 1.0
	v_fmac_f32_e32 v51, v49, v51
	v_div_scale_f32 v49, vcc, v120, v132, v120
	v_mul_f32_e32 v50, v49, v51
	v_fma_f32 v52, -v48, v50, v49
	v_fmac_f32_e32 v50, v52, v51
	v_fma_f32 v48, -v48, v50, v49
	v_div_scale_f32 v49, s[10:11], v132, v132, v121
	v_rcp_f32_e32 v52, v49
	v_div_fmas_f32 v48, v48, v51, v50
	v_div_fixup_f32 v43, v43, v132, v115
	v_div_fixup_f32 v46, v46, v132, v118
	v_fma_f32 v50, -v49, v52, 1.0
	v_fmac_f32_e32 v52, v50, v52
	v_div_scale_f32 v50, vcc, v121, v132, v121
	v_mul_f32_e32 v51, v50, v52
	v_fma_f32 v53, -v49, v51, v50
	v_fmac_f32_e32 v51, v53, v52
	v_fma_f32 v49, -v49, v51, v50
	v_div_scale_f32 v50, s[10:11], v132, v132, v122
	v_rcp_f32_e32 v53, v50
	v_div_fmas_f32 v49, v49, v52, v51
	v_div_fixup_f32 v47, v47, v132, v119
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v12, v12, v13, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v51, -v50, v53, 1.0
	v_fmac_f32_e32 v53, v51, v53
	v_div_scale_f32 v51, vcc, v122, v132, v122
	v_mul_f32_e32 v52, v51, v53
	v_fma_f32 v54, -v50, v52, v51
	v_fmac_f32_e32 v52, v54, v53
	v_fma_f32 v50, -v50, v52, v51
	v_div_scale_f32 v51, s[10:11], v132, v132, v123
	v_rcp_f32_e32 v54, v51
	v_div_fmas_f32 v50, v50, v53, v52
	v_div_fixup_f32 v50, v50, v132, v122
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v16, v16, v17, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v52, -v51, v54, 1.0
	v_fmac_f32_e32 v54, v52, v54
	v_div_scale_f32 v52, vcc, v123, v132, v123
	v_mul_f32_e32 v53, v52, v54
	v_fma_f32 v55, -v51, v53, v52
	v_fmac_f32_e32 v53, v55, v54
	v_fma_f32 v51, -v51, v53, v52
	v_div_scale_f32 v52, s[10:11], v132, v132, v124
	v_rcp_f32_e32 v55, v52
	v_div_fmas_f32 v51, v51, v54, v53
	v_div_fixup_f32 v51, v51, v132, v123
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v9, v24, v25, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v53, -v52, v55, 1.0
	v_fmac_f32_e32 v55, v53, v55
	v_div_scale_f32 v53, vcc, v124, v132, v124
	v_mul_f32_e32 v54, v53, v55
	v_fma_f32 v56, -v52, v54, v53
	v_fmac_f32_e32 v54, v56, v55
	v_fma_f32 v52, -v52, v54, v53
	v_div_scale_f32 v53, s[10:11], v132, v132, v125
	v_rcp_f32_e32 v56, v53
	v_div_fmas_f32 v52, v52, v55, v54
	v_div_fixup_f32 v52, v52, v132, v124
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v7, v50, v51, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v54, -v53, v56, 1.0
	v_fmac_f32_e32 v56, v54, v56
	v_div_scale_f32 v54, vcc, v125, v132, v125
	v_mul_f32_e32 v55, v54, v56
	v_fma_f32 v57, -v53, v55, v54
	v_fmac_f32_e32 v55, v57, v56
	v_fma_f32 v53, -v53, v55, v54
	v_div_scale_f32 v54, s[10:11], v132, v132, v126
	v_rcp_f32_e32 v57, v54
	v_div_fmas_f32 v53, v53, v56, v55
	v_div_fixup_f32 v53, v53, v132, v125
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_or3_b32 v0, v21, v22, v0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v55, -v54, v57, 1.0
	v_fmac_f32_e32 v57, v55, v57
	v_div_scale_f32 v55, vcc, v126, v132, v126
	v_mul_f32_e32 v56, v55, v57
	v_fma_f32 v58, -v54, v56, v55
	v_fmac_f32_e32 v56, v58, v57
	v_fma_f32 v54, -v54, v56, v55
	v_div_scale_f32 v55, s[10:11], v132, v132, v127
	v_rcp_f32_e32 v58, v55
	v_div_fmas_f32 v54, v54, v57, v56
	v_div_fixup_f32 v54, v54, v132, v126
	v_div_fixup_f32 v44, v44, v132, v116
	v_fma_f32 v56, -v55, v58, 1.0
	v_fmac_f32_e32 v58, v56, v58
	v_div_scale_f32 v56, vcc, v127, v132, v127
	v_mul_f32_e32 v57, v56, v58
	v_fma_f32 v59, -v55, v57, v56
	v_fmac_f32_e32 v57, v59, v58
	v_fma_f32 v55, -v55, v57, v56
	v_div_scale_f32 v56, s[10:11], v132, v132, v128
	v_rcp_f32_e32 v59, v56
	v_div_fmas_f32 v55, v55, v58, v57
	v_div_fixup_f32 v55, v55, v132, v127
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v11, v54, v55, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v57, -v56, v59, 1.0
	v_fmac_f32_e32 v59, v57, v59
	v_div_scale_f32 v57, vcc, v128, v132, v128
	v_mul_f32_e32 v58, v57, v59
	v_fma_f32 v60, -v56, v58, v57
	v_fmac_f32_e32 v58, v60, v59
	v_fma_f32 v56, -v56, v58, v57
	v_div_scale_f32 v57, s[10:11], v132, v132, v129
	v_rcp_f32_e32 v60, v57
	v_div_fmas_f32 v56, v56, v59, v58
	v_div_fixup_f32 v56, v56, v132, v128
	v_div_fixup_f32 v45, v45, v132, v117
	v_fma_f32 v58, -v57, v60, 1.0
	v_fmac_f32_e32 v60, v58, v60
	v_div_scale_f32 v58, vcc, v129, v132, v129
	v_mul_f32_e32 v59, v58, v60
	v_fma_f32 v61, -v57, v59, v58
	v_fmac_f32_e32 v59, v61, v60
	v_fma_f32 v57, -v57, v59, v58
	v_div_scale_f32 v58, s[10:11], v132, v132, v73
	v_rcp_f32_e32 v61, v58
	v_div_fmas_f32 v57, v57, v60, v59
	v_div_fixup_f32 v57, v57, v132, v129
	v_div_fixup_f32 v48, v48, v132, v120
	v_fma_f32 v59, -v58, v61, 1.0
	v_fmac_f32_e32 v61, v59, v61
	v_div_scale_f32 v59, vcc, v73, v132, v73
	v_mul_f32_e32 v60, v59, v61
	v_fma_f32 v62, -v58, v60, v59
	v_fmac_f32_e32 v60, v62, v61
	v_fma_f32 v58, -v58, v60, v59
	v_div_scale_f32 v59, s[10:11], v132, v132, v72
	v_rcp_f32_e32 v62, v59
	v_div_fmas_f32 v58, v58, v61, v60
	v_div_fixup_f32 v58, v58, v132, v73
	v_div_fixup_f32 v49, v49, v132, v121
	v_fma_f32 v60, -v59, v62, 1.0
	v_fmac_f32_e32 v62, v60, v62
	v_div_scale_f32 v60, vcc, v72, v132, v72
	v_mul_f32_e32 v61, v60, v62
	v_fma_f32 v63, -v59, v61, v60
	v_fmac_f32_e32 v61, v63, v62
	v_fma_f32 v59, -v59, v61, v60
	v_div_scale_f32 v60, s[10:11], v132, v132, v71
	v_rcp_f32_e32 v63, v60
	v_div_fmas_f32 v59, v59, v62, v61
	v_div_fixup_f32 v59, v59, v132, v72
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v12, v14, v15, 1.0 op_sel:[0,0,0,1]
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v61, -v60, v63, 1.0
	v_fmac_f32_e32 v63, v61, v63
	v_div_scale_f32 v61, vcc, v71, v132, v71
	v_mul_f32_e32 v62, v61, v63
	v_fma_f32 v64, -v60, v62, v61
	v_fmac_f32_e32 v62, v64, v63
	v_fma_f32 v60, -v60, v62, v61
	v_div_scale_f32 v61, s[10:11], v132, v132, v70
	v_rcp_f32_e32 v64, v61
	v_div_fmas_f32 v60, v60, v63, v62
	v_div_fixup_f32 v60, v60, v132, v71
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v16, v18, v19, 1.0 op_sel:[0,0,0,1]
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v62, -v61, v64, 1.0
	v_fmac_f32_e32 v64, v62, v64
	v_div_scale_f32 v62, vcc, v70, v132, v70
	v_mul_f32_e32 v63, v62, v64
	v_fma_f32 v65, -v61, v63, v62
	v_fmac_f32_e32 v63, v65, v64
	v_fma_f32 v61, -v61, v63, v62
	v_div_scale_f32 v62, s[10:11], v132, v132, v69
	v_rcp_f32_e32 v65, v62
	v_div_fmas_f32 v61, v61, v64, v63
	v_div_fixup_f32 v61, v61, v132, v70
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v9, v26, v27, 1.0 op_sel:[0,0,0,1]
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v63, -v62, v65, 1.0
	v_fmac_f32_e32 v65, v63, v65
	v_div_scale_f32 v63, vcc, v69, v132, v69
	v_mul_f32_e32 v64, v63, v65
	v_fma_f32 v66, -v62, v64, v63
	v_fmac_f32_e32 v64, v66, v65
	v_fma_f32 v62, -v62, v64, v63
	v_div_scale_f32 v63, s[10:11], v132, v132, v68
	v_rcp_f32_e32 v66, v63
	v_div_fmas_f32 v62, v62, v65, v64
	v_div_fixup_f32 v62, v62, v132, v69
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v13, v28, v29, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v64, -v63, v66, 1.0
	v_fmac_f32_e32 v66, v64, v66
	v_div_scale_f32 v64, vcc, v68, v132, v68
	v_mul_f32_e32 v65, v64, v66
	v_fma_f32 v67, -v63, v65, v64
	v_fmac_f32_e32 v65, v67, v66
	v_fma_f32 v63, -v63, v65, v64
	v_div_scale_f32 v64, s[10:11], v132, v132, v131
	v_rcp_f32_e32 v67, v64
	v_div_fmas_f32 v63, v63, v66, v65
	v_div_fixup_f32 v63, v63, v132, v68
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v17, v32, v33, 1.0
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v65, -v64, v67, 1.0
	v_fmac_f32_e32 v67, v65, v67
	v_div_scale_f32 v65, vcc, v131, v132, v131
	v_mul_f32_e32 v66, v65, v67
	v_fma_f32 v68, -v64, v66, v65
	v_fmac_f32_e32 v66, v68, v67
	v_fma_f32 v64, -v64, v66, v65
	v_div_scale_f32 v65, s[10:11], v132, v132, v130
	v_rcp_f32_e32 v68, v65
	v_div_fmas_f32 v64, v64, v67, v66
	v_div_fixup_f32 v64, v64, v132, v131
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v10, v40, v41, 1.0 op_sel:[0,0,0,1]
	.loc	4 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_fma_f32 v66, -v65, v68, 1.0
	v_fmac_f32_e32 v68, v66, v68
	v_div_scale_f32 v66, vcc, v130, v132, v130
	v_mul_f32_e32 v67, v66, v68
	v_fma_f32 v69, -v65, v67, v66
	v_fmac_f32_e32 v67, v69, v68
	v_fma_f32 v65, -v65, v67, v66
	v_div_fmas_f32 v65, v65, v68, v67
	v_div_fixup_f32 v65, v65, v132, v130
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_cvt_scalef32_pk_fp8_f32 v14, v42, v43, 1.0
	v_cvt_scalef32_pk_fp8_f32 v18, v46, v47, 1.0
	v_cvt_scalef32_pk_fp8_f32 v7, v52, v53, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v11, v56, v57, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v15, v58, v59, 1.0
	v_cvt_scalef32_pk_fp8_f32 v19, v62, v63, 1.0
	v_add_u32_e32 v1, 0, v0
	v_xad_u32 v0, v0, 64, 0
	v_cvt_scalef32_pk_fp8_f32 v13, v30, v31, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v17, v34, v35, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v14, v44, v45, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v18, v48, v49, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v15, v60, v61, 1.0 op_sel:[0,0,0,1]
	v_cvt_scalef32_pk_fp8_f32 v19, v64, v65, 1.0 op_sel:[0,0,0,1]
	ds_write_b128 v1, v[4:7]
	ds_write_b128 v1, v[12:15] offset:128
	ds_write_b128 v0, v[8:11]
	ds_write_b128 v0, v[16:19] offset:128
	v_lshlrev_b32_e32 v0, 5, v240
	v_and_b32_e32 v0, 0x1c00, v0
	v_lshrrev_b32_e32 v1, 1, v148
	v_lshlrev_b32_e32 v4, 9, v152
	v_bitop3_b32 v0, v0, v1, v149 bitop3:0x36
	v_lshl_add_u32 v1, v20, 14, 0
	v_add3_u32 v13, v1, v4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[4:7], v13
	ds_read_b128 v[8:11], v13 offset:256
.Ltmp50:
	.loc	1 482 41                        ; moe_op_gemm_a8w4.py:482:41
	v_or_b32_e32 v2, 8, v146
	v_mov_b32_e32 v3, s13
	.loc	1 483 28                        ; moe_op_gemm_a8w4.py:483:28
	s_ashr_i32 s13, s12, 31
.Ltmp51:
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	v_mov_b32_e32 v0, 8
.Ltmp52:
	.loc	1 483 28                        ; moe_op_gemm_a8w4.py:483:28
	v_cmp_gt_i64_e32 vcc, s[12:13], v[146:147]
	v_cmp_gt_i64_e64 s[10:11], s[12:13], v[2:3]
.Ltmp53:
	.loc	4 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_sdwa v0, v0, v8 dst_sel:BYTE_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	s_movk_i32 s12, 0xff
	v_bitop3_b16 v0, v8, v0, s12 bitop3:0xec
	v_lshlrev_b32_e32 v0, 16, v0
	s_mov_b32 s12, 0x3020706
	s_mov_b32 s13, 0x1000504
	v_and_or_b32 v12, v4, s4, v0
	v_perm_b32 v8, v4, v8, s12
	v_perm_b32 v14, v5, v9, s13
	v_perm_b32 v16, v5, v9, s12
	v_perm_b32 v18, v6, v10, s13
	v_perm_b32 v10, v6, v10, s12
	v_perm_b32 v20, v7, v11, s13
	v_perm_b32 v22, v7, v11, s12
	ds_read_b128 v[0:3], v13 offset:512
	ds_read_b128 v[4:7], v13 offset:768
.Ltmp54:
	.loc	1 497 19                        ; moe_op_gemm_a8w4.py:497:19
	v_mul_lo_u32 v9, v237, s5
	.loc	1 501 10                        ; moe_op_gemm_a8w4.py:501:10
	v_mul_lo_u32 v11, v234, s5
	v_mul_lo_u32 v13, s5, v230
	v_add_u32_e32 v9, v11, v9
	v_mul_lo_u32 v15, s5, v231
	v_mul_lo_u32 v17, s5, v232
	v_mul_lo_u32 v19, s5, v233
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add3_u32 v11, v9, v13, v146
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 s[4:5], s[6:7], vcc
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add_u32_e32 v21, 8, v11
	v_add3_u32 v23, v9, v15, v146
	v_add3_u32 v25, v9, v17, v146
	v_add3_u32 v27, v9, v19, v146
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v0, v4, s13
	v_cndmask_b32_e64 v9, v151, v11, s[4:5]
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 s[4:5], s[6:7], s[10:11]
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[12:13], v9, s[20:23], 0 offen
	v_perm_b32 v9, v0, v4, s12
	v_cndmask_b32_e64 v0, v151, v21, s[4:5]
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 s[4:5], s[8:9], vcc
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add_u32_e32 v24, 8, v23
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[8:9], v0, s[20:23], 0 offen
	v_perm_b32 v15, v1, v5, s13
	v_cndmask_b32_e64 v0, v151, v23, s[4:5]
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 s[4:5], s[8:9], s[10:11]
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[14:15], v0, s[20:23], 0 offen
	v_perm_b32 v17, v1, v5, s12
	v_cndmask_b32_e64 v0, v151, v24, s[4:5]
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 s[4:5], s[2:3], vcc
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add_u32_e32 v26, 8, v25
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[16:17], v0, s[20:23], 0 offen
	v_perm_b32 v19, v2, v6, s13
	v_cndmask_b32_e64 v0, v151, v25, s[4:5]
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 s[2:3], s[2:3], s[10:11]
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[18:19], v0, s[20:23], 0 offen
	v_perm_b32 v11, v2, v6, s12
	v_cndmask_b32_e64 v0, v151, v26, s[2:3]
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 vcc, s[0:1], vcc
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add_u32_e32 v28, 8, v27
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[10:11], v0, s[20:23], 0 offen
	v_perm_b32 v21, v3, v7, s13
	v_cndmask_b32_e32 v0, v151, v27, vcc
	.loc	1 504 29                        ; moe_op_gemm_a8w4.py:504:29
	s_and_b64 vcc, s[0:1], s[10:11]
	.loc	1 505 20                        ; moe_op_gemm_a8w4.py:505:20
	buffer_store_dwordx2 v[20:21], v0, s[20:23], 0 offen
	v_perm_b32 v23, v3, v7, s12
	v_cndmask_b32_e32 v0, v151, v28, vcc
	buffer_store_dwordx2 v[22:23], v0, s[20:23], 0 offen
.LBB0_62:                               ; %common.ret
	.loc	1 0 0 is_stmt 0                 ; moe_op_gemm_a8w4.py:0
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _moe_gemm_a8w4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 168
		.amdhsa_kernarg_size 184
		.amdhsa_user_sgpr_count 16
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 14
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 42
		.amdhsa_accum_offset 256
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_moe_gemm_a8w4, .Lfunc_end0-_moe_gemm_a8w4
	.cfi_endproc
                                        ; -- End function
	.set _moe_gemm_a8w4.num_vgpr, 256
	.set _moe_gemm_a8w4.num_agpr, 0
	.set _moe_gemm_a8w4.numbered_sgpr, 42
	.set _moe_gemm_a8w4.num_named_barrier, 0
	.set _moe_gemm_a8w4.private_seg_size, 168
	.set _moe_gemm_a8w4.uses_vcc, 1
	.set _moe_gemm_a8w4.uses_flat_scratch, 0
	.set _moe_gemm_a8w4.has_dyn_sized_stack, 0
	.set _moe_gemm_a8w4.has_recursion, 0
	.set _moe_gemm_a8w4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28596
; TotalNumSgprs: 48
; NumVgprs: 256
; NumAgprs: 0
; TotalNumVgprs: 256
; ScratchSize: 168
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 256
; AccumOffset: 256
; Occupancy: 2
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 16
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 63
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xa7 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x81 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	309                             ; DW_AT_call_line
	.byte	61                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	314                             ; DW_AT_call_line
	.byte	56                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	397                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	415                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x75:0x2e DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	477                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp38                         ; DW_AT_low_pc
	.long	.Ltmp39-.Ltmp38                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	111                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x96:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xa3:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	495                             ; DW_AT_call_line
	.byte	45                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0
.Linfo_string1:
	.asciz	"moe_op_gemm_a8w4.py"           ; string offset=7
.Linfo_string2:
	.asciz	"/home/dewwang/aiter/aiter/ops/triton/_triton_kernels" ; string offset=27
.Linfo_string3:
	.asciz	"_moe_gemm_a8w4"                ; string offset=80
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     0
    .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         12
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .offset:         64
        .size:           4
        .value_kind:     by_value
      - .offset:         68
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         128
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .offset:         164
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .max_flat_workgroup_size: 512
    .name:           _moe_gemm_a8w4
    .private_segment_fixed_size: 168
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         _moe_gemm_a8w4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 41
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx950
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:

batch:  4096 | Total latency (us): 2413.37 | Kernel latency (us): 2076.77 | TFLOPS: 926.5 | TBPS: 1.86
