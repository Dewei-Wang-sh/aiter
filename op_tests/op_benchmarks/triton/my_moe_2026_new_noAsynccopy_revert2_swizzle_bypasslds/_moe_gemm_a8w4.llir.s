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
; %bb.67:
	.file	1 "/home/dewwang/aiter/aiter/ops/triton/_triton_kernels" "moe_op_gemm_a8w4.py"
	.loc	1 191 0 prologue_end            ; moe_op_gemm_a8w4.py:191:0
	s_load_dwordx2 s[2:3], s[0:1], 0x0
	s_load_dwordx8 s[4:11], s[0:1], 0x8
	s_load_dwordx4 s[12:15], s[0:1], 0x28
	s_waitcnt lgkmcnt(0)
	s_branch .LBB0_0
	.loc	1 0 0 is_stmt 0                 ; :0:0
.Ltmp0:
	.p2align	8
; %bb.68:
.LBB0_0:
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b64 s[20:21], s[2:3]
	s_load_dwordx2 s[2:3], s[0:1], 0x98
	s_load_dwordx2 s[6:7], s[0:1], 0x88
	v_mov_b32_e32 v145, v0
	v_mov_b32_e32 v1, 0
.Ltmp1:
	.loc	1 191 0 is_stmt 1               ; moe_op_gemm_a8w4.py:191
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 23, 1), 1
	.loc	1 295 37                        ; moe_op_gemm_a8w4.py:295:37
	s_waitcnt lgkmcnt(0)
	global_load_dword v0, v1, s[6:7]
.Ltmp2:
	.file	2 "/home/dewwang/aiter/aiter/ops/triton/_triton_kernels" "quant_moe.py"
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_readfirstlane_b32 s4, v145
.Ltmp3:
	.loc	1 295 37                        ; moe_op_gemm_a8w4.py:295:37
	s_waitcnt vmcnt(0)
	v_readfirstlane_b32 s7, v0
	.loc	1 295 29 is_stmt 0              ; moe_op_gemm_a8w4.py:295:29
	v_sub_u32_e32 v0, s2, v0
	.loc	1 303 38 is_stmt 1              ; moe_op_gemm_a8w4.py:303:38
	s_mul_i32 s2, s7, s3
	.loc	1 304 32                        ; moe_op_gemm_a8w4.py:304:32
	s_cmp_lt_i32 s16, s2
	.loc	1 304 19 is_stmt 0              ; moe_op_gemm_a8w4.py:304:19
	v_cmp_gt_i32_e32 vcc, 1, v0
	.loc	1 304 32                        ; moe_op_gemm_a8w4.py:304:32
	s_cselect_b64 s[10:11], -1, 0
	s_or_b64 s[10:11], vcc, s[10:11]
	.loc	1 304 25                        ; moe_op_gemm_a8w4.py:304:25
	s_and_b64 vcc, exec, s[10:11]
	s_cbranch_vccz .LBB0_64
; %bb.1:
	.loc	1 312 26 is_stmt 1              ; moe_op_gemm_a8w4.py:312:26
	s_abs_i32 s10, s2
	v_cvt_f32_u32_e32 v0, s10
.Ltmp4:
	.loc	1 73 36                         ; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_ashr_i32 s6, s2, 31
	s_lshr_b32 s6, s6, 29
	s_add_i32 s6, s2, s6
.Ltmp5:
	.loc	1 312 26                        ; moe_op_gemm_a8w4.py:312:26
	v_rcp_iflag_f32_e32 v0, v0
.Ltmp6:
	.loc	1 73 36                         ; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_ashr_i32 s17, s6, 3
	.loc	1 74 37                         ; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_and_b32 s6, s6, -8
	s_sub_i32 s9, s2, s6
	.loc	1 78 23                         ; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_ashr_i32 s6, s16, 31
	s_lshr_b32 s6, s6, 29
.Ltmp7:
	.loc	1 312 26                        ; moe_op_gemm_a8w4.py:312:26
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
.Ltmp8:
	.loc	1 78 23                         ; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_add_i32 s11, s16, s6
.Ltmp9:
	.loc	1 312 26                        ; moe_op_gemm_a8w4.py:312:26
	v_cvt_u32_f32_e32 v0, v0
.Ltmp10:
	.loc	1 77 18                         ; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_and_b32 s2, s11, -8
	.loc	1 78 23                         ; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_ashr_i32 s6, s11, 3
	.loc	1 77 18                         ; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_sub_i32 s11, s16, s2
	.loc	1 81 50                         ; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_min_i32 s9, s11, s9
	.loc	1 81 22 is_stmt 0               ; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_mul_i32 s2, s17, s11
	.loc	1 81 39                         ; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_add_i32 s6, s9, s6
.Ltmp11:
	.loc	1 312 26 is_stmt 1              ; moe_op_gemm_a8w4.py:312:26
	s_sub_i32 s11, 0, s10
	v_readfirstlane_b32 s9, v0
	s_mul_i32 s11, s11, s9
.Ltmp12:
	.loc	1 81 70                         ; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:310:61 ]
	s_add_i32 s6, s6, s2
.Ltmp13:
	.loc	1 312 26                        ; moe_op_gemm_a8w4.py:312:26
	s_mul_hi_u32 s11, s9, s11
	s_ashr_i32 s2, s6, 31
	s_abs_i32 s6, s6
	s_add_i32 s9, s9, s11
	s_mul_hi_u32 s9, s6, s9
	s_mul_i32 s9, s9, s10
	s_sub_i32 s6, s6, s9
	s_sub_i32 s9, s6, s10
	s_cmp_ge_u32 s6, s10
	s_cselect_b32 s6, s9, s6
	s_sub_i32 s9, s6, s10
	s_cmp_ge_u32 s6, s10
	s_cselect_b32 s6, s9, s6
.Ltmp14:
	.file	3 "/home/dewwang/aiter/aiter/ops/triton/utils/_triton" "pid_preprocessing.py"
	.loc	3 72 42                         ; pid_preprocessing.py:72:42 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_lshl_b32 s9, s3, 2
	.loc	3 73 26                         ; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_abs_i32 s11, s9
	v_cvt_f32_u32_e32 v0, s11
.Ltmp15:
	.loc	1 312 26                        ; moe_op_gemm_a8w4.py:312:26
	s_xor_b32 s3, s6, s2
	s_sub_i32 s6, s3, s2
.Ltmp16:
	.loc	3 73 26                         ; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_sub_i32 s10, 0, s11
	v_rcp_iflag_f32_e32 v0, v0
	.loc	3 77 37                         ; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_abs_i32 s19, s6
	.loc	3 73 26                         ; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_xor_b32 s2, s6, s9
	s_ashr_i32 s2, s2, 31
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_nop 0
	v_readfirstlane_b32 s3, v0
	s_mul_i32 s10, s10, s3
	s_mul_hi_u32 s10, s3, s10
	s_add_i32 s3, s3, s10
	s_mul_hi_u32 s3, s19, s3
	s_mul_i32 s10, s3, s11
	s_sub_i32 s10, s19, s10
	s_add_i32 s17, s3, 1
	s_sub_i32 s16, s10, s11
	s_cmp_ge_u32 s10, s11
	s_cselect_b32 s3, s17, s3
	s_cselect_b32 s16, s16, s10
	s_add_i32 s10, s3, 1
	s_cmp_ge_u32 s16, s11
	s_cselect_b32 s3, s10, s3
	s_xor_b32 s3, s3, s2
	s_sub_i32 s16, s3, s2
	.loc	3 74 33                         ; pid_preprocessing.py:74:33 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_lshl_b32 s2, s16, 2
	.loc	3 75 39                         ; pid_preprocessing.py:75:39 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_sub_i32 s3, s7, s2
	.loc	3 75 52 is_stmt 0               ; pid_preprocessing.py:75:52 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_min_i32 s17, s3, 4
	.loc	3 77 37 is_stmt 1               ; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_abs_i32 s3, s17
	v_cvt_f32_u32_e32 v0, s3
	s_sub_i32 s22, 0, s3
	s_ashr_i32 s18, s6, 31
	s_load_dwordx2 s[10:11], s[0:1], 0x90
	v_rcp_iflag_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_nop 0
	v_readfirstlane_b32 s7, v0
	s_mul_i32 s22, s22, s7
	s_mul_hi_u32 s22, s7, s22
	s_add_i32 s7, s7, s22
	s_mul_hi_u32 s22, s19, s7
	s_mul_i32 s22, s22, s3
	s_sub_i32 s19, s19, s22
	s_sub_i32 s22, s19, s3
	s_cmp_ge_u32 s19, s3
	s_cselect_b32 s19, s22, s19
	s_sub_i32 s22, s19, s3
	s_cmp_ge_u32 s19, s3
	s_cselect_b32 s19, s22, s19
	s_xor_b32 s19, s19, s18
	s_sub_i32 s18, s19, s18
	.loc	3 77 31 is_stmt 0               ; pid_preprocessing.py:77:31 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_add_i32 s18, s2, s18
.Ltmp17:
	.loc	1 320 24 is_stmt 1              ; moe_op_gemm_a8w4.py:320:24
	s_ashr_i32 s19, s18, 31
	s_lshl_b64 s[18:19], s[18:19], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s10, s10, s18
	s_addc_u32 s11, s11, s19
	global_load_dword v1, v1, s[10:11]
	s_mov_b32 s2, 0
	.loc	1 321 20                        ; moe_op_gemm_a8w4.py:321:20
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, -1, v1
	s_cbranch_vccnz .LBB0_64
; %bb.2:
	.loc	1 0 20 is_stmt 0                ; moe_op_gemm_a8w4.py:0:20
	s_load_dwordx4 s[24:27], s[0:1], 0x70
	s_load_dwordx2 s[10:11], s[0:1], 0x64
	.loc	1 323 26 is_stmt 1              ; moe_op_gemm_a8w4.py:323:26
	v_and_b32_e32 v141, 0xffff, v1
	.loc	1 325 16                        ; moe_op_gemm_a8w4.py:325:16
	v_lshlrev_b32_e32 v2, 2, v141
	s_load_dwordx2 s[18:19], s[0:1], 0x80
	s_waitcnt lgkmcnt(0)
	global_load_dword v214, v2, s[26:27]
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	s_and_b32 s33, s4, 0x1c0
	.loc	1 324 28                        ; moe_op_gemm_a8w4.py:324:28
	v_ashrrev_i32_e32 v0, 16, v1
	.loc	1 332 49                        ; moe_op_gemm_a8w4.py:332:49
	v_and_b32_e32 v18, 63, v145
	.loc	1 326 22                        ; moe_op_gemm_a8w4.py:326:22
	global_load_dword v212, v2, s[18:19]
	.loc	1 327 60                        ; moe_op_gemm_a8w4.py:327:60
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 332 49                        ; moe_op_gemm_a8w4.py:332:49
	v_or_b32_e32 v176, s33, v18
	.loc	1 332 25 is_stmt 0              ; moe_op_gemm_a8w4.py:332:25
	v_lshlrev_b64 v[208:209], 7, v[0:1]
	.loc	1 332 49                        ; moe_op_gemm_a8w4.py:332:49
	v_lshrrev_b32_e32 v206, 4, v176
	v_or_b32_e32 v207, 32, v206
	.loc	1 332 36                        ; moe_op_gemm_a8w4.py:332:36
	v_or_b32_e32 v134, v208, v206
	.loc	1 332 49                        ; moe_op_gemm_a8w4.py:332:49
	v_or_b32_e32 v210, 64, v206
	.loc	1 332 36                        ; moe_op_gemm_a8w4.py:332:36
	v_or_b32_e32 v216, v208, v207
	.loc	1 333 59 is_stmt 1              ; moe_op_gemm_a8w4.py:333:59
	v_sub_u32_e32 v0, 0, v134
	.loc	1 332 49                        ; moe_op_gemm_a8w4.py:332:49
	v_or_b32_e32 v211, 0x60, v206
	.loc	1 332 36 is_stmt 0              ; moe_op_gemm_a8w4.py:332:36
	v_or_b32_e32 v138, v208, v210
	.loc	1 333 59 is_stmt 1              ; moe_op_gemm_a8w4.py:333:59
	v_max_i32_e32 v3, v0, v134
	v_sub_u32_e32 v2, 0, v216
	.loc	1 332 36                        ; moe_op_gemm_a8w4.py:332:36
	v_or_b32_e32 v218, v208, v211
	.loc	1 333 59                        ; moe_op_gemm_a8w4.py:333:59
	v_sub_u32_e32 v1, 0, v138
	v_max_i32_e32 v2, v2, v216
	v_sub_u32_e32 v0, 0, v218
	v_max_i32_e32 v1, v1, v138
.Ltmp18:
	.loc	3 78 23                         ; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_mul_i32 s16, s16, s9
.Ltmp19:
	.loc	1 333 59                        ; moe_op_gemm_a8w4.py:333:59
	v_max_i32_e32 v0, v0, v218
.Ltmp20:
	.loc	3 78 23                         ; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_sub_i32 s9, s6, s16
	.loc	3 78 44 is_stmt 0               ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_ashr_i32 s6, s9, 31
	s_abs_i32 s9, s9
	s_mul_hi_u32 s7, s9, s7
	s_mul_i32 s16, s7, s3
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s9, s9, s16
	s_xor_b32 s6, s6, s17
	s_add_i32 s17, s7, 1
	s_sub_i32 s16, s9, s3
	s_cmp_ge_u32 s9, s3
.Ltmp21:
	.loc	1 333 59 is_stmt 1              ; moe_op_gemm_a8w4.py:333:59
	v_ashrrev_i32_e32 v4, 31, v208
.Ltmp22:
	.loc	3 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_cselect_b32 s7, s17, s7
	s_cselect_b32 s16, s16, s9
	s_add_i32 s9, s7, 1
	s_mov_b32 s31, 0x27000
	s_mov_b32 s30, 0x7ffffffe
	s_cmp_ge_u32 s16, s3
.Ltmp23:
	.loc	1 339 27                        ; moe_op_gemm_a8w4.py:339:27
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.Ltmp24:
	.loc	3 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_cselect_b32 s3, s9, s7
.Ltmp25:
	.loc	1 339 27                        ; moe_op_gemm_a8w4.py:339:27
	s_and_b32 s25, s25, 0xffff
.Ltmp26:
	.loc	3 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_xor_b32 s3, s3, s6
.Ltmp27:
	.loc	1 340 46                        ; moe_op_gemm_a8w4.py:340:46
	v_and_b32_e32 v132, 15, v145
.Ltmp28:
	.loc	3 78 44                         ; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:315:56 ]
	s_sub_i32 s18, s3, s6
.Ltmp29:
	.loc	1 340 46                        ; moe_op_gemm_a8w4.py:340:46
	v_lshlrev_b32_e32 v142, 4, v132
.Ltmp30:
	.file	4 "/home/dewwang/triton/python/triton/language" "standard.py"
	.loc	4 43 17                         ; standard.py:43:17 @[ moe_op_gemm_a8w4.py:398:28 ]
	s_add_i32 s34, s11, 0xff
.Ltmp31:
	.loc	1 329 28                        ; moe_op_gemm_a8w4.py:329:28
	s_ashr_i32 s19, s18, 31
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_cmpk_gt_i32 s34, 0xff
	.loc	1 333 59                        ; moe_op_gemm_a8w4.py:333:59
	s_waitcnt vmcnt(1)
	v_sub_u32_e32 v5, 0, v214
	v_max_i32_e32 v6, v214, v5
	v_cvt_f32_u32_e32 v5, v6
	v_sub_u32_e32 v7, 0, v6
	v_rcp_iflag_f32_e32 v5, v5
	s_nop 0
	v_mul_f32_e32 v5, 0x4f7ffffe, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_lo_u32 v7, v7, v5
	v_mul_hi_u32 v7, v5, v7
	v_add_u32_e32 v5, v5, v7
	v_mul_hi_u32 v9, v3, v5
	v_mul_hi_u32 v8, v2, v5
	v_mul_lo_u32 v9, v9, v6
	v_mul_hi_u32 v7, v1, v5
	v_mul_lo_u32 v8, v8, v6
	v_sub_u32_e32 v3, v3, v9
	v_mul_hi_u32 v5, v0, v5
	v_mul_lo_u32 v7, v7, v6
	v_sub_u32_e32 v2, v2, v8
	v_sub_u32_e32 v9, v3, v6
	v_cmp_ge_u32_e32 vcc, v3, v6
	v_mul_lo_u32 v5, v5, v6
	v_sub_u32_e32 v1, v1, v7
	v_sub_u32_e32 v8, v2, v6
	v_cndmask_b32_e32 v3, v3, v9, vcc
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_sub_u32_e32 v0, v0, v5
	v_sub_u32_e32 v7, v1, v6
	v_cndmask_b32_e32 v2, v2, v8, vcc
	v_cmp_ge_u32_e32 vcc, v1, v6
	v_sub_u32_e32 v5, v0, v6
	v_sub_u32_e32 v9, v3, v6
	v_cndmask_b32_e32 v1, v1, v7, vcc
	v_cmp_ge_u32_e32 vcc, v0, v6
	v_sub_u32_e32 v8, v2, v6
	v_sub_u32_e32 v7, v1, v6
	v_cndmask_b32_e32 v0, v0, v5, vcc
	v_cmp_ge_u32_e32 vcc, v3, v6
	v_sub_u32_e32 v5, v0, v6
	s_nop 0
	v_cndmask_b32_e32 v3, v3, v9, vcc
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_xor_b32_e32 v3, v3, v4
	v_sub_u32_e32 v3, v3, v4
	v_cndmask_b32_e32 v2, v2, v8, vcc
	v_cmp_ge_u32_e32 vcc, v1, v6
	v_xor_b32_e32 v2, v2, v4
	v_sub_u32_e32 v2, v2, v4
	v_cndmask_b32_e32 v1, v1, v7, vcc
	v_cmp_ge_u32_e32 vcc, v0, v6
	v_xor_b32_e32 v1, v1, v4
	v_sub_u32_e32 v1, v1, v4
	v_cndmask_b32_e32 v0, v0, v5, vcc
	v_xor_b32_e32 v0, v0, v4
	v_sub_u32_e32 v0, v0, v4
	.loc	1 339 27                        ; moe_op_gemm_a8w4.py:339:27
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, v212, v3, 2
	v_add_lshl_u32 v2, v212, v2, 2
	v_add_lshl_u32 v5, v212, v1, 2
	v_add_lshl_u32 v6, v212, v0, 2
	buffer_load_dword v4, v7, s[24:27], 0 offen
	buffer_load_dword v3, v2, s[24:27], 0 offen
	buffer_load_dword v1, v5, s[24:27], 0 offen
	buffer_load_dword v0, v6, s[24:27], 0 offen
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_bfrev_b32_e32 v2, 1
	.loc	1 339 53                        ; moe_op_gemm_a8w4.py:339:53
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v8, 31, v4
	s_waitcnt vmcnt(2)
	v_ashrrev_i32_e32 v7, 31, v3
	s_waitcnt vmcnt(1)
	v_ashrrev_i32_e32 v6, 31, v1
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v5, 31, v0
	v_lshrrev_b32_e32 v8, 29, v8
	v_lshrrev_b32_e32 v7, 29, v7
	v_lshrrev_b32_e32 v6, 29, v6
	v_lshrrev_b32_e32 v5, 29, v5
	v_add_u32_e32 v4, v4, v8
	v_add_u32_e32 v3, v3, v7
	v_add_u32_e32 v1, v1, v6
	v_add_u32_e32 v0, v0, v5
	v_ashrrev_i32_e32 v4, 3, v4
	v_ashrrev_i32_e32 v3, 3, v3
	v_ashrrev_i32_e32 v1, 3, v1
	v_ashrrev_i32_e32 v0, 3, v0
	.loc	1 344 10                        ; moe_op_gemm_a8w4.py:344:10
	v_mad_u64_u32 v[130:131], s[6:7], v4, s8, v[142:143]
	v_mad_u64_u32 v[146:147], s[6:7], v3, s8, v[142:143]
	v_mad_u64_u32 v[148:149], s[6:7], v1, s8, v[142:143]
	v_mad_u64_u32 v[150:151], s[6:7], v0, s8, v[142:143]
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_cselect_b64 s[6:7], -1, 0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v0, v2, v130, s[6:7]
	v_cndmask_b32_e64 v1, v2, v146, s[6:7]
	v_cndmask_b32_e64 v19, v2, v148, s[6:7]
	v_cndmask_b32_e64 v20, v2, v150, s[6:7]
	buffer_load_dwordx4 v[2:5], v0, s[28:31], 0 offen
	buffer_load_dwordx4 v[6:9], v1, s[28:31], 0 offen
	buffer_load_dwordx4 v[10:13], v19, s[28:31], 0 offen
	buffer_load_dwordx4 v[14:17], v20, s[28:31], 0 offen
	.loc	1 363 30                        ; moe_op_gemm_a8w4.py:363:30
	s_lshl_b64 s[8:9], s[18:19], 4
	.loc	1 363 77 is_stmt 0              ; moe_op_gemm_a8w4.py:363:77
	s_ashr_i32 s11, s10, 31
	.loc	1 363 59                        ; moe_op_gemm_a8w4.py:363:59
	s_bfe_u32 s3, s4, 0x30006
	.loc	1 363 77                        ; moe_op_gemm_a8w4.py:363:77
	s_or_b64 s[16:17], s[8:9], s[10:11]
	.loc	1 363 46                        ; moe_op_gemm_a8w4.py:363:46
	s_or_b32 s24, s8, s3
	.loc	1 363 77                        ; moe_op_gemm_a8w4.py:363:77
	s_mov_b32 s3, s17
	s_cmp_lg_u64 s[2:3], 0
	s_cbranch_scc0 .LBB0_65
; %bb.3:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s22, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s23, s11, s2
	s_xor_b64 s[26:27], s[22:23], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s38, 0, s26
	s_subb_u32 s3, 0, s27
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s25, s38, s2
	s_mul_hi_u32 s35, s38, s8
	s_mul_i32 s16, s3, s8
	s_add_i32 s35, s35, s25
	s_add_i32 s35, s35, s16
	s_mul_i32 s37, s38, s8
	s_mul_i32 s25, s8, s35
	s_mul_hi_u32 s36, s8, s37
	s_mul_hi_u32 s16, s8, s35
	s_add_u32 s39, s36, s25
	s_addc_u32 s36, 0, s16
	s_mul_hi_u32 s25, s2, s37
	s_mul_i32 s37, s2, s37
	s_add_u32 s37, s39, s37
	s_mul_hi_u32 s16, s2, s35
	s_addc_u32 s25, s36, s25
	s_addc_u32 s16, s16, 0
	s_mul_i32 s35, s2, s35
	s_add_u32 s25, s25, s35
	s_addc_u32 s16, 0, s16
	s_add_u32 s8, s8, s25
	s_addc_u32 s2, s2, s16
	s_mul_i32 s16, s38, s2
	s_mul_hi_u32 s25, s38, s8
	s_add_i32 s25, s25, s16
	s_mul_i32 s3, s3, s8
	s_add_i32 s25, s25, s3
	s_mul_i32 s38, s38, s8
	s_mul_hi_u32 s16, s2, s38
	s_mul_i32 s36, s2, s38
	s_mul_i32 s37, s8, s25
	s_mul_hi_u32 s38, s8, s38
	s_mul_hi_u32 s35, s8, s25
	s_add_u32 s37, s38, s37
	s_addc_u32 s35, 0, s35
	s_add_u32 s36, s37, s36
	s_mul_hi_u32 s3, s2, s25
	s_addc_u32 s16, s35, s16
	s_addc_u32 s3, s3, 0
	s_mul_i32 s25, s2, s25
	s_add_u32 s16, s16, s25
	s_addc_u32 s3, 0, s3
	s_add_u32 s38, s8, s16
	s_addc_u32 s25, s2, s3
	s_ashr_i32 s2, s9, 31
	s_add_u32 s36, s24, s2
	s_mov_b32 s3, s2
	s_addc_u32 s37, s9, s2
	s_xor_b64 s[36:37], s[36:37], s[2:3]
	s_mul_i32 s16, s36, s25
	s_mul_hi_u32 s35, s36, s38
	s_mul_hi_u32 s8, s36, s25
	s_add_u32 s39, s35, s16
	s_addc_u32 s35, 0, s8
	s_mul_hi_u32 s8, s37, s38
	s_mul_i32 s38, s37, s38
	s_add_u32 s38, s39, s38
	s_mul_hi_u32 s16, s37, s25
	s_addc_u32 s8, s35, s8
	s_addc_u32 s16, s16, 0
	s_mul_i32 s25, s37, s25
	s_add_u32 s8, s8, s25
	s_addc_u32 s16, 0, s16
	s_mul_i32 s16, s26, s16
	s_mul_hi_u32 s35, s26, s8
	s_add_i32 s35, s35, s16
	s_mul_i32 s16, s27, s8
	s_add_i32 s35, s35, s16
	s_sub_i32 s16, s37, s35
	s_mul_i32 s8, s26, s8
	s_sub_u32 s8, s36, s8
	s_cselect_b64 s[38:39], -1, 0
	s_subb_u32 s36, s16, s27
	s_sub_u32 s16, s8, s26
	s_cselect_b64 s[40:41], -1, 0
	s_subb_u32 s25, s36, 0
	s_cmp_ge_u32 s25, s27
	s_cselect_b32 s42, -1, 0
	s_cmp_ge_u32 s16, s26
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s25, s27
	s_cselect_b32 s42, s43, s42
	s_cmp_lg_u64 s[40:41], 0
	s_subb_u32 s36, s36, s27
	s_sub_u32 s40, s16, s26
	s_subb_u32 s36, s36, 0
	s_cmp_lg_u32 s42, 0
	s_cselect_b32 s16, s40, s16
	s_cselect_b32 s25, s36, s25
	s_cmp_lg_u64 s[38:39], 0
	s_subb_u32 s35, s37, s35
	s_cmp_ge_u32 s35, s27
	s_cselect_b32 s36, -1, 0
	s_cmp_ge_u32 s8, s26
	s_cselect_b32 s26, -1, 0
	s_cmp_eq_u32 s35, s27
	s_cselect_b32 s26, s26, s36
	s_cmp_lg_u32 s26, 0
	s_cselect_b32 s27, s25, s35
	s_cselect_b32 s26, s16, s8
	s_xor_b64 s[26:27], s[26:27], s[2:3]
	s_sub_u32 s2, s26, s2
	v_cvt_f32_u32_e32 v19, s10
	s_cbranch_execnz .LBB0_5
.LBB0_4:
	.loc	1 363 77 is_stmt 1              ; moe_op_gemm_a8w4.py:363:77
	v_rcp_iflag_f32_e32 v0, v19
	s_sub_i32 s3, 0, s10
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_nop 0
	v_readfirstlane_b32 s2, v0
	s_mul_i32 s3, s3, s2
	s_mul_hi_u32 s3, s2, s3
	s_add_i32 s2, s2, s3
	s_mul_hi_u32 s2, s24, s2
	s_mul_i32 s2, s2, s10
	s_sub_i32 s2, s24, s2
	s_sub_i32 s3, s2, s10
	s_cmp_ge_u32 s2, s10
	s_cselect_b32 s2, s3, s2
	s_sub_i32 s3, s2, s10
	s_cmp_ge_u32 s2, s10
	s_cselect_b32 s2, s3, s2
.LBB0_5:
	.loc	1 0 77 is_stmt 0                ; moe_op_gemm_a8w4.py:0:77
	s_load_dwordx2 s[36:37], s[0:1], 0x38
	.loc	1 363 46                        ; moe_op_gemm_a8w4.py:363:46
	s_or_b32 s3, s24, 8
	s_mov_b32 s16, 0
	.loc	1 363 77                        ; moe_op_gemm_a8w4.py:363:77
	s_cmp_lg_u64 s[16:17], 0
	s_cbranch_scc0 .LBB0_66
; %bb.6:
	s_ashr_i32 s16, s11, 31
	s_add_u32 s22, s10, s16
	s_mov_b32 s17, s16
	s_addc_u32 s23, s11, s16
	s_xor_b64 s[24:25], s[22:23], s[16:17]
	v_cvt_f32_u32_e32 v0, s24
	v_cvt_f32_u32_e32 v1, s25
	s_sub_u32 s40, 0, s24
	s_subb_u32 s22, 0, s25
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
	v_readfirstlane_b32 s23, v0
	s_mul_i32 s27, s40, s8
	s_mul_hi_u32 s35, s40, s23
	s_mul_i32 s26, s22, s23
	s_add_i32 s35, s35, s27
	s_add_i32 s35, s35, s26
	s_mul_i32 s39, s40, s23
	s_mul_i32 s27, s23, s35
	s_mul_hi_u32 s38, s23, s39
	s_mul_hi_u32 s26, s23, s35
	s_add_u32 s41, s38, s27
	s_addc_u32 s38, 0, s26
	s_mul_hi_u32 s27, s8, s39
	s_mul_i32 s39, s8, s39
	s_add_u32 s39, s41, s39
	s_mul_hi_u32 s26, s8, s35
	s_addc_u32 s27, s38, s27
	s_addc_u32 s26, s26, 0
	s_mul_i32 s35, s8, s35
	s_add_u32 s27, s27, s35
	s_addc_u32 s26, 0, s26
	s_add_u32 s23, s23, s27
	s_addc_u32 s8, s8, s26
	s_mul_i32 s26, s40, s8
	s_mul_hi_u32 s27, s40, s23
	s_add_i32 s27, s27, s26
	s_mul_i32 s22, s22, s23
	s_add_i32 s27, s27, s22
	s_mul_i32 s40, s40, s23
	s_mul_hi_u32 s26, s8, s40
	s_mul_i32 s38, s8, s40
	s_mul_i32 s39, s23, s27
	s_mul_hi_u32 s40, s23, s40
	s_mul_hi_u32 s35, s23, s27
	s_add_u32 s39, s40, s39
	s_addc_u32 s35, 0, s35
	s_add_u32 s38, s39, s38
	s_mul_hi_u32 s22, s8, s27
	s_addc_u32 s26, s35, s26
	s_addc_u32 s22, s22, 0
	s_mul_i32 s27, s8, s27
	s_add_u32 s26, s26, s27
	s_addc_u32 s22, 0, s22
	s_add_u32 s39, s23, s26
	s_addc_u32 s35, s8, s22
	s_ashr_i32 s22, s9, 31
	s_add_u32 s8, s3, s22
	s_mov_b32 s23, s22
	s_addc_u32 s9, s9, s22
	s_xor_b64 s[8:9], s[8:9], s[22:23]
	s_mul_i32 s27, s8, s35
	s_mul_hi_u32 s38, s8, s39
	s_mul_hi_u32 s26, s8, s35
	s_add_u32 s40, s38, s27
	s_addc_u32 s38, 0, s26
	s_mul_hi_u32 s26, s9, s39
	s_mul_i32 s39, s9, s39
	s_add_u32 s39, s40, s39
	s_mul_hi_u32 s27, s9, s35
	s_addc_u32 s26, s38, s26
	s_addc_u32 s27, s27, 0
	s_mul_i32 s35, s9, s35
	s_add_u32 s26, s26, s35
	s_addc_u32 s27, 0, s27
	s_mul_i32 s27, s24, s27
	s_mul_hi_u32 s40, s24, s26
	s_add_i32 s40, s40, s27
	s_mul_i32 s27, s25, s26
	s_add_i32 s40, s40, s27
	s_sub_i32 s35, s9, s40
	s_mul_i32 s26, s24, s26
	s_sub_u32 s8, s8, s26
	s_cselect_b64 s[26:27], -1, 0
	s_subb_u32 s43, s35, s25
	s_sub_u32 s35, s8, s24
	s_cselect_b64 s[38:39], -1, 0
	s_subb_u32 s41, s43, 0
	s_cmp_ge_u32 s41, s25
	s_cselect_b32 s42, -1, 0
	s_cmp_ge_u32 s35, s24
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s41, s25
	s_cselect_b32 s42, s44, s42
	s_cmp_lg_u64 s[38:39], 0
	s_subb_u32 s38, s43, s25
	s_sub_u32 s39, s35, s24
	s_subb_u32 s38, s38, 0
	s_cmp_lg_u32 s42, 0
	s_cselect_b32 s35, s39, s35
	s_cselect_b32 s38, s38, s41
	s_cmp_lg_u64 s[26:27], 0
	s_subb_u32 s9, s9, s40
	s_cmp_ge_u32 s9, s25
	s_cselect_b32 s26, -1, 0
	s_cmp_ge_u32 s8, s24
	s_cselect_b32 s24, -1, 0
	s_cmp_eq_u32 s9, s25
	s_cselect_b32 s24, s24, s26
	s_cmp_lg_u32 s24, 0
	s_cselect_b32 s9, s38, s9
	s_cselect_b32 s8, s35, s8
	s_xor_b64 s[8:9], s[8:9], s[22:23]
	s_sub_u32 s22, s8, s22
	s_load_dwordx2 s[8:9], s[0:1], 0x40
	v_cvt_f32_u32_e32 v19, s10
	s_cbranch_execnz .LBB0_8
.LBB0_7:
	.loc	1 363 77 is_stmt 1              ; moe_op_gemm_a8w4.py:363:77
	v_rcp_iflag_f32_e32 v0, v19
	s_sub_i32 s17, 0, s10
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_nop 0
	v_readfirstlane_b32 s16, v0
	s_mul_i32 s17, s17, s16
	s_mul_hi_u32 s17, s16, s17
	s_add_i32 s16, s16, s17
	s_mul_hi_u32 s16, s3, s16
	s_mul_i32 s16, s16, s10
	s_sub_i32 s3, s3, s16
	s_sub_i32 s16, s3, s10
	s_cmp_ge_u32 s3, s10
	s_cselect_b32 s3, s16, s3
	s_sub_i32 s16, s3, s10
	s_cmp_ge_u32 s3, s10
	s_cselect_b32 s22, s16, s3
.LBB0_8:
	.loc	1 340 46                        ; moe_op_gemm_a8w4.py:340:46
	v_lshlrev_b32_e32 v137, 2, v18
	.loc	1 353 26                        ; moe_op_gemm_a8w4.py:353:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v139, v141, s8
	.loc	1 371 10                        ; moe_op_gemm_a8w4.py:371:10
	v_add_u32_e32 v0, v139, v137
	.loc	1 372 10                        ; moe_op_gemm_a8w4.py:372:10
	s_mul_i32 s35, s9, s2
	v_add_u32_e32 v1, s35, v0
	s_mul_i32 s40, s9, s22
	.loc	1 414 24                        ; moe_op_gemm_a8w4.py:414:24
	v_bfrev_b32_e32 v18, 1
	.loc	1 372 10                        ; moe_op_gemm_a8w4.py:372:10
	v_add_u32_e32 v0, s40, v0
	s_mov_b32 s39, 0x27000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 414 24                        ; moe_op_gemm_a8w4.py:414:24
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e64 v1, v18, v1, s[6:7]
	v_cndmask_b32_e64 v0, v18, v0, s[6:7]
	buffer_load_dword v147, v1, s[36:39], 0 offen
	buffer_load_dword v135, v0, s[36:39], 0 offen
	.loc	1 376 23                        ; moe_op_gemm_a8w4.py:376:23
	s_lshl_b64 s[22:23], s[18:19], 9
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_or_b64 s[16:17], s[22:23], s[10:11]
	s_mov_b32 s2, 0
	s_mov_b32 s3, s17
	.loc	1 376 55                        ; moe_op_gemm_a8w4.py:376:55
	v_lshrrev_b32_e32 v22, 3, v176
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[2:3], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v20, s22, v22
	v_mov_b32_e32 v21, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[8:9], -1, 0
                                        ; implicit-def: $vgpr18_vgpr19
	s_and_saveexec_b64 s[24:25], s[8:9]
	s_xor_b64 s[24:25], exec, s[24:25]
	s_cbranch_execz .LBB0_10
; %bb.9:
	s_ashr_i32 s8, s11, 31
	s_add_u32 s26, s10, s8
	s_mov_b32 s9, s8
	s_addc_u32 s27, s11, s8
	s_xor_b64 s[26:27], s[26:27], s[8:9]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s9, 0, s27
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
	v_readfirstlane_b32 s3, v0
	s_mul_i32 s41, s45, s8
	s_mul_hi_u32 s42, s45, s3
	s_mul_i32 s16, s9, s3
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s16
	s_mul_i32 s44, s45, s3
	s_mul_i32 s41, s3, s42
	s_mul_hi_u32 s43, s3, s44
	s_mul_hi_u32 s16, s3, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s16
	s_mul_hi_u32 s41, s8, s44
	s_mul_i32 s44, s8, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s16, s8, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s16, s16, 0
	s_mul_i32 s42, s8, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s16, 0, s16
	s_add_u32 s3, s3, s41
	s_addc_u32 s8, s8, s16
	s_mul_i32 s16, s45, s8
	s_mul_hi_u32 s41, s45, s3
	s_add_i32 s41, s41, s16
	s_mul_i32 s9, s9, s3
	s_add_i32 s41, s41, s9
	s_mul_i32 s45, s45, s3
	s_mul_hi_u32 s16, s8, s45
	s_mul_i32 s43, s8, s45
	s_mul_i32 s44, s3, s41
	s_mul_hi_u32 s45, s3, s45
	s_mul_hi_u32 s42, s3, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s9, s8, s41
	s_addc_u32 s16, s42, s16
	s_addc_u32 s9, s9, 0
	s_mul_i32 s41, s8, s41
	s_add_u32 s16, s16, s41
	v_ashrrev_i32_e32 v0, 31, v21
	s_addc_u32 s9, 0, s9
	v_mov_b32_e32 v1, v0
	s_add_u32 s3, s3, s16
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[0:1]
	s_addc_u32 s16, s8, s9
	v_xor_b32_e32 v21, v18, v0
	v_xor_b32_e32 v23, v19, v0
	v_mad_u64_u32 v[18:19], s[8:9], v21, s16, 0
	v_mul_hi_u32 v24, v21, s3
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[18:19]
	v_mad_u64_u32 v[26:27], s[8:9], v23, s3, 0
	v_add_co_u32_e32 v1, vcc, v24, v26
	v_mad_u64_u32 v[18:19], s[8:9], v23, s16, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v25, v27, vcc
	v_mov_b32_e32 v25, s2
	s_nop 0
	v_addc_co_u32_e32 v19, vcc, 0, v19, vcc
	v_lshl_add_u64 v[18:19], v[24:25], 0, v[18:19]
	v_mul_lo_u32 v1, s27, v18
	v_mul_lo_u32 v24, s26, v19
	v_mad_u64_u32 v[18:19], s[2:3], s26, v18, 0
	v_add3_u32 v24, v19, v24, v1
	v_sub_u32_e32 v1, v23, v24
	v_mov_b32_e32 v25, s27
	v_sub_co_u32_e32 v18, vcc, v21, v18
	s_nop 1
	v_subb_co_u32_e64 v21, s[2:3], v1, v25, vcc
	v_subrev_co_u32_e64 v19, s[2:3], s26, v18
	v_subb_co_u32_e32 v23, vcc, v23, v24, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v21, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v25, s[2:3], v21, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v26, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v19
	v_subrev_co_u32_e64 v21, s[2:3], s26, v19
	s_nop 0
	v_cndmask_b32_e64 v27, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v25, s[2:3], 0, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v26, v26, v27, s[8:9]
	v_cmp_le_u32_e32 vcc, s27, v23
	v_cmp_ne_u32_e64 s[2:3], 0, v26
	s_nop 0
	v_cndmask_b32_e64 v24, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v18
	v_cndmask_b32_e64 v1, v1, v25, s[2:3]
	v_cndmask_b32_e64 v19, v19, v21, s[2:3]
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v23
	s_nop 1
	v_cndmask_b32_e32 v24, v24, v25, vcc
	v_cmp_ne_u32_e32 vcc, 0, v24
	s_nop 1
	v_cndmask_b32_e32 v18, v18, v19, vcc
	v_cndmask_b32_e32 v1, v23, v1, vcc
	v_xor_b32_e32 v18, v18, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v18, vcc, v18, v0
	s_nop 1
	v_subb_co_u32_e32 v19, vcc, v1, v0, vcc
.LBB0_10:                               ; %Flow338
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v19, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v20, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v20, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v18, v0, v1, vcc
.LBB0_12:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	s_mov_b32 s16, 0
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or3_b32 v24, v22, s22, 64
	v_mov_b32_e32 v25, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr22_vgpr23
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_14
; %bb.13:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s3, 0, s27
	v_fmamk_f32 v0, v1, 0x4f800000, v0
	v_rcp_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x5f7ffffc, v0
	v_mul_f32_e32 v1, 0x2f800000, v0
	v_trunc_f32_e32 v1, v1
	v_fmamk_f32 v0, v1, 0xcf800000, v0
	v_cvt_u32_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s41, s45, s2
	s_mul_hi_u32 s42, s45, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s9
	s_mul_i32 s44, s45, s8
	s_mul_i32 s41, s8, s42
	s_mul_hi_u32 s43, s8, s44
	s_mul_hi_u32 s9, s8, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s9
	s_mul_hi_u32 s41, s2, s44
	s_mul_i32 s44, s2, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s9, s2, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s9, s9, 0
	s_mul_i32 s42, s2, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s41
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s45, s2
	s_mul_hi_u32 s41, s45, s8
	s_add_i32 s41, s41, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s41, s41, s3
	s_mul_i32 s45, s45, s8
	s_mul_hi_u32 s9, s2, s45
	s_mul_i32 s43, s2, s45
	s_mul_i32 s44, s8, s41
	s_mul_hi_u32 s45, s8, s45
	s_mul_hi_u32 s42, s8, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s3, s2, s41
	s_addc_u32 s9, s42, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s9, s9, s41
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v21, v22, v0
	v_xor_b32_e32 v28, v23, v0
	v_mad_u64_u32 v[22:23], s[2:3], v21, s9, 0
	v_mul_hi_u32 v24, v21, s8
	v_mov_b32_e32 v25, 0
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[22:23]
	v_mad_u64_u32 v[26:27], s[2:3], v28, s8, 0
	v_add_co_u32_e32 v1, vcc, v24, v26
	v_mad_u64_u32 v[22:23], s[2:3], v28, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v25, v27, vcc
	v_mov_b32_e32 v25, s16
	s_nop 0
	v_addc_co_u32_e32 v23, vcc, 0, v23, vcc
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[22:23]
	v_mul_lo_u32 v1, s27, v22
	v_mul_lo_u32 v24, s26, v23
	v_mad_u64_u32 v[22:23], s[2:3], s26, v22, 0
	v_add3_u32 v24, v23, v24, v1
	v_sub_u32_e32 v1, v28, v24
	v_mov_b32_e32 v25, s27
	v_sub_co_u32_e32 v21, vcc, v21, v22
	s_nop 1
	v_subb_co_u32_e64 v23, s[2:3], v1, v25, vcc
	v_subrev_co_u32_e64 v22, s[2:3], s26, v21
	v_subb_co_u32_e32 v24, vcc, v28, v24, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v23, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v25, s[2:3], v23, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v26, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v22
	v_subrev_co_u32_e64 v23, s[2:3], s26, v22
	s_nop 0
	v_cndmask_b32_e64 v27, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v25, s[2:3], 0, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v26, v26, v27, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v26
	v_cmp_le_u32_e32 vcc, s27, v24
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v25, s[2:3]
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v21
	v_cndmask_b32_e64 v22, v22, v23, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v26, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v24
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v26, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v22, vcc
	v_cndmask_b32_e32 v1, v24, v1, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v22, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v23, vcc, v1, v0, vcc
.LBB0_14:                               ; %Flow337
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v23, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v22, v0, v1, vcc
.LBB0_16:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v24, 0x80, v20
	v_mov_b32_e32 v25, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr26_vgpr27
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_18
; %bb.17:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s3, 0, s27
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
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s41, s45, s2
	s_mul_hi_u32 s42, s45, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s9
	s_mul_i32 s44, s45, s8
	s_mul_i32 s41, s8, s42
	s_mul_hi_u32 s43, s8, s44
	s_mul_hi_u32 s9, s8, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s9
	s_mul_hi_u32 s41, s2, s44
	s_mul_i32 s44, s2, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s9, s2, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s9, s9, 0
	s_mul_i32 s42, s2, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s41
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s45, s2
	s_mul_hi_u32 s41, s45, s8
	s_add_i32 s41, s41, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s41, s41, s3
	s_mul_i32 s45, s45, s8
	s_mul_hi_u32 s9, s2, s45
	s_mul_i32 s43, s2, s45
	s_mul_i32 s44, s8, s41
	s_mul_hi_u32 s45, s8, s45
	s_mul_hi_u32 s42, s8, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s3, s2, s41
	s_addc_u32 s9, s42, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s9, s9, s41
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v30, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s9, 0
	v_mul_hi_u32 v26, v21, s8
	v_lshl_add_u64 v[26:27], v[26:27], 0, v[24:25]
	v_mad_u64_u32 v[28:29], s[2:3], v30, s8, 0
	v_add_co_u32_e32 v1, vcc, v26, v28
	v_mad_u64_u32 v[24:25], s[2:3], v30, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v26, vcc, v27, v29, vcc
	v_mov_b32_e32 v27, s16
	s_nop 0
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[24:25], v[26:27], 0, v[24:25]
	v_mul_lo_u32 v1, s27, v24
	v_mul_lo_u32 v26, s26, v25
	v_mad_u64_u32 v[24:25], s[2:3], s26, v24, 0
	v_add3_u32 v26, v25, v26, v1
	v_sub_u32_e32 v1, v30, v26
	v_mov_b32_e32 v27, s27
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v25, s[2:3], v1, v27, vcc
	v_subrev_co_u32_e64 v24, s[2:3], s26, v21
	v_subb_co_u32_e32 v26, vcc, v30, v26, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v25, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v27, s[2:3], v25, v27, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v28, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v24
	v_subrev_co_u32_e64 v25, s[2:3], s26, v24
	s_nop 0
	v_cndmask_b32_e64 v29, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v27, s[2:3], 0, v27, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v28, v28, v29, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v28
	v_cmp_le_u32_e32 vcc, s27, v26
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v27, s[2:3]
	v_cndmask_b32_e64 v27, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v21
	v_cndmask_b32_e64 v24, v24, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v28, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v26
	s_nop 1
	v_cndmask_b32_e32 v27, v27, v28, vcc
	v_cmp_ne_u32_e32 vcc, 0, v27
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_cndmask_b32_e32 v1, v26, v1, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v26, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v27, vcc, v1, v0, vcc
.LBB0_18:                               ; %Flow336
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v27, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v26, v0, v1, vcc
.LBB0_20:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v24, 0xc0, v20
	v_mov_b32_e32 v25, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr28_vgpr29
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_22
; %bb.21:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s3, 0, s27
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
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s41, s45, s2
	s_mul_hi_u32 s42, s45, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s9
	s_mul_i32 s44, s45, s8
	s_mul_i32 s41, s8, s42
	s_mul_hi_u32 s43, s8, s44
	s_mul_hi_u32 s9, s8, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s9
	s_mul_hi_u32 s41, s2, s44
	s_mul_i32 s44, s2, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s9, s2, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s9, s9, 0
	s_mul_i32 s42, s2, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s41
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s45, s2
	s_mul_hi_u32 s41, s45, s8
	s_add_i32 s41, s41, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s41, s41, s3
	s_mul_i32 s45, s45, s8
	s_mul_hi_u32 s9, s2, s45
	s_mul_i32 s43, s2, s45
	s_mul_i32 s44, s8, s41
	s_mul_hi_u32 s45, s8, s45
	s_mul_hi_u32 s42, s8, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s3, s2, s41
	s_addc_u32 s9, s42, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s9, s9, s41
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v32, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s9, 0
	v_mul_hi_u32 v28, v21, s8
	v_lshl_add_u64 v[28:29], v[28:29], 0, v[24:25]
	v_mad_u64_u32 v[30:31], s[2:3], v32, s8, 0
	v_add_co_u32_e32 v1, vcc, v28, v30
	v_mad_u64_u32 v[24:25], s[2:3], v32, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v28, vcc, v29, v31, vcc
	v_mov_b32_e32 v29, s16
	s_nop 0
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[24:25], v[28:29], 0, v[24:25]
	v_mul_lo_u32 v1, s27, v24
	v_mul_lo_u32 v28, s26, v25
	v_mad_u64_u32 v[24:25], s[2:3], s26, v24, 0
	v_add3_u32 v28, v25, v28, v1
	v_sub_u32_e32 v1, v32, v28
	v_mov_b32_e32 v29, s27
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v25, s[2:3], v1, v29, vcc
	v_subrev_co_u32_e64 v24, s[2:3], s26, v21
	v_subb_co_u32_e32 v28, vcc, v32, v28, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v25, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v29, s[2:3], v25, v29, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v30, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v24
	v_subrev_co_u32_e64 v25, s[2:3], s26, v24
	s_nop 0
	v_cndmask_b32_e64 v31, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v29, s[2:3], 0, v29, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v30, v30, v31, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v30
	v_cmp_le_u32_e32 vcc, s27, v28
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v29, s[2:3]
	v_cndmask_b32_e64 v29, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v21
	v_cndmask_b32_e64 v24, v24, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v30, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v28
	s_nop 1
	v_cndmask_b32_e32 v29, v29, v30, vcc
	v_cmp_ne_u32_e32 vcc, 0, v29
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_cndmask_b32_e32 v1, v28, v1, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v28, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v29, vcc, v1, v0, vcc
.LBB0_22:                               ; %Flow335
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v29, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v28, v0, v1, vcc
.LBB0_24:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v24, 0x100, v20
	v_mov_b32_e32 v25, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr34_vgpr35
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_26
; %bb.25:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s3, 0, s27
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
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s41, s45, s2
	s_mul_hi_u32 s42, s45, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s9
	s_mul_i32 s44, s45, s8
	s_mul_i32 s41, s8, s42
	s_mul_hi_u32 s43, s8, s44
	s_mul_hi_u32 s9, s8, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s9
	s_mul_hi_u32 s41, s2, s44
	s_mul_i32 s44, s2, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s9, s2, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s9, s9, 0
	s_mul_i32 s42, s2, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s41
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s45, s2
	s_mul_hi_u32 s41, s45, s8
	s_add_i32 s41, s41, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s41, s41, s3
	s_mul_i32 s45, s45, s8
	s_mul_hi_u32 s9, s2, s45
	s_mul_i32 s43, s2, s45
	s_mul_i32 s44, s8, s41
	s_mul_hi_u32 s45, s8, s45
	s_mul_hi_u32 s42, s8, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s3, s2, s41
	s_addc_u32 s9, s42, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s9, s9, s41
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v34, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s9, 0
	v_mul_hi_u32 v30, v21, s8
	v_lshl_add_u64 v[30:31], v[30:31], 0, v[24:25]
	v_mad_u64_u32 v[32:33], s[2:3], v34, s8, 0
	v_add_co_u32_e32 v1, vcc, v30, v32
	v_mad_u64_u32 v[24:25], s[2:3], v34, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v31, v33, vcc
	v_mov_b32_e32 v31, s16
	s_nop 0
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[24:25]
	v_mul_lo_u32 v1, s27, v24
	v_mul_lo_u32 v30, s26, v25
	v_mad_u64_u32 v[24:25], s[2:3], s26, v24, 0
	v_add3_u32 v30, v25, v30, v1
	v_sub_u32_e32 v1, v34, v30
	v_mov_b32_e32 v31, s27
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v25, s[2:3], v1, v31, vcc
	v_subrev_co_u32_e64 v24, s[2:3], s26, v21
	v_subb_co_u32_e32 v30, vcc, v34, v30, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v25, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v31, s[2:3], v25, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v24
	v_subrev_co_u32_e64 v25, s[2:3], s26, v24
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v31, s[2:3], 0, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, v32, v33, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v32
	v_cmp_le_u32_e32 vcc, s27, v30
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v31, s[2:3]
	v_cndmask_b32_e64 v31, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v21
	v_cndmask_b32_e64 v24, v24, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v30
	s_nop 1
	v_cndmask_b32_e32 v31, v31, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v31
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_cndmask_b32_e32 v1, v30, v1, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v34, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v35, vcc, v1, v0, vcc
.LBB0_26:                               ; %Flow334
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v35, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v34, v0, v1, vcc
.LBB0_28:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v24, 0x140, v20
	v_mov_b32_e32 v25, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr36_vgpr37
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_30
; %bb.29:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s3, 0, s27
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
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s41, s45, s2
	s_mul_hi_u32 s42, s45, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s9
	s_mul_i32 s44, s45, s8
	s_mul_i32 s41, s8, s42
	s_mul_hi_u32 s43, s8, s44
	s_mul_hi_u32 s9, s8, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s9
	s_mul_hi_u32 s41, s2, s44
	s_mul_i32 s44, s2, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s9, s2, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s9, s9, 0
	s_mul_i32 s42, s2, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s41
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s45, s2
	s_mul_hi_u32 s41, s45, s8
	s_add_i32 s41, s41, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s41, s41, s3
	s_mul_i32 s45, s45, s8
	s_mul_hi_u32 s9, s2, s45
	s_mul_i32 s43, s2, s45
	s_mul_i32 s44, s8, s41
	s_mul_hi_u32 s45, s8, s45
	s_mul_hi_u32 s42, s8, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s3, s2, s41
	s_addc_u32 s9, s42, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s9, s9, s41
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v36, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s9, 0
	v_mul_hi_u32 v30, v21, s8
	v_lshl_add_u64 v[30:31], v[30:31], 0, v[24:25]
	v_mad_u64_u32 v[32:33], s[2:3], v36, s8, 0
	v_add_co_u32_e32 v1, vcc, v30, v32
	v_mad_u64_u32 v[24:25], s[2:3], v36, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v31, v33, vcc
	v_mov_b32_e32 v31, s16
	s_nop 0
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[24:25]
	v_mul_lo_u32 v1, s27, v24
	v_mul_lo_u32 v30, s26, v25
	v_mad_u64_u32 v[24:25], s[2:3], s26, v24, 0
	v_add3_u32 v30, v25, v30, v1
	v_sub_u32_e32 v1, v36, v30
	v_mov_b32_e32 v31, s27
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v25, s[2:3], v1, v31, vcc
	v_subrev_co_u32_e64 v24, s[2:3], s26, v21
	v_subb_co_u32_e32 v30, vcc, v36, v30, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v25, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v31, s[2:3], v25, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v24
	v_subrev_co_u32_e64 v25, s[2:3], s26, v24
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v31, s[2:3], 0, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, v32, v33, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v32
	v_cmp_le_u32_e32 vcc, s27, v30
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v31, s[2:3]
	v_cndmask_b32_e64 v31, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v21
	v_cndmask_b32_e64 v24, v24, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v30
	s_nop 1
	v_cndmask_b32_e32 v31, v31, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v31
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_cndmask_b32_e32 v1, v30, v1, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v36, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v37, vcc, v1, v0, vcc
.LBB0_30:                               ; %Flow333
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v37, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v36, v0, v1, vcc
.LBB0_32:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v24, 0x180, v20
	v_mov_b32_e32 v25, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr42_vgpr43
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_34
; %bb.33:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s45, 0, s26
	s_subb_u32 s3, 0, s27
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
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s41, s45, s2
	s_mul_hi_u32 s42, s45, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s42, s42, s41
	s_add_i32 s42, s42, s9
	s_mul_i32 s44, s45, s8
	s_mul_i32 s41, s8, s42
	s_mul_hi_u32 s43, s8, s44
	s_mul_hi_u32 s9, s8, s42
	s_add_u32 s46, s43, s41
	s_addc_u32 s43, 0, s9
	s_mul_hi_u32 s41, s2, s44
	s_mul_i32 s44, s2, s44
	s_add_u32 s44, s46, s44
	s_mul_hi_u32 s9, s2, s42
	s_addc_u32 s41, s43, s41
	s_addc_u32 s9, s9, 0
	s_mul_i32 s42, s2, s42
	s_add_u32 s41, s41, s42
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s41
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s45, s2
	s_mul_hi_u32 s41, s45, s8
	s_add_i32 s41, s41, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s41, s41, s3
	s_mul_i32 s45, s45, s8
	s_mul_hi_u32 s9, s2, s45
	s_mul_i32 s43, s2, s45
	s_mul_i32 s44, s8, s41
	s_mul_hi_u32 s45, s8, s45
	s_mul_hi_u32 s42, s8, s41
	s_add_u32 s44, s45, s44
	s_addc_u32 s42, 0, s42
	s_add_u32 s43, s44, s43
	s_mul_hi_u32 s3, s2, s41
	s_addc_u32 s9, s42, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s9, s9, s41
	v_ashrrev_i32_e32 v0, 31, v25
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v21, v24, v0
	v_xor_b32_e32 v38, v25, v0
	v_mad_u64_u32 v[24:25], s[2:3], v21, s9, 0
	v_mul_hi_u32 v30, v21, s8
	v_lshl_add_u64 v[30:31], v[30:31], 0, v[24:25]
	v_mad_u64_u32 v[32:33], s[2:3], v38, s8, 0
	v_add_co_u32_e32 v1, vcc, v30, v32
	v_mad_u64_u32 v[24:25], s[2:3], v38, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v31, v33, vcc
	v_mov_b32_e32 v31, s16
	s_nop 0
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[24:25], v[30:31], 0, v[24:25]
	v_mul_lo_u32 v1, s27, v24
	v_mul_lo_u32 v30, s26, v25
	v_mad_u64_u32 v[24:25], s[2:3], s26, v24, 0
	v_add3_u32 v30, v25, v30, v1
	v_sub_u32_e32 v1, v38, v30
	v_mov_b32_e32 v31, s27
	v_sub_co_u32_e32 v21, vcc, v21, v24
	s_nop 1
	v_subb_co_u32_e64 v25, s[2:3], v1, v31, vcc
	v_subrev_co_u32_e64 v24, s[2:3], s26, v21
	v_subb_co_u32_e32 v30, vcc, v38, v30, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v25, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v31, s[2:3], v25, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v24
	v_subrev_co_u32_e64 v25, s[2:3], s26, v24
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v31, s[2:3], 0, v31, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, v32, v33, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v32
	v_cmp_le_u32_e32 vcc, s27, v30
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v31, s[2:3]
	v_cndmask_b32_e64 v31, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v21
	v_cndmask_b32_e64 v24, v24, v25, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v30
	s_nop 1
	v_cndmask_b32_e32 v31, v31, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v31
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_cndmask_b32_e32 v1, v30, v1, vcc
	v_xor_b32_e32 v21, v21, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v42, vcc, v21, v0
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v43, vcc, v1, v0, vcc
.LBB0_34:                               ; %Flow332
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_saveexec_b64 s[2:3], s[24:25]
	v_cvt_f32_u32_e32 v21, s10
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_rcp_iflag_f32_e32 v0, v21
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v43, 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v24, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v24, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v42, v0, v1, vcc
.LBB0_36:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	s_cmp_lg_u64 s[16:17], 0
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v20, 0x1c0, v20
	v_mov_b32_e32 v21, s23
	.loc	1 378 35                        ; moe_op_gemm_a8w4.py:378:35
	s_cselect_b64 s[2:3], -1, 0
                                        ; implicit-def: $vgpr44_vgpr45
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[24:25], exec, s[8:9]
	s_cbranch_execz .LBB0_38
; %bb.37:
	s_ashr_i32 s2, s11, 31
	s_add_u32 s8, s10, s2
	s_mov_b32 s3, s2
	s_addc_u32 s9, s11, s2
	s_xor_b64 s[26:27], s[8:9], s[2:3]
	v_cvt_f32_u32_e32 v0, s26
	v_cvt_f32_u32_e32 v1, s27
	s_sub_u32 s44, 0, s26
	s_subb_u32 s3, 0, s27
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
	v_readfirstlane_b32 s2, v1
	v_readfirstlane_b32 s8, v0
	s_mul_i32 s17, s44, s2
	s_mul_hi_u32 s41, s44, s8
	s_mul_i32 s9, s3, s8
	s_add_i32 s41, s41, s17
	s_add_i32 s41, s41, s9
	s_mul_i32 s43, s44, s8
	s_mul_i32 s17, s8, s41
	s_mul_hi_u32 s42, s8, s43
	s_mul_hi_u32 s9, s8, s41
	s_add_u32 s45, s42, s17
	s_addc_u32 s42, 0, s9
	s_mul_hi_u32 s17, s2, s43
	s_mul_i32 s43, s2, s43
	s_add_u32 s43, s45, s43
	s_mul_hi_u32 s9, s2, s41
	s_addc_u32 s17, s42, s17
	s_addc_u32 s9, s9, 0
	s_mul_i32 s41, s2, s41
	s_add_u32 s17, s17, s41
	s_addc_u32 s9, 0, s9
	s_add_u32 s8, s8, s17
	s_addc_u32 s2, s2, s9
	s_mul_i32 s9, s44, s2
	s_mul_hi_u32 s17, s44, s8
	s_add_i32 s17, s17, s9
	s_mul_i32 s3, s3, s8
	s_add_i32 s17, s17, s3
	s_mul_i32 s44, s44, s8
	s_mul_hi_u32 s9, s2, s44
	s_mul_i32 s42, s2, s44
	s_mul_i32 s43, s8, s17
	s_mul_hi_u32 s44, s8, s44
	s_mul_hi_u32 s41, s8, s17
	s_add_u32 s43, s44, s43
	s_addc_u32 s41, 0, s41
	s_add_u32 s42, s43, s42
	s_mul_hi_u32 s3, s2, s17
	s_addc_u32 s9, s41, s9
	s_addc_u32 s3, s3, 0
	s_mul_i32 s17, s2, s17
	s_add_u32 s9, s9, s17
	v_ashrrev_i32_e32 v0, 31, v21
	s_addc_u32 s3, 0, s3
	v_mov_b32_e32 v1, v0
	s_add_u32 s8, s8, s9
	v_lshl_add_u64 v[20:21], v[20:21], 0, v[0:1]
	s_addc_u32 s9, s2, s3
	v_xor_b32_e32 v33, v20, v0
	v_xor_b32_e32 v32, v21, v0
	v_mad_u64_u32 v[20:21], s[2:3], v33, s9, 0
	v_mul_hi_u32 v24, v33, s8
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[20:21]
	v_mad_u64_u32 v[30:31], s[2:3], v32, s8, 0
	v_add_co_u32_e32 v1, vcc, v24, v30
	v_mad_u64_u32 v[20:21], s[2:3], v32, s9, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v25, v31, vcc
	v_mov_b32_e32 v25, s16
	s_nop 0
	v_addc_co_u32_e32 v21, vcc, 0, v21, vcc
	v_lshl_add_u64 v[20:21], v[24:25], 0, v[20:21]
	v_mul_lo_u32 v1, s27, v20
	v_mul_lo_u32 v24, s26, v21
	v_mad_u64_u32 v[20:21], s[2:3], s26, v20, 0
	v_add3_u32 v25, v21, v24, v1
	v_sub_u32_e32 v1, v32, v25
	v_mov_b32_e32 v30, s27
	v_sub_co_u32_e32 v20, vcc, v33, v20
	s_nop 1
	v_subb_co_u32_e64 v24, s[2:3], v1, v30, vcc
	v_subrev_co_u32_e64 v21, s[2:3], s26, v20
	v_subb_co_u32_e32 v25, vcc, v32, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v1, s[8:9], 0, v24, s[2:3]
	v_cmp_le_u32_e64 s[8:9], s27, v1
	v_subb_co_u32_e64 v30, s[2:3], v24, v30, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v31, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s26, v21
	v_subrev_co_u32_e64 v24, s[2:3], s26, v21
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s27, v1
	v_subbrev_co_u32_e64 v30, s[2:3], 0, v30, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v31, v31, v33, s[8:9]
	v_cmp_ne_u32_e64 s[2:3], 0, v31
	v_cmp_le_u32_e32 vcc, s27, v25
	s_nop 0
	v_cndmask_b32_e64 v1, v1, v30, s[2:3]
	v_cndmask_b32_e64 v30, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s26, v20
	v_cndmask_b32_e64 v21, v21, v24, s[2:3]
	s_nop 0
	v_cndmask_b32_e64 v31, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s27, v25
	s_nop 1
	v_cndmask_b32_e32 v30, v30, v31, vcc
	v_cmp_ne_u32_e32 vcc, 0, v30
	s_nop 1
	v_cndmask_b32_e32 v20, v20, v21, vcc
	v_cndmask_b32_e32 v1, v25, v1, vcc
	v_xor_b32_e32 v20, v20, v0
	v_xor_b32_e32 v1, v1, v0
	v_sub_co_u32_e32 v44, vcc, v20, v0
                                        ; implicit-def: $vgpr20_vgpr21
	s_nop 1
	v_subb_co_u32_e32 v45, vcc, v1, v0, vcc
.LBB0_38:                               ; %Flow331
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_andn2_saveexec_b64 s[2:3], s[24:25]
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 378 35 is_stmt 1              ; moe_op_gemm_a8w4.py:378:35
	v_cvt_f32_u32_e32 v0, s10
	s_sub_i32 s8, 0, s10
	v_mov_b32_e32 v45, 0
	v_rcp_iflag_f32_e32 v0, v0
	s_nop 0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v1, s8, v0
	v_mul_hi_u32 v1, v0, v1
	v_add_u32_e32 v0, v0, v1
	v_mul_hi_u32 v0, v20, v0
	v_mul_lo_u32 v0, v0, s10
	v_sub_u32_e32 v0, v20, v0
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v0, v0, v1, vcc
	v_subrev_u32_e32 v1, s10, v0
	v_cmp_le_u32_e32 vcc, s10, v0
	s_nop 1
	v_cndmask_b32_e32 v44, v0, v1, vcc
.LBB0_40:
	.loc	1 0 35 is_stmt 0                ; moe_op_gemm_a8w4.py:0:35
	s_or_b64 exec, exec, s[2:3]
	.loc	1 332 49 is_stmt 1              ; moe_op_gemm_a8w4.py:332:49
	v_lshlrev_b32_e32 v0, 4, v145
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	s_ashr_i32 s8, s15, 31
	.loc	1 332 49                        ; moe_op_gemm_a8w4.py:332:49
	v_and_b32_e32 v166, 0x70, v0
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v19, s15
	v_mul_lo_u32 v1, v18, s8
	v_mad_u64_u32 v[170:171], s[2:3], v18, s15, 0
	.loc	1 332 36                        ; moe_op_gemm_a8w4.py:332:36
	v_mov_b32_e32 v167, 0
	.loc	1 382 19                        ; moe_op_gemm_a8w4.py:382:19
	v_mul_hi_i32 v169, v141, s14
	v_mul_lo_u32 v168, v141, s14
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_add3_u32 v171, v171, v1, v0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	v_cndmask_b32_e64 v0, 0, 1, s[6:7]
	.loc	1 382 9                         ; moe_op_gemm_a8w4.py:382:9
	v_lshl_add_u64 v[50:51], s[12:13], 0, v[168:169]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	v_cmp_ne_u32_e64 s[2:3], 1, v0
	s_andn2_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v18, v167
	v_mov_b32_e32 v19, v167
	v_mov_b32_e32 v20, v167
	v_mov_b32_e32 v21, v167
	s_cbranch_vccnz .LBB0_42
; %bb.41:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[170:171]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[18:21], v[0:1], off
.LBB0_42:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v23, s15
	v_mul_lo_u32 v1, v22, s8
	v_mad_u64_u32 v[164:165], s[6:7], v22, s15, 0
	v_add3_u32 v165, v165, v1, v0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v22, v167
	v_mov_b32_e32 v23, v167
	v_mov_b32_e32 v24, v167
	v_mov_b32_e32 v25, v167
	s_cbranch_vccnz .LBB0_44
; %bb.43:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[164:165]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[22:25], v[0:1], off
.LBB0_44:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v27, s15
	v_mul_lo_u32 v1, v26, s8
	v_mad_u64_u32 v[162:163], s[6:7], v26, s15, 0
	v_add3_u32 v163, v163, v1, v0
	v_mov_b32_e32 v26, 0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v33, 0
	s_cbranch_vccnz .LBB0_46
; %bb.45:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[162:163]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[30:33], v[0:1], off
.LBB0_46:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v29, s15
	v_mul_lo_u32 v1, v28, s8
	v_mad_u64_u32 v[160:161], s[6:7], v28, s15, 0
	v_add3_u32 v161, v161, v1, v0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v29, 0
	s_cbranch_vccnz .LBB0_48
; %bb.47:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[160:161]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[26:29], v[0:1], off
.LBB0_48:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v35, s15
	v_mul_lo_u32 v1, v34, s8
	v_mad_u64_u32 v[158:159], s[6:7], v34, s15, 0
	v_add3_u32 v159, v159, v1, v0
	v_mov_b32_e32 v34, 0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v41, 0
	s_cbranch_vccnz .LBB0_50
; %bb.49:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[158:159]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[38:41], v[0:1], off
.LBB0_50:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v37, s15
	v_mul_lo_u32 v1, v36, s8
	v_mad_u64_u32 v[156:157], s[6:7], v36, s15, 0
	v_add3_u32 v157, v157, v1, v0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v37, 0
	s_cbranch_vccnz .LBB0_52
; %bb.51:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[156:157]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[34:37], v[0:1], off
.LBB0_52:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v43, s15
	v_mul_lo_u32 v1, v42, s8
	v_mad_u64_u32 v[154:155], s[6:7], v42, s15, 0
	v_add3_u32 v155, v155, v1, v0
	v_mov_b32_e32 v42, 0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v49, 0
	s_cbranch_vccnz .LBB0_54
; %bb.53:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[154:155]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[46:49], v[0:1], off
.LBB0_54:
	.loc	1 385 45                        ; moe_op_gemm_a8w4.py:385:45
	v_mul_lo_u32 v0, v45, s15
	v_mul_lo_u32 v1, v44, s8
	v_mad_u64_u32 v[152:153], s[6:7], v44, s15, 0
	v_add3_u32 v153, v153, v1, v0
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_and_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v45, 0
	s_cbranch_vccnz .LBB0_56
; %bb.55:
	.loc	1 384 8                         ; moe_op_gemm_a8w4.py:384:8
	v_lshl_add_u64 v[0:1], v[50:51], 0, v[152:153]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[42:45], v[0:1], off
.LBB0_56:
	.loc	1 0 20 is_stmt 0                ; moe_op_gemm_a8w4.py:0:20
	s_load_dwordx4 s[24:27], s[0:1], 0x48
	s_load_dwordx2 s[16:17], s[0:1], 0x58
	.loc	1 405 20 is_stmt 1              ; moe_op_gemm_a8w4.py:405:20
	v_lshlrev_b32_e32 v0, 4, v176
	s_movk_i32 s6, 0xf0
	v_bitop3_b32 v149, v0, v176, s6 bitop3:0x78
	s_movk_i32 s6, 0x70
	v_add_u32_e32 v1, 0, v149
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	v_bitop3_b32 v0, v0, v176, s6 bitop3:0x78
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_add_u32_e32 v1, 0x10000, v1
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	v_add_u32_e32 v177, 0, v0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_mov_b32 s8, 0
	s_waitcnt vmcnt(5)
	ds_write_b128 v1, v[2:5]
	s_waitcnt vmcnt(4)
	ds_write_b128 v1, v[6:9] offset:8192
	s_waitcnt vmcnt(3)
	ds_write_b128 v1, v[10:13] offset:16384
	s_waitcnt vmcnt(2)
	ds_write_b128 v1, v[14:17] offset:24576
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_waitcnt vmcnt(0)
	ds_write_b128 v177, v[18:21]
	ds_write_b128 v177, v[22:25] offset:8192
	ds_write_b128 v177, v[30:33] offset:16384
	ds_write_b128 v177, v[26:29] offset:24576
	ds_write_b128 v177, v[38:41] offset:32768
	ds_write_b128 v177, v[34:37] offset:40960
	ds_write_b128 v177, v[46:49] offset:49152
	ds_write_b128 v177, v[42:45] offset:57344
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_cmpk_lt_i32 s34, 0x200
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v126, 0
	v_and_b32_e32 v213, 48, v145
	v_lshlrev_b32_e32 v1, 7, v132
	v_lshlrev_b32_e32 v220, 3, v145
	s_cbranch_scc1 .LBB0_60
; %bb.57:                               ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; moe_op_gemm_a8w4.py:0:19
	v_mul_u32_u24_e32 v0, 0x110, v132
	v_xor_b32_e32 v178, v0, v213
	scratch_store_dword off, v1, off offset:76 ; 4-byte Folded Spill
	v_lshl_or_b32 v0, s33, 6, v1
	v_bitop3_b32 v1, v220, v213, s6 bitop3:0x6c
	v_or_b32_e32 v132, v0, v1
	v_bitop3_b32 v131, v0, 64, v1 bitop3:0x36
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	v_add_u32_e32 v0, s40, v139
	v_add_u32_e32 v0, v0, v137
.Ltmp32:
	.loc	4 43 30 is_stmt 1               ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:398:28 ]
	s_ashr_i32 s7, s34, 31
.Ltmp33:
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	v_add_u32_e32 v179, 0x100, v0
	v_add_u32_e32 v0, s35, v139
.Ltmp34:
	.loc	4 43 30                         ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:398:28 ]
	s_lshr_b32 s7, s7, 24
.Ltmp35:
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	v_add_u32_e32 v0, v0, v137
.Ltmp36:
	.loc	4 43 30                         ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:398:28 ]
	s_add_i32 s34, s34, s7
.Ltmp37:
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	v_add_u32_e32 v151, 0x100, v0
	v_lshl_add_u64 v[0:1], v[152:153], 0, v[168:169]
.Ltmp38:
	.loc	4 43 30                         ; standard.py:43:30 @[ moe_op_gemm_a8w4.py:398:28 ]
	s_ashr_i32 s7, s34, 8
.Ltmp39:
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	s_max_i32 s9, s7, 2
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	s_mov_b64 s[6:7], 0x80
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off  ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[154:155], 0, v[168:169]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	scratch_store_dwordx2 off, v[0:1], off offset:8 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[156:157], 0, v[168:169]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	v_lshl_add_u64 v[2:3], v[162:163], 0, v[168:169]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[166:167]
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	v_lshl_add_u64 v[2:3], s[12:13], 0, v[2:3]
	scratch_store_dwordx2 off, v[0:1], off offset:16 ; 8-byte Folded Spill
	v_lshl_add_u64 v[0:1], v[158:159], 0, v[168:169]
	v_lshl_add_u64 v[254:255], v[2:3], 0, s[6:7]
	v_lshl_add_u64 v[2:3], v[164:165], 0, v[168:169]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[166:167]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[2:3], s[12:13], 0, v[2:3]
	v_lshl_add_u64 v[136:137], v[0:1], 0, s[6:7]
	v_lshl_add_u64 v[0:1], v[160:161], 0, v[168:169]
	v_lshl_add_u64 v[164:165], v[2:3], 0, s[6:7]
	v_lshl_add_u64 v[2:3], v[170:171], 0, v[168:169]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[166:167]
	v_lshl_add_u64 v[0:1], s[12:13], 0, v[0:1]
	v_lshl_add_u64 v[2:3], s[12:13], 0, v[2:3]
	scratch_store_dword off, v141, off offset:72 ; 4-byte Folded Spill
	scratch_store_dwordx2 off, v[218:219], off offset:64 ; 8-byte Folded Spill
	scratch_store_dwordx2 off, v[216:217], off offset:56 ; 8-byte Folded Spill
	scratch_store_dwordx2 off, v[214:215], off offset:48 ; 8-byte Folded Spill
	scratch_store_dword off, v212, off offset:44 ; 4-byte Folded Spill
	scratch_store_dword off, v211, off offset:40 ; 4-byte Folded Spill
	scratch_store_dword off, v210, off offset:36 ; 4-byte Folded Spill
	scratch_store_dword off, v207, off offset:32 ; 4-byte Folded Spill
	scratch_store_dwordx2 off, v[208:209], off offset:24 ; 8-byte Folded Spill
	v_xor_b32_e32 v141, 64, v178
	v_xor_b32_e32 v140, 0x80, v178
	v_xor_b32_e32 v133, 0xc0, v178
	v_lshl_add_u64 v[0:1], v[0:1], 0, s[6:7]
	v_lshl_add_u64 v[166:167], v[2:3], 0, s[6:7]
	s_lshl_b32 s6, s9, 7
	s_add_i32 s12, 0, 0x10000
	v_add_u32_e32 v139, 0x100, v150
	v_add_u32_e32 v148, 0x100, v148
	v_add_u32_e32 v150, 0x100, v146
	v_add_u32_e32 v144, 0x100, v130
	s_add_u32 s9, s6, 0xffffff80
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v21, 0
	v_add_u32_e32 v168, s12, v141
	v_add_u32_e32 v169, s12, v140
	v_add_u32_e32 v170, s12, v133
	v_add_u32_e32 v171, 0, v132
	v_add_u32_e32 v180, 0, v131
	v_mov_b32_e32 v181, 0x7f
.LBB0_58:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 429 17                        ; moe_op_gemm_a8w4.py:429:17
	v_add_u32_e32 v133, s8, v144
	v_add_u32_e32 v132, s8, v150
	v_add_u32_e32 v131, s8, v148
	.loc	1 430 17                        ; moe_op_gemm_a8w4.py:430:17
	v_add_u32_e32 v130, s8, v139
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_add_u32_e32 v146, s12, v178
	buffer_load_dwordx4 v[234:237], v133, s[28:31], 0 offen
	buffer_load_dwordx4 v[230:233], v132, s[28:31], 0 offen
	buffer_load_dwordx4 v[226:229], v131, s[28:31], 0 offen
	buffer_load_dwordx4 v[222:225], v130, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[246:249], v171
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[194:197], v168
	ds_read_b128 v[190:193], v146
	ds_read_b128 v[182:185], v146 offset:4096
	ds_read_b128 v[186:189], v168 offset:4096
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[172:175], v171 offset:2048
	ds_read_b128 v[242:245], v171 offset:32768
	ds_read_b128 v[238:241], v171 offset:34816
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt vmcnt(4) lgkmcnt(3)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[160:163], v[246:249], v[182:189], v[110:113], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[156:159], v[172:175], v[182:189], v[106:109], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[152:155], v[242:245], v[182:189], v[102:105], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[140:143], v[238:241], v[182:189], v[98:101], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 0
	ds_read_b128 v[110:113], v168 offset:8192
	s_nop 0
	ds_read_b128 v[106:109], v146 offset:8192
	s_nop 2
	ds_read_b128 v[98:101], v146 offset:12288
	ds_read_b128 v[102:105], v168 offset:12288
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[130:133], v[246:249], v[98:105], v[78:81], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[218:221], v[172:175], v[98:105], v[74:77], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[214:217], v[242:245], v[98:105], v[70:73], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[210:213], v[238:241], v[98:105], v[66:69], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 3
	ds_read_b128 v[78:81], v168 offset:16384
	ds_read_b128 v[74:77], v146 offset:16384
	s_nop 0
	ds_read_b128 v[66:69], v146 offset:20480
	ds_read_b128 v[70:73], v168 offset:20480
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[206:209], v[246:249], v[66:73], v[46:49], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[202:205], v[172:175], v[66:73], v[42:45], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[186:189], v[242:245], v[66:73], v[38:41], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[182:185], v[238:241], v[66:73], v[34:37], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 3
	ds_read_b128 v[46:49], v168 offset:24576
	ds_read_b128 v[42:45], v146 offset:24576
	s_nop 0
	ds_read_b128 v[34:37], v146 offset:28672
	ds_read_b128 v[38:41], v168 offset:28672
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[246:249], v[190:197], v[126:129], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[172:175], v[190:197], v[122:125], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[242:245], v[190:197], v[118:121], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[238:241], v[190:197], v[114:117], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[246:249], v[106:113], v[94:97], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[172:175], v[106:113], v[90:93], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[242:245], v[106:113], v[86:89], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[238:241], v[106:113], v[82:85], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[246:249], v[74:81], v[62:65], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[172:175], v[74:81], v[58:61], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[242:245], v[74:81], v[54:57], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[238:241], v[74:81], v[50:53], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[246:249], v[42:49], v[30:33], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[172:175], v[42:49], v[26:29], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[242:245], v[42:49], v[22:25], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[198:201], v[238:241], v[42:49], v[10:13], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[194:197], v[246:249], v[34:41], v[14:17], v147, v181 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[172:175], v[172:175], v[34:41], v[6:9], v147, v181 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[246:249], v[242:245], v[34:41], v[2:5], v135, v181 op_sel_hi:[0,0,0] cbsz:4
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[190:193], v180
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_nop 3
	ds_read_b128 v[14:17], v170
	ds_read_b128 v[10:13], v169
	ds_read_b128 v[2:5], v169 offset:4096
	ds_read_b128 v[6:9], v170 offset:4096
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[250:253], v180 offset:2048
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[238:241], v[238:241], v[34:41], v[18:21], v135, v181 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[242:245], v180 offset:32768
	s_nop 5
	ds_read_b128 v[18:21], v180 offset:34816
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(5)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[190:193], v[10:17], v[126:129], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[250:253], v[10:17], v[122:125], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[242:245], v[10:17], v[118:121], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[18:21], v[10:17], v[114:117], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[190:193], v[2:9], v[160:163], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[250:253], v[2:9], v[156:159], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[242:245], v[2:9], v[152:155], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[18:21], v[2:9], v[140:143], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[14:17], v170 offset:8192
	ds_read_b128 v[10:13], v169 offset:8192
	ds_read_b128 v[2:5], v169 offset:12288
	ds_read_b128 v[6:9], v170 offset:12288
	.loc	1 425 24                        ; moe_op_gemm_a8w4.py:425:24
	s_nop 2
	v_add_u32_e32 v142, s8, v151
	.loc	1 430 17                        ; moe_op_gemm_a8w4.py:430:17
	v_lshl_add_u64 v[140:141], v[164:165], 0, s[6:7]
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[190:193], v[10:17], v[94:97], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[250:253], v[10:17], v[90:93], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[242:245], v[10:17], v[86:89], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[18:21], v[10:17], v[82:85], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[190:193], v[2:9], v[130:133], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[250:253], v[2:9], v[218:221], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 430 17                        ; moe_op_gemm_a8w4.py:430:17
	s_nop 5
	v_lshl_add_u64 v[132:133], v[254:255], 0, s[6:7]
	v_lshl_add_u64 v[130:131], v[0:1], 0, s[6:7]
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[242:245], v[2:9], v[214:217], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[18:21], v[2:9], v[210:213], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[14:17], v170 offset:16384
	ds_read_b128 v[10:13], v169 offset:16384
	ds_read_b128 v[2:5], v169 offset:20480
	ds_read_b128 v[6:9], v170 offset:20480
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[190:193], v[2:9], v[206:209], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[250:253], v[2:9], v[202:205], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[242:245], v[2:9], v[186:189], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[18:21], v[2:9], v[182:185], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[6:9], v170 offset:24576
	ds_read_b128 v[2:5], v169 offset:24576
	s_nop 4
	ds_read_b128 v[182:185], v169 offset:28672
	ds_read_b128 v[186:189], v170 offset:28672
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[190:193], v[10:17], v[62:65], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[250:253], v[10:17], v[58:61], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[242:245], v[10:17], v[54:57], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[18:21], v[10:17], v[50:53], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 429 17                        ; moe_op_gemm_a8w4.py:429:17
	v_add_u32_e32 v16, s8, v179
	.loc	1 430 17                        ; moe_op_gemm_a8w4.py:430:17
	v_lshl_add_u64 v[14:15], v[166:167], 0, s[6:7]
	.loc	1 414 24                        ; moe_op_gemm_a8w4.py:414:24
	buffer_load_dword v146, v16, s[36:39], 0 offen
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[218:221], v[14:15], off
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_addk_i32 s8, 0x100
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[190:193], v[2:9], v[30:33], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[250:253], v[2:9], v[26:29], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[242:245], v[2:9], v[22:25], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[18:21], v[2:9], v[198:201], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 430 17                        ; moe_op_gemm_a8w4.py:430:17
	scratch_load_dwordx2 v[2:3], off, off offset:16 ; 8-byte Folded Reload
	v_lshl_add_u64 v[8:9], v[136:137], 0, s[6:7]
	s_waitcnt vmcnt(0)
	v_lshl_add_u64 v[6:7], v[2:3], 0, s[6:7]
	scratch_load_dwordx2 v[2:3], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[190:193], v[182:189], v[194:197], v147, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	.loc	1 430 17                        ; moe_op_gemm_a8w4.py:430:17
	s_waitcnt vmcnt(0)
	v_lshl_add_u64 v[4:5], v[2:3], 0, s[6:7]
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	scratch_load_dwordx2 v[2:3], off, off   ; 8-byte Folded Reload
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[18:21], v[182:189], v[238:241], v135, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_waitcnt vmcnt(0)
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[6:7]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	global_load_dwordx4 v[214:217], v[140:141], off
	global_load_dwordx4 v[210:213], v[132:133], off
	global_load_dwordx4 v[206:209], v[130:131], off
	global_load_dwordx4 v[202:205], v[8:9], off
	global_load_dwordx4 v[198:201], v[6:7], off
	global_load_dwordx4 v[194:197], v[4:5], off
	global_load_dwordx4 v[190:193], v[2:3], off
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[250:253], v[182:189], v[172:175], v147, v181 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 414 24                        ; moe_op_gemm_a8w4.py:414:24
	buffer_load_dword v147, v142, s[36:39], 0 offen
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_add_u32 s6, s6, 0x80
	s_addc_u32 s7, s7, 0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_add_u32_e32 v130, s12, v149
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_cmp_lg_u32 s9, s6
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[2:5], v[242:245], v[182:189], v[246:249], v135, v181 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mov_b32_e32 v135, v146
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_write_b128 v130, v[234:237]
	ds_write_b128 v130, v[230:233] offset:8192
	ds_write_b128 v130, v[226:229] offset:16384
	ds_write_b128 v130, v[222:225] offset:24576
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_write_b128 v177, v[218:221]
	s_waitcnt vmcnt(7)
	ds_write_b128 v177, v[214:217] offset:8192
	s_waitcnt vmcnt(6)
	ds_write_b128 v177, v[210:213] offset:16384
	s_waitcnt vmcnt(5)
	ds_write_b128 v177, v[206:209] offset:24576
	s_waitcnt vmcnt(4)
	ds_write_b128 v177, v[202:205] offset:32768
	s_waitcnt vmcnt(3)
	ds_write_b128 v177, v[198:201] offset:40960
	s_waitcnt vmcnt(2)
	ds_write_b128 v177, v[194:197] offset:49152
	s_waitcnt vmcnt(1)
	ds_write_b128 v177, v[190:193] offset:57344
	.loc	1 404 19                        ; moe_op_gemm_a8w4.py:404:19
	s_cbranch_scc1 .LBB0_58
; %bb.59:                               ; %Flow
	.loc	1 0 19 is_stmt 0                ; moe_op_gemm_a8w4.py:0:19
	scratch_load_dwordx2 v[208:209], off, off offset:24 ; 8-byte Folded Reload
	scratch_load_dword v207, off, off offset:32 ; 4-byte Folded Reload
	scratch_load_dword v210, off, off offset:36 ; 4-byte Folded Reload
	scratch_load_dword v211, off, off offset:40 ; 4-byte Folded Reload
	scratch_load_dword v212, off, off offset:44 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[214:215], off, off offset:48 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[216:217], off, off offset:56 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[218:219], off, off offset:64 ; 8-byte Folded Reload
	scratch_load_dword v141, off, off offset:72 ; 4-byte Folded Reload
	scratch_load_dword v1, off, off offset:76 ; 4-byte Folded Reload
	v_and_b32_e32 v132, 15, v145
	v_lshrrev_b32_e32 v206, 4, v176
	v_and_b32_e32 v213, 48, v145
	v_lshlrev_b32_e32 v142, 4, v132
	v_lshlrev_b32_e32 v220, 3, v145
	s_branch .LBB0_61
.LBB0_60:
	v_mov_b32_e32 v146, v135
.LBB0_61:                               ; %Flow330
	s_load_dwordx2 s[12:13], s[0:1], 0xa0
	s_nop 0
	s_load_dword s0, s[0:1], 0x60
	.loc	1 406 20 is_stmt 1              ; moe_op_gemm_a8w4.py:406:20
	v_and_b32_e32 v144, 14, v145
	s_waitcnt vmcnt(9)
	v_mov_b32_e32 v135, v209
	s_waitcnt vmcnt(3)
	v_mov_b32_e32 v217, v209
	v_mov_b32_e32 v139, v209
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v219, v209
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_and_b64 vcc, exec, s[2:3]
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	v_lshlrev_b32_e32 v131, 3, v144
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_63
; %bb.62:
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	s_lshl_b32 s1, s33, 6
	v_xor_b32_e32 v0, v131, v213
	s_waitcnt vmcnt(0)
	v_or3_b32 v0, s1, v1, v0
	v_add_u32_e32 v137, 0, v0
	ds_read_b128 v[202:205], v137
	ds_read_b128 v[194:197], v137 offset:2048
	ds_read_b128 v[186:189], v137 offset:32768
	ds_read_b128 v[178:181], v137 offset:34816
	v_xad_u32 v136, v0, 64, 0
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_mul_u32_u24_e32 v0, 0x110, v132
	v_xor_b32_e32 v1, v0, v213
	s_add_i32 s1, 0, 0x10000
	v_xad_u32 v133, v1, 64, s1
	v_add_u32_e32 v132, s1, v1
	ds_read_b128 v[162:165], v133
	ds_read_b128 v[158:161], v132
	v_xor_b32_e32 v0, 0xc0, v1
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[198:201], v136
	ds_read_b128 v[190:193], v136 offset:2048
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_add_u32_e32 v130, s1, v0
	v_mov_b32_e32 v0, 0x7f
	.loc	1 406 20                        ; moe_op_gemm_a8w4.py:406:20
	ds_read_b128 v[182:185], v136 offset:32768
	ds_read_b128 v[166:169], v136 offset:34816
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(4)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[202:205], v[158:165], v[126:129], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	v_xor_b32_e32 v1, 0x80, v1
	v_add_u32_e32 v1, s1, v1
	ds_read_b128 v[154:157], v130
	ds_read_b128 v[150:153], v1
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[194:197], v[158:165], v[122:125], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[186:189], v[158:165], v[118:121], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[178:181], v[158:165], v[114:117], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:4096
	ds_read_b128 v[158:161], v132 offset:4096
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[202:205], v[158:165], v[110:113], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[194:197], v[158:165], v[106:109], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[186:189], v[158:165], v[102:105], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[178:181], v[158:165], v[98:101], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:8192
	ds_read_b128 v[158:161], v132 offset:8192
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[198:201], v[150:157], v[126:129], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[190:193], v[150:157], v[122:125], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[182:185], v[150:157], v[118:121], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[166:169], v[150:157], v[114:117], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:4096
	ds_read_b128 v[150:153], v1 offset:4096
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[202:205], v[158:165], v[94:97], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[194:197], v[158:165], v[90:93], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[186:189], v[158:165], v[86:89], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[178:181], v[158:165], v[82:85], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:12288
	ds_read_b128 v[158:161], v132 offset:12288
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[198:201], v[150:157], v[110:113], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[190:193], v[150:157], v[106:109], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[182:185], v[150:157], v[102:105], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[166:169], v[150:157], v[98:101], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:8192
	ds_read_b128 v[150:153], v1 offset:8192
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[202:205], v[158:165], v[78:81], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[194:197], v[158:165], v[74:77], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[186:189], v[158:165], v[70:73], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[178:181], v[158:165], v[66:69], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:16384
	ds_read_b128 v[158:161], v132 offset:16384
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[198:201], v[150:157], v[94:97], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[190:193], v[150:157], v[90:93], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[182:185], v[150:157], v[86:89], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[166:169], v[150:157], v[82:85], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:12288
	ds_read_b128 v[150:153], v1 offset:12288
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[202:205], v[158:165], v[62:65], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[194:197], v[158:165], v[58:61], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[186:189], v[158:165], v[54:57], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[178:181], v[158:165], v[50:53], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:20480
	ds_read_b128 v[158:161], v132 offset:20480
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[198:201], v[150:157], v[78:81], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[190:193], v[150:157], v[74:77], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[182:185], v[150:157], v[70:73], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[166:169], v[150:157], v[66:69], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:16384
	ds_read_b128 v[150:153], v1 offset:16384
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[202:205], v[158:165], v[46:49], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[194:197], v[158:165], v[42:45], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[186:189], v[158:165], v[38:41], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[178:181], v[158:165], v[34:37], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:24576
	ds_read_b128 v[158:161], v132 offset:24576
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[198:201], v[150:157], v[62:65], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[190:193], v[150:157], v[58:61], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[182:185], v[150:157], v[54:57], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[166:169], v[150:157], v[50:53], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:20480
	ds_read_b128 v[150:153], v1 offset:20480
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[202:205], v[158:165], v[30:33], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[194:197], v[158:165], v[26:29], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[186:189], v[158:165], v[22:25], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[178:181], v[158:165], v[10:13], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[162:165], v133 offset:28672
	ds_read_b128 v[158:161], v132 offset:28672
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[198:201], v[150:157], v[46:49], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[190:193], v[150:157], v[42:45], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[182:185], v[150:157], v[38:41], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[166:169], v[150:157], v[34:37], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:24576
	ds_read_b128 v[150:153], v1 offset:24576
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[202:205], v[158:165], v[14:17], v147, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[194:197], v[158:165], v[6:9], v147, v0 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[2:5], v[186:189], v[158:165], v[2:5], v146, v0 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[178:181], v[158:165], v[18:21], v146, v0 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[198:201], v[150:157], v[30:33], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[190:193], v[150:157], v[26:29], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[182:185], v[150:157], v[22:25], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[166:169], v[150:157], v[10:13], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	.loc	1 405 20                        ; moe_op_gemm_a8w4.py:405:20
	ds_read_b128 v[154:157], v130 offset:28672
	ds_read_b128 v[150:153], v1 offset:28672
	.loc	1 422 46                        ; moe_op_gemm_a8w4.py:422:46
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[198:201], v[150:157], v[14:17], v147, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[190:193], v[150:157], v[6:9], v147, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[2:5], v[182:185], v[150:157], v[2:5], v146, v0 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[166:169], v[150:157], v[18:21], v146, v0 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
.LBB0_63:                               ; %._crit_edge._crit_edge
	.loc	1 464 28                        ; moe_op_gemm_a8w4.py:464:28
	v_mov_b32_e32 v140, 0
	.loc	1 471 30                        ; moe_op_gemm_a8w4.py:471:30
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v133, v141, s0
	.loc	1 464 28                        ; moe_op_gemm_a8w4.py:464:28
	global_load_dword v199, v140, s[24:25]
	.loc	1 376 42                        ; moe_op_gemm_a8w4.py:376:42
	v_or_b32_e32 v0, s22, v176
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v1, s23
	.loc	1 471 43                        ; moe_op_gemm_a8w4.py:471:43
	v_add_u32_e32 v133, s22, v133
	.loc	1 473 27                        ; moe_op_gemm_a8w4.py:473:27
	v_bfrev_b32_e32 v130, 1
	v_add_lshl_u32 v133, v133, v176, 2
	.loc	1 469 24                        ; moe_op_gemm_a8w4.py:469:24
	v_cmp_gt_i64_e32 vcc, s[10:11], v[0:1]
	.loc	1 483 33                        ; moe_op_gemm_a8w4.py:483:33
	s_lshl_b64 s[2:3], s[18:19], 8
	.loc	1 473 27                        ; moe_op_gemm_a8w4.py:473:27
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x27000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v0, v130, v133, vcc
	buffer_load_dword v200, v0, s[16:19], 0 offen
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	v_lshlrev_b32_e32 v0, 2, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 340 46                        ; moe_op_gemm_a8w4.py:340:46
	v_or_b32_e32 v132, s2, v142
	.loc	1 333 59                        ; moe_op_gemm_a8w4.py:333:59
	v_ashrrev_i32_e32 v215, 31, v214
	.loc	1 289 14                        ; moe_op_gemm_a8w4.py:289:14
	s_lshr_b32 s1, s10, 31
	s_add_i32 s0, s10, s1
	.loc	1 468 22                        ; moe_op_gemm_a8w4.py:468:22
	v_cmp_lt_i64_e64 s[10:11], v[134:135], v[214:215]
	v_cmp_lt_i64_e64 s[6:7], v[138:139], v[214:215]
	s_mov_b32 s16, 0xffff
	.loc	1 289 14                        ; moe_op_gemm_a8w4.py:289:14
	s_ashr_i32 s14, s0, 1
	.loc	1 484 28                        ; moe_op_gemm_a8w4.py:484:28
	s_ashr_i32 s15, s14, 31
	.loc	1 468 22                        ; moe_op_gemm_a8w4.py:468:22
	v_cmp_lt_i64_e64 s[8:9], v[216:217], v[214:215]
	v_cmp_lt_i64_e64 s[0:1], v[218:219], v[214:215]
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 464 20                        ; moe_op_gemm_a8w4.py:464:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v173, v68, v199
	v_mul_f32_e32 v68, v3, v199
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	v_and_b32_e32 v3, 0x60, v220
	.loc	1 464 20                        ; moe_op_gemm_a8w4.py:464:20
	v_mul_f32_e32 v133, v2, v199
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	v_and_b32_e32 v2, 0x78c, v0
	v_and_b32_e32 v0, 16, v145
	v_add_u32_e32 v3, 0, v3
	v_add3_u32 v2, v3, v2, v0
	.loc	1 464 20                        ; moe_op_gemm_a8w4.py:464:20
	v_mul_f32_e32 v198, v127, v199
	v_mul_f32_e32 v127, v129, v199
	v_mul_f32_e32 v194, v120, v199
	v_mul_f32_e32 v193, v114, v199
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	s_waitcnt vmcnt(0)
	ds_write_b32 v2, v200
	v_lshlrev_b32_e32 v2, 1, v176
	v_and_b32_e32 v2, 0x3e0, v2
	v_add_u32_e32 v2, 0, v2
	.loc	1 464 20                        ; moe_op_gemm_a8w4.py:464:20
	v_mul_f32_e32 v120, v111, v199
	v_mul_f32_e32 v187, v98, v199
	v_mul_f32_e32 v114, v99, v199
	v_mul_f32_e32 v186, v100, v199
	v_mul_f32_e32 v111, v97, v199
	v_mul_f32_e32 v178, v74, v199
	v_mul_f32_e32 v177, v76, v199
	v_mul_f32_e32 v142, v70, v199
	v_mul_f32_e32 v100, v71, v199
	v_mul_f32_e32 v175, v72, v199
	v_mul_f32_e32 v99, v73, v199
	v_mul_f32_e32 v98, v67, v199
	v_mul_f32_e32 v97, v69, v199
	v_mul_f32_e32 v156, v22, v199
	v_mul_f32_e32 v76, v23, v199
	v_mul_f32_e32 v155, v24, v199
	v_mul_f32_e32 v23, v10, v199
	v_mul_f32_e32 v74, v11, v199
	v_mul_f32_e32 v24, v12, v199
	v_mul_f32_e32 v73, v13, v199
	v_mul_f32_e32 v154, v14, v199
	v_mul_f32_e32 v72, v15, v199
	v_mul_f32_e32 v22, v16, v199
	v_mul_f32_e32 v71, v17, v199
	v_mul_f32_e32 v153, v6, v199
	v_mul_f32_e32 v70, v7, v199
	v_mul_f32_e32 v152, v8, v199
	v_mul_f32_e32 v69, v9, v199
	v_mul_f32_e32 v129, v4, v199
	v_mul_f32_e32 v67, v5, v199
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[14:17], v2
	ds_read_b128 v[10:13], v2 offset:16
	ds_read_b128 v[6:9], v2 offset:1024
	ds_read_b128 v[2:5], v2 offset:1040
	.loc	1 464 20                        ; moe_op_gemm_a8w4.py:464:20
	v_mul_f32_e32 v151, v126, v199
	v_mul_f32_e32 v196, v122, v199
	v_mul_f32_e32 v126, v123, v199
	v_mul_f32_e32 v195, v124, v199
	v_mul_f32_e32 v125, v125, v199
	v_mul_f32_e32 v150, v118, v199
	v_mul_f32_e32 v124, v119, v199
	v_mul_f32_e32 v123, v121, v199
	v_mul_f32_e32 v122, v115, v199
	v_mul_f32_e32 v192, v116, v199
	v_mul_f32_e32 v121, v117, v199
	v_mul_f32_e32 v149, v110, v199
	v_mul_f32_e32 v191, v112, v199
	v_mul_f32_e32 v119, v113, v199
	v_mul_f32_e32 v190, v106, v199
	v_mul_f32_e32 v118, v107, v199
	v_mul_f32_e32 v189, v108, v199
	v_mul_f32_e32 v117, v109, v199
	v_mul_f32_e32 v148, v102, v199
	v_mul_f32_e32 v116, v103, v199
	v_mul_f32_e32 v188, v104, v199
	v_mul_f32_e32 v115, v105, v199
	v_mul_f32_e32 v113, v101, v199
	v_mul_f32_e32 v147, v94, v199
	v_mul_f32_e32 v112, v95, v199
	v_mul_f32_e32 v185, v96, v199
	v_mul_f32_e32 v184, v90, v199
	v_mul_f32_e32 v110, v91, v199
	v_mul_f32_e32 v183, v92, v199
	v_mul_f32_e32 v109, v93, v199
	v_mul_f32_e32 v146, v86, v199
	v_mul_f32_e32 v108, v87, v199
	v_mul_f32_e32 v182, v88, v199
	v_mul_f32_e32 v107, v89, v199
	v_mul_f32_e32 v181, v82, v199
	v_mul_f32_e32 v106, v83, v199
	v_mul_f32_e32 v180, v84, v199
	v_mul_f32_e32 v105, v85, v199
	v_mul_f32_e32 v143, v78, v199
	v_mul_f32_e32 v104, v79, v199
	v_mul_f32_e32 v179, v80, v199
	v_mul_f32_e32 v103, v81, v199
	v_mul_f32_e32 v102, v75, v199
	v_mul_f32_e32 v101, v77, v199
	v_mul_f32_e32 v96, v63, v199
	v_mul_f32_e32 v95, v65, v199
	v_mul_f32_e32 v94, v59, v199
	v_mul_f32_e32 v93, v61, v199
	v_mul_f32_e32 v92, v55, v199
	v_mul_f32_e32 v91, v57, v199
	v_mul_f32_e32 v90, v51, v199
	v_mul_f32_e32 v89, v53, v199
	v_mul_f32_e32 v88, v47, v199
	v_mul_f32_e32 v87, v49, v199
	v_mul_f32_e32 v86, v43, v199
	v_mul_f32_e32 v85, v45, v199
	v_mul_f32_e32 v84, v39, v199
	v_mul_f32_e32 v83, v41, v199
	v_mul_f32_e32 v82, v35, v199
	v_mul_f32_e32 v81, v37, v199
	v_mul_f32_e32 v80, v31, v199
	v_mul_f32_e32 v79, v33, v199
	v_mul_f32_e32 v78, v27, v199
	v_mul_f32_e32 v77, v29, v199
	v_mul_f32_e32 v75, v25, v199
	v_mul_f32_e32 v197, v128, v199
	v_mul_f32_e32 v174, v66, v199
	v_mul_f32_e32 v141, v62, v199
	v_mul_f32_e32 v172, v64, v199
	v_mul_f32_e32 v171, v58, v199
	v_mul_f32_e32 v170, v60, v199
	v_mul_f32_e32 v169, v54, v199
	v_mul_f32_e32 v168, v56, v199
	v_mul_f32_e32 v167, v50, v199
	v_mul_f32_e32 v166, v52, v199
	v_mul_f32_e32 v165, v46, v199
	v_mul_f32_e32 v164, v48, v199
	v_mul_f32_e32 v163, v42, v199
	v_mul_f32_e32 v162, v44, v199
	v_mul_f32_e32 v137, v38, v199
	v_mul_f32_e32 v161, v40, v199
	v_mul_f32_e32 v160, v34, v199
	v_mul_f32_e32 v159, v36, v199
	v_mul_f32_e32 v136, v30, v199
	v_mul_f32_e32 v30, v32, v199
	v_mul_f32_e32 v158, v26, v199
	v_mul_f32_e32 v157, v28, v199
	v_mul_f32_e32 v1, v18, v199
	v_mul_f32_e32 v27, v19, v199
	v_mul_f32_e32 v18, v20, v199
	v_mul_f32_e32 v26, v21, v199
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	s_waitcnt lgkmcnt(3)
	v_add_f32_e32 v128, v198, v15
	v_add_f32_e32 v127, v127, v17
	s_waitcnt lgkmcnt(2)
	v_add_f32_e32 v126, v126, v11
	v_add_f32_e32 v125, v125, v13
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v124, v124, v7
	v_add_f32_e32 v123, v123, v9
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v122, v122, v3
	v_add_f32_e32 v121, v121, v5
	v_add_f32_e32 v120, v120, v15
	v_add_f32_e32 v119, v119, v17
	v_add_f32_e32 v118, v118, v11
	v_add_f32_e32 v117, v117, v13
	v_add_f32_e32 v116, v116, v7
	v_add_f32_e32 v115, v115, v9
	v_add_f32_e32 v114, v114, v3
	v_add_f32_e32 v113, v113, v5
	v_add_f32_e32 v112, v112, v15
	v_add_f32_e32 v111, v111, v17
	v_add_f32_e32 v110, v110, v11
	v_add_f32_e32 v109, v109, v13
	v_add_f32_e32 v108, v108, v7
	v_add_f32_e32 v107, v107, v9
	v_add_f32_e32 v106, v106, v3
	v_add_f32_e32 v105, v105, v5
	v_add_f32_e32 v104, v104, v15
	v_add_f32_e32 v103, v103, v17
	v_add_f32_e32 v102, v102, v11
	v_add_f32_e32 v101, v101, v13
	v_add_f32_e32 v100, v100, v7
	v_add_f32_e32 v99, v99, v9
	v_add_f32_e32 v98, v98, v3
	v_add_f32_e32 v97, v97, v5
	v_add_f32_e32 v96, v96, v15
	v_add_f32_e32 v95, v95, v17
	v_add_f32_e32 v94, v94, v11
	v_add_f32_e32 v93, v93, v13
	v_add_f32_e32 v92, v92, v7
	v_add_f32_e32 v91, v91, v9
	v_add_f32_e32 v90, v90, v3
	v_add_f32_e32 v89, v89, v5
	v_add_f32_e32 v88, v88, v15
	v_add_f32_e32 v87, v87, v17
	v_add_f32_e32 v86, v86, v11
	v_add_f32_e32 v85, v85, v13
	v_add_f32_e32 v84, v84, v7
	v_add_f32_e32 v83, v83, v9
	v_add_f32_e32 v82, v82, v3
	v_add_f32_e32 v81, v81, v5
	v_add_f32_e32 v80, v80, v15
	v_add_f32_e32 v79, v79, v17
	v_add_f32_e32 v78, v78, v11
	v_add_f32_e32 v77, v77, v13
	v_add_f32_e32 v76, v76, v7
	v_add_f32_e32 v75, v75, v9
	v_add_f32_e32 v74, v74, v3
	v_add_f32_e32 v73, v73, v5
	v_add_f32_e32 v72, v72, v15
	v_add_f32_e32 v71, v71, v17
	v_add_f32_e32 v70, v70, v11
	v_add_f32_e32 v69, v69, v13
	v_add_f32_e32 v68, v68, v7
	v_add_f32_e32 v19, v129, v8
	v_add_f32_e32 v67, v67, v9
.Ltmp40:
	.loc	1 101 24                        ; moe_op_gemm_a8w4.py:101:24 @[ moe_op_gemm_a8w4.py:112:26 @[ moe_op_gemm_a8w4.py:478:34 ] ]
	v_max_f32_e64 v129, s13, s13
.Ltmp41:
	.loc	1 476 20                        ; moe_op_gemm_a8w4.py:476:20
	v_add_f32_e32 v151, v151, v14
	v_add_f32_e32 v66, v197, v16
	v_add_f32_e32 v64, v196, v10
	v_add_f32_e32 v65, v195, v12
	v_add_f32_e32 v150, v150, v6
	v_add_f32_e32 v63, v194, v8
	v_add_f32_e32 v61, v193, v2
	v_add_f32_e32 v62, v192, v4
	v_add_f32_e32 v149, v149, v14
	v_add_f32_e32 v60, v191, v16
	v_add_f32_e32 v58, v190, v10
	v_add_f32_e32 v59, v189, v12
	v_add_f32_e32 v148, v148, v6
	v_add_f32_e32 v57, v188, v8
	v_add_f32_e32 v55, v187, v2
	v_add_f32_e32 v56, v186, v4
	v_add_f32_e32 v147, v147, v14
	v_add_f32_e32 v54, v185, v16
	v_add_f32_e32 v52, v184, v10
	v_add_f32_e32 v53, v183, v12
	v_add_f32_e32 v146, v146, v6
	v_add_f32_e32 v51, v182, v8
	v_add_f32_e32 v49, v181, v2
	v_add_f32_e32 v50, v180, v4
	v_add_f32_e32 v143, v143, v14
	v_add_f32_e32 v48, v179, v16
	v_add_f32_e32 v46, v178, v10
	v_add_f32_e32 v47, v177, v12
	v_add_f32_e32 v142, v142, v6
	v_add_f32_e32 v45, v175, v8
	v_add_f32_e32 v43, v174, v2
	v_add_f32_e32 v44, v173, v4
	v_add_f32_e32 v141, v141, v14
	v_add_f32_e32 v42, v172, v16
	v_add_f32_e32 v40, v171, v10
	v_add_f32_e32 v41, v170, v12
	v_add_f32_e32 v139, v169, v6
	v_add_f32_e32 v39, v168, v8
	v_add_f32_e32 v37, v167, v2
	v_add_f32_e32 v38, v166, v4
	v_add_f32_e32 v138, v165, v14
	v_add_f32_e32 v36, v164, v16
	v_add_f32_e32 v34, v163, v10
	v_add_f32_e32 v35, v162, v12
	v_add_f32_e32 v137, v137, v6
	v_add_f32_e32 v33, v161, v8
	v_add_f32_e32 v31, v160, v2
	v_add_f32_e32 v32, v159, v4
	v_add_f32_e32 v136, v136, v14
	v_add_f32_e32 v30, v30, v16
	v_add_f32_e32 v28, v158, v10
	v_add_f32_e32 v29, v157, v12
	v_add_f32_e32 v135, v156, v6
	v_add_f32_e32 v25, v155, v8
	v_add_f32_e32 v23, v23, v2
	v_add_f32_e32 v24, v24, v4
	v_add_f32_e32 v134, v154, v14
	v_add_f32_e32 v22, v22, v16
	v_add_f32_e32 v20, v153, v10
	v_add_f32_e32 v21, v152, v12
	v_add_f32_e32 v133, v133, v6
	v_add_f32_e32 v1, v1, v2
	v_add_f32_e32 v27, v27, v3
	v_add_f32_e32 v18, v18, v4
	v_add_f32_e32 v26, v26, v5
.Ltmp42:
	.loc	1 101 24                        ; moe_op_gemm_a8w4.py:101:24 @[ moe_op_gemm_a8w4.py:115:30 @[ moe_op_gemm_a8w4.py:478:34 ] ]
	v_min_f32_e32 v128, v128, v129
	v_min_f32_e32 v127, v127, v129
	v_min_f32_e32 v126, v126, v129
	v_min_f32_e32 v125, v125, v129
	v_min_f32_e32 v124, v124, v129
	v_min_f32_e32 v123, v123, v129
	v_min_f32_e32 v122, v122, v129
	v_min_f32_e32 v121, v121, v129
	v_min_f32_e32 v120, v120, v129
	v_min_f32_e32 v119, v119, v129
	v_min_f32_e32 v118, v118, v129
	v_min_f32_e32 v117, v117, v129
	v_min_f32_e32 v116, v116, v129
	v_min_f32_e32 v115, v115, v129
	v_min_f32_e32 v114, v114, v129
	v_min_f32_e32 v113, v113, v129
	v_min_f32_e32 v112, v112, v129
	v_min_f32_e32 v111, v111, v129
	v_min_f32_e32 v110, v110, v129
	v_min_f32_e32 v109, v109, v129
	v_min_f32_e32 v108, v108, v129
	v_min_f32_e32 v107, v107, v129
	v_min_f32_e32 v106, v106, v129
	v_min_f32_e32 v105, v105, v129
	v_min_f32_e32 v104, v104, v129
	v_min_f32_e32 v103, v103, v129
	v_min_f32_e32 v102, v102, v129
	v_min_f32_e32 v101, v101, v129
	v_min_f32_e32 v100, v100, v129
	v_min_f32_e32 v99, v99, v129
	v_min_f32_e32 v98, v98, v129
	v_min_f32_e32 v97, v97, v129
	v_min_f32_e32 v96, v96, v129
	v_min_f32_e32 v95, v95, v129
	v_min_f32_e32 v94, v94, v129
	v_min_f32_e32 v93, v93, v129
	v_min_f32_e32 v92, v92, v129
	v_min_f32_e32 v91, v91, v129
	v_min_f32_e32 v90, v90, v129
	v_min_f32_e32 v89, v89, v129
	v_min_f32_e32 v88, v88, v129
	v_min_f32_e32 v87, v87, v129
	v_min_f32_e32 v86, v86, v129
	v_min_f32_e32 v85, v85, v129
	v_min_f32_e32 v84, v84, v129
	v_min_f32_e32 v83, v83, v129
	v_min_f32_e32 v82, v82, v129
	v_min_f32_e32 v81, v81, v129
	v_min_f32_e32 v80, v80, v129
	v_min_f32_e32 v79, v79, v129
	v_min_f32_e32 v78, v78, v129
	v_min_f32_e32 v77, v77, v129
	v_min_f32_e32 v76, v76, v129
	v_min_f32_e32 v75, v75, v129
	v_min_f32_e32 v74, v74, v129
	v_min_f32_e32 v73, v73, v129
	v_min_f32_e32 v72, v72, v129
	v_min_f32_e32 v71, v71, v129
	v_min_f32_e32 v70, v70, v129
	v_min_f32_e32 v69, v69, v129
	v_min_f32_e32 v68, v68, v129
	v_min_f32_e32 v67, v67, v129
.Ltmp43:
	.loc	1 101 24 is_stmt 0              ; moe_op_gemm_a8w4.py:101:24 @[ moe_op_gemm_a8w4.py:112:26 @[ moe_op_gemm_a8w4.py:478:34 ] ]
	v_min_f32_e32 v14, v151, v129
	v_min_f32_e32 v66, v66, v129
	v_min_f32_e32 v64, v64, v129
	v_min_f32_e32 v65, v65, v129
	v_min_f32_e32 v6, v150, v129
	v_min_f32_e32 v63, v63, v129
	v_min_f32_e32 v61, v61, v129
	v_min_f32_e32 v62, v62, v129
	v_min_f32_e32 v10, v149, v129
	v_min_f32_e32 v60, v60, v129
	v_min_f32_e32 v58, v58, v129
	v_min_f32_e32 v59, v59, v129
	v_min_f32_e32 v2, v148, v129
	v_min_f32_e32 v57, v57, v129
	v_min_f32_e32 v55, v55, v129
	v_min_f32_e32 v56, v56, v129
	v_min_f32_e32 v15, v147, v129
	v_min_f32_e32 v54, v54, v129
	v_min_f32_e32 v52, v52, v129
	v_min_f32_e32 v53, v53, v129
	v_min_f32_e32 v7, v146, v129
	v_min_f32_e32 v51, v51, v129
	v_min_f32_e32 v49, v49, v129
	v_min_f32_e32 v50, v50, v129
	v_min_f32_e32 v11, v143, v129
	v_min_f32_e32 v48, v48, v129
	v_min_f32_e32 v46, v46, v129
	v_min_f32_e32 v47, v47, v129
	v_min_f32_e32 v3, v142, v129
	v_min_f32_e32 v45, v45, v129
	v_min_f32_e32 v43, v43, v129
	v_min_f32_e32 v44, v44, v129
	v_min_f32_e32 v16, v141, v129
	v_min_f32_e32 v42, v42, v129
	v_min_f32_e32 v40, v40, v129
	v_min_f32_e32 v41, v41, v129
	v_min_f32_e32 v8, v139, v129
	v_min_f32_e32 v39, v39, v129
	v_min_f32_e32 v37, v37, v129
	v_min_f32_e32 v38, v38, v129
	v_min_f32_e32 v12, v138, v129
	v_min_f32_e32 v36, v36, v129
	v_min_f32_e32 v34, v34, v129
	v_min_f32_e32 v35, v35, v129
	v_min_f32_e32 v4, v137, v129
	v_min_f32_e32 v33, v33, v129
	v_min_f32_e32 v31, v31, v129
	v_min_f32_e32 v32, v32, v129
	v_min_f32_e32 v17, v136, v129
	v_min_f32_e32 v30, v30, v129
	v_min_f32_e32 v28, v28, v129
	v_min_f32_e32 v29, v29, v129
	v_min_f32_e32 v9, v135, v129
	v_min_f32_e32 v25, v25, v129
	v_min_f32_e32 v23, v23, v129
	v_min_f32_e32 v24, v24, v129
	v_min_f32_e32 v13, v134, v129
	v_min_f32_e32 v22, v22, v129
	v_min_f32_e32 v20, v20, v129
	v_min_f32_e32 v21, v21, v129
	v_min_f32_e32 v5, v133, v129
	v_min_f32_e32 v19, v19, v129
	v_min_f32_e32 v1, v1, v129
	v_min_f32_e32 v18, v18, v129
.Ltmp44:
	.loc	1 101 24                        ; moe_op_gemm_a8w4.py:101:24 @[ moe_op_gemm_a8w4.py:115:30 @[ moe_op_gemm_a8w4.py:478:34 ] ]
	v_min_f32_e32 v27, v27, v129
	v_min_f32_e32 v26, v26, v129
	.loc	1 103 33 is_stmt 1              ; moe_op_gemm_a8w4.py:103:33 @[ moe_op_gemm_a8w4.py:115:30 @[ moe_op_gemm_a8w4.py:478:34 ] ]
	v_max_f32_e64 v129, -s13, v128
	v_max_f32_e64 v128, -s13, v127
	v_max_f32_e64 v127, -s13, v126
	v_max_f32_e64 v126, -s13, v125
	v_max_f32_e64 v125, -s13, v124
	v_max_f32_e64 v124, -s13, v123
	v_max_f32_e64 v123, -s13, v122
	v_max_f32_e64 v122, -s13, v121
	v_max_f32_e64 v121, -s13, v120
	v_max_f32_e64 v120, -s13, v119
	v_max_f32_e64 v119, -s13, v118
	v_max_f32_e64 v118, -s13, v117
	v_max_f32_e64 v117, -s13, v116
	v_max_f32_e64 v116, -s13, v115
	v_max_f32_e64 v115, -s13, v114
	v_max_f32_e64 v114, -s13, v113
	v_max_f32_e64 v113, -s13, v112
	v_max_f32_e64 v112, -s13, v111
	v_max_f32_e64 v111, -s13, v110
	v_max_f32_e64 v110, -s13, v109
	v_max_f32_e64 v109, -s13, v108
	v_max_f32_e64 v108, -s13, v107
	v_max_f32_e64 v107, -s13, v106
	v_max_f32_e64 v106, -s13, v105
	v_max_f32_e64 v105, -s13, v104
	v_max_f32_e64 v104, -s13, v103
	v_max_f32_e64 v103, -s13, v102
	v_max_f32_e64 v102, -s13, v101
	v_max_f32_e64 v101, -s13, v100
	v_max_f32_e64 v100, -s13, v99
	v_max_f32_e64 v99, -s13, v98
	v_max_f32_e64 v98, -s13, v97
	v_max_f32_e64 v97, -s13, v96
	v_max_f32_e64 v96, -s13, v95
	v_max_f32_e64 v95, -s13, v94
	v_max_f32_e64 v94, -s13, v93
	v_max_f32_e64 v93, -s13, v92
	v_max_f32_e64 v92, -s13, v91
	v_max_f32_e64 v91, -s13, v90
	v_max_f32_e64 v90, -s13, v89
	v_max_f32_e64 v89, -s13, v88
	v_max_f32_e64 v88, -s13, v87
	v_max_f32_e64 v87, -s13, v86
	v_max_f32_e64 v86, -s13, v85
	v_max_f32_e64 v85, -s13, v84
	v_max_f32_e64 v84, -s13, v83
	v_max_f32_e64 v83, -s13, v82
	v_max_f32_e64 v82, -s13, v81
	v_max_f32_e64 v81, -s13, v80
	v_max_f32_e64 v80, -s13, v79
	v_max_f32_e64 v79, -s13, v78
	v_max_f32_e64 v78, -s13, v77
	v_max_f32_e64 v77, -s13, v76
	v_max_f32_e64 v76, -s13, v75
	v_max_f32_e64 v75, -s13, v74
	v_max_f32_e64 v74, -s13, v73
	v_max_f32_e64 v73, -s13, v72
	v_max_f32_e64 v72, -s13, v71
	v_max_f32_e64 v71, -s13, v70
	v_max_f32_e64 v70, -s13, v69
	v_max_f32_e64 v69, -s13, v68
	v_max_f32_e64 v68, -s13, v67
.Ltmp45:
	.loc	1 116 45                        ; moe_op_gemm_a8w4.py:116:45 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_mov_b32_e32 v67, 0xbfb8aa3b
	v_mul_f32_e32 v133, s12, v67
	.loc	1 116 53 is_stmt 0              ; moe_op_gemm_a8w4.py:116:53 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_mul_f32_e32 v199, v133, v14
	v_mul_f32_e32 v198, v133, v66
	v_mul_f32_e32 v197, v133, v64
	v_mul_f32_e32 v196, v133, v65
	v_mul_f32_e32 v195, v133, v6
	v_mul_f32_e32 v194, v133, v63
	v_mul_f32_e32 v193, v133, v61
	v_mul_f32_e32 v192, v133, v62
	v_mul_f32_e32 v191, v133, v10
	v_mul_f32_e32 v190, v133, v60
	v_mul_f32_e32 v189, v133, v58
	v_mul_f32_e32 v188, v133, v59
	v_mul_f32_e32 v187, v133, v2
	v_mul_f32_e32 v186, v133, v57
	v_mul_f32_e32 v185, v133, v55
	v_mul_f32_e32 v184, v133, v56
	v_mul_f32_e32 v183, v133, v15
	v_mul_f32_e32 v182, v133, v54
	v_mul_f32_e32 v181, v133, v52
	v_mul_f32_e32 v180, v133, v53
	v_mul_f32_e32 v179, v133, v7
	v_mul_f32_e32 v178, v133, v51
	v_mul_f32_e32 v177, v133, v49
	v_mul_f32_e32 v175, v133, v50
	v_mul_f32_e32 v174, v133, v11
	v_mul_f32_e32 v173, v133, v48
	v_mul_f32_e32 v172, v133, v46
	v_mul_f32_e32 v171, v133, v47
	v_mul_f32_e32 v170, v133, v3
	v_mul_f32_e32 v169, v133, v45
	v_mul_f32_e32 v168, v133, v43
	v_mul_f32_e32 v167, v133, v44
	v_mul_f32_e32 v166, v133, v16
	v_mul_f32_e32 v165, v133, v42
	v_mul_f32_e32 v164, v133, v40
	v_mul_f32_e32 v163, v133, v41
	v_mul_f32_e32 v162, v133, v8
	v_mul_f32_e32 v161, v133, v39
	v_mul_f32_e32 v160, v133, v37
	v_mul_f32_e32 v159, v133, v38
	v_mul_f32_e32 v158, v133, v12
	v_mul_f32_e32 v157, v133, v36
	v_mul_f32_e32 v156, v133, v34
	v_mul_f32_e32 v155, v133, v35
	v_mul_f32_e32 v154, v133, v4
	v_mul_f32_e32 v153, v133, v33
	v_mul_f32_e32 v152, v133, v31
	v_mul_f32_e32 v151, v133, v32
	v_mul_f32_e32 v150, v133, v17
	v_mul_f32_e32 v149, v133, v30
	v_mul_f32_e32 v148, v133, v28
	v_mul_f32_e32 v147, v133, v29
	v_mul_f32_e32 v146, v133, v9
	v_mul_f32_e32 v143, v133, v25
	v_mul_f32_e32 v142, v133, v23
	v_mul_f32_e32 v141, v133, v24
	v_mul_f32_e32 v139, v133, v13
	v_mul_f32_e32 v138, v133, v22
	v_mul_f32_e32 v137, v133, v20
	v_mul_f32_e32 v67, v133, v5
	.loc	1 116 28                        ; moe_op_gemm_a8w4.py:116:28 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_exp_f32_e32 v199, v199
	v_exp_f32_e32 v198, v198
	v_exp_f32_e32 v197, v197
	v_exp_f32_e32 v196, v196
	v_exp_f32_e32 v195, v195
	v_exp_f32_e32 v194, v194
	v_exp_f32_e32 v193, v193
	v_exp_f32_e32 v192, v192
	v_exp_f32_e32 v191, v191
	v_exp_f32_e32 v190, v190
	v_exp_f32_e32 v189, v189
	v_exp_f32_e32 v188, v188
	v_exp_f32_e32 v187, v187
	v_exp_f32_e32 v186, v186
	v_exp_f32_e32 v185, v185
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v183, v183
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v178, v178
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v175, v175
	v_exp_f32_e32 v174, v174
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v172, v172
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v169, v169
	v_exp_f32_e32 v168, v168
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v165, v165
	v_exp_f32_e32 v164, v164
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v158, v158
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v149, v149
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v141, v141
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v67, v67
	.loc	1 116 20                        ; moe_op_gemm_a8w4.py:116:20 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_add_f32_e32 v200, 1.0, v199
.Ltmp46:
	.loc	1 103 33 is_stmt 1              ; moe_op_gemm_a8w4.py:103:33 @[ moe_op_gemm_a8w4.py:115:30 @[ moe_op_gemm_a8w4.py:478:34 ] ]
	v_max_f32_e64 v27, -s13, v27
	v_max_f32_e64 v26, -s13, v26
.Ltmp47:
	.loc	1 116 20                        ; moe_op_gemm_a8w4.py:116:20 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_add_f32_e32 v199, 1.0, v198
	v_add_f32_e32 v198, 1.0, v197
	v_add_f32_e32 v197, 1.0, v196
	v_add_f32_e32 v196, 1.0, v195
	v_add_f32_e32 v195, 1.0, v194
	v_add_f32_e32 v194, 1.0, v193
	v_add_f32_e32 v193, 1.0, v192
	v_add_f32_e32 v192, 1.0, v191
	v_add_f32_e32 v191, 1.0, v190
	v_add_f32_e32 v190, 1.0, v189
	v_add_f32_e32 v189, 1.0, v188
	v_add_f32_e32 v188, 1.0, v187
	v_add_f32_e32 v187, 1.0, v186
	v_add_f32_e32 v186, 1.0, v185
	v_add_f32_e32 v185, 1.0, v184
	v_add_f32_e32 v184, 1.0, v183
	v_add_f32_e32 v183, 1.0, v182
	v_add_f32_e32 v182, 1.0, v181
	v_add_f32_e32 v181, 1.0, v180
	v_add_f32_e32 v180, 1.0, v179
	v_add_f32_e32 v179, 1.0, v178
	v_add_f32_e32 v178, 1.0, v177
	v_add_f32_e32 v177, 1.0, v175
	v_add_f32_e32 v175, 1.0, v174
	v_add_f32_e32 v174, 1.0, v173
	v_add_f32_e32 v173, 1.0, v172
	v_add_f32_e32 v172, 1.0, v171
	v_add_f32_e32 v171, 1.0, v170
	v_add_f32_e32 v170, 1.0, v169
	v_add_f32_e32 v169, 1.0, v168
	v_add_f32_e32 v168, 1.0, v167
	v_add_f32_e32 v167, 1.0, v166
	v_add_f32_e32 v166, 1.0, v165
	v_add_f32_e32 v165, 1.0, v164
	v_add_f32_e32 v164, 1.0, v163
	v_add_f32_e32 v163, 1.0, v162
	v_add_f32_e32 v162, 1.0, v161
	v_add_f32_e32 v161, 1.0, v160
	v_add_f32_e32 v160, 1.0, v159
	v_add_f32_e32 v159, 1.0, v158
	v_add_f32_e32 v158, 1.0, v157
	v_add_f32_e32 v157, 1.0, v156
	v_add_f32_e32 v156, 1.0, v155
	v_add_f32_e32 v155, 1.0, v154
	v_add_f32_e32 v154, 1.0, v153
	v_add_f32_e32 v153, 1.0, v152
	v_add_f32_e32 v152, 1.0, v151
	v_add_f32_e32 v151, 1.0, v150
	v_add_f32_e32 v150, 1.0, v149
	v_add_f32_e32 v149, 1.0, v148
	v_add_f32_e32 v148, 1.0, v147
	v_add_f32_e32 v147, 1.0, v146
	v_add_f32_e32 v146, 1.0, v143
	v_add_f32_e32 v143, 1.0, v142
	v_add_f32_e32 v142, 1.0, v141
	v_add_f32_e32 v141, 1.0, v139
	v_add_f32_e32 v139, 1.0, v138
	v_add_f32_e32 v138, 1.0, v137
	v_add_f32_e32 v137, 1.0, v67
	.loc	1 116 16 is_stmt 0              ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_div_scale_f32 v67, s[12:13], v200, v200, v14
	v_rcp_f32_e32 v202, v67
	.loc	1 116 53                        ; moe_op_gemm_a8w4.py:116:53 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_mul_f32_e32 v136, v133, v21
	.loc	1 116 28                        ; moe_op_gemm_a8w4.py:116:28 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_exp_f32_e32 v136, v136
	.loc	1 116 53                        ; moe_op_gemm_a8w4.py:116:53 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_mul_f32_e32 v134, v133, v19
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v201, -v67, v202, 1.0
	v_fmac_f32_e32 v202, v201, v202
	v_div_scale_f32 v201, vcc, v14, v200, v14
	v_mul_f32_e32 v203, v201, v202
	v_fma_f32 v204, -v67, v203, v201
	v_fmac_f32_e32 v203, v204, v202
	v_fma_f32 v204, -v67, v203, v201
	v_div_scale_f32 v67, s[12:13], v199, v199, v66
	v_rcp_f32_e32 v201, v67
	v_div_fmas_f32 v202, v204, v202, v203
	v_div_fixup_f32 v14, v202, v200, v14
	.loc	1 116 20                        ; moe_op_gemm_a8w4.py:116:20 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_add_f32_e32 v136, 1.0, v136
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v200, -v67, v201, 1.0
	v_fmac_f32_e32 v201, v200, v201
	v_div_scale_f32 v200, vcc, v66, v199, v66
	v_mul_f32_e32 v202, v200, v201
	v_fma_f32 v203, -v67, v202, v200
	v_fmac_f32_e32 v202, v203, v201
	v_fma_f32 v203, -v67, v202, v200
	v_div_scale_f32 v67, s[12:13], v198, v198, v64
	v_rcp_f32_e32 v200, v67
	v_div_fmas_f32 v201, v203, v201, v202
	v_div_fixup_f32 v66, v201, v199, v66
	.loc	1 116 28                        ; moe_op_gemm_a8w4.py:116:28 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_exp_f32_e32 v134, v134
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v199, -v67, v200, 1.0
	v_fmac_f32_e32 v200, v199, v200
	v_div_scale_f32 v199, vcc, v64, v198, v64
	v_mul_f32_e32 v201, v199, v200
	v_fma_f32 v202, -v67, v201, v199
	v_fmac_f32_e32 v201, v202, v200
	v_fma_f32 v202, -v67, v201, v199
	v_div_scale_f32 v67, s[12:13], v197, v197, v65
	v_rcp_f32_e32 v199, v67
	v_div_fmas_f32 v200, v202, v200, v201
	v_div_fixup_f32 v64, v200, v198, v64
	.loc	1 116 20                        ; moe_op_gemm_a8w4.py:116:20 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_add_f32_e32 v134, 1.0, v134
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v198, -v67, v199, 1.0
	v_fmac_f32_e32 v199, v198, v199
	v_div_scale_f32 v198, vcc, v65, v197, v65
	v_mul_f32_e32 v200, v198, v199
	v_fma_f32 v201, -v67, v200, v198
	v_fmac_f32_e32 v200, v201, v199
	v_fma_f32 v201, -v67, v200, v198
	v_div_scale_f32 v67, s[12:13], v196, v196, v6
	v_rcp_f32_e32 v198, v67
	v_div_fmas_f32 v199, v201, v199, v200
	v_div_fixup_f32 v65, v199, v197, v65
	.loc	1 116 53                        ; moe_op_gemm_a8w4.py:116:53 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_mul_f32_e32 v135, v133, v1
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v197, -v67, v198, 1.0
	v_fmac_f32_e32 v198, v197, v198
	v_div_scale_f32 v197, vcc, v6, v196, v6
	v_mul_f32_e32 v199, v197, v198
	v_fma_f32 v200, -v67, v199, v197
	v_fmac_f32_e32 v199, v200, v198
	v_fma_f32 v200, -v67, v199, v197
	v_div_scale_f32 v67, s[12:13], v195, v195, v63
	v_rcp_f32_e32 v197, v67
	v_div_fmas_f32 v198, v200, v198, v199
	v_div_fixup_f32 v6, v198, v196, v6
	.loc	1 116 28                        ; moe_op_gemm_a8w4.py:116:28 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_exp_f32_e32 v135, v135
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v196, -v67, v197, 1.0
	v_fmac_f32_e32 v197, v196, v197
	v_div_scale_f32 v196, vcc, v63, v195, v63
	v_mul_f32_e32 v198, v196, v197
	v_fma_f32 v199, -v67, v198, v196
	v_fmac_f32_e32 v198, v199, v197
	v_fma_f32 v199, -v67, v198, v196
	v_div_scale_f32 v67, s[12:13], v194, v194, v61
	v_rcp_f32_e32 v196, v67
	v_div_fmas_f32 v197, v199, v197, v198
	v_div_fixup_f32 v63, v197, v195, v63
	.loc	1 116 20                        ; moe_op_gemm_a8w4.py:116:20 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v195, -v67, v196, 1.0
	v_fmac_f32_e32 v196, v195, v196
	v_div_scale_f32 v195, vcc, v61, v194, v61
	v_mul_f32_e32 v197, v195, v196
	v_fma_f32 v198, -v67, v197, v195
	v_fmac_f32_e32 v197, v198, v196
	v_fma_f32 v198, -v67, v197, v195
	v_div_scale_f32 v67, s[12:13], v193, v193, v62
	v_rcp_f32_e32 v195, v67
	v_div_fmas_f32 v196, v198, v196, v197
	v_div_fixup_f32 v61, v196, v194, v61
	.loc	1 116 53                        ; moe_op_gemm_a8w4.py:116:53 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_mul_f32_e32 v133, v133, v18
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v194, -v67, v195, 1.0
	v_fmac_f32_e32 v195, v194, v195
	v_div_scale_f32 v194, vcc, v62, v193, v62
	v_mul_f32_e32 v196, v194, v195
	v_fma_f32 v197, -v67, v196, v194
	v_fmac_f32_e32 v196, v197, v195
	v_fma_f32 v197, -v67, v196, v194
	v_div_scale_f32 v67, s[12:13], v192, v192, v10
	v_rcp_f32_e32 v194, v67
	v_div_fmas_f32 v195, v197, v195, v196
	v_div_fixup_f32 v62, v195, v193, v62
	.loc	1 116 28                        ; moe_op_gemm_a8w4.py:116:28 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_exp_f32_e32 v133, v133
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v193, -v67, v194, 1.0
	v_fmac_f32_e32 v194, v193, v194
	v_div_scale_f32 v193, vcc, v10, v192, v10
	v_mul_f32_e32 v195, v193, v194
	v_fma_f32 v196, -v67, v195, v193
	v_fmac_f32_e32 v195, v196, v194
	v_fma_f32 v196, -v67, v195, v193
	v_div_scale_f32 v67, s[12:13], v191, v191, v60
	v_rcp_f32_e32 v193, v67
	v_div_fmas_f32 v194, v196, v194, v195
	v_div_fixup_f32 v10, v194, v192, v10
	.loc	1 116 20                        ; moe_op_gemm_a8w4.py:116:20 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_add_f32_e32 v133, 1.0, v133
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v192, -v67, v193, 1.0
	v_fmac_f32_e32 v193, v192, v193
	v_div_scale_f32 v192, vcc, v60, v191, v60
	v_mul_f32_e32 v194, v192, v193
	v_fma_f32 v195, -v67, v194, v192
	v_fmac_f32_e32 v194, v195, v193
	v_fma_f32 v195, -v67, v194, v192
	v_div_scale_f32 v67, s[12:13], v190, v190, v58
	v_rcp_f32_e32 v192, v67
	v_div_fmas_f32 v193, v195, v193, v194
	v_div_fixup_f32 v60, v193, v191, v60
	.loc	1 117 29 is_stmt 1              ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v14, v14, v129
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v191, -v67, v192, 1.0
	v_fmac_f32_e32 v192, v191, v192
	v_div_scale_f32 v191, vcc, v58, v190, v58
	v_mul_f32_e32 v193, v191, v192
	v_fma_f32 v194, -v67, v193, v191
	v_fmac_f32_e32 v193, v194, v192
	v_fma_f32 v194, -v67, v193, v191
	v_div_scale_f32 v67, s[12:13], v189, v189, v59
	v_rcp_f32_e32 v191, v67
	v_div_fmas_f32 v192, v194, v192, v193
	v_div_fixup_f32 v58, v192, v190, v58
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v66, v66, v128
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v190, -v67, v191, 1.0
	v_fmac_f32_e32 v191, v190, v191
	v_div_scale_f32 v190, vcc, v59, v189, v59
	v_mul_f32_e32 v192, v190, v191
	v_fma_f32 v193, -v67, v192, v190
	v_fmac_f32_e32 v192, v193, v191
	v_fma_f32 v193, -v67, v192, v190
	v_div_scale_f32 v67, s[12:13], v188, v188, v2
	v_rcp_f32_e32 v190, v67
	v_div_fmas_f32 v191, v193, v191, v192
	v_div_fixup_f32 v59, v191, v189, v59
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v64, v64, v127
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v189, -v67, v190, 1.0
	v_fmac_f32_e32 v190, v189, v190
	v_div_scale_f32 v189, vcc, v2, v188, v2
	v_mul_f32_e32 v191, v189, v190
	v_fma_f32 v192, -v67, v191, v189
	v_fmac_f32_e32 v191, v192, v190
	v_fma_f32 v192, -v67, v191, v189
	v_div_scale_f32 v67, s[12:13], v187, v187, v57
	v_rcp_f32_e32 v189, v67
	v_div_fmas_f32 v190, v192, v190, v191
	v_div_fixup_f32 v2, v190, v188, v2
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v65, v65, v126
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v188, -v67, v189, 1.0
	v_fmac_f32_e32 v189, v188, v189
	v_div_scale_f32 v188, vcc, v57, v187, v57
	v_mul_f32_e32 v190, v188, v189
	v_fma_f32 v191, -v67, v190, v188
	v_fmac_f32_e32 v190, v191, v189
	v_fma_f32 v191, -v67, v190, v188
	v_div_scale_f32 v67, s[12:13], v186, v186, v55
	v_rcp_f32_e32 v188, v67
	v_div_fmas_f32 v189, v191, v189, v190
	v_div_fixup_f32 v57, v189, v187, v57
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v6, v6, v125
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v187, -v67, v188, 1.0
	v_fmac_f32_e32 v188, v187, v188
	v_div_scale_f32 v187, vcc, v55, v186, v55
	v_mul_f32_e32 v189, v187, v188
	v_fma_f32 v190, -v67, v189, v187
	v_fmac_f32_e32 v189, v190, v188
	v_fma_f32 v190, -v67, v189, v187
	v_div_scale_f32 v67, s[12:13], v185, v185, v56
	v_rcp_f32_e32 v187, v67
	v_div_fmas_f32 v188, v190, v188, v189
	v_div_fixup_f32 v55, v188, v186, v55
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v63, v63, v124
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v186, -v67, v187, 1.0
	v_fmac_f32_e32 v187, v186, v187
	v_div_scale_f32 v186, vcc, v56, v185, v56
	v_mul_f32_e32 v188, v186, v187
	v_fma_f32 v189, -v67, v188, v186
	v_fmac_f32_e32 v188, v189, v187
	v_fma_f32 v189, -v67, v188, v186
	v_div_scale_f32 v67, s[12:13], v184, v184, v15
	v_rcp_f32_e32 v186, v67
	v_div_fmas_f32 v187, v189, v187, v188
	v_div_fixup_f32 v56, v187, v185, v56
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v61, v61, v123
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v185, -v67, v186, 1.0
	v_fmac_f32_e32 v186, v185, v186
	v_div_scale_f32 v185, vcc, v15, v184, v15
	v_mul_f32_e32 v187, v185, v186
	v_fma_f32 v188, -v67, v187, v185
	v_fmac_f32_e32 v187, v188, v186
	v_fma_f32 v188, -v67, v187, v185
	v_div_scale_f32 v67, s[12:13], v183, v183, v54
	v_rcp_f32_e32 v185, v67
	v_div_fmas_f32 v186, v188, v186, v187
	v_div_fixup_f32 v15, v186, v184, v15
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v62, v62, v122
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v184, -v67, v185, 1.0
	v_fmac_f32_e32 v185, v184, v185
	v_div_scale_f32 v184, vcc, v54, v183, v54
	v_mul_f32_e32 v186, v184, v185
	v_fma_f32 v187, -v67, v186, v184
	v_fmac_f32_e32 v186, v187, v185
	v_fma_f32 v187, -v67, v186, v184
	v_div_scale_f32 v67, s[12:13], v182, v182, v52
	v_rcp_f32_e32 v184, v67
	v_div_fmas_f32 v185, v187, v185, v186
	v_div_fixup_f32 v54, v185, v183, v54
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v10, v10, v121
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v183, -v67, v184, 1.0
	v_fmac_f32_e32 v184, v183, v184
	v_div_scale_f32 v183, vcc, v52, v182, v52
	v_mul_f32_e32 v185, v183, v184
	v_fma_f32 v186, -v67, v185, v183
	v_fmac_f32_e32 v185, v186, v184
	v_fma_f32 v186, -v67, v185, v183
	v_div_scale_f32 v67, s[12:13], v181, v181, v53
	v_rcp_f32_e32 v183, v67
	v_div_fmas_f32 v184, v186, v184, v185
	v_div_fixup_f32 v52, v184, v182, v52
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v60, v60, v120
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v182, -v67, v183, 1.0
	v_fmac_f32_e32 v183, v182, v183
	v_div_scale_f32 v182, vcc, v53, v181, v53
	v_mul_f32_e32 v184, v182, v183
	v_fma_f32 v185, -v67, v184, v182
	v_fmac_f32_e32 v184, v185, v183
	v_fma_f32 v185, -v67, v184, v182
	v_div_scale_f32 v67, s[12:13], v180, v180, v7
	v_rcp_f32_e32 v182, v67
	v_div_fmas_f32 v183, v185, v183, v184
	v_div_fixup_f32 v53, v183, v181, v53
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v58, v58, v119
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v181, -v67, v182, 1.0
	v_fmac_f32_e32 v182, v181, v182
	v_div_scale_f32 v181, vcc, v7, v180, v7
	v_mul_f32_e32 v183, v181, v182
	v_fma_f32 v184, -v67, v183, v181
	v_fmac_f32_e32 v183, v184, v182
	v_fma_f32 v184, -v67, v183, v181
	v_div_scale_f32 v67, s[12:13], v179, v179, v51
	v_rcp_f32_e32 v181, v67
	v_div_fmas_f32 v182, v184, v182, v183
	v_div_fixup_f32 v7, v182, v180, v7
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v59, v59, v118
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v180, -v67, v181, 1.0
	v_fmac_f32_e32 v181, v180, v181
	v_div_scale_f32 v180, vcc, v51, v179, v51
	v_mul_f32_e32 v182, v180, v181
	v_fma_f32 v183, -v67, v182, v180
	v_fmac_f32_e32 v182, v183, v181
	v_fma_f32 v183, -v67, v182, v180
	v_div_scale_f32 v67, s[12:13], v178, v178, v49
	v_rcp_f32_e32 v180, v67
	v_div_fmas_f32 v181, v183, v181, v182
	v_div_fixup_f32 v51, v181, v179, v51
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v2, v2, v117
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v179, -v67, v180, 1.0
	v_fmac_f32_e32 v180, v179, v180
	v_div_scale_f32 v179, vcc, v49, v178, v49
	v_mul_f32_e32 v181, v179, v180
	v_fma_f32 v182, -v67, v181, v179
	v_fmac_f32_e32 v181, v182, v180
	v_fma_f32 v182, -v67, v181, v179
	v_div_scale_f32 v67, s[12:13], v177, v177, v50
	v_rcp_f32_e32 v179, v67
	v_div_fmas_f32 v180, v182, v180, v181
	v_div_fixup_f32 v49, v180, v178, v49
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v57, v57, v116
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v178, -v67, v179, 1.0
	v_fmac_f32_e32 v179, v178, v179
	v_div_scale_f32 v178, vcc, v50, v177, v50
	v_mul_f32_e32 v180, v178, v179
	v_fma_f32 v181, -v67, v180, v178
	v_fmac_f32_e32 v180, v181, v179
	v_fma_f32 v181, -v67, v180, v178
	v_div_scale_f32 v67, s[12:13], v175, v175, v11
	v_rcp_f32_e32 v178, v67
	v_div_fmas_f32 v179, v181, v179, v180
	v_div_fixup_f32 v50, v179, v177, v50
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v55, v55, v115
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v177, -v67, v178, 1.0
	v_fmac_f32_e32 v178, v177, v178
	v_div_scale_f32 v177, vcc, v11, v175, v11
	v_mul_f32_e32 v179, v177, v178
	v_fma_f32 v180, -v67, v179, v177
	v_fmac_f32_e32 v179, v180, v178
	v_fma_f32 v180, -v67, v179, v177
	v_div_scale_f32 v67, s[12:13], v174, v174, v48
	v_rcp_f32_e32 v177, v67
	v_div_fmas_f32 v178, v180, v178, v179
	v_div_fixup_f32 v11, v178, v175, v11
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v56, v56, v114
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v175, -v67, v177, 1.0
	v_fmac_f32_e32 v177, v175, v177
	v_div_scale_f32 v175, vcc, v48, v174, v48
	v_mul_f32_e32 v178, v175, v177
	v_fma_f32 v179, -v67, v178, v175
	v_fmac_f32_e32 v178, v179, v177
	v_fma_f32 v179, -v67, v178, v175
	v_div_scale_f32 v67, s[12:13], v173, v173, v46
	v_rcp_f32_e32 v175, v67
	v_div_fmas_f32 v177, v179, v177, v178
	v_div_fixup_f32 v48, v177, v174, v48
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v15, v15, v113
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v174, -v67, v175, 1.0
	v_fmac_f32_e32 v175, v174, v175
	v_div_scale_f32 v174, vcc, v46, v173, v46
	v_mul_f32_e32 v177, v174, v175
	v_fma_f32 v178, -v67, v177, v174
	v_fmac_f32_e32 v177, v178, v175
	v_fma_f32 v178, -v67, v177, v174
	v_div_scale_f32 v67, s[12:13], v172, v172, v47
	v_rcp_f32_e32 v174, v67
	v_div_fmas_f32 v175, v178, v175, v177
	v_div_fixup_f32 v46, v175, v173, v46
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v54, v54, v112
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v173, -v67, v174, 1.0
	v_fmac_f32_e32 v174, v173, v174
	v_div_scale_f32 v173, vcc, v47, v172, v47
	v_mul_f32_e32 v175, v173, v174
	v_fma_f32 v177, -v67, v175, v173
	v_fmac_f32_e32 v175, v177, v174
	v_fma_f32 v177, -v67, v175, v173
	v_div_scale_f32 v67, s[12:13], v171, v171, v3
	v_rcp_f32_e32 v173, v67
	v_div_fmas_f32 v174, v177, v174, v175
	v_div_fixup_f32 v47, v174, v172, v47
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v52, v52, v111
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v172, -v67, v173, 1.0
	v_fmac_f32_e32 v173, v172, v173
	v_div_scale_f32 v172, vcc, v3, v171, v3
	v_mul_f32_e32 v174, v172, v173
	v_fma_f32 v175, -v67, v174, v172
	v_fmac_f32_e32 v174, v175, v173
	v_fma_f32 v175, -v67, v174, v172
	v_div_scale_f32 v67, s[12:13], v170, v170, v45
	v_rcp_f32_e32 v172, v67
	v_div_fmas_f32 v173, v175, v173, v174
	v_div_fixup_f32 v3, v173, v171, v3
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v53, v53, v110
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v171, -v67, v172, 1.0
	v_fmac_f32_e32 v172, v171, v172
	v_div_scale_f32 v171, vcc, v45, v170, v45
	v_mul_f32_e32 v173, v171, v172
	v_fma_f32 v174, -v67, v173, v171
	v_fmac_f32_e32 v173, v174, v172
	v_fma_f32 v174, -v67, v173, v171
	v_div_scale_f32 v67, s[12:13], v169, v169, v43
	v_rcp_f32_e32 v171, v67
	v_div_fmas_f32 v172, v174, v172, v173
	v_div_fixup_f32 v45, v172, v170, v45
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v7, v7, v109
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v170, -v67, v171, 1.0
	v_fmac_f32_e32 v171, v170, v171
	v_div_scale_f32 v170, vcc, v43, v169, v43
	v_mul_f32_e32 v172, v170, v171
	v_fma_f32 v173, -v67, v172, v170
	v_fmac_f32_e32 v172, v173, v171
	v_fma_f32 v173, -v67, v172, v170
	v_div_scale_f32 v67, s[12:13], v168, v168, v44
	v_rcp_f32_e32 v170, v67
	v_div_fmas_f32 v171, v173, v171, v172
	v_div_fixup_f32 v43, v171, v169, v43
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v51, v51, v108
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v169, -v67, v170, 1.0
	v_fmac_f32_e32 v170, v169, v170
	v_div_scale_f32 v169, vcc, v44, v168, v44
	v_mul_f32_e32 v171, v169, v170
	v_fma_f32 v172, -v67, v171, v169
	v_fmac_f32_e32 v171, v172, v170
	v_fma_f32 v172, -v67, v171, v169
	v_div_scale_f32 v67, s[12:13], v167, v167, v16
	v_rcp_f32_e32 v169, v67
	v_div_fmas_f32 v170, v172, v170, v171
	v_div_fixup_f32 v44, v170, v168, v44
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v49, v49, v107
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v168, -v67, v169, 1.0
	v_fmac_f32_e32 v169, v168, v169
	v_div_scale_f32 v168, vcc, v16, v167, v16
	v_mul_f32_e32 v170, v168, v169
	v_fma_f32 v171, -v67, v170, v168
	v_fmac_f32_e32 v170, v171, v169
	v_fma_f32 v171, -v67, v170, v168
	v_div_scale_f32 v67, s[12:13], v166, v166, v42
	v_rcp_f32_e32 v168, v67
	v_div_fmas_f32 v169, v171, v169, v170
	v_div_fixup_f32 v16, v169, v167, v16
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v50, v50, v106
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v167, -v67, v168, 1.0
	v_fmac_f32_e32 v168, v167, v168
	v_div_scale_f32 v167, vcc, v42, v166, v42
	v_mul_f32_e32 v169, v167, v168
	v_fma_f32 v170, -v67, v169, v167
	v_fmac_f32_e32 v169, v170, v168
	v_fma_f32 v170, -v67, v169, v167
	v_div_scale_f32 v67, s[12:13], v165, v165, v40
	v_rcp_f32_e32 v167, v67
	v_div_fmas_f32 v168, v170, v168, v169
	v_div_fixup_f32 v42, v168, v166, v42
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v11, v11, v105
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v166, -v67, v167, 1.0
	v_fmac_f32_e32 v167, v166, v167
	v_div_scale_f32 v166, vcc, v40, v165, v40
	v_mul_f32_e32 v168, v166, v167
	v_fma_f32 v169, -v67, v168, v166
	v_fmac_f32_e32 v168, v169, v167
	v_fma_f32 v169, -v67, v168, v166
	v_div_scale_f32 v67, s[12:13], v164, v164, v41
	v_rcp_f32_e32 v166, v67
	v_div_fmas_f32 v167, v169, v167, v168
	v_div_fixup_f32 v40, v167, v165, v40
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v48, v48, v104
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v165, -v67, v166, 1.0
	v_fmac_f32_e32 v166, v165, v166
	v_div_scale_f32 v165, vcc, v41, v164, v41
	v_mul_f32_e32 v167, v165, v166
	v_fma_f32 v168, -v67, v167, v165
	v_fmac_f32_e32 v167, v168, v166
	v_fma_f32 v168, -v67, v167, v165
	v_div_scale_f32 v67, s[12:13], v163, v163, v8
	v_rcp_f32_e32 v165, v67
	v_div_fmas_f32 v166, v168, v166, v167
	v_div_fixup_f32 v41, v166, v164, v41
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v46, v46, v103
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v164, -v67, v165, 1.0
	v_fmac_f32_e32 v165, v164, v165
	v_div_scale_f32 v164, vcc, v8, v163, v8
	v_mul_f32_e32 v166, v164, v165
	v_fma_f32 v167, -v67, v166, v164
	v_fmac_f32_e32 v166, v167, v165
	v_fma_f32 v167, -v67, v166, v164
	v_div_scale_f32 v67, s[12:13], v162, v162, v39
	v_rcp_f32_e32 v164, v67
	v_div_fmas_f32 v165, v167, v165, v166
	v_div_fixup_f32 v8, v165, v163, v8
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v47, v47, v102
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v163, -v67, v164, 1.0
	v_fmac_f32_e32 v164, v163, v164
	v_div_scale_f32 v163, vcc, v39, v162, v39
	v_mul_f32_e32 v165, v163, v164
	v_fma_f32 v166, -v67, v165, v163
	v_fmac_f32_e32 v165, v166, v164
	v_fma_f32 v166, -v67, v165, v163
	v_div_scale_f32 v67, s[12:13], v161, v161, v37
	v_rcp_f32_e32 v163, v67
	v_div_fmas_f32 v164, v166, v164, v165
	v_div_fixup_f32 v39, v164, v162, v39
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v3, v3, v101
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v162, -v67, v163, 1.0
	v_fmac_f32_e32 v163, v162, v163
	v_div_scale_f32 v162, vcc, v37, v161, v37
	v_mul_f32_e32 v164, v162, v163
	v_fma_f32 v165, -v67, v164, v162
	v_fmac_f32_e32 v164, v165, v163
	v_fma_f32 v165, -v67, v164, v162
	v_div_scale_f32 v67, s[12:13], v160, v160, v38
	v_rcp_f32_e32 v162, v67
	v_div_fmas_f32 v163, v165, v163, v164
	v_div_fixup_f32 v37, v163, v161, v37
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v45, v45, v100
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v161, -v67, v162, 1.0
	v_fmac_f32_e32 v162, v161, v162
	v_div_scale_f32 v161, vcc, v38, v160, v38
	v_mul_f32_e32 v163, v161, v162
	v_fma_f32 v164, -v67, v163, v161
	v_fmac_f32_e32 v163, v164, v162
	v_fma_f32 v164, -v67, v163, v161
	v_div_scale_f32 v67, s[12:13], v159, v159, v12
	v_rcp_f32_e32 v161, v67
	v_div_fmas_f32 v162, v164, v162, v163
	v_div_fixup_f32 v38, v162, v160, v38
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v43, v43, v99
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v160, -v67, v161, 1.0
	v_fmac_f32_e32 v161, v160, v161
	v_div_scale_f32 v160, vcc, v12, v159, v12
	v_mul_f32_e32 v162, v160, v161
	v_fma_f32 v163, -v67, v162, v160
	v_fmac_f32_e32 v162, v163, v161
	v_fma_f32 v163, -v67, v162, v160
	v_div_scale_f32 v67, s[12:13], v158, v158, v36
	v_rcp_f32_e32 v160, v67
	v_div_fmas_f32 v161, v163, v161, v162
	v_div_fixup_f32 v12, v161, v159, v12
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v44, v44, v98
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v159, -v67, v160, 1.0
	v_fmac_f32_e32 v160, v159, v160
	v_div_scale_f32 v159, vcc, v36, v158, v36
	v_mul_f32_e32 v161, v159, v160
	v_fma_f32 v162, -v67, v161, v159
	v_fmac_f32_e32 v161, v162, v160
	v_fma_f32 v162, -v67, v161, v159
	v_div_scale_f32 v67, s[12:13], v157, v157, v34
	v_rcp_f32_e32 v159, v67
	v_div_fmas_f32 v160, v162, v160, v161
	v_div_fixup_f32 v36, v160, v158, v36
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v16, v16, v97
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v158, -v67, v159, 1.0
	v_fmac_f32_e32 v159, v158, v159
	v_div_scale_f32 v158, vcc, v34, v157, v34
	v_mul_f32_e32 v160, v158, v159
	v_fma_f32 v161, -v67, v160, v158
	v_fmac_f32_e32 v160, v161, v159
	v_fma_f32 v161, -v67, v160, v158
	v_div_scale_f32 v67, s[12:13], v156, v156, v35
	v_rcp_f32_e32 v158, v67
	v_div_fmas_f32 v159, v161, v159, v160
	v_div_fixup_f32 v34, v159, v157, v34
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v42, v42, v96
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v157, -v67, v158, 1.0
	v_fmac_f32_e32 v158, v157, v158
	v_div_scale_f32 v157, vcc, v35, v156, v35
	v_mul_f32_e32 v159, v157, v158
	v_fma_f32 v160, -v67, v159, v157
	v_fmac_f32_e32 v159, v160, v158
	v_fma_f32 v160, -v67, v159, v157
	v_div_scale_f32 v67, s[12:13], v155, v155, v4
	v_rcp_f32_e32 v157, v67
	v_div_fmas_f32 v158, v160, v158, v159
	v_div_fixup_f32 v35, v158, v156, v35
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v40, v40, v95
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v156, -v67, v157, 1.0
	v_fmac_f32_e32 v157, v156, v157
	v_div_scale_f32 v156, vcc, v4, v155, v4
	v_mul_f32_e32 v158, v156, v157
	v_fma_f32 v159, -v67, v158, v156
	v_fmac_f32_e32 v158, v159, v157
	v_fma_f32 v159, -v67, v158, v156
	v_div_scale_f32 v67, s[12:13], v154, v154, v33
	v_rcp_f32_e32 v156, v67
	v_div_fmas_f32 v157, v159, v157, v158
	v_div_fixup_f32 v4, v157, v155, v4
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v41, v41, v94
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v155, -v67, v156, 1.0
	v_fmac_f32_e32 v156, v155, v156
	v_div_scale_f32 v155, vcc, v33, v154, v33
	v_mul_f32_e32 v157, v155, v156
	v_fma_f32 v158, -v67, v157, v155
	v_fmac_f32_e32 v157, v158, v156
	v_fma_f32 v158, -v67, v157, v155
	v_div_scale_f32 v67, s[12:13], v153, v153, v31
	v_rcp_f32_e32 v155, v67
	v_div_fmas_f32 v156, v158, v156, v157
	v_div_fixup_f32 v33, v156, v154, v33
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v8, v8, v93
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v154, -v67, v155, 1.0
	v_fmac_f32_e32 v155, v154, v155
	v_div_scale_f32 v154, vcc, v31, v153, v31
	v_mul_f32_e32 v156, v154, v155
	v_fma_f32 v157, -v67, v156, v154
	v_fmac_f32_e32 v156, v157, v155
	v_fma_f32 v157, -v67, v156, v154
	v_div_scale_f32 v67, s[12:13], v152, v152, v32
	v_rcp_f32_e32 v154, v67
	v_div_fmas_f32 v155, v157, v155, v156
	v_div_fixup_f32 v31, v155, v153, v31
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v39, v39, v92
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v153, -v67, v154, 1.0
	v_fmac_f32_e32 v154, v153, v154
	v_div_scale_f32 v153, vcc, v32, v152, v32
	v_mul_f32_e32 v155, v153, v154
	v_fma_f32 v156, -v67, v155, v153
	v_fmac_f32_e32 v155, v156, v154
	v_fma_f32 v156, -v67, v155, v153
	v_div_scale_f32 v67, s[12:13], v151, v151, v17
	v_rcp_f32_e32 v153, v67
	v_div_fmas_f32 v154, v156, v154, v155
	v_div_fixup_f32 v32, v154, v152, v32
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v37, v37, v91
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v152, -v67, v153, 1.0
	v_fmac_f32_e32 v153, v152, v153
	v_div_scale_f32 v152, vcc, v17, v151, v17
	v_mul_f32_e32 v154, v152, v153
	v_fma_f32 v155, -v67, v154, v152
	v_fmac_f32_e32 v154, v155, v153
	v_fma_f32 v155, -v67, v154, v152
	v_div_scale_f32 v67, s[12:13], v150, v150, v30
	v_rcp_f32_e32 v152, v67
	v_div_fmas_f32 v153, v155, v153, v154
	v_div_fixup_f32 v17, v153, v151, v17
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v38, v38, v90
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v151, -v67, v152, 1.0
	v_fmac_f32_e32 v152, v151, v152
	v_div_scale_f32 v151, vcc, v30, v150, v30
	v_mul_f32_e32 v153, v151, v152
	v_fma_f32 v154, -v67, v153, v151
	v_fmac_f32_e32 v153, v154, v152
	v_fma_f32 v154, -v67, v153, v151
	v_div_scale_f32 v67, s[12:13], v149, v149, v28
	v_rcp_f32_e32 v151, v67
	v_div_fmas_f32 v152, v154, v152, v153
	v_div_fixup_f32 v30, v152, v150, v30
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v12, v12, v89
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v150, -v67, v151, 1.0
	v_fmac_f32_e32 v151, v150, v151
	v_div_scale_f32 v150, vcc, v28, v149, v28
	v_mul_f32_e32 v152, v150, v151
	v_fma_f32 v153, -v67, v152, v150
	v_fmac_f32_e32 v152, v153, v151
	v_fma_f32 v153, -v67, v152, v150
	v_div_scale_f32 v67, s[12:13], v148, v148, v29
	v_rcp_f32_e32 v150, v67
	v_div_fmas_f32 v151, v153, v151, v152
	v_div_fixup_f32 v28, v151, v149, v28
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v36, v36, v88
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v149, -v67, v150, 1.0
	v_fmac_f32_e32 v150, v149, v150
	v_div_scale_f32 v149, vcc, v29, v148, v29
	v_mul_f32_e32 v151, v149, v150
	v_fma_f32 v152, -v67, v151, v149
	v_fmac_f32_e32 v151, v152, v150
	v_fma_f32 v152, -v67, v151, v149
	v_div_scale_f32 v67, s[12:13], v147, v147, v9
	v_rcp_f32_e32 v149, v67
	v_div_fmas_f32 v150, v152, v150, v151
	v_div_fixup_f32 v29, v150, v148, v29
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v34, v34, v87
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v148, -v67, v149, 1.0
	v_fmac_f32_e32 v149, v148, v149
	v_div_scale_f32 v148, vcc, v9, v147, v9
	v_mul_f32_e32 v150, v148, v149
	v_fma_f32 v151, -v67, v150, v148
	v_fmac_f32_e32 v150, v151, v149
	v_fma_f32 v151, -v67, v150, v148
	v_div_scale_f32 v67, s[12:13], v146, v146, v25
	v_rcp_f32_e32 v148, v67
	v_div_fmas_f32 v149, v151, v149, v150
	v_div_fixup_f32 v9, v149, v147, v9
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v35, v35, v86
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v147, -v67, v148, 1.0
	v_fmac_f32_e32 v148, v147, v148
	v_div_scale_f32 v147, vcc, v25, v146, v25
	v_mul_f32_e32 v149, v147, v148
	v_fma_f32 v150, -v67, v149, v147
	v_fmac_f32_e32 v149, v150, v148
	v_fma_f32 v150, -v67, v149, v147
	v_div_scale_f32 v67, s[12:13], v143, v143, v23
	v_rcp_f32_e32 v147, v67
	v_div_fmas_f32 v148, v150, v148, v149
	v_div_fixup_f32 v25, v148, v146, v25
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v4, v4, v85
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v146, -v67, v147, 1.0
	v_fmac_f32_e32 v147, v146, v147
	v_div_scale_f32 v146, vcc, v23, v143, v23
	v_mul_f32_e32 v148, v146, v147
	v_fma_f32 v149, -v67, v148, v146
	v_fmac_f32_e32 v148, v149, v147
	v_fma_f32 v149, -v67, v148, v146
	v_div_scale_f32 v67, s[12:13], v142, v142, v24
	v_rcp_f32_e32 v146, v67
	v_div_fmas_f32 v147, v149, v147, v148
	v_div_fixup_f32 v23, v147, v143, v23
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v33, v33, v84
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v143, -v67, v146, 1.0
	v_fmac_f32_e32 v146, v143, v146
	v_div_scale_f32 v143, vcc, v24, v142, v24
	v_mul_f32_e32 v147, v143, v146
	v_fma_f32 v148, -v67, v147, v143
	v_fmac_f32_e32 v147, v148, v146
	v_fma_f32 v148, -v67, v147, v143
	v_div_scale_f32 v67, s[12:13], v141, v141, v13
	v_rcp_f32_e32 v143, v67
	v_div_fmas_f32 v146, v148, v146, v147
	v_div_fixup_f32 v24, v146, v142, v24
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v31, v31, v83
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v142, -v67, v143, 1.0
	v_fmac_f32_e32 v143, v142, v143
	v_div_scale_f32 v142, vcc, v13, v141, v13
	v_mul_f32_e32 v146, v142, v143
	v_fma_f32 v147, -v67, v146, v142
	v_fmac_f32_e32 v146, v147, v143
	v_fma_f32 v147, -v67, v146, v142
	v_div_scale_f32 v67, s[12:13], v139, v139, v22
	v_rcp_f32_e32 v142, v67
	v_div_fmas_f32 v143, v147, v143, v146
	v_div_fixup_f32 v13, v143, v141, v13
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v32, v32, v82
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v141, -v67, v142, 1.0
	v_fmac_f32_e32 v142, v141, v142
	v_div_scale_f32 v141, vcc, v22, v139, v22
	v_mul_f32_e32 v143, v141, v142
	v_fma_f32 v146, -v67, v143, v141
	v_fmac_f32_e32 v143, v146, v142
	v_fma_f32 v146, -v67, v143, v141
	v_div_scale_f32 v67, s[12:13], v138, v138, v20
	v_rcp_f32_e32 v141, v67
	v_div_fmas_f32 v142, v146, v142, v143
	v_div_fixup_f32 v22, v142, v139, v22
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v22, v22, v72
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v139, -v67, v141, 1.0
	v_fmac_f32_e32 v141, v139, v141
	v_div_scale_f32 v139, vcc, v20, v138, v20
	v_mul_f32_e32 v142, v139, v141
	v_fma_f32 v143, -v67, v142, v139
	v_fmac_f32_e32 v142, v143, v141
	v_fma_f32 v143, -v67, v142, v139
	v_div_scale_f32 v67, s[12:13], v136, v136, v21
	v_rcp_f32_e32 v139, v67
	v_div_fmas_f32 v141, v143, v141, v142
	v_div_fixup_f32 v20, v141, v138, v20
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v20, v20, v71
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v138, -v67, v139, 1.0
	v_fmac_f32_e32 v139, v138, v139
	v_div_scale_f32 v138, vcc, v21, v136, v21
	v_mul_f32_e32 v141, v138, v139
	v_fma_f32 v142, -v67, v141, v138
	v_fmac_f32_e32 v141, v142, v139
	v_fma_f32 v142, -v67, v141, v138
	v_div_scale_f32 v67, s[12:13], v137, v137, v5
	v_rcp_f32_e32 v138, v67
	v_div_fmas_f32 v139, v142, v139, v141
	v_div_fixup_f32 v21, v139, v136, v21
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v21, v21, v70
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v136, -v67, v138, 1.0
	v_fmac_f32_e32 v138, v136, v138
	v_div_scale_f32 v136, vcc, v5, v137, v5
	v_mul_f32_e32 v139, v136, v138
	v_fma_f32 v141, -v67, v139, v136
	v_fmac_f32_e32 v139, v141, v138
	v_fma_f32 v141, -v67, v139, v136
	v_div_scale_f32 v67, s[12:13], v134, v134, v19
	v_rcp_f32_e32 v136, v67
	v_div_fmas_f32 v138, v141, v138, v139
	v_div_fixup_f32 v5, v138, v137, v5
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v5, v5, v69
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v137, -v67, v136, 1.0
	v_fmac_f32_e32 v136, v137, v136
	v_div_scale_f32 v137, vcc, v19, v134, v19
	v_mul_f32_e32 v138, v137, v136
	v_fma_f32 v139, -v67, v138, v137
	v_fmac_f32_e32 v138, v139, v136
	v_fma_f32 v139, -v67, v138, v137
	v_div_scale_f32 v67, s[12:13], v135, v135, v1
	v_rcp_f32_e32 v137, v67
	v_div_fmas_f32 v136, v139, v136, v138
	v_div_fixup_f32 v19, v136, v134, v19
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v19, v19, v68
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fma_f32 v134, -v67, v137, 1.0
	v_fmac_f32_e32 v137, v134, v137
	v_div_scale_f32 v134, vcc, v1, v135, v1
	v_mul_f32_e32 v138, v134, v137
	v_fma_f32 v136, -v67, v138, v134
	v_fmac_f32_e32 v138, v136, v137
	v_fma_f32 v139, -v67, v138, v134
.Ltmp48:
	.loc	1 496 53                        ; moe_op_gemm_a8w4.py:496:53
	global_load_dword v67, v140, s[26:27]
.Ltmp49:
	.loc	1 116 16                        ; moe_op_gemm_a8w4.py:116:16 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_div_scale_f32 v136, s[12:13], v133, v133, v18
	v_rcp_f32_e32 v134, v136
	v_div_fmas_f32 v137, v139, v137, v138
	v_div_fixup_f32 v1, v137, v135, v1
	v_div_scale_f32 v137, vcc, v18, v133, v18
	v_fma_f32 v135, -v136, v134, 1.0
	v_fmac_f32_e32 v134, v135, v134
	v_mul_f32_e32 v135, v137, v134
	v_fma_f32 v138, -v136, v135, v137
	v_fmac_f32_e32 v135, v138, v134
	v_fma_f32 v136, -v136, v135, v137
	v_div_fmas_f32 v134, v136, v134, v135
	v_div_fixup_f32 v18, v134, v133, v18
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v1, v1, v27
.Ltmp50:
	.loc	1 483 41                        ; moe_op_gemm_a8w4.py:483:41
	v_mov_b32_e32 v133, s3
	v_mov_b32_e32 v27, s3
.Ltmp51:
	.loc	1 117 29                        ; moe_op_gemm_a8w4.py:117:29 @[ moe_op_gemm_a8w4.py:478:34 ]
	v_fmac_f32_e32 v17, v17, v81
	v_fmac_f32_e32 v30, v30, v80
	v_fmac_f32_e32 v28, v28, v79
	v_fmac_f32_e32 v29, v29, v78
	v_fmac_f32_e32 v9, v9, v77
	v_fmac_f32_e32 v25, v25, v76
	v_fmac_f32_e32 v23, v23, v75
	v_fmac_f32_e32 v24, v24, v74
	v_fmac_f32_e32 v13, v13, v73
	v_fmac_f32_e32 v18, v18, v26
.Ltmp52:
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v0, 9, v0
.Ltmp53:
	.loc	1 483 41                        ; moe_op_gemm_a8w4.py:483:41
	v_or_b32_e32 v26, 8, v132
.Ltmp54:
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	s_waitcnt vmcnt(0)
	v_div_scale_f32 v68, s[12:13], v67, v67, v14
	v_rcp_f32_e32 v69, v68
	s_mov_b32 s12, 0x1000504
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v14, v67, v14
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v66
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v14, v69, v67, v14
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v66, v67, v66
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v64
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v66, v70, v67, v66
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v14, v14, v66, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v64, v67, v64
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v65
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v64, v69, v67, v64
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v65, v67, v65
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v6
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v65, v70, v67, v65
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v14, v64, v65, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v6, v67, v6
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v63
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v6, v69, v67, v6
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v63, v67, v63
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v61
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v63, v70, v67, v63
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v6, v6, v63, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v61, v67, v61
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v62
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v61, v69, v67, v61
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v62, v67, v62
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v10
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v62, v70, v67, v62
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v6, v61, v62, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v10, v67, v10
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v60
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v10, v69, v67, v10
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v60, v67, v60
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v58
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v60, v70, v67, v60
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v10, v10, v60, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v58, v67, v58
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v59
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v58, v69, v67, v58
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v59, v67, v59
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v2
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v59, v70, v67, v59
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v10, v58, v59, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v2, v67, v2
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v57
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v2, v69, v67, v2
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v57, v67, v57
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v55
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v57, v70, v67, v57
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v2, v2, v57, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v55, v67, v55
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v56
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v55, v69, v67, v55
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v56, v67, v56
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v15
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v56, v70, v67, v56
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v2, v55, v56, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v15, v67, v15
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v54
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v15, v69, v67, v15
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v54, v67, v54
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v52
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v54, v70, v67, v54
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v15, v15, v54, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v52, v67, v52
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v53
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v52, v69, v67, v52
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v53, v67, v53
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v7
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v53, v70, v67, v53
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v15, v52, v53, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v7, v67, v7
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v51
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v7, v69, v67, v7
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v51, v67, v51
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v49
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v51, v70, v67, v51
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v7, v7, v51, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v49, v67, v49
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v50
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v49, v69, v67, v49
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v50, v67, v50
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v11
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v50, v70, v67, v50
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v7, v49, v50, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v11, v67, v11
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v48
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v11, v69, v67, v11
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v48, v67, v48
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v46
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v48, v70, v67, v48
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v11, v11, v48, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v46, v67, v46
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v47
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v46, v69, v67, v46
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v47, v67, v47
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v3
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v47, v70, v67, v47
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v11, v46, v47, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v3, v67, v3
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v45
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v3, v69, v67, v3
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v45, v67, v45
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v43
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v45, v70, v67, v45
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v3, v3, v45, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v43, v67, v43
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v44
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v43, v69, v67, v43
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v44, v67, v44
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v16
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v44, v70, v67, v44
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v3, v43, v44, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v16, v67, v16
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v42
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v16, v69, v67, v16
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v42, v67, v42
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v40
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v42, v70, v67, v42
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v16, v16, v42, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v40, v67, v40
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v41
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v40, v69, v67, v40
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v41, v67, v41
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v8
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v41, v70, v67, v41
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v16, v40, v41, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v8, v67, v8
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v39
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v8, v69, v67, v8
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v39, v67, v39
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v37
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v39, v70, v67, v39
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v8, v8, v39, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v37, v67, v37
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v38
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v37, v69, v67, v37
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v38, v67, v38
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v12
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v38, v70, v67, v38
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v8, v37, v38, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v12, v67, v12
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v36
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v12, v69, v67, v12
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v36, v67, v36
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v34
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v36, v70, v67, v36
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v12, v12, v36, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v34, v67, v34
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v35
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v34, v69, v67, v34
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v35, v67, v35
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v4
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v35, v70, v67, v35
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v12, v34, v35, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v4, v67, v4
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v33
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v4, v69, v67, v4
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v33, v67, v33
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v31
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v33, v70, v67, v33
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v4, v4, v33, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v31, v67, v31
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v32
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v31, v69, v67, v31
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v32, v67, v32
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v17
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v32, v70, v67, v32
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v4, v31, v32, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v17, v67, v17
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v30
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v17, v69, v67, v17
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v30, v67, v30
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v28
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v30, v70, v67, v30
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v17, v17, v30, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v28, v67, v28
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v29
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v28, v69, v67, v28
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v29, v67, v29
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v9
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v29, v70, v67, v29
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v17, v28, v29, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v9, v67, v9
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v25
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v9, v69, v67, v9
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v25, v67, v25
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v23
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v25, v70, v67, v25
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v9, v9, v25, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v23, v67, v23
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v24
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v23, v69, v67, v23
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v24, v67, v24
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v13
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v24, v70, v67, v24
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v9, v23, v24, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v13, v67, v13
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v22
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v13, v69, v67, v13
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v22, v67, v22
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v20
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v22, v70, v67, v22
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v13, v13, v22, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v20, v67, v20
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v21
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v20, v69, v67, v20
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v21, v67, v21
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v5
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v21, v70, v67, v21
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v13, v20, v21, 1.0 op_sel:[0,0,0,1]
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v5, v67, v5
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v68, s[2:3], v67, v67, v19
	v_rcp_f32_e32 v70, v68
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v5, v69, v67, v5
	v_fma_f32 v69, -v68, v70, 1.0
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, vcc, v19, v67, v19
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v72, -v68, v71, v69
	v_fmac_f32_e32 v71, v72, v70
	v_fma_f32 v72, -v68, v71, v69
	v_div_scale_f32 v68, s[2:3], v67, v67, v1
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v70, v72, v70, v71
	v_div_fixup_f32 v19, v70, v67, v19
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v5, v5, v19, 1.0
	.loc	2 9 22                          ; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc, v1, v67, v1
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v72, -v68, v71, v70
	v_div_scale_f32 v70, s[2:3], v67, v67, v18
	v_rcp_f32_e32 v68, v70
	v_div_fmas_f32 v69, v72, v69, v71
	v_div_fixup_f32 v1, v69, v67, v1
	v_div_scale_f32 v71, vcc, v18, v67, v18
	v_fma_f32 v69, -v70, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_mul_f32_e32 v69, v71, v68
	v_fma_f32 v72, -v70, v69, v71
	v_fmac_f32_e32 v69, v72, v68
	v_fma_f32 v70, -v70, v69, v71
	v_div_fmas_f32 v68, v70, v68, v69
	v_div_fixup_f32 v18, v68, v67, v18
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_cvt_scalef32_pk_fp8_f32 v5, v1, v18, 1.0 op_sel:[0,0,0,1]
	v_and_b32_e32 v18, 1, v145
	s_lshr_b32 s3, s4, 3
	v_lshlrev_b32_e32 v1, 13, v18
	s_lshl_b32 s2, s4, 8
	v_lshl_or_b32 v19, v213, 4, v131
	s_and_b32 s2, s2, 0x4000
	v_lshl_or_b32 v1, v144, 9, v1
	v_bitop3_b32 v19, s3, v19, 48 bitop3:0x6c
	v_or3_b32 v1, s2, v1, v19
	v_add_u32_e32 v19, 0, v1
	v_xad_u32 v1, v1, 64, 0
	ds_write_b128 v19, v[14:17]
	ds_write_b128 v19, v[10:13] offset:128
	ds_write_b128 v1, v[6:9]
	ds_write_b128 v1, v[2:5] offset:128
	v_lshlrev_b32_e32 v1, 5, v176
	v_lshrrev_b32_e32 v2, 1, v176
	v_and_b32_e32 v1, 0x1c00, v1
	v_and_b32_e32 v2, 0xf0, v2
	v_bitop3_b32 v1, v1, v2, v131 bitop3:0x36
	v_lshl_add_u32 v2, v18, 14, 0
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[8:11], v0
	ds_read_b128 v[12:15], v0 offset:256
	v_mov_b32_e32 v1, 8
	s_movk_i32 s4, 0xff
.Ltmp55:
	.loc	1 484 28                        ; moe_op_gemm_a8w4.py:484:28
	v_cmp_gt_i64_e64 s[2:3], s[14:15], v[132:133]
	v_cmp_gt_i64_e32 vcc, s[14:15], v[26:27]
.Ltmp56:
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_sdwa v1, v1, v12 dst_sel:BYTE_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	v_perm_b32 v20, v9, v13, s12
	v_bitop3_b16 v1, v12, v1, s4 bitop3:0xec
	v_lshlrev_b32_e32 v1, 16, v1
	s_mov_b32 s4, 0x3020706
	v_and_or_b32 v24, v8, s16, v1
	v_perm_b32 v22, v8, v12, s4
	v_perm_b32 v18, v9, v13, s4
	ds_read_b128 v[2:5], v0 offset:512
	ds_read_b128 v[6:9], v0 offset:768
	v_perm_b32 v16, v10, v14, s12
	v_perm_b32 v12, v10, v14, s4
	v_perm_b32 v10, v11, v15, s12
	v_perm_b32 v0, v11, v15, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v2, v6, s12
	v_perm_b32 v23, v2, v6, s4
	v_perm_b32 v21, v3, v7, s12
	v_perm_b32 v19, v3, v7, s4
.Ltmp57:
	.loc	1 498 19                        ; moe_op_gemm_a8w4.py:498:19
	v_mul_lo_u32 v6, v212, s5
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_mul_lo_u32 v7, v208, s5
.Ltmp58:
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_perm_b32 v11, v5, v9, s12
	v_perm_b32 v1, v5, v9, s4
.Ltmp59:
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_mul_lo_u32 v5, v206, s5
	v_add_u32_e32 v6, v7, v6
	v_add_u32_e32 v5, v6, v5
.Ltmp60:
	.loc	2 10 23                         ; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:496:45 ]
	v_perm_b32 v17, v4, v8, s12
	v_perm_b32 v13, v4, v8, s4
.Ltmp61:
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_mul_lo_u32 v4, v207, s5
	v_mul_lo_u32 v3, v210, s5
	v_mul_lo_u32 v2, v211, s5
	.loc	1 503 10                        ; moe_op_gemm_a8w4.py:503:10
	v_add_u32_e32 v9, v132, v5
	.loc	1 505 29                        ; moe_op_gemm_a8w4.py:505:29
	s_and_b64 s[4:5], s[10:11], s[2:3]
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add_u32_e32 v4, v6, v4
	.loc	1 503 10                        ; moe_op_gemm_a8w4.py:503:10
	v_add_u32_e32 v8, v26, v5
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	v_cndmask_b32_e64 v9, v130, v9, s[4:5]
	.loc	1 505 29                        ; moe_op_gemm_a8w4.py:505:29
	s_and_b64 s[4:5], s[10:11], vcc
	.loc	1 503 10                        ; moe_op_gemm_a8w4.py:503:10
	v_add_u32_e32 v7, v132, v4
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	v_cndmask_b32_e64 v8, v130, v8, s[4:5]
	.loc	1 505 29                        ; moe_op_gemm_a8w4.py:505:29
	s_and_b64 s[4:5], s[8:9], s[2:3]
	.loc	1 502 10                        ; moe_op_gemm_a8w4.py:502:10
	v_add_u32_e32 v3, v6, v3
	v_add_u32_e32 v2, v6, v2
	.loc	1 503 10                        ; moe_op_gemm_a8w4.py:503:10
	v_add_u32_e32 v6, v26, v4
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	v_cndmask_b32_e64 v7, v130, v7, s[4:5]
	.loc	1 505 29                        ; moe_op_gemm_a8w4.py:505:29
	s_and_b64 s[4:5], s[8:9], vcc
	.loc	1 503 10                        ; moe_op_gemm_a8w4.py:503:10
	v_add_u32_e32 v5, v132, v3
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	v_cndmask_b32_e64 v6, v130, v6, s[4:5]
	.loc	1 505 29                        ; moe_op_gemm_a8w4.py:505:29
	s_and_b64 s[4:5], s[6:7], s[2:3]
	.loc	1 503 10                        ; moe_op_gemm_a8w4.py:503:10
	v_add_u32_e32 v4, v26, v3
	v_add_u32_e32 v3, v132, v2
	v_add_u32_e32 v2, v26, v2
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	v_cndmask_b32_e64 v5, v130, v5, s[4:5]
	.loc	1 505 29                        ; moe_op_gemm_a8w4.py:505:29
	s_and_b64 s[4:5], s[6:7], vcc
	s_and_b64 s[2:3], s[0:1], s[2:3]
	s_and_b64 vcc, s[0:1], vcc
	.loc	1 506 20                        ; moe_op_gemm_a8w4.py:506:20
	v_cndmask_b32_e64 v4, v130, v4, s[4:5]
	v_cndmask_b32_e64 v3, v130, v3, s[2:3]
	v_cndmask_b32_e32 v2, v130, v2, vcc
	buffer_store_dwordx2 v[24:25], v9, s[20:23], 0 offen
	buffer_store_dwordx2 v[22:23], v8, s[20:23], 0 offen
	buffer_store_dwordx2 v[20:21], v7, s[20:23], 0 offen
	buffer_store_dwordx2 v[18:19], v6, s[20:23], 0 offen
	buffer_store_dwordx2 v[16:17], v5, s[20:23], 0 offen
	buffer_store_dwordx2 v[12:13], v4, s[20:23], 0 offen
	buffer_store_dwordx2 v[10:11], v3, s[20:23], 0 offen
	buffer_store_dwordx2 v[0:1], v2, s[20:23], 0 offen
.LBB0_64:                               ; %common.ret
	.loc	1 0 0 is_stmt 0                 ; moe_op_gemm_a8w4.py:0
	s_endpgm
.Ltmp62:
.LBB0_65:
                                        ; implicit-def: $sgpr2_sgpr3
	v_cvt_f32_u32_e32 v19, s10
	s_branch .LBB0_4
.LBB0_66:
                                        ; implicit-def: $sgpr22_sgpr23
	s_load_dwordx2 s[8:9], s[0:1], 0x40
	v_cvt_f32_u32_e32 v19, s10
	s_branch .LBB0_7
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _moe_gemm_a8w4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
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
		.amdhsa_next_free_sgpr 47
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
	.set _moe_gemm_a8w4.numbered_sgpr, 47
	.set _moe_gemm_a8w4.num_named_barrier, 0
	.set _moe_gemm_a8w4.private_seg_size, 84
	.set _moe_gemm_a8w4.uses_vcc, 1
	.set _moe_gemm_a8w4.uses_flat_scratch, 0
	.set _moe_gemm_a8w4.has_dyn_sized_stack, 0
	.set _moe_gemm_a8w4.has_recursion, 0
	.set _moe_gemm_a8w4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28892
; TotalNumSgprs: 53
; NumVgprs: 256
; NumAgprs: 0
; TotalNumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 6
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.set amdgpu.max_num_named_barrier, 0
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
	.byte	1                               ; Abbrev [1] 0xb:0x92 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	496                             ; DW_AT_call_line
	.byte	45                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	61                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	315                             ; DW_AT_call_line
	.byte	56                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	398                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x75:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	478                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	112                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x8e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
    .private_segment_fixed_size: 84
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         _moe_gemm_a8w4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx950
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
