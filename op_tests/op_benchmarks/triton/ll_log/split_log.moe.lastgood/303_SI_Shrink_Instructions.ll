# *** IR Dump After SI Shrink Instructions (si-shrink-instructions) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, NoVRegs, TiedOpsRewritten, TracksDebugUserValues
Frame Objects:
  fi#0: size=4, align=4, at location [SP]
  fi#1: size=4, align=4, at location [SP+4]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=8, align=4, at location [SP+12]
  fi#4: size=4, align=4, at location [SP+20]
  fi#5: size=8, align=4, at location [SP+24]
  fi#6: size=4, align=4, at location [SP+32]
save/restore points:
save points are empty
restore points are empty
Function Live Ins: $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr5, $sgpr6_sgpr7, $sgpr8, $sgpr12_sgpr13, $sgpr14, $sgpr15, $sgpr16

bb.0 (%ir-block.30):
  successors: %bb.1(0x40000000), %bb.52(0x40000000); %bb.1(50.00%), %bb.52(50.00%)
  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
  $sgpr24_sgpr25 = S_MOV_B64 $sgpr6_sgpr7
  $sgpr20_sgpr21 = S_MOV_B64 $sgpr2_sgpr3
  early-clobber renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $vgpr1 = V_MOV_B32_e32 0, implicit $exec
  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode
  renamable $vgpr2 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr6_sgpr7, renamable $vgpr1, 0, 0, implicit $exec :: (load (s32) from %ir.22, addrspace 1)
  renamable $sgpr4 = V_READFIRSTLANE_B32 $vgpr2, implicit $exec
  renamable $vgpr2 = V_SUB_U32_e32 $sgpr2, killed $vgpr2, implicit $exec
  renamable $sgpr2 = S_MUL_I32 renamable $sgpr4, renamable $sgpr3
  V_CMP_GT_I32_e32 1, killed $vgpr2, implicit-def $vcc, implicit $exec
  S_CMP_LT_I32 renamable $sgpr16, renamable $sgpr2, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $sgpr6_sgpr7 = S_OR_B64 killed renamable $vcc, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vcc = S_AND_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  S_CBRANCH_VCCZ %bb.52, implicit $vcc

bb.1 (%ir-block.39):
; predecessors: %bb.0
  successors: %bb.2(0x50000000), %bb.52(0x30000000); %bb.2(62.50%), %bb.52(37.50%)
  liveins: $sgpr2, $sgpr4, $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $vgpr1, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000C, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr2, 31, implicit-def dead $scc
  renamable $sgpr6 = S_LSHR_B32 killed renamable $sgpr6, 29, implicit-def dead $scc
  renamable $sgpr6 = S_ADD_I32 renamable $sgpr2, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr6, 3, implicit-def dead $scc
  renamable $sgpr6 = S_AND_B32 killed renamable $sgpr6, -8, implicit-def dead $scc
  renamable $sgpr6 = S_SUB_I32 renamable $sgpr2, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr16, 31, implicit-def dead $scc
  renamable $sgpr9 = S_LSHR_B32 killed renamable $sgpr9, 29, implicit-def dead $scc
  renamable $sgpr9 = S_ADD_I32 renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr10 = S_ASHR_I32 renamable $sgpr9, 3, implicit-def dead $scc
  renamable $sgpr2 = S_ABS_I32 killed renamable $sgpr2, implicit-def dead $scc
  renamable $vgpr2 = V_CVT_F32_U32_e32 $sgpr2, implicit $mode, implicit $exec
  renamable $sgpr9 = S_AND_B32 killed renamable $sgpr9, -8, implicit-def dead $scc
  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = nsw S_MUL_I32 killed renamable $sgpr7, renamable $sgpr9
  renamable $vgpr2 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr2, implicit $mode, implicit $exec
  renamable $sgpr6 = S_MIN_I32 killed renamable $sgpr9, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr6 = nsw S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr10, implicit-def dead $scc
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def dead $scc
  renamable $vgpr2 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr2, implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr6, 31, implicit-def dead $scc
  renamable $sgpr6 = S_ABS_I32 killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_SUB_I32 0, renamable $sgpr2, implicit-def dead $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr2, implicit $exec
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr10
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr9
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr6, killed renamable $sgpr10
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr2
  renamable $sgpr6 = S_SUB_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr9 = S_SUB_I32 renamable $sgpr6, renamable $sgpr2, implicit-def dead $scc
  S_CMP_GE_U32 renamable $sgpr6, renamable $sgpr2, implicit-def $scc
  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit $scc
  renamable $sgpr9 = S_SUB_I32 renamable $sgpr6, renamable $sgpr2, implicit-def dead $scc
  S_CMP_GE_U32 renamable $sgpr6, killed renamable $sgpr2, implicit-def $scc
  renamable $sgpr2 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit $scc
  renamable $sgpr10 = S_LSHL_B32 killed renamable $sgpr3, 2, implicit-def dead $scc
  renamable $sgpr3 = S_ABS_I32 renamable $sgpr10, implicit-def dead $scc
  renamable $vgpr2 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr2, implicit $mode, implicit $exec
  renamable $sgpr2 = S_XOR_B32 killed renamable $sgpr2, renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_SUB_I32 killed renamable $sgpr2, killed renamable $sgpr7, implicit-def dead $scc
  renamable $vgpr2 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr2, implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec
  renamable $sgpr2 = S_XOR_B32 renamable $sgpr7, renamable $sgpr10, implicit-def dead $scc
  renamable $sgpr2 = S_ASHR_I32 killed renamable $sgpr2, 31, implicit-def dead $scc
  renamable $sgpr6 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr2, implicit $exec
  renamable $sgpr6 = S_MUL_I32 killed renamable $sgpr6, renamable $sgpr9
  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr6
  renamable $sgpr9 = S_ADD_I32 killed renamable $sgpr9, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr6 = S_ABS_I32 renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr6, killed renamable $sgpr9
  renamable $sgpr11 = S_MUL_I32 renamable $sgpr9, renamable $sgpr3
  renamable $sgpr11 = S_SUB_I32 renamable $sgpr6, killed renamable $sgpr11, implicit-def dead $scc
  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc
  renamable $sgpr17 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc
  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc
  renamable $sgpr9 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc
  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr17, killed renamable $sgpr11, implicit $scc
  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc
  S_CMP_GE_U32 killed renamable $sgpr11, killed renamable $sgpr3, implicit-def $scc
  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc
  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr2, implicit-def dead $scc
  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr2, implicit-def dead $scc
  renamable $sgpr16 = S_LSHL_B32 renamable $sgpr11, 2, implicit-def dead $scc
  renamable $sgpr2 = S_SUB_I32 killed renamable $sgpr4, renamable $sgpr16, implicit-def dead $scc
  renamable $sgpr22 = S_MIN_I32 killed renamable $sgpr2, 4, implicit-def dead $scc
  renamable $sgpr4 = S_ABS_I32 renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr2 = V_CVT_F32_U32_e32 $sgpr4, implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr2, implicit $mode, implicit $exec
  renamable $vgpr2 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr2, implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec
  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 144, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr17 = S_ASHR_I32 renamable $sgpr7, 31, implicit-def dead $scc
  renamable $sgpr9 = S_SUB_I32 0, renamable $sgpr4, implicit-def dead $scc
  renamable $sgpr18 = V_READFIRSTLANE_B32 killed $vgpr2, implicit $exec
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr18
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr18, killed renamable $sgpr9
  renamable $sgpr9 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr18 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr9
  renamable $sgpr18 = S_MUL_I32 killed renamable $sgpr18, renamable $sgpr4
  renamable $sgpr6 = S_SUB_I32 killed renamable $sgpr6, killed renamable $sgpr18, implicit-def dead $scc
  renamable $sgpr18 = S_SUB_I32 renamable $sgpr6, renamable $sgpr4, implicit-def dead $scc
  S_CMP_GE_U32 renamable $sgpr6, renamable $sgpr4, implicit-def $scc
  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr18, killed renamable $sgpr6, implicit $scc
  renamable $sgpr18 = S_SUB_I32 renamable $sgpr6, renamable $sgpr4, implicit-def dead $scc
  S_CMP_GE_U32 renamable $sgpr6, renamable $sgpr4, implicit-def $scc
  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr18, killed renamable $sgpr6, implicit $scc
  renamable $sgpr6 = S_XOR_B32 killed renamable $sgpr6, renamable $sgpr17, implicit-def dead $scc
  renamable $sgpr6 = S_SUB_I32 killed renamable $sgpr6, killed renamable $sgpr17, implicit-def dead $scc
  renamable $sgpr16 = S_ADD_I32 killed renamable $sgpr16, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr17 = S_ASHR_I32 renamable $sgpr16, 31, implicit-def dead $scc
  renamable $sgpr16_sgpr17 = S_LSHL_B64 killed renamable $sgpr16_sgpr17, 2, implicit-def dead $scc
  renamable $sgpr2 = S_ADD_U32 renamable $sgpr2, renamable $sgpr16, implicit-def $scc
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, killed renamable $sgpr17, implicit-def dead $scc, implicit $scc
  renamable $vgpr1 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr2_sgpr3, killed renamable $vgpr1, 0, 0, implicit $exec :: (load (s32) from %ir.162, addrspace 1)
  V_CMP_EQ_U32_e32 -1, $vgpr1, implicit-def $vcc, implicit $exec
  $vcc = S_AND_B64 $exec, killed renamable $vcc, implicit-def dead $scc
  renamable $sgpr6 = S_MOV_B32 0
  S_CBRANCH_VCCNZ %bb.52, implicit $vcc

bb.2 (%ir-block.166):
; predecessors: %bb.1
  successors: %bb.53(0x40000000), %bb.3(0x40000000); %bb.53(50.00%), %bb.3(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr7, $sgpr8, $sgpr9, $sgpr10, $sgpr11, $sgpr14, $sgpr15, $sgpr22, $vgpr0, $vgpr1, $sgpr0_sgpr1, $sgpr6_sgpr7:0x0000000000000003, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
  early-clobber renamable $sgpr16_sgpr17_sgpr18_sgpr19 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
  renamable $vgpr175 = V_AND_B32_e32 65535, $vgpr1, implicit $exec
  renamable $vgpr4 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr175, implicit $exec
  renamable $vgpr174 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr18_sgpr19, renamable $vgpr4, 0, 0, implicit $exec :: (load (s32) from %ir.192, addrspace 1)
  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr18 = S_ASHR_I32 killed renamable $sgpr22, 31, implicit-def dead $scc
  renamable $sgpr11 = S_MUL_I32 killed renamable $sgpr11, killed renamable $sgpr10
  renamable $vgpr2 = V_ASHRREV_I32_e32 16, killed $vgpr1, implicit $exec
  renamable $vgpr229 = V_LSHRREV_B32_e32 4, $vgpr0, implicit $exec
  renamable $sgpr27 = S_MOV_B32 159744
  renamable $sgpr26 = S_MOV_B32 2147483646
  renamable $sgpr7 = S_SUB_I32 killed renamable $sgpr7, killed renamable $sgpr11, implicit-def dead $scc
  renamable $vgpr3 = V_ASHRREV_I32_e32 31, $vgpr2, implicit $exec
  renamable $vgpr230 = disjoint V_OR_B32_e32 32, $vgpr229, implicit $exec
  renamable $vgpr231 = disjoint V_OR_B32_e32 64, $vgpr229, implicit $exec
  renamable $vgpr232 = disjoint V_OR_B32_e32 96, $vgpr229, implicit $exec
  renamable $sgpr10 = S_ASHR_I32 renamable $sgpr7, 31, implicit-def dead $scc
  renamable $sgpr7 = S_ABS_I32 killed renamable $sgpr7, implicit-def dead $scc
  renamable $vgpr234_vgpr235 = nsw V_LSHLREV_B64_e64 7, killed $vgpr2_vgpr3, implicit $exec
  renamable $sgpr10 = S_XOR_B32 killed renamable $sgpr10, killed renamable $sgpr18, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr7, killed renamable $sgpr9
  renamable $vgpr172 = V_OR_B32_e32 $vgpr234, $vgpr229, implicit $exec
  renamable $vgpr170 = V_OR_B32_e32 $vgpr234, $vgpr230, implicit $exec
  renamable $vgpr168 = V_OR_B32_e32 $vgpr234, $vgpr231, implicit $exec
  renamable $vgpr190 = V_OR_B32_e32 $vgpr234, $vgpr232, implicit $exec
  renamable $vgpr233 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr2_sgpr3, killed renamable $vgpr4, 0, 0, implicit $exec :: (load (s32) from %ir.195, addrspace 1)
  renamable $sgpr2 = S_MUL_I32 renamable $sgpr9, renamable $sgpr4
  renamable $sgpr3 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc
  renamable $vgpr2 = V_ASHRREV_I32_e32 31, $vgpr172, implicit $exec
  renamable $vgpr3 = V_SUB_U32_e32 0, $vgpr172, implicit $exec
  renamable $vgpr4 = V_ASHRREV_I32_e32 31, $vgpr170, implicit $exec
  renamable $vgpr5 = V_SUB_U32_e32 0, $vgpr170, implicit $exec
  renamable $vgpr6 = V_ASHRREV_I32_e32 31, $vgpr168, implicit $exec
  renamable $vgpr7 = V_SUB_U32_e32 0, $vgpr168, implicit $exec
  renamable $vgpr8 = V_ASHRREV_I32_e32 31, $vgpr190, implicit $exec
  renamable $vgpr9 = V_SUB_U32_e32 0, $vgpr190, implicit $exec
  renamable $sgpr2 = S_SUB_I32 killed renamable $sgpr7, killed renamable $sgpr2, implicit-def dead $scc
  renamable $vgpr3 = V_MAX_I32_e32 $vgpr172, killed $vgpr3, implicit $exec
  renamable $vgpr5 = V_MAX_I32_e32 $vgpr170, killed $vgpr5, implicit $exec
  renamable $vgpr7 = V_MAX_I32_e32 $vgpr168, killed $vgpr7, implicit $exec
  renamable $vgpr9 = V_MAX_I32_e32 $vgpr190, killed $vgpr9, implicit $exec
  $sgpr18 = S_MOV_B32 $sgpr26
  $sgpr19 = S_MOV_B32 $sgpr27
  renamable $vgpr10 = V_SUB_U32_e32 0, $vgpr174, implicit $exec
  renamable $vgpr10 = V_MAX_I32_e32 $vgpr174, killed $vgpr10, implicit $exec
  renamable $vgpr11 = V_CVT_F32_U32_e32 $vgpr10, implicit $mode, implicit $exec
  renamable $sgpr7 = S_SUB_I32 renamable $sgpr2, renamable $sgpr4, implicit-def dead $scc
  S_CMP_GE_U32 renamable $sgpr2, renamable $sgpr4, implicit-def $scc
  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr3, killed renamable $sgpr9, implicit $scc
  renamable $vgpr11 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr11, implicit $mode, implicit $exec
  renamable $sgpr2 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr2, implicit $scc
  renamable $sgpr7 = S_ADD_I32 renamable $sgpr3, 1, implicit-def dead $scc
  S_CMP_GE_U32 killed renamable $sgpr2, killed renamable $sgpr4, implicit-def $scc
  renamable $vgpr11 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr11, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr11, implicit $mode, implicit $exec
  renamable $sgpr2 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr3, implicit $scc
  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc
  renamable $vgpr12 = V_SUB_U32_e32 0, $vgpr10, implicit $exec
  renamable $vgpr12 = V_MUL_LO_U32_e64 killed $vgpr12, $vgpr11, implicit $exec
  renamable $vgpr12 = V_MUL_HI_U32_e64 $vgpr11, killed $vgpr12, implicit $exec
  renamable $vgpr11 = V_ADD_U32_e32 killed $vgpr11, killed $vgpr12, implicit $exec
  renamable $vgpr12 = V_MUL_HI_U32_e64 $vgpr3, $vgpr11, implicit $exec
  renamable $vgpr13 = V_MUL_HI_U32_e64 $vgpr5, $vgpr11, implicit $exec
  renamable $vgpr14 = V_MUL_HI_U32_e64 $vgpr7, $vgpr11, implicit $exec
  renamable $vgpr11 = V_MUL_HI_U32_e64 $vgpr9, killed $vgpr11, implicit $exec
  renamable $vgpr12 = V_MUL_LO_U32_e64 killed $vgpr12, $vgpr10, implicit $exec
  renamable $vgpr13 = V_MUL_LO_U32_e64 killed $vgpr13, $vgpr10, implicit $exec
  renamable $vgpr14 = V_MUL_LO_U32_e64 killed $vgpr14, $vgpr10, implicit $exec
  renamable $vgpr11 = V_MUL_LO_U32_e64 killed $vgpr11, $vgpr10, implicit $exec
  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, killed $vgpr12, implicit $exec
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr5, killed $vgpr13, implicit $exec
  renamable $vgpr7 = V_SUB_U32_e32 killed $vgpr7, killed $vgpr14, implicit $exec
  renamable $vgpr9 = V_SUB_U32_e32 killed $vgpr9, killed $vgpr11, implicit $exec
  renamable $vgpr11 = V_SUB_U32_e32 $vgpr3, $vgpr10, implicit $exec
  renamable $vgpr12 = V_SUB_U32_e32 $vgpr5, $vgpr10, implicit $exec
  renamable $vgpr13 = V_SUB_U32_e32 $vgpr7, $vgpr10, implicit $exec
  renamable $vgpr14 = V_SUB_U32_e32 $vgpr9, $vgpr10, implicit $exec
  V_CMP_GE_U32_e32 $vgpr3, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr3 = V_CNDMASK_B32_e32 killed $vgpr3, killed $vgpr11, implicit killed $vcc, implicit $exec
  V_CMP_GE_U32_e32 $vgpr5, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr5 = V_CNDMASK_B32_e32 killed $vgpr5, killed $vgpr12, implicit killed $vcc, implicit $exec
  V_CMP_GE_U32_e32 $vgpr7, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr7 = V_CNDMASK_B32_e32 killed $vgpr7, killed $vgpr13, implicit killed $vcc, implicit $exec
  V_CMP_GE_U32_e32 $vgpr9, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr9 = V_CNDMASK_B32_e32 killed $vgpr9, killed $vgpr14, implicit killed $vcc, implicit $exec
  renamable $vgpr11 = V_SUB_U32_e32 $vgpr3, $vgpr10, implicit $exec
  renamable $vgpr12 = V_SUB_U32_e32 $vgpr5, $vgpr10, implicit $exec
  renamable $vgpr13 = V_SUB_U32_e32 $vgpr7, $vgpr10, implicit $exec
  renamable $vgpr14 = V_SUB_U32_e32 $vgpr9, $vgpr10, implicit $exec
  V_CMP_GE_U32_e32 $vgpr3, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr3 = V_CNDMASK_B32_e32 killed $vgpr3, killed $vgpr11, implicit killed $vcc, implicit $exec
  V_CMP_GE_U32_e32 $vgpr5, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr5 = V_CNDMASK_B32_e32 killed $vgpr5, killed $vgpr12, implicit killed $vcc, implicit $exec
  V_CMP_GE_U32_e32 $vgpr7, $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr7 = V_CNDMASK_B32_e32 killed $vgpr7, killed $vgpr13, implicit killed $vcc, implicit $exec
  V_CMP_GE_U32_e32 $vgpr9, killed $vgpr10, implicit-def $vcc, implicit $exec
  renamable $vgpr9 = V_CNDMASK_B32_e32 killed $vgpr9, killed $vgpr14, implicit killed $vcc, implicit $exec
  renamable $vgpr3 = V_XOR_B32_e32 killed $vgpr3, $vgpr2, implicit $exec
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr4, implicit $exec
  renamable $vgpr7 = V_XOR_B32_e32 killed $vgpr7, $vgpr6, implicit $exec
  renamable $vgpr9 = V_XOR_B32_e32 killed $vgpr9, $vgpr8, implicit $exec
  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr3, killed $vgpr2, implicit $exec
  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr5, killed $vgpr4, implicit $exec
  renamable $vgpr4 = V_SUB_U32_e32 killed $vgpr7, killed $vgpr6, implicit $exec
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr9, killed $vgpr8, implicit $exec
  renamable $vgpr2 = V_ADD_LSHL_U32_e64 $vgpr233, killed $vgpr2, 2, implicit $exec
  renamable $vgpr3 = V_ADD_LSHL_U32_e64 $vgpr233, killed $vgpr3, 2, implicit $exec
  renamable $vgpr4 = V_ADD_LSHL_U32_e64 $vgpr233, killed $vgpr4, 2, implicit $exec
  renamable $vgpr5 = V_ADD_LSHL_U32_e64 $vgpr233, killed $vgpr5, 2, implicit $exec
  renamable $vgpr6 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr2, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8)
  renamable $vgpr7 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr3, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8)
  renamable $vgpr8 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr4, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8)
  renamable $vgpr9 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr5, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8)
  KILL killed renamable $vgpr5
  KILL killed renamable $sgpr16_sgpr17_sgpr18, renamable $sgpr19
  KILL killed renamable $vgpr4
  KILL killed renamable $vgpr3
  KILL killed renamable $vgpr2
  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
  renamable $vgpr159 = V_AND_B32_e32 15, $vgpr0, implicit $exec
  renamable $vgpr2 = V_BFREV_B32_e32 1, implicit $exec
  renamable $vgpr192 = V_LSHLREV_B32_e32 4, $vgpr159, implicit $exec
  renamable $sgpr4 = S_ADD_I32 renamable $sgpr23, 255, implicit-def dead $scc
  renamable $sgpr2 = S_XOR_B32 killed renamable $sgpr2, renamable $sgpr10, implicit-def dead $scc
  renamable $sgpr34 = S_SUB_I32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def dead $scc
  renamable $sgpr35 = S_ASHR_I32 renamable $sgpr34, 31, implicit-def dead $scc
  S_CMPK_GT_I32 renamable $sgpr4, 255, implicit-def $scc
  renamable $vgpr3 = V_ASHRREV_I32_e32 31, $vgpr6, implicit $exec
  renamable $vgpr4 = V_ASHRREV_I32_e32 31, $vgpr7, implicit $exec
  renamable $vgpr5 = V_ASHRREV_I32_e32 31, $vgpr8, implicit $exec
  renamable $vgpr10 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec
  renamable $vgpr3 = V_LSHRREV_B32_e32 29, killed $vgpr3, implicit $exec
  renamable $vgpr4 = V_LSHRREV_B32_e32 29, killed $vgpr4, implicit $exec
  renamable $vgpr5 = V_LSHRREV_B32_e32 29, killed $vgpr5, implicit $exec
  renamable $vgpr10 = V_LSHRREV_B32_e32 29, killed $vgpr10, implicit $exec
  renamable $vgpr3 = V_ADD_U32_e32 killed $vgpr6, killed $vgpr3, implicit $exec
  renamable $vgpr4 = V_ADD_U32_e32 killed $vgpr7, killed $vgpr4, implicit $exec
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec
  renamable $vgpr6 = V_ADD_U32_e32 killed $vgpr9, killed $vgpr10, implicit $exec
  renamable $vgpr3 = V_ASHRREV_I32_e32 3, killed $vgpr3, implicit $exec
  renamable $vgpr4 = V_ASHRREV_I32_e32 3, killed $vgpr4, implicit $exec
  renamable $vgpr5 = V_ASHRREV_I32_e32 3, killed $vgpr5, implicit $exec
  renamable $vgpr6 = V_ASHRREV_I32_e32 3, killed $vgpr6, implicit $exec
  renamable $vgpr130_vgpr131, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr3, $sgpr8, $vgpr192_vgpr193, 0, implicit $exec
  renamable $vgpr132_vgpr133, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr4, $sgpr8, $vgpr192_vgpr193, 0, implicit $exec
  renamable $vgpr134_vgpr135, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr5, $sgpr8, $vgpr192_vgpr193, 0, implicit $exec
  renamable $vgpr136_vgpr137, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr6, killed $sgpr8, $vgpr192_vgpr193, 0, implicit $exec
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $sgpr25 = S_AND_B32 renamable $sgpr25, 65535, implicit-def dead $scc
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, $vgpr2, 0, $vgpr130, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, $vgpr2, 0, $vgpr132, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, $vgpr2, 0, $vgpr134, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, $vgpr136, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr18, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr19, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr20, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr21, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  KILL killed renamable $vgpr19
  KILL killed renamable $vgpr18
  KILL killed renamable $vgpr21
  KILL killed renamable $vgpr20
  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $vgpr21 = V_MOV_B32_e32 0, implicit $exec
  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc
  renamable $vgpr18 = V_LSHRREV_B32_e32 5, $vgpr0, implicit $exec
  renamable $vgpr18 = V_OR_B32_e32 $sgpr8, killed $vgpr18, implicit $exec
  $vgpr19 = V_MOV_B32_e32 $sgpr9, implicit $exec, implicit $exec
  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc
  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 killed $sgpr9
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr8_sgpr9 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.53, implicit $exec

bb.3.Flow349:
; predecessors: %bb.2, %bb.53
  successors: %bb.4(0x40000000), %bb.5(0x40000000); %bb.4(50.00%), %bb.5(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr159, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x0000000000000003, $vgpr22_vgpr23:0x0000000000000003, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr8_sgpr9 = S_OR_SAVEEXEC_B64 killed renamable $sgpr8_sgpr9, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $vgpr19 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr8_sgpr9, implicit-def $scc
  S_CBRANCH_EXECZ %bb.5, implicit $exec

bb.4 (%ir-block.366):
; predecessors: %bb.3
  successors: %bb.5(0x80000000); %bb.5(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr19, $vgpr159, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x0000000000000003, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr19 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr19, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr19, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr19, implicit $mode, implicit $exec
  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr20 = V_MUL_LO_U32_e64 killed $sgpr10, $vgpr19, implicit $exec
  renamable $vgpr20 = V_MUL_HI_U32_e64 $vgpr19, killed $vgpr20, implicit $exec
  renamable $vgpr19 = V_ADD_U32_e32 killed $vgpr19, killed $vgpr20, implicit $exec
  renamable $vgpr19 = V_MUL_HI_U32_e64 $vgpr18, killed $vgpr19, implicit $exec
  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $vgpr19, $sgpr22, implicit $exec
  renamable $vgpr18 = V_SUB_U32_e32 killed $vgpr18, killed $vgpr19, implicit $exec
  renamable $vgpr19 = V_SUBREV_U32_e32 $sgpr22, $vgpr18, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr19, implicit killed $vcc, implicit $exec
  renamable $vgpr19 = V_SUBREV_U32_e32 $sgpr22, $vgpr18, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr22 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr19, implicit killed $vcc, implicit $exec

bb.5 (%ir-block.373):
; predecessors: %bb.3, %bb.4
  successors: %bb.54(0x40000000), %bb.6(0x40000000); %bb.54(50.00%), %bb.6(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr159, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr22_vgpr23:0x0000000000000003, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
  renamable $vgpr166 = V_LSHLREV_B32_e32 3, $vgpr0, implicit $exec
  renamable $vgpr131 = V_AND_B32_e32 248, $vgpr166, implicit $exec
  renamable $vgpr133 = V_MUL_LO_U32_e64 $vgpr175, $sgpr6, implicit $exec
  renamable $vgpr135 = V_MUL_LO_U32_e64 killed $sgpr7, killed $vgpr22, implicit $exec
  renamable $vgpr18 = V_ADD3_U32_e64 $vgpr133, $vgpr131, $vgpr135, implicit $exec
  renamable $sgpr31 = S_MOV_B32 159744
  renamable $sgpr30 = S_MOV_B32 2147483646
  renamable $sgpr29 = S_AND_B32 renamable $sgpr29, 65535, implicit-def dead $scc
  renamable $vgpr19 = V_BFREV_B32_e32 1, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, killed $vgpr19, 0, killed $vgpr18, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr50_vgpr51 = BUFFER_LOAD_DWORDX2_OFFEN killed renamable $vgpr18, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8)
  renamable $sgpr6 = S_MOV_B32 0
  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc
  renamable $vgpr236 = V_LSHRREV_B32_e32 3, $vgpr0, implicit $exec
  renamable $vgpr20 = V_OR_B32_e32 $sgpr18, $vgpr236, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr11
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.54, implicit $exec

bb.6.Flow348:
; predecessors: %bb.5, %bb.54
  successors: %bb.7(0x40000000), %bb.8(0x40000000); %bb.7(50.00%), %bb.8(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.8, implicit $exec

bb.7 (%ir-block.400):
; predecessors: %bb.6
  successors: %bb.8(0x80000000); %bb.8(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr18 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr18, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr18, implicit $exec
  renamable $vgpr19 = V_MUL_HI_U32_e64 $vgpr18, killed $vgpr19, implicit $exec
  renamable $vgpr18 = V_ADD_U32_e32 killed $vgpr18, killed $vgpr19, implicit $exec
  renamable $vgpr18 = V_MUL_HI_U32_e64 $vgpr20, killed $vgpr18, implicit $exec
  renamable $vgpr18 = V_MUL_LO_U32_e64 killed $vgpr18, $sgpr22, implicit $exec
  renamable $vgpr18 = V_SUB_U32_e32 $vgpr20, killed $vgpr18, implicit $exec
  renamable $vgpr19 = V_SUBREV_U32_e32 $sgpr22, $vgpr18, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr19, implicit killed $vcc, implicit $exec
  renamable $vgpr19 = V_SUBREV_U32_e32 $sgpr22, $vgpr18, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr19, implicit killed $vcc, implicit $exec
  renamable $vgpr19 = V_MOV_B32_e32 0, implicit $exec

bb.8 (%ir-block.407):
; predecessors: %bb.6, %bb.7
  successors: %bb.55(0x40000000), %bb.9(0x40000000); %bb.55(50.00%), %bb.9(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr24 = V_OR3_B32_e64 $vgpr236, $sgpr18, 64, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.55, implicit $exec

bb.9.Flow347:
; predecessors: %bb.8, %bb.55
  successors: %bb.10(0x40000000), %bb.11(0x40000000); %bb.10(50.00%), %bb.11(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.11, implicit $exec

bb.10 (%ir-block.422):
; predecessors: %bb.9
  successors: %bb.11(0x80000000); %bb.11(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr22 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr22 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr22, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr22, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr21 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr22 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr22, implicit killed $vcc, implicit $exec
  renamable $vgpr22 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr22 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr22, implicit killed $vcc, implicit $exec
  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec

bb.11 (%ir-block.429):
; predecessors: %bb.9, %bb.10
  successors: %bb.56(0x40000000), %bb.12(0x40000000); %bb.56(50.00%), %bb.12(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr24 = V_OR_B32_e32 128, $vgpr20, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr26_vgpr27 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.56, implicit $exec

bb.12.Flow346:
; predecessors: %bb.11, %bb.56
  successors: %bb.13(0x40000000), %bb.14(0x40000000); %bb.13(50.00%), %bb.14(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.14, implicit $exec

bb.13 (%ir-block.444):
; predecessors: %bb.12
  successors: %bb.14(0x80000000); %bb.14(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr25 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr25 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr21 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr26 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec

bb.14 (%ir-block.451):
; predecessors: %bb.12, %bb.13
  successors: %bb.57(0x40000000), %bb.15(0x40000000); %bb.57(50.00%), %bb.15(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr24 = V_OR_B32_e32 192, $vgpr20, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr28_vgpr29 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.57, implicit $exec

bb.15.Flow345:
; predecessors: %bb.14, %bb.57
  successors: %bb.16(0x40000000), %bb.17(0x40000000); %bb.16(50.00%), %bb.17(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.17, implicit $exec

bb.16 (%ir-block.466):
; predecessors: %bb.15
  successors: %bb.17(0x80000000); %bb.17(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr25 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr25 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr21 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr28 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec

bb.17 (%ir-block.473):
; predecessors: %bb.15, %bb.16
  successors: %bb.58(0x40000000), %bb.18(0x40000000); %bb.58(50.00%), %bb.18(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr24 = V_OR_B32_e32 256, $vgpr20, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr34_vgpr35 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.58, implicit $exec

bb.18.Flow344:
; predecessors: %bb.17, %bb.58
  successors: %bb.19(0x40000000), %bb.20(0x40000000); %bb.19(50.00%), %bb.20(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.20, implicit $exec

bb.19 (%ir-block.488):
; predecessors: %bb.18
  successors: %bb.20(0x80000000); %bb.20(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr25 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr25 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr21 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr34 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr35 = V_MOV_B32_e32 0, implicit $exec

bb.20 (%ir-block.495):
; predecessors: %bb.18, %bb.19
  successors: %bb.59(0x40000000), %bb.21(0x40000000); %bb.59(50.00%), %bb.21(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr24 = V_OR_B32_e32 320, $vgpr20, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr36_vgpr37 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.59, implicit $exec

bb.21.Flow343:
; predecessors: %bb.20, %bb.59
  successors: %bb.22(0x40000000), %bb.23(0x40000000); %bb.22(50.00%), %bb.23(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.23, implicit $exec

bb.22 (%ir-block.510):
; predecessors: %bb.21
  successors: %bb.23(0x80000000); %bb.23(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr25 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr25 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr21 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr36 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr37 = V_MOV_B32_e32 0, implicit $exec

bb.23 (%ir-block.517):
; predecessors: %bb.21, %bb.22
  successors: %bb.60(0x40000000), %bb.24(0x40000000); %bb.60(50.00%), %bb.24(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr24 = V_OR_B32_e32 384, $vgpr20, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr42_vgpr43 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.60, implicit $exec

bb.24.Flow342:
; predecessors: %bb.23, %bb.60
  successors: %bb.25(0x40000000), %bb.26(0x40000000); %bb.25(50.00%), %bb.26(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6_sgpr7 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr6_sgpr7, implicit-def $scc
  S_CBRANCH_EXECZ %bb.26, implicit $exec

bb.25 (%ir-block.532):
; predecessors: %bb.24
  successors: %bb.26(0x80000000); %bb.26(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr21, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr25 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr25 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr25, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr21 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr21, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr24 = V_SUBREV_U32_e32 $sgpr22, $vgpr21, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr42 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec

bb.26 (%ir-block.539):
; predecessors: %bb.24, %bb.25
  successors: %bb.61(0x40000000), %bb.27(0x40000000); %bb.61(50.00%), %bb.27(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr20 = V_OR_B32_e32 448, killed $vgpr20, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  renamable $vgpr44_vgpr45 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 $sgpr6_sgpr7, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr10_sgpr11 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc
  S_CBRANCH_EXECNZ %bb.61, implicit $exec

bb.27.Flow341:
; predecessors: %bb.26, %bb.61
  successors: %bb.28(0x40000000), %bb.29(0x40000000); %bb.28(50.00%), %bb.29(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $sgpr6_sgpr7 = S_ANDN2_SAVEEXEC_B64 $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
  S_CBRANCH_EXECZ %bb.29, implicit $exec

bb.28 (%ir-block.554):
; predecessors: %bb.27
  successors: %bb.29(0x80000000); %bb.29(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc
  renamable $vgpr24 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr21, implicit $exec
  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr21, killed $vgpr24, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 killed $vgpr21, killed $vgpr24, implicit $exec
  renamable $vgpr21 = V_MUL_HI_U32_e64 $vgpr20, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 killed $vgpr21, $sgpr22, implicit $exec
  renamable $vgpr20 = V_SUB_U32_e32 killed $vgpr20, killed $vgpr21, implicit $exec
  renamable $vgpr21 = V_SUBREV_U32_e32 $sgpr22, $vgpr20, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr20, implicit-def $vcc, implicit $exec
  renamable $vgpr20 = V_CNDMASK_B32_e32 killed $vgpr20, killed $vgpr21, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_SUBREV_U32_e32 $sgpr22, $vgpr20, implicit $exec
  V_CMP_LE_U32_e32 $sgpr22, $vgpr20, implicit-def $vcc, implicit $exec
  renamable $vgpr44 = V_CNDMASK_B32_e32 killed $vgpr20, killed $vgpr21, implicit killed $vcc, implicit $exec
  renamable $vgpr45 = V_MOV_B32_e32 0, implicit $exec

bb.29 (%ir-block.561):
; predecessors: %bb.27, %bb.28
  successors: %bb.30(0x40000000), %bb.31(0x40000000); %bb.30(50.00%), %bb.31(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def $scc
  renamable $vgpr54 = V_LSHLREV_B32_e32 4, $vgpr0, implicit $exec
  renamable $vgpr138 = V_AND_B32_e32 112, $vgpr54, implicit $exec
  renamable $vgpr139 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr141 = V_MUL_HI_I32_e64 $vgpr175, $sgpr14, implicit $exec
  renamable $vgpr140 = V_MUL_LO_U32_e64 $vgpr175, killed $sgpr14, implicit $exec
  renamable $vgpr52_vgpr53 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, $vgpr140_vgpr141, implicit $exec
  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc
  renamable $vgpr19 = V_MUL_LO_U32_e64 $vgpr19, $sgpr15, implicit $exec
  renamable $vgpr20 = V_MUL_LO_U32_e64 $vgpr18, $sgpr8, implicit $exec
  renamable $vgpr142_vgpr143, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr18, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr143 = V_ADD3_U32_e64 $vgpr143, killed $vgpr20, killed $vgpr19, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr2_sgpr3, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 1, killed $vgpr18, implicit $exec
  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc
  $vgpr18 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  $vgpr19 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  $vgpr20 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  S_CBRANCH_VCCNZ %bb.31, implicit $vcc

bb.30 (%ir-block.571):
; predecessors: %bb.29
  successors: %bb.31(0x80000000); %bb.31(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr142_vgpr143, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr18_vgpr19, 0, 0, implicit $exec :: (load (s128) from %ir.573, addrspace 1)

bb.31 (%ir-block.575):
; predecessors: %bb.29, %bb.30
  successors: %bb.32(0x40000000), %bb.33(0x40000000); %bb.32(50.00%), %bb.33(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF
  renamable $vgpr23 = V_MUL_LO_U32_e64 $vgpr23, $sgpr15, implicit $exec
  renamable $vgpr24 = V_MUL_LO_U32_e64 $vgpr22, $sgpr8, implicit $exec
  renamable $vgpr144_vgpr145, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr22, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr145 = V_ADD3_U32_e64 $vgpr145, killed $vgpr24, killed $vgpr23, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  $vgpr22 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  $vgpr24 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr139, implicit $exec, implicit $exec
  S_CBRANCH_VCCNZ %bb.33, implicit $vcc

bb.32 (%ir-block.577):
; predecessors: %bb.31
  successors: %bb.33(0x80000000); %bb.33(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr144_vgpr145, implicit $exec
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr22_vgpr23, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr22_vgpr23, 0, 0, implicit $exec :: (load (s128) from %ir.579, addrspace 1)

bb.33 (%ir-block.581):
; predecessors: %bb.31, %bb.32
  successors: %bb.34(0x40000000), %bb.35(0x40000000); %bb.34(50.00%), %bb.35(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF
  renamable $vgpr27 = V_MUL_LO_U32_e64 $vgpr27, $sgpr15, implicit $exec
  renamable $vgpr30 = V_MUL_LO_U32_e64 $vgpr26, $sgpr8, implicit $exec
  renamable $vgpr146_vgpr147, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr26, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr147 = V_ADD3_U32_e64 $vgpr147, killed $vgpr30, killed $vgpr27, implicit $exec
  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr30 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr32 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr33 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.35, implicit $vcc

bb.34 (%ir-block.583):
; predecessors: %bb.33
  successors: %bb.35(0x80000000); %bb.35(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x0000000000000003
  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr146_vgpr147, implicit $exec
  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec :: (load (s128) from %ir.585, addrspace 1)

bb.35 (%ir-block.587):
; predecessors: %bb.33, %bb.34
  successors: %bb.36(0x40000000), %bb.37(0x40000000); %bb.36(50.00%), %bb.37(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x0000000000000003, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
  renamable $vgpr27 = V_MUL_LO_U32_e64 $vgpr29, $sgpr15, implicit $exec
  renamable $vgpr29 = V_MUL_LO_U32_e64 $vgpr28, $sgpr8, implicit $exec
  renamable $vgpr148_vgpr149, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr28, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr149 = V_ADD3_U32_e64 $vgpr149, killed $vgpr29, killed $vgpr27, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr28 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.37, implicit $vcc

bb.36 (%ir-block.589):
; predecessors: %bb.35
  successors: %bb.37(0x80000000); %bb.37(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr148_vgpr149, implicit $exec
  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 killed $vgpr26_vgpr27, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr26_vgpr27, 0, 0, implicit $exec :: (load (s128) from %ir.591, addrspace 1)

bb.37 (%ir-block.593):
; predecessors: %bb.35, %bb.36
  successors: %bb.38(0x40000000), %bb.39(0x40000000); %bb.38(50.00%), %bb.39(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
  renamable $vgpr35 = V_MUL_LO_U32_e64 $vgpr35, $sgpr15, implicit $exec
  renamable $vgpr38 = V_MUL_LO_U32_e64 $vgpr34, $sgpr8, implicit $exec
  renamable $vgpr150_vgpr151, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr34, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr151 = V_ADD3_U32_e64 $vgpr151, killed $vgpr38, killed $vgpr35, implicit $exec
  renamable $vgpr34 = V_MOV_B32_e32 0, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr38 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr39 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr40 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr41 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.39, implicit $vcc

bb.38 (%ir-block.595):
; predecessors: %bb.37
  successors: %bb.39(0x80000000); %bb.39(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x0000000000000003
  renamable $vgpr38_vgpr39 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr150_vgpr151, implicit $exec
  renamable $vgpr38_vgpr39 = V_LSHL_ADD_U64_e64 killed $vgpr38_vgpr39, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr38_vgpr39, 0, 0, implicit $exec :: (load (s128) from %ir.597, addrspace 1)

bb.39 (%ir-block.599):
; predecessors: %bb.37, %bb.38
  successors: %bb.40(0x40000000), %bb.41(0x40000000); %bb.40(50.00%), %bb.41(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
  renamable $vgpr35 = V_MUL_LO_U32_e64 $vgpr37, $sgpr15, implicit $exec
  renamable $vgpr37 = V_MUL_LO_U32_e64 $vgpr36, $sgpr8, implicit $exec
  renamable $vgpr152_vgpr153, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr36, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr153 = V_ADD3_U32_e64 $vgpr153, killed $vgpr37, killed $vgpr35, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr35 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr36 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr37 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.41, implicit $vcc

bb.40 (%ir-block.601):
; predecessors: %bb.39
  successors: %bb.41(0x80000000); %bb.41(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
  renamable $vgpr34_vgpr35 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr152_vgpr153, implicit $exec
  renamable $vgpr34_vgpr35 = V_LSHL_ADD_U64_e64 killed $vgpr34_vgpr35, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr34_vgpr35, 0, 0, implicit $exec :: (load (s128) from %ir.603, addrspace 1)

bb.41 (%ir-block.605):
; predecessors: %bb.39, %bb.40
  successors: %bb.42(0x40000000), %bb.43(0x40000000); %bb.42(50.00%), %bb.43(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
  renamable $vgpr43 = V_MUL_LO_U32_e64 $vgpr43, $sgpr15, implicit $exec
  renamable $vgpr46 = V_MUL_LO_U32_e64 $vgpr42, $sgpr8, implicit $exec
  renamable $vgpr154_vgpr155, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr42, $sgpr15, 0, 0, implicit $exec
  renamable $vgpr155 = V_ADD3_U32_e64 $vgpr155, killed $vgpr46, killed $vgpr43, implicit $exec
  renamable $vgpr42 = V_MOV_B32_e32 0, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr46 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr47 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr48 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr49 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.43, implicit $vcc

bb.42 (%ir-block.607):
; predecessors: %bb.41
  successors: %bb.43(0x80000000); %bb.43(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr154_vgpr155:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x0000000000000003
  renamable $vgpr46_vgpr47 = V_LSHL_ADD_U64_e64 $vgpr52_vgpr53, 0, $vgpr154_vgpr155, implicit $exec
  renamable $vgpr46_vgpr47 = V_LSHL_ADD_U64_e64 killed $vgpr46_vgpr47, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr46_vgpr47, 0, 0, implicit $exec :: (load (s128) from %ir.609, addrspace 1)

bb.43 (%ir-block.611):
; predecessors: %bb.41, %bb.42
  successors: %bb.44(0x40000000), %bb.45(0x40000000); %bb.44(50.00%), %bb.45(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr154_vgpr155:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x0000000000000003, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
  renamable $vgpr43 = V_MUL_LO_U32_e64 $vgpr45, $sgpr15, implicit $exec
  renamable $vgpr45 = V_MUL_LO_U32_e64 $vgpr44, killed $sgpr8, implicit $exec
  renamable $vgpr156_vgpr157, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr44, killed $sgpr15, 0, 0, implicit $exec
  renamable $vgpr157 = V_ADD3_U32_e64 $vgpr157, killed $vgpr45, killed $vgpr43, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr44 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr45 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.45, implicit $vcc

bb.44 (%ir-block.613):
; predecessors: %bb.43
  successors: %bb.45(0x80000000); %bb.45(100.00%)
  liveins: $sgpr4, $sgpr5, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51, $vgpr52_vgpr53, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr154_vgpr155:0x000000000000000F, $vgpr156_vgpr157:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
  renamable $vgpr42_vgpr43 = V_LSHL_ADD_U64_e64 killed $vgpr52_vgpr53, 0, $vgpr156_vgpr157, implicit $exec
  renamable $vgpr42_vgpr43 = V_LSHL_ADD_U64_e64 killed $vgpr42_vgpr43, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr42_vgpr43, 0, 0, implicit $exec :: (load (s128) from %ir.615, addrspace 1)

bb.45 (%ir-block.617):
; predecessors: %bb.43, %bb.44
  successors: %bb.46(0x40000000), %bb.49(0x40000000); %bb.46(50.00%), %bb.49(50.00%)
  liveins: $sgpr4, $sgpr5, $vgpr0, $vgpr54, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr154_vgpr155:0x000000000000000F, $vgpr156_vgpr157:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $sgpr2 = S_MOVK_I32 240
  renamable $vgpr167 = V_BITOP3_B32_e64 $vgpr54, $vgpr0, killed $sgpr2, 120, implicit $exec
  renamable $vgpr52 = V_ADD_U32_e32 0, $vgpr167, implicit $exec
  renamable $vgpr52 = V_ADD_U32_e32 65536, killed $vgpr52, implicit $exec
  DS_WRITE_B128_gfx9 renamable $vgpr52, killed renamable $vgpr2_vgpr3_vgpr4_vgpr5, 0, 0, implicit $exec :: (store (s128) into %ir.622, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr52, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec :: (store (s128) into %ir.623, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr52, killed renamable $vgpr10_vgpr11_vgpr12_vgpr13, 16384, 0, implicit $exec :: (store (s128) into %ir.624, addrspace 3)
  DS_WRITE_B128_gfx9 killed renamable $vgpr52, killed renamable $vgpr14_vgpr15_vgpr16_vgpr17, 24576, 0, implicit $exec :: (store (s128) into %ir.625, addrspace 3)
  renamable $sgpr2 = S_MOVK_I32 112
  renamable $vgpr2 = V_BITOP3_B32_e64 killed $vgpr54, $vgpr0, $sgpr2, 120, implicit $exec
  renamable $vgpr169 = nuw V_ADD_U32_e32 0, killed $vgpr2, implicit $exec
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr18_vgpr19_vgpr20_vgpr21, 0, 0, implicit $exec :: (store (s128) into %ir.628, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr22_vgpr23_vgpr24_vgpr25, 8192, 0, implicit $exec :: (store (s128) into %ir.629, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr30_vgpr31_vgpr32_vgpr33, 16384, 0, implicit $exec :: (store (s128) into %ir.630, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr26_vgpr27_vgpr28_vgpr29, 24576, 0, implicit $exec :: (store (s128) into %ir.631, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr38_vgpr39_vgpr40_vgpr41, -32768, 0, implicit $exec :: (store (s128) into %ir.632, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr34_vgpr35_vgpr36_vgpr37, -24576, 0, implicit $exec :: (store (s128) into %ir.633, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr46_vgpr47_vgpr48_vgpr49, -16384, 0, implicit $exec :: (store (s128) into %ir.634, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr42_vgpr43_vgpr44_vgpr45, -8192, 0, implicit $exec :: (store (s128) into %ir.635, addrspace 3)
  renamable $vgpr2 = V_ADD_U32_e32 0, $vgpr166, implicit $exec
  renamable $vgpr2 = V_ADD_U32_e32 98304, killed $vgpr2, implicit $exec
  DS_WRITE_B64_gfx9 killed renamable $vgpr2, killed renamable $vgpr50_vgpr51, 0, 0, implicit $exec :: (store (s64) into %ir.637, addrspace 3)
  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc
  renamable $vgpr5 = V_MOV_B32_e32 0, implicit $exec
  $vgpr4 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr3 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr2 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr20 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr19 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr18 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr9 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr8 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr7 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr6 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr13 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr12 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr11 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr10 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr17 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr16 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr15 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr14 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr24 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr22 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr29 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr28 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr27 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr26 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr33 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr32 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr30 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr37 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr36 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr35 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr34 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr41 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr40 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr39 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr38 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr45 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr44 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr43 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr42 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr49 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr48 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr47 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr46 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr53 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr52 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr51 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr50 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr57 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr56 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr55 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr54 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr61 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr60 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr59 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr58 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr65 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr64 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr63 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr62 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr69 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr68 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr67 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr66 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr73 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr72 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr71 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr70 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr77 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr76 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr75 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr74 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr81 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr80 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr79 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr78 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr85 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr84 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr83 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr82 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr89 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr88 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr87 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr86 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr93 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr92 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr91 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr90 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr97 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr96 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr95 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr94 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr101 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr100 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr99 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr98 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr105 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr104 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr103 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr102 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr109 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr108 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr107 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr106 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr113 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr112 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr111 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr110 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr117 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr116 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr115 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr114 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr121 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr120 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr119 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr118 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr129 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr128 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr127 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr126 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr125 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr124 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr123 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  $vgpr122 = V_MOV_B32_e32 $vgpr5, implicit $exec, implicit $exec
  renamable $vgpr237 = V_AND_B32_e32 48, $vgpr0, implicit $exec
  renamable $vgpr137 = nuw nsw V_LSHLREV_B32_e32 6, $vgpr0, implicit $exec
  renamable $vgpr193 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr0, implicit $exec
  S_CBRANCH_SCC1 %bb.49, implicit $scc

bb.46..lr.ph:
; predecessors: %bb.45
  successors: %bb.47(0x80000000); %bb.47(100.00%)
  liveins: $sgpr2, $sgpr4, $sgpr5, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr137, $vgpr159, $vgpr166, $vgpr167, $vgpr169, $vgpr175, $vgpr193, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr138_vgpr139:0x000000000000000F, $vgpr140_vgpr141:0x000000000000000F, $vgpr142_vgpr143:0x000000000000000F, $vgpr144_vgpr145:0x000000000000000F, $vgpr146_vgpr147:0x000000000000000F, $vgpr148_vgpr149:0x000000000000000F, $vgpr150_vgpr151:0x000000000000000F, $vgpr152_vgpr153:0x000000000000000F, $vgpr154_vgpr155:0x000000000000000F, $vgpr156_vgpr157:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F
  SCRATCH_STORE_DWORDX2_ST $vgpr190_vgpr191, 24, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.5, align 4, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr233, 20, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.4, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr234_vgpr235, 12, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.3, align 4, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr232, 8, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.2, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr231, 4, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.1, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr230, 0, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.0, addrspace 5)
  renamable $sgpr3 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc
  renamable $sgpr3 = S_LSHR_B32 killed renamable $sgpr3, 24, implicit-def dead $scc
  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr3, implicit-def dead $scc
  renamable $sgpr3 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc
  renamable $vgpr2 = V_MUL_U32_U24_e32 272, $vgpr159, implicit $exec
  renamable $vgpr171 = V_XOR_B32_e32 killed $vgpr2, $vgpr237, implicit $exec
  renamable $vgpr4 = V_XOR_B32_e32 64, $vgpr171, implicit $exec
  renamable $vgpr5 = V_XOR_B32_e32 128, $vgpr171, implicit $exec
  renamable $vgpr6 = V_XOR_B32_e32 192, $vgpr171, implicit $exec
  renamable $vgpr2 = V_AND_B32_e32 28672, killed $vgpr137, implicit $exec
  renamable $vgpr2 = disjoint V_LSHL_OR_B32_e64 killed $vgpr159, 7, killed $vgpr2, implicit $exec
  renamable $vgpr3 = V_BITOP3_B32_e64 $vgpr166, killed $vgpr237, killed $sgpr2, 108, implicit $exec
  renamable $vgpr7 = disjoint V_OR_B32_e32 $vgpr2, $vgpr3, implicit $exec
  renamable $vgpr8 = V_BITOP3_B32_e64 killed $vgpr2, 64, killed $vgpr3, 54, implicit $exec
  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr3, 2, implicit-def dead $scc
  renamable $vgpr2 = V_ADD_U32_e32 killed $vgpr133, killed $vgpr135, implicit $exec
  renamable $sgpr2 = S_MOVK_I32 256
  renamable $vgpr173 = V_ADD3_U32_e64 killed $vgpr2, killed $vgpr131, killed $sgpr2, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr156_vgpr157, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $sgpr2_sgpr3 = S_MOV_B64 128
  renamable $vgpr176_vgpr177 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr154_vgpr155, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $vgpr178_vgpr179 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr152_vgpr153, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $vgpr180_vgpr181 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr150_vgpr151, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $vgpr182_vgpr183 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr148_vgpr149, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $vgpr184_vgpr185 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr146_vgpr147, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $vgpr186_vgpr187 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr144_vgpr145, 0, $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr12_sgpr13, implicit $exec
  renamable $vgpr188_vgpr189 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr142_vgpr143, 0, killed $vgpr140_vgpr141, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, killed $vgpr138_vgpr139, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, killed $sgpr12_sgpr13, implicit $exec
  renamable $vgpr190_vgpr191 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, killed $sgpr2_sgpr3, implicit $exec
  renamable $vgpr201 = V_ADD_U32_e32 256, killed $vgpr136, implicit $exec
  renamable $vgpr202 = V_ADD_U32_e32 256, killed $vgpr134, implicit $exec
  renamable $vgpr203 = V_ADD_U32_e32 256, killed $vgpr132, implicit $exec
  renamable $vgpr204 = V_ADD_U32_e32 256, killed $vgpr130, implicit $exec
  renamable $sgpr2 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc
  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr2, -128, implicit-def dead $scc
  renamable $vgpr122 = V_MOV_B32_e32 0, implicit $exec
  renamable $sgpr2_sgpr3 = S_MOV_B64 0
  renamable $sgpr12 = S_ADD_I32 0, 65536, implicit-def dead $scc
  renamable $vgpr205 = V_ADD_U32_e32 $sgpr12, killed $vgpr4, implicit $exec
  renamable $vgpr206 = V_ADD_U32_e32 $sgpr12, killed $vgpr5, implicit $exec
  renamable $vgpr207 = V_ADD_U32_e32 $sgpr12, killed $vgpr6, implicit $exec
  renamable $vgpr208 = V_ADD_U32_e32 0, killed $vgpr7, implicit $exec
  renamable $vgpr209 = V_ADD_U32_e32 0, killed $vgpr8, implicit $exec
  renamable $sgpr13 = S_ADD_I32 0, 98304, implicit-def dead $scc
  renamable $vgpr210 = V_ADD_U32_e32 $sgpr13, killed $vgpr193, implicit $exec
  renamable $sgpr14 = S_MOV_B32 117769732
  renamable $vgpr211 = V_MOV_B32_e32 127, implicit $exec
  $vgpr123 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr124 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr125 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr126 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr127 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr128 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr129 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr118 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr119 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr120 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr121 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr114 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr115 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr116 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr117 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr110 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr111 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr112 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr113 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr106 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr107 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr108 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr109 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr102 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr103 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr104 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr105 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr98 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr99 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr100 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr101 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr94 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr95 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr96 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr97 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr90 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr91 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr92 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr93 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr86 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr87 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr88 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr89 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr82 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr83 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr84 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr85 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr78 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr79 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr80 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr81 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr74 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr75 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr76 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr77 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr70 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr71 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr72 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr73 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr66 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr67 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr68 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr69 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr62 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr63 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr64 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr65 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr58 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr59 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr60 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr61 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr54 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr55 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr56 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr57 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr50 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr51 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr52 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr53 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr46 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr47 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr48 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr49 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr42 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr43 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr44 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr45 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr38 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr39 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr40 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr41 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr34 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr35 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr36 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr37 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr30 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr32 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr33 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr26 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr27 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr28 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr29 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr22 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr24 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr14 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr15 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr16 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr17 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr10 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr11 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr12 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr13 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr6 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr7 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr8 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr9 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr18 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr19 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr20 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr2 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr3 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr4 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec
  $vgpr5 = V_MOV_B32_e32 $vgpr122, implicit $exec, implicit $exec

bb.47 (%ir-block.818):
; predecessors: %bb.46, %bb.47
  successors: %bb.48(0x04000000), %bb.47(0x7c000000); %bb.48(3.12%), %bb.47(96.88%)
  liveins: $sgpr4, $sgpr5, $sgpr12, $sgpr13, $sgpr14, $vgpr0, $vgpr166, $vgpr167, $vgpr169, $vgpr171, $vgpr173, $vgpr175, $vgpr201, $vgpr202, $vgpr203, $vgpr204, $vgpr205, $vgpr206, $vgpr207, $vgpr208, $vgpr209, $vgpr210, $vgpr211, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr176_vgpr177, $vgpr178_vgpr179, $vgpr180_vgpr181, $vgpr182_vgpr183, $vgpr184_vgpr185, $vgpr186_vgpr187, $vgpr188_vgpr189, $vgpr190_vgpr191, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr90_vgpr91_vgpr92_vgpr93:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr204, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr203, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr202, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr201, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8)
  S_WAITCNT 49279
  S_BARRIER
  renamable $vgpr164 = V_ADD_U32_e32 $sgpr12, $vgpr171, implicit $exec
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = DS_READ_B128_gfx9 renamable $vgpr208, 0, 0, implicit $exec :: (load (s128) from %ir.sunkaddr269, addrspace 3)
  renamable $vgpr216_vgpr217_vgpr218_vgpr219 = DS_READ_B128_gfx9 renamable $vgpr205, 0, 0, implicit $exec :: (load (s128) from %ir.sunkaddr224, addrspace 3)
  renamable $vgpr224_vgpr225_vgpr226_vgpr227 = DS_READ_B128_gfx9 renamable $vgpr205, 4096, 0, implicit $exec :: (load (s128) from %ir.sunkaddr226, addrspace 3)
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = DS_READ_B128_gfx9 renamable $vgpr208, 2048, 0, implicit $exec :: (load (s128) from %ir.sunkaddr271, addrspace 3)
  renamable $vgpr162_vgpr163 = DS_READ2ST64_B32_gfx9 renamable $vgpr210, 0, 8, 0, implicit $exec :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3)
  renamable $vgpr212_vgpr213_vgpr214_vgpr215 = DS_READ_B128_gfx9 renamable $vgpr164, 0, 0, implicit $exec :: (load (s128) from %ir.sunkaddr, addrspace 3)
  renamable $vgpr220_vgpr221_vgpr222_vgpr223 = DS_READ_B128_gfx9 renamable $vgpr164, 4096, 0, implicit $exec :: (load (s128) from %ir.sunkaddr211, addrspace 3)
  renamable $vgpr200 = V_PERM_B32_e64 $vgpr162, $vgpr162, $sgpr14, implicit $exec
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = DS_READ_B128_gfx9 renamable $vgpr208, -32768, 0, implicit $exec :: (load (s128) from %ir.sunkaddr273, addrspace 3)
  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = DS_READ_B128_gfx9 renamable $vgpr208, -30720, 0, implicit $exec :: (load (s128) from %ir.sunkaddr275, addrspace 3)
  renamable $vgpr1 = V_PERM_B32_e64 killed $vgpr163, $vgpr163, $sgpr14, implicit $exec
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr216_vgpr217_vgpr218_vgpr219 = DS_READ_B128_gfx9 renamable $vgpr205, 8192, 0, implicit $exec :: (load (s128) from %ir.sunkaddr228, addrspace 3)
  renamable $vgpr224_vgpr225_vgpr226_vgpr227 = DS_READ_B128_gfx9 renamable $vgpr205, 12288, 0, implicit $exec :: (load (s128) from %ir.sunkaddr230, addrspace 3)
  renamable $vgpr212_vgpr213_vgpr214_vgpr215 = DS_READ_B128_gfx9 renamable $vgpr164, 8192, 0, implicit $exec :: (load (s128) from %ir.sunkaddr213, addrspace 3)
  renamable $vgpr220_vgpr221_vgpr222_vgpr223 = DS_READ_B128_gfx9 renamable $vgpr164, 12288, 0, implicit $exec :: (load (s128) from %ir.sunkaddr215, addrspace 3)
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr90_vgpr91_vgpr92_vgpr93, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr212_vgpr213_vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr212_vgpr213_vgpr214_vgpr215 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr216_vgpr217_vgpr218_vgpr219 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr228_vgpr229_vgpr230_vgpr231 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr220_vgpr221_vgpr222_vgpr223 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr220_vgpr221_vgpr222_vgpr223_vgpr224_vgpr225_vgpr226_vgpr227, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = DS_READ_B128_gfx9 renamable $vgpr205, 16384, 0, implicit $exec :: (load (s128) from %ir.sunkaddr232, addrspace 3)
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr205, 20480, 0, implicit $exec :: (load (s128) from %ir.sunkaddr234, addrspace 3)
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = DS_READ_B128_gfx9 renamable $vgpr164, 16384, 0, implicit $exec :: (load (s128) from %ir.sunkaddr217, addrspace 3)
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = DS_READ_B128_gfx9 renamable $vgpr164, 20480, 0, implicit $exec :: (load (s128) from %ir.sunkaddr219, addrspace 3)
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71_vgpr72_vgpr73, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71_vgpr72_vgpr73, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71_vgpr72_vgpr73, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71_vgpr72_vgpr73, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr224_vgpr225_vgpr226_vgpr227 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr232_vgpr233_vgpr234_vgpr235 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr236_vgpr237_vgpr238_vgpr239 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr240_vgpr241_vgpr242_vgpr243 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr205, 24576, 0, implicit $exec :: (load (s128) from %ir.sunkaddr236, addrspace 3)
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = DS_READ_B128_gfx9 renamable $vgpr205, 28672, 0, implicit $exec :: (load (s128) from %ir.sunkaddr238, addrspace 3)
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr164, 24576, 0, implicit $exec :: (load (s128) from %ir.sunkaddr221, addrspace 3)
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = DS_READ_B128_gfx9 killed renamable $vgpr164, 28672, 0, implicit $exec :: (load (s128) from %ir.sunkaddr223, addrspace 3)
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr244_vgpr245_vgpr246_vgpr247 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr248_vgpr249_vgpr250_vgpr251 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr200, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr252_vgpr253_vgpr254_vgpr255 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr146_vgpr147_vgpr148_vgpr149, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr200, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr1, $vgpr211, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr154_vgpr155_vgpr156_vgpr157, killed $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr1, $vgpr211, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = DS_READ_B128_gfx9 renamable $vgpr209, 0, 0, implicit $exec :: (load (s128) from %ir.sunkaddr276, addrspace 3)
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr207, 0, 0, implicit $exec :: (load (s128) from %ir.sunkaddr254, addrspace 3)
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr206, 0, 0, implicit $exec :: (load (s128) from %ir.sunkaddr239, addrspace 3)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr206, 4096, 0, implicit $exec :: (load (s128) from %ir.sunkaddr241, addrspace 3)
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr207, 4096, 0, implicit $exec :: (load (s128) from %ir.sunkaddr256, addrspace 3)
  renamable $vgpr192_vgpr193_vgpr194_vgpr195 = DS_READ_B128_gfx9 renamable $vgpr209, 2048, 0, implicit $exec :: (load (s128) from %ir.sunkaddr278, addrspace 3)
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = DS_READ_B128_gfx9 renamable $vgpr209, -32768, 0, implicit $exec :: (load (s128) from %ir.sunkaddr280, addrspace 3)
  renamable $vgpr196_vgpr197_vgpr198_vgpr199 = DS_READ_B128_gfx9 renamable $vgpr209, -30720, 0, implicit $exec :: (load (s128) from %ir.sunkaddr282, addrspace 3)
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr207, 8192, 0, implicit $exec :: (load (s128) from %ir.sunkaddr258, addrspace 3)
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr206, 8192, 0, implicit $exec :: (load (s128) from %ir.sunkaddr243, addrspace 3)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr206, 12288, 0, implicit $exec :: (load (s128) from %ir.sunkaddr245, addrspace 3)
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr207, 12288, 0, implicit $exec :: (load (s128) from %ir.sunkaddr260, addrspace 3)
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr90_vgpr91_vgpr92_vgpr93, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr212_vgpr213_vgpr214_vgpr215, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr216_vgpr217_vgpr218_vgpr219, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr228_vgpr229_vgpr230_vgpr231, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr220_vgpr221_vgpr222_vgpr223, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr207, 16384, 0, implicit $exec :: (load (s128) from %ir.sunkaddr262, addrspace 3)
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr206, 16384, 0, implicit $exec :: (load (s128) from %ir.sunkaddr247, addrspace 3)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr206, 20480, 0, implicit $exec :: (load (s128) from %ir.sunkaddr249, addrspace 3)
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr207, 20480, 0, implicit $exec :: (load (s128) from %ir.sunkaddr264, addrspace 3)
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr224_vgpr225_vgpr226_vgpr227, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr232_vgpr233_vgpr234_vgpr235, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr236_vgpr237_vgpr238_vgpr239, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr240_vgpr241_vgpr242_vgpr243, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr207, 24576, 0, implicit $exec :: (load (s128) from %ir.sunkaddr266, addrspace 3)
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr206, 24576, 0, implicit $exec :: (load (s128) from %ir.sunkaddr251, addrspace 3)
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = DS_READ_B128_gfx9 renamable $vgpr206, 28672, 0, implicit $exec :: (load (s128) from %ir.sunkaddr253, addrspace 3)
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = DS_READ_B128_gfx9 renamable $vgpr207, 28672, 0, implicit $exec :: (load (s128) from %ir.sunkaddr268, addrspace 3)
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr212_vgpr213 = V_LSHL_ADD_U64_e64 $vgpr190_vgpr191, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr214_vgpr215 = V_LSHL_ADD_U64_e64 $vgpr188_vgpr189, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr244_vgpr245_vgpr246_vgpr247, 4, 0, $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr186_vgpr187, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 $vgpr184_vgpr185, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 $vgpr182_vgpr183, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr180_vgpr181, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr232_vgpr233 = V_LSHL_ADD_U64_e64 $vgpr178_vgpr179, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr236_vgpr237 = V_LSHL_ADD_U64_e64 $vgpr176_vgpr177, 0, $sgpr2_sgpr3, implicit $exec
  renamable $vgpr238_vgpr239 = BUFFER_LOAD_DWORDX2_OFFEN renamable $vgpr173, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr158_vgpr159_vgpr160_vgpr161, $vgpr146_vgpr147_vgpr148_vgpr149_vgpr150_vgpr151_vgpr152_vgpr153, killed $vgpr248_vgpr249_vgpr250_vgpr251, 4, 0, $vgpr200, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr212_vgpr213, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep200, addrspace 1)
  renamable $vgpr212_vgpr213_vgpr214_vgpr215 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr214_vgpr215, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep198, addrspace 1)
  renamable $vgpr216_vgpr217_vgpr218_vgpr219 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr2_vgpr3, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep196, addrspace 1)
  renamable $vgpr220_vgpr221_vgpr222_vgpr223 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr4_vgpr5, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep194, addrspace 1)
  renamable $vgpr224_vgpr225_vgpr226_vgpr227 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep192, addrspace 1)
  renamable $vgpr228_vgpr229_vgpr230_vgpr231 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr8_vgpr9, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep190, addrspace 1)
  renamable $vgpr232_vgpr233_vgpr234_vgpr235 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr232_vgpr233, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep188, addrspace 1)
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr192_vgpr193_vgpr194_vgpr195, $vgpr146_vgpr147_vgpr148_vgpr149_vgpr150_vgpr151_vgpr152_vgpr153, killed $vgpr252_vgpr253_vgpr254_vgpr255, 4, 0, killed $vgpr200, $vgpr211, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr192_vgpr193_vgpr194_vgpr195 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr236_vgpr237, 0, 0, implicit $exec :: (load (s128) from %ir.scevgep186, addrspace 1)
  renamable $vgpr200 = V_ADD_U32_e32 $sgpr12, $vgpr167, implicit $exec
  renamable $vgpr236 = V_ADD_U32_e32 $sgpr13, $vgpr166, implicit $exec
  renamable $vgpr173 = V_ADD_U32_e32 256, killed $vgpr173, implicit $exec
  renamable $sgpr2 = S_ADD_U32 renamable $sgpr2, 128, implicit-def $scc
  renamable $vgpr201 = V_ADD_U32_e32 256, killed $vgpr201, implicit $exec
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr162_vgpr163_vgpr164_vgpr165, $vgpr146_vgpr147_vgpr148_vgpr149_vgpr150_vgpr151_vgpr152_vgpr153, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr1, $vgpr211, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr202 = V_ADD_U32_e32 256, killed $vgpr202, implicit $exec
  renamable $vgpr203 = V_ADD_U32_e32 256, killed $vgpr203, implicit $exec
  renamable $vgpr204 = V_ADD_U32_e32 256, killed $vgpr204, implicit $exec
  S_WAITCNT 49279
  S_BARRIER
  renamable $sgpr3 = S_ADDC_U32 renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc
  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr2, implicit-def $scc
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr196_vgpr197_vgpr198_vgpr199, killed $vgpr146_vgpr147_vgpr148_vgpr149_vgpr150_vgpr151_vgpr152_vgpr153, killed $vgpr154_vgpr155_vgpr156_vgpr157, 4, 0, killed $vgpr1, $vgpr211, 12, 0, implicit $mode, implicit $exec
  DS_WRITE_B128_gfx9 renamable $vgpr200, killed renamable $vgpr130_vgpr131_vgpr132_vgpr133, 0, 0, implicit $exec :: (store (s128) into %ir.sunkaddr286, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr200, killed renamable $vgpr134_vgpr135_vgpr136_vgpr137, 8192, 0, implicit $exec :: (store (s128) into %ir.sunkaddr288, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr200, killed renamable $vgpr138_vgpr139_vgpr140_vgpr141, 16384, 0, implicit $exec :: (store (s128) into %ir.sunkaddr290, addrspace 3)
  DS_WRITE_B128_gfx9 killed renamable $vgpr200, killed renamable $vgpr142_vgpr143_vgpr144_vgpr145, 24576, 0, implicit $exec :: (store (s128) into %ir.sunkaddr292, addrspace 3)
  DS_WRITE_B64_gfx9 killed renamable $vgpr236, killed renamable $vgpr238_vgpr239, 0, 0, implicit $exec :: (store (s64) into %ir.sunkaddr308, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr158_vgpr159_vgpr160_vgpr161, 0, 0, implicit $exec :: (store (s128) into %ir.sunkaddr293, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr212_vgpr213_vgpr214_vgpr215, 8192, 0, implicit $exec :: (store (s128) into %ir.sunkaddr295, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr216_vgpr217_vgpr218_vgpr219, 16384, 0, implicit $exec :: (store (s128) into %ir.sunkaddr297, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr220_vgpr221_vgpr222_vgpr223, 24576, 0, implicit $exec :: (store (s128) into %ir.sunkaddr299, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr224_vgpr225_vgpr226_vgpr227, -32768, 0, implicit $exec :: (store (s128) into %ir.sunkaddr301, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr228_vgpr229_vgpr230_vgpr231, -24576, 0, implicit $exec :: (store (s128) into %ir.sunkaddr303, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr232_vgpr233_vgpr234_vgpr235, -16384, 0, implicit $exec :: (store (s128) into %ir.sunkaddr305, addrspace 3)
  DS_WRITE_B128_gfx9 renamable $vgpr169, killed renamable $vgpr192_vgpr193_vgpr194_vgpr195, -8192, 0, implicit $exec :: (store (s128) into %ir.sunkaddr307, addrspace 3)
  S_CBRANCH_SCC1 %bb.47, implicit $scc

bb.48.Flow:
; predecessors: %bb.47
  successors: %bb.49(0x80000000); %bb.49(100.00%)
  liveins: $sgpr5, $vgpr0, $vgpr166, $vgpr175, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr90_vgpr91_vgpr92_vgpr93:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF
  renamable $vgpr229 = V_LSHRREV_B32_e32 4, $vgpr0, implicit $exec
  $vgpr230 = SCRATCH_LOAD_DWORD_ST 0, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.0, addrspace 5)
  $vgpr231 = SCRATCH_LOAD_DWORD_ST 4, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.1, addrspace 5)
  $vgpr232 = SCRATCH_LOAD_DWORD_ST 8, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.2, addrspace 5)
  $vgpr234_vgpr235 = SCRATCH_LOAD_DWORDX2_ST 12, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.3, align 4, addrspace 5)
  $vgpr233 = SCRATCH_LOAD_DWORD_ST 20, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.4, addrspace 5)
  renamable $vgpr236 = V_LSHRREV_B32_e32 3, $vgpr0, implicit $exec
  renamable $vgpr237 = V_AND_B32_e32 48, $vgpr0, implicit $exec
  $vgpr190_vgpr191 = SCRATCH_LOAD_DWORDX2_ST 24, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.5, align 4, addrspace 5)
  renamable $vgpr159 = V_AND_B32_e32 15, $vgpr0, implicit $exec
  renamable $vgpr192 = V_LSHLREV_B32_e32 4, $vgpr159, implicit $exec
  renamable $vgpr193 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr0, implicit $exec
  renamable $vgpr137 = nuw nsw V_LSHLREV_B32_e32 6, $vgpr0, implicit $exec

bb.49.Flow340:
; predecessors: %bb.45, %bb.48
  successors: %bb.50(0x40000000), %bb.51(0x40000000); %bb.50(50.00%), %bb.51(50.00%)
  liveins: $sgpr5, $vgpr0, $vgpr137, $vgpr159, $vgpr166, $vgpr175, $vgpr193, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr90_vgpr91_vgpr92_vgpr93:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF
  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
  renamable $vgpr178 = V_AND_B32_e32 496, $vgpr0, implicit $exec
  renamable $vgpr163 = V_AND_B32_e32 480, $vgpr0, implicit $exec
  $vgpr173 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  $vgpr171 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  $vgpr169 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  $vgpr191 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  S_WAITCNT 49279
  S_BARRIER
  renamable $vgpr177 = V_AND_B32_e32 14, $vgpr0, implicit $exec
  $vcc = S_AND_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr176 = nuw nsw V_LSHLREV_B32_e32 3, $vgpr177, implicit $exec
  S_CBRANCH_VCCNZ %bb.51, implicit $vcc

bb.50 (%ir-block.1360):
; predecessors: %bb.49
  successors: %bb.51(0x80000000); %bb.51(100.00%)
  liveins: $sgpr0, $sgpr5, $vgpr0, $vgpr137, $vgpr159, $vgpr163, $vgpr166, $vgpr175, $vgpr176, $vgpr177, $vgpr178, $vgpr193, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x000000000000000F, $vgpr172_vgpr173:0x000000000000000F, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x000000000000000F, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr90_vgpr91_vgpr92_vgpr93:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF
  renamable $vgpr1 = V_LSHL_ADD_U32_e64 $vgpr0, 2, 0, implicit $exec
  renamable $vgpr1 = V_ADD_U32_e32 98304, killed $vgpr1, implicit $exec
  renamable $vgpr146_vgpr147 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr1, 0, 8, 0, implicit $exec :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3)
  renamable $vgpr1 = nuw nsw V_LSHLREV_B32_e32 7, $vgpr159, implicit $exec
  renamable $vgpr130 = V_AND_B32_e32 28672, killed $vgpr137, implicit $exec
  renamable $vgpr131 = V_XOR_B32_e32 $vgpr176, $vgpr237, implicit $exec
  renamable $vgpr1 = disjoint V_OR3_B32_e64 killed $vgpr1, killed $vgpr130, killed $vgpr131, implicit $exec
  renamable $vgpr158 = nuw V_XAD_U32_e64 $vgpr1, 64, 0, implicit $exec
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = DS_READ_B128_gfx9 renamable $vgpr158, 0, 0, implicit $exec :: (load (s128) from %ir.1373, addrspace 3)
  renamable $vgpr1 = nuw V_ADD_U32_e32 0, killed $vgpr1, implicit $exec
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = DS_READ_B128_gfx9 renamable $vgpr1, 0, 0, implicit $exec :: (load (s128) from %ir.1381, addrspace 3)
  renamable $vgpr138 = V_MUL_U32_U24_e32 272, killed $vgpr159, implicit $exec
  renamable $vgpr138 = V_XOR_B32_e32 killed $vgpr138, $vgpr237, implicit $exec
  renamable $vgpr139 = V_XOR_B32_e32 192, $vgpr138, implicit $exec
  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc
  renamable $vgpr162 = nuw V_ADD_U32_e32 $sgpr1, killed $vgpr139, implicit $exec
  renamable $vgpr164 = nuw V_XAD_U32_e64 $vgpr138, 64, $sgpr1, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 0, 0, implicit $exec :: (load (s128) from %ir.1426, addrspace 3)
  renamable $vgpr165 = nuw V_ADD_U32_e32 $sgpr1, $vgpr138, implicit $exec
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 0, 0, implicit $exec :: (load (s128) from %ir.1442, addrspace 3)
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 0, 0, implicit $exec :: (load (s128) from %ir.1392, addrspace 3)
  renamable $sgpr2 = S_MOV_B32 117769732
  renamable $vgpr167 = V_PERM_B32_e64 $vgpr146, $vgpr146, $sgpr2, implicit $exec
  renamable $vgpr179 = V_MOV_B32_e32 127, implicit $exec
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr138 = V_XOR_B32_e32 128, killed $vgpr138, implicit $exec
  renamable $vgpr188 = nuw V_ADD_U32_e32 killed $sgpr1, killed $vgpr138, implicit $exec
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 0, 0, implicit $exec :: (load (s128) from %ir.1409, addrspace 3)
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = DS_READ_B128_gfx9 renamable $vgpr1, 2048, 0, implicit $exec :: (load (s128) from %ir.1386, addrspace 3)
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = DS_READ_B128_gfx9 renamable $vgpr158, 2048, 0, implicit $exec :: (load (s128) from %ir.1378, addrspace 3)
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = DS_READ_B128_gfx9 renamable $vgpr1, -32768, 0, implicit $exec :: (load (s128) from %ir.1384, addrspace 3)
  renamable $vgpr189 = V_PERM_B32_e64 killed $vgpr147, $vgpr147, killed $sgpr2, implicit $exec
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = DS_READ_B128_gfx9 renamable $vgpr158, -32768, 0, implicit $exec :: (load (s128) from %ir.1376, addrspace 3)
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = DS_READ_B128_gfx9 killed renamable $vgpr1, -30720, 0, implicit $exec :: (load (s128) from %ir.1382, addrspace 3)
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = DS_READ_B128_gfx9 killed renamable $vgpr158, -30720, 0, implicit $exec :: (load (s128) from %ir.1374, addrspace 3)
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 4096, 0, implicit $exec :: (load (s128) from %ir.1439, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 4096, 0, implicit $exec :: (load (s128) from %ir.1455, addrspace 3)
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 4096, 0, implicit $exec :: (load (s128) from %ir.1405, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 4096, 0, implicit $exec :: (load (s128) from %ir.1422, addrspace 3)
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 8192, 0, implicit $exec :: (load (s128) from %ir.1437, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 8192, 0, implicit $exec :: (load (s128) from %ir.1453, addrspace 3)
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 8192, 0, implicit $exec :: (load (s128) from %ir.1403, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 8192, 0, implicit $exec :: (load (s128) from %ir.1420, addrspace 3)
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr90_vgpr91_vgpr92_vgpr93, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr90_vgpr91_vgpr92_vgpr93, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 12288, 0, implicit $exec :: (load (s128) from %ir.1435, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 12288, 0, implicit $exec :: (load (s128) from %ir.1451, addrspace 3)
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 12288, 0, implicit $exec :: (load (s128) from %ir.1401, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 12288, 0, implicit $exec :: (load (s128) from %ir.1418, addrspace 3)
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 16384, 0, implicit $exec :: (load (s128) from %ir.1433, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 16384, 0, implicit $exec :: (load (s128) from %ir.1449, addrspace 3)
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 16384, 0, implicit $exec :: (load (s128) from %ir.1399, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 16384, 0, implicit $exec :: (load (s128) from %ir.1416, addrspace 3)
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 20480, 0, implicit $exec :: (load (s128) from %ir.1431, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 20480, 0, implicit $exec :: (load (s128) from %ir.1447, addrspace 3)
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 20480, 0, implicit $exec :: (load (s128) from %ir.1397, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 20480, 0, implicit $exec :: (load (s128) from %ir.1414, addrspace 3)
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 renamable $vgpr164, 24576, 0, implicit $exec :: (load (s128) from %ir.1429, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 renamable $vgpr165, 24576, 0, implicit $exec :: (load (s128) from %ir.1445, addrspace 3)
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 renamable $vgpr162, 24576, 0, implicit $exec :: (load (s128) from %ir.1395, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 renamable $vgpr188, 24576, 0, implicit $exec :: (load (s128) from %ir.1412, addrspace 3)
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr189, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = DS_READ_B128_gfx9 killed renamable $vgpr164, 28672, 0, implicit $exec :: (load (s128) from %ir.1427, addrspace 3)
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = DS_READ_B128_gfx9 killed renamable $vgpr165, 28672, 0, implicit $exec :: (load (s128) from %ir.1443, addrspace 3)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr167, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr204_vgpr205_vgpr206_vgpr207 = DS_READ_B128_gfx9 killed renamable $vgpr162, 28672, 0, implicit $exec :: (load (s128) from %ir.1393, addrspace 3)
  renamable $vgpr200_vgpr201_vgpr202_vgpr203 = DS_READ_B128_gfx9 killed renamable $vgpr188, 28672, 0, implicit $exec :: (load (s128) from %ir.1410, addrspace 3)
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr130_vgpr131_vgpr132_vgpr133, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr167, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr138_vgpr139_vgpr140_vgpr141, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr167, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr150_vgpr151_vgpr152_vgpr153, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, killed $vgpr167, $vgpr179, 12, 0, implicit $mode, implicit $exec
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr142_vgpr143_vgpr144_vgpr145, $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr189, $vgpr179, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr154_vgpr155_vgpr156_vgpr157, $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr189, $vgpr179, 4, 0, implicit $mode, implicit $exec
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr146_vgpr147_vgpr148_vgpr149, killed $vgpr180_vgpr181_vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr189, $vgpr179, 8, 0, implicit $mode, implicit $exec
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr158_vgpr159_vgpr160_vgpr161, killed $vgpr200_vgpr201_vgpr202_vgpr203_vgpr204_vgpr205_vgpr206_vgpr207, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, killed $vgpr189, killed $vgpr179, 12, 0, implicit $mode, implicit $exec

bb.51.._crit_edge._crit_edge:
; predecessors: %bb.50, %bb.49
  successors: %bb.52(0x80000000); %bb.52(100.00%)
  liveins: $sgpr0, $sgpr5, $vgpr0, $vgpr163, $vgpr166, $vgpr175, $vgpr176, $vgpr177, $vgpr178, $vgpr193, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x000000000000000F, $vgpr172_vgpr173:0x000000000000000F, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x000000000000000F, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr90_vgpr91_vgpr92_vgpr93:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF
  renamable $vgpr130 = V_OR_B32_e32 $sgpr18, $vgpr0, implicit $exec
  $vgpr131 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $vgpr175, killed $sgpr0, implicit $exec
  renamable $vgpr1 = V_ADD_U32_e32 killed $sgpr18, killed $vgpr1, implicit $exec
  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc
  renamable $sgpr19 = S_MOV_B32 159744
  renamable $sgpr18 = S_MOV_B32 2147483646
  renamable $vgpr1 = V_ADD_LSHL_U32_e64 killed $vgpr1, $vgpr0, 2, implicit $exec
  renamable $vgpr148 = V_BFREV_B32_e32 1, implicit $exec
  V_CMP_GT_I64_e32 $sgpr22_sgpr23, killed $vgpr130_vgpr131, implicit-def $vcc, implicit $exec
  renamable $vgpr1 = V_CNDMASK_B32_e32 $vgpr148, killed $vgpr1, implicit killed $vcc, implicit $exec
  renamable $vgpr1 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr1, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8)
  renamable $vgpr147 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr150 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr8_sgpr9, renamable $vgpr147, 0, 0, implicit $exec :: (load (s32) from %ir.13, addrspace 1)
  renamable $vgpr175 = V_ASHRREV_I32_e32 31, $vgpr174, implicit $exec
  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc
  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc
  renamable $sgpr4 = S_MOV_B32 65535
  renamable $vgpr130 = V_AND_B32_e32 96, killed $vgpr166, implicit $exec
  renamable $vgpr131 = V_AND_B32_e32 1932, killed $vgpr193, implicit $exec
  renamable $vgpr149 = V_AND_B32_e32 16, $vgpr0, implicit $exec
  renamable $vgpr132 = nuw V_LSHL_ADD_U32_e64 killed $vgpr178, 1, 0, implicit $exec
  renamable $vgpr146 = V_OR_B32_e32 $sgpr12, killed $vgpr192, implicit $exec
  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc
  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 killed $vgpr172_vgpr173, $vgpr174_vgpr175, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 killed $vgpr170_vgpr171, $vgpr174_vgpr175, implicit $exec
  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 killed $vgpr168_vgpr169, $vgpr174_vgpr175, implicit $exec
  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 killed $vgpr190_vgpr191, killed $vgpr174_vgpr175, implicit $exec
  renamable $vgpr130 = nuw V_ADD_U32_e32 0, killed $vgpr130, implicit $exec
  renamable $vgpr130 = nuw V_ADD3_U32_e64 killed $vgpr130, killed $vgpr131, $vgpr149, implicit $exec
  S_WAITCNT 49279
  S_BARRIER
  DS_WRITE_B32_gfx9 killed renamable $vgpr130, killed renamable $vgpr1, 0, 0, implicit $exec :: (store (s32) into %ir.2100, addrspace 3)
  ATOMIC_FENCE 5, 2
  S_BARRIER
  ATOMIC_FENCE 4, 2
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = DS_READ_B128_gfx9 renamable $vgpr132, 0, 0, implicit $exec :: (load (s128) from %ir.2102, addrspace 3)
  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = DS_READ_B128_gfx9 renamable $vgpr132, 16, 0, implicit $exec :: (load (s128) from %ir.2108, addrspace 3)
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = DS_READ_B128_gfx9 renamable $vgpr132, 1024, 0, implicit $exec :: (load (s128) from %ir.2114, addrspace 3)
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = DS_READ_B128_gfx9 killed renamable $vgpr132, 1040, 0, implicit $exec :: (load (s128) from %ir.2120, addrspace 3)
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 0, $vgpr122, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_FMA_F32_e64 0, $vgpr123, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr122 = nofpexcept V_FMA_F32_e64 0, $vgpr124, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_FMA_F32_e64 0, killed $vgpr125, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr123 = nofpexcept V_FMA_F32_e64 0, $vgpr126, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 0, $vgpr127, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr124 = nofpexcept V_FMA_F32_e64 0, $vgpr128, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 0, killed $vgpr129, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr118 = nofpexcept V_FMA_F32_e64 0, $vgpr118, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 0, $vgpr119, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr119 = nofpexcept V_FMA_F32_e64 0, $vgpr120, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 0, killed $vgpr121, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr114 = nofpexcept V_FMA_F32_e64 0, $vgpr114, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 0, $vgpr115, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr115 = nofpexcept V_FMA_F32_e64 0, $vgpr116, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 0, killed $vgpr117, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr110 = nofpexcept V_FMA_F32_e64 0, $vgpr110, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 0, $vgpr111, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr111 = nofpexcept V_FMA_F32_e64 0, $vgpr112, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 0, killed $vgpr113, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr106 = nofpexcept V_FMA_F32_e64 0, $vgpr106, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 0, $vgpr107, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr107 = nofpexcept V_FMA_F32_e64 0, $vgpr108, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 0, killed $vgpr109, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr102 = nofpexcept V_FMA_F32_e64 0, $vgpr102, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 0, $vgpr103, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr103 = nofpexcept V_FMA_F32_e64 0, $vgpr104, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 0, killed $vgpr105, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr98 = nofpexcept V_FMA_F32_e64 0, $vgpr98, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 0, $vgpr99, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr99 = nofpexcept V_FMA_F32_e64 0, $vgpr100, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 0, killed $vgpr101, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr94 = nofpexcept V_FMA_F32_e64 0, $vgpr94, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 0, $vgpr95, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr95 = nofpexcept V_FMA_F32_e64 0, $vgpr96, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 0, killed $vgpr97, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr96 = nofpexcept V_FMA_F32_e64 0, $vgpr90, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 0, $vgpr91, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr97 = nofpexcept V_FMA_F32_e64 0, $vgpr92, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 0, killed $vgpr93, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr100 = nofpexcept V_FMA_F32_e64 0, $vgpr86, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 0, $vgpr87, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr101 = nofpexcept V_FMA_F32_e64 0, $vgpr88, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 0, killed $vgpr89, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr104 = nofpexcept V_FMA_F32_e64 0, $vgpr82, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 0, $vgpr83, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr105 = nofpexcept V_FMA_F32_e64 0, $vgpr84, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 0, killed $vgpr85, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_FMA_F32_e64 0, $vgpr78, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_FMA_F32_e64 0, $vgpr79, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_FMA_F32_e64 0, $vgpr80, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr178 = nofpexcept V_FMA_F32_e64 0, killed $vgpr81, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 0, $vgpr74, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 0, $vgpr75, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 0, $vgpr76, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_FMA_F32_e64 0, killed $vgpr77, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 0, $vgpr70, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr179 = nofpexcept V_FMA_F32_e64 0, $vgpr71, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 0, $vgpr72, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr180 = nofpexcept V_FMA_F32_e64 0, killed $vgpr73, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 0, $vgpr66, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 0, $vgpr67, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 0, $vgpr68, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr181 = nofpexcept V_FMA_F32_e64 0, killed $vgpr69, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 0, $vgpr62, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 0, $vgpr63, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 0, $vgpr64, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 0, killed $vgpr65, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 0, $vgpr58, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 0, $vgpr59, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 0, $vgpr60, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 0, killed $vgpr61, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 0, $vgpr54, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 0, $vgpr55, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 0, $vgpr56, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 0, killed $vgpr57, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 0, $vgpr50, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 0, $vgpr51, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 0, $vgpr52, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 0, killed $vgpr53, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 0, $vgpr46, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 0, $vgpr47, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 0, $vgpr48, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 0, killed $vgpr49, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 0, $vgpr42, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 0, $vgpr43, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 0, $vgpr44, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 0, killed $vgpr45, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 0, $vgpr38, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 0, $vgpr39, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 0, $vgpr40, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 0, killed $vgpr41, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 0, $vgpr34, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 0, $vgpr35, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 0, $vgpr36, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 0, killed $vgpr37, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 0, $vgpr30, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 0, $vgpr31, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 0, $vgpr32, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 0, killed $vgpr33, 0, $vgpr150, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 0, $vgpr26, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 0, $vgpr27, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 0, $vgpr28, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 0, killed $vgpr29, 0, $vgpr150, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 0, $vgpr22, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 0, $vgpr23, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 0, $vgpr24, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 0, killed $vgpr25, 0, $vgpr150, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 0, $vgpr14, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 0, $vgpr15, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 0, $vgpr16, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 0, killed $vgpr17, 0, $vgpr150, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 0, $vgpr10, 0, $vgpr150, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 0, $vgpr11, 0, $vgpr150, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 0, $vgpr12, 0, $vgpr150, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr13, $vgpr150, $vgpr141(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 0, $vgpr6, 0, $vgpr150, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 0, $vgpr7, 0, $vgpr150, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 0, $vgpr8, 0, $vgpr150, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr9, $vgpr150, $vgpr145(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_FMA_F32_e64 0, $vgpr18, 0, $vgpr150, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 0, $vgpr19, 0, $vgpr150, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 0, $vgpr20, 0, $vgpr150, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr21, $vgpr150, $vgpr137(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_FMA_F32_e64 0, $vgpr2, 0, $vgpr150, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 0, $vgpr3, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 0, $vgpr4, 0, $vgpr150, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, killed $vgpr150, $vgpr133(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr5 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_MIN_F32_e32 killed $vgpr1, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr182 = nofpexcept V_MIN_F32_e32 killed $vgpr122, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr183 = nofpexcept V_MIN_F32_e32 killed $vgpr123, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr184 = nofpexcept V_MIN_F32_e32 killed $vgpr124, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr185 = nofpexcept V_MIN_F32_e32 killed $vgpr118, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr186 = nofpexcept V_MIN_F32_e32 killed $vgpr119, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr187 = nofpexcept V_MIN_F32_e32 killed $vgpr114, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr81 = nofpexcept V_MIN_F32_e32 killed $vgpr115, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr82 = nofpexcept V_MIN_F32_e32 killed $vgpr110, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr83 = nofpexcept V_MIN_F32_e32 killed $vgpr111, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr84 = nofpexcept V_MIN_F32_e32 killed $vgpr106, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr85 = nofpexcept V_MIN_F32_e32 killed $vgpr107, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr86 = nofpexcept V_MIN_F32_e32 killed $vgpr102, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr87 = nofpexcept V_MIN_F32_e32 killed $vgpr103, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr88 = nofpexcept V_MIN_F32_e32 killed $vgpr98, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr89 = nofpexcept V_MIN_F32_e32 killed $vgpr99, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr90 = nofpexcept V_MIN_F32_e32 killed $vgpr94, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr91 = nofpexcept V_MIN_F32_e32 killed $vgpr95, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr92 = nofpexcept V_MIN_F32_e32 killed $vgpr96, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr93 = nofpexcept V_MIN_F32_e32 killed $vgpr97, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr94 = nofpexcept V_MIN_F32_e32 killed $vgpr100, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr95 = nofpexcept V_MIN_F32_e32 killed $vgpr101, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr96 = nofpexcept V_MIN_F32_e32 killed $vgpr104, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr97 = nofpexcept V_MIN_F32_e32 killed $vgpr105, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr98 = nofpexcept V_MIN_F32_e32 killed $vgpr78, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr99 = nofpexcept V_MIN_F32_e32 killed $vgpr80, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr100 = nofpexcept V_MIN_F32_e32 killed $vgpr74, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr101 = nofpexcept V_MIN_F32_e32 killed $vgpr76, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr102 = nofpexcept V_MIN_F32_e32 killed $vgpr70, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr103 = nofpexcept V_MIN_F32_e32 killed $vgpr71, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr104 = nofpexcept V_MIN_F32_e32 killed $vgpr66, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr105 = nofpexcept V_MIN_F32_e32 killed $vgpr68, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr106 = nofpexcept V_MIN_F32_e32 killed $vgpr62, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr107 = nofpexcept V_MIN_F32_e32 killed $vgpr64, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr108 = nofpexcept V_MIN_F32_e32 killed $vgpr58, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr109 = nofpexcept V_MIN_F32_e32 killed $vgpr60, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr110 = nofpexcept V_MIN_F32_e32 killed $vgpr54, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr111 = nofpexcept V_MIN_F32_e32 killed $vgpr56, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr112 = nofpexcept V_MIN_F32_e32 killed $vgpr50, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr113 = nofpexcept V_MIN_F32_e32 killed $vgpr52, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr114 = nofpexcept V_MIN_F32_e32 killed $vgpr46, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr115 = nofpexcept V_MIN_F32_e32 killed $vgpr48, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr116 = nofpexcept V_MIN_F32_e32 killed $vgpr42, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr117 = nofpexcept V_MIN_F32_e32 killed $vgpr44, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr118 = nofpexcept V_MIN_F32_e32 killed $vgpr38, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr119 = nofpexcept V_MIN_F32_e32 killed $vgpr40, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr120 = nofpexcept V_MIN_F32_e32 killed $vgpr34, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr121 = nofpexcept V_MIN_F32_e32 killed $vgpr36, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr122 = nofpexcept V_MIN_F32_e32 killed $vgpr30, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr123 = nofpexcept V_MIN_F32_e32 killed $vgpr32, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr124 = nofpexcept V_MIN_F32_e32 killed $vgpr26, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr125 = nofpexcept V_MIN_F32_e32 killed $vgpr28, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr126 = nofpexcept V_MIN_F32_e32 killed $vgpr22, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr127 = nofpexcept V_MIN_F32_e32 killed $vgpr24, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr128 = nofpexcept V_MIN_F32_e32 killed $vgpr14, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr129 = nofpexcept V_MIN_F32_e32 killed $vgpr16, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr73 = nofpexcept V_MIN_F32_e32 killed $vgpr10, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr72 = nofpexcept V_MIN_F32_e32 killed $vgpr12, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr71 = nofpexcept V_MIN_F32_e32 killed $vgpr6, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr70 = nofpexcept V_MIN_F32_e32 killed $vgpr8, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_MIN_F32_e32 killed $vgpr9, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr68 = nofpexcept V_MIN_F32_e32 killed $vgpr18, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr3 = nofpexcept V_MIN_F32_e32 killed $vgpr2, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr2 = nofpexcept V_MIN_F32_e32 killed $vgpr4, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr4 = nofpexcept V_MIN_F32_e32 killed $vgpr151, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_MIN_F32_e32 killed $vgpr152, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_MIN_F32_e32 killed $vgpr153, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_MIN_F32_e32 killed $vgpr154, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_MIN_F32_e32 killed $vgpr155, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_MIN_F32_e32 killed $vgpr156, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_MIN_F32_e32 killed $vgpr157, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_MIN_F32_e32 killed $vgpr158, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_MIN_F32_e32 killed $vgpr159, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_MIN_F32_e32 killed $vgpr160, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MIN_F32_e32 killed $vgpr161, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_MIN_F32_e32 killed $vgpr162, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_MIN_F32_e32 killed $vgpr164, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_MIN_F32_e32 killed $vgpr165, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_MIN_F32_e32 killed $vgpr166, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_MIN_F32_e32 killed $vgpr167, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_MIN_F32_e32 killed $vgpr168, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_MIN_F32_e32 killed $vgpr169, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_MIN_F32_e32 killed $vgpr170, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_MIN_F32_e32 killed $vgpr171, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_MIN_F32_e32 killed $vgpr172, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_MIN_F32_e32 killed $vgpr173, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_MIN_F32_e32 killed $vgpr174, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_MIN_F32_e32 killed $vgpr175, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_MIN_F32_e32 killed $vgpr79, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_MIN_F32_e32 killed $vgpr178, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_MIN_F32_e32 killed $vgpr75, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_MIN_F32_e32 killed $vgpr77, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_MIN_F32_e32 killed $vgpr179, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_MIN_F32_e32 killed $vgpr180, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_MIN_F32_e32 killed $vgpr67, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_MIN_F32_e32 killed $vgpr181, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_MIN_F32_e32 killed $vgpr63, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_MIN_F32_e32 killed $vgpr65, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_MIN_F32_e32 killed $vgpr59, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_MIN_F32_e32 killed $vgpr61, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_MIN_F32_e32 killed $vgpr55, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_MIN_F32_e32 killed $vgpr57, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_MIN_F32_e32 killed $vgpr51, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_MIN_F32_e32 killed $vgpr53, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_MIN_F32_e32 killed $vgpr47, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_MIN_F32_e32 killed $vgpr49, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_MIN_F32_e32 killed $vgpr43, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_MIN_F32_e32 killed $vgpr45, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_MIN_F32_e32 killed $vgpr39, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_MIN_F32_e32 killed $vgpr41, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_MIN_F32_e32 killed $vgpr35, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_MIN_F32_e32 killed $vgpr37, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_MIN_F32_e32 killed $vgpr31, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_MIN_F32_e32 killed $vgpr33, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_MIN_F32_e32 killed $vgpr27, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_MIN_F32_e32 killed $vgpr29, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr130 = nofpexcept V_MIN_F32_e32 killed $vgpr23, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr131 = nofpexcept V_MIN_F32_e32 killed $vgpr25, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr132 = nofpexcept V_MIN_F32_e32 killed $vgpr15, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_MIN_F32_e32 killed $vgpr17, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_MIN_F32_e32 killed $vgpr11, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_MIN_F32_e32 killed $vgpr141, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_MIN_F32_e32 killed $vgpr7, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_MIN_F32_e32 killed $vgpr145, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_MIN_F32_e32 killed $vgpr13, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_MIN_F32_e32 killed $vgpr137, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_MIN_F32_e32 killed $vgpr19, $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_MIN_F32_e32 killed $vgpr133, killed $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr4 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr4, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr5 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr6, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr8, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr7 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr9, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr10, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr12, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr14, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr16, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr18, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr20, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr21, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr22, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr24, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr26, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr28, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr30, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr32, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr34, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr36, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr38, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr132, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr138, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr139, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr140, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr137, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr141, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr74 = V_MOV_B32_e32 -1078416837, implicit $exec
  renamable $vgpr74 = nofpexcept V_MUL_F32_e32 killed $sgpr14, killed $vgpr74, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr1, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr182, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr183, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr184, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr185, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr186, implicit $mode, implicit $exec
  renamable $vgpr130 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr187, implicit $mode, implicit $exec
  renamable $vgpr131 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr81, implicit $mode, implicit $exec
  renamable $vgpr132 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr82, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr83, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr84, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr85, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr86, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr87, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr88, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr89, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr90, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr91, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr92, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr93, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr94, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr95, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr96, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr97, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr98, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr99, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr100, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr101, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr102, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr103, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr104, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr105, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr106, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr107, implicit $mode, implicit $exec
  renamable $vgpr162 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr108, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr109, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr110, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr111, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr112, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr113, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr114, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr115, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr116, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr117, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr118, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr119, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr120, implicit $mode, implicit $exec
  renamable $vgpr178 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr121, implicit $mode, implicit $exec
  renamable $vgpr179 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr122, implicit $mode, implicit $exec
  renamable $vgpr180 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr123, implicit $mode, implicit $exec
  renamable $vgpr181 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr124, implicit $mode, implicit $exec
  renamable $vgpr188 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr125, implicit $mode, implicit $exec
  renamable $vgpr189 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr126, implicit $mode, implicit $exec
  renamable $vgpr190 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr127, implicit $mode, implicit $exec
  renamable $vgpr191 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr128, implicit $mode, implicit $exec
  renamable $vgpr192 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr129, implicit $mode, implicit $exec
  renamable $vgpr193 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr73, implicit $mode, implicit $exec
  renamable $vgpr194 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr72, implicit $mode, implicit $exec
  renamable $vgpr195 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr71, implicit $mode, implicit $exec
  renamable $vgpr196 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr70, implicit $mode, implicit $exec
  renamable $vgpr197 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr69, implicit $mode, implicit $exec
  renamable $vgpr198 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr68, implicit $mode, implicit $exec
  renamable $vgpr199 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr3, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_MUL_F32_e32 killed $vgpr74, $vgpr2, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_EXP_F32_e32 killed $vgpr75, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_EXP_F32_e32 killed $vgpr76, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_EXP_F32_e32 killed $vgpr77, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_EXP_F32_e32 killed $vgpr78, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_EXP_F32_e32 killed $vgpr79, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_EXP_F32_e32 killed $vgpr80, implicit $mode, implicit $exec
  renamable $vgpr130 = nofpexcept V_EXP_F32_e32 killed $vgpr130, implicit $mode, implicit $exec
  renamable $vgpr131 = nofpexcept V_EXP_F32_e32 killed $vgpr131, implicit $mode, implicit $exec
  renamable $vgpr132 = nofpexcept V_EXP_F32_e32 killed $vgpr132, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_EXP_F32_e32 killed $vgpr133, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_EXP_F32_e32 killed $vgpr134, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_EXP_F32_e32 killed $vgpr135, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_EXP_F32_e32 killed $vgpr136, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_EXP_F32_e32 killed $vgpr137, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_EXP_F32_e32 killed $vgpr138, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_EXP_F32_e32 killed $vgpr139, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_EXP_F32_e32 killed $vgpr140, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_EXP_F32_e32 killed $vgpr141, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_EXP_F32_e32 killed $vgpr142, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_EXP_F32_e32 killed $vgpr143, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_EXP_F32_e32 killed $vgpr144, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_EXP_F32_e32 killed $vgpr145, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_EXP_F32_e32 killed $vgpr150, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_EXP_F32_e32 killed $vgpr151, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_EXP_F32_e32 killed $vgpr152, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_EXP_F32_e32 killed $vgpr153, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_EXP_F32_e32 killed $vgpr154, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_EXP_F32_e32 killed $vgpr155, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_EXP_F32_e32 killed $vgpr156, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_EXP_F32_e32 killed $vgpr157, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_EXP_F32_e32 killed $vgpr158, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_EXP_F32_e32 killed $vgpr159, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_EXP_F32_e32 killed $vgpr160, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_EXP_F32_e32 killed $vgpr161, implicit $mode, implicit $exec
  renamable $vgpr162 = nofpexcept V_EXP_F32_e32 killed $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_EXP_F32_e32 killed $vgpr164, implicit $mode, implicit $exec
  renamable $vgpr200 = nofpexcept V_EXP_F32_e32 killed $vgpr165, implicit $mode, implicit $exec
  renamable $vgpr201 = nofpexcept V_EXP_F32_e32 killed $vgpr166, implicit $mode, implicit $exec
  renamable $vgpr202 = nofpexcept V_EXP_F32_e32 killed $vgpr167, implicit $mode, implicit $exec
  renamable $vgpr203 = nofpexcept V_EXP_F32_e32 killed $vgpr168, implicit $mode, implicit $exec
  renamable $vgpr204 = nofpexcept V_EXP_F32_e32 killed $vgpr169, implicit $mode, implicit $exec
  renamable $vgpr205 = nofpexcept V_EXP_F32_e32 killed $vgpr170, implicit $mode, implicit $exec
  renamable $vgpr206 = nofpexcept V_EXP_F32_e32 killed $vgpr171, implicit $mode, implicit $exec
  renamable $vgpr207 = nofpexcept V_EXP_F32_e32 killed $vgpr172, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_EXP_F32_e32 killed $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_EXP_F32_e32 killed $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_EXP_F32_e32 killed $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr178 = nofpexcept V_EXP_F32_e32 killed $vgpr178, implicit $mode, implicit $exec
  renamable $vgpr179 = nofpexcept V_EXP_F32_e32 killed $vgpr179, implicit $mode, implicit $exec
  renamable $vgpr180 = nofpexcept V_EXP_F32_e32 killed $vgpr180, implicit $mode, implicit $exec
  renamable $vgpr181 = nofpexcept V_EXP_F32_e32 killed $vgpr181, implicit $mode, implicit $exec
  renamable $vgpr188 = nofpexcept V_EXP_F32_e32 killed $vgpr188, implicit $mode, implicit $exec
  renamable $vgpr189 = nofpexcept V_EXP_F32_e32 killed $vgpr189, implicit $mode, implicit $exec
  renamable $vgpr190 = nofpexcept V_EXP_F32_e32 killed $vgpr190, implicit $mode, implicit $exec
  renamable $vgpr191 = nofpexcept V_EXP_F32_e32 killed $vgpr191, implicit $mode, implicit $exec
  renamable $vgpr192 = nofpexcept V_EXP_F32_e32 killed $vgpr192, implicit $mode, implicit $exec
  renamable $vgpr193 = nofpexcept V_EXP_F32_e32 killed $vgpr193, implicit $mode, implicit $exec
  renamable $vgpr194 = nofpexcept V_EXP_F32_e32 killed $vgpr194, implicit $mode, implicit $exec
  renamable $vgpr195 = nofpexcept V_EXP_F32_e32 killed $vgpr195, implicit $mode, implicit $exec
  renamable $vgpr196 = nofpexcept V_EXP_F32_e32 killed $vgpr196, implicit $mode, implicit $exec
  renamable $vgpr197 = nofpexcept V_EXP_F32_e32 killed $vgpr197, implicit $mode, implicit $exec
  renamable $vgpr198 = nofpexcept V_EXP_F32_e32 killed $vgpr198, implicit $mode, implicit $exec
  renamable $vgpr199 = nofpexcept V_EXP_F32_e32 killed $vgpr199, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_EXP_F32_e32 killed $vgpr74, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr75, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr76, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr77, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr78, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr79, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr80, implicit $mode, implicit $exec
  renamable $vgpr208 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr130, implicit $mode, implicit $exec
  renamable $vgpr209 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr131, implicit $mode, implicit $exec
  renamable $vgpr210 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr132, implicit $mode, implicit $exec
  renamable $vgpr211 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr133, implicit $mode, implicit $exec
  renamable $vgpr212 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr134, implicit $mode, implicit $exec
  renamable $vgpr213 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr135, implicit $mode, implicit $exec
  renamable $vgpr214 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr136, implicit $mode, implicit $exec
  renamable $vgpr215 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr137, implicit $mode, implicit $exec
  renamable $vgpr216 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr138, implicit $mode, implicit $exec
  renamable $vgpr217 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr139, implicit $mode, implicit $exec
  renamable $vgpr218 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr140, implicit $mode, implicit $exec
  renamable $vgpr219 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr141, implicit $mode, implicit $exec
  renamable $vgpr220 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr142, implicit $mode, implicit $exec
  renamable $vgpr221 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr143, implicit $mode, implicit $exec
  renamable $vgpr222 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr144, implicit $mode, implicit $exec
  renamable $vgpr223 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr145, implicit $mode, implicit $exec
  renamable $vgpr224 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr150, implicit $mode, implicit $exec
  renamable $vgpr225 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr151, implicit $mode, implicit $exec
  renamable $vgpr226 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr152, implicit $mode, implicit $exec
  renamable $vgpr227 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr153, implicit $mode, implicit $exec
  renamable $vgpr228 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr154, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr155, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr156, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr157, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr158, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr159, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr160, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr161, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr164, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr200, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr201, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr202, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr203, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr204, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr205, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr206, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr207, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr178, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr179, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr180, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr181, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr188, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr189, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr190, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr191, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr192, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr193, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr194, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr195, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr196, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr197, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr75, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr132 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr198, implicit $mode, implicit $exec
  renamable $vgpr131 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr199, implicit $mode, implicit $exec
  renamable $vgpr130 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr74, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr74, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr74, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr1, 0, $vgpr75, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_MUL_F32_e32 $vgpr74, $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr173, killed $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr174, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr76, 0, $vgpr182, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr74, 0, killed $vgpr173, 0, killed $vgpr174, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr74 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr74, 0, killed $vgpr75, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr182, 0, $vgpr76, 0, $vgpr182, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr75, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr175, killed $vgpr75(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr75, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr77, 0, $vgpr183, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr75 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr76, 0, killed $vgpr182, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr183, 0, $vgpr77, 0, $vgpr183, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr76, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr173, killed $vgpr76(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr76, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr78, 0, $vgpr184, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr173, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr76 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr77, 0, killed $vgpr183, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr184, 0, $vgpr78, 0, $vgpr184, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr77, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr174, killed $vgpr77(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr77, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr79, 0, $vgpr185, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr77 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr78, 0, killed $vgpr184, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr185, 0, $vgpr79, 0, $vgpr185, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr78, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr173, killed $vgpr78(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr78, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr80, 0, $vgpr186, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr173, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr78 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr79, 0, killed $vgpr185, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr186, 0, $vgpr80, 0, $vgpr186, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr79, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr174, killed $vgpr79(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr79, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr208, 0, $vgpr208, 0, $vgpr187, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr79 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr80, 0, killed $vgpr186, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr187, 0, $vgpr208, 0, $vgpr187, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr80, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr173, killed $vgpr80(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr80, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr209, 0, $vgpr209, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr173, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr80 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr208, 0, killed $vgpr187, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr209, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr210, 0, $vgpr210, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr81 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr209, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr210, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr211, 0, $vgpr211, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr82 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr210, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr211, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr212, 0, $vgpr212, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr83 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr211, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr212, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr213, 0, $vgpr213, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr84 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr212, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr213, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr214, 0, $vgpr214, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr85 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr213, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr214, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr215, 0, $vgpr215, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr86 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr214, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr215, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr216, 0, $vgpr216, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr87 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr215, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr216, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr217, 0, $vgpr217, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr88 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr216, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr217, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr218, 0, $vgpr218, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr89 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr217, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr218, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr219, 0, $vgpr219, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr90 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr218, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr219, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr220, 0, $vgpr220, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr91 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr219, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr220, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr221, 0, $vgpr221, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr92 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr220, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr221, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr222, 0, $vgpr222, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr93 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr221, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr222, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr223, 0, $vgpr223, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr94 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr222, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr223, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr224, 0, $vgpr224, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr95 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr223, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr224, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr225, 0, $vgpr225, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr96 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr224, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr225, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr226, 0, $vgpr226, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr97 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr225, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr226, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr227, 0, $vgpr227, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr98 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr226, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr227, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr228, 0, $vgpr228, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr99 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr227, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr228, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr175, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr172, 0, $vgpr172, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr100 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr228, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr172, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr174, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr174, killed $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr171, 0, $vgpr171, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr174, 0, killed $vgpr173, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr101 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr172, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr171, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr175, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr172, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr175, killed $vgpr172(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr172, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr170, 0, $vgpr170, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr175, 0, killed $vgpr172, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr102 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr171, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr170, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr173, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr171, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_FMAC_F32_e32 killed $vgpr172, $vgpr173, killed $vgpr171(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr171, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr169, 0, $vgpr169, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr173, 0, killed $vgpr171, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr103 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr170, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr172, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr172 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr172, $vgpr172(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr169, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr172, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr170, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_FMAC_F32_e32 killed $vgpr171, $vgpr172, killed $vgpr170(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr170, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr168, 0, $vgpr168, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr172, 0, killed $vgpr170, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr104 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr169, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr171, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr171 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr171, $vgpr171(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr168, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr171, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr169, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_FMAC_F32_e32 killed $vgpr170, $vgpr171, killed $vgpr169(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr169, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr167, 0, $vgpr167, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr171, 0, killed $vgpr169, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr105 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr168, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr170, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr170 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr170, $vgpr170(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr167, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr170, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr168, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_FMAC_F32_e32 killed $vgpr169, $vgpr170, killed $vgpr168(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr168, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr166, 0, $vgpr166, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr170, 0, killed $vgpr168, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr106 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr167, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr169, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr169 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr169, $vgpr169(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr166, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr169, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr167, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_FMAC_F32_e32 killed $vgpr168, $vgpr169, killed $vgpr167(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr167, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr165, 0, $vgpr165, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr169, 0, killed $vgpr167, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr107 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr166, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr168, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr168 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr168, $vgpr168(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr165, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr168, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr166, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_FMAC_F32_e32 killed $vgpr167, $vgpr168, killed $vgpr166(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr166, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr164, 0, $vgpr164, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr168, 0, killed $vgpr166, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr108 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr165, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr167, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr167 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr167, $vgpr167(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr164, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr167, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr165, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_FMAC_F32_e32 killed $vgpr166, $vgpr167, killed $vgpr165(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr165, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr161, 0, $vgpr161, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr167, 0, killed $vgpr165, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr109 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr164, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr166, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr166 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr166, $vgpr166(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr161, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr166, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr164, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_FMAC_F32_e32 killed $vgpr165, $vgpr166, killed $vgpr164(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr164, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr160, 0, $vgpr160, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr166, 0, killed $vgpr164, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr110 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr161, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr165, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr165 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr165, $vgpr165(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr160, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr165, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr161, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_FMAC_F32_e32 killed $vgpr164, $vgpr165, killed $vgpr161(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr161, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr159, 0, $vgpr159, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr165, 0, killed $vgpr161, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr111 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr160, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr164, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr164 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr164, $vgpr164(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr159, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr164, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr160, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_FMAC_F32_e32 killed $vgpr161, $vgpr164, killed $vgpr160(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr160, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr161, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr158, 0, $vgpr158, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162 = nofpexcept V_RCP_F32_e32 $vgpr161, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr164, 0, killed $vgpr160, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr112 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr159, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr162, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr162 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr162, $vgpr162(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr158, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr162, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr159, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_FMAC_F32_e32 killed $vgpr160, $vgpr162, killed $vgpr159(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr161, 0, $vgpr159, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr160, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr157, 0, $vgpr157, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_RCP_F32_e32 $vgpr160, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr162, 0, killed $vgpr159, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr113 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr158, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr161, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr161 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr161, $vgpr161(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr157, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr161, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr158, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_FMAC_F32_e32 killed $vgpr159, $vgpr161, killed $vgpr158(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr160, 0, $vgpr158, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr159, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr156, 0, $vgpr156, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_RCP_F32_e32 $vgpr159, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr161, 0, killed $vgpr158, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr114 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr157, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr160, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr160 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr160, $vgpr160(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr156, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr160, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr157, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_FMAC_F32_e32 killed $vgpr158, $vgpr160, killed $vgpr157(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr159, 0, $vgpr157, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr158, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr155, 0, $vgpr155, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_RCP_F32_e32 $vgpr158, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr160, 0, killed $vgpr157, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr115 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr156, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr159, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr159 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr159, $vgpr159(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr155, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr159, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr156, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_FMAC_F32_e32 killed $vgpr157, $vgpr159, killed $vgpr156(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr158, 0, $vgpr156, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr157, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr154, 0, $vgpr154, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_RCP_F32_e32 $vgpr157, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr159, 0, killed $vgpr156, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr116 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr155, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr158, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr158 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr158, $vgpr158(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr154, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr158, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr155, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_FMAC_F32_e32 killed $vgpr156, $vgpr158, killed $vgpr155(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr157, 0, $vgpr155, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr156, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr153, 0, $vgpr153, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_RCP_F32_e32 $vgpr156, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr158, 0, killed $vgpr155, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr117 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr154, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr157, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr157 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr157, $vgpr157(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr153, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr157, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr154, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_FMAC_F32_e32 killed $vgpr155, $vgpr157, killed $vgpr154(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr156, 0, $vgpr154, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr155, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr152, 0, $vgpr152, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_RCP_F32_e32 $vgpr155, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr157, 0, killed $vgpr154, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr118 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr153, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr156, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr156 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr156, $vgpr156(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr152, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr156, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr153, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_FMAC_F32_e32 killed $vgpr154, $vgpr156, killed $vgpr153(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr155, 0, $vgpr153, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr151, 0, $vgpr151, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_RCP_F32_e32 $vgpr154, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr156, 0, killed $vgpr153, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr119 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr152, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr155, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr155 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr155, $vgpr155(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr151, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr155, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr152, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_FMAC_F32_e32 killed $vgpr153, $vgpr155, killed $vgpr152(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr154, 0, $vgpr152, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr153, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr150, 0, $vgpr150, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_RCP_F32_e32 $vgpr153, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr155, 0, killed $vgpr152, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr120 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr151, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr154, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr154 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr154, $vgpr154(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr150, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr154, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr151, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_FMAC_F32_e32 killed $vgpr152, $vgpr154, killed $vgpr151(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr153, 0, $vgpr151, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr152, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr145, 0, $vgpr145, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_RCP_F32_e32 $vgpr152, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr154, 0, killed $vgpr151, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr121 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr150, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr152, 0, $vgpr153, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr153 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr153, $vgpr153(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr145, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr153, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_FMA_F32_e64 1, $vgpr152, 0, $vgpr150, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_FMAC_F32_e32 killed $vgpr151, $vgpr153, killed $vgpr150(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr152, 0, $vgpr150, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr151, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr144, 0, $vgpr144, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_RCP_F32_e32 $vgpr151, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr153, 0, killed $vgpr150, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr122 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr145, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr151, 0, $vgpr152, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr152 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr152, $vgpr152(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr144, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr152, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_FMA_F32_e64 1, $vgpr151, 0, $vgpr145, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr150, $vgpr152, killed $vgpr145(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr151, 0, $vgpr145, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr150, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr143, 0, $vgpr143, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_RCP_F32_e32 $vgpr150, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr152, 0, killed $vgpr145, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr123 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr144, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr150, 0, $vgpr151, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr151 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr151, $vgpr151(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr143, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr151, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 1, $vgpr150, 0, $vgpr144, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_FMAC_F32_e32 killed $vgpr145, $vgpr151, killed $vgpr144(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr150, 0, $vgpr144, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr145, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr142, 0, $vgpr142, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_RCP_F32_e32 $vgpr145, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr151, 0, killed $vgpr144, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr124 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr143, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr150, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr150 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr150, $vgpr150(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr142, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr150, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr143, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_FMAC_F32_e32 killed $vgpr144, $vgpr150, killed $vgpr143(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr145, 0, $vgpr143, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr144, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr141, 0, $vgpr141, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_RCP_F32_e32 $vgpr144, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr150, 0, killed $vgpr143, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr125 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr142, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr145, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr145, $vgpr145(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr141, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr145, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr142, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr143, $vgpr145, killed $vgpr142(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr144, 0, $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr143, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr140, 0, $vgpr140, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_RCP_F32_e32 $vgpr143, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr145, 0, killed $vgpr142, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr126 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr141, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr144, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr144 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr144, $vgpr144(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr140, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr144, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr141, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr142, $vgpr144, killed $vgpr141(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr143, 0, $vgpr141, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr142, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_RCP_F32_e32 $vgpr142, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr144, 0, killed $vgpr141, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr127 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr140, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr143, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr143 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr143, $vgpr143(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr143, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr140, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_FMAC_F32_e32 killed $vgpr141, $vgpr143, killed $vgpr140(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr142, 0, $vgpr140, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr141, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr138, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr141, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr143, 0, killed $vgpr140, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr128 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr139, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr138, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr142, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr139, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_FMAC_F32_e32 killed $vgpr140, $vgpr142, killed $vgpr139(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr141, 0, $vgpr139, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr137, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr142, 0, killed $vgpr139, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr129 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr138, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr141, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr141, $vgpr141(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr73, 0, $vgpr137, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr141, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr138, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_FMAC_F32_e32 killed $vgpr139, $vgpr141, killed $vgpr138(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr138, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr139, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr136, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_RCP_F32_e32 $vgpr139, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr141, 0, killed $vgpr138, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr73 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr137, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr139, 0, $vgpr140, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr140 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr140, $vgpr140(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr72, 0, $vgpr136, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr140, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 1, $vgpr139, 0, $vgpr137, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr138, $vgpr140, killed $vgpr137(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr139, 0, $vgpr137, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr138, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr135, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_RCP_F32_e32 $vgpr138, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr140, 0, killed $vgpr137, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr72 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr136, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr138, 0, $vgpr139, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr139 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr139, $vgpr139(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr71, 0, $vgpr135, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr139, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_FMA_F32_e64 1, $vgpr138, 0, $vgpr136, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr137, $vgpr139, killed $vgpr136(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr138, 0, $vgpr136, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr137, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr134, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_RCP_F32_e32 $vgpr137, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr139, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr71 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr135, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr137, 0, $vgpr138, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr138 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr138, $vgpr138(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr70, 0, $vgpr134, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr138, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_FMA_F32_e64 1, $vgpr137, 0, $vgpr135, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr136, $vgpr138, killed $vgpr135(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr137, 0, $vgpr135, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr133, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_RCP_F32_e32 $vgpr136, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr138, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr70 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr134, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr136, 0, $vgpr137, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr137, $vgpr137(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr69, 0, $vgpr133, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr137, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_FMA_F32_e64 1, $vgpr136, 0, $vgpr134, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_FMAC_F32_e32 killed $vgpr135, $vgpr137, killed $vgpr134(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr136, 0, $vgpr134, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr135, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_RCP_F32_e32 $vgpr135, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr137, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr69 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr133, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr135, 0, $vgpr136, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr136, $vgpr136(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr68, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr136, implicit $mode, implicit $exec
  renamable $vgpr134 = nofpexcept V_FMA_F32_e64 1, $vgpr135, 0, $vgpr133, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_FMAC_F32_e32 killed $vgpr134, $vgpr136, killed $vgpr133(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr135, 0, $vgpr133, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr134, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr131, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_RCP_F32_e32 $vgpr134, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr136, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr68 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr132, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr135, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr135, $vgpr135(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr3, 0, $vgpr131, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr135, implicit $mode, implicit $exec
  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr133, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_FMAC_F32_e32 killed $vgpr132, $vgpr135, killed $vgpr133(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr134, 0, $vgpr133, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr134, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr130, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_RCP_F32_e32 $vgpr134, implicit $mode, implicit $exec
  renamable $vgpr132 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, killed renamable $vgpr147, 0, 0, implicit $exec :: (load (s32) from %ir.14, addrspace 1)
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr135, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr131 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr131, 0, killed $vgpr3, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr136, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr136, $vgpr136(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr2, 0, $vgpr130, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr3 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr136, implicit $mode, implicit $exec
  renamable $vgpr133 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr3, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr3 = nofpexcept V_FMAC_F32_e32 killed $vgpr133, $vgpr136, killed $vgpr3(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr134, 0, $vgpr3, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr136, 0, killed $vgpr3, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr130 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, killed $vgpr130, 0, killed $vgpr2, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr74, killed $vgpr4, $vgpr74(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, killed $vgpr5, $vgpr75(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr76 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, killed $vgpr6, $vgpr76(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr77 = nofpexcept V_FMAC_F32_e32 killed $vgpr77, killed $vgpr7, $vgpr77(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr78 = nofpexcept V_FMAC_F32_e32 killed $vgpr78, killed $vgpr8, $vgpr78(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr79 = nofpexcept V_FMAC_F32_e32 killed $vgpr79, killed $vgpr9, $vgpr79(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr80 = nofpexcept V_FMAC_F32_e32 killed $vgpr80, killed $vgpr10, $vgpr80(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr81 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, killed $vgpr11, $vgpr81(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr82 = nofpexcept V_FMAC_F32_e32 killed $vgpr82, killed $vgpr12, $vgpr82(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr83 = nofpexcept V_FMAC_F32_e32 killed $vgpr83, killed $vgpr13, $vgpr83(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr84 = nofpexcept V_FMAC_F32_e32 killed $vgpr84, killed $vgpr14, $vgpr84(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr85 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr15, $vgpr85(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr86 = nofpexcept V_FMAC_F32_e32 killed $vgpr86, killed $vgpr16, $vgpr86(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr87 = nofpexcept V_FMAC_F32_e32 killed $vgpr87, killed $vgpr17, $vgpr87(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr88 = nofpexcept V_FMAC_F32_e32 killed $vgpr88, killed $vgpr18, $vgpr88(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr89 = nofpexcept V_FMAC_F32_e32 killed $vgpr89, killed $vgpr19, $vgpr89(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr90 = nofpexcept V_FMAC_F32_e32 killed $vgpr90, killed $vgpr20, $vgpr90(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr91 = nofpexcept V_FMAC_F32_e32 killed $vgpr91, killed $vgpr21, $vgpr91(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr92 = nofpexcept V_FMAC_F32_e32 killed $vgpr92, killed $vgpr22, $vgpr92(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr93 = nofpexcept V_FMAC_F32_e32 killed $vgpr93, killed $vgpr23, $vgpr93(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr94 = nofpexcept V_FMAC_F32_e32 killed $vgpr94, killed $vgpr24, $vgpr94(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr95 = nofpexcept V_FMAC_F32_e32 killed $vgpr95, killed $vgpr25, $vgpr95(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr96 = nofpexcept V_FMAC_F32_e32 killed $vgpr96, killed $vgpr26, $vgpr96(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr97 = nofpexcept V_FMAC_F32_e32 killed $vgpr97, killed $vgpr27, $vgpr97(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr98 = nofpexcept V_FMAC_F32_e32 killed $vgpr98, killed $vgpr28, $vgpr98(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr99 = nofpexcept V_FMAC_F32_e32 killed $vgpr99, killed $vgpr29, $vgpr99(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr100 = nofpexcept V_FMAC_F32_e32 killed $vgpr100, killed $vgpr30, $vgpr100(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr101 = nofpexcept V_FMAC_F32_e32 killed $vgpr101, killed $vgpr31, $vgpr101(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr102 = nofpexcept V_FMAC_F32_e32 killed $vgpr102, killed $vgpr32, $vgpr102(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr103 = nofpexcept V_FMAC_F32_e32 killed $vgpr103, killed $vgpr33, $vgpr103(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr104 = nofpexcept V_FMAC_F32_e32 killed $vgpr104, killed $vgpr34, $vgpr104(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr105 = nofpexcept V_FMAC_F32_e32 killed $vgpr105, killed $vgpr35, $vgpr105(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr106 = nofpexcept V_FMAC_F32_e32 killed $vgpr106, killed $vgpr36, $vgpr106(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr107 = nofpexcept V_FMAC_F32_e32 killed $vgpr107, killed $vgpr37, $vgpr107(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr108 = nofpexcept V_FMAC_F32_e32 killed $vgpr108, killed $vgpr38, $vgpr108(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr109 = nofpexcept V_FMAC_F32_e32 killed $vgpr109, killed $vgpr39, $vgpr109(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr110 = nofpexcept V_FMAC_F32_e32 killed $vgpr110, killed $vgpr40, $vgpr110(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr111 = nofpexcept V_FMAC_F32_e32 killed $vgpr111, killed $vgpr41, $vgpr111(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr112 = nofpexcept V_FMAC_F32_e32 killed $vgpr112, killed $vgpr42, $vgpr112(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr113 = nofpexcept V_FMAC_F32_e32 killed $vgpr113, killed $vgpr43, $vgpr113(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr114 = nofpexcept V_FMAC_F32_e32 killed $vgpr114, killed $vgpr44, $vgpr114(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr115 = nofpexcept V_FMAC_F32_e32 killed $vgpr115, killed $vgpr45, $vgpr115(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr116 = nofpexcept V_FMAC_F32_e32 killed $vgpr116, killed $vgpr46, $vgpr116(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr117 = nofpexcept V_FMAC_F32_e32 killed $vgpr117, killed $vgpr47, $vgpr117(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr118 = nofpexcept V_FMAC_F32_e32 killed $vgpr118, killed $vgpr48, $vgpr118(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr119 = nofpexcept V_FMAC_F32_e32 killed $vgpr119, killed $vgpr49, $vgpr119(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr120 = nofpexcept V_FMAC_F32_e32 killed $vgpr120, killed $vgpr50, $vgpr120(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr121 = nofpexcept V_FMAC_F32_e32 killed $vgpr121, killed $vgpr51, $vgpr121(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr122 = nofpexcept V_FMAC_F32_e32 killed $vgpr122, killed $vgpr52, $vgpr122(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr123 = nofpexcept V_FMAC_F32_e32 killed $vgpr123, killed $vgpr53, $vgpr123(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr124 = nofpexcept V_FMAC_F32_e32 killed $vgpr124, killed $vgpr54, $vgpr124(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr125 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, killed $vgpr55, $vgpr125(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr126 = nofpexcept V_FMAC_F32_e32 killed $vgpr126, killed $vgpr56, $vgpr126(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr127 = nofpexcept V_FMAC_F32_e32 killed $vgpr127, killed $vgpr57, $vgpr127(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr128 = nofpexcept V_FMAC_F32_e32 killed $vgpr128, killed $vgpr58, $vgpr128(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr129 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, killed $vgpr59, $vgpr129(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, killed $vgpr60, $vgpr73(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, killed $vgpr61, $vgpr72(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, killed $vgpr62, $vgpr71(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, killed $vgpr63, $vgpr70(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, killed $vgpr64, $vgpr69(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, killed $vgpr65, $vgpr68(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr131 = nofpexcept V_FMAC_F32_e32 killed $vgpr131, killed $vgpr66, $vgpr131(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr130 = nofpexcept V_FMAC_F32_e32 killed $vgpr130, killed $vgpr67, $vgpr130(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr4 = nofpexcept V_RCP_F32_e32 $vgpr1, implicit $mode, implicit $exec
  $vgpr147 = V_MOV_B32_e32 $sgpr13, implicit $exec, implicit $exec
  renamable $vgpr2 = V_OR_B32_e32 8, $vgpr146, implicit $exec
  $vgpr3 = V_MOV_B32_e32 $sgpr13, implicit $exec, implicit $exec
  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 1, $vgpr1, 0, $vgpr4, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr4 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, killed $vgpr4, $vgpr4(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr5, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr74, 0, $vgpr132, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_MUL_F32_e32 $vgpr5, $vgpr4, implicit $mode, implicit $exec
  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 1, $vgpr1, 0, $vgpr6, 0, $vgpr5, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_FMAC_F32_e32 killed $vgpr7, $vgpr4, killed $vgpr6(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr1, 0, $vgpr6, 0, killed $vgpr5, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr5, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr7 = nofpexcept V_RCP_F32_e32 $vgpr5, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr4, 0, killed $vgpr6, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr4 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr5, 0, $vgpr7, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr7 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr7, $vgpr7(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr132, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr7, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 1, $vgpr5, 0, $vgpr6, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_FMAC_F32_e32 killed $vgpr8, $vgpr7, killed $vgpr6(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr5, 0, $vgpr6, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_RCP_F32_e32 $vgpr8, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr7, 0, killed $vgpr6, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr5 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr9, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr9, $vgpr9(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr132, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr9, implicit $mode, implicit $exec
  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr6, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr6 = nofpexcept V_FMAC_F32_e32 killed $vgpr7, $vgpr9, killed $vgpr6(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr8, 0, $vgpr6, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr7, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 $vgpr7, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr9, 0, killed $vgpr6, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr6 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr8, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr8, $vgpr8(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr132, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr8, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr9, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr10, $vgpr8, killed $vgpr9(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr7, 0, $vgpr9, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_RCP_F32_e32 $vgpr10, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr8, 0, killed $vgpr9, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr7 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr11, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr11, $vgpr11(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr132, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr11, implicit $mode, implicit $exec
  renamable $vgpr9 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr8, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr8 = nofpexcept V_FMAC_F32_e32 killed $vgpr9, $vgpr11, killed $vgpr8(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr10, 0, $vgpr8, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr9, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_RCP_F32_e32 $vgpr9, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr11, 0, killed $vgpr8, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr8 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr10, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr10, $vgpr10(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr132, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr10, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr11, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_FMAC_F32_e32 killed $vgpr12, $vgpr10, killed $vgpr11(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr9, 0, $vgpr11, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_RCP_F32_e32 $vgpr12, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr10, 0, killed $vgpr11, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr9 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr13, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr13, $vgpr13(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr132, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr13, implicit $mode, implicit $exec
  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr10, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr10 = nofpexcept V_FMAC_F32_e32 killed $vgpr11, $vgpr13, killed $vgpr10(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr12, 0, $vgpr10, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr11, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_RCP_F32_e32 $vgpr11, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr13, 0, killed $vgpr10, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr10 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr12, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr12, $vgpr12(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr132, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr12, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr13, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_FMAC_F32_e32 killed $vgpr14, $vgpr12, killed $vgpr13(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr11, 0, $vgpr13, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_RCP_F32_e32 $vgpr14, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr12, 0, killed $vgpr13, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr11 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr15, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr15, $vgpr15(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr132, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr15, implicit $mode, implicit $exec
  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr12, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr12 = nofpexcept V_FMAC_F32_e32 killed $vgpr13, $vgpr15, killed $vgpr12(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr14, 0, $vgpr12, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr13, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_RCP_F32_e32 $vgpr13, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr15, 0, killed $vgpr12, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr12 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr14, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr14, $vgpr14(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr132, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr14, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr15, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_FMAC_F32_e32 killed $vgpr16, $vgpr14, killed $vgpr15(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr13, 0, $vgpr15, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_RCP_F32_e32 $vgpr16, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr14, 0, killed $vgpr15, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr13 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr17, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr17, $vgpr17(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr132, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr17, implicit $mode, implicit $exec
  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr14, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr14 = nofpexcept V_FMAC_F32_e32 killed $vgpr15, $vgpr17, killed $vgpr14(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr16, 0, $vgpr14, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr15, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_RCP_F32_e32 $vgpr15, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr17, 0, killed $vgpr14, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr14 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr16, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr16, $vgpr16(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr132, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr16, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr17, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_FMAC_F32_e32 killed $vgpr18, $vgpr16, killed $vgpr17(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr15, 0, $vgpr17, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_RCP_F32_e32 $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr16, 0, killed $vgpr17, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr15 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr19, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr19, $vgpr19(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr132, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr19, implicit $mode, implicit $exec
  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr16, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr16 = nofpexcept V_FMAC_F32_e32 killed $vgpr17, $vgpr19, killed $vgpr16(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr18, 0, $vgpr16, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr17, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_RCP_F32_e32 $vgpr17, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr19, 0, killed $vgpr16, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr16 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr18, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr18, $vgpr18(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr132, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr19, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_FMAC_F32_e32 killed $vgpr20, $vgpr18, killed $vgpr19(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr17, 0, $vgpr19, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr20, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr18, 0, killed $vgpr19, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr17 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr21, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr21, $vgpr21(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr132, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr18, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_FMAC_F32_e32 killed $vgpr19, $vgpr21, killed $vgpr18(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr20, 0, $vgpr18, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr19, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_RCP_F32_e32 $vgpr19, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr21, 0, killed $vgpr18, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr18 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr20, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr20, $vgpr20(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr132, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr21, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAC_F32_e32 killed $vgpr22, $vgpr20, killed $vgpr21(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr19, 0, $vgpr21, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_RCP_F32_e32 $vgpr22, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr20, 0, killed $vgpr21, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr19 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr23, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr23, $vgpr23(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr132, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr23, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr20, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_FMAC_F32_e32 killed $vgpr21, $vgpr23, killed $vgpr20(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr22, 0, $vgpr20, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr21, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_RCP_F32_e32 $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr23, 0, killed $vgpr20, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr20 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr22, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr22, $vgpr22(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr132, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr22, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr23, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_FMAC_F32_e32 killed $vgpr24, $vgpr22, killed $vgpr23(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr21, 0, $vgpr23, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_RCP_F32_e32 $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr22, 0, killed $vgpr23, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr21 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr25, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr25, $vgpr25(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr132, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr25, implicit $mode, implicit $exec
  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr22, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_FMAC_F32_e32 killed $vgpr23, $vgpr25, killed $vgpr22(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr24, 0, $vgpr22, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr23, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_RCP_F32_e32 $vgpr23, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr25, 0, killed $vgpr22, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr22 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr24, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr24, $vgpr24(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr132, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr25, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_FMAC_F32_e32 killed $vgpr26, $vgpr24, killed $vgpr25(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr23, 0, $vgpr25, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_RCP_F32_e32 $vgpr26, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr24, 0, killed $vgpr25, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr23 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr27, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr27, $vgpr27(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr132, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr27, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr24, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_FMAC_F32_e32 killed $vgpr25, $vgpr27, killed $vgpr24(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr26, 0, $vgpr24, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr25, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_RCP_F32_e32 $vgpr25, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr27, 0, killed $vgpr24, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr24 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr26, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr26, $vgpr26(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr132, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr26, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr27, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_FMAC_F32_e32 killed $vgpr28, $vgpr26, killed $vgpr27(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr25, 0, $vgpr27, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_RCP_F32_e32 $vgpr28, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr26, 0, killed $vgpr27, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr25 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr29, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr29, $vgpr29(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr132, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr29, implicit $mode, implicit $exec
  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr26, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_FMAC_F32_e32 killed $vgpr27, $vgpr29, killed $vgpr26(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr28, 0, $vgpr26, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr27, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_RCP_F32_e32 $vgpr27, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr29, 0, killed $vgpr26, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr26 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr28, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr28, $vgpr28(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr132, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr28, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr29, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr30, $vgpr28, killed $vgpr29(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr27, 0, $vgpr29, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_RCP_F32_e32 $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr28, 0, killed $vgpr29, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr27 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr31, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr31, $vgpr31(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr132, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr31, implicit $mode, implicit $exec
  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr28, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_FMAC_F32_e32 killed $vgpr29, $vgpr31, killed $vgpr28(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr30, 0, $vgpr28, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr29, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_RCP_F32_e32 $vgpr29, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr31, 0, killed $vgpr28, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr28 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr30, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr30, $vgpr30(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr132, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr31, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_FMAC_F32_e32 killed $vgpr32, $vgpr30, killed $vgpr31(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr29, 0, $vgpr31, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_RCP_F32_e32 $vgpr32, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr30, 0, killed $vgpr31, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr29 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr33, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr33, $vgpr33(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr132, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr33, implicit $mode, implicit $exec
  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr30, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_FMAC_F32_e32 killed $vgpr31, $vgpr33, killed $vgpr30(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr32, 0, $vgpr30, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr31, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_RCP_F32_e32 $vgpr31, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr33, 0, killed $vgpr30, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr30 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr32, $vgpr32(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr132, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr32, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr33, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr34, $vgpr32, killed $vgpr33(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr31, 0, $vgpr33, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_RCP_F32_e32 $vgpr34, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr32, 0, killed $vgpr33, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr31 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr35, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr35, $vgpr35(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr132, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr35, implicit $mode, implicit $exec
  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr32, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr32 = nofpexcept V_FMAC_F32_e32 killed $vgpr33, $vgpr35, killed $vgpr32(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr34, 0, $vgpr32, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr33, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_RCP_F32_e32 $vgpr33, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr35, 0, killed $vgpr32, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr32 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr34, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr34, $vgpr34(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr132, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr34, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr35, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_FMAC_F32_e32 killed $vgpr36, $vgpr34, killed $vgpr35(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr33, 0, $vgpr35, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_RCP_F32_e32 $vgpr36, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr34, 0, killed $vgpr35, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr33 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr37, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr37, $vgpr37(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr132, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr37, implicit $mode, implicit $exec
  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr34, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr34 = nofpexcept V_FMAC_F32_e32 killed $vgpr35, $vgpr37, killed $vgpr34(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr36, 0, $vgpr34, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr35, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_RCP_F32_e32 $vgpr35, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr37, 0, killed $vgpr34, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr34 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr36, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr36, $vgpr36(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr132, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr36, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr37, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_FMAC_F32_e32 killed $vgpr38, $vgpr36, killed $vgpr37(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr35, 0, $vgpr37, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_RCP_F32_e32 $vgpr38, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr36, 0, killed $vgpr37, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr35 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr39, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr39, $vgpr39(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr132, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr39, implicit $mode, implicit $exec
  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr36, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr36 = nofpexcept V_FMAC_F32_e32 killed $vgpr37, $vgpr39, killed $vgpr36(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr38, 0, $vgpr36, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr37, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_RCP_F32_e32 $vgpr37, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr39, 0, killed $vgpr36, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr36 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr38, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr38, $vgpr38(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr132, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr38, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr39, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, $vgpr38, killed $vgpr39(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr37, 0, $vgpr39, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_RCP_F32_e32 $vgpr40, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr38, 0, killed $vgpr39, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr37 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr41, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr41, $vgpr41(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr132, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr41, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr38, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr38 = nofpexcept V_FMAC_F32_e32 killed $vgpr39, $vgpr41, killed $vgpr38(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr40, 0, $vgpr38, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr41, 0, killed $vgpr38, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr38 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr132, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr40, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, $vgpr40, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr40, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr1 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr42, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, killed $vgpr42, $vgpr42(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr40, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr132, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr40, $vgpr42, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr40, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, $vgpr42, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr40, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_RCP_F32_e32 $vgpr40, implicit $mode, implicit $exec
  renamable $vgpr39 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr39, 0, killed $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr39 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr39, 0, $vgpr132, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr43, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr41, killed $vgpr43, $vgpr43(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr41, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr132, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_MUL_F32_e32 $vgpr41, $vgpr43, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr42, 0, $vgpr41, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, $vgpr43, killed $vgpr42(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, killed $vgpr40, 0, $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr41, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_RCP_F32_e32 $vgpr41, implicit $mode, implicit $exec
  renamable $vgpr40 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr40, 0, killed $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr40 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr40, 0, $vgpr132, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr44, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, killed $vgpr44, $vgpr44(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr42, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr132, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_MUL_F32_e32 $vgpr42, $vgpr44, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr43, 0, $vgpr42, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, $vgpr44, killed $vgpr43(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, killed $vgpr41, 0, $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr42, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_RCP_F32_e32 $vgpr42, implicit $mode, implicit $exec
  renamable $vgpr41 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr41, 0, killed $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr41 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr41, 0, $vgpr132, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr45, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, killed $vgpr45, $vgpr45(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr43, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr132, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_MUL_F32_e32 $vgpr43, $vgpr45, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr44, 0, $vgpr43, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, $vgpr45, killed $vgpr44(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, killed $vgpr42, 0, $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr43, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_RCP_F32_e32 $vgpr43, implicit $mode, implicit $exec
  renamable $vgpr42 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr42, 0, killed $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr42 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr42, 0, $vgpr132, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr46, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, killed $vgpr46, $vgpr46(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr44, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr132, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_MUL_F32_e32 $vgpr44, $vgpr46, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr45, 0, $vgpr44, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, $vgpr46, killed $vgpr45(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, killed $vgpr43, 0, $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr44, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_RCP_F32_e32 $vgpr44, implicit $mode, implicit $exec
  renamable $vgpr43 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr43, 0, killed $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr43 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr43, 0, $vgpr132, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr47, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, killed $vgpr47, $vgpr47(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr45, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr132, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_MUL_F32_e32 $vgpr45, $vgpr47, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr46, 0, $vgpr45, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, $vgpr47, killed $vgpr46(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, killed $vgpr44, 0, $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr45, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_RCP_F32_e32 $vgpr45, implicit $mode, implicit $exec
  renamable $vgpr44 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr44, 0, killed $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr44 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr44, 0, $vgpr132, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr48, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, killed $vgpr48, $vgpr48(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr46, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr132, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_MUL_F32_e32 $vgpr46, $vgpr48, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr47, 0, $vgpr46, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, $vgpr48, killed $vgpr47(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, killed $vgpr45, 0, $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr46, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_RCP_F32_e32 $vgpr46, implicit $mode, implicit $exec
  renamable $vgpr45 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr45, 0, killed $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr45 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr45, 0, $vgpr132, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr49, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, killed $vgpr49, $vgpr49(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr47, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr132, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_MUL_F32_e32 $vgpr47, $vgpr49, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr48, 0, $vgpr47, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, $vgpr49, killed $vgpr48(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, killed $vgpr46, 0, $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr47, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_RCP_F32_e32 $vgpr47, implicit $mode, implicit $exec
  renamable $vgpr46 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr46, 0, killed $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr46 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr46, 0, $vgpr132, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr50, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, killed $vgpr50, $vgpr50(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr48, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr132, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_MUL_F32_e32 $vgpr48, $vgpr50, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr49, 0, $vgpr48, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, $vgpr50, killed $vgpr49(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, killed $vgpr47, 0, $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr48, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_RCP_F32_e32 $vgpr48, implicit $mode, implicit $exec
  renamable $vgpr47 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr47, 0, killed $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr47 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr47, 0, $vgpr132, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr51, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, killed $vgpr51, $vgpr51(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr49, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr132, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_MUL_F32_e32 $vgpr49, $vgpr51, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr50, 0, $vgpr49, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, $vgpr51, killed $vgpr50(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, killed $vgpr48, 0, $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr49, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_RCP_F32_e32 $vgpr49, implicit $mode, implicit $exec
  renamable $vgpr48 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr48, 0, killed $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr48 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr48, 0, $vgpr132, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr52, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, killed $vgpr52, $vgpr52(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr50, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr132, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_MUL_F32_e32 $vgpr50, $vgpr52, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr51, 0, $vgpr50, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, $vgpr52, killed $vgpr51(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, killed $vgpr49, 0, $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr50, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_RCP_F32_e32 $vgpr50, implicit $mode, implicit $exec
  renamable $vgpr49 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr49, 0, killed $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr49 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr49, 0, $vgpr132, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr53, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, killed $vgpr53, $vgpr53(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr51, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr132, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_MUL_F32_e32 $vgpr51, $vgpr53, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr52, 0, $vgpr51, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, $vgpr53, killed $vgpr52(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, killed $vgpr50, 0, $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr51, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_RCP_F32_e32 $vgpr51, implicit $mode, implicit $exec
  renamable $vgpr50 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr50, 0, killed $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr50 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr50, 0, $vgpr132, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr54, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, killed $vgpr54, $vgpr54(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr52, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr132, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_MUL_F32_e32 $vgpr52, $vgpr54, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr53, 0, $vgpr52, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, $vgpr54, killed $vgpr53(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, killed $vgpr51, 0, $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr52, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_RCP_F32_e32 $vgpr52, implicit $mode, implicit $exec
  renamable $vgpr51 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr51, 0, killed $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr51 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr51, 0, $vgpr132, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr55, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, killed $vgpr55, $vgpr55(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr53, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr132, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_MUL_F32_e32 $vgpr53, $vgpr55, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr54, 0, $vgpr53, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, $vgpr55, killed $vgpr54(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, killed $vgpr52, 0, $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr53, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_RCP_F32_e32 $vgpr53, implicit $mode, implicit $exec
  renamable $vgpr52 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr52, 0, killed $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr52 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr52, 0, $vgpr132, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr56, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, killed $vgpr56, $vgpr56(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr54, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr132, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_MUL_F32_e32 $vgpr54, $vgpr56, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr55, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, $vgpr56, killed $vgpr55(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, killed $vgpr53, 0, $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr54, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_RCP_F32_e32 $vgpr54, implicit $mode, implicit $exec
  renamable $vgpr53 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr53, 0, killed $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr53 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr53, 0, $vgpr132, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr57, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, killed $vgpr57, $vgpr57(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr55, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr132, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_MUL_F32_e32 $vgpr55, $vgpr57, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr56, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr58, $vgpr57, killed $vgpr56(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, killed $vgpr54, 0, $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr55, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_RCP_F32_e32 $vgpr55, implicit $mode, implicit $exec
  renamable $vgpr54 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr54, 0, killed $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr54 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr54, 0, $vgpr132, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr58, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, killed $vgpr58, $vgpr58(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr56, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr132, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_MUL_F32_e32 $vgpr56, $vgpr58, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr57, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr59, $vgpr58, killed $vgpr57(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, killed $vgpr55, 0, $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr56, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_RCP_F32_e32 $vgpr56, implicit $mode, implicit $exec
  renamable $vgpr55 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr55, 0, killed $vgpr58, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr55 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr55, 0, $vgpr132, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr59, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, killed $vgpr59, $vgpr59(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr57, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr132, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_MUL_F32_e32 $vgpr57, $vgpr59, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr58, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_FMAC_F32_e32 killed $vgpr60, $vgpr59, killed $vgpr58(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, killed $vgpr56, 0, $vgpr58, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr57, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_RCP_F32_e32 $vgpr57, implicit $mode, implicit $exec
  renamable $vgpr56 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr56, 0, killed $vgpr59, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr56 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr56, 0, $vgpr132, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr60, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_FMAC_F32_e32 killed $vgpr58, killed $vgpr60, $vgpr60(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr58, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr132, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_MUL_F32_e32 $vgpr58, $vgpr60, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr59, 0, $vgpr58, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_FMAC_F32_e32 killed $vgpr61, $vgpr60, killed $vgpr59(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, killed $vgpr57, 0, $vgpr59, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr58, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_RCP_F32_e32 $vgpr58, implicit $mode, implicit $exec
  renamable $vgpr57 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr57, 0, killed $vgpr60, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr57 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr57, 0, $vgpr132, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, $vgpr58, 0, $vgpr61, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_FMAC_F32_e32 killed $vgpr59, killed $vgpr61, $vgpr61(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr59, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr132, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_MUL_F32_e32 $vgpr59, $vgpr61, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, $vgpr58, 0, $vgpr60, 0, $vgpr59, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_FMAC_F32_e32 killed $vgpr62, $vgpr61, killed $vgpr60(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, killed $vgpr58, 0, $vgpr60, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr59, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_RCP_F32_e32 $vgpr59, implicit $mode, implicit $exec
  renamable $vgpr58 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr58, 0, killed $vgpr61, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr58 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr58, 0, $vgpr132, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, $vgpr59, 0, $vgpr62, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_FMAC_F32_e32 killed $vgpr60, killed $vgpr62, $vgpr62(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr60, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr73, 0, $vgpr132, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_MUL_F32_e32 $vgpr60, $vgpr62, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, $vgpr59, 0, $vgpr61, 0, $vgpr60, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_FMAC_F32_e32 killed $vgpr63, $vgpr62, killed $vgpr61(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, killed $vgpr59, 0, $vgpr61, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr60, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_RCP_F32_e32 $vgpr60, implicit $mode, implicit $exec
  renamable $vgpr59 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr59, 0, killed $vgpr62, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr59 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr59, 0, $vgpr132, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, $vgpr60, 0, $vgpr63, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_FMAC_F32_e32 killed $vgpr61, killed $vgpr63, $vgpr63(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr61, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr72, 0, $vgpr132, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_MUL_F32_e32 $vgpr61, $vgpr63, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, $vgpr60, 0, $vgpr62, 0, $vgpr61, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_FMAC_F32_e32 killed $vgpr64, $vgpr63, killed $vgpr62(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, killed $vgpr60, 0, $vgpr62, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr61, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_RCP_F32_e32 $vgpr61, implicit $mode, implicit $exec
  renamable $vgpr60 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr60, 0, killed $vgpr63, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr60 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr60, 0, $vgpr132, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, $vgpr61, 0, $vgpr64, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_FMAC_F32_e32 killed $vgpr62, killed $vgpr64, $vgpr64(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr62, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr71, 0, $vgpr132, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_MUL_F32_e32 $vgpr62, $vgpr64, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr61, 0, $vgpr63, 0, $vgpr62, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, $vgpr64, killed $vgpr63(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, killed $vgpr61, 0, $vgpr63, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr62, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_RCP_F32_e32 $vgpr62, implicit $mode, implicit $exec
  renamable $vgpr61 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr61, 0, killed $vgpr64, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr61 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr61, 0, $vgpr132, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, $vgpr62, 0, $vgpr65, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr63, killed $vgpr65, $vgpr65(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr63, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr70, 0, $vgpr132, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_MUL_F32_e32 $vgpr63, $vgpr65, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr62, 0, $vgpr64, 0, $vgpr63, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, $vgpr65, killed $vgpr64(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, killed $vgpr62, 0, $vgpr64, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr63, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_RCP_F32_e32 $vgpr63, implicit $mode, implicit $exec
  renamable $vgpr62 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr62, 0, killed $vgpr65, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr62 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr62, 0, $vgpr132, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, $vgpr63, 0, $vgpr66, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr64, killed $vgpr66, $vgpr66(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr64, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr69, 0, $vgpr132, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_MUL_F32_e32 $vgpr64, $vgpr66, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr63, 0, $vgpr65, 0, $vgpr64, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, $vgpr66, killed $vgpr65(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, killed $vgpr63, 0, $vgpr65, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr64, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_RCP_F32_e32 $vgpr64, implicit $mode, implicit $exec
  renamable $vgpr63 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr63, 0, killed $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr63 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr63, 0, $vgpr132, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr64, 0, $vgpr67, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, killed $vgpr67, $vgpr67(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr65, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr68, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_MUL_F32_e32 $vgpr65, $vgpr67, implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr64, 0, $vgpr66, 0, $vgpr65, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, $vgpr67, killed $vgpr66(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, killed $vgpr64, 0, $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr65, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_RCP_F32_e32 $vgpr65, implicit $mode, implicit $exec
  renamable $vgpr64 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr64, 0, killed $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr64 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr64, 0, $vgpr132, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr69, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, killed $vgpr69, $vgpr69(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr66, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr132, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_MUL_F32_e32 $vgpr66, $vgpr69, implicit $mode, implicit $exec
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr67, 0, $vgpr66, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, $vgpr69, killed $vgpr67(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, killed $vgpr65, 0, $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr68 = nofpexcept V_RCP_F32_e32 $vgpr66, implicit $mode, implicit $exec
  renamable $vgpr65 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr65, 0, killed $vgpr69, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr65 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr65, 0, $vgpr132, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr66, 0, $vgpr68, 0, 1065353216, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, killed $vgpr68, $vgpr68(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr67, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr132, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_MUL_F32_e32 $vgpr67, $vgpr68, implicit $mode, implicit $exec
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, $vgpr66, 0, $vgpr69, 0, $vgpr67, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, $vgpr68, killed $vgpr69(tied-def 0), implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, killed $vgpr66, 0, $vgpr69, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr66 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr66, 0, killed $vgpr68, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $vcc, implicit $exec
  renamable $vgpr66 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr66, 0, killed $vgpr132, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec
  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr4, 0, killed $vgpr5, 0, 1065353216, undef $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr6, 0, killed $vgpr7, 0, 1065353216, $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr8, 0, killed $vgpr9, 0, 1065353216, undef $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr10, 0, killed $vgpr11, 0, 1065353216, $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr12, 0, killed $vgpr13, 0, 1065353216, undef $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr14, 0, killed $vgpr15, 0, 1065353216, $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr16, 0, killed $vgpr17, 0, 1065353216, undef $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr18, 0, killed $vgpr19, 0, 1065353216, $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr20, 0, killed $vgpr21, 0, 1065353216, undef $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr22, 0, killed $vgpr23, 0, 1065353216, $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr24, 0, killed $vgpr25, 0, 1065353216, undef $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr26, 0, killed $vgpr27, 0, 1065353216, $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr28, 0, killed $vgpr29, 0, 1065353216, undef $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr30, 0, killed $vgpr31, 0, 1065353216, $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr32, 0, killed $vgpr33, 0, 1065353216, undef $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr34, 0, killed $vgpr35, 0, 1065353216, $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr36, 0, killed $vgpr37, 0, 1065353216, undef $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr38, 0, killed $vgpr1, 0, 1065353216, $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr39, 0, killed $vgpr40, 0, 1065353216, undef $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr41, 0, killed $vgpr42, 0, 1065353216, $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr43, 0, killed $vgpr44, 0, 1065353216, undef $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr45, 0, killed $vgpr46, 0, 1065353216, $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr47, 0, killed $vgpr48, 0, 1065353216, undef $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr49, 0, killed $vgpr50, 0, 1065353216, $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr51, 0, killed $vgpr52, 0, 1065353216, undef $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr53, 0, killed $vgpr54, 0, 1065353216, $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr55, 0, killed $vgpr56, 0, 1065353216, undef $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr57, 0, killed $vgpr58, 0, 1065353216, $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr59, 0, killed $vgpr60, 0, 1065353216, undef $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr61, 0, killed $vgpr62, 0, 1065353216, $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr63, 0, killed $vgpr64, 0, 1065353216, undef $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec
  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr65, 0, killed $vgpr66, 0, 1065353216, $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec
  S_WAITCNT 49279
  S_BARRIER
  renamable $vgpr1 = nuw nsw V_LSHLREV_B32_e32 4, killed $vgpr237, implicit $exec
  renamable $vgpr20 = V_AND_B32_e32 48, killed $vgpr236, implicit $exec
  renamable $vgpr21 = V_AND_B32_e32 1, $vgpr0, implicit $exec
  renamable $vgpr22 = nuw nsw V_LSHLREV_B32_e32 13, $vgpr21, implicit $exec
  renamable $vgpr23 = nuw nsw V_LSHLREV_B32_e32 8, $vgpr0, implicit $exec
  renamable $vgpr23 = V_AND_B32_e32 16384, killed $vgpr23, implicit $exec
  renamable $vgpr22 = disjoint V_LSHL_OR_B32_e64 killed $vgpr177, 9, killed $vgpr22, implicit $exec
  renamable $vgpr1 = V_BITOP3_B32_e64 killed $vgpr1, killed $vgpr20, $vgpr176, 54, implicit $exec
  renamable $vgpr1 = disjoint V_OR3_B32_e64 killed $vgpr22, killed $vgpr23, killed $vgpr1, implicit $exec
  renamable $vgpr20 = nuw V_ADD_U32_e32 0, $vgpr1, implicit $exec
  DS_WRITE_B128_gfx9 renamable $vgpr20, killed renamable $vgpr4_vgpr5_vgpr6_vgpr7, 0, 0, implicit $exec :: (store (s128) into %ir.2908, addrspace 3)
  DS_WRITE_B128_gfx9 killed renamable $vgpr20, killed renamable $vgpr12_vgpr13_vgpr14_vgpr15, 128, 0, implicit $exec :: (store (s128) into %ir.2912, addrspace 3)
  renamable $vgpr1 = nuw V_XAD_U32_e64 killed $vgpr1, 64, 0, implicit $exec
  DS_WRITE_B128_gfx9 renamable $vgpr1, killed renamable $vgpr8_vgpr9_vgpr10_vgpr11, 0, 0, implicit $exec :: (store (s128) into %ir.2917, addrspace 3)
  DS_WRITE_B128_gfx9 killed renamable $vgpr1, killed renamable $vgpr16_vgpr17_vgpr18_vgpr19, 128, 0, implicit $exec :: (store (s128) into %ir.2921, addrspace 3)
  ATOMIC_FENCE 5, 2
  S_BARRIER
  ATOMIC_FENCE 4, 2
  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 5, killed $vgpr0, implicit $exec
  renamable $vgpr0 = V_AND_B32_e32 7168, killed $vgpr0, implicit $exec
  renamable $vgpr1 = exact V_LSHRREV_B32_e32 1, killed $vgpr163, implicit $exec
  renamable $vgpr4 = nuw nsw V_LSHLREV_B32_e32 9, killed $vgpr149, implicit $exec
  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr176, 54, implicit $exec
  renamable $vgpr1 = nuw V_LSHL_ADD_U32_e64 killed $vgpr21, 14, 0, implicit $exec
  renamable $vgpr1 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr4, killed $vgpr0, implicit $exec
  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 renamable $vgpr1, 0, 0, implicit $exec :: (load (s128) from %ir.2934, addrspace 3)
  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = DS_READ_B128_gfx9 renamable $vgpr1, 256, 0, implicit $exec :: (load (s128) from %ir.2941, addrspace 3)
  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc
  V_CMP_GT_I64_e32 $sgpr12_sgpr13, $vgpr146_vgpr147, implicit-def $vcc, implicit $exec
  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, $vgpr2_vgpr3, implicit $exec
  renamable $vgpr0 = V_MOV_B32_e32 8, implicit $exec
  renamable $vgpr0 = V_LSHRREV_B32_sdwa 0, killed $vgpr0, 0, $vgpr8, 0, 1, 0, 6, 6, implicit $exec
  renamable $sgpr12 = S_MOVK_I32 255
  renamable $vgpr0 = V_BITOP3_B16_e64 0, $vgpr8, 0, killed $vgpr0, 0, killed $sgpr12, 236, 0, implicit $exec
  renamable $vgpr0 = V_LSHLREV_B32_e32 16, killed $vgpr0, implicit $exec
  renamable $vgpr0 = V_AND_OR_B32_e64 $vgpr4, killed $sgpr4, killed $vgpr0, implicit $exec
  renamable $sgpr12 = S_MOV_B32 50464518
  renamable $vgpr12 = V_PERM_B32_e64 $vgpr4, $vgpr8, $sgpr12, implicit $exec
  renamable $sgpr13 = S_MOV_B32 16778500
  renamable $vgpr14 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr13, implicit $exec
  renamable $vgpr16 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr12, implicit $exec
  renamable $vgpr18 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr13, implicit $exec
  renamable $vgpr20 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr12, implicit $exec
  renamable $vgpr22 = V_PERM_B32_e64 $vgpr7, $vgpr11, $sgpr13, implicit $exec
  renamable $vgpr24 = V_PERM_B32_e64 killed $vgpr7, killed $vgpr11, $sgpr12, implicit $exec
  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 renamable $vgpr1, 512, 0, implicit $exec :: (load (s128) from %ir.2951, addrspace 3)
  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = DS_READ_B128_gfx9 killed renamable $vgpr1, 768, 0, implicit $exec :: (load (s128) from %ir.2961, addrspace 3)
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $vgpr233, $sgpr5, implicit $exec
  renamable $vgpr3 = V_MUL_LO_U32_e64 killed $vgpr234, $sgpr5, implicit $exec
  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr229, implicit $exec
  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr230, implicit $exec
  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr231, implicit $exec
  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $sgpr5, killed $vgpr232, implicit $exec
  renamable $vgpr1 = V_ADD_U32_e32 killed $vgpr3, killed $vgpr1, implicit $exec
  renamable $vgpr3 = V_ADD_U32_e32 $vgpr1, killed $vgpr13, implicit $exec
  renamable $vgpr13 = V_ADD_U32_e32 $vgpr1, killed $vgpr15, implicit $exec
  renamable $vgpr15 = V_ADD_U32_e32 $vgpr1, killed $vgpr17, implicit $exec
  renamable $vgpr1 = V_ADD_U32_e32 killed $vgpr1, killed $vgpr19, implicit $exec
  renamable $vgpr17 = V_ADD_U32_e32 $vgpr146, $vgpr3, implicit $exec
  renamable $vgpr3 = V_ADD_U32_e32 $vgpr2, killed $vgpr3, implicit $exec
  renamable $vgpr19 = V_ADD_U32_e32 $vgpr146, $vgpr13, implicit $exec
  renamable $vgpr21 = V_ADD_U32_e32 $vgpr2, killed $vgpr13, implicit $exec
  renamable $vgpr23 = V_ADD_U32_e32 $vgpr146, $vgpr15, implicit $exec
  renamable $vgpr25 = V_ADD_U32_e32 $vgpr2, killed $vgpr15, implicit $exec
  renamable $vgpr26 = V_ADD_U32_e32 killed $vgpr146, $vgpr1, implicit $exec
  renamable $vgpr2 = V_ADD_U32_e32 killed $vgpr2, killed $vgpr1, implicit $exec
  renamable $sgpr21 = S_AND_B32 renamable $sgpr21, 65535, implicit-def dead $scc
  $sgpr22 = S_MOV_B32 $sgpr18
  $sgpr23 = S_MOV_B32 killed $sgpr19
  renamable $vgpr1 = V_PERM_B32_e64 $vgpr4, $vgpr8, $sgpr13, implicit $exec
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, $vgpr148, 0, killed $vgpr17, killed $sgpr4_sgpr5, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr0_vgpr1, killed renamable $vgpr13, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr13 = V_PERM_B32_e64 $vgpr4, $vgpr8, $sgpr12, implicit $exec
  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr148, 0, killed $vgpr3, killed $sgpr4_sgpr5, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr12_vgpr13, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr15 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr13, implicit $exec
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr148, 0, killed $vgpr19, killed $sgpr4_sgpr5, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr14_vgpr15, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr17 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr12, implicit $exec
  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr148, 0, killed $vgpr21, killed $sgpr4_sgpr5, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr16_vgpr17, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr19 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr13, implicit $exec
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr148, 0, killed $vgpr23, killed $sgpr4_sgpr5, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr18_vgpr19, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr21 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr12, implicit $exec
  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr148, 0, killed $vgpr25, killed $sgpr2_sgpr3, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr20_vgpr21, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr23 = V_PERM_B32_e64 $vgpr7, $vgpr11, killed $sgpr13, implicit $exec
  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e32 $vgpr148, killed $vgpr26, implicit killed $vcc, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr22_vgpr23, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)
  renamable $vgpr25 = V_PERM_B32_e64 killed $vgpr7, killed $vgpr11, killed $sgpr12, implicit $exec
  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr148, killed $vgpr2, implicit killed $vcc, implicit $exec
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr24_vgpr25, killed renamable $vgpr0, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8)

bb.52.common.ret:
; predecessors: %bb.0, %bb.1, %bb.51

  S_ENDPGM 0

bb.53 (%ir-block.371):
; predecessors: %bb.2
  successors: %bb.3(0x80000000); %bb.3(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr159, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x000000000000000C, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr10 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr11 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr10_sgpr11 = S_XOR_B64 killed renamable $sgpr10_sgpr11, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr20 = V_CVT_F32_U32_e32 $sgpr10, implicit $mode, implicit $exec
  renamable $vgpr22 = V_CVT_F32_U32_e32 $sgpr11, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_FMAMK_F32 killed $vgpr22, 1333788672, killed $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_RCP_F32_e32 killed $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_MUL_F32_e32 796917760, $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_TRUNC_F32_e32 killed $vgpr22, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_FMAMK_F32 $vgpr22, -813694976, killed $vgpr20, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr22, implicit $mode, implicit $exec
  renamable $vgpr20 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr20, implicit $mode, implicit $exec
  renamable $sgpr16 = S_SUB_U32 0, renamable $sgpr10, implicit-def $scc
  renamable $sgpr17 = S_SUBB_U32 0, renamable $sgpr11, implicit-def dead $scc, implicit $scc
  renamable $sgpr18 = V_READFIRSTLANE_B32 killed $vgpr22, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr20, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr16, renamable $sgpr18
  renamable $sgpr19 = S_MUL_I32 renamable $sgpr17, renamable $sgpr6
  renamable $sgpr30 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr30, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr19, implicit-def dead $scc
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr30 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr31 = S_MUL_I32 renamable $sgpr16, renamable $sgpr6
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr31
  renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr30, implicit-def $scc
  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr18, renamable $sgpr7
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr18, renamable $sgpr31
  renamable $sgpr31 = S_MUL_I32 renamable $sgpr18, killed renamable $sgpr31
  dead renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr30, killed renamable $sgpr31, implicit-def $scc
  renamable $sgpr19 = S_ADDC_U32 killed renamable $sgpr19, killed renamable $sgpr36, implicit-def $scc, implicit $scc
  renamable $sgpr30 = S_ADDC_U32 killed renamable $sgpr33, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr18, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr19, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr30, implicit-def dead $scc, implicit $scc
  renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr18 = S_ADDC_U32 killed renamable $sgpr18, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr16, renamable $sgpr18
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr30
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr17 = S_MUL_I32 killed renamable $sgpr17, renamable $sgpr30
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr17, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr18, renamable $sgpr6
  renamable $sgpr16 = S_MUL_I32 killed renamable $sgpr16, renamable $sgpr30
  renamable $sgpr17 = S_MUL_HI_U32 renamable $sgpr18, renamable $sgpr16
  renamable $sgpr19 = S_MUL_I32 renamable $sgpr18, renamable $sgpr16
  renamable $sgpr31 = S_MUL_HI_U32 renamable $sgpr30, renamable $sgpr6
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr30, renamable $sgpr6
  renamable $sgpr16 = S_MUL_HI_U32 renamable $sgpr30, killed renamable $sgpr16
  renamable $sgpr16 = S_ADD_U32 killed renamable $sgpr16, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr31 = S_ADDC_U32 0, killed renamable $sgpr31, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr16 = S_ADD_U32 killed renamable $sgpr16, killed renamable $sgpr19, implicit-def $scc
  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr31, killed renamable $sgpr17, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr18, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr16, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr16 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr30, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr18, killed renamable $sgpr16, implicit-def dead $scc, implicit $scc
  renamable $vgpr22 = V_ASHRREV_I32_e32 31, $vgpr19, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr22, implicit $exec, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $vgpr22_vgpr23, implicit $exec
  renamable $vgpr23 = V_XOR_B32_e32 $vgpr19, $vgpr22, implicit $exec
  renamable $vgpr28 = V_XOR_B32_e32 killed $vgpr18, $vgpr22, implicit $exec
  renamable $vgpr18_vgpr19, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr28, $sgpr16, 0, 0, implicit $exec
  renamable $vgpr20 = V_MUL_HI_U32_e64 $vgpr28, $sgpr17, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr20_vgpr21, 0, killed $vgpr18_vgpr19, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr23, killed $sgpr16, 0, 0, implicit $exec
  renamable $vgpr26_vgpr27, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr23, killed $sgpr17, 0, 0, implicit $exec
  dead renamable $vgpr18 = V_ADD_CO_U32_e32 $vgpr18, $vgpr26, implicit-def $vcc, implicit $exec
  renamable $vgpr20 = V_ADDC_U32_e32 killed $vgpr19, killed $vgpr27, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_ADDC_U32_e32 0, $vgpr25, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, killed $vgpr24_vgpr25, implicit $exec
  renamable $vgpr20 = V_MUL_LO_U32_e64 $sgpr11, $vgpr18, implicit $exec
  renamable $vgpr21 = V_MUL_LO_U32_e64 $sgpr10, $vgpr19, implicit $exec
  renamable $vgpr18_vgpr19, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr10, killed $vgpr18, 0, 0, implicit $exec
  renamable $vgpr19 = V_ADD3_U32_e64 $vgpr19, killed $vgpr21, killed $vgpr20, implicit $exec
  renamable $vgpr20 = V_SUB_U32_e32 $vgpr23, $vgpr19, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $sgpr11, implicit $exec, implicit $exec
  renamable $vgpr18 = V_SUB_CO_U32_e32 killed $vgpr28, killed $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr20, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr20, killed $vgpr21, $vcc, 0, implicit $exec
  renamable $vgpr21, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr18, 0, implicit $exec
  renamable $vgpr20, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr20, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_LE_U32_e64 $sgpr11, $vgpr20, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr6_sgpr7, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_LE_U32_e64 $sgpr10, $vgpr21, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr6_sgpr7, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_EQ_U32_e64 $sgpr11, killed $vgpr20, implicit $exec
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, killed $vgpr24, 0, killed $vgpr25, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr24, dead renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr21, 0, implicit $exec
  renamable $vgpr19 = V_SUBB_U32_e32 killed $vgpr23, killed $vgpr19, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr11, $vgpr19, implicit-def $vcc, implicit $exec
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr10, $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr11, killed $vgpr19, implicit-def $vcc, implicit $exec
  renamable $vgpr19 = V_CNDMASK_B32_e32 killed $vgpr23, killed $vgpr25, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr20, implicit-def $vcc, implicit $exec
  renamable $vgpr20 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr19, implicit-def $vcc, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr20, implicit killed $vcc, implicit $exec
  renamable $vgpr18 = V_XOR_B32_e32 killed $vgpr18, $vgpr22, implicit $exec
  renamable $vgpr22 = V_SUB_CO_U32_e32 killed $vgpr18, killed $vgpr22, implicit-def dead $vcc, implicit $exec
  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
  S_BRANCH %bb.3

bb.54 (%ir-block.405):
; predecessors: %bb.5
  successors: %bb.6(0x80000000); %bb.6(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr20_vgpr21:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr18 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr19 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_FMAMK_F32 killed $vgpr19, 1333788672, killed $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_RCP_F32_e32 killed $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_MUL_F32_e32 796917760, $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_TRUNC_F32_e32 killed $vgpr19, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_FMAMK_F32 $vgpr19, -813694976, killed $vgpr18, implicit $mode, implicit $exec
  renamable $vgpr19 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr19, implicit $mode, implicit $exec
  renamable $vgpr18 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr18, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr19, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr18, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr22 = V_ASHRREV_I32_e32 31, $vgpr21, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr22, implicit $exec, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr20_vgpr21, 0, $vgpr22_vgpr23, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr19, $vgpr22, implicit $exec
  renamable $vgpr23 = V_XOR_B32_e32 killed $vgpr18, $vgpr22, implicit $exec
  renamable $vgpr18_vgpr19, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr23, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr23, $sgpr9, implicit $exec
  renamable $vgpr25 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr24_vgpr25, 0, killed $vgpr18_vgpr19, implicit $exec
  renamable $vgpr26_vgpr27, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr28_vgpr29, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr18 = V_ADD_CO_U32_e32 $vgpr18, $vgpr28, implicit-def $vcc, implicit $exec
  renamable $vgpr24 = V_ADDC_U32_e32 killed $vgpr19, killed $vgpr29, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr27 = V_ADDC_U32_e32 0, $vgpr27, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, killed $vgpr26_vgpr27, implicit $exec
  renamable $vgpr24 = V_MUL_LO_U32_e64 $sgpr37, $vgpr18, implicit $exec
  renamable $vgpr25 = V_MUL_LO_U32_e64 $sgpr36, $vgpr19, implicit $exec
  renamable $vgpr18_vgpr19, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr18, 0, 0, implicit $exec
  renamable $vgpr19 = V_ADD3_U32_e64 $vgpr19, killed $vgpr25, killed $vgpr24, implicit $exec
  renamable $vgpr24 = V_SUB_U32_e32 $vgpr21, $vgpr19, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr18 = V_SUB_CO_U32_e32 killed $vgpr23, killed $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr23, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr24, $vgpr25, $vcc, 0, implicit $exec
  renamable $vgpr24, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr18, 0, implicit $exec
  renamable $vgpr26, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr23, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr26, implicit $exec
  renamable $vgpr27 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr24, implicit $exec
  renamable $vgpr28 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr26, implicit $exec
  renamable $vgpr27 = V_CNDMASK_B32_e64 0, killed $vgpr27, 0, killed $vgpr28, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr23, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr23, killed $vgpr25, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr25, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec
  renamable $vgpr23, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr23, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr27, implicit $exec
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, killed $vgpr26, 0, killed $vgpr23, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr19 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr19, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr19, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr18, implicit-def $vcc, implicit $exec
  renamable $vgpr26 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr19, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr26, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr19 = V_CNDMASK_B32_e32 killed $vgpr19, killed $vgpr23, implicit $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr24, 0, killed $vgpr25, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr21, implicit killed $vcc, implicit $exec
  renamable $vgpr19 = V_XOR_B32_e32 killed $vgpr19, $vgpr22, implicit $exec
  renamable $vgpr18 = V_XOR_B32_e32 killed $vgpr18, $vgpr22, implicit $exec
  renamable $vgpr18 = V_SUB_CO_U32_e32 killed $vgpr18, $vgpr22, implicit-def $vcc, implicit $exec
  renamable $vgpr19 = V_SUBB_U32_e32 killed $vgpr19, killed $vgpr22, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  S_BRANCH %bb.6

bb.55 (%ir-block.427):
; predecessors: %bb.8
  successors: %bb.9(0x80000000); %bb.9(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr24_vgpr25:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr22 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 killed $vgpr22, 1333788672, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_MUL_F32_e32 796917760, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_TRUNC_F32_e32 killed $vgpr22, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 $vgpr22, -813694976, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr22 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr22, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr22, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr21, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr26 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec
  $vgpr27 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr26_vgpr27, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr23, $vgpr26, implicit $exec
  renamable $vgpr27 = V_XOR_B32_e32 killed $vgpr22, $vgpr26, implicit $exec
  renamable $vgpr22_vgpr23, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr27, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr27, $sgpr9, implicit $exec
  renamable $vgpr25 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 $vgpr24_vgpr25, 0, killed $vgpr22_vgpr23, implicit $exec
  renamable $vgpr28_vgpr29, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr30_vgpr31, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr22 = V_ADD_CO_U32_e32 $vgpr22, $vgpr30, implicit-def $vcc, implicit $exec
  renamable $vgpr24 = V_ADDC_U32_e32 killed $vgpr23, killed $vgpr31, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr29 = V_ADDC_U32_e32 0, $vgpr29, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, killed $vgpr28_vgpr29, implicit $exec
  renamable $vgpr24 = V_MUL_LO_U32_e64 $sgpr37, $vgpr22, implicit $exec
  renamable $vgpr25 = V_MUL_LO_U32_e64 $sgpr36, $vgpr23, implicit $exec
  renamable $vgpr22_vgpr23, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr22, 0, 0, implicit $exec
  renamable $vgpr23 = V_ADD3_U32_e64 $vgpr23, killed $vgpr25, killed $vgpr24, implicit $exec
  renamable $vgpr24 = V_SUB_U32_e32 $vgpr21, $vgpr23, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr22 = V_SUB_CO_U32_e32 killed $vgpr27, killed $vgpr22, implicit-def $vcc, implicit $exec
  renamable $vgpr24, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr24, $vgpr25, $vcc, 0, implicit $exec
  renamable $vgpr27, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr22, 0, implicit $exec
  renamable $vgpr28, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr28, implicit $exec
  renamable $vgpr29 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr27, implicit $exec
  renamable $vgpr30 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr28, implicit $exec
  renamable $vgpr29 = V_CNDMASK_B32_e64 0, killed $vgpr29, 0, killed $vgpr30, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr24, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr25, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr25, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr27, 0, implicit $exec
  renamable $vgpr24, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr29, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr28, 0, killed $vgpr24, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr23, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr22, implicit-def $vcc, implicit $exec
  renamable $vgpr28 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr23 = V_CNDMASK_B32_e32 killed $vgpr23, killed $vgpr28, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr23, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit $vcc, implicit $exec
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, killed $vgpr27, 0, killed $vgpr25, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr22 = V_CNDMASK_B32_e32 killed $vgpr22, killed $vgpr23, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr26, implicit $exec
  renamable $vgpr22 = V_XOR_B32_e32 killed $vgpr22, $vgpr26, implicit $exec
  renamable $vgpr22 = V_SUB_CO_U32_e32 killed $vgpr22, $vgpr26, implicit-def $vcc, implicit $exec
  renamable $vgpr23 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr26, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  S_BRANCH %bb.9

bb.56 (%ir-block.449):
; predecessors: %bb.11
  successors: %bb.12(0x80000000); %bb.12(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr26 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 killed $vgpr26, 1333788672, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_MUL_F32_e32 796917760, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_TRUNC_F32_e32 killed $vgpr26, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 $vgpr26, -813694976, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr26 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr26, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr26, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr21, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr28 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec
  $vgpr29 = V_MOV_B32_e32 $vgpr28, implicit $exec, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr28_vgpr29, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr25, $vgpr28, implicit $exec
  renamable $vgpr29 = V_XOR_B32_e32 killed $vgpr24, $vgpr28, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr29, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr26 = V_MUL_HI_U32_e64 $vgpr29, $sgpr9, implicit $exec
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr26_vgpr27, 0, killed $vgpr24_vgpr25, implicit $exec
  renamable $vgpr30_vgpr31, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr32_vgpr33, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr32, implicit-def $vcc, implicit $exec
  renamable $vgpr26 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr33, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr31 = V_ADDC_U32_e32 0, $vgpr31, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr26_vgpr27, 0, killed $vgpr30_vgpr31, implicit $exec
  renamable $vgpr26 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec
  renamable $vgpr27 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr27, killed $vgpr26, implicit $exec
  renamable $vgpr26 = V_SUB_U32_e32 $vgpr21, $vgpr25, implicit $exec
  $vgpr27 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr24 = V_SUB_CO_U32_e32 killed $vgpr29, killed $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr26, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr26, $vgpr27, $vcc, 0, implicit $exec
  renamable $vgpr29, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec
  renamable $vgpr30, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr26, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr30, implicit $exec
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr29, implicit $exec
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr30, implicit $exec
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, killed $vgpr31, 0, killed $vgpr32, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr26, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr26, killed $vgpr27, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr27, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr29, 0, implicit $exec
  renamable $vgpr26, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr26, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr31, implicit $exec
  renamable $vgpr26 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr26, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr30 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr30, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr26, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr29, 0, killed $vgpr27, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e32 killed $vgpr24, killed $vgpr25, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr28, implicit $exec
  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr24, $vgpr28, implicit $exec
  renamable $vgpr26 = V_SUB_CO_U32_e32 killed $vgpr24, $vgpr28, implicit-def $vcc, implicit $exec
  renamable $vgpr27 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr28, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  S_BRANCH %bb.12

bb.57 (%ir-block.471):
; predecessors: %bb.14
  successors: %bb.15(0x80000000); %bb.15(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr28 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 killed $vgpr28, 1333788672, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_MUL_F32_e32 796917760, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_TRUNC_F32_e32 killed $vgpr28, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 $vgpr28, -813694976, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr28 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr28, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr28, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr21, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr30 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $vgpr30, implicit $exec, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr30_vgpr31, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr25, $vgpr30, implicit $exec
  renamable $vgpr31 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr31, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr28 = V_MUL_HI_U32_e64 $vgpr31, $sgpr9, implicit $exec
  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr28_vgpr29, 0, killed $vgpr24_vgpr25, implicit $exec
  renamable $vgpr32_vgpr33, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr34_vgpr35, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr34, implicit-def $vcc, implicit $exec
  renamable $vgpr28 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr35, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr33 = V_ADDC_U32_e32 0, $vgpr33, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr28_vgpr29, 0, killed $vgpr32_vgpr33, implicit $exec
  renamable $vgpr28 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec
  renamable $vgpr29 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr29, killed $vgpr28, implicit $exec
  renamable $vgpr28 = V_SUB_U32_e32 $vgpr21, $vgpr25, implicit $exec
  $vgpr29 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr24 = V_SUB_CO_U32_e32 killed $vgpr31, killed $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr28, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr28, $vgpr29, $vcc, 0, implicit $exec
  renamable $vgpr31, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec
  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr28, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr31, implicit $exec
  renamable $vgpr34 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr34, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr28, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr28, killed $vgpr29, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr29, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr31, 0, implicit $exec
  renamable $vgpr28, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr28, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec
  renamable $vgpr28 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr28, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr32, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr28, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr31, 0, killed $vgpr29, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e32 killed $vgpr24, killed $vgpr25, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr30, implicit $exec
  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr28 = V_SUB_CO_U32_e32 killed $vgpr24, $vgpr30, implicit-def $vcc, implicit $exec
  renamable $vgpr29 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr30, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  S_BRANCH %bb.15

bb.58 (%ir-block.493):
; predecessors: %bb.17
  successors: %bb.18(0x80000000); %bb.18(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr30 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 killed $vgpr30, 1333788672, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_MUL_F32_e32 796917760, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_TRUNC_F32_e32 killed $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 $vgpr30, -813694976, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr30, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr21, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr30 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $vgpr30, implicit $exec, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr30_vgpr31, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr25, $vgpr30, implicit $exec
  renamable $vgpr31 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr31, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr32 = V_MUL_HI_U32_e64 $vgpr31, $sgpr9, implicit $exec
  renamable $vgpr33 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, killed $vgpr24_vgpr25, implicit $exec
  renamable $vgpr34_vgpr35, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr36_vgpr37, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr36, implicit-def $vcc, implicit $exec
  renamable $vgpr32 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr37, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr35 = V_ADDC_U32_e32 0, $vgpr35, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr32_vgpr33, 0, killed $vgpr34_vgpr35, implicit $exec
  renamable $vgpr32 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec
  renamable $vgpr33 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr33, killed $vgpr32, implicit $exec
  renamable $vgpr32 = V_SUB_U32_e32 $vgpr21, $vgpr25, implicit $exec
  $vgpr33 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr24 = V_SUB_CO_U32_e32 killed $vgpr31, killed $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr32, $vgpr33, $vcc, 0, implicit $exec
  renamable $vgpr32, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec
  renamable $vgpr34, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr31, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr34, implicit $exec
  renamable $vgpr35 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr32, implicit $exec
  renamable $vgpr36 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr34, implicit $exec
  renamable $vgpr35 = V_CNDMASK_B32_e64 0, killed $vgpr35, 0, killed $vgpr36, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr31, killed $vgpr33, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr33, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr32, 0, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr31, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr35, implicit $exec
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, killed $vgpr34, 0, killed $vgpr31, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr34 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr34, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr31, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr33, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e32 killed $vgpr24, killed $vgpr25, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr30, implicit $exec
  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr34 = V_SUB_CO_U32_e32 killed $vgpr24, $vgpr30, implicit-def $vcc, implicit $exec
  renamable $vgpr35 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr30, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  S_BRANCH %bb.18

bb.59 (%ir-block.515):
; predecessors: %bb.20
  successors: %bb.21(0x80000000); %bb.21(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr30 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 killed $vgpr30, 1333788672, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_MUL_F32_e32 796917760, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_TRUNC_F32_e32 killed $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 $vgpr30, -813694976, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr30, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr21, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr30 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $vgpr30, implicit $exec, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr30_vgpr31, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr25, $vgpr30, implicit $exec
  renamable $vgpr31 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr31, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr32 = V_MUL_HI_U32_e64 $vgpr31, $sgpr9, implicit $exec
  renamable $vgpr33 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, killed $vgpr24_vgpr25, implicit $exec
  renamable $vgpr36_vgpr37, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr38_vgpr39, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr38, implicit-def $vcc, implicit $exec
  renamable $vgpr32 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr39, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr37 = V_ADDC_U32_e32 0, $vgpr37, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr32_vgpr33, 0, killed $vgpr36_vgpr37, implicit $exec
  renamable $vgpr32 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec
  renamable $vgpr33 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr33, killed $vgpr32, implicit $exec
  renamable $vgpr32 = V_SUB_U32_e32 $vgpr21, $vgpr25, implicit $exec
  $vgpr33 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr24 = V_SUB_CO_U32_e32 killed $vgpr31, killed $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr32, $vgpr33, $vcc, 0, implicit $exec
  renamable $vgpr32, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec
  renamable $vgpr36, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr31, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr36, implicit $exec
  renamable $vgpr37 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr32, implicit $exec
  renamable $vgpr38 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr36, implicit $exec
  renamable $vgpr37 = V_CNDMASK_B32_e64 0, killed $vgpr37, 0, killed $vgpr38, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr31, killed $vgpr33, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr33, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr32, 0, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr31, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr37, implicit $exec
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, killed $vgpr36, 0, killed $vgpr31, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr36 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr36, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr31, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr33, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e32 killed $vgpr24, killed $vgpr25, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr30, implicit $exec
  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr36 = V_SUB_CO_U32_e32 killed $vgpr24, $vgpr30, implicit-def $vcc, implicit $exec
  renamable $vgpr37 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr30, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  S_BRANCH %bb.21

bb.60 (%ir-block.537):
; predecessors: %bb.23
  successors: %bb.24(0x80000000); %bb.24(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec
  renamable $vgpr30 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 killed $vgpr30, 1333788672, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_MUL_F32_e32 796917760, $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_TRUNC_F32_e32 killed $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_FMAMK_F32 $vgpr30, -813694976, killed $vgpr21, implicit $mode, implicit $exec
  renamable $vgpr30 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr30, implicit $mode, implicit $exec
  renamable $vgpr21 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr21, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr30, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr21, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr33, implicit-def dead $scc
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr39
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr7
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr39
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr39
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr10 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr10
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr38
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr38
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr10, renamable $sgpr8
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr38, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr38, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr40, implicit-def $scc
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr10, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr10, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr30 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $vgpr30, implicit $exec, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr30_vgpr31, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 $vgpr25, $vgpr30, implicit $exec
  renamable $vgpr31 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr31, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr32 = V_MUL_HI_U32_e64 $vgpr31, $sgpr9, implicit $exec
  renamable $vgpr33 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, killed $vgpr24_vgpr25, implicit $exec
  renamable $vgpr38_vgpr39, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr40_vgpr41, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr21, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr40, implicit-def $vcc, implicit $exec
  renamable $vgpr32 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr41, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr39 = V_ADDC_U32_e32 0, $vgpr39, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr32_vgpr33, 0, killed $vgpr38_vgpr39, implicit $exec
  renamable $vgpr32 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec
  renamable $vgpr33 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec
  renamable $vgpr24_vgpr25, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr33, killed $vgpr32, implicit $exec
  renamable $vgpr32 = V_SUB_U32_e32 $vgpr21, $vgpr25, implicit $exec
  $vgpr33 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec
  renamable $vgpr24 = V_SUB_CO_U32_e32 killed $vgpr31, killed $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr32, $vgpr33, $vcc, 0, implicit $exec
  renamable $vgpr32, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec
  renamable $vgpr38, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr31, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr38, implicit $exec
  renamable $vgpr39 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr32, implicit $exec
  renamable $vgpr40 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr38, implicit $exec
  renamable $vgpr39 = V_CNDMASK_B32_e64 0, killed $vgpr39, 0, killed $vgpr40, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr31, killed $vgpr33, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr33, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr32, 0, implicit $exec
  renamable $vgpr31, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr31, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr39, implicit $exec
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, killed $vgpr38, 0, killed $vgpr31, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr36, $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr38 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr38, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr31, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr33, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr24 = V_CNDMASK_B32_e32 killed $vgpr24, killed $vgpr25, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr30, implicit $exec
  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr24, $vgpr30, implicit $exec
  renamable $vgpr42 = V_SUB_CO_U32_e32 killed $vgpr24, $vgpr30, implicit-def $vcc, implicit $exec
  renamable $vgpr43 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr30, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  S_BRANCH %bb.24

bb.61 (%ir-block.559):
; predecessors: %bb.26
  successors: %bb.27(0x80000000); %bb.27(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr0, $vgpr131, $vgpr133, $vgpr135, $vgpr159, $vgpr166, $vgpr175, $vgpr229, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51, $vgpr130_vgpr131:0x0000000000000003, $vgpr132_vgpr133:0x0000000000000003, $vgpr134_vgpr135:0x0000000000000003, $vgpr136_vgpr137:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr172_vgpr173:0x0000000000000003, $vgpr174_vgpr175:0x0000000000000003, $vgpr190_vgpr191:0x0000000000000003, $vgpr192_vgpr193:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr6 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc
  $sgpr7 = S_MOV_B32 $sgpr6
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr6, implicit-def $scc
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr6, implicit-def dead $scc, implicit $scc
  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr6_sgpr7, implicit-def dead $scc
  renamable $vgpr24 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec
  renamable $vgpr25 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_FMAMK_F32 killed $vgpr25, 1333788672, killed $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_RCP_F32_e32 killed $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_MUL_F32_e32 796917760, $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_TRUNC_F32_e32 killed $vgpr25, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_FMAMK_F32 $vgpr25, -813694976, killed $vgpr24, implicit $mode, implicit $exec
  renamable $vgpr25 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr25, implicit $mode, implicit $exec
  renamable $vgpr24 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr24, implicit $mode, implicit $exec
  renamable $sgpr8 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc
  renamable $sgpr9 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit $scc
  renamable $sgpr33 = V_READFIRSTLANE_B32 killed $vgpr25, implicit $exec
  renamable $sgpr6 = V_READFIRSTLANE_B32 killed $vgpr24, implicit $exec
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr8, renamable $sgpr33
  renamable $sgpr36 = S_MUL_I32 renamable $sgpr9, renamable $sgpr6
  renamable $sgpr37 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr37, killed renamable $sgpr7, implicit-def dead $scc
  renamable $sgpr7 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr36, implicit-def dead $scc
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr37 = S_MUL_I32 renamable $sgpr6, renamable $sgpr7
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr6
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr6, renamable $sgpr38
  renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr39, killed renamable $sgpr37, implicit-def $scc
  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr33, renamable $sgpr7
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr33, renamable $sgpr38
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr33, killed renamable $sgpr38
  dead renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr37, killed renamable $sgpr38, implicit-def $scc
  renamable $sgpr36 = S_ADDC_U32 killed renamable $sgpr36, killed renamable $sgpr40, implicit-def $scc, implicit $scc
  renamable $sgpr37 = S_ADDC_U32 killed renamable $sgpr39, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr7 = S_MUL_I32 renamable $sgpr33, killed renamable $sgpr7
  renamable $sgpr7 = S_ADD_U32 killed renamable $sgpr36, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr37, implicit-def dead $scc, implicit $scc
  renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr6, killed renamable $sgpr7, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr8, renamable $sgpr33
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr37
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr7, killed renamable $sgpr6, implicit-def dead $scc
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr37
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr6, killed renamable $sgpr9, implicit-def dead $scc
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr33, renamable $sgpr6
  renamable $sgpr8 = S_MUL_I32 killed renamable $sgpr8, renamable $sgpr37
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr33, renamable $sgpr8
  renamable $sgpr36 = S_MUL_I32 renamable $sgpr33, renamable $sgpr8
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr37, renamable $sgpr6
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr37, renamable $sgpr6
  renamable $sgpr8 = S_MUL_HI_U32 renamable $sgpr37, killed renamable $sgpr8
  renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr39, implicit-def $scc
  renamable $sgpr38 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc
  dead renamable $sgpr8 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr36, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr38, killed renamable $sgpr9, implicit-def $scc, implicit $scc
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc
  renamable $sgpr6 = S_MUL_I32 renamable $sgpr33, killed renamable $sgpr6
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr8, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 0, killed renamable $sgpr7, implicit-def dead $scc, implicit $scc
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr37, killed renamable $sgpr6, implicit-def $scc
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc
  S_CMP_LG_U64 killed renamable $sgpr6_sgpr7, 0, implicit-def $scc
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr8, implicit-def dead $scc, implicit $scc
  renamable $vgpr24 = V_ASHRREV_I32_e32 31, $vgpr21, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr24, implicit $exec, implicit $exec
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, $vgpr24_vgpr25, implicit $exec
  renamable $vgpr25 = V_XOR_B32_e32 $vgpr21, $vgpr24, implicit $exec
  renamable $vgpr40 = V_XOR_B32_e32 killed $vgpr20, $vgpr24, implicit $exec
  renamable $vgpr20_vgpr21, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr40, $sgpr8, 0, 0, implicit $exec
  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr40, $sgpr9, implicit $exec
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr20_vgpr21, implicit $exec
  renamable $vgpr32_vgpr33, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr25, killed $sgpr8, 0, 0, implicit $exec
  renamable $vgpr38_vgpr39, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $vgpr25, killed $sgpr9, 0, 0, implicit $exec
  dead renamable $vgpr20 = V_ADD_CO_U32_e32 $vgpr20, $vgpr38, implicit-def $vcc, implicit $exec
  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr21, killed $vgpr39, implicit-def $vcc, implicit $vcc, implicit $exec
  renamable $vgpr33 = V_ADDC_U32_e32 0, $vgpr33, implicit-def dead $vcc, implicit $vcc, implicit $exec
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec
  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr17, $vgpr20, implicit $exec
  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr16, $vgpr21, implicit $exec
  renamable $vgpr20_vgpr21, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 $sgpr16, killed $vgpr20, 0, 0, implicit $exec
  renamable $vgpr21 = V_ADD3_U32_e64 $vgpr21, killed $vgpr31, killed $vgpr30, implicit $exec
  renamable $vgpr30 = V_SUB_U32_e32 $vgpr25, $vgpr21, implicit $exec
  $vgpr31 = V_MOV_B32_e32 $sgpr17, implicit $exec, implicit $exec
  renamable $vgpr20 = V_SUB_CO_U32_e32 killed $vgpr40, killed $vgpr20, implicit-def $vcc, implicit $exec
  renamable $vgpr30, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec
  renamable $vgpr32, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr20, 0, implicit $exec
  renamable $vgpr33, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr30, $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, $vgpr33, implicit $exec
  renamable $vgpr38 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, $vgpr32, implicit $exec
  renamable $vgpr39 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, $vgpr33, implicit $exec
  renamable $vgpr38 = V_CNDMASK_B32_e64 0, killed $vgpr38, 0, killed $vgpr39, killed $sgpr8_sgpr9, implicit $exec
  renamable $vgpr30, dead renamable $sgpr6_sgpr7 = V_SUBB_U32_e64 killed $vgpr30, killed $vgpr31, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $vgpr31, renamable $sgpr6_sgpr7 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr32, 0, implicit $exec
  renamable $vgpr30, dead renamable $sgpr6_sgpr7 = V_SUBBREV_U32_e64 0, killed $vgpr30, killed $sgpr6_sgpr7, 0, implicit $exec
  renamable $sgpr6_sgpr7 = V_CMP_NE_U32_e64 0, killed $vgpr38, implicit $exec
  renamable $vgpr30 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr30, $sgpr6_sgpr7, implicit $exec
  renamable $vgpr21 = V_SUBB_U32_e32 killed $vgpr25, killed $vgpr21, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr17, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_LE_U32_e32 $sgpr16, $vgpr20, implicit-def $vcc, implicit $exec
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec
  V_CMP_EQ_U32_e32 killed $sgpr17, $vgpr21, implicit-def $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr33, implicit killed $vcc, implicit $exec
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr30, implicit $vcc, implicit $exec
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr31, killed $sgpr6_sgpr7, implicit $exec
  renamable $vgpr20 = V_CNDMASK_B32_e32 killed $vgpr20, killed $vgpr25, implicit killed $vcc, implicit $exec
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr24, implicit $exec
  renamable $vgpr20 = V_XOR_B32_e32 killed $vgpr20, $vgpr24, implicit $exec
  renamable $vgpr44 = V_SUB_CO_U32_e32 killed $vgpr20, $vgpr24, implicit-def $vcc, implicit $exec
  renamable $vgpr45 = V_SUBB_U32_e32 killed $vgpr21, killed $vgpr24, implicit-def dead $vcc, implicit killed $vcc, implicit $exec
  renamable $vgpr20_vgpr21 = IMPLICIT_DEF
  S_BRANCH %bb.27

# End machine code for function _moe_gemm_a8w4.

