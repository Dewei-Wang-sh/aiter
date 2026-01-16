*** IR Dump After DummyCGSCCPass (DummyCGSCCPass) ***
Printing <null> Function
=========================================
logs/gpt-oss-x2/fp8x-mx4w-TP1.csv...
=========================================
moe_gemm_a8w4 kernel config:
x.shape=torch.Size([4096, 7168])
x.stride()=(7168, 1)
x.dtype=torch.float8_e4m3fn
w.shape=torch.Size([256, 3584, 4096])
w.stride()=(14680064, 1, 3584)
w.dtype=torch.uint8
w_scales.shape=torch.Size([256, 7168, 128])
y.shape=torch.Size([1, 32768, 2048])
y.stride()=(67108864, 2048, 1)
y.dtype=torch.float8_e4m3fn
config={'block_m': 128, 'block_n': 512, 'block_k': 256, 'num_warps': 8, 'num_stages': 2, 'group_m': 4, 'xcd_swizzle': 8, 'w_cache_modifier': None, 'split_k': 1, 'waves_per_eu': 0, 'matrix_instr_nonkdim': 16, 'kpack': 1}
// -----// AMDGCN Dump //----- //
	.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
	.amdhsa_code_object_version 5
	.text
	.globl	_moe_gemm_a8w4                  ; -- Begin function _moe_gemm_a8w4
	.p2align	8
	.type	_moe_gemm_a8w4,@function
_moe_gemm_a8w4:                         ; @_moe_gemm_a8w4
; %bb.62:
	s_load_dwordx2 s[2:3], s[0:1], 0x0
	s_load_dwordx8 s[4:11], s[0:1], 0x8
	s_load_dwordx4 s[12:15], s[0:1], 0x28
	s_waitcnt lgkmcnt(0)
	s_branch .LBB0_0
	.p2align	8
; %bb.63:
.LBB0_0:
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b64 s[20:21], s[2:3]
	s_load_dwordx2 s[2:3], s[0:1], 0x98
	s_load_dwordx2 s[6:7], s[0:1], 0x88
	v_mov_b32_e32 v1, 0
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 23, 1), 1
	s_waitcnt lgkmcnt(0)
	global_load_dword v2, v1, s[6:7]
	s_waitcnt vmcnt(0)
	v_readfirstlane_b32 s4, v2
	v_sub_u32_e32 v2, s2, v2
	s_mul_i32 s2, s4, s3
	s_cmp_lt_i32 s16, s2
	v_cmp_gt_i32_e32 vcc, 1, v2
	s_cselect_b64 s[6:7], -1, 0
	s_or_b64 s[6:7], vcc, s[6:7]
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz .LBB0_61
; %bb.1:
	s_ashr_i32 s6, s2, 31
	s_lshr_b32 s6, s6, 29
	s_add_i32 s6, s2, s6
	s_ashr_i32 s7, s6, 3
	s_and_b32 s6, s6, -8
	s_sub_i32 s6, s2, s6
	s_abs_i32 s2, s2
	v_cvt_f32_u32_e32 v2, s2
	s_ashr_i32 s9, s16, 31
	s_lshr_b32 s9, s9, 29
	s_add_i32 s9, s16, s9
	v_rcp_iflag_f32_e32 v2, v2
	s_ashr_i32 s10, s9, 3
	s_and_b32 s9, s9, -8
	s_sub_i32 s9, s16, s9
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	s_min_i32 s6, s9, s6
	s_mul_i32 s7, s7, s9
	s_add_i32 s6, s6, s10
	s_sub_i32 s9, 0, s2
	v_readfirstlane_b32 s10, v2
	s_mul_i32 s9, s9, s10
	s_add_i32 s6, s6, s7
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s7, s6, 31
	s_abs_i32 s6, s6
	s_add_i32 s10, s10, s9
	s_mul_hi_u32 s9, s6, s10
	s_mul_i32 s9, s9, s2
	s_sub_i32 s6, s6, s9
	s_sub_i32 s9, s6, s2
	s_cmp_ge_u32 s6, s2
	s_cselect_b32 s6, s9, s6
	s_sub_i32 s9, s6, s2
	s_cmp_ge_u32 s6, s2
	s_cselect_b32 s2, s9, s6
	s_lshl_b32 s10, s3, 2
	s_abs_i32 s3, s10
	v_cvt_f32_u32_e32 v2, s3
	s_sub_i32 s6, 0, s3
	s_xor_b32 s2, s2, s7
	s_sub_i32 s7, s2, s7
	v_rcp_iflag_f32_e32 v2, v2
	s_xor_b32 s2, s7, s10
	s_ashr_i32 s2, s2, 31
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	s_nop 0
	v_readfirstlane_b32 s9, v2
	s_mul_i32 s6, s6, s9
	s_mul_hi_u32 s6, s9, s6
	s_add_i32 s9, s9, s6
	s_abs_i32 s6, s7
	s_mul_hi_u32 s9, s6, s9
	s_mul_i32 s11, s9, s3
	s_sub_i32 s11, s6, s11
	s_add_i32 s16, s9, 1
	s_sub_i32 s17, s11, s3
	s_cmp_ge_u32 s11, s3
	s_cselect_b32 s9, s16, s9
	s_cselect_b32 s11, s17, s11
	s_add_i32 s16, s9, 1
	s_cmp_ge_u32 s11, s3
	s_cselect_b32 s3, s16, s9
	s_xor_b32 s3, s3, s2
	s_sub_i32 s11, s3, s2
	s_lshl_b32 s16, s11, 2
	s_sub_i32 s2, s4, s16
	s_min_i32 s22, s2, 4
	s_abs_i32 s4, s22
	v_cvt_f32_u32_e32 v2, s4
	s_sub_i32 s9, 0, s4
	s_ashr_i32 s17, s7, 31
	s_load_dwordx2 s[2:3], s[0:1], 0x90
	v_rcp_iflag_f32_e32 v2, v2
	s_nop 0
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	s_nop 0
	v_readfirstlane_b32 s18, v2
	s_mul_i32 s9, s9, s18
	s_mul_hi_u32 s9, s18, s9
	s_add_i32 s9, s18, s9
	s_mul_hi_u32 s18, s6, s9
	s_mul_i32 s18, s18, s4
	s_sub_i32 s6, s6, s18
	s_sub_i32 s18, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s6, s18, s6
	s_sub_i32 s18, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s6, s18, s6
	s_xor_b32 s6, s6, s17
	s_sub_i32 s6, s6, s17
	s_add_i32 s16, s16, s6
	s_ashr_i32 s17, s16, 31
	s_lshl_b64 s[16:17], s[16:17], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s16
	s_addc_u32 s3, s3, s17
	global_load_dword v1, v1, s[2:3]
	s_mov_b32 s6, 0
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, -1, v1
	s_cbranch_vccnz .LBB0_61
; %bb.2:
	s_load_dwordx4 s[16:19], s[0:1], 0x70
	s_load_dwordx2 s[2:3], s[0:1], 0x80
	v_and_b32_e32 v175, 0xffff, v1
	v_lshlrev_b32_e32 v4, 2, v175
	v_ashrrev_i32_e32 v2, 16, v1
	s_waitcnt lgkmcnt(0)
	global_load_dword v174, v4, s[18:19]
	global_load_dword v233, v4, s[2:3]
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshrrev_b32_e32 v229, 4, v0
	v_lshlrev_b64 v[234:235], 7, v[2:3]
	v_or_b32_e32 v230, 32, v229
	v_or_b32_e32 v231, 64, v229
	v_or_b32_e32 v232, 0x60, v229
	v_or_b32_e32 v172, v234, v229
	v_or_b32_e32 v170, v234, v230
	v_or_b32_e32 v168, v234, v231
	v_or_b32_e32 v190, v234, v232
	v_sub_u32_e32 v3, 0, v172
	v_sub_u32_e32 v5, 0, v170
	v_sub_u32_e32 v7, 0, v168
	v_sub_u32_e32 v9, 0, v190
	v_max_i32_e32 v3, v172, v3
	v_max_i32_e32 v5, v170, v5
	v_max_i32_e32 v7, v168, v7
	v_max_i32_e32 v9, v190, v9
	s_mul_i32 s11, s11, s10
	s_sub_i32 s7, s7, s11
	s_ashr_i32 s10, s7, 31
	s_abs_i32 s7, s7
	s_mul_hi_u32 s9, s7, s9
	s_mul_i32 s2, s9, s4
	s_ashr_i32 s18, s22, 31
	s_sub_i32 s2, s7, s2
	s_xor_b32 s10, s10, s18
	s_add_i32 s3, s9, 1
	s_sub_i32 s7, s2, s4
	s_cmp_ge_u32 s2, s4
	v_ashrrev_i32_e32 v2, 31, v172
	s_cselect_b32 s3, s3, s9
	v_ashrrev_i32_e32 v4, 31, v170
	v_ashrrev_i32_e32 v6, 31, v168
	v_ashrrev_i32_e32 v8, 31, v190
	s_cselect_b32 s2, s7, s2
	s_add_i32 s7, s3, 1
	s_mov_b32 s27, 0x27000
	s_mov_b32 s26, 0x7ffffffe
	s_cmp_ge_u32 s2, s4
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_cselect_b32 s2, s7, s3
	s_and_b32 s17, s17, 0xffff
	s_load_dwordx2 s[22:23], s[0:1], 0x64
	s_load_dwordx2 s[28:29], s[0:1], 0x38
	s_xor_b32 s2, s2, s10
	v_and_b32_e32 v159, 15, v0
	s_sub_i32 s34, s2, s10
	v_lshlrev_b32_e32 v192, 4, v159
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
	s_ashr_i32 s35, s34, 31
	s_cmpk_gt_i32 s4, 0xff
                                        ; implicit-def: $vgpr22_vgpr23
	s_waitcnt vmcnt(1)
	v_sub_u32_e32 v10, 0, v174
	v_max_i32_e32 v10, v174, v10
	v_cvt_f32_u32_e32 v11, v10
	v_sub_u32_e32 v12, 0, v10
	v_rcp_iflag_f32_e32 v11, v11
	s_nop 0
	v_mul_f32_e32 v11, 0x4f7ffffe, v11
	v_cvt_u32_f32_e32 v11, v11
	v_mul_lo_u32 v12, v12, v11
	v_mul_hi_u32 v12, v11, v12
	v_add_u32_e32 v11, v11, v12
	v_mul_hi_u32 v12, v3, v11
	v_mul_hi_u32 v13, v5, v11
	v_mul_hi_u32 v14, v7, v11
	v_mul_hi_u32 v11, v9, v11
	v_mul_lo_u32 v12, v12, v10
	v_mul_lo_u32 v13, v13, v10
	v_mul_lo_u32 v11, v11, v10
	v_sub_u32_e32 v3, v3, v12
	v_mul_lo_u32 v14, v14, v10
	v_sub_u32_e32 v5, v5, v13
	v_sub_u32_e32 v9, v9, v11
	v_sub_u32_e32 v11, v3, v10
	v_cmp_ge_u32_e32 vcc, v3, v10
	v_sub_u32_e32 v7, v7, v14
	v_sub_u32_e32 v12, v5, v10
	v_cndmask_b32_e32 v3, v3, v11, vcc
	v_cmp_ge_u32_e32 vcc, v5, v10
	v_sub_u32_e32 v13, v7, v10
	v_sub_u32_e32 v14, v9, v10
	v_cndmask_b32_e32 v5, v5, v12, vcc
	v_cmp_ge_u32_e32 vcc, v7, v10
	v_sub_u32_e32 v11, v3, v10
	v_sub_u32_e32 v12, v5, v10
	v_cndmask_b32_e32 v7, v7, v13, vcc
	v_cmp_ge_u32_e32 vcc, v9, v10
	v_sub_u32_e32 v13, v7, v10
	s_nop 0
	v_cndmask_b32_e32 v9, v9, v14, vcc
	v_cmp_ge_u32_e32 vcc, v3, v10
	v_sub_u32_e32 v14, v9, v10
	s_nop 0
	v_cndmask_b32_e32 v3, v3, v11, vcc
	v_cmp_ge_u32_e32 vcc, v5, v10
	v_xor_b32_e32 v3, v3, v2
	v_sub_u32_e32 v2, v3, v2
	v_cndmask_b32_e32 v5, v5, v12, vcc
	v_cmp_ge_u32_e32 vcc, v7, v10
	v_xor_b32_e32 v5, v5, v4
	v_sub_u32_e32 v3, v5, v4
	v_cndmask_b32_e32 v7, v7, v13, vcc
	v_cmp_ge_u32_e32 vcc, v9, v10
	v_xor_b32_e32 v7, v7, v6
	v_sub_u32_e32 v4, v7, v6
	v_cndmask_b32_e32 v9, v9, v14, vcc
	v_xor_b32_e32 v9, v9, v8
	v_sub_u32_e32 v5, v9, v8
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, v233, v2, 2
	v_add_lshl_u32 v3, v233, v3, 2
	v_add_lshl_u32 v4, v233, v4, 2
	v_add_lshl_u32 v5, v233, v5, 2
	buffer_load_dword v6, v2, s[16:19], 0 offen
	buffer_load_dword v7, v3, s[16:19], 0 offen
	buffer_load_dword v8, v4, s[16:19], 0 offen
	buffer_load_dword v9, v5, s[16:19], 0 offen
	v_bfrev_b32_e32 v2, 1
	s_waitcnt vmcnt(3)
	v_ashrrev_i32_e32 v3, 31, v6
	s_waitcnt vmcnt(2)
	v_ashrrev_i32_e32 v4, 31, v7
	s_waitcnt vmcnt(1)
	v_ashrrev_i32_e32 v5, 31, v8
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshrrev_b32_e32 v3, 29, v3
	v_lshrrev_b32_e32 v4, 29, v4
	v_lshrrev_b32_e32 v5, 29, v5
	v_lshrrev_b32_e32 v10, 29, v10
	v_add_u32_e32 v3, v6, v3
	v_add_u32_e32 v4, v7, v4
	v_add_u32_e32 v5, v8, v5
	v_add_u32_e32 v6, v9, v10
	v_ashrrev_i32_e32 v3, 3, v3
	v_ashrrev_i32_e32 v4, 3, v4
	v_ashrrev_i32_e32 v5, 3, v5
	v_ashrrev_i32_e32 v6, 3, v6
	v_mad_u64_u32 v[130:131], s[2:3], v3, s8, v[192:193]
	v_mad_u64_u32 v[132:133], s[2:3], v4, s8, v[192:193]
	v_mad_u64_u32 v[134:135], s[2:3], v5, s8, v[192:193]
	v_mad_u64_u32 v[136:137], s[2:3], v6, s8, v[192:193]
	s_cselect_b64 s[2:3], -1, 0
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v18, v2, v130, s[2:3]
	v_cndmask_b32_e64 v19, v2, v132, s[2:3]
	v_cndmask_b32_e64 v20, v2, v134, s[2:3]
	v_cndmask_b32_e64 v21, v2, v136, s[2:3]
	buffer_load_dwordx4 v[2:5], v18, s[24:27], 0 offen
	buffer_load_dwordx4 v[6:9], v19, s[24:27], 0 offen
	buffer_load_dwordx4 v[10:13], v20, s[24:27], 0 offen
	buffer_load_dwordx4 v[14:17], v21, s[24:27], 0 offen
	s_lshl_b64 s[8:9], s[34:35], 4
	v_lshrrev_b32_e32 v18, 5, v0
	s_ashr_i32 s23, s22, 31
	v_or_b32_e32 v18, s8, v18
	v_mov_b32_e32 v19, s9
	s_or_b64 s[8:9], s[8:9], s[22:23]
	s_mov_b32 s7, s9
	s_cmp_lg_u64 s[6:7], 0
	v_mov_b32_e32 v21, 0
	s_cselect_b64 s[6:7], -1, 0
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz .LBB0_4
; %bb.3:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s10, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s11, s23, s6
	s_xor_b64 s[10:11], s[10:11], s[6:7]
	v_cvt_f32_u32_e32 v20, s10
	v_cvt_f32_u32_e32 v22, s11
	s_sub_u32 s16, 0, s10
	s_subb_u32 s17, 0, s11
	v_fmamk_f32 v20, v22, 0x4f800000, v20
	v_rcp_f32_e32 v20, v20
	s_nop 0
	v_mul_f32_e32 v20, 0x5f7ffffc, v20
	v_mul_f32_e32 v22, 0x2f800000, v20
	v_trunc_f32_e32 v22, v22
	v_fmamk_f32 v20, v22, 0xcf800000, v20
	v_cvt_u32_f32_e32 v22, v22
	v_cvt_u32_f32_e32 v20, v20
	v_readfirstlane_b32 s18, v22
	v_readfirstlane_b32 s6, v20
	s_mul_i32 s7, s16, s18
	s_mul_hi_u32 s30, s16, s6
	s_mul_i32 s19, s17, s6
	s_add_i32 s7, s30, s7
	s_add_i32 s7, s7, s19
	s_mul_i32 s31, s16, s6
	s_mul_i32 s30, s6, s7
	s_mul_hi_u32 s33, s6, s31
	s_mul_hi_u32 s19, s6, s7
	s_add_u32 s30, s33, s30
	s_addc_u32 s19, 0, s19
	s_mul_hi_u32 s36, s18, s31
	s_mul_i32 s31, s18, s31
	s_add_u32 s30, s30, s31
	s_mul_hi_u32 s33, s18, s7
	s_addc_u32 s19, s19, s36
	s_addc_u32 s30, s33, 0
	s_mul_i32 s7, s18, s7
	s_add_u32 s7, s19, s7
	s_addc_u32 s19, 0, s30
	s_add_u32 s30, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s18, s18, s19
	s_mul_i32 s6, s16, s18
	s_mul_hi_u32 s7, s16, s30
	s_add_i32 s6, s7, s6
	s_mul_i32 s17, s17, s30
	s_add_i32 s6, s6, s17
	s_mul_i32 s16, s16, s30
	s_mul_hi_u32 s17, s18, s16
	s_mul_i32 s19, s18, s16
	s_mul_i32 s33, s30, s6
	s_mul_hi_u32 s16, s30, s16
	s_mul_hi_u32 s31, s30, s6
	s_add_u32 s16, s16, s33
	s_addc_u32 s31, 0, s31
	s_add_u32 s16, s16, s19
	s_mul_hi_u32 s7, s18, s6
	s_addc_u32 s16, s31, s17
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s18, s6
	s_add_u32 s6, s16, s6
	s_addc_u32 s16, 0, s7
	s_add_u32 s17, s30, s6
	v_ashrrev_i32_e32 v22, 31, v19
	s_cselect_b64 s[6:7], -1, 0
	v_mov_b32_e32 v23, v22
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[18:19], v[18:19], 0, v[22:23]
	s_addc_u32 s16, s18, s16
	v_xor_b32_e32 v28, v18, v22
	v_xor_b32_e32 v23, v19, v22
	v_mad_u64_u32 v[18:19], s[6:7], v28, s16, 0
	v_mul_hi_u32 v20, v28, s17
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[18:19]
	v_mad_u64_u32 v[26:27], s[6:7], v23, s17, 0
	v_add_co_u32_e32 v18, vcc, v18, v26
	v_mad_u64_u32 v[24:25], s[6:7], v23, s16, 0
	s_nop 0
	v_addc_co_u32_e32 v20, vcc, v19, v27, vcc
	s_nop 1
	v_addc_co_u32_e32 v25, vcc, 0, v25, vcc
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[24:25]
	v_mul_lo_u32 v20, s11, v18
	v_mul_lo_u32 v21, s10, v19
	v_mad_u64_u32 v[18:19], s[6:7], s10, v18, 0
	v_add3_u32 v19, v19, v21, v20
	v_sub_u32_e32 v20, v23, v19
	v_mov_b32_e32 v21, s11
	v_sub_co_u32_e32 v18, vcc, v28, v18
	s_nop 1
	v_subb_co_u32_e64 v20, s[6:7], v20, v21, vcc
	v_subrev_co_u32_e64 v21, s[6:7], s10, v18
	v_subb_co_u32_e32 v19, vcc, v23, v19, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v20, s[6:7], 0, v20, s[6:7]
	v_cmp_le_u32_e64 s[6:7], s11, v20
	v_cmp_le_u32_e32 vcc, s11, v19
	s_nop 0
	v_cndmask_b32_e64 v24, 0, -1, s[6:7]
	v_cmp_le_u32_e64 s[6:7], s10, v21
	v_cndmask_b32_e64 v23, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s10, v18
	v_cndmask_b32_e64 v25, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], s11, v20
	s_nop 1
	v_cndmask_b32_e64 v20, v24, v25, s[6:7]
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s11, v19
	v_subrev_co_u32_e64 v24, s[6:7], s10, v21
	s_nop 0
	v_cndmask_b32_e32 v19, v23, v25, vcc
	v_cmp_ne_u32_e32 vcc, 0, v20
	s_nop 1
	v_cndmask_b32_e32 v20, v21, v24, vcc
	v_cmp_ne_u32_e32 vcc, 0, v19
	s_nop 1
	v_cndmask_b32_e32 v18, v18, v20, vcc
	v_xor_b32_e32 v18, v18, v22
	v_sub_co_u32_e32 v22, vcc, v18, v22
                                        ; implicit-def: $vgpr18_vgpr19
.LBB0_4:                                ; %Flow349
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_load_dwordx2 s[6:7], s[0:1], 0x40
	v_cvt_f32_u32_e32 v19, s22
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz .LBB0_6
; %bb.5:
	v_rcp_iflag_f32_e32 v19, v19
	s_sub_i32 s10, 0, s22
	v_mul_f32_e32 v19, 0x4f7ffffe, v19
	v_cvt_u32_f32_e32 v19, v19
	v_mul_lo_u32 v20, s10, v19
	v_mul_hi_u32 v20, v19, v20
	v_add_u32_e32 v19, v19, v20
	v_mul_hi_u32 v19, v18, v19
	v_mul_lo_u32 v19, v19, s22
	v_sub_u32_e32 v18, v18, v19
	v_subrev_u32_e32 v19, s22, v18
	v_cmp_le_u32_e32 vcc, s22, v18
	s_nop 1
	v_cndmask_b32_e32 v18, v18, v19, vcc
	v_subrev_u32_e32 v19, s22, v18
	v_cmp_le_u32_e32 vcc, s22, v18
	s_nop 1
	v_cndmask_b32_e32 v22, v18, v19, vcc
.LBB0_6:
	s_or_b64 exec, exec, s[8:9]
	v_lshlrev_b32_e32 v166, 3, v0
	v_and_b32_e32 v131, 0xf8, v166
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v133, v175, s6
	v_mul_lo_u32 v135, s7, v22
	v_add3_u32 v18, v133, v131, v135
	v_bfrev_b32_e32 v19, 1
	s_mov_b32 s31, 0x27000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v18, v19, v18, s[2:3]
	buffer_load_dwordx2 v[50:51], v18, s[28:31], 0 offen
	s_lshl_b64 s[18:19], s[34:35], 9
	s_or_b64 s[10:11], s[18:19], s[22:23]
	s_mov_b32 s6, 0
	s_mov_b32 s7, s11
	v_lshrrev_b32_e32 v236, 3, v0
	s_cmp_lg_u64 s[6:7], 0
	v_or_b32_e32 v20, s18, v236
	v_mov_b32_e32 v21, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr18_vgpr19
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_8
; %bb.7:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v18, s36
	v_cvt_f32_u32_e32 v19, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_ashrrev_i32_e32 v22, 31, v21
	v_fmamk_f32 v18, v19, 0x4f800000, v18
	v_rcp_f32_e32 v18, v18
	v_mov_b32_e32 v23, v22
	v_mov_b32_e32 v25, 0
	v_mul_f32_e32 v18, 0x5f7ffffc, v18
	v_mul_f32_e32 v19, 0x2f800000, v18
	v_trunc_f32_e32 v19, v19
	v_fmamk_f32 v18, v19, 0xcf800000, v18
	v_cvt_u32_f32_e32 v19, v19
	v_cvt_u32_f32_e32 v18, v18
	v_readfirstlane_b32 s10, v19
	v_readfirstlane_b32 s6, v18
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[22:23]
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v23, v18, v22
	v_xor_b32_e32 v21, v19, v22
	v_mad_u64_u32 v[18:19], s[6:7], v23, s8, 0
	v_mul_hi_u32 v24, v23, s9
	v_lshl_add_u64 v[18:19], v[24:25], 0, v[18:19]
	v_mad_u64_u32 v[28:29], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v18, vcc, v18, v28
	v_mad_u64_u32 v[26:27], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v19, v29, vcc
	s_nop 1
	v_addc_co_u32_e32 v27, vcc, 0, v27, vcc
	v_lshl_add_u64 v[18:19], v[24:25], 0, v[26:27]
	v_mul_lo_u32 v24, s37, v18
	v_mul_lo_u32 v25, s36, v19
	v_mad_u64_u32 v[18:19], s[6:7], s36, v18, 0
	v_add3_u32 v19, v19, v25, v24
	v_sub_u32_e32 v24, v21, v19
	v_mov_b32_e32 v25, s37
	v_sub_co_u32_e32 v18, vcc, v23, v18
	s_nop 1
	v_subb_co_u32_e64 v23, s[6:7], v24, v25, vcc
	v_subrev_co_u32_e64 v24, s[6:7], s36, v18
	v_subb_co_u32_e32 v19, vcc, v21, v19, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v26, s[8:9], 0, v23, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v26
	v_subb_co_u32_e64 v23, s[6:7], v23, v25, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v27, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v24
	v_subrev_co_u32_e64 v25, s[6:7], s36, v24
	s_nop 0
	v_cndmask_b32_e64 v28, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v26
	v_subbrev_co_u32_e64 v23, s[6:7], 0, v23, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v27, v27, v28, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v19
	v_cmp_ne_u32_e64 s[6:7], 0, v27
	s_nop 0
	v_cndmask_b32_e64 v21, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v18
	v_cndmask_b32_e64 v23, v26, v23, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v26, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v19
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v26, vcc
	v_cmp_ne_u32_e32 vcc, 0, v21
	v_cndmask_b32_e64 v21, v24, v25, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v18, v18, v21, vcc
	v_cndmask_b32_e32 v19, v19, v23, vcc
	v_xor_b32_e32 v18, v18, v22
	v_xor_b32_e32 v19, v19, v22
	v_sub_co_u32_e32 v18, vcc, v18, v22
	s_nop 1
	v_subb_co_u32_e32 v19, vcc, v19, v22, vcc
.LBB0_8:                                ; %Flow348
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_10
; %bb.9:
	v_rcp_iflag_f32_e32 v18, v21
	s_sub_i32 s8, 0, s22
	v_mul_f32_e32 v18, 0x4f7ffffe, v18
	v_cvt_u32_f32_e32 v18, v18
	v_mul_lo_u32 v19, s8, v18
	v_mul_hi_u32 v19, v18, v19
	v_add_u32_e32 v18, v18, v19
	v_mul_hi_u32 v18, v20, v18
	v_mul_lo_u32 v18, v18, s22
	v_sub_u32_e32 v18, v20, v18
	v_subrev_u32_e32 v19, s22, v18
	v_cmp_le_u32_e32 vcc, s22, v18
	s_nop 1
	v_cndmask_b32_e32 v18, v18, v19, vcc
	v_subrev_u32_e32 v19, s22, v18
	v_cmp_le_u32_e32 vcc, s22, v18
	s_nop 1
	v_cndmask_b32_e32 v18, v18, v19, vcc
	v_mov_b32_e32 v19, 0
.LBB0_10:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or3_b32 v24, v236, s18, 64
	v_mov_b32_e32 v25, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr22_vgpr23
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_12
; %bb.11:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v21, s36
	v_cvt_f32_u32_e32 v22, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_ashrrev_i32_e32 v26, 31, v25
	v_fmamk_f32 v21, v22, 0x4f800000, v21
	v_rcp_f32_e32 v21, v21
	v_mov_b32_e32 v27, v26
	v_mul_f32_e32 v21, 0x5f7ffffc, v21
	v_mul_f32_e32 v22, 0x2f800000, v21
	v_trunc_f32_e32 v22, v22
	v_fmamk_f32 v21, v22, 0xcf800000, v21
	v_cvt_u32_f32_e32 v22, v22
	v_cvt_u32_f32_e32 v21, v21
	v_readfirstlane_b32 s10, v22
	v_readfirstlane_b32 s6, v21
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[26:27]
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v27, v22, v26
	v_xor_b32_e32 v21, v23, v26
	v_mad_u64_u32 v[22:23], s[6:7], v27, s8, 0
	v_mul_hi_u32 v24, v27, s9
	v_mov_b32_e32 v25, 0
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[22:23]
	v_mad_u64_u32 v[30:31], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v22, vcc, v22, v30
	v_mad_u64_u32 v[28:29], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v24, vcc, v23, v31, vcc
	s_nop 1
	v_addc_co_u32_e32 v29, vcc, 0, v29, vcc
	v_lshl_add_u64 v[22:23], v[24:25], 0, v[28:29]
	v_mul_lo_u32 v24, s37, v22
	v_mul_lo_u32 v25, s36, v23
	v_mad_u64_u32 v[22:23], s[6:7], s36, v22, 0
	v_add3_u32 v23, v23, v25, v24
	v_sub_u32_e32 v24, v21, v23
	v_mov_b32_e32 v25, s37
	v_sub_co_u32_e32 v22, vcc, v27, v22
	s_nop 1
	v_subb_co_u32_e64 v24, s[6:7], v24, v25, vcc
	v_subrev_co_u32_e64 v27, s[6:7], s36, v22
	v_subb_co_u32_e32 v21, vcc, v21, v23, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v28, s[8:9], 0, v24, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v28
	v_subb_co_u32_e64 v24, s[6:7], v24, v25, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v29, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v27
	v_subrev_co_u32_e64 v25, s[6:7], s36, v27
	s_nop 0
	v_cndmask_b32_e64 v30, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v28
	v_subbrev_co_u32_e64 v24, s[6:7], 0, v24, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v29, v29, v30, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v29
	s_nop 0
	v_cndmask_b32_e64 v23, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v22
	v_cndmask_b32_e64 v24, v28, v24, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v28, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v21
	s_nop 1
	v_cndmask_b32_e32 v23, v23, v28, vcc
	v_cmp_ne_u32_e32 vcc, 0, v23
	v_cndmask_b32_e64 v23, v27, v25, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v22, v22, v23, vcc
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_xor_b32_e32 v22, v22, v26
	v_xor_b32_e32 v21, v21, v26
	v_sub_co_u32_e32 v22, vcc, v22, v26
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v23, vcc, v21, v26, vcc
.LBB0_12:                               ; %Flow347
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_14
; %bb.13:
	v_rcp_iflag_f32_e32 v21, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v23, 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v22, s8, v21
	v_mul_hi_u32 v22, v21, v22
	v_add_u32_e32 v21, v21, v22
	v_mul_hi_u32 v21, v24, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v21, v24, v21
	v_subrev_u32_e32 v22, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v22, vcc
	v_subrev_u32_e32 v22, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v22, v21, v22, vcc
.LBB0_14:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or_b32_e32 v24, 0x80, v20
	v_mov_b32_e32 v25, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr26_vgpr27
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_16
; %bb.15:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v21, s36
	v_cvt_f32_u32_e32 v26, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_ashrrev_i32_e32 v28, 31, v25
	v_fmamk_f32 v21, v26, 0x4f800000, v21
	v_rcp_f32_e32 v21, v21
	v_mov_b32_e32 v29, v28
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[28:29]
	v_xor_b32_e32 v29, v24, v28
	v_mul_f32_e32 v21, 0x5f7ffffc, v21
	v_mul_f32_e32 v26, 0x2f800000, v21
	v_trunc_f32_e32 v26, v26
	v_fmamk_f32 v21, v26, 0xcf800000, v21
	v_cvt_u32_f32_e32 v26, v26
	v_cvt_u32_f32_e32 v21, v21
	v_mov_b32_e32 v27, 0
	v_readfirstlane_b32 s10, v26
	v_readfirstlane_b32 s6, v21
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v21, v25, v28
	v_mad_u64_u32 v[24:25], s[6:7], v29, s8, 0
	v_mul_hi_u32 v26, v29, s9
	v_lshl_add_u64 v[24:25], v[26:27], 0, v[24:25]
	v_mad_u64_u32 v[32:33], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v32
	v_mad_u64_u32 v[30:31], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v26, vcc, v25, v33, vcc
	s_nop 1
	v_addc_co_u32_e32 v31, vcc, 0, v31, vcc
	v_lshl_add_u64 v[24:25], v[26:27], 0, v[30:31]
	v_mul_lo_u32 v26, s37, v24
	v_mul_lo_u32 v27, s36, v25
	v_mad_u64_u32 v[24:25], s[6:7], s36, v24, 0
	v_add3_u32 v25, v25, v27, v26
	v_sub_u32_e32 v26, v21, v25
	v_mov_b32_e32 v27, s37
	v_sub_co_u32_e32 v24, vcc, v29, v24
	s_nop 1
	v_subb_co_u32_e64 v26, s[6:7], v26, v27, vcc
	v_subrev_co_u32_e64 v29, s[6:7], s36, v24
	v_subb_co_u32_e32 v21, vcc, v21, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v30, s[8:9], 0, v26, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v30
	v_subb_co_u32_e64 v26, s[6:7], v26, v27, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v31, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v29
	v_subrev_co_u32_e64 v27, s[6:7], s36, v29
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v30
	v_subbrev_co_u32_e64 v26, s[6:7], 0, v26, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v31, v31, v32, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v31
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v24
	v_cndmask_b32_e64 v26, v30, v26, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v30, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v21
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v30, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	v_cndmask_b32_e64 v25, v29, v27, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v24, v24, v25, vcc
	v_cndmask_b32_e32 v21, v21, v26, vcc
	v_xor_b32_e32 v24, v24, v28
	v_xor_b32_e32 v21, v21, v28
	v_sub_co_u32_e32 v26, vcc, v24, v28
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v27, vcc, v21, v28, vcc
.LBB0_16:                               ; %Flow346
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_18
; %bb.17:
	v_rcp_iflag_f32_e32 v21, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v27, 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v25, s8, v21
	v_mul_hi_u32 v25, v21, v25
	v_add_u32_e32 v21, v21, v25
	v_mul_hi_u32 v21, v24, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v21, v24, v21
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v26, v21, v24, vcc
.LBB0_18:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or_b32_e32 v24, 0xc0, v20
	v_mov_b32_e32 v25, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr28_vgpr29
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_20
; %bb.19:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v21, s36
	v_cvt_f32_u32_e32 v28, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_ashrrev_i32_e32 v30, 31, v25
	v_fmamk_f32 v21, v28, 0x4f800000, v21
	v_rcp_f32_e32 v21, v21
	v_mov_b32_e32 v31, v30
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[30:31]
	v_xor_b32_e32 v31, v24, v30
	v_mul_f32_e32 v21, 0x5f7ffffc, v21
	v_mul_f32_e32 v28, 0x2f800000, v21
	v_trunc_f32_e32 v28, v28
	v_fmamk_f32 v21, v28, 0xcf800000, v21
	v_cvt_u32_f32_e32 v28, v28
	v_cvt_u32_f32_e32 v21, v21
	v_mov_b32_e32 v29, 0
	v_readfirstlane_b32 s10, v28
	v_readfirstlane_b32 s6, v21
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v21, v25, v30
	v_mad_u64_u32 v[24:25], s[6:7], v31, s8, 0
	v_mul_hi_u32 v28, v31, s9
	v_lshl_add_u64 v[24:25], v[28:29], 0, v[24:25]
	v_mad_u64_u32 v[34:35], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v34
	v_mad_u64_u32 v[32:33], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v28, vcc, v25, v35, vcc
	s_nop 1
	v_addc_co_u32_e32 v33, vcc, 0, v33, vcc
	v_lshl_add_u64 v[24:25], v[28:29], 0, v[32:33]
	v_mul_lo_u32 v28, s37, v24
	v_mul_lo_u32 v29, s36, v25
	v_mad_u64_u32 v[24:25], s[6:7], s36, v24, 0
	v_add3_u32 v25, v25, v29, v28
	v_sub_u32_e32 v28, v21, v25
	v_mov_b32_e32 v29, s37
	v_sub_co_u32_e32 v24, vcc, v31, v24
	s_nop 1
	v_subb_co_u32_e64 v28, s[6:7], v28, v29, vcc
	v_subrev_co_u32_e64 v31, s[6:7], s36, v24
	v_subb_co_u32_e32 v21, vcc, v21, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v32, s[8:9], 0, v28, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v32
	v_subb_co_u32_e64 v28, s[6:7], v28, v29, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v31
	v_subrev_co_u32_e64 v29, s[6:7], s36, v31
	s_nop 0
	v_cndmask_b32_e64 v34, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v32
	v_subbrev_co_u32_e64 v28, s[6:7], 0, v28, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v33, v33, v34, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v33
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v24
	v_cndmask_b32_e64 v28, v32, v28, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v32, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v21
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v32, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	v_cndmask_b32_e64 v25, v31, v29, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v24, v24, v25, vcc
	v_cndmask_b32_e32 v21, v21, v28, vcc
	v_xor_b32_e32 v24, v24, v30
	v_xor_b32_e32 v21, v21, v30
	v_sub_co_u32_e32 v28, vcc, v24, v30
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v29, vcc, v21, v30, vcc
.LBB0_20:                               ; %Flow345
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_22
; %bb.21:
	v_rcp_iflag_f32_e32 v21, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v29, 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v25, s8, v21
	v_mul_hi_u32 v25, v21, v25
	v_add_u32_e32 v21, v21, v25
	v_mul_hi_u32 v21, v24, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v21, v24, v21
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v28, v21, v24, vcc
.LBB0_22:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or_b32_e32 v24, 0x100, v20
	v_mov_b32_e32 v25, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr34_vgpr35
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_24
; %bb.23:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v21, s36
	v_cvt_f32_u32_e32 v30, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_mov_b32_e32 v33, 0
	v_fmamk_f32 v21, v30, 0x4f800000, v21
	v_rcp_f32_e32 v21, v21
	s_nop 0
	v_mul_f32_e32 v21, 0x5f7ffffc, v21
	v_mul_f32_e32 v30, 0x2f800000, v21
	v_trunc_f32_e32 v30, v30
	v_fmamk_f32 v21, v30, 0xcf800000, v21
	v_cvt_u32_f32_e32 v30, v30
	v_cvt_u32_f32_e32 v21, v21
	v_readfirstlane_b32 s10, v30
	v_readfirstlane_b32 s6, v21
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	v_ashrrev_i32_e32 v30, 31, v25
	s_cselect_b64 s[6:7], -1, 0
	v_mov_b32_e32 v31, v30
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[30:31]
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v31, v24, v30
	v_xor_b32_e32 v21, v25, v30
	v_mad_u64_u32 v[24:25], s[6:7], v31, s8, 0
	v_mul_hi_u32 v32, v31, s9
	v_lshl_add_u64 v[24:25], v[32:33], 0, v[24:25]
	v_mad_u64_u32 v[36:37], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v36
	v_mad_u64_u32 v[34:35], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v32, vcc, v25, v37, vcc
	s_nop 1
	v_addc_co_u32_e32 v35, vcc, 0, v35, vcc
	v_lshl_add_u64 v[24:25], v[32:33], 0, v[34:35]
	v_mul_lo_u32 v32, s37, v24
	v_mul_lo_u32 v33, s36, v25
	v_mad_u64_u32 v[24:25], s[6:7], s36, v24, 0
	v_add3_u32 v25, v25, v33, v32
	v_sub_u32_e32 v32, v21, v25
	v_mov_b32_e32 v33, s37
	v_sub_co_u32_e32 v24, vcc, v31, v24
	s_nop 1
	v_subb_co_u32_e64 v31, s[6:7], v32, v33, vcc
	v_subrev_co_u32_e64 v32, s[6:7], s36, v24
	v_subb_co_u32_e32 v21, vcc, v21, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v34, s[8:9], 0, v31, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v34
	v_subb_co_u32_e64 v31, s[6:7], v31, v33, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v35, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v32
	v_subrev_co_u32_e64 v33, s[6:7], s36, v32
	s_nop 0
	v_cndmask_b32_e64 v36, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v34
	v_subbrev_co_u32_e64 v31, s[6:7], 0, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v35, v35, v36, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v35
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v24
	v_cndmask_b32_e64 v31, v34, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v34, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v21
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v34, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	v_cndmask_b32_e64 v25, v32, v33, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v24, v24, v25, vcc
	v_cndmask_b32_e32 v21, v21, v31, vcc
	v_xor_b32_e32 v24, v24, v30
	v_xor_b32_e32 v21, v21, v30
	v_sub_co_u32_e32 v34, vcc, v24, v30
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v35, vcc, v21, v30, vcc
.LBB0_24:                               ; %Flow344
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_26
; %bb.25:
	v_rcp_iflag_f32_e32 v21, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v35, 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v25, s8, v21
	v_mul_hi_u32 v25, v21, v25
	v_add_u32_e32 v21, v21, v25
	v_mul_hi_u32 v21, v24, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v21, v24, v21
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v34, v21, v24, vcc
.LBB0_26:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or_b32_e32 v24, 0x140, v20
	v_mov_b32_e32 v25, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr36_vgpr37
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_28
; %bb.27:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v21, s36
	v_cvt_f32_u32_e32 v30, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_mov_b32_e32 v33, 0
	v_fmamk_f32 v21, v30, 0x4f800000, v21
	v_rcp_f32_e32 v21, v21
	s_nop 0
	v_mul_f32_e32 v21, 0x5f7ffffc, v21
	v_mul_f32_e32 v30, 0x2f800000, v21
	v_trunc_f32_e32 v30, v30
	v_fmamk_f32 v21, v30, 0xcf800000, v21
	v_cvt_u32_f32_e32 v30, v30
	v_cvt_u32_f32_e32 v21, v21
	v_readfirstlane_b32 s10, v30
	v_readfirstlane_b32 s6, v21
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	v_ashrrev_i32_e32 v30, 31, v25
	s_cselect_b64 s[6:7], -1, 0
	v_mov_b32_e32 v31, v30
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[30:31]
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v31, v24, v30
	v_xor_b32_e32 v21, v25, v30
	v_mad_u64_u32 v[24:25], s[6:7], v31, s8, 0
	v_mul_hi_u32 v32, v31, s9
	v_lshl_add_u64 v[24:25], v[32:33], 0, v[24:25]
	v_mad_u64_u32 v[38:39], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v38
	v_mad_u64_u32 v[36:37], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v32, vcc, v25, v39, vcc
	s_nop 1
	v_addc_co_u32_e32 v37, vcc, 0, v37, vcc
	v_lshl_add_u64 v[24:25], v[32:33], 0, v[36:37]
	v_mul_lo_u32 v32, s37, v24
	v_mul_lo_u32 v33, s36, v25
	v_mad_u64_u32 v[24:25], s[6:7], s36, v24, 0
	v_add3_u32 v25, v25, v33, v32
	v_sub_u32_e32 v32, v21, v25
	v_mov_b32_e32 v33, s37
	v_sub_co_u32_e32 v24, vcc, v31, v24
	s_nop 1
	v_subb_co_u32_e64 v31, s[6:7], v32, v33, vcc
	v_subrev_co_u32_e64 v32, s[6:7], s36, v24
	v_subb_co_u32_e32 v21, vcc, v21, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v36, s[8:9], 0, v31, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v36
	v_subb_co_u32_e64 v31, s[6:7], v31, v33, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v37, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v32
	v_subrev_co_u32_e64 v33, s[6:7], s36, v32
	s_nop 0
	v_cndmask_b32_e64 v38, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v36
	v_subbrev_co_u32_e64 v31, s[6:7], 0, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v37, v37, v38, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v37
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v24
	v_cndmask_b32_e64 v31, v36, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v36, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v21
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v36, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	v_cndmask_b32_e64 v25, v32, v33, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v24, v24, v25, vcc
	v_cndmask_b32_e32 v21, v21, v31, vcc
	v_xor_b32_e32 v24, v24, v30
	v_xor_b32_e32 v21, v21, v30
	v_sub_co_u32_e32 v36, vcc, v24, v30
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v37, vcc, v21, v30, vcc
.LBB0_28:                               ; %Flow343
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_30
; %bb.29:
	v_rcp_iflag_f32_e32 v21, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v37, 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v25, s8, v21
	v_mul_hi_u32 v25, v21, v25
	v_add_u32_e32 v21, v21, v25
	v_mul_hi_u32 v21, v24, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v21, v24, v21
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v36, v21, v24, vcc
.LBB0_30:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or_b32_e32 v24, 0x180, v20
	v_mov_b32_e32 v25, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr42_vgpr43
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[16:17], exec, s[8:9]
	s_cbranch_execz .LBB0_32
; %bb.31:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[36:37], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v21, s36
	v_cvt_f32_u32_e32 v30, s37
	s_sub_u32 s8, 0, s36
	s_subb_u32 s9, 0, s37
	v_mov_b32_e32 v33, 0
	v_fmamk_f32 v21, v30, 0x4f800000, v21
	v_rcp_f32_e32 v21, v21
	s_nop 0
	v_mul_f32_e32 v21, 0x5f7ffffc, v21
	v_mul_f32_e32 v30, 0x2f800000, v21
	v_trunc_f32_e32 v30, v30
	v_fmamk_f32 v21, v30, 0xcf800000, v21
	v_cvt_u32_f32_e32 v30, v30
	v_cvt_u32_f32_e32 v21, v21
	v_readfirstlane_b32 s10, v30
	v_readfirstlane_b32 s6, v21
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s38, s8, s6
	s_mul_i32 s33, s9, s6
	s_add_i32 s7, s38, s7
	s_add_i32 s7, s7, s33
	s_mul_i32 s39, s8, s6
	s_mul_i32 s38, s6, s7
	s_mul_hi_u32 s40, s6, s39
	s_mul_hi_u32 s33, s6, s7
	s_add_u32 s38, s40, s38
	s_addc_u32 s33, 0, s33
	s_mul_hi_u32 s41, s10, s39
	s_mul_i32 s39, s10, s39
	s_add_u32 s38, s38, s39
	s_mul_hi_u32 s40, s10, s7
	s_addc_u32 s33, s33, s41
	s_addc_u32 s38, s40, 0
	s_mul_i32 s7, s10, s7
	s_add_u32 s7, s33, s7
	s_addc_u32 s33, 0, s38
	s_add_u32 s38, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s10, s10, s33
	s_mul_i32 s6, s8, s10
	s_mul_hi_u32 s7, s8, s38
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s38
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s38
	s_mul_hi_u32 s9, s10, s8
	s_mul_i32 s33, s10, s8
	s_mul_i32 s40, s38, s6
	s_mul_hi_u32 s8, s38, s8
	s_mul_hi_u32 s39, s38, s6
	s_add_u32 s8, s8, s40
	s_addc_u32 s39, 0, s39
	s_add_u32 s8, s8, s33
	s_mul_hi_u32 s7, s10, s6
	s_addc_u32 s8, s39, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s10, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s38, s6
	v_ashrrev_i32_e32 v30, 31, v25
	s_cselect_b64 s[6:7], -1, 0
	v_mov_b32_e32 v31, v30
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[24:25], v[24:25], 0, v[30:31]
	s_addc_u32 s8, s10, s8
	v_xor_b32_e32 v31, v24, v30
	v_xor_b32_e32 v21, v25, v30
	v_mad_u64_u32 v[24:25], s[6:7], v31, s8, 0
	v_mul_hi_u32 v32, v31, s9
	v_lshl_add_u64 v[24:25], v[32:33], 0, v[24:25]
	v_mad_u64_u32 v[40:41], s[6:7], v21, s9, 0
	v_add_co_u32_e32 v24, vcc, v24, v40
	v_mad_u64_u32 v[38:39], s[6:7], v21, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v32, vcc, v25, v41, vcc
	s_nop 1
	v_addc_co_u32_e32 v39, vcc, 0, v39, vcc
	v_lshl_add_u64 v[24:25], v[32:33], 0, v[38:39]
	v_mul_lo_u32 v32, s37, v24
	v_mul_lo_u32 v33, s36, v25
	v_mad_u64_u32 v[24:25], s[6:7], s36, v24, 0
	v_add3_u32 v25, v25, v33, v32
	v_sub_u32_e32 v32, v21, v25
	v_mov_b32_e32 v33, s37
	v_sub_co_u32_e32 v24, vcc, v31, v24
	s_nop 1
	v_subb_co_u32_e64 v31, s[6:7], v32, v33, vcc
	v_subrev_co_u32_e64 v32, s[6:7], s36, v24
	v_subb_co_u32_e32 v21, vcc, v21, v25, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v38, s[8:9], 0, v31, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s37, v38
	v_subb_co_u32_e64 v31, s[6:7], v31, v33, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v39, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s36, v32
	v_subrev_co_u32_e64 v33, s[6:7], s36, v32
	s_nop 0
	v_cndmask_b32_e64 v40, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s37, v38
	v_subbrev_co_u32_e64 v31, s[6:7], 0, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v39, v39, v40, s[8:9]
	v_cmp_le_u32_e32 vcc, s37, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v39
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s36, v24
	v_cndmask_b32_e64 v31, v38, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v38, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s37, v21
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v38, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	v_cndmask_b32_e64 v25, v32, v33, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v24, v24, v25, vcc
	v_cndmask_b32_e32 v21, v21, v31, vcc
	v_xor_b32_e32 v24, v24, v30
	v_xor_b32_e32 v21, v21, v30
	v_sub_co_u32_e32 v42, vcc, v24, v30
                                        ; implicit-def: $vgpr24_vgpr25
	s_nop 1
	v_subb_co_u32_e32 v43, vcc, v21, v30, vcc
.LBB0_32:                               ; %Flow342
	s_or_saveexec_b64 s[6:7], s[16:17]
	v_cvt_f32_u32_e32 v21, s22
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_34
; %bb.33:
	v_rcp_iflag_f32_e32 v21, v21
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v43, 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v25, s8, v21
	v_mul_hi_u32 v25, v21, v25
	v_add_u32_e32 v21, v21, v25
	v_mul_hi_u32 v21, v24, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v21, v24, v21
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v21, v21, v24, vcc
	v_subrev_u32_e32 v24, s22, v21
	v_cmp_le_u32_e32 vcc, s22, v21
	s_nop 1
	v_cndmask_b32_e32 v42, v21, v24, vcc
.LBB0_34:
	s_or_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0
	s_cmp_lg_u64 s[10:11], 0
	v_or_b32_e32 v20, 0x1c0, v20
	v_mov_b32_e32 v21, s19
	s_cselect_b64 s[6:7], -1, 0
                                        ; implicit-def: $vgpr44_vgpr45
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[10:11], exec, s[8:9]
	s_cbranch_execz .LBB0_36
; %bb.35:
	s_ashr_i32 s6, s23, 31
	s_add_u32 s8, s22, s6
	s_mov_b32 s7, s6
	s_addc_u32 s9, s23, s6
	s_xor_b64 s[16:17], s[8:9], s[6:7]
	v_cvt_f32_u32_e32 v24, s16
	v_cvt_f32_u32_e32 v25, s17
	s_sub_u32 s8, 0, s16
	s_subb_u32 s9, 0, s17
	v_mov_b32_e32 v31, 0
	v_fmamk_f32 v24, v25, 0x4f800000, v24
	v_rcp_f32_e32 v24, v24
	s_nop 0
	v_mul_f32_e32 v24, 0x5f7ffffc, v24
	v_mul_f32_e32 v25, 0x2f800000, v24
	v_trunc_f32_e32 v25, v25
	v_fmamk_f32 v24, v25, 0xcf800000, v24
	v_cvt_u32_f32_e32 v25, v25
	v_cvt_u32_f32_e32 v24, v24
	v_readfirstlane_b32 s33, v25
	v_readfirstlane_b32 s6, v24
	s_mul_i32 s7, s8, s33
	s_mul_hi_u32 s37, s8, s6
	s_mul_i32 s36, s9, s6
	s_add_i32 s7, s37, s7
	s_add_i32 s7, s7, s36
	s_mul_i32 s38, s8, s6
	s_mul_i32 s37, s6, s7
	s_mul_hi_u32 s39, s6, s38
	s_mul_hi_u32 s36, s6, s7
	s_add_u32 s37, s39, s37
	s_addc_u32 s36, 0, s36
	s_mul_hi_u32 s40, s33, s38
	s_mul_i32 s38, s33, s38
	s_add_u32 s37, s37, s38
	s_mul_hi_u32 s39, s33, s7
	s_addc_u32 s36, s36, s40
	s_addc_u32 s37, s39, 0
	s_mul_i32 s7, s33, s7
	s_add_u32 s7, s36, s7
	s_addc_u32 s36, 0, s37
	s_add_u32 s37, s6, s7
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_lg_u64 s[6:7], 0
	s_addc_u32 s33, s33, s36
	s_mul_i32 s6, s8, s33
	s_mul_hi_u32 s7, s8, s37
	s_add_i32 s6, s7, s6
	s_mul_i32 s9, s9, s37
	s_add_i32 s6, s6, s9
	s_mul_i32 s8, s8, s37
	s_mul_hi_u32 s9, s33, s8
	s_mul_i32 s36, s33, s8
	s_mul_i32 s39, s37, s6
	s_mul_hi_u32 s8, s37, s8
	s_mul_hi_u32 s38, s37, s6
	s_add_u32 s8, s8, s39
	s_addc_u32 s38, 0, s38
	s_add_u32 s8, s8, s36
	s_mul_hi_u32 s7, s33, s6
	s_addc_u32 s8, s38, s9
	s_addc_u32 s7, s7, 0
	s_mul_i32 s6, s33, s6
	s_add_u32 s6, s8, s6
	s_addc_u32 s8, 0, s7
	s_add_u32 s9, s37, s6
	v_ashrrev_i32_e32 v24, 31, v21
	s_cselect_b64 s[6:7], -1, 0
	v_mov_b32_e32 v25, v24
	s_cmp_lg_u64 s[6:7], 0
	v_lshl_add_u64 v[20:21], v[20:21], 0, v[24:25]
	s_addc_u32 s8, s33, s8
	v_xor_b32_e32 v40, v20, v24
	v_xor_b32_e32 v25, v21, v24
	v_mad_u64_u32 v[20:21], s[6:7], v40, s8, 0
	v_mul_hi_u32 v30, v40, s9
	v_lshl_add_u64 v[20:21], v[30:31], 0, v[20:21]
	v_mad_u64_u32 v[38:39], s[6:7], v25, s9, 0
	v_add_co_u32_e32 v20, vcc, v20, v38
	v_mad_u64_u32 v[32:33], s[6:7], v25, s8, 0
	s_nop 0
	v_addc_co_u32_e32 v30, vcc, v21, v39, vcc
	s_nop 1
	v_addc_co_u32_e32 v33, vcc, 0, v33, vcc
	v_lshl_add_u64 v[20:21], v[30:31], 0, v[32:33]
	v_mul_lo_u32 v30, s17, v20
	v_mul_lo_u32 v31, s16, v21
	v_mad_u64_u32 v[20:21], s[6:7], s16, v20, 0
	v_add3_u32 v21, v21, v31, v30
	v_sub_u32_e32 v30, v25, v21
	v_mov_b32_e32 v31, s17
	v_sub_co_u32_e32 v20, vcc, v40, v20
	s_nop 1
	v_subb_co_u32_e64 v30, s[6:7], v30, v31, vcc
	v_subrev_co_u32_e64 v32, s[6:7], s16, v20
	v_subb_co_u32_e32 v21, vcc, v25, v21, vcc
	s_nop 0
	v_subbrev_co_u32_e64 v33, s[8:9], 0, v30, s[6:7]
	v_cmp_le_u32_e64 s[8:9], s17, v33
	v_subb_co_u32_e64 v30, s[6:7], v30, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v38, 0, -1, s[8:9]
	v_cmp_le_u32_e64 s[8:9], s16, v32
	v_subrev_co_u32_e64 v31, s[6:7], s16, v32
	s_nop 0
	v_cndmask_b32_e64 v39, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], s17, v33
	v_subbrev_co_u32_e64 v30, s[6:7], 0, v30, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v38, v38, v39, s[8:9]
	v_cmp_le_u32_e32 vcc, s17, v21
	v_cmp_ne_u32_e64 s[6:7], 0, v38
	s_nop 0
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, s16, v20
	v_cndmask_b32_e64 v30, v33, v30, s[6:7]
	s_nop 0
	v_cndmask_b32_e64 v33, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, s17, v21
	s_nop 1
	v_cndmask_b32_e32 v25, v25, v33, vcc
	v_cmp_ne_u32_e32 vcc, 0, v25
	v_cndmask_b32_e64 v25, v32, v31, s[6:7]
	s_nop 0
	v_cndmask_b32_e32 v20, v20, v25, vcc
	v_cndmask_b32_e32 v21, v21, v30, vcc
	v_xor_b32_e32 v20, v20, v24
	v_xor_b32_e32 v21, v21, v24
	v_sub_co_u32_e32 v44, vcc, v20, v24
	s_nop 1
	v_subb_co_u32_e32 v45, vcc, v21, v24, vcc
                                        ; implicit-def: $vgpr20_vgpr21
.LBB0_36:                               ; %Flow341
	s_andn2_saveexec_b64 s[6:7], s[10:11]
	s_cbranch_execz .LBB0_38
; %bb.37:
	v_cvt_f32_u32_e32 v21, s22
	s_sub_i32 s8, 0, s22
	v_mov_b32_e32 v45, 0
	v_rcp_iflag_f32_e32 v21, v21
	s_nop 0
	v_mul_f32_e32 v21, 0x4f7ffffe, v21
	v_cvt_u32_f32_e32 v21, v21
	v_mul_lo_u32 v24, s8, v21
	v_mul_hi_u32 v24, v21, v24
	v_add_u32_e32 v21, v21, v24
	v_mul_hi_u32 v21, v20, v21
	v_mul_lo_u32 v21, v21, s22
	v_sub_u32_e32 v20, v20, v21
	v_subrev_u32_e32 v21, s22, v20
	v_cmp_le_u32_e32 vcc, s22, v20
	s_nop 1
	v_cndmask_b32_e32 v20, v20, v21, vcc
	v_subrev_u32_e32 v21, s22, v20
	v_cmp_le_u32_e32 vcc, s22, v20
	s_nop 1
	v_cndmask_b32_e32 v44, v20, v21, vcc
.LBB0_38:
	s_or_b64 exec, exec, s[6:7]
	s_ashr_i32 s8, s15, 31
	v_lshlrev_b32_e32 v54, 4, v0
	v_mov_b32_e32 v139, 0
	v_mul_hi_i32 v141, v175, s14
	v_mul_lo_u32 v140, v175, s14
	v_mul_lo_u32 v19, v19, s15
	v_mul_lo_u32 v20, v18, s8
	v_mad_u64_u32 v[142:143], s[6:7], v18, s15, 0
	v_cndmask_b32_e64 v18, 0, 1, s[2:3]
	v_and_b32_e32 v138, 0x70, v54
	v_lshl_add_u64 v[52:53], s[12:13], 0, v[140:141]
	v_add3_u32 v143, v143, v20, v19
	v_cmp_ne_u32_e64 s[6:7], 1, v18
	s_andn2_b64 vcc, exec, s[2:3]
	v_mov_b32_e32 v18, v139
	v_mov_b32_e32 v19, v139
	v_mov_b32_e32 v20, v139
	v_mov_b32_e32 v21, v139
	s_cbranch_vccnz .LBB0_40
; %bb.39:
	v_lshl_add_u64 v[18:19], v[52:53], 0, v[142:143]
	v_lshl_add_u64 v[18:19], v[18:19], 0, v[138:139]
	global_load_dwordx4 v[18:21], v[18:19], off
.LBB0_40:
	v_mul_lo_u32 v23, v23, s15
	v_mul_lo_u32 v24, v22, s8
	v_mad_u64_u32 v[144:145], s[2:3], v22, s15, 0
	v_add3_u32 v145, v145, v24, v23
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v22, v139
	v_mov_b32_e32 v23, v139
	v_mov_b32_e32 v24, v139
	v_mov_b32_e32 v25, v139
	s_cbranch_vccnz .LBB0_42
; %bb.41:
	v_lshl_add_u64 v[22:23], v[52:53], 0, v[144:145]
	v_lshl_add_u64 v[22:23], v[22:23], 0, v[138:139]
	global_load_dwordx4 v[22:25], v[22:23], off
.LBB0_42:
	v_mul_lo_u32 v27, v27, s15
	v_mul_lo_u32 v30, v26, s8
	v_mad_u64_u32 v[146:147], s[2:3], v26, s15, 0
	v_add3_u32 v147, v147, v30, v27
	v_mov_b32_e32 v26, 0
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v33, 0
	s_cbranch_vccnz .LBB0_44
; %bb.43:
	v_lshl_add_u64 v[30:31], v[52:53], 0, v[146:147]
	v_lshl_add_u64 v[30:31], v[30:31], 0, v[138:139]
	global_load_dwordx4 v[30:33], v[30:31], off
.LBB0_44:
	v_mul_lo_u32 v27, v29, s15
	v_mul_lo_u32 v29, v28, s8
	v_mad_u64_u32 v[148:149], s[2:3], v28, s15, 0
	v_add3_u32 v149, v149, v29, v27
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v29, 0
	s_cbranch_vccnz .LBB0_46
; %bb.45:
	v_lshl_add_u64 v[26:27], v[52:53], 0, v[148:149]
	v_lshl_add_u64 v[26:27], v[26:27], 0, v[138:139]
	global_load_dwordx4 v[26:29], v[26:27], off
.LBB0_46:
	v_mul_lo_u32 v35, v35, s15
	v_mul_lo_u32 v38, v34, s8
	v_mad_u64_u32 v[150:151], s[2:3], v34, s15, 0
	v_add3_u32 v151, v151, v38, v35
	v_mov_b32_e32 v34, 0
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v41, 0
	s_cbranch_vccnz .LBB0_48
; %bb.47:
	v_lshl_add_u64 v[38:39], v[52:53], 0, v[150:151]
	v_lshl_add_u64 v[38:39], v[38:39], 0, v[138:139]
	global_load_dwordx4 v[38:41], v[38:39], off
.LBB0_48:
	v_mul_lo_u32 v35, v37, s15
	v_mul_lo_u32 v37, v36, s8
	v_mad_u64_u32 v[152:153], s[2:3], v36, s15, 0
	v_add3_u32 v153, v153, v37, v35
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v37, 0
	s_cbranch_vccnz .LBB0_50
; %bb.49:
	v_lshl_add_u64 v[34:35], v[52:53], 0, v[152:153]
	v_lshl_add_u64 v[34:35], v[34:35], 0, v[138:139]
	global_load_dwordx4 v[34:37], v[34:35], off
.LBB0_50:
	v_mul_lo_u32 v43, v43, s15
	v_mul_lo_u32 v46, v42, s8
	v_mad_u64_u32 v[154:155], s[2:3], v42, s15, 0
	v_add3_u32 v155, v155, v46, v43
	v_mov_b32_e32 v42, 0
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v49, 0
	s_cbranch_vccnz .LBB0_52
; %bb.51:
	v_lshl_add_u64 v[46:47], v[52:53], 0, v[154:155]
	v_lshl_add_u64 v[46:47], v[46:47], 0, v[138:139]
	global_load_dwordx4 v[46:49], v[46:47], off
.LBB0_52:
	v_mul_lo_u32 v43, v45, s15
	v_mul_lo_u32 v45, v44, s8
	v_mad_u64_u32 v[156:157], s[2:3], v44, s15, 0
	v_add3_u32 v157, v157, v45, v43
	s_and_b64 vcc, exec, s[6:7]
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v45, 0
	s_cbranch_vccnz .LBB0_54
; %bb.53:
	v_lshl_add_u64 v[42:43], v[52:53], 0, v[156:157]
	v_lshl_add_u64 v[42:43], v[42:43], 0, v[138:139]
	global_load_dwordx4 v[42:45], v[42:43], off
.LBB0_54:
	s_movk_i32 s2, 0xf0
	v_bitop3_b32 v167, v54, v0, s2 bitop3:0x78
	v_add_u32_e32 v52, 0, v167
	s_load_dwordx4 s[8:11], s[0:1], 0x48
	s_load_dwordx2 s[16:17], s[0:1], 0x58
	v_add_u32_e32 v52, 0x10000, v52
	s_movk_i32 s2, 0x70
	s_waitcnt vmcnt(4)
	ds_write_b128 v52, v[2:5]
	s_waitcnt vmcnt(3)
	ds_write_b128 v52, v[6:9] offset:8192
	s_waitcnt vmcnt(2)
	ds_write_b128 v52, v[10:13] offset:16384
	s_waitcnt vmcnt(1)
	ds_write_b128 v52, v[14:17] offset:24576
	v_bitop3_b32 v2, v54, v0, s2 bitop3:0x78
	v_add_u32_e32 v169, 0, v2
	v_add_u32_e32 v2, 0, v166
	v_add_u32_e32 v2, 0x18000, v2
	v_mov_b32_e32 v5, 0
	s_waitcnt vmcnt(0)
	ds_write_b128 v169, v[18:21]
	ds_write_b128 v169, v[22:25] offset:8192
	ds_write_b128 v169, v[30:33] offset:16384
	ds_write_b128 v169, v[26:29] offset:24576
	ds_write_b128 v169, v[38:41] offset:32768
	ds_write_b128 v169, v[34:37] offset:40960
	ds_write_b128 v169, v[46:49] offset:49152
	ds_write_b128 v169, v[42:45] offset:57344
	ds_write_b64 v2, v[50:51]
	s_cmpk_lt_i32 s4, 0x200
	v_mov_b32_e32 v4, v5
	v_mov_b32_e32 v3, v5
	v_mov_b32_e32 v2, v5
	v_mov_b32_e32 v21, v5
	v_mov_b32_e32 v20, v5
	v_mov_b32_e32 v19, v5
	v_mov_b32_e32 v18, v5
	v_mov_b32_e32 v9, v5
	v_mov_b32_e32 v8, v5
	v_mov_b32_e32 v7, v5
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v13, v5
	v_mov_b32_e32 v12, v5
	v_mov_b32_e32 v11, v5
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v17, v5
	v_mov_b32_e32 v16, v5
	v_mov_b32_e32 v15, v5
	v_mov_b32_e32 v14, v5
	v_mov_b32_e32 v25, v5
	v_mov_b32_e32 v24, v5
	v_mov_b32_e32 v23, v5
	v_mov_b32_e32 v22, v5
	v_mov_b32_e32 v29, v5
	v_mov_b32_e32 v28, v5
	v_mov_b32_e32 v27, v5
	v_mov_b32_e32 v26, v5
	v_mov_b32_e32 v33, v5
	v_mov_b32_e32 v32, v5
	v_mov_b32_e32 v31, v5
	v_mov_b32_e32 v30, v5
	v_mov_b32_e32 v37, v5
	v_mov_b32_e32 v36, v5
	v_mov_b32_e32 v35, v5
	v_mov_b32_e32 v34, v5
	v_mov_b32_e32 v41, v5
	v_mov_b32_e32 v40, v5
	v_mov_b32_e32 v39, v5
	v_mov_b32_e32 v38, v5
	v_mov_b32_e32 v45, v5
	v_mov_b32_e32 v44, v5
	v_mov_b32_e32 v43, v5
	v_mov_b32_e32 v42, v5
	v_mov_b32_e32 v49, v5
	v_mov_b32_e32 v48, v5
	v_mov_b32_e32 v47, v5
	v_mov_b32_e32 v46, v5
	v_mov_b32_e32 v53, v5
	v_mov_b32_e32 v52, v5
	v_mov_b32_e32 v51, v5
	v_mov_b32_e32 v50, v5
	v_mov_b32_e32 v57, v5
	v_mov_b32_e32 v56, v5
	v_mov_b32_e32 v55, v5
	v_mov_b32_e32 v54, v5
	v_mov_b32_e32 v61, v5
	v_mov_b32_e32 v60, v5
	v_mov_b32_e32 v59, v5
	v_mov_b32_e32 v58, v5
	v_mov_b32_e32 v65, v5
	v_mov_b32_e32 v64, v5
	v_mov_b32_e32 v63, v5
	v_mov_b32_e32 v62, v5
	v_mov_b32_e32 v69, v5
	v_mov_b32_e32 v68, v5
	v_mov_b32_e32 v67, v5
	v_mov_b32_e32 v66, v5
	v_mov_b32_e32 v73, v5
	v_mov_b32_e32 v72, v5
	v_mov_b32_e32 v71, v5
	v_mov_b32_e32 v70, v5
	v_mov_b32_e32 v77, v5
	v_mov_b32_e32 v76, v5
	v_mov_b32_e32 v75, v5
	v_mov_b32_e32 v74, v5
	v_mov_b32_e32 v81, v5
	v_mov_b32_e32 v80, v5
	v_mov_b32_e32 v79, v5
	v_mov_b32_e32 v78, v5
	v_mov_b32_e32 v85, v5
	v_mov_b32_e32 v84, v5
	v_mov_b32_e32 v83, v5
	v_mov_b32_e32 v82, v5
	v_mov_b32_e32 v89, v5
	v_mov_b32_e32 v88, v5
	v_mov_b32_e32 v87, v5
	v_mov_b32_e32 v86, v5
	v_mov_b32_e32 v93, v5
	v_mov_b32_e32 v92, v5
	v_mov_b32_e32 v91, v5
	v_mov_b32_e32 v90, v5
	v_mov_b32_e32 v97, v5
	v_mov_b32_e32 v96, v5
	v_mov_b32_e32 v95, v5
	v_mov_b32_e32 v94, v5
	v_mov_b32_e32 v101, v5
	v_mov_b32_e32 v100, v5
	v_mov_b32_e32 v99, v5
	v_mov_b32_e32 v98, v5
	v_mov_b32_e32 v105, v5
	v_mov_b32_e32 v104, v5
	v_mov_b32_e32 v103, v5
	v_mov_b32_e32 v102, v5
	v_mov_b32_e32 v109, v5
	v_mov_b32_e32 v108, v5
	v_mov_b32_e32 v107, v5
	v_mov_b32_e32 v106, v5
	v_mov_b32_e32 v113, v5
	v_mov_b32_e32 v112, v5
	v_mov_b32_e32 v111, v5
	v_mov_b32_e32 v110, v5
	v_mov_b32_e32 v117, v5
	v_mov_b32_e32 v116, v5
	v_mov_b32_e32 v115, v5
	v_mov_b32_e32 v114, v5
	v_mov_b32_e32 v121, v5
	v_mov_b32_e32 v120, v5
	v_mov_b32_e32 v119, v5
	v_mov_b32_e32 v118, v5
	v_mov_b32_e32 v129, v5
	v_mov_b32_e32 v128, v5
	v_mov_b32_e32 v127, v5
	v_mov_b32_e32 v126, v5
	v_mov_b32_e32 v125, v5
	v_mov_b32_e32 v124, v5
	v_mov_b32_e32 v123, v5
	v_mov_b32_e32 v122, v5
	v_and_b32_e32 v237, 48, v0
	v_lshlrev_b32_e32 v137, 6, v0
	v_lshlrev_b32_e32 v193, 2, v0
	s_cbranch_scc1 .LBB0_58
; %bb.55:                               ; %.lr.ph
	v_mul_u32_u24_e32 v2, 0x110, v159
	v_xor_b32_e32 v171, v2, v237
	v_and_b32_e32 v2, 0x7000, v137
	s_ashr_i32 s3, s4, 31
	v_lshl_or_b32 v2, v159, 7, v2
	v_bitop3_b32 v3, v166, v237, s2 bitop3:0x6c
	s_lshr_b32 s3, s3, 24
	v_or_b32_e32 v7, v2, v3
	v_bitop3_b32 v8, v2, 64, v3 bitop3:0x36
	v_add_u32_e32 v2, v133, v135
	s_movk_i32 s2, 0x100
	s_add_i32 s4, s4, s3
	v_add3_u32 v173, v2, v131, s2
	v_lshl_add_u64 v[2:3], v[156:157], 0, v[140:141]
	s_ashr_i32 s3, s4, 8
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	s_max_i32 s4, s3, 2
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	s_mov_b64 s[2:3], 0x80
	v_lshl_add_u64 v[176:177], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[154:155], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	v_lshl_add_u64 v[178:179], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[152:153], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	v_lshl_add_u64 v[180:181], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[150:151], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	v_lshl_add_u64 v[182:183], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[148:149], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	v_lshl_add_u64 v[184:185], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[146:147], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	v_lshl_add_u64 v[186:187], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[144:145], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	v_lshl_add_u64 v[188:189], v[2:3], 0, s[2:3]
	v_lshl_add_u64 v[2:3], v[142:143], 0, v[140:141]
	v_lshl_add_u64 v[2:3], v[2:3], 0, v[138:139]
	v_lshl_add_u64 v[2:3], v[2:3], 0, s[12:13]
	scratch_store_dwordx2 off, v[190:191], off offset:24 ; 8-byte Folded Spill
	scratch_store_dword off, v233, off offset:20 ; 4-byte Folded Spill
	scratch_store_dwordx2 off, v[234:235], off offset:12 ; 8-byte Folded Spill
	scratch_store_dword off, v232, off offset:8 ; 4-byte Folded Spill
	scratch_store_dword off, v231, off offset:4 ; 4-byte Folded Spill
	scratch_store_dword off, v230, off      ; 4-byte Folded Spill
	v_xor_b32_e32 v4, 64, v171
	v_xor_b32_e32 v5, 0x80, v171
	v_xor_b32_e32 v6, 0xc0, v171
	v_lshl_add_u64 v[190:191], v[2:3], 0, s[2:3]
	s_lshl_b32 s2, s4, 7
	v_mov_b32_e32 v122, 0
	s_add_i32 s12, 0, 0x10000
	s_add_i32 s13, 0, 0x18000
	v_add_u32_e32 v201, 0x100, v136
	v_add_u32_e32 v202, 0x100, v134
	v_add_u32_e32 v203, 0x100, v132
	v_add_u32_e32 v204, 0x100, v130
	s_add_u32 s4, s2, 0xffffff80
	s_mov_b64 s[2:3], 0
	v_add_u32_e32 v205, s12, v4
	v_add_u32_e32 v206, s12, v5
	v_add_u32_e32 v207, s12, v6
	v_add_u32_e32 v208, 0, v7
	v_add_u32_e32 v209, 0, v8
	v_add_u32_e32 v210, s13, v193
	s_mov_b32 s14, 0x7050604
	v_mov_b32_e32 v211, 0x7f
	v_mov_b32_e32 v123, v122
	v_mov_b32_e32 v124, v122
	v_mov_b32_e32 v125, v122
	v_mov_b32_e32 v126, v122
	v_mov_b32_e32 v127, v122
	v_mov_b32_e32 v128, v122
	v_mov_b32_e32 v129, v122
	v_mov_b32_e32 v118, v122
	v_mov_b32_e32 v119, v122
	v_mov_b32_e32 v120, v122
	v_mov_b32_e32 v121, v122
	v_mov_b32_e32 v114, v122
	v_mov_b32_e32 v115, v122
	v_mov_b32_e32 v116, v122
	v_mov_b32_e32 v117, v122
	v_mov_b32_e32 v110, v122
	v_mov_b32_e32 v111, v122
	v_mov_b32_e32 v112, v122
	v_mov_b32_e32 v113, v122
	v_mov_b32_e32 v106, v122
	v_mov_b32_e32 v107, v122
	v_mov_b32_e32 v108, v122
	v_mov_b32_e32 v109, v122
	v_mov_b32_e32 v102, v122
	v_mov_b32_e32 v103, v122
	v_mov_b32_e32 v104, v122
	v_mov_b32_e32 v105, v122
	v_mov_b32_e32 v98, v122
	v_mov_b32_e32 v99, v122
	v_mov_b32_e32 v100, v122
	v_mov_b32_e32 v101, v122
	v_mov_b32_e32 v94, v122
	v_mov_b32_e32 v95, v122
	v_mov_b32_e32 v96, v122
	v_mov_b32_e32 v97, v122
	v_mov_b32_e32 v90, v122
	v_mov_b32_e32 v91, v122
	v_mov_b32_e32 v92, v122
	v_mov_b32_e32 v93, v122
	v_mov_b32_e32 v86, v122
	v_mov_b32_e32 v87, v122
	v_mov_b32_e32 v88, v122
	v_mov_b32_e32 v89, v122
	v_mov_b32_e32 v82, v122
	v_mov_b32_e32 v83, v122
	v_mov_b32_e32 v84, v122
	v_mov_b32_e32 v85, v122
	v_mov_b32_e32 v78, v122
	v_mov_b32_e32 v79, v122
	v_mov_b32_e32 v80, v122
	v_mov_b32_e32 v81, v122
	v_mov_b32_e32 v74, v122
	v_mov_b32_e32 v75, v122
	v_mov_b32_e32 v76, v122
	v_mov_b32_e32 v77, v122
	v_mov_b32_e32 v70, v122
	v_mov_b32_e32 v71, v122
	v_mov_b32_e32 v72, v122
	v_mov_b32_e32 v73, v122
	v_mov_b32_e32 v66, v122
	v_mov_b32_e32 v67, v122
	v_mov_b32_e32 v68, v122
	v_mov_b32_e32 v69, v122
	v_mov_b32_e32 v62, v122
	v_mov_b32_e32 v63, v122
	v_mov_b32_e32 v64, v122
	v_mov_b32_e32 v65, v122
	v_mov_b32_e32 v58, v122
	v_mov_b32_e32 v59, v122
	v_mov_b32_e32 v60, v122
	v_mov_b32_e32 v61, v122
	v_mov_b32_e32 v54, v122
	v_mov_b32_e32 v55, v122
	v_mov_b32_e32 v56, v122
	v_mov_b32_e32 v57, v122
	v_mov_b32_e32 v50, v122
	v_mov_b32_e32 v51, v122
	v_mov_b32_e32 v52, v122
	v_mov_b32_e32 v53, v122
	v_mov_b32_e32 v46, v122
	v_mov_b32_e32 v47, v122
	v_mov_b32_e32 v48, v122
	v_mov_b32_e32 v49, v122
	v_mov_b32_e32 v42, v122
	v_mov_b32_e32 v43, v122
	v_mov_b32_e32 v44, v122
	v_mov_b32_e32 v45, v122
	v_mov_b32_e32 v38, v122
	v_mov_b32_e32 v39, v122
	v_mov_b32_e32 v40, v122
	v_mov_b32_e32 v41, v122
	v_mov_b32_e32 v34, v122
	v_mov_b32_e32 v35, v122
	v_mov_b32_e32 v36, v122
	v_mov_b32_e32 v37, v122
	v_mov_b32_e32 v30, v122
	v_mov_b32_e32 v31, v122
	v_mov_b32_e32 v32, v122
	v_mov_b32_e32 v33, v122
	v_mov_b32_e32 v26, v122
	v_mov_b32_e32 v27, v122
	v_mov_b32_e32 v28, v122
	v_mov_b32_e32 v29, v122
	v_mov_b32_e32 v22, v122
	v_mov_b32_e32 v23, v122
	v_mov_b32_e32 v24, v122
	v_mov_b32_e32 v25, v122
	v_mov_b32_e32 v14, v122
	v_mov_b32_e32 v15, v122
	v_mov_b32_e32 v16, v122
	v_mov_b32_e32 v17, v122
	v_mov_b32_e32 v10, v122
	v_mov_b32_e32 v11, v122
	v_mov_b32_e32 v12, v122
	v_mov_b32_e32 v13, v122
	v_mov_b32_e32 v6, v122
	v_mov_b32_e32 v7, v122
	v_mov_b32_e32 v8, v122
	v_mov_b32_e32 v9, v122
	v_mov_b32_e32 v18, v122
	v_mov_b32_e32 v19, v122
	v_mov_b32_e32 v20, v122
	v_mov_b32_e32 v21, v122
	v_mov_b32_e32 v2, v122
	v_mov_b32_e32 v3, v122
	v_mov_b32_e32 v4, v122
	v_mov_b32_e32 v5, v122
.LBB0_56:                               ; =>This Inner Loop Header: Depth=1
	buffer_load_dwordx4 v[130:133], v204, s[24:27], 0 offen
	buffer_load_dwordx4 v[134:137], v203, s[24:27], 0 offen
	buffer_load_dwordx4 v[138:141], v202, s[24:27], 0 offen
	buffer_load_dwordx4 v[142:145], v201, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_u32_e32 v164, s12, v171
	ds_read_b128 v[150:153], v208
	ds_read_b128 v[216:219], v205
	ds_read_b128 v[224:227], v205 offset:4096
	ds_read_b128 v[146:149], v208 offset:2048
	ds_read2st64_b32 v[162:163], v210 offset1:8
	ds_read_b128 v[212:215], v164
	ds_read_b128 v[220:223], v164 offset:4096
	ds_read_b128 v[158:161], v208 offset:32768
	ds_read_b128 v[154:157], v208 offset:34816
	v_add_u32_e32 v201, 0x100, v201
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v200, v162, v162, s14
	v_perm_b32 v1, v163, v163, s14
	v_add_u32_e32 v202, 0x100, v202
	s_waitcnt lgkmcnt(3)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[150:153], v[212:219], v[122:125], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_add_u32_e32 v203, 0x100, v203
	v_add_u32_e32 v204, 0x100, v204
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[146:149], v[212:219], v[126:129], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[158:161], v[212:219], v[118:121], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[154:157], v[212:219], v[114:117], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[150:153], v[220:227], v[110:113], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[146:149], v[220:227], v[106:109], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[158:161], v[220:227], v[102:105], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[154:157], v[220:227], v[98:101], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[216:219], v205 offset:8192
	ds_read_b128 v[224:227], v205 offset:12288
	ds_read_b128 v[212:215], v164 offset:8192
	ds_read_b128 v[220:223], v164 offset:12288
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[150:153], v[212:219], v[94:97], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[146:149], v[212:219], v[90:93], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[158:161], v[212:219], v[86:89], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[154:157], v[212:219], v[82:85], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[212:215], v[150:153], v[220:227], v[78:81], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[216:219], v[146:149], v[220:227], v[74:77], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[228:231], v[158:161], v[220:227], v[70:73], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[220:223], v[154:157], v[220:227], v[66:69], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	s_nop 5
	ds_read_b128 v[70:73], v205 offset:16384
	ds_read_b128 v[78:81], v205 offset:20480
	ds_read_b128 v[66:69], v164 offset:16384
	ds_read_b128 v[74:77], v164 offset:20480
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[224:227], v[150:153], v[74:81], v[46:49], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[232:235], v[146:149], v[74:81], v[42:45], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[236:239], v[158:161], v[74:81], v[38:41], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[240:243], v[154:157], v[74:81], v[34:37], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	s_nop 5
	ds_read_b128 v[38:41], v205 offset:24576
	ds_read_b128 v[46:49], v205 offset:28672
	ds_read_b128 v[34:37], v164 offset:24576
	ds_read_b128 v[42:45], v164 offset:28672
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[158:161], v[66:73], v[54:57], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[154:157], v[66:73], v[50:53], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[158:161], v[34:41], v[22:25], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[244:247], v[154:157], v[34:41], v[14:17], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[248:251], v[150:153], v[42:49], v[10:13], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[252:255], v[146:149], v[42:49], v[6:9], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[158:161], v[42:49], v[18:21], v1, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[154:157], v[154:157], v[42:49], v[2:5], v1, v211 op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[158:161], v209
	s_nop 3
	ds_read_b128 v[6:9], v207
	s_nop 0
	ds_read_b128 v[2:5], v206
	ds_read_b128 v[10:13], v206 offset:4096
	ds_read_b128 v[14:17], v207 offset:4096
	ds_read_b128 v[192:195], v209 offset:2048
	ds_read_b128 v[162:165], v209 offset:32768
	ds_read_b128 v[196:199], v209 offset:34816
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[150:153], v[66:73], v[62:65], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[146:149], v[66:73], v[58:61], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(5)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[158:161], v[2:9], v[122:125], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[192:195], v[2:9], v[126:129], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(1)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[162:165], v[2:9], v[118:121], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[196:199], v[2:9], v[114:117], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[158:161], v[10:17], v[110:113], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[192:195], v[10:17], v[106:109], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[162:165], v[10:17], v[102:105], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[196:199], v[10:17], v[98:101], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[6:9], v207 offset:8192
	ds_read_b128 v[2:5], v206 offset:8192
	ds_read_b128 v[10:13], v206 offset:12288
	ds_read_b128 v[14:17], v207 offset:12288
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[150:153], v[34:41], v[30:33], v200, v211 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[146:149], v[34:41], v[26:29], v200, v211 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[158:161], v[2:9], v[94:97], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[192:195], v[2:9], v[90:93], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[162:165], v[2:9], v[86:89], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[196:199], v[2:9], v[82:85], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[158:161], v[10:17], v[212:215], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[192:195], v[10:17], v[216:219], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_nop 5
	v_lshl_add_u64 v[212:213], v[190:191], 0, s[2:3]
	v_lshl_add_u64 v[214:215], v[188:189], 0, s[2:3]
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[162:165], v[10:17], v[228:231], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[196:199], v[10:17], v[220:223], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[6:9], v207 offset:16384
	ds_read_b128 v[2:5], v206 offset:16384
	ds_read_b128 v[10:13], v206 offset:20480
	ds_read_b128 v[14:17], v207 offset:20480
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[158:161], v[2:9], v[62:65], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[192:195], v[2:9], v[58:61], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[162:165], v[2:9], v[54:57], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[196:199], v[2:9], v[50:53], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[6:9], v207 offset:24576
	ds_read_b128 v[2:5], v206 offset:24576
	ds_read_b128 v[146:149], v206 offset:28672
	ds_read_b128 v[150:153], v207 offset:28672
	s_waitcnt lgkmcnt(4)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[192:195], v[10:17], v[232:235], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_nop 6
	v_lshl_add_u64 v[232:233], v[178:179], 0, s[2:3]
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[158:161], v[10:17], v[224:227], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[162:165], v[10:17], v[236:239], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[196:199], v[10:17], v[240:243], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_nop 5
	buffer_load_dwordx2 v[238:239], v173, s[28:31], 0 offen
	v_lshl_add_u64 v[236:237], v[176:177], 0, s[2:3]
	v_add_u32_e32 v173, 0x100, v173
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[158:161], v[2:9], v[30:33], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[192:195], v[2:9], v[26:29], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[162:165], v[2:9], v[22:25], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[196:199], v[2:9], v[244:247], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_lshl_add_u64 v[2:3], v[186:187], 0, s[2:3]
	v_lshl_add_u64 v[4:5], v[184:185], 0, s[2:3]
	v_lshl_add_u64 v[6:7], v[182:183], 0, s[2:3]
	v_lshl_add_u64 v[8:9], v[180:181], 0, s[2:3]
	s_add_u32 s2, s2, 0x80
	s_addc_u32 s3, s3, 0
	s_cmp_lg_u32 s4, s2
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[158:161], v[146:153], v[248:251], v200, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	global_load_dwordx4 v[158:161], v[212:213], off
	s_nop 0
	global_load_dwordx4 v[212:215], v[214:215], off
	s_nop 0
	global_load_dwordx4 v[216:219], v[2:3], off
	global_load_dwordx4 v[220:223], v[4:5], off
	global_load_dwordx4 v[224:227], v[6:7], off
	global_load_dwordx4 v[228:231], v[8:9], off
	s_nop 0
	global_load_dwordx4 v[232:235], v[232:233], off
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[192:195], v[146:153], v[252:255], v200, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	global_load_dwordx4 v[192:195], v[236:237], off
	v_add_u32_e32 v200, s12, v167
	v_add_u32_e32 v236, s13, v166
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(12)
	ds_write_b128 v200, v[130:133]
	s_waitcnt vmcnt(11)
	ds_write_b128 v200, v[134:137] offset:8192
	s_waitcnt vmcnt(10)
	ds_write_b128 v200, v[138:141] offset:16384
	s_waitcnt vmcnt(9)
	ds_write_b128 v200, v[142:145] offset:24576
	s_waitcnt vmcnt(8)
	ds_write_b64 v236, v[238:239]
	s_waitcnt vmcnt(7)
	ds_write_b128 v169, v[158:161]
	s_waitcnt vmcnt(6)
	ds_write_b128 v169, v[212:215] offset:8192
	s_waitcnt vmcnt(5)
	ds_write_b128 v169, v[216:219] offset:16384
	s_waitcnt vmcnt(4)
	ds_write_b128 v169, v[220:223] offset:24576
	s_waitcnt vmcnt(3)
	ds_write_b128 v169, v[224:227] offset:32768
	s_waitcnt vmcnt(2)
	ds_write_b128 v169, v[228:231] offset:40960
	s_waitcnt vmcnt(1)
	ds_write_b128 v169, v[232:235] offset:49152
	s_waitcnt vmcnt(0)
	ds_write_b128 v169, v[192:195] offset:57344
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[162:165], v[146:153], v[18:21], v1, v211 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[2:5], v[196:199], v[146:153], v[154:157], v1, v211 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	s_cbranch_scc1 .LBB0_56
; %bb.57:                               ; %Flow
	scratch_load_dword v230, off, off       ; 4-byte Folded Reload
	scratch_load_dword v231, off, off offset:4 ; 4-byte Folded Reload
	scratch_load_dword v232, off, off offset:8 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[234:235], off, off offset:12 ; 8-byte Folded Reload
	scratch_load_dword v233, off, off offset:20 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[190:191], off, off offset:24 ; 8-byte Folded Reload
	v_and_b32_e32 v159, 15, v0
	v_lshrrev_b32_e32 v229, 4, v0
	v_lshrrev_b32_e32 v236, 3, v0
	v_and_b32_e32 v237, 48, v0
	v_lshlrev_b32_e32 v192, 4, v159
	v_lshlrev_b32_e32 v193, 2, v0
	v_lshlrev_b32_e32 v137, 6, v0
.LBB0_58:                               ; %Flow340
	s_load_dwordx2 s[14:15], s[0:1], 0xa0
	s_nop 0
	s_load_dword s0, s[0:1], 0x60
	v_and_b32_e32 v177, 14, v0
	v_and_b32_e32 v178, 0x1f0, v0
	v_and_b32_e32 v163, 0x1e0, v0
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v173, v235
	v_mov_b32_e32 v171, v235
	v_mov_b32_e32 v169, v235
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v191, v235
	s_and_b64 vcc, exec, s[6:7]
	v_lshlrev_b32_e32 v176, 3, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_60
; %bb.59:
	v_lshl_add_u32 v1, v0, 2, 0
	v_add_u32_e32 v1, 0x18000, v1
	ds_read2st64_b32 v[146:147], v1 offset1:8
	v_lshlrev_b32_e32 v1, 7, v159
	v_and_b32_e32 v130, 0x7000, v137
	v_xor_b32_e32 v131, v176, v237
	v_mul_u32_u24_e32 v138, 0x110, v159
	v_or3_b32 v1, v1, v130, v131
	v_xor_b32_e32 v138, v138, v237
	s_add_i32 s1, 0, 0x10000
	v_xad_u32 v158, v1, 64, 0
	v_add_u32_e32 v1, 0, v1
	v_xor_b32_e32 v139, 0xc0, v138
	v_xad_u32 v164, v138, 64, s1
	v_add_u32_e32 v165, s1, v138
	s_mov_b32 s2, 0x7050604
	v_xor_b32_e32 v138, 0x80, v138
	ds_read_b128 v[130:133], v158
	ds_read_b128 v[134:137], v1
	v_add_u32_e32 v162, s1, v139
	ds_read_b128 v[184:187], v164
	ds_read_b128 v[180:183], v165
	ds_read_b128 v[204:207], v162
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v167, v146, v146, s2
	v_add_u32_e32 v188, s1, v138
	ds_read_b128 v[138:141], v1 offset:2048
	ds_read_b128 v[154:157], v158 offset:32768
	ds_read_b128 v[142:145], v1 offset:32768
	v_perm_b32 v189, v147, v147, s2
	ds_read_b128 v[146:149], v1 offset:34816
	v_mov_b32_e32 v179, 0x7f
	ds_read_b128 v[200:203], v188
	ds_read_b128 v[150:153], v158 offset:2048
	ds_read_b128 v[158:161], v158 offset:34816
	s_waitcnt lgkmcnt(8)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[134:137], v[180:187], v[122:125], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(6)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[138:141], v[180:187], v[126:129], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	s_waitcnt lgkmcnt(4)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[142:145], v[180:187], v[118:121], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	s_waitcnt lgkmcnt(3)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[146:149], v[180:187], v[114:117], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[184:187], v164 offset:4096
	ds_read_b128 v[180:183], v165 offset:4096
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[134:137], v[180:187], v[110:113], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[138:141], v[180:187], v[106:109], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[142:145], v[180:187], v[102:105], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[146:149], v[180:187], v[98:101], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[122:125], v[130:133], v[200:207], v[122:125], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[126:129], v[150:153], v[200:207], v[126:129], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[118:121], v[154:157], v[200:207], v[118:121], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[114:117], v[158:161], v[200:207], v[114:117], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:4096
	ds_read_b128 v[200:203], v188 offset:4096
	ds_read_b128 v[184:187], v164 offset:8192
	ds_read_b128 v[180:183], v165 offset:8192
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[110:113], v[130:133], v[200:207], v[110:113], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[106:109], v[150:153], v[200:207], v[106:109], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[102:105], v[154:157], v[200:207], v[102:105], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[98:101], v[158:161], v[200:207], v[98:101], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:8192
	ds_read_b128 v[200:203], v188 offset:8192
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[134:137], v[180:187], v[94:97], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[138:141], v[180:187], v[90:93], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[142:145], v[180:187], v[86:89], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[146:149], v[180:187], v[82:85], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[184:187], v164 offset:12288
	ds_read_b128 v[180:183], v165 offset:12288
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[134:137], v[180:187], v[78:81], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[138:141], v[180:187], v[74:77], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[142:145], v[180:187], v[70:73], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[146:149], v[180:187], v[66:69], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[94:97], v[130:133], v[200:207], v[94:97], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[90:93], v[150:153], v[200:207], v[90:93], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[86:89], v[154:157], v[200:207], v[86:89], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[82:85], v[158:161], v[200:207], v[82:85], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:12288
	ds_read_b128 v[200:203], v188 offset:12288
	ds_read_b128 v[184:187], v164 offset:16384
	ds_read_b128 v[180:183], v165 offset:16384
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[78:81], v[130:133], v[200:207], v[78:81], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[74:77], v[150:153], v[200:207], v[74:77], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[70:73], v[154:157], v[200:207], v[70:73], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[66:69], v[158:161], v[200:207], v[66:69], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:16384
	ds_read_b128 v[200:203], v188 offset:16384
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[134:137], v[180:187], v[62:65], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[138:141], v[180:187], v[58:61], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[142:145], v[180:187], v[54:57], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[146:149], v[180:187], v[50:53], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[184:187], v164 offset:20480
	ds_read_b128 v[180:183], v165 offset:20480
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[134:137], v[180:187], v[46:49], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[138:141], v[180:187], v[42:45], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[142:145], v[180:187], v[38:41], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[146:149], v[180:187], v[34:37], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[62:65], v[130:133], v[200:207], v[62:65], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[58:61], v[150:153], v[200:207], v[58:61], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[54:57], v[154:157], v[200:207], v[54:57], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[50:53], v[158:161], v[200:207], v[50:53], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:20480
	ds_read_b128 v[200:203], v188 offset:20480
	ds_read_b128 v[184:187], v164 offset:24576
	ds_read_b128 v[180:183], v165 offset:24576
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[46:49], v[130:133], v[200:207], v[46:49], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[42:45], v[150:153], v[200:207], v[42:45], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[38:41], v[154:157], v[200:207], v[38:41], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[34:37], v[158:161], v[200:207], v[34:37], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:24576
	ds_read_b128 v[200:203], v188 offset:24576
	s_waitcnt lgkmcnt(2)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[134:137], v[180:187], v[30:33], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[138:141], v[180:187], v[26:29], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[142:145], v[180:187], v[22:25], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[146:149], v[180:187], v[14:17], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[184:187], v164 offset:28672
	ds_read_b128 v[180:183], v165 offset:28672
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[134:137], v[180:187], v[10:13], v167, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[138:141], v[180:187], v[6:9], v167, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[142:145], v[180:187], v[18:21], v189, v179 op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[2:5], v[146:149], v[180:187], v[2:5], v189, v179 op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[30:33], v[130:133], v[200:207], v[30:33], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[26:29], v[150:153], v[200:207], v[26:29], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[22:25], v[154:157], v[200:207], v[22:25], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[14:17], v[158:161], v[200:207], v[14:17], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	ds_read_b128 v[204:207], v162 offset:28672
	ds_read_b128 v[200:203], v188 offset:28672
	s_waitcnt lgkmcnt(0)
	v_mfma_scale_f32_16x16x128_f8f6f4 v[10:13], v[130:133], v[200:207], v[10:13], v167, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[6:9], v[150:153], v[200:207], v[6:9], v167, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[18:21], v[154:157], v[200:207], v[18:21], v189, v179 op_sel:[1,0,0] op_sel_hi:[0,0,0] cbsz:4
	v_mfma_scale_f32_16x16x128_f8f6f4 v[2:5], v[158:161], v[200:207], v[2:5], v189, v179 op_sel:[1,0,0] op_sel_hi:[1,0,0] cbsz:4
.LBB0_60:                               ; %._crit_edge._crit_edge
	v_mul_lo_u32 v1, v175, s0
	v_or_b32_e32 v130, s18, v0
	v_mov_b32_e32 v131, s19
	v_add_u32_e32 v1, s18, v1
	v_add_lshl_u32 v1, v1, v0, 2
	v_bfrev_b32_e32 v148, 1
	v_cmp_gt_i64_e32 vcc, s[22:23], v[130:131]
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x27000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v1, v148, v1, vcc
	buffer_load_dword v1, v1, s[16:19], 0 offen
	v_mov_b32_e32 v147, 0
	global_load_dword v150, v147, s[8:9]
	v_and_b32_e32 v130, 0x60, v166
	v_and_b32_e32 v131, 0x78c, v193
	v_and_b32_e32 v149, 16, v0
	v_add_u32_e32 v130, 0, v130
	v_lshl_add_u32 v132, v178, 1, 0
	v_add3_u32 v130, v130, v131, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_ashrrev_i32_e32 v175, 31, v174
	s_lshl_b64 s[12:13], s[34:35], 8
	s_lshr_b32 s0, s22, 31
	v_or_b32_e32 v146, s12, v192
	s_add_i32 s12, s22, s0
	v_cmp_lt_i64_e64 s[6:7], v[172:173], v[174:175]
	v_cmp_lt_i64_e64 s[8:9], v[170:171], v[174:175]
	v_cmp_lt_i64_e64 s[2:3], v[168:169], v[174:175]
	v_cmp_lt_i64_e64 s[0:1], v[190:191], v[174:175]
	s_ashr_i32 s12, s12, 1
	s_mov_b32 s4, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_waitcnt vmcnt(1)
	ds_write_b32 v130, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[138:141], v132
	ds_read_b128 v[142:145], v132 offset:16
	ds_read_b128 v[134:137], v132 offset:1024
	ds_read_b128 v[130:133], v132 offset:1040
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_fma_f32 v74, v74, v150, v142
	v_fma_f32 v94, v94, v150, v138
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v158, v117, v150, v133
	v_fma_f32 v166, v99, v150, v131
	v_fma_f32 v99, v100, v150, v132
	v_fma_f32 v167, v101, v150, v133
	v_fma_f32 v100, v86, v150, v134
	v_fma_f32 v175, v85, v150, v133
	v_fma_f32 v181, v69, v150, v133
	v_fma_f32 v53, v53, v150, v133
	v_fma_f32 v49, v49, v150, v141
	v_fma_f32 v41, v41, v150, v137
	v_fma_f32 v37, v37, v150, v133
	v_fma_f32 v17, v17, v150, v133
	v_fmac_f32_e32 v133, v5, v150
	v_max_f32_e64 v5, s15, s15
	v_fma_f32 v164, v103, v150, v135
	v_fma_f32 v103, v104, v150, v136
	v_fma_f32 v168, v95, v150, v139
	v_fma_f32 v95, v96, v150, v140
	v_fma_f32 v96, v90, v150, v142
	v_fma_f32 v104, v82, v150, v130
	v_fma_f32 v66, v66, v150, v130
	v_fma_f32 v45, v45, v150, v145
	v_min_f32_e32 v90, v94, v5
	v_min_f32_e32 v94, v100, v5
	v_min_f32_e32 v100, v74, v5
	v_min_f32_e32 v49, v49, v5
	v_min_f32_e32 v74, v41, v5
	v_fma_f32 v1, v122, v150, v138
	v_fma_f32 v169, v97, v150, v141
	v_fma_f32 v97, v92, v150, v144
	v_fma_f32 v178, v81, v150, v141
	v_fma_f32 v75, v75, v150, v143
	v_fma_f32 v50, v50, v150, v130
	v_fma_f32 v52, v52, v150, v132
	v_fma_f32 v35, v35, v150, v131
	v_min_f32_e32 v92, v96, v5
	v_min_f32_e32 v96, v104, v5
	v_min_f32_e32 v104, v66, v5
	v_min_f32_e32 v66, v45, v5
	v_max_f32_e64 v45, -s15, v49
	v_max_f32_e64 v49, -s15, v74
	v_mov_b32_e32 v74, 0xbfb8aa3b
	v_fma_f32 v159, v111, v150, v139
	v_fma_f32 v111, v112, v150, v140
	v_fma_f32 v160, v113, v150, v141
	v_fma_f32 v80, v80, v150, v140
	v_fma_f32 v58, v58, v150, v142
	v_fma_f32 v29, v29, v150, v145
	v_min_f32_e32 v1, v1, v5
	v_min_f32_e32 v112, v50, v5
	v_min_f32_e32 v113, v52, v5
	v_min_f32_e32 v50, v178, v5
	v_min_f32_e32 v52, v75, v5
	v_min_f32_e32 v75, v35, v5
	v_mul_f32_e32 v74, s14, v74
	v_fma_f32 v118, v118, v150, v134
	v_fma_f32 v161, v107, v150, v143
	v_fma_f32 v107, v108, v150, v144
	v_fma_f32 v162, v109, v150, v145
	v_fma_f32 v173, v89, v150, v137
	v_fma_f32 v38, v38, v150, v134
	v_fma_f32 v22, v22, v150, v134
	v_min_f32_e32 v89, v99, v5
	v_min_f32_e32 v99, v80, v5
	v_min_f32_e32 v108, v58, v5
	v_min_f32_e32 v80, v29, v5
	v_max_f32_e64 v29, -s15, v50
	v_max_f32_e64 v50, -s15, v75
	v_mul_f32_e32 v75, v74, v1
	v_fma_f32 v151, v123, v150, v139
	v_fma_f32 v123, v126, v150, v142
	v_fma_f32 v153, v127, v150, v143
	v_fma_f32 v102, v102, v150, v134
	v_fma_f32 v70, v70, v150, v134
	v_fma_f32 v42, v42, v150, v142
	v_fma_f32 v8, v8, v150, v144
	v_min_f32_e32 v185, v118, v5
	v_min_f32_e32 v118, v38, v5
	v_min_f32_e32 v126, v22, v5
	v_min_f32_e32 v22, v162, v5
	v_mul_f32_e32 v162, v74, v108
	v_exp_f32_e32 v75, v75
	v_fma_f32 v157, v115, v150, v131
	v_fma_f32 v115, v116, v150, v132
	v_min_f32_e32 v86, v102, v5
	v_min_f32_e32 v102, v70, v5
	v_min_f32_e32 v116, v42, v5
	v_min_f32_e32 v70, v8, v5
	v_min_f32_e32 v8, v153, v5
	v_min_f32_e32 v42, v173, v5
	v_mul_f32_e32 v153, v74, v99
	v_mul_f32_e32 v173, v74, v118
	v_exp_f32_e32 v162, v162
	v_fma_f32 v110, v110, v150, v138
	v_fma_f32 v54, v54, v150, v134
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v173, v173
	v_fma_f32 v122, v124, v150, v140
	v_fma_f32 v152, v125, v150, v141
	v_fma_f32 v124, v128, v150, v144
	v_fma_f32 v154, v129, v150, v145
	v_fma_f32 v155, v119, v150, v135
	v_fma_f32 v119, v120, v150, v136
	v_fma_f32 v156, v121, v150, v137
	v_fma_f32 v114, v114, v150, v130
	v_fma_f32 v106, v106, v150, v142
	v_fma_f32 v165, v105, v150, v137
	v_fma_f32 v98, v98, v150, v130
	v_fma_f32 v170, v91, v150, v143
	v_fma_f32 v171, v93, v150, v145
	v_fma_f32 v172, v87, v150, v135
	v_fma_f32 v101, v88, v150, v136
	v_fma_f32 v174, v83, v150, v131
	v_fma_f32 v105, v84, v150, v132
	v_fma_f32 v78, v78, v150, v138
	v_fma_f32 v79, v79, v150, v139
	v_fma_f32 v76, v76, v150, v144
	v_fma_f32 v77, v77, v150, v145
	v_fma_f32 v179, v71, v150, v135
	v_fma_f32 v71, v72, v150, v136
	v_fma_f32 v180, v73, v150, v137
	v_fma_f32 v67, v67, v150, v131
	v_fma_f32 v68, v68, v150, v132
	v_fma_f32 v62, v62, v150, v138
	v_fma_f32 v63, v63, v150, v139
	v_fma_f32 v64, v64, v150, v140
	v_fma_f32 v65, v65, v150, v141
	v_fma_f32 v59, v59, v150, v143
	v_fma_f32 v60, v60, v150, v144
	v_fma_f32 v61, v61, v150, v145
	v_fma_f32 v55, v55, v150, v135
	v_fma_f32 v56, v56, v150, v136
	v_fma_f32 v57, v57, v150, v137
	v_fma_f32 v51, v51, v150, v131
	v_fma_f32 v46, v46, v150, v138
	v_fma_f32 v47, v47, v150, v139
	v_fma_f32 v48, v48, v150, v140
	v_fma_f32 v43, v43, v150, v143
	v_fma_f32 v44, v44, v150, v144
	v_fma_f32 v39, v39, v150, v135
	v_fma_f32 v40, v40, v150, v136
	v_fma_f32 v34, v34, v150, v130
	v_fma_f32 v36, v36, v150, v132
	v_fma_f32 v30, v30, v150, v138
	v_fma_f32 v31, v31, v150, v139
	v_fma_f32 v32, v32, v150, v140
	v_fma_f32 v33, v33, v150, v141
	v_fma_f32 v26, v26, v150, v142
	v_fma_f32 v27, v27, v150, v143
	v_fma_f32 v28, v28, v150, v144
	v_fma_f32 v23, v23, v150, v135
	v_fma_f32 v24, v24, v150, v136
	v_fma_f32 v25, v25, v150, v137
	v_fma_f32 v14, v14, v150, v130
	v_fma_f32 v15, v15, v150, v131
	v_fma_f32 v16, v16, v150, v132
	v_fma_f32 v10, v10, v150, v138
	v_fma_f32 v11, v11, v150, v139
	v_fma_f32 v12, v12, v150, v140
	v_fmac_f32_e32 v141, v13, v150
	v_fma_f32 v6, v6, v150, v142
	v_fma_f32 v7, v7, v150, v143
	v_fmac_f32_e32 v145, v9, v150
	v_fma_f32 v9, v18, v150, v134
	v_fma_f32 v13, v19, v150, v135
	v_fma_f32 v18, v20, v150, v136
	v_fmac_f32_e32 v137, v21, v150
	v_fma_f32 v2, v2, v150, v130
	v_fma_f32 v19, v3, v150, v131
	v_fma_f32 v4, v4, v150, v132
	v_min_f32_e32 v82, v110, v5
	v_min_f32_e32 v110, v54, v5
	v_min_f32_e32 v182, v122, v5
	v_min_f32_e32 v183, v123, v5
	v_min_f32_e32 v184, v124, v5
	v_min_f32_e32 v186, v119, v5
	v_min_f32_e32 v187, v114, v5
	v_min_f32_e32 v81, v115, v5
	v_min_f32_e32 v83, v111, v5
	v_min_f32_e32 v84, v106, v5
	v_min_f32_e32 v85, v107, v5
	v_min_f32_e32 v87, v103, v5
	v_min_f32_e32 v88, v98, v5
	v_min_f32_e32 v91, v95, v5
	v_min_f32_e32 v93, v97, v5
	v_min_f32_e32 v95, v101, v5
	v_min_f32_e32 v97, v105, v5
	v_min_f32_e32 v98, v78, v5
	v_min_f32_e32 v101, v76, v5
	v_min_f32_e32 v103, v71, v5
	v_min_f32_e32 v105, v68, v5
	v_min_f32_e32 v106, v62, v5
	v_min_f32_e32 v107, v64, v5
	v_min_f32_e32 v109, v60, v5
	v_min_f32_e32 v111, v56, v5
	v_min_f32_e32 v114, v46, v5
	v_min_f32_e32 v115, v48, v5
	v_min_f32_e32 v117, v44, v5
	v_min_f32_e32 v119, v40, v5
	v_min_f32_e32 v120, v34, v5
	v_min_f32_e32 v121, v36, v5
	v_min_f32_e32 v122, v30, v5
	v_min_f32_e32 v123, v32, v5
	v_min_f32_e32 v124, v26, v5
	v_min_f32_e32 v125, v28, v5
	v_min_f32_e32 v127, v24, v5
	v_min_f32_e32 v128, v14, v5
	v_min_f32_e32 v129, v16, v5
	v_min_f32_e32 v73, v10, v5
	v_min_f32_e32 v72, v12, v5
	v_min_f32_e32 v71, v6, v5
	v_min_f32_e32 v69, v9, v5
	v_min_f32_e32 v68, v18, v5
	v_min_f32_e32 v3, v2, v5
	v_min_f32_e32 v2, v4, v5
	v_min_f32_e32 v4, v151, v5
	v_min_f32_e32 v6, v152, v5
	v_min_f32_e32 v9, v154, v5
	v_min_f32_e32 v10, v155, v5
	v_min_f32_e32 v12, v156, v5
	v_min_f32_e32 v14, v157, v5
	v_min_f32_e32 v16, v158, v5
	v_min_f32_e32 v18, v159, v5
	v_min_f32_e32 v20, v160, v5
	v_min_f32_e32 v21, v161, v5
	v_min_f32_e32 v24, v164, v5
	v_min_f32_e32 v26, v165, v5
	v_min_f32_e32 v28, v166, v5
	v_min_f32_e32 v30, v167, v5
	v_min_f32_e32 v32, v168, v5
	v_min_f32_e32 v34, v169, v5
	v_min_f32_e32 v36, v170, v5
	v_min_f32_e32 v38, v171, v5
	v_min_f32_e32 v40, v172, v5
	v_min_f32_e32 v44, v174, v5
	v_min_f32_e32 v46, v175, v5
	v_min_f32_e32 v48, v79, v5
	v_min_f32_e32 v54, v77, v5
	v_min_f32_e32 v56, v179, v5
	v_min_f32_e32 v58, v180, v5
	v_min_f32_e32 v60, v67, v5
	v_min_f32_e32 v62, v181, v5
	v_min_f32_e32 v63, v63, v5
	v_min_f32_e32 v64, v65, v5
	v_min_f32_e32 v59, v59, v5
	v_min_f32_e32 v61, v61, v5
	v_min_f32_e32 v55, v55, v5
	v_min_f32_e32 v57, v57, v5
	v_min_f32_e32 v51, v51, v5
	v_min_f32_e32 v53, v53, v5
	v_min_f32_e32 v47, v47, v5
	v_min_f32_e32 v65, v43, v5
	v_min_f32_e32 v67, v39, v5
	v_min_f32_e32 v76, v37, v5
	v_min_f32_e32 v77, v31, v5
	v_min_f32_e32 v78, v33, v5
	v_min_f32_e32 v79, v27, v5
	v_min_f32_e32 v130, v23, v5
	v_min_f32_e32 v131, v25, v5
	v_min_f32_e32 v132, v15, v5
	v_min_f32_e32 v134, v17, v5
	v_min_f32_e32 v135, v11, v5
	v_min_f32_e32 v136, v141, v5
	v_min_f32_e32 v138, v7, v5
	v_min_f32_e32 v139, v145, v5
	v_min_f32_e32 v140, v13, v5
	v_min_f32_e32 v137, v137, v5
	v_min_f32_e32 v141, v19, v5
	v_min_f32_e32 v133, v133, v5
	v_mul_f32_e32 v165, v74, v110
	v_add_f32_e32 v75, 1.0, v75
	v_max_f32_e64 v4, -s15, v4
	v_max_f32_e64 v5, -s15, v6
	v_max_f32_e64 v6, -s15, v8
	v_max_f32_e64 v7, -s15, v9
	v_max_f32_e64 v8, -s15, v10
	v_max_f32_e64 v9, -s15, v12
	v_max_f32_e64 v10, -s15, v14
	v_max_f32_e64 v11, -s15, v16
	v_max_f32_e64 v12, -s15, v18
	v_max_f32_e64 v13, -s15, v20
	v_max_f32_e64 v14, -s15, v21
	v_max_f32_e64 v15, -s15, v22
	v_max_f32_e64 v16, -s15, v24
	v_max_f32_e64 v17, -s15, v26
	v_max_f32_e64 v18, -s15, v28
	v_max_f32_e64 v19, -s15, v30
	v_max_f32_e64 v20, -s15, v32
	v_max_f32_e64 v21, -s15, v34
	v_max_f32_e64 v22, -s15, v36
	v_max_f32_e64 v23, -s15, v38
	v_max_f32_e64 v24, -s15, v40
	v_max_f32_e64 v25, -s15, v42
	v_max_f32_e64 v26, -s15, v44
	v_max_f32_e64 v27, -s15, v46
	v_max_f32_e64 v28, -s15, v48
	v_max_f32_e64 v30, -s15, v52
	v_max_f32_e64 v31, -s15, v54
	v_max_f32_e64 v32, -s15, v56
	v_max_f32_e64 v33, -s15, v58
	v_max_f32_e64 v34, -s15, v60
	v_max_f32_e64 v35, -s15, v62
	v_max_f32_e64 v36, -s15, v63
	v_max_f32_e64 v37, -s15, v64
	v_max_f32_e64 v38, -s15, v59
	v_max_f32_e64 v39, -s15, v61
	v_max_f32_e64 v40, -s15, v55
	v_max_f32_e64 v41, -s15, v57
	v_max_f32_e64 v42, -s15, v51
	v_max_f32_e64 v43, -s15, v53
	v_max_f32_e64 v44, -s15, v47
	v_max_f32_e64 v46, -s15, v65
	v_max_f32_e64 v47, -s15, v66
	v_max_f32_e64 v48, -s15, v67
	v_max_f32_e64 v51, -s15, v76
	v_max_f32_e64 v52, -s15, v77
	v_max_f32_e64 v53, -s15, v78
	v_max_f32_e64 v54, -s15, v79
	v_max_f32_e64 v55, -s15, v80
	v_max_f32_e64 v56, -s15, v130
	v_max_f32_e64 v57, -s15, v131
	v_max_f32_e64 v58, -s15, v132
	v_max_f32_e64 v59, -s15, v134
	v_max_f32_e64 v60, -s15, v135
	v_max_f32_e64 v61, -s15, v136
	v_max_f32_e64 v62, -s15, v138
	v_max_f32_e64 v63, -s15, v139
	v_max_f32_e64 v64, -s15, v140
	v_max_f32_e64 v65, -s15, v137
	v_max_f32_e64 v66, -s15, v141
	v_max_f32_e64 v67, -s15, v133
	v_mul_f32_e32 v76, v74, v182
	v_mul_f32_e32 v77, v74, v183
	v_mul_f32_e32 v78, v74, v184
	v_mul_f32_e32 v79, v74, v185
	v_mul_f32_e32 v80, v74, v186
	v_mul_f32_e32 v130, v74, v187
	v_mul_f32_e32 v131, v74, v81
	v_mul_f32_e32 v132, v74, v82
	v_mul_f32_e32 v133, v74, v83
	v_mul_f32_e32 v134, v74, v84
	v_mul_f32_e32 v135, v74, v85
	v_mul_f32_e32 v136, v74, v86
	v_mul_f32_e32 v137, v74, v87
	v_mul_f32_e32 v138, v74, v88
	v_mul_f32_e32 v139, v74, v89
	v_mul_f32_e32 v140, v74, v90
	v_mul_f32_e32 v141, v74, v91
	v_mul_f32_e32 v142, v74, v92
	v_mul_f32_e32 v143, v74, v93
	v_mul_f32_e32 v144, v74, v94
	v_mul_f32_e32 v145, v74, v95
	v_mul_f32_e32 v150, v74, v96
	v_mul_f32_e32 v151, v74, v97
	v_mul_f32_e32 v152, v74, v98
	v_mul_f32_e32 v154, v74, v100
	v_mul_f32_e32 v155, v74, v101
	v_mul_f32_e32 v156, v74, v102
	v_mul_f32_e32 v157, v74, v103
	v_mul_f32_e32 v158, v74, v104
	v_mul_f32_e32 v159, v74, v105
	v_mul_f32_e32 v160, v74, v106
	v_mul_f32_e32 v161, v74, v107
	v_mul_f32_e32 v164, v74, v109
	v_mul_f32_e32 v166, v74, v111
	v_mul_f32_e32 v167, v74, v112
	v_mul_f32_e32 v168, v74, v113
	v_mul_f32_e32 v169, v74, v114
	v_mul_f32_e32 v170, v74, v115
	v_mul_f32_e32 v171, v74, v116
	v_mul_f32_e32 v172, v74, v117
	v_mul_f32_e32 v174, v74, v119
	v_mul_f32_e32 v175, v74, v120
	v_mul_f32_e32 v178, v74, v121
	v_mul_f32_e32 v179, v74, v122
	v_mul_f32_e32 v180, v74, v123
	v_mul_f32_e32 v181, v74, v124
	v_mul_f32_e32 v188, v74, v125
	v_mul_f32_e32 v189, v74, v126
	v_mul_f32_e32 v190, v74, v127
	v_mul_f32_e32 v191, v74, v128
	v_mul_f32_e32 v192, v74, v129
	v_mul_f32_e32 v193, v74, v73
	v_mul_f32_e32 v194, v74, v72
	v_mul_f32_e32 v195, v74, v71
	v_mul_f32_e32 v196, v74, v70
	v_mul_f32_e32 v197, v74, v69
	v_mul_f32_e32 v198, v74, v68
	v_mul_f32_e32 v199, v74, v3
	v_mul_f32_e32 v74, v74, v2
	v_exp_f32_e32 v200, v165
	v_add_f32_e32 v165, 1.0, v162
	v_div_scale_f32 v162, s[14:15], v75, v75, v1
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v74, v74
	v_add_f32_e32 v227, 1.0, v153
	v_add_f32_e32 v153, 1.0, v173
	v_rcp_f32_e32 v173, v162
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v174, v174
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v175, v175
	v_exp_f32_e32 v76, v76
	v_add_f32_e32 v208, 1.0, v130
	v_add_f32_e32 v130, 1.0, v74
	v_fma_f32 v74, -v162, v173, 1.0
	v_fmac_f32_e32 v173, v74, v173
	v_div_scale_f32 v74, vcc, v1, v75, v1
	v_add_f32_e32 v226, 1.0, v152
	v_add_f32_e32 v152, 1.0, v174
	v_mul_f32_e32 v174, v74, v173
	v_add_f32_e32 v225, 1.0, v151
	v_add_f32_e32 v151, 1.0, v175
	v_fma_f32 v175, -v162, v174, v74
	v_add_f32_e32 v76, 1.0, v76
	v_fmac_f32_e32 v174, v175, v173
	v_fma_f32 v74, -v162, v174, v74
	v_div_scale_f32 v162, s[14:15], v76, v76, v182
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v74, v74, v173, v174
	v_exp_f32_e32 v77, v77
	v_div_fixup_f32 v74, v74, v75, v1
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v182, v76, v182
	v_mul_f32_e32 v75, v1, v175
	v_fma_f32 v173, -v162, v75, v1
	v_add_f32_e32 v77, 1.0, v77
	v_fmac_f32_e32 v75, v173, v175
	v_fma_f32 v1, -v162, v75, v1
	v_div_scale_f32 v162, s[14:15], v77, v77, v183
	v_rcp_f32_e32 v173, v162
	v_div_fmas_f32 v1, v1, v175, v75
	v_exp_f32_e32 v78, v78
	v_div_fixup_f32 v75, v1, v76, v182
	v_fma_f32 v1, -v162, v173, 1.0
	v_fmac_f32_e32 v173, v1, v173
	v_div_scale_f32 v1, vcc, v183, v77, v183
	v_mul_f32_e32 v76, v1, v173
	v_fma_f32 v174, -v162, v76, v1
	v_add_f32_e32 v78, 1.0, v78
	v_fmac_f32_e32 v76, v174, v173
	v_fma_f32 v1, -v162, v76, v1
	v_div_scale_f32 v162, s[14:15], v78, v78, v184
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v173, v76
	v_exp_f32_e32 v79, v79
	v_div_fixup_f32 v76, v1, v77, v183
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v184, v78, v184
	v_mul_f32_e32 v77, v1, v174
	v_fma_f32 v173, -v162, v77, v1
	v_add_f32_e32 v79, 1.0, v79
	v_fmac_f32_e32 v77, v173, v174
	v_fma_f32 v1, -v162, v77, v1
	v_div_scale_f32 v162, s[14:15], v79, v79, v185
	v_rcp_f32_e32 v173, v162
	v_div_fmas_f32 v1, v1, v174, v77
	v_exp_f32_e32 v80, v80
	v_div_fixup_f32 v77, v1, v78, v184
	v_fma_f32 v1, -v162, v173, 1.0
	v_fmac_f32_e32 v173, v1, v173
	v_div_scale_f32 v1, vcc, v185, v79, v185
	v_mul_f32_e32 v78, v1, v173
	v_fma_f32 v174, -v162, v78, v1
	v_add_f32_e32 v80, 1.0, v80
	v_fmac_f32_e32 v78, v174, v173
	v_fma_f32 v1, -v162, v78, v1
	v_div_scale_f32 v162, s[14:15], v80, v80, v186
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v173, v78
	v_div_fixup_f32 v78, v1, v79, v185
	v_exp_f32_e32 v131, v131
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v186, v80, v186
	v_mul_f32_e32 v79, v1, v174
	v_fma_f32 v173, -v162, v79, v1
	v_fmac_f32_e32 v79, v173, v174
	v_fma_f32 v1, -v162, v79, v1
	v_div_scale_f32 v162, s[14:15], v208, v208, v187
	v_rcp_f32_e32 v173, v162
	v_div_fmas_f32 v1, v1, v174, v79
	v_div_fixup_f32 v79, v1, v80, v186
	v_add_f32_e32 v209, 1.0, v131
	v_fma_f32 v1, -v162, v173, 1.0
	v_fmac_f32_e32 v173, v1, v173
	v_div_scale_f32 v1, vcc, v187, v208, v187
	v_mul_f32_e32 v80, v1, v173
	v_fma_f32 v174, -v162, v80, v1
	v_fmac_f32_e32 v80, v174, v173
	v_fma_f32 v1, -v162, v80, v1
	v_div_scale_f32 v162, s[14:15], v209, v209, v81
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v173, v80
	v_exp_f32_e32 v132, v132
	v_div_fixup_f32 v80, v1, v208, v187
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v81, v209, v81
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v210, 1.0, v132
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v210, v210, v82
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v133, v133
	v_div_fixup_f32 v81, v1, v209, v81
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v82, v210, v82
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v211, 1.0, v133
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v211, v211, v83
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v134, v134
	v_div_fixup_f32 v82, v1, v210, v82
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v83, v211, v83
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v212, 1.0, v134
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v212, v212, v84
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v135, v135
	v_div_fixup_f32 v83, v1, v211, v83
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v84, v212, v84
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v213, 1.0, v135
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v213, v213, v85
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v136, v136
	v_div_fixup_f32 v84, v1, v212, v84
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v85, v213, v85
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v214, 1.0, v136
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v214, v214, v86
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v137, v137
	v_div_fixup_f32 v85, v1, v213, v85
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v86, v214, v86
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v215, 1.0, v137
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v215, v215, v87
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v138, v138
	v_div_fixup_f32 v86, v1, v214, v86
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v87, v215, v87
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v216, 1.0, v138
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v216, v216, v88
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v139, v139
	v_div_fixup_f32 v87, v1, v215, v87
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v88, v216, v88
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v217, 1.0, v139
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v217, v217, v89
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v140, v140
	v_div_fixup_f32 v88, v1, v216, v88
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v89, v217, v89
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v218, 1.0, v140
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v218, v218, v90
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v141, v141
	v_div_fixup_f32 v89, v1, v217, v89
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v90, v218, v90
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v219, 1.0, v141
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v219, v219, v91
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v142, v142
	v_div_fixup_f32 v90, v1, v218, v90
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v91, v219, v91
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v220, 1.0, v142
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v220, v220, v92
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v143, v143
	v_div_fixup_f32 v91, v1, v219, v91
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v92, v220, v92
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v221, 1.0, v143
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v221, v221, v93
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v144, v144
	v_div_fixup_f32 v92, v1, v220, v92
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v93, v221, v93
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v222, 1.0, v144
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v222, v222, v94
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v145, v145
	v_div_fixup_f32 v93, v1, v221, v93
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v94, v222, v94
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_add_f32_e32 v223, 1.0, v145
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v223, v223, v95
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v150, v150
	v_div_fixup_f32 v94, v1, v222, v94
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v95, v223, v95
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_add_f32_e32 v224, 1.0, v150
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v224, v224, v96
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_div_fixup_f32 v95, v1, v223, v95
	v_exp_f32_e32 v154, v154
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v96, v224, v96
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v225, v225, v97
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_div_fixup_f32 v96, v1, v224, v96
	v_add_f32_e32 v228, 1.0, v154
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v97, v225, v97
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v226, v226, v98
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_div_fixup_f32 v97, v1, v225, v97
	v_exp_f32_e32 v155, v155
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v98, v226, v98
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v227, v227, v99
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_div_fixup_f32 v98, v1, v226, v98
	v_exp_f32_e32 v207, v172
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v99, v227, v99
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v228, v228, v100
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_div_fixup_f32 v99, v1, v227, v99
	v_add_f32_e32 v172, 1.0, v155
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v100, v228, v100
	v_mul_f32_e32 v173, v1, v175
	v_fma_f32 v174, -v162, v173, v1
	v_fmac_f32_e32 v173, v174, v175
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v172, v172, v101
	v_rcp_f32_e32 v174, v162
	v_div_fmas_f32 v1, v1, v175, v173
	v_exp_f32_e32 v156, v156
	v_div_fixup_f32 v100, v1, v228, v100
	v_fma_f32 v1, -v162, v174, 1.0
	v_fmac_f32_e32 v174, v1, v174
	v_div_scale_f32 v1, vcc, v101, v172, v101
	v_mul_f32_e32 v173, v1, v174
	v_fma_f32 v175, -v162, v173, v1
	v_exp_f32_e32 v206, v171
	v_add_f32_e32 v171, 1.0, v156
	v_fmac_f32_e32 v173, v175, v174
	v_fma_f32 v1, -v162, v173, v1
	v_div_scale_f32 v162, s[14:15], v171, v171, v102
	v_rcp_f32_e32 v175, v162
	v_div_fmas_f32 v1, v1, v174, v173
	v_exp_f32_e32 v157, v157
	v_div_fixup_f32 v101, v1, v172, v101
	v_fma_f32 v1, -v162, v175, 1.0
	v_fmac_f32_e32 v175, v1, v175
	v_div_scale_f32 v1, vcc, v102, v171, v102
	v_mul_f32_e32 v172, v1, v175
	v_fma_f32 v173, -v162, v172, v1
	v_exp_f32_e32 v205, v170
	v_add_f32_e32 v170, 1.0, v157
	v_fmac_f32_e32 v172, v173, v175
	v_fma_f32 v1, -v162, v172, v1
	v_div_scale_f32 v162, s[14:15], v170, v170, v103
	v_rcp_f32_e32 v173, v162
	v_div_fmas_f32 v1, v1, v175, v172
	v_exp_f32_e32 v158, v158
	v_div_fixup_f32 v102, v1, v171, v102
	v_fma_f32 v1, -v162, v173, 1.0
	v_fmac_f32_e32 v173, v1, v173
	v_div_scale_f32 v1, vcc, v103, v170, v103
	v_mul_f32_e32 v171, v1, v173
	v_fma_f32 v172, -v162, v171, v1
	v_exp_f32_e32 v204, v169
	v_add_f32_e32 v169, 1.0, v158
	v_fmac_f32_e32 v171, v172, v173
	v_fma_f32 v1, -v162, v171, v1
	v_div_scale_f32 v162, s[14:15], v169, v169, v104
	v_rcp_f32_e32 v172, v162
	v_div_fmas_f32 v1, v1, v173, v171
	v_exp_f32_e32 v159, v159
	v_div_fixup_f32 v103, v1, v170, v103
	v_fma_f32 v1, -v162, v172, 1.0
	v_fmac_f32_e32 v172, v1, v172
	v_div_scale_f32 v1, vcc, v104, v169, v104
	v_mul_f32_e32 v170, v1, v172
	v_fma_f32 v171, -v162, v170, v1
	v_exp_f32_e32 v203, v168
	v_add_f32_e32 v168, 1.0, v159
	v_fmac_f32_e32 v170, v171, v172
	v_fma_f32 v1, -v162, v170, v1
	v_div_scale_f32 v162, s[14:15], v168, v168, v105
	v_rcp_f32_e32 v171, v162
	v_div_fmas_f32 v1, v1, v172, v170
	v_exp_f32_e32 v160, v160
	v_div_fixup_f32 v104, v1, v169, v104
	v_fma_f32 v1, -v162, v171, 1.0
	v_fmac_f32_e32 v171, v1, v171
	v_div_scale_f32 v1, vcc, v105, v168, v105
	v_mul_f32_e32 v169, v1, v171
	v_fma_f32 v170, -v162, v169, v1
	v_exp_f32_e32 v202, v167
	v_add_f32_e32 v167, 1.0, v160
	v_fmac_f32_e32 v169, v170, v171
	v_fma_f32 v1, -v162, v169, v1
	v_div_scale_f32 v162, s[14:15], v167, v167, v106
	v_rcp_f32_e32 v170, v162
	v_div_fmas_f32 v1, v1, v171, v169
	v_exp_f32_e32 v161, v161
	v_div_fixup_f32 v105, v1, v168, v105
	v_fma_f32 v1, -v162, v170, 1.0
	v_fmac_f32_e32 v170, v1, v170
	v_div_scale_f32 v1, vcc, v106, v167, v106
	v_mul_f32_e32 v168, v1, v170
	v_fma_f32 v169, -v162, v168, v1
	v_exp_f32_e32 v201, v166
	v_add_f32_e32 v166, 1.0, v161
	v_fmac_f32_e32 v168, v169, v170
	v_fma_f32 v1, -v162, v168, v1
	v_div_scale_f32 v162, s[14:15], v166, v166, v107
	v_rcp_f32_e32 v169, v162
	v_div_fmas_f32 v1, v1, v170, v168
	v_div_fixup_f32 v106, v1, v167, v106
	v_exp_f32_e32 v164, v164
	v_fma_f32 v1, -v162, v169, 1.0
	v_fmac_f32_e32 v169, v1, v169
	v_div_scale_f32 v1, vcc, v107, v166, v107
	v_mul_f32_e32 v167, v1, v169
	v_fma_f32 v168, -v162, v167, v1
	v_fmac_f32_e32 v167, v168, v169
	v_fma_f32 v1, -v162, v167, v1
	v_div_scale_f32 v162, s[14:15], v165, v165, v108
	v_rcp_f32_e32 v168, v162
	v_div_fmas_f32 v1, v1, v169, v167
	v_div_fixup_f32 v107, v1, v166, v107
	v_add_f32_e32 v164, 1.0, v164
	v_fma_f32 v1, -v162, v168, 1.0
	v_fmac_f32_e32 v168, v1, v168
	v_div_scale_f32 v1, vcc, v108, v165, v108
	v_mul_f32_e32 v166, v1, v168
	v_fma_f32 v167, -v162, v166, v1
	v_fmac_f32_e32 v166, v167, v168
	v_fma_f32 v1, -v162, v166, v1
	v_div_scale_f32 v162, s[14:15], v164, v164, v109
	v_rcp_f32_e32 v167, v162
	v_div_fmas_f32 v1, v1, v168, v166
	v_div_fixup_f32 v108, v1, v165, v108
	v_add_f32_e32 v161, 1.0, v200
	v_fma_f32 v1, -v162, v167, 1.0
	v_fmac_f32_e32 v167, v1, v167
	v_div_scale_f32 v1, vcc, v109, v164, v109
	v_mul_f32_e32 v165, v1, v167
	v_fma_f32 v166, -v162, v165, v1
	v_fmac_f32_e32 v165, v166, v167
	v_fma_f32 v1, -v162, v165, v1
	v_div_scale_f32 v162, s[14:15], v161, v161, v110
	v_rcp_f32_e32 v166, v162
	v_div_fmas_f32 v1, v1, v167, v165
	v_div_fixup_f32 v109, v1, v164, v109
	v_add_f32_e32 v160, 1.0, v201
	v_fma_f32 v1, -v162, v166, 1.0
	v_fmac_f32_e32 v166, v1, v166
	v_div_scale_f32 v1, vcc, v110, v161, v110
	v_mul_f32_e32 v164, v1, v166
	v_fma_f32 v165, -v162, v164, v1
	v_fmac_f32_e32 v164, v165, v166
	v_fma_f32 v1, -v162, v164, v1
	v_div_scale_f32 v162, s[14:15], v160, v160, v111
	v_rcp_f32_e32 v165, v162
	v_div_fmas_f32 v1, v1, v166, v164
	v_div_fixup_f32 v110, v1, v161, v110
	v_add_f32_e32 v159, 1.0, v202
	v_fma_f32 v1, -v162, v165, 1.0
	v_fmac_f32_e32 v165, v1, v165
	v_div_scale_f32 v1, vcc, v111, v160, v111
	v_mul_f32_e32 v161, v1, v165
	v_fma_f32 v164, -v162, v161, v1
	v_fmac_f32_e32 v161, v164, v165
	v_fma_f32 v1, -v162, v161, v1
	v_div_scale_f32 v162, s[14:15], v159, v159, v112
	v_rcp_f32_e32 v164, v162
	v_div_fmas_f32 v1, v1, v165, v161
	v_div_fixup_f32 v111, v1, v160, v111
	v_add_f32_e32 v158, 1.0, v203
	v_fma_f32 v1, -v162, v164, 1.0
	v_fmac_f32_e32 v164, v1, v164
	v_div_scale_f32 v1, vcc, v112, v159, v112
	v_mul_f32_e32 v160, v1, v164
	v_fma_f32 v161, -v162, v160, v1
	v_fmac_f32_e32 v160, v161, v164
	v_div_scale_f32 v161, s[14:15], v158, v158, v113
	v_fma_f32 v1, -v162, v160, v1
	v_rcp_f32_e32 v162, v161
	v_div_fmas_f32 v1, v1, v164, v160
	v_div_fixup_f32 v112, v1, v159, v112
	v_add_f32_e32 v157, 1.0, v204
	v_fma_f32 v1, -v161, v162, 1.0
	v_fmac_f32_e32 v162, v1, v162
	v_div_scale_f32 v1, vcc, v113, v158, v113
	v_mul_f32_e32 v159, v1, v162
	v_fma_f32 v160, -v161, v159, v1
	v_fmac_f32_e32 v159, v160, v162
	v_div_scale_f32 v160, s[14:15], v157, v157, v114
	v_fma_f32 v1, -v161, v159, v1
	v_rcp_f32_e32 v161, v160
	v_div_fmas_f32 v1, v1, v162, v159
	v_div_fixup_f32 v113, v1, v158, v113
	v_add_f32_e32 v156, 1.0, v205
	v_fma_f32 v1, -v160, v161, 1.0
	v_fmac_f32_e32 v161, v1, v161
	v_div_scale_f32 v1, vcc, v114, v157, v114
	v_mul_f32_e32 v158, v1, v161
	v_fma_f32 v159, -v160, v158, v1
	v_fmac_f32_e32 v158, v159, v161
	v_div_scale_f32 v159, s[14:15], v156, v156, v115
	v_fma_f32 v1, -v160, v158, v1
	v_rcp_f32_e32 v160, v159
	v_div_fmas_f32 v1, v1, v161, v158
	v_div_fixup_f32 v114, v1, v157, v114
	v_add_f32_e32 v155, 1.0, v206
	v_fma_f32 v1, -v159, v160, 1.0
	v_fmac_f32_e32 v160, v1, v160
	v_div_scale_f32 v1, vcc, v115, v156, v115
	v_mul_f32_e32 v157, v1, v160
	v_fma_f32 v158, -v159, v157, v1
	v_fmac_f32_e32 v157, v158, v160
	v_div_scale_f32 v158, s[14:15], v155, v155, v116
	v_fma_f32 v1, -v159, v157, v1
	v_rcp_f32_e32 v159, v158
	v_div_fmas_f32 v1, v1, v160, v157
	v_div_fixup_f32 v115, v1, v156, v115
	v_add_f32_e32 v154, 1.0, v207
	v_fma_f32 v1, -v158, v159, 1.0
	v_fmac_f32_e32 v159, v1, v159
	v_div_scale_f32 v1, vcc, v116, v155, v116
	v_mul_f32_e32 v156, v1, v159
	v_fma_f32 v157, -v158, v156, v1
	v_fmac_f32_e32 v156, v157, v159
	v_div_scale_f32 v157, s[14:15], v154, v154, v117
	v_fma_f32 v1, -v158, v156, v1
	v_rcp_f32_e32 v158, v157
	v_div_fmas_f32 v1, v1, v159, v156
	v_div_fixup_f32 v116, v1, v155, v116
	v_exp_f32_e32 v178, v178
	v_fma_f32 v1, -v157, v158, 1.0
	v_fmac_f32_e32 v158, v1, v158
	v_div_scale_f32 v1, vcc, v117, v154, v117
	v_mul_f32_e32 v155, v1, v158
	v_fma_f32 v156, -v157, v155, v1
	v_fmac_f32_e32 v155, v156, v158
	v_div_scale_f32 v156, s[14:15], v153, v153, v118
	v_fma_f32 v1, -v157, v155, v1
	v_rcp_f32_e32 v157, v156
	v_div_fmas_f32 v1, v1, v158, v155
	v_div_fixup_f32 v117, v1, v154, v117
	v_add_f32_e32 v150, 1.0, v178
	v_fma_f32 v1, -v156, v157, 1.0
	v_fmac_f32_e32 v157, v1, v157
	v_div_scale_f32 v1, vcc, v118, v153, v118
	v_mul_f32_e32 v154, v1, v157
	v_fma_f32 v155, -v156, v154, v1
	v_fmac_f32_e32 v154, v155, v157
	v_div_scale_f32 v155, s[14:15], v152, v152, v119
	v_fma_f32 v1, -v156, v154, v1
	v_rcp_f32_e32 v156, v155
	v_div_fmas_f32 v1, v1, v157, v154
	v_div_fixup_f32 v118, v1, v153, v118
	v_exp_f32_e32 v179, v179
	v_fma_f32 v1, -v155, v156, 1.0
	v_fmac_f32_e32 v156, v1, v156
	v_div_scale_f32 v1, vcc, v119, v152, v119
	v_mul_f32_e32 v153, v1, v156
	v_fma_f32 v154, -v155, v153, v1
	v_fmac_f32_e32 v153, v154, v156
	v_div_scale_f32 v154, s[14:15], v151, v151, v120
	v_fma_f32 v1, -v155, v153, v1
	v_rcp_f32_e32 v155, v154
	v_div_fmas_f32 v1, v1, v156, v153
	v_div_fixup_f32 v119, v1, v152, v119
	v_add_f32_e32 v145, 1.0, v179
	v_fma_f32 v1, -v154, v155, 1.0
	v_fmac_f32_e32 v155, v1, v155
	v_div_scale_f32 v1, vcc, v120, v151, v120
	v_mul_f32_e32 v152, v1, v155
	v_fma_f32 v153, -v154, v152, v1
	v_fmac_f32_e32 v152, v153, v155
	v_div_scale_f32 v153, s[14:15], v150, v150, v121
	v_fma_f32 v1, -v154, v152, v1
	v_rcp_f32_e32 v154, v153
	v_div_fmas_f32 v1, v1, v155, v152
	v_div_fixup_f32 v120, v1, v151, v120
	v_exp_f32_e32 v180, v180
	v_fma_f32 v1, -v153, v154, 1.0
	v_fmac_f32_e32 v154, v1, v154
	v_div_scale_f32 v1, vcc, v121, v150, v121
	v_mul_f32_e32 v151, v1, v154
	v_fma_f32 v152, -v153, v151, v1
	v_fmac_f32_e32 v151, v152, v154
	v_div_scale_f32 v152, s[14:15], v145, v145, v122
	v_fma_f32 v1, -v153, v151, v1
	v_rcp_f32_e32 v153, v152
	v_div_fmas_f32 v1, v1, v154, v151
	v_div_fixup_f32 v121, v1, v150, v121
	v_add_f32_e32 v144, 1.0, v180
	v_fma_f32 v1, -v152, v153, 1.0
	v_fmac_f32_e32 v153, v1, v153
	v_div_scale_f32 v1, vcc, v122, v145, v122
	v_mul_f32_e32 v150, v1, v153
	v_fma_f32 v151, -v152, v150, v1
	v_fmac_f32_e32 v150, v151, v153
	v_div_scale_f32 v151, s[14:15], v144, v144, v123
	v_fma_f32 v1, -v152, v150, v1
	v_rcp_f32_e32 v152, v151
	v_exp_f32_e32 v181, v181
	v_div_fmas_f32 v1, v1, v153, v150
	v_div_fixup_f32 v122, v1, v145, v122
	v_fma_f32 v1, -v151, v152, 1.0
	v_fmac_f32_e32 v152, v1, v152
	v_div_scale_f32 v1, vcc, v123, v144, v123
	v_mul_f32_e32 v145, v1, v152
	v_add_f32_e32 v143, 1.0, v181
	v_fma_f32 v150, -v151, v145, v1
	v_fmac_f32_e32 v145, v150, v152
	v_div_scale_f32 v150, s[14:15], v143, v143, v124
	v_fma_f32 v1, -v151, v145, v1
	v_rcp_f32_e32 v151, v150
	v_exp_f32_e32 v188, v188
	v_div_fmas_f32 v1, v1, v152, v145
	v_div_fixup_f32 v123, v1, v144, v123
	v_fma_f32 v1, -v150, v151, 1.0
	v_fmac_f32_e32 v151, v1, v151
	v_div_scale_f32 v1, vcc, v124, v143, v124
	v_mul_f32_e32 v144, v1, v151
	v_add_f32_e32 v142, 1.0, v188
	v_fma_f32 v145, -v150, v144, v1
	v_fmac_f32_e32 v144, v145, v151
	v_div_scale_f32 v145, s[14:15], v142, v142, v125
	v_fma_f32 v1, -v150, v144, v1
	v_rcp_f32_e32 v150, v145
	v_exp_f32_e32 v189, v189
	v_div_fmas_f32 v1, v1, v151, v144
	v_div_fixup_f32 v124, v1, v143, v124
	v_fma_f32 v1, -v145, v150, 1.0
	v_fmac_f32_e32 v150, v1, v150
	v_div_scale_f32 v1, vcc, v125, v142, v125
	v_mul_f32_e32 v143, v1, v150
	v_add_f32_e32 v141, 1.0, v189
	v_fma_f32 v144, -v145, v143, v1
	v_fmac_f32_e32 v143, v144, v150
	v_div_scale_f32 v144, s[14:15], v141, v141, v126
	v_fma_f32 v1, -v145, v143, v1
	v_rcp_f32_e32 v145, v144
	v_exp_f32_e32 v190, v190
	v_div_fmas_f32 v1, v1, v150, v143
	v_div_fixup_f32 v125, v1, v142, v125
	v_fma_f32 v1, -v144, v145, 1.0
	v_fmac_f32_e32 v145, v1, v145
	v_div_scale_f32 v1, vcc, v126, v141, v126
	v_mul_f32_e32 v142, v1, v145
	v_add_f32_e32 v140, 1.0, v190
	v_fma_f32 v143, -v144, v142, v1
	v_fmac_f32_e32 v142, v143, v145
	v_div_scale_f32 v143, s[14:15], v140, v140, v127
	v_fma_f32 v1, -v144, v142, v1
	v_rcp_f32_e32 v144, v143
	v_exp_f32_e32 v191, v191
	v_div_fmas_f32 v1, v1, v145, v142
	v_div_fixup_f32 v126, v1, v141, v126
	v_fma_f32 v1, -v143, v144, 1.0
	v_fmac_f32_e32 v144, v1, v144
	v_div_scale_f32 v1, vcc, v127, v140, v127
	v_mul_f32_e32 v141, v1, v144
	v_add_f32_e32 v139, 1.0, v191
	v_fma_f32 v142, -v143, v141, v1
	v_fmac_f32_e32 v141, v142, v144
	v_div_scale_f32 v142, s[14:15], v139, v139, v128
	v_fma_f32 v1, -v143, v141, v1
	v_rcp_f32_e32 v143, v142
	v_exp_f32_e32 v192, v192
	v_div_fmas_f32 v1, v1, v144, v141
	v_div_fixup_f32 v127, v1, v140, v127
	v_fma_f32 v1, -v142, v143, 1.0
	v_fmac_f32_e32 v143, v1, v143
	v_div_scale_f32 v1, vcc, v128, v139, v128
	v_mul_f32_e32 v140, v1, v143
	v_add_f32_e32 v138, 1.0, v192
	v_fma_f32 v141, -v142, v140, v1
	v_fmac_f32_e32 v140, v141, v143
	v_div_scale_f32 v141, s[14:15], v138, v138, v129
	v_fma_f32 v1, -v142, v140, v1
	v_rcp_f32_e32 v142, v141
	v_exp_f32_e32 v193, v193
	v_div_fmas_f32 v1, v1, v143, v140
	v_div_fixup_f32 v128, v1, v139, v128
	v_fma_f32 v1, -v141, v142, 1.0
	v_fmac_f32_e32 v142, v1, v142
	v_div_scale_f32 v1, vcc, v129, v138, v129
	v_mul_f32_e32 v139, v1, v142
	v_add_f32_e32 v137, 1.0, v193
	v_fma_f32 v140, -v141, v139, v1
	v_fmac_f32_e32 v139, v140, v142
	v_div_scale_f32 v140, s[14:15], v137, v137, v73
	v_fma_f32 v1, -v141, v139, v1
	v_rcp_f32_e32 v141, v140
	v_exp_f32_e32 v194, v194
	v_div_fmas_f32 v1, v1, v142, v139
	v_div_fixup_f32 v129, v1, v138, v129
	v_fma_f32 v1, -v140, v141, 1.0
	v_fmac_f32_e32 v141, v1, v141
	v_div_scale_f32 v1, vcc, v73, v137, v73
	v_mul_f32_e32 v138, v1, v141
	v_add_f32_e32 v136, 1.0, v194
	v_fma_f32 v139, -v140, v138, v1
	v_fmac_f32_e32 v138, v139, v141
	v_div_scale_f32 v139, s[14:15], v136, v136, v72
	v_fma_f32 v1, -v140, v138, v1
	v_rcp_f32_e32 v140, v139
	v_exp_f32_e32 v195, v195
	v_div_fmas_f32 v1, v1, v141, v138
	v_div_fixup_f32 v73, v1, v137, v73
	v_fma_f32 v1, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v1, v140
	v_div_scale_f32 v1, vcc, v72, v136, v72
	v_mul_f32_e32 v137, v1, v140
	v_add_f32_e32 v135, 1.0, v195
	v_fma_f32 v138, -v139, v137, v1
	v_fmac_f32_e32 v137, v138, v140
	v_div_scale_f32 v138, s[14:15], v135, v135, v71
	v_fma_f32 v1, -v139, v137, v1
	v_rcp_f32_e32 v139, v138
	v_exp_f32_e32 v196, v196
	v_div_fmas_f32 v1, v1, v140, v137
	v_div_fixup_f32 v72, v1, v136, v72
	v_fma_f32 v1, -v138, v139, 1.0
	v_fmac_f32_e32 v139, v1, v139
	v_div_scale_f32 v1, vcc, v71, v135, v71
	v_mul_f32_e32 v136, v1, v139
	v_add_f32_e32 v134, 1.0, v196
	v_fma_f32 v137, -v138, v136, v1
	v_fmac_f32_e32 v136, v137, v139
	v_div_scale_f32 v137, s[14:15], v134, v134, v70
	v_fma_f32 v1, -v138, v136, v1
	v_rcp_f32_e32 v138, v137
	v_exp_f32_e32 v197, v197
	v_div_fmas_f32 v1, v1, v139, v136
	v_div_fixup_f32 v71, v1, v135, v71
	v_fma_f32 v1, -v137, v138, 1.0
	v_fmac_f32_e32 v138, v1, v138
	v_div_scale_f32 v1, vcc, v70, v134, v70
	v_mul_f32_e32 v135, v1, v138
	v_add_f32_e32 v133, 1.0, v197
	v_fma_f32 v136, -v137, v135, v1
	v_fmac_f32_e32 v135, v136, v138
	v_div_scale_f32 v136, s[14:15], v133, v133, v69
	v_fma_f32 v1, -v137, v135, v1
	v_rcp_f32_e32 v137, v136
	v_exp_f32_e32 v198, v198
	v_div_fmas_f32 v1, v1, v138, v135
	v_div_fixup_f32 v70, v1, v134, v70
	v_fma_f32 v1, -v136, v137, 1.0
	v_fmac_f32_e32 v137, v1, v137
	v_div_scale_f32 v1, vcc, v69, v133, v69
	v_mul_f32_e32 v134, v1, v137
	v_add_f32_e32 v132, 1.0, v198
	v_fma_f32 v135, -v136, v134, v1
	v_fmac_f32_e32 v134, v135, v137
	v_div_scale_f32 v135, s[14:15], v132, v132, v68
	v_fma_f32 v1, -v136, v134, v1
	v_rcp_f32_e32 v136, v135
	v_exp_f32_e32 v199, v199
	v_div_fmas_f32 v1, v1, v137, v134
	v_div_fixup_f32 v69, v1, v133, v69
	v_fma_f32 v1, -v135, v136, 1.0
	v_fmac_f32_e32 v136, v1, v136
	v_div_scale_f32 v1, vcc, v68, v132, v68
	v_mul_f32_e32 v133, v1, v136
	v_add_f32_e32 v131, 1.0, v199
	v_fma_f32 v134, -v135, v133, v1
	v_fmac_f32_e32 v133, v134, v136
	v_div_scale_f32 v134, s[14:15], v131, v131, v3
	v_fma_f32 v1, -v135, v133, v1
	v_rcp_f32_e32 v135, v134
	v_div_fmas_f32 v1, v1, v136, v133
	v_div_fixup_f32 v68, v1, v132, v68
	v_fmac_f32_e32 v74, v74, v4
	v_fma_f32 v1, -v134, v135, 1.0
	v_fmac_f32_e32 v135, v1, v135
	v_div_scale_f32 v1, vcc, v3, v131, v3
	v_mul_f32_e32 v133, v1, v135
	v_fma_f32 v132, -v134, v133, v1
	v_fmac_f32_e32 v133, v132, v135
	global_load_dword v132, v147, s[10:11]
	v_fma_f32 v1, -v134, v133, v1
	v_div_scale_f32 v134, s[14:15], v130, v130, v2
	v_rcp_f32_e32 v136, v134
	v_div_fmas_f32 v1, v1, v135, v133
	v_div_fixup_f32 v131, v1, v131, v3
	v_fmac_f32_e32 v75, v75, v5
	v_fma_f32 v1, -v134, v136, 1.0
	v_fmac_f32_e32 v136, v1, v136
	v_div_scale_f32 v1, vcc, v2, v130, v2
	v_mul_f32_e32 v3, v1, v136
	v_fma_f32 v133, -v134, v3, v1
	v_fmac_f32_e32 v3, v133, v136
	v_fma_f32 v1, -v134, v3, v1
	v_div_fmas_f32 v1, v1, v136, v3
	v_div_fixup_f32 v130, v1, v130, v2
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
	s_waitcnt vmcnt(0)
	v_div_scale_f32 v1, s[10:11], v132, v132, v74
	v_rcp_f32_e32 v4, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v147, s13
	v_fma_f32 v5, -v1, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc, v74, v132, v74
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v1, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v1, -v1, v6, v5
	v_div_scale_f32 v5, s[10:11], v132, v132, v75
	v_rcp_f32_e32 v7, v5
	v_div_fmas_f32 v1, v1, v4, v6
	v_div_fixup_f32 v4, v1, v132, v74
	v_or_b32_e32 v2, 8, v146
	v_fma_f32 v1, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v1, v7
	v_div_scale_f32 v1, vcc, v75, v132, v75
	v_mul_f32_e32 v6, v1, v7
	v_fma_f32 v8, -v5, v6, v1
	v_fmac_f32_e32 v6, v8, v7
	v_div_scale_f32 v8, s[10:11], v132, v132, v76
	v_rcp_f32_e32 v9, v8
	v_fma_f32 v1, -v5, v6, v1
	v_div_fmas_f32 v1, v1, v7, v6
	v_div_fixup_f32 v5, v1, v132, v75
	v_fma_f32 v1, -v8, v9, 1.0
	v_fmac_f32_e32 v9, v1, v9
	v_div_scale_f32 v1, vcc, v76, v132, v76
	v_mul_f32_e32 v6, v1, v9
	v_fma_f32 v7, -v8, v6, v1
	v_fmac_f32_e32 v6, v7, v9
	v_div_scale_f32 v7, s[10:11], v132, v132, v77
	v_fma_f32 v1, -v8, v6, v1
	v_rcp_f32_e32 v8, v7
	v_div_fmas_f32 v1, v1, v9, v6
	v_div_fixup_f32 v6, v1, v132, v76
	v_cvt_scalef32_pk_fp8_f32 v4, v4, v5, 1.0
	v_fma_f32 v1, -v7, v8, 1.0
	v_fmac_f32_e32 v8, v1, v8
	v_div_scale_f32 v1, vcc, v77, v132, v77
	v_mul_f32_e32 v9, v1, v8
	v_fma_f32 v10, -v7, v9, v1
	v_fmac_f32_e32 v9, v10, v8
	v_div_scale_f32 v10, s[10:11], v132, v132, v78
	v_rcp_f32_e32 v11, v10
	v_fma_f32 v1, -v7, v9, v1
	v_div_fmas_f32 v1, v1, v8, v9
	v_div_fixup_f32 v7, v1, v132, v77
	v_fma_f32 v1, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v1, v11
	v_div_scale_f32 v1, vcc, v78, v132, v78
	v_mul_f32_e32 v8, v1, v11
	v_fma_f32 v9, -v10, v8, v1
	v_fmac_f32_e32 v8, v9, v11
	v_div_scale_f32 v9, s[10:11], v132, v132, v79
	v_fma_f32 v1, -v10, v8, v1
	v_rcp_f32_e32 v10, v9
	v_div_fmas_f32 v1, v1, v11, v8
	v_div_fixup_f32 v8, v1, v132, v78
	v_cvt_scalef32_pk_fp8_f32 v4, v6, v7, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v1, -v9, v10, 1.0
	v_fmac_f32_e32 v10, v1, v10
	v_div_scale_f32 v1, vcc, v79, v132, v79
	v_mul_f32_e32 v11, v1, v10
	v_fma_f32 v12, -v9, v11, v1
	v_fmac_f32_e32 v11, v12, v10
	v_div_scale_f32 v12, s[10:11], v132, v132, v80
	v_rcp_f32_e32 v13, v12
	v_fma_f32 v1, -v9, v11, v1
	v_div_fmas_f32 v1, v1, v10, v11
	v_div_fixup_f32 v9, v1, v132, v79
	v_fma_f32 v1, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v1, v13
	v_div_scale_f32 v1, vcc, v80, v132, v80
	v_mul_f32_e32 v10, v1, v13
	v_fma_f32 v11, -v12, v10, v1
	v_fmac_f32_e32 v10, v11, v13
	v_div_scale_f32 v11, s[10:11], v132, v132, v81
	v_fma_f32 v1, -v12, v10, v1
	v_rcp_f32_e32 v12, v11
	v_div_fmas_f32 v1, v1, v13, v10
	v_div_fixup_f32 v10, v1, v132, v80
	v_cvt_scalef32_pk_fp8_f32 v8, v8, v9, 1.0
	v_fma_f32 v1, -v11, v12, 1.0
	v_fmac_f32_e32 v12, v1, v12
	v_div_scale_f32 v1, vcc, v81, v132, v81
	v_mul_f32_e32 v13, v1, v12
	v_fma_f32 v14, -v11, v13, v1
	v_fmac_f32_e32 v13, v14, v12
	v_div_scale_f32 v14, s[10:11], v132, v132, v82
	v_rcp_f32_e32 v15, v14
	v_fma_f32 v1, -v11, v13, v1
	v_div_fmas_f32 v1, v1, v12, v13
	v_div_fixup_f32 v11, v1, v132, v81
	v_fma_f32 v1, -v14, v15, 1.0
	v_fmac_f32_e32 v15, v1, v15
	v_div_scale_f32 v1, vcc, v82, v132, v82
	v_mul_f32_e32 v12, v1, v15
	v_fma_f32 v13, -v14, v12, v1
	v_fmac_f32_e32 v12, v13, v15
	v_div_scale_f32 v13, s[10:11], v132, v132, v83
	v_fma_f32 v1, -v14, v12, v1
	v_rcp_f32_e32 v14, v13
	v_div_fmas_f32 v1, v1, v15, v12
	v_div_fixup_f32 v12, v1, v132, v82
	v_cvt_scalef32_pk_fp8_f32 v8, v10, v11, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v1, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v1, v14
	v_div_scale_f32 v1, vcc, v83, v132, v83
	v_mul_f32_e32 v15, v1, v14
	v_fma_f32 v16, -v13, v15, v1
	v_fmac_f32_e32 v15, v16, v14
	v_div_scale_f32 v16, s[10:11], v132, v132, v84
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v1, -v13, v15, v1
	v_div_fmas_f32 v1, v1, v14, v15
	v_div_fixup_f32 v13, v1, v132, v83
	v_fma_f32 v1, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v1, v17
	v_div_scale_f32 v1, vcc, v84, v132, v84
	v_mul_f32_e32 v14, v1, v17
	v_fma_f32 v15, -v16, v14, v1
	v_fmac_f32_e32 v14, v15, v17
	v_div_scale_f32 v15, s[10:11], v132, v132, v85
	v_fma_f32 v1, -v16, v14, v1
	v_rcp_f32_e32 v16, v15
	v_div_fmas_f32 v1, v1, v17, v14
	v_div_fixup_f32 v14, v1, v132, v84
	v_cvt_scalef32_pk_fp8_f32 v12, v12, v13, 1.0
	v_fma_f32 v1, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v1, v16
	v_div_scale_f32 v1, vcc, v85, v132, v85
	v_mul_f32_e32 v17, v1, v16
	v_fma_f32 v18, -v15, v17, v1
	v_fmac_f32_e32 v17, v18, v16
	v_div_scale_f32 v18, s[10:11], v132, v132, v86
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v1, -v15, v17, v1
	v_div_fmas_f32 v1, v1, v16, v17
	v_div_fixup_f32 v15, v1, v132, v85
	v_fma_f32 v1, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v1, v19
	v_div_scale_f32 v1, vcc, v86, v132, v86
	v_mul_f32_e32 v16, v1, v19
	v_fma_f32 v17, -v18, v16, v1
	v_fmac_f32_e32 v16, v17, v19
	v_div_scale_f32 v17, s[10:11], v132, v132, v87
	v_fma_f32 v1, -v18, v16, v1
	v_rcp_f32_e32 v18, v17
	v_div_fmas_f32 v1, v1, v19, v16
	v_div_fixup_f32 v16, v1, v132, v86
	v_cvt_scalef32_pk_fp8_f32 v12, v14, v15, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v1, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v1, v18
	v_div_scale_f32 v1, vcc, v87, v132, v87
	v_mul_f32_e32 v19, v1, v18
	v_fma_f32 v20, -v17, v19, v1
	v_fmac_f32_e32 v19, v20, v18
	v_div_scale_f32 v20, s[10:11], v132, v132, v88
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v1, -v17, v19, v1
	v_div_fmas_f32 v1, v1, v18, v19
	v_div_fixup_f32 v17, v1, v132, v87
	v_fma_f32 v1, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v1, v21
	v_div_scale_f32 v1, vcc, v88, v132, v88
	v_mul_f32_e32 v18, v1, v21
	v_fma_f32 v19, -v20, v18, v1
	v_fmac_f32_e32 v18, v19, v21
	v_div_scale_f32 v19, s[10:11], v132, v132, v89
	v_fma_f32 v1, -v20, v18, v1
	v_rcp_f32_e32 v20, v19
	v_div_fmas_f32 v1, v1, v21, v18
	v_div_fixup_f32 v18, v1, v132, v88
	v_cvt_scalef32_pk_fp8_f32 v16, v16, v17, 1.0
	v_fma_f32 v1, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v1, v20
	v_div_scale_f32 v1, vcc, v89, v132, v89
	v_mul_f32_e32 v21, v1, v20
	v_fma_f32 v22, -v19, v21, v1
	v_fmac_f32_e32 v21, v22, v20
	v_div_scale_f32 v22, s[10:11], v132, v132, v90
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v1, -v19, v21, v1
	v_div_fmas_f32 v1, v1, v20, v21
	v_div_fixup_f32 v19, v1, v132, v89
	v_fma_f32 v1, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v1, v23
	v_div_scale_f32 v1, vcc, v90, v132, v90
	v_mul_f32_e32 v20, v1, v23
	v_fma_f32 v21, -v22, v20, v1
	v_fmac_f32_e32 v20, v21, v23
	v_div_scale_f32 v21, s[10:11], v132, v132, v91
	v_fma_f32 v1, -v22, v20, v1
	v_rcp_f32_e32 v22, v21
	v_div_fmas_f32 v1, v1, v23, v20
	v_div_fixup_f32 v20, v1, v132, v90
	v_cvt_scalef32_pk_fp8_f32 v16, v18, v19, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v1, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v1, v22
	v_div_scale_f32 v1, vcc, v91, v132, v91
	v_mul_f32_e32 v23, v1, v22
	v_fma_f32 v24, -v21, v23, v1
	v_fmac_f32_e32 v23, v24, v22
	v_div_scale_f32 v24, s[10:11], v132, v132, v92
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v1, -v21, v23, v1
	v_div_fmas_f32 v1, v1, v22, v23
	v_div_fixup_f32 v21, v1, v132, v91
	v_fma_f32 v1, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v1, v25
	v_div_scale_f32 v1, vcc, v92, v132, v92
	v_mul_f32_e32 v22, v1, v25
	v_fma_f32 v23, -v24, v22, v1
	v_fmac_f32_e32 v22, v23, v25
	v_div_scale_f32 v23, s[10:11], v132, v132, v93
	v_fma_f32 v1, -v24, v22, v1
	v_rcp_f32_e32 v24, v23
	v_div_fmas_f32 v1, v1, v25, v22
	v_div_fixup_f32 v22, v1, v132, v92
	v_cvt_scalef32_pk_fp8_f32 v5, v20, v21, 1.0
	v_fma_f32 v1, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v1, v24
	v_div_scale_f32 v1, vcc, v93, v132, v93
	v_mul_f32_e32 v25, v1, v24
	v_fma_f32 v26, -v23, v25, v1
	v_fmac_f32_e32 v25, v26, v24
	v_div_scale_f32 v26, s[10:11], v132, v132, v94
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v1, -v23, v25, v1
	v_div_fmas_f32 v1, v1, v24, v25
	v_div_fixup_f32 v23, v1, v132, v93
	v_fma_f32 v1, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v1, v27
	v_div_scale_f32 v1, vcc, v94, v132, v94
	v_mul_f32_e32 v24, v1, v27
	v_fma_f32 v25, -v26, v24, v1
	v_fmac_f32_e32 v24, v25, v27
	v_div_scale_f32 v25, s[10:11], v132, v132, v95
	v_fma_f32 v1, -v26, v24, v1
	v_rcp_f32_e32 v26, v25
	v_div_fmas_f32 v1, v1, v27, v24
	v_div_fixup_f32 v24, v1, v132, v94
	v_and_b32_e32 v21, 1, v0
	v_fma_f32 v1, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v1, v26
	v_div_scale_f32 v1, vcc, v95, v132, v95
	v_mul_f32_e32 v27, v1, v26
	v_fma_f32 v28, -v25, v27, v1
	v_fmac_f32_e32 v27, v28, v26
	v_div_scale_f32 v28, s[10:11], v132, v132, v96
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v1, -v25, v27, v1
	v_div_fmas_f32 v1, v1, v26, v27
	v_div_fixup_f32 v25, v1, v132, v95
	v_fma_f32 v1, -v28, v29, 1.0
	v_fmac_f32_e32 v29, v1, v29
	v_div_scale_f32 v1, vcc, v96, v132, v96
	v_mul_f32_e32 v26, v1, v29
	v_fma_f32 v27, -v28, v26, v1
	v_fmac_f32_e32 v26, v27, v29
	v_div_scale_f32 v27, s[10:11], v132, v132, v97
	v_fma_f32 v1, -v28, v26, v1
	v_rcp_f32_e32 v28, v27
	v_div_fmas_f32 v1, v1, v29, v26
	v_div_fixup_f32 v26, v1, v132, v96
	v_cvt_scalef32_pk_fp8_f32 v5, v22, v23, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v1, -v27, v28, 1.0
	v_fmac_f32_e32 v28, v1, v28
	v_div_scale_f32 v1, vcc, v97, v132, v97
	v_mul_f32_e32 v29, v1, v28
	v_fma_f32 v30, -v27, v29, v1
	v_fmac_f32_e32 v29, v30, v28
	v_div_scale_f32 v30, s[10:11], v132, v132, v98
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v1, -v27, v29, v1
	v_div_fmas_f32 v1, v1, v28, v29
	v_div_fixup_f32 v27, v1, v132, v97
	v_fma_f32 v1, -v30, v31, 1.0
	v_fmac_f32_e32 v31, v1, v31
	v_div_scale_f32 v1, vcc, v98, v132, v98
	v_mul_f32_e32 v28, v1, v31
	v_fma_f32 v29, -v30, v28, v1
	v_fmac_f32_e32 v28, v29, v31
	v_div_scale_f32 v29, s[10:11], v132, v132, v99
	v_fma_f32 v1, -v30, v28, v1
	v_rcp_f32_e32 v30, v29
	v_div_fmas_f32 v1, v1, v31, v28
	v_div_fixup_f32 v28, v1, v132, v98
	v_and_b32_e32 v20, 48, v236
	v_fma_f32 v1, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v1, v30
	v_div_scale_f32 v1, vcc, v99, v132, v99
	v_mul_f32_e32 v31, v1, v30
	v_fma_f32 v32, -v29, v31, v1
	v_fmac_f32_e32 v31, v32, v30
	v_div_scale_f32 v32, s[10:11], v132, v132, v100
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v1, -v29, v31, v1
	v_div_fmas_f32 v1, v1, v30, v31
	v_div_fixup_f32 v29, v1, v132, v99
	v_fma_f32 v1, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v1, v33
	v_div_scale_f32 v1, vcc, v100, v132, v100
	v_mul_f32_e32 v30, v1, v33
	v_fma_f32 v31, -v32, v30, v1
	v_fmac_f32_e32 v30, v31, v33
	v_div_scale_f32 v31, s[10:11], v132, v132, v101
	v_fma_f32 v1, -v32, v30, v1
	v_rcp_f32_e32 v32, v31
	v_div_fmas_f32 v1, v1, v33, v30
	v_div_fixup_f32 v30, v1, v132, v100
	v_lshlrev_b32_e32 v22, 13, v21
	v_fma_f32 v1, -v31, v32, 1.0
	v_fmac_f32_e32 v32, v1, v32
	v_div_scale_f32 v1, vcc, v101, v132, v101
	v_mul_f32_e32 v33, v1, v32
	v_fma_f32 v34, -v31, v33, v1
	v_fmac_f32_e32 v33, v34, v32
	v_div_scale_f32 v34, s[10:11], v132, v132, v102
	v_rcp_f32_e32 v35, v34
	v_fma_f32 v1, -v31, v33, v1
	v_div_fmas_f32 v1, v1, v32, v33
	v_div_fixup_f32 v31, v1, v132, v101
	v_fma_f32 v1, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v1, v35
	v_div_scale_f32 v1, vcc, v102, v132, v102
	v_mul_f32_e32 v32, v1, v35
	v_fma_f32 v33, -v34, v32, v1
	v_fmac_f32_e32 v32, v33, v35
	v_div_scale_f32 v33, s[10:11], v132, v132, v103
	v_fma_f32 v1, -v34, v32, v1
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v1, v1, v35, v32
	v_div_fixup_f32 v32, v1, v132, v102
	v_lshlrev_b32_e32 v23, 8, v0
	v_fma_f32 v1, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v1, v34
	v_div_scale_f32 v1, vcc, v103, v132, v103
	v_mul_f32_e32 v35, v1, v34
	v_fma_f32 v36, -v33, v35, v1
	v_fmac_f32_e32 v35, v36, v34
	v_div_scale_f32 v36, s[10:11], v132, v132, v104
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v1, -v33, v35, v1
	v_div_fmas_f32 v1, v1, v34, v35
	v_div_fixup_f32 v33, v1, v132, v103
	v_fma_f32 v1, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v1, v37
	v_div_scale_f32 v1, vcc, v104, v132, v104
	v_mul_f32_e32 v34, v1, v37
	v_fma_f32 v35, -v36, v34, v1
	v_fmac_f32_e32 v34, v35, v37
	v_div_scale_f32 v35, s[10:11], v132, v132, v105
	v_fma_f32 v1, -v36, v34, v1
	v_rcp_f32_e32 v36, v35
	v_div_fmas_f32 v1, v1, v37, v34
	v_div_fixup_f32 v34, v1, v132, v104
	v_and_b32_e32 v23, 0x4000, v23
	v_fma_f32 v1, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v1, v36
	v_div_scale_f32 v1, vcc, v105, v132, v105
	v_mul_f32_e32 v37, v1, v36
	v_fma_f32 v38, -v35, v37, v1
	v_fmac_f32_e32 v37, v38, v36
	v_div_scale_f32 v38, s[10:11], v132, v132, v106
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v1, -v35, v37, v1
	v_div_fmas_f32 v1, v1, v36, v37
	v_div_fixup_f32 v35, v1, v132, v105
	v_fma_f32 v1, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v1, v39
	v_div_scale_f32 v1, vcc, v106, v132, v106
	v_mul_f32_e32 v36, v1, v39
	v_fma_f32 v37, -v38, v36, v1
	v_fmac_f32_e32 v36, v37, v39
	v_div_scale_f32 v37, s[10:11], v132, v132, v107
	v_fma_f32 v1, -v38, v36, v1
	v_rcp_f32_e32 v38, v37
	v_div_fmas_f32 v1, v1, v39, v36
	v_div_fixup_f32 v36, v1, v132, v106
	v_lshl_or_b32 v22, v177, 9, v22
	v_fma_f32 v1, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v1, v38
	v_div_scale_f32 v1, vcc, v107, v132, v107
	v_mul_f32_e32 v39, v1, v38
	v_fma_f32 v40, -v37, v39, v1
	v_fmac_f32_e32 v39, v40, v38
	v_div_scale_f32 v40, s[10:11], v132, v132, v108
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v1, -v37, v39, v1
	v_div_fmas_f32 v1, v1, v38, v39
	v_div_fixup_f32 v37, v1, v132, v107
	v_fma_f32 v1, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v1, v41
	v_div_scale_f32 v1, vcc, v108, v132, v108
	v_mul_f32_e32 v38, v1, v41
	v_fma_f32 v39, -v40, v38, v1
	v_fmac_f32_e32 v38, v39, v41
	v_div_scale_f32 v39, s[10:11], v132, v132, v109
	v_fma_f32 v1, -v40, v38, v1
	v_rcp_f32_e32 v40, v39
	v_div_fmas_f32 v1, v1, v41, v38
	v_div_fixup_f32 v38, v1, v132, v108
	v_cvt_scalef32_pk_fp8_f32 v6, v36, v37, 1.0
	v_fma_f32 v1, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v1, v40
	v_div_scale_f32 v1, vcc, v109, v132, v109
	v_mul_f32_e32 v41, v1, v40
	v_fma_f32 v42, -v39, v41, v1
	v_fmac_f32_e32 v41, v42, v40
	v_fma_f32 v1, -v39, v41, v1
	v_div_scale_f32 v39, s[10:11], v132, v132, v110
	v_rcp_f32_e32 v42, v39
	v_div_fmas_f32 v1, v1, v40, v41
	v_div_fixup_f32 v1, v1, v132, v109
	v_cvt_scalef32_pk_fp8_f32 v6, v38, v1, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v40, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v40, vcc, v110, v132, v110
	v_mul_f32_e32 v41, v40, v42
	v_fma_f32 v43, -v39, v41, v40
	v_fmac_f32_e32 v41, v43, v42
	v_fma_f32 v39, -v39, v41, v40
	v_div_scale_f32 v40, s[10:11], v132, v132, v111
	v_rcp_f32_e32 v43, v40
	v_div_fmas_f32 v39, v39, v42, v41
	v_lshlrev_b32_e32 v1, 4, v237
	v_div_fixup_f32 v39, v39, v132, v110
	v_fma_f32 v41, -v40, v43, 1.0
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, vcc, v111, v132, v111
	v_mul_f32_e32 v42, v41, v43
	v_fma_f32 v44, -v40, v42, v41
	v_fmac_f32_e32 v42, v44, v43
	v_fma_f32 v40, -v40, v42, v41
	v_div_scale_f32 v41, s[10:11], v132, v132, v112
	v_rcp_f32_e32 v44, v41
	v_div_fmas_f32 v40, v40, v43, v42
	v_div_fixup_f32 v40, v40, v132, v111
	v_bitop3_b32 v1, v1, v20, v176 bitop3:0x36
	v_fma_f32 v42, -v41, v44, 1.0
	v_fmac_f32_e32 v44, v42, v44
	v_div_scale_f32 v42, vcc, v112, v132, v112
	v_mul_f32_e32 v43, v42, v44
	v_fma_f32 v45, -v41, v43, v42
	v_fmac_f32_e32 v43, v45, v44
	v_fma_f32 v41, -v41, v43, v42
	v_div_scale_f32 v42, s[10:11], v132, v132, v113
	v_rcp_f32_e32 v45, v42
	v_div_fmas_f32 v41, v41, v44, v43
	v_div_fixup_f32 v41, v41, v132, v112
	v_cvt_scalef32_pk_fp8_f32 v9, v24, v25, 1.0
	v_fma_f32 v43, -v42, v45, 1.0
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v43, vcc, v113, v132, v113
	v_mul_f32_e32 v44, v43, v45
	v_fma_f32 v46, -v42, v44, v43
	v_fmac_f32_e32 v44, v46, v45
	v_fma_f32 v42, -v42, v44, v43
	v_div_scale_f32 v43, s[10:11], v132, v132, v114
	v_rcp_f32_e32 v46, v43
	v_div_fmas_f32 v42, v42, v45, v44
	v_div_fixup_f32 v42, v42, v132, v113
	v_cvt_scalef32_pk_fp8_f32 v10, v39, v40, 1.0
	v_fma_f32 v44, -v43, v46, 1.0
	v_fmac_f32_e32 v46, v44, v46
	v_div_scale_f32 v44, vcc, v114, v132, v114
	v_mul_f32_e32 v45, v44, v46
	v_fma_f32 v47, -v43, v45, v44
	v_fmac_f32_e32 v45, v47, v46
	v_fma_f32 v43, -v43, v45, v44
	v_div_scale_f32 v44, s[10:11], v132, v132, v115
	v_rcp_f32_e32 v47, v44
	v_div_fmas_f32 v43, v43, v46, v45
	v_div_fixup_f32 v43, v43, v132, v114
	v_or3_b32 v1, v22, v23, v1
	v_fma_f32 v45, -v44, v47, 1.0
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, vcc, v115, v132, v115
	v_mul_f32_e32 v46, v45, v47
	v_fma_f32 v48, -v44, v46, v45
	v_fmac_f32_e32 v46, v48, v47
	v_fma_f32 v44, -v44, v46, v45
	v_div_scale_f32 v45, s[10:11], v132, v132, v116
	v_rcp_f32_e32 v48, v45
	v_div_fmas_f32 v44, v44, v47, v46
	v_div_fixup_f32 v44, v44, v132, v115
	v_cvt_scalef32_pk_fp8_f32 v9, v26, v27, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v46, -v45, v48, 1.0
	v_fmac_f32_e32 v48, v46, v48
	v_div_scale_f32 v46, vcc, v116, v132, v116
	v_mul_f32_e32 v47, v46, v48
	v_fma_f32 v49, -v45, v47, v46
	v_fmac_f32_e32 v47, v49, v48
	v_fma_f32 v45, -v45, v47, v46
	v_div_scale_f32 v46, s[10:11], v132, v132, v117
	v_rcp_f32_e32 v49, v46
	v_div_fmas_f32 v45, v45, v48, v47
	v_div_fixup_f32 v45, v45, v132, v116
	v_cvt_scalef32_pk_fp8_f32 v13, v28, v29, 1.0
	v_fma_f32 v47, -v46, v49, 1.0
	v_fmac_f32_e32 v49, v47, v49
	v_div_scale_f32 v47, vcc, v117, v132, v117
	v_mul_f32_e32 v48, v47, v49
	v_fma_f32 v50, -v46, v48, v47
	v_fmac_f32_e32 v48, v50, v49
	v_fma_f32 v46, -v46, v48, v47
	v_div_scale_f32 v47, s[10:11], v132, v132, v118
	v_rcp_f32_e32 v50, v47
	v_div_fmas_f32 v46, v46, v49, v48
	v_div_fixup_f32 v46, v46, v132, v117
	v_cvt_scalef32_pk_fp8_f32 v17, v32, v33, 1.0
	v_fma_f32 v48, -v47, v50, 1.0
	v_fmac_f32_e32 v50, v48, v50
	v_div_scale_f32 v48, vcc, v118, v132, v118
	v_mul_f32_e32 v49, v48, v50
	v_fma_f32 v51, -v47, v49, v48
	v_fmac_f32_e32 v49, v51, v50
	v_fma_f32 v47, -v47, v49, v48
	v_div_scale_f32 v48, s[10:11], v132, v132, v119
	v_rcp_f32_e32 v51, v48
	v_div_fmas_f32 v47, v47, v50, v49
	v_div_fixup_f32 v47, v47, v132, v118
	v_cvt_scalef32_pk_fp8_f32 v10, v41, v42, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v49, -v48, v51, 1.0
	v_fmac_f32_e32 v51, v49, v51
	v_div_scale_f32 v49, vcc, v119, v132, v119
	v_mul_f32_e32 v50, v49, v51
	v_fma_f32 v52, -v48, v50, v49
	v_fmac_f32_e32 v50, v52, v51
	v_fma_f32 v48, -v48, v50, v49
	v_div_scale_f32 v49, s[10:11], v132, v132, v120
	v_rcp_f32_e32 v52, v49
	v_div_fmas_f32 v48, v48, v51, v50
	v_div_fixup_f32 v48, v48, v132, v119
	v_cvt_scalef32_pk_fp8_f32 v14, v43, v44, 1.0
	v_fma_f32 v50, -v49, v52, 1.0
	v_fmac_f32_e32 v52, v50, v52
	v_div_scale_f32 v50, vcc, v120, v132, v120
	v_mul_f32_e32 v51, v50, v52
	v_fma_f32 v53, -v49, v51, v50
	v_fmac_f32_e32 v51, v53, v52
	v_fma_f32 v49, -v49, v51, v50
	v_div_scale_f32 v50, s[10:11], v132, v132, v121
	v_rcp_f32_e32 v53, v50
	v_div_fmas_f32 v49, v49, v52, v51
	v_div_fixup_f32 v49, v49, v132, v120
	v_cvt_scalef32_pk_fp8_f32 v18, v47, v48, 1.0
	v_fma_f32 v51, -v50, v53, 1.0
	v_fmac_f32_e32 v53, v51, v53
	v_div_scale_f32 v51, vcc, v121, v132, v121
	v_mul_f32_e32 v52, v51, v53
	v_fma_f32 v54, -v50, v52, v51
	v_fmac_f32_e32 v52, v54, v53
	v_fma_f32 v50, -v50, v52, v51
	v_div_scale_f32 v51, s[10:11], v132, v132, v122
	v_rcp_f32_e32 v54, v51
	v_div_fmas_f32 v50, v50, v53, v52
	v_div_fixup_f32 v50, v50, v132, v121
	v_add_u32_e32 v20, 0, v1
	v_fma_f32 v52, -v51, v54, 1.0
	v_fmac_f32_e32 v54, v52, v54
	v_div_scale_f32 v52, vcc, v122, v132, v122
	v_mul_f32_e32 v53, v52, v54
	v_fma_f32 v55, -v51, v53, v52
	v_fmac_f32_e32 v53, v55, v54
	v_fma_f32 v51, -v51, v53, v52
	v_div_scale_f32 v52, s[10:11], v132, v132, v123
	v_rcp_f32_e32 v55, v52
	v_div_fmas_f32 v51, v51, v54, v53
	v_div_fixup_f32 v51, v51, v132, v122
	v_xad_u32 v1, v1, 64, 0
	v_fma_f32 v53, -v52, v55, 1.0
	v_fmac_f32_e32 v55, v53, v55
	v_div_scale_f32 v53, vcc, v123, v132, v123
	v_mul_f32_e32 v54, v53, v55
	v_fma_f32 v56, -v52, v54, v53
	v_fmac_f32_e32 v54, v56, v55
	v_fma_f32 v52, -v52, v54, v53
	v_div_scale_f32 v53, s[10:11], v132, v132, v124
	v_rcp_f32_e32 v56, v53
	v_div_fmas_f32 v52, v52, v55, v54
	v_div_fixup_f32 v52, v52, v132, v123
	v_cvt_scalef32_pk_fp8_f32 v7, v51, v52, 1.0
	v_fma_f32 v54, -v53, v56, 1.0
	v_fmac_f32_e32 v56, v54, v56
	v_div_scale_f32 v54, vcc, v124, v132, v124
	v_mul_f32_e32 v55, v54, v56
	v_fma_f32 v57, -v53, v55, v54
	v_fmac_f32_e32 v55, v57, v56
	v_fma_f32 v53, -v53, v55, v54
	v_div_scale_f32 v54, s[10:11], v132, v132, v125
	v_rcp_f32_e32 v57, v54
	v_div_fmas_f32 v53, v53, v56, v55
	v_div_fixup_f32 v53, v53, v132, v124
	v_lshlrev_b32_e32 v0, 5, v0
	v_fma_f32 v55, -v54, v57, 1.0
	v_fmac_f32_e32 v57, v55, v57
	v_div_scale_f32 v55, vcc, v125, v132, v125
	v_mul_f32_e32 v56, v55, v57
	v_fma_f32 v58, -v54, v56, v55
	v_fmac_f32_e32 v56, v58, v57
	v_fma_f32 v54, -v54, v56, v55
	v_div_scale_f32 v55, s[10:11], v132, v132, v126
	v_rcp_f32_e32 v58, v55
	v_div_fmas_f32 v54, v54, v57, v56
	v_div_fixup_f32 v54, v54, v132, v125
	v_cvt_scalef32_pk_fp8_f32 v7, v53, v54, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v56, -v55, v58, 1.0
	v_fmac_f32_e32 v58, v56, v58
	v_div_scale_f32 v56, vcc, v126, v132, v126
	v_mul_f32_e32 v57, v56, v58
	v_fma_f32 v59, -v55, v57, v56
	v_fmac_f32_e32 v57, v59, v58
	v_fma_f32 v55, -v55, v57, v56
	v_div_scale_f32 v56, s[10:11], v132, v132, v127
	v_rcp_f32_e32 v59, v56
	v_div_fmas_f32 v55, v55, v58, v57
	v_div_fixup_f32 v55, v55, v132, v126
	v_cvt_scalef32_pk_fp8_f32 v13, v30, v31, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v57, -v56, v59, 1.0
	v_fmac_f32_e32 v59, v57, v59
	v_div_scale_f32 v57, vcc, v127, v132, v127
	v_mul_f32_e32 v58, v57, v59
	v_fma_f32 v60, -v56, v58, v57
	v_fmac_f32_e32 v58, v60, v59
	v_fma_f32 v56, -v56, v58, v57
	v_div_scale_f32 v57, s[10:11], v132, v132, v128
	v_rcp_f32_e32 v60, v57
	v_div_fmas_f32 v56, v56, v59, v58
	v_div_fixup_f32 v56, v56, v132, v127
	v_cvt_scalef32_pk_fp8_f32 v11, v55, v56, 1.0
	v_fma_f32 v58, -v57, v60, 1.0
	v_fmac_f32_e32 v60, v58, v60
	v_div_scale_f32 v58, vcc, v128, v132, v128
	v_mul_f32_e32 v59, v58, v60
	v_fma_f32 v61, -v57, v59, v58
	v_fmac_f32_e32 v59, v61, v60
	v_fma_f32 v57, -v57, v59, v58
	v_div_scale_f32 v58, s[10:11], v132, v132, v129
	v_rcp_f32_e32 v61, v58
	v_div_fmas_f32 v57, v57, v60, v59
	v_div_fixup_f32 v57, v57, v132, v128
	v_cvt_scalef32_pk_fp8_f32 v17, v34, v35, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v59, -v58, v61, 1.0
	v_fmac_f32_e32 v61, v59, v61
	v_div_scale_f32 v59, vcc, v129, v132, v129
	v_mul_f32_e32 v60, v59, v61
	v_fma_f32 v62, -v58, v60, v59
	v_fmac_f32_e32 v60, v62, v61
	v_fma_f32 v58, -v58, v60, v59
	v_div_scale_f32 v59, s[10:11], v132, v132, v73
	v_rcp_f32_e32 v62, v59
	v_div_fmas_f32 v58, v58, v61, v60
	v_div_fixup_f32 v58, v58, v132, v129
	v_cvt_scalef32_pk_fp8_f32 v11, v57, v58, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v60, -v59, v62, 1.0
	v_fmac_f32_e32 v62, v60, v62
	v_div_scale_f32 v60, vcc, v73, v132, v73
	v_mul_f32_e32 v61, v60, v62
	v_fma_f32 v63, -v59, v61, v60
	v_fmac_f32_e32 v61, v63, v62
	v_fma_f32 v59, -v59, v61, v60
	v_div_scale_f32 v60, s[10:11], v132, v132, v72
	v_rcp_f32_e32 v63, v60
	v_div_fmas_f32 v59, v59, v62, v61
	v_div_fixup_f32 v59, v59, v132, v73
	v_cvt_scalef32_pk_fp8_f32 v14, v45, v46, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v61, -v60, v63, 1.0
	v_fmac_f32_e32 v63, v61, v63
	v_div_scale_f32 v61, vcc, v72, v132, v72
	v_mul_f32_e32 v62, v61, v63
	v_fma_f32 v64, -v60, v62, v61
	v_fmac_f32_e32 v62, v64, v63
	v_fma_f32 v60, -v60, v62, v61
	v_div_scale_f32 v61, s[10:11], v132, v132, v71
	v_rcp_f32_e32 v64, v61
	v_div_fmas_f32 v60, v60, v63, v62
	v_div_fixup_f32 v60, v60, v132, v72
	v_cvt_scalef32_pk_fp8_f32 v15, v59, v60, 1.0
	v_fma_f32 v62, -v61, v64, 1.0
	v_fmac_f32_e32 v64, v62, v64
	v_div_scale_f32 v62, vcc, v71, v132, v71
	v_mul_f32_e32 v63, v62, v64
	v_fma_f32 v65, -v61, v63, v62
	v_fmac_f32_e32 v63, v65, v64
	v_fma_f32 v61, -v61, v63, v62
	v_div_scale_f32 v62, s[10:11], v132, v132, v70
	v_rcp_f32_e32 v65, v62
	v_div_fmas_f32 v61, v61, v64, v63
	v_div_fixup_f32 v61, v61, v132, v71
	v_cvt_scalef32_pk_fp8_f32 v18, v49, v50, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v63, -v62, v65, 1.0
	v_fmac_f32_e32 v65, v63, v65
	v_div_scale_f32 v63, vcc, v70, v132, v70
	v_mul_f32_e32 v64, v63, v65
	v_fma_f32 v66, -v62, v64, v63
	v_fmac_f32_e32 v64, v66, v65
	v_fma_f32 v62, -v62, v64, v63
	v_div_scale_f32 v63, s[10:11], v132, v132, v69
	v_rcp_f32_e32 v66, v63
	v_div_fmas_f32 v62, v62, v65, v64
	v_div_fixup_f32 v62, v62, v132, v70
	v_cvt_scalef32_pk_fp8_f32 v15, v61, v62, 1.0 op_sel:[0,0,0,1]
	v_fma_f32 v64, -v63, v66, 1.0
	v_fmac_f32_e32 v66, v64, v66
	v_div_scale_f32 v64, vcc, v69, v132, v69
	v_mul_f32_e32 v65, v64, v66
	v_fma_f32 v67, -v63, v65, v64
	v_fmac_f32_e32 v65, v67, v66
	v_fma_f32 v63, -v63, v65, v64
	v_div_scale_f32 v64, s[10:11], v132, v132, v68
	v_rcp_f32_e32 v67, v64
	v_div_fmas_f32 v63, v63, v66, v65
	v_div_fixup_f32 v63, v63, v132, v69
	ds_write_b128 v20, v[4:7]
	ds_write_b128 v20, v[12:15] offset:128
	v_fma_f32 v65, -v64, v67, 1.0
	v_fmac_f32_e32 v67, v65, v67
	v_div_scale_f32 v65, vcc, v68, v132, v68
	v_mul_f32_e32 v66, v65, v67
	v_fma_f32 v69, -v64, v66, v65
	v_fmac_f32_e32 v66, v69, v67
	v_fma_f32 v64, -v64, v66, v65
	v_div_scale_f32 v65, s[10:11], v132, v132, v131
	v_rcp_f32_e32 v69, v65
	v_div_fmas_f32 v64, v64, v67, v66
	v_div_fixup_f32 v64, v64, v132, v68
	v_cvt_scalef32_pk_fp8_f32 v19, v63, v64, 1.0
	v_fma_f32 v66, -v65, v69, 1.0
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, vcc, v131, v132, v131
	v_mul_f32_e32 v67, v66, v69
	v_fma_f32 v68, -v65, v67, v66
	v_fmac_f32_e32 v67, v68, v69
	v_fma_f32 v65, -v65, v67, v66
	v_div_scale_f32 v66, s[10:11], v132, v132, v130
	v_rcp_f32_e32 v68, v66
	v_div_fmas_f32 v65, v65, v69, v67
	v_div_fixup_f32 v65, v65, v132, v131
	v_and_b32_e32 v0, 0x1c00, v0
	v_fma_f32 v67, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v67, v68
	v_div_scale_f32 v67, vcc, v130, v132, v130
	v_mul_f32_e32 v69, v67, v68
	v_fma_f32 v70, -v66, v69, v67
	v_fmac_f32_e32 v69, v70, v68
	v_fma_f32 v66, -v66, v69, v67
	v_div_fmas_f32 v66, v66, v68, v69
	v_div_fixup_f32 v66, v66, v132, v130
	v_cvt_scalef32_pk_fp8_f32 v19, v65, v66, 1.0 op_sel:[0,0,0,1]
	ds_write_b128 v1, v[8:11]
	ds_write_b128 v1, v[16:19] offset:128
	v_lshrrev_b32_e32 v1, 1, v163
	v_lshlrev_b32_e32 v4, 9, v149
	v_bitop3_b32 v0, v0, v1, v176 bitop3:0x36
	v_lshl_add_u32 v1, v21, 14, 0
	v_add3_u32 v1, v1, v4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[4:7], v1
	ds_read_b128 v[8:11], v1 offset:256
	v_mov_b32_e32 v3, s13
	s_ashr_i32 s13, s12, 31
	v_mov_b32_e32 v0, 8
	v_cmp_gt_i64_e32 vcc, s[12:13], v[146:147]
	v_cmp_gt_i64_e64 s[10:11], s[12:13], v[2:3]
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_sdwa v0, v0, v8 dst_sel:BYTE_1 dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD
	s_movk_i32 s12, 0xff
	v_bitop3_b16 v0, v8, v0, s12 bitop3:0xec
	v_lshlrev_b32_e32 v0, 16, v0
	s_mov_b32 s12, 0x3020706
	s_mov_b32 s13, 0x1000504
	v_and_or_b32 v0, v4, s4, v0
	v_perm_b32 v12, v4, v8, s12
	v_perm_b32 v14, v5, v9, s13
	v_perm_b32 v16, v5, v9, s12
	v_perm_b32 v18, v6, v10, s13
	v_perm_b32 v20, v6, v10, s12
	v_perm_b32 v22, v7, v11, s13
	v_perm_b32 v24, v7, v11, s12
	ds_read_b128 v[4:7], v1 offset:512
	ds_read_b128 v[8:11], v1 offset:768
	v_mul_lo_u32 v1, v233, s5
	v_mul_lo_u32 v3, v234, s5
	v_mul_lo_u32 v13, s5, v229
	v_add_u32_e32 v1, v3, v1
	v_mul_lo_u32 v15, s5, v230
	v_mul_lo_u32 v17, s5, v231
	v_mul_lo_u32 v19, s5, v232
	v_add_u32_e32 v3, v1, v13
	v_add_u32_e32 v13, v1, v15
	v_add_u32_e32 v15, v1, v17
	v_add_u32_e32 v1, v1, v19
	v_add_u32_e32 v17, v146, v3
	s_and_b64 s[4:5], s[6:7], vcc
	v_add_u32_e32 v3, v2, v3
	v_add_u32_e32 v19, v146, v13
	v_add_u32_e32 v21, v2, v13
	v_add_u32_e32 v25, v2, v15
	v_add_u32_e32 v26, v146, v1
	v_add_u32_e32 v2, v2, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v4, v8, s13
	v_cndmask_b32_e64 v13, v148, v17, s[4:5]
	s_and_b64 s[4:5], s[6:7], s[10:11]
	buffer_store_dwordx2 v[0:1], v13, s[20:23], 0 offen
	v_perm_b32 v13, v4, v8, s12
	v_cndmask_b32_e64 v0, v148, v3, s[4:5]
	s_and_b64 s[4:5], s[8:9], vcc
	v_add_u32_e32 v23, v146, v15
	buffer_store_dwordx2 v[12:13], v0, s[20:23], 0 offen
	v_perm_b32 v15, v5, v9, s13
	v_cndmask_b32_e64 v0, v148, v19, s[4:5]
	s_and_b64 s[4:5], s[8:9], s[10:11]
	buffer_store_dwordx2 v[14:15], v0, s[20:23], 0 offen
	v_perm_b32 v17, v5, v9, s12
	v_cndmask_b32_e64 v0, v148, v21, s[4:5]
	s_and_b64 s[4:5], s[2:3], vcc
	buffer_store_dwordx2 v[16:17], v0, s[20:23], 0 offen
	v_perm_b32 v19, v6, v10, s13
	v_cndmask_b32_e64 v0, v148, v23, s[4:5]
	s_and_b64 s[2:3], s[2:3], s[10:11]
	buffer_store_dwordx2 v[18:19], v0, s[20:23], 0 offen
	v_perm_b32 v21, v6, v10, s12
	v_cndmask_b32_e64 v0, v148, v25, s[2:3]
	s_and_b64 vcc, s[0:1], vcc
	buffer_store_dwordx2 v[20:21], v0, s[20:23], 0 offen
	v_perm_b32 v23, v7, v11, s13
	v_cndmask_b32_e32 v0, v148, v26, vcc
	s_and_b64 vcc, s[0:1], s[10:11]
	buffer_store_dwordx2 v[22:23], v0, s[20:23], 0 offen
	v_perm_b32 v25, v7, v11, s12
	v_cndmask_b32_e32 v0, v148, v2, vcc
	buffer_store_dwordx2 v[24:25], v0, s[20:23], 0 offen
.LBB0_61:                               ; %common.ret
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _moe_gemm_a8w4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 36
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
                                        ; -- End function
	.set _moe_gemm_a8w4.num_vgpr, 256
	.set _moe_gemm_a8w4.num_agpr, 0
	.set _moe_gemm_a8w4.numbered_sgpr, 42
	.set _moe_gemm_a8w4.num_named_barrier, 0
	.set _moe_gemm_a8w4.private_seg_size, 36
	.set _moe_gemm_a8w4.uses_vcc, 1
	.set _moe_gemm_a8w4.uses_flat_scratch, 0
	.set _moe_gemm_a8w4.has_dyn_sized_stack, 0
	.set _moe_gemm_a8w4.has_recursion, 0
	.set _moe_gemm_a8w4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28452
; TotalNumSgprs: 48
; NumVgprs: 256
; NumAgprs: 0
; TotalNumVgprs: 256
; ScratchSize: 36
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
    .private_segment_fixed_size: 36
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         _moe_gemm_a8w4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 8
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx950
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata

batch:  4096 | Total latency (us): 1489.01 | Kernel latency (us): 1332.29 | TFLOPS: 1444. | TBPS: 2.89
