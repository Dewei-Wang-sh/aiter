# *** IR Dump After SI Insert Hard Clauses (si-insert-hard-clauses) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, NoVRegs, TiedOpsRewritten, TracksDebugUserValues
Frame Objects:
  fi#0: size=16, align=4, at location [SP]
  fi#1: size=16, align=4, at location [SP+16]
  fi#2: size=16, align=4, at location [SP+32]
  fi#3: size=8, align=4, at location [SP+48]
  fi#4: size=8, align=4, at location [SP+56]
  fi#5: size=8, align=4, at location [SP+64]
  fi#6: size=8, align=4, at location [SP+72]
  fi#7: size=8, align=4, at location [SP+80]
  fi#8: size=4, align=4, at location [SP+88]
  fi#9: size=4, align=4, at location [SP+92]
  fi#10: size=4, align=4, at location [SP+96]
  fi#11: size=8, align=4, at location [SP+100]
  fi#12: size=4, align=4, at location [SP+108]
  fi#13: size=8, align=4, at location [SP+112]
  fi#14: size=4, align=4, at location [SP+120]
  fi#15: size=8, align=4, at location [SP+124]
  fi#16: size=8, align=4, at location [SP+132]
  fi#17: size=8, align=4, at location [SP+140]
  fi#18: size=8, align=4, at location [SP+148]
  fi#19: size=4, align=4, at location [SP+156]
  fi#20: size=4, align=4, at location [SP+160]
  fi#21: size=4, align=4, at location [SP+164]
save/restore points:
save points are empty
restore points are empty
Function Live Ins: $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr5, $sgpr6_sgpr7, $sgpr8, $sgpr12_sgpr13, $sgpr14, $sgpr15, $sgpr16

bb.0 (%ir-block.30):
  successors: %bb.1(0x40000000), %bb.50(0x40000000); %bb.1(50.00%), %bb.50(50.00%)
  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
  $sgpr24_sgpr25 = S_MOV_B64 killed $sgpr6_sgpr7
  $sgpr20_sgpr21 = S_MOV_B64 killed $sgpr2_sgpr3
  early-clobber renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  $vgpr240 = V_MOV_B32_e32 killed $vgpr0, implicit $exec, implicit $exec
  renamable $vgpr1 = V_MOV_B32_e32 0, implicit $exec
  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode, debug-location !8; moe_op_gemm_a8w4.py:190
  S_WAITCNT 49279, debug-location !10; moe_op_gemm_a8w4.py:294:37
  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr6_sgpr7, renamable $vgpr1, 0, 0, implicit $exec, debug-location !10 :: (load (s32) from %ir.22, addrspace 1); moe_op_gemm_a8w4.py:294:37
  S_WAITCNT 3952, debug-location !10; moe_op_gemm_a8w4.py:294:37
  renamable $sgpr6 = V_READFIRSTLANE_B32 $vgpr0, implicit $exec, debug-location !10; moe_op_gemm_a8w4.py:294:37
  renamable $vgpr0 = V_SUB_U32_e32 killed $sgpr2, killed $vgpr0, implicit $exec, debug-location !11; moe_op_gemm_a8w4.py:294:29
  renamable $sgpr2 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !12; moe_op_gemm_a8w4.py:302:38
  S_CMP_LT_I32 renamable $sgpr16, renamable $sgpr2, implicit-def $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
  V_CMP_GT_I32_e32 1, killed $vgpr0, implicit-def $vcc, implicit $exec, debug-location !13; moe_op_gemm_a8w4.py:303:19
  renamable $sgpr10_sgpr11 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
  renamable $sgpr10_sgpr11 = S_OR_B64 killed renamable $vcc, killed renamable $sgpr10_sgpr11, implicit-def dead $scc
  renamable $vcc = S_AND_B64 $exec, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !15; moe_op_gemm_a8w4.py:303:25
  S_CBRANCH_VCCZ %bb.50, implicit killed $vcc, debug-location !15; moe_op_gemm_a8w4.py:303:25

bb.1 (%ir-block.39):
; predecessors: %bb.0
  successors: %bb.2(0x50000000), %bb.50(0x30000000); %bb.2(62.50%), %bb.50(37.50%)
  liveins: $sgpr2, $sgpr5, $sgpr6, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr1, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000C, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
  renamable $sgpr4 = S_ASHR_I32 renamable $sgpr2, 31, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_LSHR_B32 killed renamable $sgpr4, 29, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_ADD_I32 renamable $sgpr2, killed renamable $sgpr4, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 3, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_AND_B32 killed renamable $sgpr4, -8, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_SUB_I32 renamable $sgpr2, killed renamable $sgpr4, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr2 = S_ABS_I32 killed renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr2, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr16, 31, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_LSHR_B32 killed renamable $sgpr9, 29, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_ADD_I32 renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr10 = S_ASHR_I32 renamable $sgpr9, 3, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_AND_B32 killed renamable $sgpr9, -8, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_MIN_I32 renamable $sgpr9, killed renamable $sgpr4, implicit-def dead $scc, debug-location !24; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr7 = nsw S_MUL_I32 killed renamable $sgpr7, killed renamable $sgpr9, debug-location !23; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = nsw S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr10, implicit-def dead $scc, debug-location !25; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !26; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr7 = S_SUB_I32 0, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_I32 killed renamable $sgpr7, renamable $sgpr10, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr7, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr7, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr10, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_I32 killed renamable $sgpr7, renamable $sgpr2, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_SUB_I32 renamable $sgpr4, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr2, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr4, implicit killed $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_SUB_I32 renamable $sgpr4, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  S_CMP_GE_U32 renamable $sgpr4, killed renamable $sgpr2, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr2 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr4, implicit killed $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_LSHL_B32 killed renamable $sgpr3, 2, implicit-def dead $scc, debug-location !28; pid_preprocessing.py:72:42 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_ABS_I32 renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_XOR_B32 killed renamable $sgpr2, renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr2, killed renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr9 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_ABS_I32 renamable $sgpr4, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_XOR_B32 renamable $sgpr4, renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_ASHR_I32 killed renamable $sgpr2, 31, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr10, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr9, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr9, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr11, killed renamable $sgpr10, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr9, renamable $sgpr3, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_SUB_I32 renamable $sgpr11, killed renamable $sgpr10, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr17 = S_SUB_I32 renamable $sgpr10, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr10, renamable $sgpr3, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_CSELECT_B32 killed renamable $sgpr17, killed renamable $sgpr10, implicit killed $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit killed $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr2, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr2, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_LSHL_B32 renamable $sgpr9, 2, implicit-def dead $scc, debug-location !33; pid_preprocessing.py:74:33 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_SUB_I32 killed renamable $sgpr6, renamable $sgpr2, implicit-def dead $scc, debug-location !34; pid_preprocessing.py:75:39 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_MIN_I32 killed renamable $sgpr3, 4, implicit-def dead $scc, debug-location !35; pid_preprocessing.py:75:52 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_ABS_I32 renamable $sgpr10, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr18 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 144, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_MUL_I32 killed renamable $sgpr6, renamable $sgpr19, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr19, killed renamable $sgpr6, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr19, killed renamable $sgpr6, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr11, renamable $sgpr6, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_MUL_I32 killed renamable $sgpr19, renamable $sgpr3, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr11, killed renamable $sgpr19, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr19, killed renamable $sgpr11, implicit killed $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr19, killed renamable $sgpr11, implicit killed $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_XOR_B32 killed renamable $sgpr11, renamable $sgpr18, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr11, killed renamable $sgpr18, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr2, killed renamable $sgpr11, implicit-def dead $scc, debug-location !37; pid_preprocessing.py:77:31 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_ASHR_I32 renamable $sgpr18, 31, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $sgpr18_sgpr19 = S_LSHL_B64 killed renamable $sgpr18_sgpr19, 2, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  S_WAITCNT 49279, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $sgpr16 = S_ADD_U32 killed renamable $sgpr16, killed renamable $sgpr18, implicit-def $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $sgpr17 = S_ADDC_U32 killed renamable $sgpr17, killed renamable $sgpr19, implicit-def dead $scc, implicit killed $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $vgpr1 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr16_sgpr17, killed renamable $vgpr1, 0, 0, implicit $exec, debug-location !38 :: (load (s32) from %ir.162, addrspace 1); moe_op_gemm_a8w4.py:319:24
  renamable $sgpr2 = S_MOV_B32 0
  S_WAITCNT 3952, debug-location !39; moe_op_gemm_a8w4.py:320:20
  V_CMP_EQ_U32_e32 -1, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !39; moe_op_gemm_a8w4.py:320:20
  $vcc = S_AND_B64 $exec, killed renamable $vcc, implicit-def dead $scc, debug-location !39; moe_op_gemm_a8w4.py:320:20
  S_CBRANCH_VCCNZ %bb.50, implicit killed $vcc, debug-location !39; moe_op_gemm_a8w4.py:320:20

bb.2 (%ir-block.166):
; predecessors: %bb.1
  successors: %bb.54(0x40000000), %bb.3(0x40000000); %bb.54(50.00%), %bb.3(50.00%)
  liveins: $sgpr3, $sgpr4, $sgpr5, $sgpr6, $sgpr7, $sgpr8, $sgpr9, $sgpr10, $sgpr14, $sgpr15, $vgpr1, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x0000000000000003, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
  early-clobber renamable $sgpr16_sgpr17_sgpr18_sgpr19 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
  renamable $vgpr151 = V_AND_B32_e32 65535, $vgpr1, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
  renamable $vgpr2 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr151, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
  renamable $vgpr0 = V_ASHRREV_I32_e32 16, killed $vgpr1, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr0, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
  S_WAITCNT 49279, debug-location !44; moe_op_gemm_a8w4.py:324:16
  renamable $vgpr160 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, renamable $vgpr2, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
  renamable $sgpr18_sgpr19 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $vgpr230 = V_LSHRREV_B32_e32 4, $vgpr240, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr234_vgpr235 = nsw V_LSHLREV_B64_e64 7, killed $vgpr0_vgpr1, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
  renamable $vgpr231 = disjoint V_OR_B32_e32 32, $vgpr230, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr232 = disjoint V_OR_B32_e32 64, $vgpr230, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  S_WAITCNT 49279, debug-location !45; moe_op_gemm_a8w4.py:325:22
  renamable $vgpr237 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, killed renamable $vgpr2, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
  renamable $vgpr233 = disjoint V_OR_B32_e32 96, $vgpr230, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr162 = V_OR_B32_e32 $vgpr234, $vgpr230, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr168 = V_OR_B32_e32 $vgpr234, $vgpr231, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr166 = V_OR_B32_e32 $vgpr234, $vgpr232, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr164 = V_OR_B32_e32 $vgpr234, $vgpr233, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr1 = V_SUB_U32_e32 0, $vgpr162, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_SUB_U32_e32 0, $vgpr168, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_SUB_U32_e32 0, $vgpr166, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_SUB_U32_e32 0, $vgpr164, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_MAX_I32_e32 killed $vgpr1, $vgpr162, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_MAX_I32_e32 killed $vgpr2, $vgpr168, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_MAX_I32_e32 killed $vgpr3, $vgpr166, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_MAX_I32_e32 killed $vgpr4, $vgpr164, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, killed renamable $sgpr7, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr6, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_ASHR_I32 killed renamable $sgpr10, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr7 = S_XOR_B32 killed renamable $sgpr7, killed renamable $sgpr10, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_SUB_I32 renamable $sgpr4, renamable $sgpr3, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr234, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr10, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr4, implicit killed $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr27 = S_MOV_B32 159744
  renamable $sgpr26 = S_MOV_B32 2147483646
  S_CMP_GE_U32 killed renamable $sgpr4, killed renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  $sgpr18 = S_MOV_B32 $sgpr26, debug-location !53; moe_op_gemm_a8w4.py:338:27
  $sgpr19 = S_MOV_B32 $sgpr27, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit killed $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr17 = S_AND_B32 killed renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !53; moe_op_gemm_a8w4.py:338:27
  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr92 = V_AND_B32_e32 15, $vgpr240, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $sgpr34 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr170 = V_LSHLREV_B32_e32 4, $vgpr92, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  S_WAITCNT 49279, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr23, 255, implicit-def dead $scc, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $sgpr35 = S_ASHR_I32 renamable $sgpr34, 31, implicit-def dead $scc, debug-location !47; moe_op_gemm_a8w4.py:328:28
  S_CMPK_GT_I32 renamable $sgpr4, 255, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr21 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
  S_WAITCNT 3953, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr5 = V_SUB_U32_e32 0, $vgpr160, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr5 = V_MAX_I32_e32 $vgpr160, killed $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_CVT_F32_U32_e32 $vgpr5, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_SUB_U32_e32 0, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr7, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_HI_U32_e64 $vgpr6, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_ADD_U32_e32 killed $vgpr6, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_HI_U32_e64 $vgpr1, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr2, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr3, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr7, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_MUL_LO_U32_e64 killed $vgpr8, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_MUL_LO_U32_e64 killed $vgpr6, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_SUB_U32_e32 killed $vgpr1, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr9, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr2, killed $vgpr8, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_SUB_U32_e32 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr1, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, killed $vgpr9, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_SUB_U32_e32 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr6, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr2, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_SUB_U32_e32 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_SUB_U32_e32 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_CNDMASK_B32_e32 killed $vgpr2, killed $vgpr7, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr3, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_SUB_U32_e32 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_SUB_U32_e32 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_CNDMASK_B32_e32 killed $vgpr3, killed $vgpr8, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr4, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_SUB_U32_e32 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_CNDMASK_B32_e32 killed $vgpr4, killed $vgpr9, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr1, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_SUB_U32_e32 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr6, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr2, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_SUB_U32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_CNDMASK_B32_e32 killed $vgpr2, killed $vgpr7, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr3, $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_CNDMASK_B32_e32 killed $vgpr3, killed $vgpr8, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  V_CMP_GE_U32_e32 $vgpr4, killed $vgpr5, implicit-def $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_XOR_B32_e32 killed $vgpr3, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_CNDMASK_B32_e32 killed $vgpr4, killed $vgpr9, implicit killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_XOR_B32_e32 killed $vgpr4, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  S_WAITCNT 3952, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr1 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr1, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr2 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr2, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr3 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr3, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr0 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr0, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr4 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr1, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr5 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr2, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr6 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr3, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr7 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr0, killed renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr0 = V_BFREV_B32_e32 1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 3955, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr4, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  S_WAITCNT 3954, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr2 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  S_WAITCNT 3953, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr3 = V_ASHRREV_I32_e32 31, $vgpr6, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  S_WAITCNT 3952, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr8 = V_ASHRREV_I32_e32 31, $vgpr7, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr1 = V_LSHRREV_B32_e32 29, killed $vgpr1, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr2 = V_LSHRREV_B32_e32 29, killed $vgpr2, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr3 = V_LSHRREV_B32_e32 29, killed $vgpr3, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr8 = V_LSHRREV_B32_e32 29, killed $vgpr8, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr1 = V_ADD_U32_e32 killed $vgpr4, killed $vgpr1, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr2 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr2, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr3 = V_ADD_U32_e32 killed $vgpr6, killed $vgpr3, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr4 = V_ADD_U32_e32 killed $vgpr7, killed $vgpr8, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr1 = V_ASHRREV_I32_e32 3, killed $vgpr1, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr2 = V_ASHRREV_I32_e32 3, killed $vgpr2, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr3 = V_ASHRREV_I32_e32 3, killed $vgpr3, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr4 = V_ASHRREV_I32_e32 3, killed $vgpr4, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr50_vgpr51, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr1, $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $vgpr52_vgpr53, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr2, $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $vgpr54_vgpr55, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr3, $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $vgpr56_vgpr57, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr4, killed $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr25 = S_AND_B32 killed renamable $sgpr25, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr1 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr50, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr52, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr54, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, $vgpr56, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = BUFFER_LOAD_DWORDX4_OFFEN killed renamable $vgpr1, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = BUFFER_LOAD_DWORDX4_OFFEN killed renamable $vgpr18, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = BUFFER_LOAD_DWORDX4_OFFEN killed renamable $vgpr19, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = BUFFER_LOAD_DWORDX4_OFFEN killed renamable $vgpr0, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
  renamable $vgpr0 = V_LSHRREV_B32_e32 5, $vgpr240, implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18 = V_OR_B32_e32 $sgpr8, killed $vgpr0, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
  $vgpr19 = V_MOV_B32_e32 $sgpr9, implicit $exec, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  $sgpr3 = S_MOV_B32 killed $sgpr9, debug-location !67; moe_op_gemm_a8w4.py:362:77
  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr8_sgpr9 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  S_CBRANCH_EXECZ %bb.3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77

bb.54 (%ir-block.371):
; predecessors: %bb.2
  successors: %bb.3(0x80000000); %bb.3(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x000000000000000C, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr10 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr11 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr10_sgpr11 = S_XOR_B64 killed renamable $sgpr10_sgpr11, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr10, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr11, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr10, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr11, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr16 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr17 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr2, renamable $sgpr16, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_I32 renamable $sgpr3, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr30, killed renamable $sgpr18, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr19, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_MUL_I32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_MUL_I32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr30, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr19, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
  dead renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr30, killed renamable $sgpr31, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_ADDC_U32 killed renamable $sgpr19, killed renamable $sgpr36, implicit-def $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_ADDC_U32 killed renamable $sgpr33, 0, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_U32 killed renamable $sgpr19, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr30, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr17, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr16, killed renamable $sgpr19, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr2, renamable $sgpr16, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr19, killed renamable $sgpr18, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_MUL_I32 renamable $sgpr16, renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr17, killed renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_ADDC_U32 0, killed renamable $sgpr31, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr30, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr31, killed renamable $sgpr19, implicit-def $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr17, killed renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $vgpr0_vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr16, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr26 = V_XOR_B32_e32 killed $vgpr18, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr19, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr26, $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20 = V_MUL_HI_U32_e64 $vgpr26, $sgpr17, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr20_vgpr21, 0, killed $vgpr18_vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr17, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  dead renamable $vgpr18 = V_ADD_CO_U32_e32 killed $vgpr18, killed $vgpr24, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20 = V_ADDC_U32_e32 killed $vgpr19, killed $vgpr25, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr23 = V_ADDC_U32_e32 0, killed $vgpr23, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, killed $vgpr22_vgpr23, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20 = V_MUL_LO_U32_e64 $sgpr11, $vgpr18, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr21 = V_MUL_LO_U32_e64 $sgpr10, killed $vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr10, killed $vgpr18, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr19 = V_ADD3_U32_e64 killed $vgpr19, killed $vgpr21, killed $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20 = V_SUB_U32_e32 $vgpr1, $vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  $vgpr21 = V_MOV_B32_e32 $sgpr11, implicit $exec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18 = V_SUB_CO_U32_e32 killed $vgpr26, killed $vgpr18, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr20, killed $vgpr21, $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr21, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr18, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr19, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr20, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr11, $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_LE_U32_e32 $sgpr11, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr22 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr10, $vgpr21, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_LE_U32_e32 $sgpr10, $vgpr18, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = V_CMP_EQ_U32_e64 $sgpr11, killed $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, killed $vgpr22, 0, killed $vgpr23, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_EQ_U32_e32 killed $sgpr11, killed $vgpr1, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 killed $sgpr10, $vgpr21, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr19, killed $vgpr23, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_NE_U32_e32 0, killed $vgpr20, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr19 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr22, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_NE_U32_e32 0, killed $vgpr1, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr19, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr22 = V_SUB_CO_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr18_vgpr19 = IMPLICIT_DEF

bb.3.Flow349:
; predecessors: %bb.2, %bb.54
  successors: %bb.4(0x40000000), %bb.5(0x40000000); %bb.4(50.00%), %bb.5(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x0000000000000003, $vgpr22_vgpr23:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr8_sgpr9 = S_OR_SAVEEXEC_B64 killed renamable $sgpr8_sgpr9, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $vgpr19 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr8_sgpr9, implicit-def $scc
  S_CBRANCH_EXECZ %bb.5, implicit $exec

bb.4 (%ir-block.366):
; predecessors: %bb.3
  successors: %bb.5(0x80000000); %bb.5(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr19, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr19, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr10, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr18, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr18, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr22 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77

bb.5 (%ir-block.373):
; predecessors: %bb.3, %bb.4
  successors: %bb.55(0x40000000), %bb.6(0x40000000); %bb.55(50.00%), %bb.6(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr22_vgpr23:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
  renamable $vgpr255 = V_LSHLREV_B32_e32 3, $vgpr240, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $vgpr51 = V_AND_B32_e32 248, $vgpr255, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  S_WAITCNT 49279, debug-location !68; moe_op_gemm_a8w4.py:352:26
  renamable $vgpr53 = V_MUL_LO_U32_e64 $vgpr151, killed $sgpr2, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
  renamable $vgpr55 = V_MUL_LO_U32_e64 killed $sgpr3, killed $vgpr22, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
  renamable $vgpr0 = V_ADD3_U32_e64 $vgpr53, $vgpr51, $vgpr55, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
  renamable $vgpr1 = V_BFREV_B32_e32 1, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $sgpr31 = S_MOV_B32 159744
  renamable $sgpr30 = S_MOV_B32 2147483646
  renamable $sgpr29 = S_AND_B32 killed renamable $sgpr29, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr0, $sgpr6_sgpr7, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr58_vgpr59 = BUFFER_LOAD_DWORDX2_OFFEN killed renamable $vgpr0, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MOV_B32 0
  $sgpr3 = S_MOV_B32 $sgpr11, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr238 = V_LSHRREV_B32_e32 3, $vgpr240, implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_OR_B32_e32 $sgpr18, $vgpr238, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr21 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.55 (%ir-block.405):
; predecessors: %bb.5
  successors: %bb.6(0x80000000); %bb.6(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr20_vgpr21:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr20_vgpr21, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr18, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr19, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr22_vgpr23, 0, killed $vgpr18_vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26_vgpr27, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr18 = V_ADD_CO_U32_e32 killed $vgpr18, killed $vgpr26, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_ADDC_U32_e32 killed $vgpr19, killed $vgpr27, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_ADDC_U32_e32 0, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr22_vgpr23, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_MUL_LO_U32_e64 $sgpr37, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr18, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_ADD3_U32_e64 killed $vgpr19, killed $vgpr23, killed $vgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_SUB_U32_e32 $vgpr1, $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr23 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr18, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr22, $vgpr23, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr18, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr19, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr21, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr21, killed $vgpr23, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr22, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr21, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr26, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr18, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr24, 0, killed $vgpr21, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_CNDMASK_B32_e32 killed $vgpr19, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr19, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, killed $vgpr22, 0, killed $vgpr23, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr18, killed $vgpr19, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr21, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_XOR_B32_e32 killed $vgpr18, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_SUB_CO_U32_e32 killed $vgpr18, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.6.Flow348:
; predecessors: %bb.5, %bb.55
  successors: %bb.7(0x40000000), %bb.8(0x40000000); %bb.7(50.00%), %bb.8(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.8, implicit $exec

bb.7 (%ir-block.400):
; predecessors: %bb.6
  successors: %bb.8(0x80000000); %bb.8(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.8 (%ir-block.407):
; predecessors: %bb.6, %bb.7
  successors: %bb.56(0x40000000), %bb.9(0x40000000); %bb.56(50.00%), %bb.9(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_OR3_B32_e64 $vgpr238, $sgpr18, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.56 (%ir-block.427):
; predecessors: %bb.8
  successors: %bb.9(0x80000000); %bb.9(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr24_vgpr25:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr23, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 $vgpr24_vgpr25, 0, killed $vgpr22_vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28_vgpr29, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr22 = V_ADD_CO_U32_e32 killed $vgpr22, killed $vgpr28, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26_vgpr27, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_ADDC_U32_e32 killed $vgpr23, killed $vgpr29, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_ADDC_U32_e32 0, killed $vgpr27, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, killed $vgpr26_vgpr27, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_MUL_LO_U32_e64 $sgpr37, $vgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr22, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_ADD3_U32_e64 killed $vgpr23, killed $vgpr25, killed $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_SUB_U32_e32 $vgpr1, $vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr25 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr22, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, $vgpr25, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr23, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr22, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr22, killed $vgpr25, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr22, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_CNDMASK_B32_e64 0, killed $vgpr27, 0, killed $vgpr28, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr27, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr26, 0, killed $vgpr22, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_CNDMASK_B32_e32 killed $vgpr23, killed $vgpr26, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr23, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr22, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr24, 0, killed $vgpr25, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr22, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_SUB_CO_U32_e32 killed $vgpr21, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  renamable $vgpr23 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.9.Flow347:
; predecessors: %bb.8, %bb.56
  successors: %bb.10(0x40000000), %bb.11(0x40000000); %bb.10(50.00%), %bb.11(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.11, implicit $exec

bb.10 (%ir-block.422):
; predecessors: %bb.9
  successors: %bb.11(0x80000000); %bb.11(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.11 (%ir-block.429):
; predecessors: %bb.9, %bb.10
  successors: %bb.57(0x40000000), %bb.12(0x40000000); %bb.57(50.00%), %bb.12(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_OR_B32_e32 128, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26_vgpr27 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.57 (%ir-block.449):
; predecessors: %bb.11
  successors: %bb.12(0x80000000); %bb.12(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr26_vgpr27, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30_vgpr31, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 killed $vgpr24, killed $vgpr30, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28_vgpr29, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr31, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29 = V_ADDC_U32_e32 0, killed $vgpr29, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr26_vgpr27, 0, killed $vgpr28_vgpr29, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_ADD3_U32_e64 killed $vgpr25, killed $vgpr27, killed $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr27 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr26, $vgpr27, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr27, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr26, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29 = V_CNDMASK_B32_e64 0, killed $vgpr29, 0, killed $vgpr30, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr29, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr28, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr28, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr24, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr26, 0, killed $vgpr27, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_SUB_CO_U32_e32 killed $vgpr21, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  renamable $vgpr27 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.12.Flow346:
; predecessors: %bb.11, %bb.57
  successors: %bb.13(0x40000000), %bb.14(0x40000000); %bb.13(50.00%), %bb.14(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.14, implicit $exec

bb.13 (%ir-block.444):
; predecessors: %bb.12
  successors: %bb.14(0x80000000); %bb.14(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.14 (%ir-block.451):
; predecessors: %bb.12, %bb.13
  successors: %bb.58(0x40000000), %bb.15(0x40000000); %bb.58(50.00%), %bb.15(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_OR_B32_e32 192, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28_vgpr29 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.15, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.58 (%ir-block.471):
; predecessors: %bb.14
  successors: %bb.15(0x80000000); %bb.15(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr28_vgpr29, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 killed $vgpr24, killed $vgpr32, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30_vgpr31, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr33, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_ADDC_U32_e32 0, killed $vgpr31, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr28_vgpr29, 0, killed $vgpr30_vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_ADD3_U32_e64 killed $vgpr25, killed $vgpr29, killed $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr29 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr28, $vgpr29, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr29, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr28, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, killed $vgpr31, 0, killed $vgpr32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr30, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr24, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr28, 0, killed $vgpr29, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_SUB_CO_U32_e32 killed $vgpr21, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  renamable $vgpr29 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.15.Flow345:
; predecessors: %bb.14, %bb.58
  successors: %bb.16(0x40000000), %bb.17(0x40000000); %bb.16(50.00%), %bb.17(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.17, implicit $exec

bb.16 (%ir-block.466):
; predecessors: %bb.15
  successors: %bb.17(0x80000000); %bb.17(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr28 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.17 (%ir-block.473):
; predecessors: %bb.15, %bb.16
  successors: %bb.59(0x40000000), %bb.18(0x40000000); %bb.59(50.00%), %bb.18(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_OR_B32_e32 256, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr34_vgpr35 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.59 (%ir-block.493):
; predecessors: %bb.17
  successors: %bb.18(0x80000000); %bb.18(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr34_vgpr35, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 killed $vgpr24, killed $vgpr34, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr35, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_ADDC_U32_e32 0, killed $vgpr33, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_ADD3_U32_e64 killed $vgpr25, killed $vgpr31, killed $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr31 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr31, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr34 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr34, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr32, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr24, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr31, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr34 = V_SUB_CO_U32_e32 killed $vgpr21, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  renamable $vgpr35 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.18.Flow344:
; predecessors: %bb.17, %bb.59
  successors: %bb.19(0x40000000), %bb.20(0x40000000); %bb.19(50.00%), %bb.20(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.20, implicit $exec

bb.19 (%ir-block.488):
; predecessors: %bb.18
  successors: %bb.20(0x80000000); %bb.20(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr35 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr34 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.20 (%ir-block.495):
; predecessors: %bb.18, %bb.19
  successors: %bb.60(0x40000000), %bb.21(0x40000000); %bb.60(50.00%), %bb.21(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_OR_B32_e32 320, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr36_vgpr37 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.60 (%ir-block.515):
; predecessors: %bb.20
  successors: %bb.21(0x80000000); %bb.21(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr36_vgpr37, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 killed $vgpr24, killed $vgpr36, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr37, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_ADDC_U32_e32 0, killed $vgpr33, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_ADD3_U32_e64 killed $vgpr25, killed $vgpr31, killed $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr31 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr31, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr36 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr36, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr32, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr24, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr31, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr36 = V_SUB_CO_U32_e32 killed $vgpr21, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  renamable $vgpr37 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.21.Flow343:
; predecessors: %bb.20, %bb.60
  successors: %bb.22(0x40000000), %bb.23(0x40000000); %bb.22(50.00%), %bb.23(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.23, implicit $exec

bb.22 (%ir-block.510):
; predecessors: %bb.21
  successors: %bb.23(0x80000000); %bb.23(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr37 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr36 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.23 (%ir-block.517):
; predecessors: %bb.21, %bb.22
  successors: %bb.61(0x40000000), %bb.24(0x40000000); %bb.61(50.00%), %bb.24(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_OR_B32_e32 384, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr25 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr42_vgpr43 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.61 (%ir-block.537):
; predecessors: %bb.23
  successors: %bb.24(0x80000000); %bb.24(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr38_vgpr39, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr24 = V_ADD_CO_U32_e32 killed $vgpr24, killed $vgpr38, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr39, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_ADDC_U32_e32 0, killed $vgpr33, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr36, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_ADD3_U32_e64 killed $vgpr25, killed $vgpr31, killed $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr31 = V_MOV_B32_e32 $sgpr37, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_SUB_CO_U32_e32 killed $vgpr21, killed $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr25, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr31, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr38 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr38, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr36, $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr37, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_CNDMASK_B32_e32 killed $vgpr25, killed $vgpr32, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr25, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr24, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr31, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr42 = V_SUB_CO_U32_e32 killed $vgpr21, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
  renamable $vgpr43 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.24.Flow342:
; predecessors: %bb.23, %bb.61
  successors: %bb.25(0x40000000), %bb.26(0x40000000); %bb.25(50.00%), %bb.26(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64 $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.26, implicit $exec

bb.25 (%ir-block.532):
; predecessors: %bb.24
  successors: %bb.26(0x80000000); %bb.26(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr42 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.26 (%ir-block.539):
; predecessors: %bb.24, %bb.25
  successors: %bb.62(0x40000000), %bb.27(0x40000000); %bb.62(50.00%), %bb.27(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_OR_B32_e32 448, killed $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr21 = V_MOV_B32_e32 $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr44_vgpr45 = IMPLICIT_DEF
  $sgpr8_sgpr9 = S_AND_SAVEEXEC_B64 killed $sgpr2_sgpr3, implicit-def $exec, implicit-def $scc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10_sgpr11 = S_XOR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.27, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.62 (%ir-block.559):
; predecessors: %bb.26
  successors: %bb.27(0x80000000); %bb.27(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $sgpr3 = S_MOV_B32 $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr37, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr36, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr39, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr36, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr37, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_ADDC_U32 killed renamable $sgpr36, killed renamable $sgpr40, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_ADDC_U32 killed renamable $sgpr39, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_U32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr37, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr36, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr38, killed renamable $sgpr36, implicit-def $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr1 = V_MOV_B32_e32 $vgpr0, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit killed $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr38 = V_XOR_B32_e32 killed $vgpr20, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr38, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr38, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 $vgpr24_vgpr25, 0, killed $vgpr20_vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr20 = V_ADD_CO_U32_e32 killed $vgpr20, killed $vgpr32, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30_vgpr31, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_ADDC_U32_e32 killed $vgpr21, killed $vgpr33, implicit-def $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_ADDC_U32_e32 0, killed $vgpr31, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, killed $vgpr30_vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_MUL_LO_U32_e64 $sgpr17, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25 = V_MUL_LO_U32_e64 $sgpr16, killed $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr16, killed $vgpr20, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_ADD3_U32_e64 killed $vgpr21, killed $vgpr25, killed $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_SUB_U32_e32 $vgpr1, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $vgpr25 = V_MOV_B32_e32 $sgpr17, implicit $exec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_SUB_CO_U32_e32 killed $vgpr38, killed $vgpr20, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, $vgpr25, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr20, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr21, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, $vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr25, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr25, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, $vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr32 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr33, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr17, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 killed $sgpr16, $vgpr20, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr31, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_EQ_U32_e32 killed $sgpr17, $vgpr1, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e32 killed $vgpr21, killed $vgpr31, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_NE_U32_e32 0, killed $vgpr21, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr25, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_CNDMASK_B32_e32 killed $vgpr20, killed $vgpr21, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_CNDMASK_B32_e32 killed $vgpr1, killed $vgpr24, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_XOR_B32_e32 killed $vgpr20, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr44 = V_SUB_CO_U32_e32 killed $vgpr20, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21 = IMPLICIT_DEF
  renamable $vgpr45 = V_SUBB_U32_e32 killed $vgpr1, killed $vgpr0, implicit-def dead $vcc, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.27.Flow341:
; predecessors: %bb.26, %bb.62
  successors: %bb.28(0x40000000), %bb.29(0x40000000); %bb.28(50.00%), %bb.29(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $sgpr2_sgpr3 = S_ANDN2_SAVEEXEC_B64 killed $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
  S_CBRANCH_EXECZ %bb.29, implicit $exec

bb.28 (%ir-block.554):
; predecessors: %bb.27
  successors: %bb.29(0x80000000); %bb.29(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr45 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  V_CMP_LE_U32_e32 $sgpr22, $vgpr0, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr44 = V_CNDMASK_B32_e32 killed $vgpr0, killed $vgpr1, implicit killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.29 (%ir-block.561):
; predecessors: %bb.27, %bb.28
  successors: %bb.30(0x40000000), %bb.31(0x40000000); %bb.30(50.00%), %bb.31(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr19, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr18, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr64_vgpr65, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr18, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr57 = V_LSHLREV_B32_e32 4, $vgpr240, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr61 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr63 = V_MUL_HI_I32_e64 $vgpr151, $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
  renamable $vgpr62 = V_MUL_LO_U32_e64 $vgpr151, killed $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
  renamable $vgpr65 = V_ADD3_U32_e64 killed $vgpr65, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr6_sgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr60 = V_AND_B32_e32 112, $vgpr57, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr72_vgpr73 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, $vgpr62_vgpr63, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 1, killed $vgpr0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  $vgpr18 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  $vgpr19 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  $vgpr20 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  $vgpr21 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  S_CBRANCH_VCCNZ %bb.31, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.30 (%ir-block.571):
; predecessors: %bb.29
  successors: %bb.31(0x80000000); %bb.31(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr64_vgpr65, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.31 (%ir-block.575):
; predecessors: %bb.29, %bb.30
  successors: %bb.32(0x40000000), %bb.33(0x40000000); %bb.32(50.00%), %bb.33(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr23, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr22, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr66_vgpr67, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr22, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr67 = V_ADD3_U32_e64 killed $vgpr67, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  $vgpr22 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  $vgpr24 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr61, implicit $exec, implicit $exec
  S_CBRANCH_VCCNZ %bb.33, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.32 (%ir-block.577):
; predecessors: %bb.31
  successors: %bb.33(0x80000000); %bb.33(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr66_vgpr67, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.33 (%ir-block.581):
; predecessors: %bb.31, %bb.32
  successors: %bb.34(0x40000000), %bb.35(0x40000000); %bb.34(50.00%), %bb.35(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr27, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr26, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr68_vgpr69, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr26, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr69 = V_ADD3_U32_e64 killed $vgpr69, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr30 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr32 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr33 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.35, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.34 (%ir-block.583):
; predecessors: %bb.33
  successors: %bb.35(0x80000000); %bb.35(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x0000000000000003
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr68_vgpr69, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.35 (%ir-block.587):
; predecessors: %bb.33, %bb.34
  successors: %bb.36(0x40000000), %bb.37(0x40000000); %bb.36(50.00%), %bb.37(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x0000000000000003, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr29, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr28, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr70_vgpr71, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr28, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr71 = V_ADD3_U32_e64 killed $vgpr71, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr28 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.37, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.36 (%ir-block.589):
; predecessors: %bb.35
  successors: %bb.37(0x80000000); %bb.37(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr70_vgpr71, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.37 (%ir-block.593):
; predecessors: %bb.35, %bb.36
  successors: %bb.38(0x40000000), %bb.39(0x40000000); %bb.38(50.00%), %bb.39(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr35, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr34, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr74_vgpr75, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr34, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr75 = V_ADD3_U32_e64 killed $vgpr75, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr34 = V_MOV_B32_e32 0, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr38 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr39 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr40 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr41 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.39, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.38 (%ir-block.595):
; predecessors: %bb.37
  successors: %bb.39(0x80000000); %bb.39(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x0000000000000003
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr74_vgpr75, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.39 (%ir-block.599):
; predecessors: %bb.37, %bb.38
  successors: %bb.40(0x40000000), %bb.41(0x40000000); %bb.40(50.00%), %bb.41(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr37, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr36, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr76_vgpr77, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr36, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr77 = V_ADD3_U32_e64 killed $vgpr77, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr35 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr36 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr37 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.41, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.40 (%ir-block.601):
; predecessors: %bb.39
  successors: %bb.41(0x80000000); %bb.41(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr76_vgpr77, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.41 (%ir-block.605):
; predecessors: %bb.39, %bb.40
  successors: %bb.42(0x40000000), %bb.43(0x40000000); %bb.42(50.00%), %bb.43(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr43, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr42, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr78_vgpr79, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr42, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr79 = V_ADD3_U32_e64 killed $vgpr79, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr42 = V_MOV_B32_e32 0, implicit $exec
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr46 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr47 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr48 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr49 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.43, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.42 (%ir-block.607):
; predecessors: %bb.41
  successors: %bb.43(0x80000000); %bb.43(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x0000000000000003
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr78_vgpr79, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.43 (%ir-block.611):
; predecessors: %bb.41, %bb.42
  successors: %bb.44(0x40000000), %bb.45(0x40000000); %bb.44(50.00%), %bb.45(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x0000000000000003, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr45, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr44, killed $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr80_vgpr81, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr44, killed $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr81 = V_ADD3_U32_e64 killed $vgpr81, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr44 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr45 = V_MOV_B32_e32 0, implicit $exec
  S_CBRANCH_VCCNZ %bb.45, implicit killed $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.44 (%ir-block.613):
; predecessors: %bb.43
  successors: %bb.45(0x80000000); %bb.45(100.00%)
  liveins: $sgpr4, $sgpr5, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr80_vgpr81:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr72_vgpr73, 0, $vgpr80_vgpr81, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.45 (%ir-block.617):
; predecessors: %bb.43, %bb.44
  successors: %bb.51(0x40000000), %bb.46(0x40000000); %bb.51(50.00%), %bb.46(50.00%)
  liveins: $sgpr4, $sgpr5, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr80_vgpr81:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
  renamable $sgpr6 = S_MOVK_I32 240
  renamable $vgpr207 = V_BITOP3_B32_e64 $vgpr57, $vgpr240, killed $sgpr6, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $vgpr0 = V_ADD_U32_e32 0, $vgpr207, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0 = V_ADD_U32_e32 65536, killed $vgpr0, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $sgpr6 = S_MOVK_I32 112
  S_WAITCNT 3956, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr2_vgpr3_vgpr4_vgpr5, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 3955, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 3954, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr10_vgpr11_vgpr12_vgpr13, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 3953, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 killed renamable $vgpr0, killed renamable $vgpr14_vgpr15_vgpr16_vgpr17, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr57, $vgpr240, $sgpr6, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr209 = nuw V_ADD_U32_e32 0, killed $vgpr0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr0 = V_ADD_U32_e32 0, $vgpr255, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr0 = V_ADD_U32_e32 98304, killed $vgpr0, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr239 = V_AND_B32_e32 48, $vgpr240, implicit $exec
  renamable $vgpr174 = nuw nsw V_LSHLREV_B32_e32 6, $vgpr240, implicit $exec
  renamable $vgpr236 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr240, implicit $exec
  S_WAITCNT 3952, debug-location !79; moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr18_vgpr19_vgpr20_vgpr21, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr22_vgpr23_vgpr24_vgpr25, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr30_vgpr31_vgpr32_vgpr33, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr26_vgpr27_vgpr28_vgpr29, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr38_vgpr39_vgpr40_vgpr41, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr34_vgpr35_vgpr36_vgpr37, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr46_vgpr47_vgpr48_vgpr49, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr42_vgpr43_vgpr44_vgpr45, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B64_gfx9 killed renamable $vgpr0, killed renamable $vgpr58_vgpr59, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
  S_CBRANCH_SCC1 %bb.46, implicit killed $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

bb.51..lr.ph:
; predecessors: %bb.45
  successors: %bb.52(0x80000000); %bb.52(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr6, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr174, $vgpr207, $vgpr209, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr239, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr80_vgpr81:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F
  renamable $vgpr0 = V_MUL_U32_U24_e32 272, $vgpr92, implicit $exec
  renamable $vgpr208 = V_XOR_B32_e32 killed $vgpr0, $vgpr239, implicit $exec
  renamable $vgpr0 = V_AND_B32_e32 28672, $vgpr174, implicit $exec
  renamable $vgpr0 = disjoint V_LSHL_OR_B32_e64 $vgpr92, 7, killed $vgpr0, implicit $exec
  renamable $vgpr1 = V_BITOP3_B32_e64 $vgpr255, killed $vgpr239, killed $sgpr6, 108, implicit $exec
  renamable $vgpr5 = disjoint V_OR_B32_e32 $vgpr0, $vgpr1, implicit $exec
  renamable $vgpr6 = V_BITOP3_B32_e64 killed $vgpr0, 64, killed $vgpr1, 54, implicit $exec
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr53, killed $vgpr55, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr6 = S_MOVK_I32 256
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $vgpr206 = V_ADD3_U32_e64 killed $vgpr0, killed $vgpr51, killed $sgpr6, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr80_vgpr81, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr7 = S_LSHR_B32 killed renamable $sgpr7, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr6_sgpr7 = S_MOV_B64 128
  renamable $vgpr180_vgpr181 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr78_vgpr79, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SCRATCH_STORE_DWORDX2_ST killed $vgpr0_vgpr1, 48, 0, implicit $exec, implicit $flat_scr, debug-location !62 :: (store (s64) into %stack.3, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr76_vgpr77, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SCRATCH_STORE_DWORDX2_ST killed $vgpr0_vgpr1, 56, 0, implicit $exec, implicit $flat_scr, debug-location !62 :: (store (s64) into %stack.4, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr74_vgpr75, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SCRATCH_STORE_DWORDX2_ST killed $vgpr0_vgpr1, 64, 0, implicit $exec, implicit $flat_scr, debug-location !62 :: (store (s64) into %stack.5, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr70_vgpr71, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SCRATCH_STORE_DWORDX2_ST killed $vgpr0_vgpr1, 72, 0, implicit $exec, implicit $flat_scr, debug-location !62 :: (store (s64) into %stack.6, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr68_vgpr69, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SCRATCH_STORE_DWORDX2_ST killed $vgpr0_vgpr1, 80, 0, implicit $exec, implicit $flat_scr, debug-location !62 :: (store (s64) into %stack.7, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr66_vgpr67, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SCRATCH_STORE_DWORD_ST killed $vgpr240, 156, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.19, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr168_vgpr169, 148, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.18, align 4, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr166_vgpr167, 140, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.17, align 4, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr164_vgpr165, 132, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.16, align 4, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr162_vgpr163, 124, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.15, align 4, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr151, 120, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.14, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr160_vgpr161, 112, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.13, align 4, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr237, 108, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.12, addrspace 5)
  SCRATCH_STORE_DWORDX2_ST killed $vgpr234_vgpr235, 100, 0, implicit $exec, implicit $flat_scr :: (store (s64) into %stack.11, align 4, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr233, 96, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.10, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr232, 92, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.9, addrspace 5)
  SCRATCH_STORE_DWORD_ST killed $vgpr231, 88, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.8, addrspace 5)
  renamable $sgpr4 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $vgpr234_vgpr235 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr64_vgpr65, 0, killed $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr4, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr2 = V_XOR_B32_e32 64, $vgpr208, implicit $exec
  renamable $vgpr3 = V_XOR_B32_e32 128, $vgpr208, implicit $exec
  renamable $vgpr4 = V_XOR_B32_e32 192, $vgpr208, implicit $exec
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr4 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
  renamable $sgpr12 = S_ADD_I32 0, 65536, implicit-def dead $scc
  renamable $vgpr230_vgpr231 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr243 = V_ADD_U32_e32 256, killed $vgpr56, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr54, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr245 = V_ADD_U32_e32 256, killed $vgpr52, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr246 = V_ADD_U32_e32 256, killed $vgpr50, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr4, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr6_sgpr7 = S_MOV_B64 0
  renamable $vgpr247 = V_ADD_U32_e32 $sgpr12, killed $vgpr2, implicit $exec
  renamable $vgpr248 = V_ADD_U32_e32 $sgpr12, killed $vgpr3, implicit $exec
  renamable $vgpr249 = V_ADD_U32_e32 $sgpr12, killed $vgpr4, implicit $exec
  renamable $vgpr250 = V_ADD_U32_e32 0, killed $vgpr5, implicit $exec
  renamable $vgpr251 = V_ADD_U32_e32 0, killed $vgpr6, implicit $exec
  renamable $sgpr13 = S_ADD_I32 0, 98304, implicit-def dead $scc
  renamable $sgpr14 = S_MOV_B32 117769732
  renamable $vgpr252 = V_MOV_B32_e32 127, implicit $exec
  $vgpr27 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr28 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr29 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr50 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr51 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr52 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr53 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr54 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr55 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr56 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr57 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr46 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr47 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr48 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr49 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr42 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr43 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr44 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr45 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr70 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr71 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr72 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr73 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr222 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr223 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr224 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr225 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr226 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr227 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr228 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr229 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr10 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr11 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr12 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr13 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr98 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr99 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr100 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr101 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr102 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr103 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr104 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr105 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr202 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr203 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr204 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr205 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr118 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr119 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr120 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr121 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr114 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr115 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr116 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr117 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr106 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr107 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr108 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr109 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr14 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr15 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr16 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr17 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr142 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr143 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr144 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr145 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr22 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr24 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr130 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr131 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr132 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr133 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr176 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr177 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr178 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr179 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr110 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr111 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr112 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr113 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr94 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr95 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr96 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr97 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr86 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr87 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr88 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr89 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr74 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr75 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr76 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr77 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr58 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr59 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr60 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr61 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr66 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr67 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr68 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr69 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr62 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr63 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr64 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr65 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr210 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr211 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr212 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr213 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr122 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr123 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr124 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr125 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr126 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr127 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr128 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr129 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr78 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr79 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr80 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr81 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr82 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr83 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr84 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  $vgpr85 = V_MOV_B32_e32 $vgpr26, implicit $exec, implicit $exec
  SCRATCH_STORE_DWORD_ST killed $vgpr92, 160, 0, implicit $exec, implicit $flat_scr :: (store (s32) into %stack.20, addrspace 5)

bb.52 (%ir-block.818):
; predecessors: %bb.51, %bb.52
  successors: %bb.53(0x04000000), %bb.52(0x7c000000); %bb.53(3.12%), %bb.52(96.88%)
  liveins: $sgpr4, $sgpr5, $sgpr12, $sgpr13, $sgpr14, $vgpr174, $vgpr206, $vgpr207, $vgpr208, $vgpr209, $vgpr236, $vgpr243, $vgpr244, $vgpr245, $vgpr246, $vgpr247, $vgpr248, $vgpr249, $vgpr250, $vgpr251, $vgpr252, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr180_vgpr181, $vgpr230_vgpr231, $vgpr234_vgpr235, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  renamable $vgpr32_vgpr33_vgpr34_vgpr35 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr246, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  $vgpr6_vgpr7 = SCRATCH_LOAD_DWORDX2_ST 72, 0, implicit $exec, implicit $flat_scr, debug-location !82 :: (load (s64) from %stack.6, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  $vgpr8_vgpr9 = SCRATCH_LOAD_DWORDX2_ST 64, 0, implicit $exec, implicit $flat_scr, debug-location !82 :: (load (s64) from %stack.5, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  $vgpr18_vgpr19 = SCRATCH_LOAD_DWORDX2_ST 56, 0, implicit $exec, implicit $flat_scr, debug-location !82 :: (load (s64) from %stack.4, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  $vgpr20_vgpr21 = SCRATCH_LOAD_DWORDX2_ST 48, 0, implicit $exec, implicit $flat_scr, debug-location !82 :: (load (s64) from %stack.3, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  $vgpr4_vgpr5 = SCRATCH_LOAD_DWORDX2_ST 80, 0, implicit $exec, implicit $flat_scr, debug-location !82 :: (load (s64) from %stack.7, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr230_vgpr231, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr234_vgpr235, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 $vgpr180_vgpr181, 0, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr254 = V_ADD_U32_e32 $sgpr12, $vgpr207, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr246 = V_ADD_U32_e32 256, killed $vgpr246, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr242 = V_ADD_U32_e32 $sgpr13, $vgpr255, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr243, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr243 = V_ADD_U32_e32 256, killed $vgpr243, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_WAITCNT 3958, debug-location !63; moe_op_gemm_a8w4.py:404:20
  SCRATCH_STORE_DWORDX4_ST killed $vgpr32_vgpr33_vgpr34_vgpr35, 0, 0, implicit $exec, implicit $flat_scr, debug-location !63 :: (store (s128) into %stack.0, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr32_vgpr33_vgpr34_vgpr35 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr245, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 3959, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr6_vgpr7, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  S_WAITCNT 3958, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  S_WAITCNT 3957, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  S_WAITCNT 3955, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 killed $vgpr4_vgpr5, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $sgpr6 = S_ADD_U32 killed renamable $sgpr6, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr7 = S_ADDC_U32 killed renamable $sgpr7, 0, implicit-def dead $scc, implicit killed $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr6, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr245 = V_ADD_U32_e32 256, killed $vgpr245, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_WAITCNT 3952, debug-location !63; moe_op_gemm_a8w4.py:404:20
  SCRATCH_STORE_DWORDX4_ST killed $vgpr32_vgpr33_vgpr34_vgpr35, 16, 0, implicit $exec, implicit $flat_scr, debug-location !63 :: (store (s128) into %stack.1, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr32_vgpr33_vgpr34_vgpr35 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr244, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr244, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_WAITCNT 3952, debug-location !63; moe_op_gemm_a8w4.py:404:20
  SCRATCH_STORE_DWORDX4_ST killed $vgpr32_vgpr33_vgpr34_vgpr35, 32, 0, implicit $exec, implicit $flat_scr, debug-location !63 :: (store (s128) into %stack.2, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr2_vgpr3, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr4_vgpr5, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr166_vgpr167_vgpr168_vgpr169 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr170_vgpr171_vgpr172_vgpr173 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr18_vgpr19, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr20_vgpr21, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
  $vgpr6_vgpr7 = V_MOV_B64_e32 $vgpr202_vgpr203, implicit $exec, implicit-def $vgpr6_vgpr7_vgpr8_vgpr9, implicit $vgpr202_vgpr203_vgpr204_vgpr205
  renamable $vgpr0 = V_ADD_U32_e32 $sgpr13, $vgpr236, implicit $exec
  $vgpr8_vgpr9 = V_MOV_B64_e32 killed $vgpr204_vgpr205, implicit $exec, implicit $vgpr202_vgpr203_vgpr204_vgpr205, implicit $exec
  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = DS_READ_B128_gfx9 renamable $vgpr250, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr4 = V_ADD_U32_e32 $sgpr12, $vgpr208, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0_vgpr1 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr0, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = DS_READ_B128_gfx9 renamable $vgpr4, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = DS_READ_B128_gfx9 renamable $vgpr4, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = DS_READ_B128_gfx9 renamable $vgpr247, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = DS_READ_B128_gfx9 renamable $vgpr247, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = DS_READ_B128_gfx9 renamable $vgpr250, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr250, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr250, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 51071, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr237 = V_PERM_B32_e64 killed $vgpr0, $vgpr0, $sgpr14, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr253 = V_PERM_B32_e64 killed $vgpr1, $vgpr1, $sgpr14, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr4, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr247, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 50303, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr238_vgpr239_vgpr240_vgpr241 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr4, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr247, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr232_vgpr233 = BUFFER_LOAD_DWORDX2_OFFEN renamable $vgpr206, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
  renamable $vgpr206 = V_ADD_U32_e32 256, killed $vgpr206, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr4, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr247, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr4, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = DS_READ_B128_gfx9 renamable $vgpr247, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49791, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = DS_READ_B128_gfx9 renamable $vgpr4, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr247, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, killed $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  $vgpr182_vgpr183 = V_MOV_B64_e32 $vgpr210_vgpr211, implicit $exec, implicit-def $vgpr182_vgpr183_vgpr184_vgpr185, implicit $vgpr210_vgpr211_vgpr212_vgpr213
  $vgpr184_vgpr185 = V_MOV_B64_e32 killed $vgpr212_vgpr213, implicit $exec, implicit $vgpr210_vgpr211_vgpr212_vgpr213, implicit $exec
  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = DS_READ_B128_gfx9 renamable $vgpr251, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr142_vgpr143_vgpr144_vgpr145, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr176_vgpr177_vgpr178_vgpr179, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 50047, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 killed renamable $vgpr4, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr247, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 50047, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = DS_READ_B128_gfx9 renamable $vgpr251, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, killed $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = DS_READ_B128_gfx9 renamable $vgpr251, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = DS_READ_B128_gfx9 renamable $vgpr251, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 50047, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr248, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr249, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr248, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr249, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr248, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = DS_READ_B128_gfx9 renamable $vgpr249, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 50303, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr176_vgpr177_vgpr178_vgpr179 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr210_vgpr211_vgpr212_vgpr213, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr248, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr249, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 50303, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr238_vgpr239_vgpr240_vgpr241, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr248, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr249, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49791, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr248, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr249, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49791, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr90_vgpr91_vgpr92_vgpr93, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr248, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = DS_READ_B128_gfx9 renamable $vgpr249, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49791, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr248, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr249, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr198_vgpr199_vgpr200_vgpr201, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  $vgpr0_vgpr1_vgpr2_vgpr3 = SCRATCH_LOAD_DWORDX4_ST 0, 0, implicit $exec, implicit $flat_scr, debug-location !63 :: (load (s128) from %stack.0, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 3952, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr254, killed renamable $vgpr0_vgpr1_vgpr2_vgpr3, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
  $vgpr0_vgpr1_vgpr2_vgpr3 = SCRATCH_LOAD_DWORDX4_ST 16, 0, implicit $exec, implicit $flat_scr, debug-location !63 :: (load (s128) from %stack.1, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, killed $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 3952, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr254, killed renamable $vgpr0_vgpr1_vgpr2_vgpr3, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
  $vgpr0_vgpr1_vgpr2_vgpr3 = SCRATCH_LOAD_DWORDX4_ST 32, 0, implicit $exec, implicit $flat_scr, debug-location !63 :: (load (s128) from %stack.2, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr190_vgpr191_vgpr192_vgpr193, killed $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, killed $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 3952, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr254, killed renamable $vgpr0_vgpr1_vgpr2_vgpr3, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 killed renamable $vgpr254, killed renamable $vgpr146_vgpr147_vgpr148_vgpr149, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B64_gfx9 killed renamable $vgpr242, killed renamable $vgpr232_vgpr233, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr150_vgpr151_vgpr152_vgpr153, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr154_vgpr155_vgpr156_vgpr157, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr158_vgpr159_vgpr160_vgpr161, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr162_vgpr163_vgpr164_vgpr165, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr166_vgpr167_vgpr168_vgpr169, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr170_vgpr171_vgpr172_vgpr173, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr134_vgpr135_vgpr136_vgpr137, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr138_vgpr139_vgpr140_vgpr141, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_CBRANCH_SCC1 %bb.52, implicit killed $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

bb.53.Flow:
; predecessors: %bb.52
  successors: %bb.47(0x80000000); %bb.47(100.00%)
  liveins: $sgpr5, $vgpr174, $vgpr236, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  $vgpr231 = SCRATCH_LOAD_DWORD_ST 88, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.8, addrspace 5)
  $vgpr232 = SCRATCH_LOAD_DWORD_ST 92, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.9, addrspace 5)
  $vgpr233 = SCRATCH_LOAD_DWORD_ST 96, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.10, addrspace 5)
  $vgpr234_vgpr235 = SCRATCH_LOAD_DWORDX2_ST 100, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.11, align 4, addrspace 5)
  $vgpr237 = SCRATCH_LOAD_DWORD_ST 108, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.12, addrspace 5)
  $vgpr240 = SCRATCH_LOAD_DWORD_ST 156, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.19, addrspace 5)
  $vgpr160_vgpr161 = SCRATCH_LOAD_DWORDX2_ST 112, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.13, align 4, addrspace 5)
  $vgpr151 = SCRATCH_LOAD_DWORD_ST 120, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.14, addrspace 5)
  $vgpr162_vgpr163 = SCRATCH_LOAD_DWORDX2_ST 124, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.15, align 4, addrspace 5)
  $vgpr164_vgpr165 = SCRATCH_LOAD_DWORDX2_ST 132, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.16, align 4, addrspace 5)
  $vgpr166_vgpr167 = SCRATCH_LOAD_DWORDX2_ST 140, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.17, align 4, addrspace 5)
  $vgpr168_vgpr169 = SCRATCH_LOAD_DWORDX2_ST 148, 0, implicit $exec, implicit $flat_scr :: (load (s64) from %stack.18, align 4, addrspace 5)
  $vgpr92 = SCRATCH_LOAD_DWORD_ST 160, 0, implicit $exec, implicit $flat_scr :: (load (s32) from %stack.20, addrspace 5)
  $vgpr186_vgpr187 = V_MOV_B64_e32 $vgpr24_vgpr25, implicit $exec, implicit-def $vgpr184_vgpr185_vgpr186_vgpr187, implicit $vgpr22_vgpr23_vgpr24_vgpr25
  $vgpr184_vgpr185 = V_MOV_B64_e32 killed $vgpr22_vgpr23, implicit $exec, implicit $vgpr22_vgpr23_vgpr24_vgpr25, implicit $exec
  $vgpr22_vgpr23 = V_MOV_B64_e32 $vgpr142_vgpr143, implicit $exec, implicit-def $vgpr22_vgpr23_vgpr24_vgpr25, implicit $vgpr142_vgpr143_vgpr144_vgpr145
  $vgpr24_vgpr25 = V_MOV_B64_e32 killed $vgpr144_vgpr145, implicit $exec, implicit $vgpr142_vgpr143_vgpr144_vgpr145, implicit $exec
  S_WAITCNT 3959
  renamable $vgpr230 = V_LSHRREV_B32_e32 4, $vgpr240, implicit $exec
  renamable $vgpr238 = V_LSHRREV_B32_e32 3, $vgpr240, implicit $exec
  renamable $vgpr239 = V_AND_B32_e32 48, $vgpr240, implicit $exec
  S_WAITCNT 3952
  renamable $vgpr170 = V_LSHLREV_B32_e32 4, $vgpr92, implicit $exec
  S_BRANCH %bb.47

bb.46:
; predecessors: %bb.45
  successors: %bb.47(0x80000000); %bb.47(100.00%)
  liveins: $sgpr5, $vgpr92, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F
  renamable $vgpr85 = V_MOV_B32_e32 0, implicit $exec
  $vgpr84 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr83 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr82 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr81 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr80 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr79 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr78 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr129 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr128 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr127 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr126 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr125 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr124 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr123 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr122 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr213 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr212 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr211 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr210 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr65 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr64 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr63 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr62 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr69 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr68 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr67 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr66 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr61 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr60 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr59 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr58 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr77 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr76 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr75 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr74 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr89 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr88 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr87 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr86 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr97 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr96 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr95 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr94 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr113 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr112 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr111 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr110 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr179 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr178 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr177 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr176 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr133 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr132 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr131 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr130 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr187 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr186 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr185 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr184 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr25 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr24 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr23 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr22 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr17 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr16 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr15 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr14 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr109 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr108 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr107 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr106 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr117 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr116 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr115 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr114 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr121 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr120 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr119 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr118 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr205 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr204 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr203 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr202 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr105 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr104 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr103 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr102 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr101 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr100 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr99 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr98 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr13 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr12 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr11 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr10 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr229 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr228 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr227 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr226 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr225 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr224 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr223 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr222 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr73 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr72 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr71 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr70 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr45 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr44 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr43 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr42 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr49 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr48 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr47 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr46 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr57 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr56 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr55 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr54 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr53 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr52 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr51 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr50 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr29 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr28 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr27 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec
  $vgpr26 = V_MOV_B32_e32 $vgpr85, implicit $exec, implicit $exec

bb.47.Flow340:
; predecessors: %bb.53, %bb.46
  successors: %bb.48(0x40000000), %bb.49(0x40000000); %bb.48(50.00%), %bb.49(50.00%)
  liveins: $sgpr5, $vgpr92, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
  $vgpr182_vgpr183 = V_MOV_B64_e32 $vgpr132_vgpr133, implicit $exec, implicit-def $vgpr180_vgpr181_vgpr182_vgpr183, implicit $vgpr130_vgpr131_vgpr132_vgpr133
  renamable $vgpr150 = V_AND_B32_e32 14, $vgpr240, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr138 = V_AND_B32_e32 496, $vgpr240, implicit $exec
  renamable $vgpr148 = V_AND_B32_e32 480, $vgpr240, implicit $exec
  $vgpr180_vgpr181 = V_MOV_B64_e32 killed $vgpr130_vgpr131, implicit $exec, implicit $vgpr130_vgpr131_vgpr132_vgpr133, implicit $exec
  $vgpr163 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  $vgpr169 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  $vgpr167 = V_MOV_B32_e32 $vgpr235, implicit $exec, implicit $exec
  $vgpr165 = V_MOV_B32_e32 killed $vgpr235, implicit $exec, implicit $exec
  $vcc = S_AND_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr149 = nuw nsw V_LSHLREV_B32_e32 3, $vgpr150, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_CBRANCH_VCCNZ %bb.49, implicit killed $vcc

bb.48 (%ir-block.1360):
; predecessors: %bb.47
  successors: %bb.49(0x80000000); %bb.49(100.00%)
  liveins: $sgpr0, $sgpr5, $vgpr92, $vgpr138, $vgpr148, $vgpr149, $vgpr150, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x000000000000000F, $vgpr164_vgpr165:0x000000000000000F, $vgpr166_vgpr167:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr180_vgpr181_vgpr182_vgpr183:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  renamable $vgpr0 = V_LSHL_ADD_U32_e64 $vgpr240, 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr0 = V_ADD_U32_e32 98304, killed $vgpr0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr4_vgpr5 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr0, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 7, $vgpr92, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr1 = V_AND_B32_e32 28672, killed $vgpr174, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr2 = V_XOR_B32_e32 $vgpr149, $vgpr239, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr0 = disjoint V_OR3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr2, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr91 = nuw V_ADD_U32_e32 0, $vgpr0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = DS_READ_B128_gfx9 renamable $vgpr91, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr90 = nuw V_XAD_U32_e64 killed $vgpr0, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr0 = V_MUL_U32_U24_e32 272, killed $vgpr92, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr18 = V_XOR_B32_e32 killed $vgpr0, $vgpr239, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr131 = nuw V_XAD_U32_e64 $vgpr18, 64, $sgpr1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0 = V_XOR_B32_e32 192, $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr132 = nuw V_ADD_U32_e32 $sgpr1, $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr130 = nuw V_ADD_U32_e32 $sgpr1, killed $vgpr0, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $sgpr2 = S_MOV_B32 117769732
  renamable $vgpr18 = V_XOR_B32_e32 128, killed $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr90, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr90, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 50815, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr4 = V_PERM_B32_e64 killed $vgpr4, $vgpr4, $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr133 = V_MOV_B32_e32 127, implicit $exec
  renamable $vgpr139 = nuw V_ADD_U32_e32 killed $sgpr1, killed $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr90, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 50559, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr5 = V_PERM_B32_e64 killed $vgpr5, $vgpr5, killed $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  $vgpr174_vgpr175 = V_MOV_B64_e32 $vgpr104_vgpr105, implicit $exec, implicit-def $vgpr172_vgpr173_vgpr174_vgpr175, implicit $vgpr102_vgpr103_vgpr104_vgpr105
  $vgpr172_vgpr173 = V_MOV_B64_e32 killed $vgpr102_vgpr103, implicit $exec, implicit $vgpr102_vgpr103_vgpr104_vgpr105, implicit $exec
  S_WAITCNT 49535, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = DS_READ_B128_gfx9 renamable $vgpr91, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = DS_READ_B128_gfx9 renamable $vgpr91, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 killed renamable $vgpr91, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = DS_READ_B128_gfx9 killed renamable $vgpr90, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_WAITCNT 49535, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr172_vgpr173_vgpr174_vgpr175, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr172_vgpr173_vgpr174_vgpr175 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr202_vgpr203_vgpr204_vgpr205, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr184_vgpr185_vgpr186_vgpr187, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr180_vgpr181_vgpr182_vgpr183, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr176_vgpr177_vgpr178_vgpr179, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr176_vgpr177_vgpr178_vgpr179 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49791, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr210_vgpr211_vgpr212_vgpr213, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 killed renamable $vgpr131, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 killed renamable $vgpr132, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49791, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 killed renamable $vgpr130, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 killed renamable $vgpr139, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, killed $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, killed $vgpr5, killed $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  $vgpr102_vgpr103 = V_MOV_B64_e32 $vgpr172_vgpr173, implicit $exec, implicit-def $vgpr102_vgpr103_vgpr104_vgpr105, implicit $vgpr172_vgpr173_vgpr174_vgpr175
  $vgpr104_vgpr105 = V_MOV_B64_e32 killed $vgpr174_vgpr175, implicit $exec, implicit $vgpr172_vgpr173_vgpr174_vgpr175, implicit $exec

bb.49.._crit_edge._crit_edge:
; predecessors: %bb.48, %bb.47
  successors: %bb.50(0x80000000); %bb.50(100.00%)
  liveins: $sgpr0, $sgpr5, $vgpr138, $vgpr148, $vgpr149, $vgpr150, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x000000000000000F, $vgpr164_vgpr165:0x000000000000000F, $vgpr166_vgpr167:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr180_vgpr181_vgpr182_vgpr183:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  renamable $vgpr2 = V_MUL_LO_U32_e64 killed $vgpr151, killed $sgpr0, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
  renamable $vgpr0 = V_OR_B32_e32 $sgpr18, $vgpr240, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  $vgpr1 = V_MOV_B32_e32 killed $sgpr19, implicit $exec, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr2 = V_ADD_U32_e32 killed $sgpr18, killed $vgpr2, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
  renamable $vgpr2 = V_ADD_LSHL_U32_e64 killed $vgpr2, $vgpr240, 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $vgpr151 = V_BFREV_B32_e32 1, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
  V_CMP_GT_I64_e32 $sgpr22_sgpr23, killed $vgpr0_vgpr1, implicit-def $vcc, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
  renamable $sgpr17 = S_AND_B32 killed renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $sgpr19 = S_MOV_B32 159744
  renamable $sgpr18 = S_MOV_B32 2147483646
  renamable $vgpr0 = V_CNDMASK_B32_e32 $vgpr151, killed $vgpr2, implicit killed $vcc, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $vgpr4 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
  renamable $vgpr147 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr8_sgpr9, renamable $vgpr147, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
  renamable $vgpr1 = V_AND_B32_e32 96, killed $vgpr255, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr2 = V_AND_B32_e32 1932, killed $vgpr236, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr152 = V_AND_B32_e32 16, $vgpr240, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr1 = nuw V_ADD_U32_e32 0, killed $vgpr1, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr3 = V_LSHL_ADD_U32_e64 killed $vgpr138, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr1 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr2, $vgpr152, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr161 = V_ASHRREV_I32_e32 31, $vgpr160, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
  renamable $vgpr146 = V_OR_B32_e32 killed $sgpr12, killed $vgpr170, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 killed $vgpr162_vgpr163, $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 killed $vgpr168_vgpr169, $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 killed $vgpr166_vgpr167, $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 killed $vgpr164_vgpr165, killed $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
  renamable $sgpr4 = S_MOV_B32 65535
  renamable $sgpr21 = S_AND_B32 killed renamable $sgpr21, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
  $sgpr22 = S_MOV_B32 killed $sgpr18, debug-location !122; moe_op_gemm_a8w4.py:505:20
  $sgpr23 = S_MOV_B32 killed $sgpr19, debug-location !122; moe_op_gemm_a8w4.py:505:20
  S_WAITCNT 3953, debug-location !95; moe_op_gemm_a8w4.py:475:20
  DS_WRITE_B32_gfx9 killed renamable $vgpr1, killed renamable $vgpr4, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = DS_READ_B128_gfx9 renamable $vgpr3, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = DS_READ_B128_gfx9 renamable $vgpr3, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = DS_READ_B128_gfx9 renamable $vgpr3, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 killed renamable $vgpr3, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
  S_WAITCNT 624, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr3 = nofpexcept V_FMA_F32_e64 0, killed $vgpr50, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 0, killed $vgpr26, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 0, killed $vgpr27, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr2 = nofpexcept V_FMA_F32_e64 0, killed $vgpr28, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 0, killed $vgpr29, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 0, killed $vgpr51, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 0, killed $vgpr52, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 0, killed $vgpr53, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_WAITCNT 49535, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 0, killed $vgpr54, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 0, killed $vgpr55, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 0, killed $vgpr56, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 0, killed $vgpr57, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 0, killed $vgpr46, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 0, killed $vgpr47, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 0, killed $vgpr48, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 0, killed $vgpr49, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 0, killed $vgpr42, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 0, killed $vgpr43, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 0, killed $vgpr44, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 0, killed $vgpr45, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 0, killed $vgpr70, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 0, killed $vgpr71, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 0, killed $vgpr72, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 0, killed $vgpr73, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 0, killed $vgpr222, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 0, killed $vgpr223, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 0, killed $vgpr224, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 0, killed $vgpr225, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 0, killed $vgpr226, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 0, killed $vgpr227, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 0, killed $vgpr228, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 0, killed $vgpr229, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 0, killed $vgpr10, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 0, killed $vgpr11, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 0, killed $vgpr12, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 0, killed $vgpr13, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 0, killed $vgpr98, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 0, killed $vgpr99, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 0, killed $vgpr100, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 0, killed $vgpr101, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 0, killed $vgpr102, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 0, killed $vgpr103, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 0, killed $vgpr104, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 0, killed $vgpr105, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 0, killed $vgpr202, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr130 = nofpexcept V_FMA_F32_e64 0, killed $vgpr203, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 0, killed $vgpr204, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr131 = nofpexcept V_FMA_F32_e64 0, killed $vgpr205, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 0, killed $vgpr118, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 0, killed $vgpr119, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 0, killed $vgpr120, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr133 = nofpexcept V_FMA_F32_e64 0, killed $vgpr121, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 0, killed $vgpr114, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 0, killed $vgpr115, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr101 = nofpexcept V_FMA_F32_e64 0, killed $vgpr116, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 0, killed $vgpr117, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr102 = nofpexcept V_FMA_F32_e64 0, killed $vgpr106, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 0, killed $vgpr107, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr103 = nofpexcept V_FMA_F32_e64 0, killed $vgpr108, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 0, killed $vgpr109, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 0, killed $vgpr14, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 0, killed $vgpr15, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 0, killed $vgpr16, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 0, killed $vgpr17, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 0, killed $vgpr22, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 0, killed $vgpr23, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 0, killed $vgpr24, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 0, killed $vgpr25, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr108 = nofpexcept V_FMA_F32_e64 0, killed $vgpr184, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 0, killed $vgpr185, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr109 = nofpexcept V_FMA_F32_e64 0, killed $vgpr186, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 0, killed $vgpr187, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr114 = nofpexcept V_FMA_F32_e64 0, killed $vgpr180, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 0, killed $vgpr181, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr115 = nofpexcept V_FMA_F32_e64 0, killed $vgpr182, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 0, killed $vgpr183, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr116 = nofpexcept V_FMA_F32_e64 0, killed $vgpr176, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 0, killed $vgpr177, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr117 = nofpexcept V_FMA_F32_e64 0, killed $vgpr178, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 0, killed $vgpr179, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr118 = nofpexcept V_FMA_F32_e64 0, killed $vgpr110, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 0, killed $vgpr111, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr119 = nofpexcept V_FMA_F32_e64 0, killed $vgpr112, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 0, killed $vgpr113, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr120 = nofpexcept V_FMA_F32_e64 0, killed $vgpr94, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 0, killed $vgpr95, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr121 = nofpexcept V_FMA_F32_e64 0, killed $vgpr96, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 0, killed $vgpr97, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 0, killed $vgpr86, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 0, killed $vgpr87, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 0, killed $vgpr88, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 0, killed $vgpr89, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 0, killed $vgpr74, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 0, killed $vgpr75, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 0, killed $vgpr76, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr77 = nofpexcept V_FMA_F32_e64 0, killed $vgpr77, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 0, killed $vgpr58, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 0, killed $vgpr59, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 0, killed $vgpr60, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 0, killed $vgpr61, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 0, killed $vgpr66, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 0, killed $vgpr67, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 0, killed $vgpr68, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 0, killed $vgpr69, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 0, killed $vgpr62, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 0, killed $vgpr63, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 0, killed $vgpr64, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 0, killed $vgpr65, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 0, killed $vgpr210, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 0, killed $vgpr211, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 0, killed $vgpr212, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 0, killed $vgpr213, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 0, killed $vgpr122, 0, $vgpr0, 0, killed $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 0, killed $vgpr123, 0, $vgpr0, 0, killed $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 0, killed $vgpr124, 0, $vgpr0, 0, killed $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, $vgpr0, killed $vgpr141(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 0, killed $vgpr126, 0, $vgpr0, 0, killed $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 0, killed $vgpr127, 0, $vgpr0, 0, killed $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 0, killed $vgpr128, 0, $vgpr0, 0, killed $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, $vgpr0, killed $vgpr145(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr78 = nofpexcept V_FMA_F32_e64 0, killed $vgpr78, 0, $vgpr0, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr79 = nofpexcept V_FMA_F32_e64 0, killed $vgpr79, 0, $vgpr0, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr80 = nofpexcept V_FMA_F32_e64 0, killed $vgpr80, 0, $vgpr0, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, $vgpr0, killed $vgpr137(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 0, killed $vgpr82, 0, $vgpr0, 0, killed $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 0, killed $vgpr83, 0, $vgpr0, 0, killed $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 0, killed $vgpr84, 0, $vgpr0, 0, killed $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr0, killed $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr0 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr1 = nofpexcept V_MIN_F32_e32 killed $vgpr1, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr175 = nofpexcept V_MIN_F32_e32 killed $vgpr2, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr176 = nofpexcept V_MIN_F32_e32 killed $vgpr3, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr177 = nofpexcept V_MIN_F32_e32 killed $vgpr19, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr178 = nofpexcept V_MIN_F32_e32 killed $vgpr21, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr179 = nofpexcept V_MIN_F32_e32 killed $vgpr27, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr180 = nofpexcept V_MIN_F32_e32 killed $vgpr29, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr81 = nofpexcept V_MIN_F32_e32 killed $vgpr31, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr82 = nofpexcept V_MIN_F32_e32 killed $vgpr33, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr83 = nofpexcept V_MIN_F32_e32 killed $vgpr35, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr84 = nofpexcept V_MIN_F32_e32 killed $vgpr37, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr85 = nofpexcept V_MIN_F32_e32 killed $vgpr39, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr86 = nofpexcept V_MIN_F32_e32 killed $vgpr41, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr87 = nofpexcept V_MIN_F32_e32 killed $vgpr43, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr88 = nofpexcept V_MIN_F32_e32 killed $vgpr45, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr89 = nofpexcept V_MIN_F32_e32 killed $vgpr47, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr90 = nofpexcept V_MIN_F32_e32 killed $vgpr10, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr91 = nofpexcept V_MIN_F32_e32 killed $vgpr12, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr92 = nofpexcept V_MIN_F32_e32 killed $vgpr49, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr93 = nofpexcept V_MIN_F32_e32 killed $vgpr51, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr94 = nofpexcept V_MIN_F32_e32 killed $vgpr53, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr95 = nofpexcept V_MIN_F32_e32 killed $vgpr55, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr96 = nofpexcept V_MIN_F32_e32 killed $vgpr57, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr97 = nofpexcept V_MIN_F32_e32 killed $vgpr70, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr98 = nofpexcept V_MIN_F32_e32 killed $vgpr71, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr99 = nofpexcept V_MIN_F32_e32 killed $vgpr72, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr100 = nofpexcept V_MIN_F32_e32 killed $vgpr73, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr101 = nofpexcept V_MIN_F32_e32 killed $vgpr101, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr102 = nofpexcept V_MIN_F32_e32 killed $vgpr102, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr103 = nofpexcept V_MIN_F32_e32 killed $vgpr103, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr104 = nofpexcept V_MIN_F32_e32 killed $vgpr14, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr105 = nofpexcept V_MIN_F32_e32 killed $vgpr16, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr106 = nofpexcept V_MIN_F32_e32 killed $vgpr22, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr107 = nofpexcept V_MIN_F32_e32 killed $vgpr24, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr108 = nofpexcept V_MIN_F32_e32 killed $vgpr108, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr109 = nofpexcept V_MIN_F32_e32 killed $vgpr109, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr110 = nofpexcept V_MIN_F32_e32 killed $vgpr114, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr111 = nofpexcept V_MIN_F32_e32 killed $vgpr115, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr112 = nofpexcept V_MIN_F32_e32 killed $vgpr116, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr113 = nofpexcept V_MIN_F32_e32 killed $vgpr117, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr114 = nofpexcept V_MIN_F32_e32 killed $vgpr118, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr115 = nofpexcept V_MIN_F32_e32 killed $vgpr119, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr116 = nofpexcept V_MIN_F32_e32 killed $vgpr120, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr117 = nofpexcept V_MIN_F32_e32 killed $vgpr121, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr118 = nofpexcept V_MIN_F32_e32 killed $vgpr167, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr119 = nofpexcept V_MIN_F32_e32 killed $vgpr169, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr120 = nofpexcept V_MIN_F32_e32 killed $vgpr74, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr121 = nofpexcept V_MIN_F32_e32 killed $vgpr76, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr122 = nofpexcept V_MIN_F32_e32 killed $vgpr58, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr123 = nofpexcept V_MIN_F32_e32 killed $vgpr60, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr124 = nofpexcept V_MIN_F32_e32 killed $vgpr66, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr125 = nofpexcept V_MIN_F32_e32 killed $vgpr68, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr126 = nofpexcept V_MIN_F32_e32 killed $vgpr62, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr127 = nofpexcept V_MIN_F32_e32 killed $vgpr64, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr128 = nofpexcept V_MIN_F32_e32 killed $vgpr69, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr129 = nofpexcept V_MIN_F32_e32 killed $vgpr173, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr73 = nofpexcept V_MIN_F32_e32 killed $vgpr138, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr72 = nofpexcept V_MIN_F32_e32 killed $vgpr140, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr71 = nofpexcept V_MIN_F32_e32 killed $vgpr142, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr70 = nofpexcept V_MIN_F32_e32 killed $vgpr144, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr69 = nofpexcept V_MIN_F32_e32 killed $vgpr78, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr68 = nofpexcept V_MIN_F32_e32 killed $vgpr80, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr3 = nofpexcept V_MIN_F32_e32 killed $vgpr6, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr2 = nofpexcept V_MIN_F32_e32 killed $vgpr8, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr4 = nofpexcept V_MIN_F32_e32 killed $vgpr4, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr5 = nofpexcept V_MIN_F32_e32 killed $vgpr5, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr6 = nofpexcept V_MIN_F32_e32 killed $vgpr18, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr8 = nofpexcept V_MIN_F32_e32 killed $vgpr20, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr10 = nofpexcept V_MIN_F32_e32 killed $vgpr26, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr12 = nofpexcept V_MIN_F32_e32 killed $vgpr28, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr14 = nofpexcept V_MIN_F32_e32 killed $vgpr30, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr16 = nofpexcept V_MIN_F32_e32 killed $vgpr32, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr18 = nofpexcept V_MIN_F32_e32 killed $vgpr34, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr19 = nofpexcept V_MIN_F32_e32 killed $vgpr36, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr20 = nofpexcept V_MIN_F32_e32 killed $vgpr38, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr21 = nofpexcept V_MIN_F32_e32 killed $vgpr40, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr22 = nofpexcept V_MIN_F32_e32 killed $vgpr42, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr24 = nofpexcept V_MIN_F32_e32 killed $vgpr44, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr26 = nofpexcept V_MIN_F32_e32 killed $vgpr46, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr27 = nofpexcept V_MIN_F32_e32 killed $vgpr48, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr28 = nofpexcept V_MIN_F32_e32 killed $vgpr11, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr29 = nofpexcept V_MIN_F32_e32 killed $vgpr13, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr30 = nofpexcept V_MIN_F32_e32 killed $vgpr50, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr31 = nofpexcept V_MIN_F32_e32 killed $vgpr52, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr32 = nofpexcept V_MIN_F32_e32 killed $vgpr54, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr33 = nofpexcept V_MIN_F32_e32 killed $vgpr56, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr34 = nofpexcept V_MIN_F32_e32 killed $vgpr130, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr35 = nofpexcept V_MIN_F32_e32 killed $vgpr131, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr36 = nofpexcept V_MIN_F32_e32 killed $vgpr132, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr37 = nofpexcept V_MIN_F32_e32 killed $vgpr133, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr38 = nofpexcept V_MIN_F32_e32 killed $vgpr153, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr39 = nofpexcept V_MIN_F32_e32 killed $vgpr154, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr40 = nofpexcept V_MIN_F32_e32 killed $vgpr155, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr41 = nofpexcept V_MIN_F32_e32 killed $vgpr156, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr42 = nofpexcept V_MIN_F32_e32 killed $vgpr15, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr43 = nofpexcept V_MIN_F32_e32 killed $vgpr17, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr44 = nofpexcept V_MIN_F32_e32 killed $vgpr23, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr45 = nofpexcept V_MIN_F32_e32 killed $vgpr25, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr46 = nofpexcept V_MIN_F32_e32 killed $vgpr157, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr47 = nofpexcept V_MIN_F32_e32 killed $vgpr158, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr48 = nofpexcept V_MIN_F32_e32 killed $vgpr159, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr49 = nofpexcept V_MIN_F32_e32 killed $vgpr160, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr50 = nofpexcept V_MIN_F32_e32 killed $vgpr161, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr51 = nofpexcept V_MIN_F32_e32 killed $vgpr162, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr52 = nofpexcept V_MIN_F32_e32 killed $vgpr163, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr53 = nofpexcept V_MIN_F32_e32 killed $vgpr164, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr54 = nofpexcept V_MIN_F32_e32 killed $vgpr165, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr55 = nofpexcept V_MIN_F32_e32 killed $vgpr166, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr56 = nofpexcept V_MIN_F32_e32 killed $vgpr168, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr57 = nofpexcept V_MIN_F32_e32 killed $vgpr170, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr58 = nofpexcept V_MIN_F32_e32 killed $vgpr75, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr60 = nofpexcept V_MIN_F32_e32 killed $vgpr77, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr59 = nofpexcept V_MIN_F32_e32 killed $vgpr59, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr61 = nofpexcept V_MIN_F32_e32 killed $vgpr61, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr62 = nofpexcept V_MIN_F32_e32 killed $vgpr67, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr64 = nofpexcept V_MIN_F32_e32 killed $vgpr171, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr63 = nofpexcept V_MIN_F32_e32 killed $vgpr63, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr65 = nofpexcept V_MIN_F32_e32 killed $vgpr65, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr66 = nofpexcept V_MIN_F32_e32 killed $vgpr172, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr67 = nofpexcept V_MIN_F32_e32 killed $vgpr174, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr74 = nofpexcept V_MIN_F32_e32 killed $vgpr139, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr75 = nofpexcept V_MIN_F32_e32 killed $vgpr141, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr76 = nofpexcept V_MIN_F32_e32 killed $vgpr143, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr77 = nofpexcept V_MIN_F32_e32 killed $vgpr145, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr78 = nofpexcept V_MIN_F32_e32 killed $vgpr79, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr79 = nofpexcept V_MIN_F32_e32 killed $vgpr137, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr80 = nofpexcept V_MIN_F32_e32 killed $vgpr7, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr0 = nofpexcept V_MIN_F32_e32 killed $vgpr9, killed $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr7 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr8 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr10, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr10 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr14, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr14 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr20, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr20 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr28 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr36, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr36 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr44 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr52 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr59 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr67 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr0 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $sgpr14, killed $vgpr0, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr13 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr19, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr19 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr27 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr35, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr35 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr43 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr51 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr60 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr74 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr1, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr100, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr118, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr74 = nofpexcept V_EXP_F32_e32 killed $vgpr74, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr99, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr119, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_EXP_F32_e32 killed $vgpr156, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_EXP_F32_e32 killed $vgpr174, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_EXP_F32_e32 killed $vgpr155, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_EXP_F32_e32 killed $vgpr181, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr74 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr74, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr4 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr5 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr5, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr6 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr9 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr12, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr11 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr16, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr12 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr18, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr15 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr21, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr16 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr22, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr17 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr24, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr18 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr21 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr22 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr23 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr24 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr25 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr26 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr34, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr29 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr37, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr30 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr38, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr31 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr39, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr32 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr33 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr34 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr37 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr38 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr39 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr40 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr41 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr42 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr45 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr46 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr47 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr48 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr49 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr50 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr53 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr54 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr55 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr56 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr57 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr58 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr61 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr62 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr63 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr64 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr65 = nofpexcept V_MAX_F32_e64 1, $sgpr15, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr66 = nofpexcept V_MAX_F32_e64 1, killed $sgpr15, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr75 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr177, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr178, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr179, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr180, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr81, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr82, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr83, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr84, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr85, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr86, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr87, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr88, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr89, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr90, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr91, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr92, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr93, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr94, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr95, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr96, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr97, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr98, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr101, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr102, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr103, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr104, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr105, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr106, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr107, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr108, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr109, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr110, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr111, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr112, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr113, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr114, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr115, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr116, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr117, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr120, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr121, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr184 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr122, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr185 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr123, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr186 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr124, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr187 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr125, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr188 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr126, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr189 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr127, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr190 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr128, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr191 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr129, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr192 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr73, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr193 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr72, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr194 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr71, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr195 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr70, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr196 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr69, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr197 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr68, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr198 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr3, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $vgpr0, $vgpr2, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr226 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr156, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr174, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr74, 0, $vgpr74, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_EXP_F32_e32 killed $vgpr130, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_EXP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr225 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr155, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr181, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_EXP_F32_e32 killed $vgpr154, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_EXP_F32_e32 killed $vgpr182, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_EXP_F32_e32 killed $vgpr153, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_EXP_F32_e32 killed $vgpr183, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr75 = nofpexcept V_EXP_F32_e32 killed $vgpr75, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr207 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr130, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr0, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr1, 0, $vgpr74, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr224 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr154, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr182, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr223 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr153, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr183, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr182, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr75 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr75, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_FMAC_F32_e32 killed $vgpr183, $vgpr181, killed $vgpr182(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr182, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr75, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr182, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_EXP_F32_e32 killed $vgpr76, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr74 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr74, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr183, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr183, $vgpr183(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr175, 0, $vgpr75, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr183, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr76, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr181, $vgpr183, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr76, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr183, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_EXP_F32_e32 killed $vgpr77, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr75 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr75, 0, killed $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr176, 0, $vgpr76, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr77, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr181, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr77, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_EXP_F32_e32 killed $vgpr78, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr76, 0, killed $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr177, 0, $vgpr77, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr78, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr78, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_EXP_F32_e32 killed $vgpr79, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr77, 0, killed $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr178, 0, $vgpr78, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr79, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr79, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_EXP_F32_e32 killed $vgpr80, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr78, 0, killed $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr179, 0, $vgpr79, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr80, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr80, 0, $vgpr180, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr79, 0, killed $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_EXP_F32_e32 killed $vgpr131, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr180, 0, $vgpr80, 0, $vgpr180, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr207, 0, $vgpr207, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr80, 0, killed $vgpr180, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr208 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr131, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr207, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr208, 0, $vgpr208, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = nofpexcept V_EXP_F32_e32 killed $vgpr132, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr207, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr208, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr209 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr132, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr209, 0, $vgpr209, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133 = nofpexcept V_EXP_F32_e32 killed $vgpr133, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr208, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr209, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr210 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr133, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr210, 0, $vgpr210, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_EXP_F32_e32 killed $vgpr134, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr209, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr210, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr211 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr134, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr211, 0, $vgpr211, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_EXP_F32_e32 killed $vgpr135, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr210, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr211, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr212 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr135, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr212, 0, $vgpr212, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_EXP_F32_e32 killed $vgpr136, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr211, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr212, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr213 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr136, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr213, 0, $vgpr213, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_EXP_F32_e32 killed $vgpr137, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr212, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr213, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr214 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr137, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr214, 0, $vgpr214, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_EXP_F32_e32 killed $vgpr138, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr213, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr214, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr215 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr138, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr215, 0, $vgpr215, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_EXP_F32_e32 killed $vgpr139, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr88 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr214, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr215, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr216 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr139, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr216, 0, $vgpr216, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_EXP_F32_e32 killed $vgpr140, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr89 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr215, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr216, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr217 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr140, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr217, 0, $vgpr217, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_EXP_F32_e32 killed $vgpr141, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr90 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr216, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr217, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr218 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr141, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr218, 0, $vgpr218, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_EXP_F32_e32 killed $vgpr142, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr91 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr217, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr218, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr219 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr142, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr219, 0, $vgpr219, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_EXP_F32_e32 killed $vgpr143, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr92 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr218, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr219, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr220 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr143, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr220, 0, $vgpr220, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_EXP_F32_e32 killed $vgpr144, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr93 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr219, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr220, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr221 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr144, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr221, 0, $vgpr221, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_EXP_F32_e32 killed $vgpr145, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr94 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr220, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr221, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr222 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr145, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr222, 0, $vgpr222, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr95 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr221, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_EXP_F32_e32 killed $vgpr157, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr222, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr223, 0, $vgpr223, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr96 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr222, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr206 = nofpexcept V_EXP_F32_e32 killed $vgpr173, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr223, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr224, 0, $vgpr224, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr97 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr223, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr157, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr224, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr225, 0, $vgpr225, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr98 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr224, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_EXP_F32_e32 killed $vgpr158, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr225, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr226, 0, $vgpr226, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr99 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr225, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr205 = nofpexcept V_EXP_F32_e32 killed $vgpr172, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr226, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr173, 0, $vgpr173, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr100 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr226, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr158, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr173, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr172, 0, $vgpr172, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_EXP_F32_e32 killed $vgpr159, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr101 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr172, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr204 = nofpexcept V_EXP_F32_e32 killed $vgpr171, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr159, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr171, 0, $vgpr171, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_EXP_F32_e32 killed $vgpr160, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr102 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr171, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr203 = nofpexcept V_EXP_F32_e32 killed $vgpr170, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr160, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr172, $vgpr174, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr170, 0, $vgpr170, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr173, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_EXP_F32_e32 killed $vgpr161, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr174, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr103 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr170, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr202 = nofpexcept V_EXP_F32_e32 killed $vgpr169, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr161, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr171, $vgpr173, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr169, 0, $vgpr169, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr172, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_RCP_F32_e32 $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_EXP_F32_e32 killed $vgpr162, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr104 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr172, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr172, $vgpr172(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr169, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr201 = nofpexcept V_EXP_F32_e32 killed $vgpr168, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr162, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr170, $vgpr172, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr168, 0, $vgpr168, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr171, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_RCP_F32_e32 $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_EXP_F32_e32 killed $vgpr163, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr105 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr171, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr171, $vgpr171(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr168, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr200 = nofpexcept V_EXP_F32_e32 killed $vgpr167, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr163, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr169, $vgpr171, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr167, 0, $vgpr167, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr170, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_RCP_F32_e32 $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_EXP_F32_e32 killed $vgpr164, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr106 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr170, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr170, $vgpr170(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr167, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr199 = nofpexcept V_EXP_F32_e32 killed $vgpr166, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr164, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr168, $vgpr170, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr166, 0, $vgpr166, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr169, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_RCP_F32_e32 $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_EXP_F32_e32 killed $vgpr165, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr107 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr169, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr169, $vgpr169(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr166, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr165, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr167, $vgpr169, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr165, 0, $vgpr165, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr168, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_RCP_F32_e32 $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr108 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr199, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr168, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr168, $vgpr168(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr165, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr166, $vgpr168, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr164, 0, $vgpr164, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr167, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_RCP_F32_e32 $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr109 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr200, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr167, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr167, $vgpr167(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr164, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr165, $vgpr167, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr163, 0, $vgpr163, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr166, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_RCP_F32_e32 $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr110 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr201, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr166, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr166, $vgpr166(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr163, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr164, $vgpr166, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr162, 0, $vgpr162, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr165, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_RCP_F32_e32 $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr111 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr202, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr165, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr165, $vgpr165(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr162, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr163, $vgpr165, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr161, 0, $vgpr161, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr164, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_RCP_F32_e32 $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr112 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr203, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr164, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr164, $vgpr164(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr161, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr162, $vgpr164, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr160, 0, $vgpr160, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr163, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr113 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr204, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr163, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr163, $vgpr163(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr160, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr161, $vgpr163, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr159, 0, $vgpr159, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_RCP_F32_e32 $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr114 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr205, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr162, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr162, $vgpr162(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr159, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr160, $vgpr162, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr158, 0, $vgpr158, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr161, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_RCP_F32_e32 $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr115 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr206, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr161, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr161, $vgpr161(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr158, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr159, $vgpr161, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr157, 0, $vgpr157, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr160, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_RCP_F32_e32 $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr116 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr184 = nofpexcept V_EXP_F32_e32 killed $vgpr184, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr160, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr160, $vgpr160(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr157, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr158, $vgpr160, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr156, 0, $vgpr156, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr159, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_RCP_F32_e32 $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr117 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr184, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr159, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr159, $vgpr159(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr156, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr157, $vgpr159, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr155, 0, $vgpr155, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr158, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_RCP_F32_e32 $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr118 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr185 = nofpexcept V_EXP_F32_e32 killed $vgpr185, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr158, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr158, $vgpr158(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr155, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr156, $vgpr158, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr154, 0, $vgpr154, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr157, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_RCP_F32_e32 $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr119 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr185, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr157, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr157, $vgpr157(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr154, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr155, $vgpr157, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr153, 0, $vgpr153, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr156, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_RCP_F32_e32 $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr120 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr186 = nofpexcept V_EXP_F32_e32 killed $vgpr186, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr156, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr156, $vgpr156(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr153, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr154, $vgpr156, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr145, 0, $vgpr145, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr155, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_RCP_F32_e32 $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr121 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr186, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr155, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr155, $vgpr155(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr145, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr153, $vgpr155, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr144, 0, $vgpr144, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr154, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_RCP_F32_e32 $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr122 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr187 = nofpexcept V_EXP_F32_e32 killed $vgpr187, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr154, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr154, $vgpr154(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr144, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr145, $vgpr154, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr143, 0, $vgpr143, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr153, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_RCP_F32_e32 $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr123 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr187, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr153, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr153, $vgpr153(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr143, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr144, $vgpr153, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr142, 0, $vgpr142, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr145, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_RCP_F32_e32 $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr188 = nofpexcept V_EXP_F32_e32 killed $vgpr188, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr124 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr145, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr145, $vgpr145(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr142, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr188, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr143, $vgpr145, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr141, 0, $vgpr141, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr144, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_RCP_F32_e32 $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr189 = nofpexcept V_EXP_F32_e32 killed $vgpr189, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr125 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr144, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr144, $vgpr144(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr141, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr189, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr142, $vgpr144, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr140, 0, $vgpr140, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr143, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_RCP_F32_e32 $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr190 = nofpexcept V_EXP_F32_e32 killed $vgpr190, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr126 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr143, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr143, $vgpr143(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr140, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr190, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr141, $vgpr143, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr142, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr191 = nofpexcept V_EXP_F32_e32 killed $vgpr191, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr127 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr140, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr191, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr140, $vgpr142, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr138, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr141, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr192 = nofpexcept V_EXP_F32_e32 killed $vgpr192, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr128 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr139, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr141, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr141, $vgpr141(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr138, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr192, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr139, $vgpr141, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr137, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_RCP_F32_e32 $vgpr139, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr193 = nofpexcept V_EXP_F32_e32 killed $vgpr193, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr129 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr138, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr139, 0, $vgpr140, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr140, $vgpr140(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr73, 0, $vgpr137, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr193, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 1, $vgpr139, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr138, $vgpr140, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr136, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr139, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_RCP_F32_e32 $vgpr138, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr194 = nofpexcept V_EXP_F32_e32 killed $vgpr194, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr140, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr73 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr137, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr138, 0, $vgpr139, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr139, $vgpr139(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr72, 0, $vgpr136, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr139, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr194, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_FMA_F32_e64 1, $vgpr138, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr137, $vgpr139, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr135, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr138, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_RCP_F32_e32 $vgpr137, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr195 = nofpexcept V_EXP_F32_e32 killed $vgpr195, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr139, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr72 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr136, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr137, 0, $vgpr138, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr138, $vgpr138(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr71, 0, $vgpr135, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr138, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr195, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_FMA_F32_e64 1, $vgpr137, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr136, $vgpr138, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr134, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr137, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_RCP_F32_e32 $vgpr136, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr196 = nofpexcept V_EXP_F32_e32 killed $vgpr196, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr138, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr71 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr135, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr136, 0, $vgpr137, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr137, $vgpr137(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr70, 0, $vgpr134, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr137, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr196, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_FMA_F32_e64 1, $vgpr136, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr135, $vgpr137, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr133, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr136, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_RCP_F32_e32 $vgpr135, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr197 = nofpexcept V_EXP_F32_e32 killed $vgpr197, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr137, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr70 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr134, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr135, 0, $vgpr136, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr136, $vgpr136(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr69, 0, $vgpr133, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr136, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr197, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_FMA_F32_e64 1, $vgpr135, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr134, $vgpr136, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr135, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_RCP_F32_e32 $vgpr134, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr198 = nofpexcept V_EXP_F32_e32 killed $vgpr198, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr136, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr69 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr133, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr135, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr135, $vgpr135(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr68, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr135, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr198, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr133, $vgpr135, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr131, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr134, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_RCP_F32_e32 $vgpr133, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr135, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr68 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr132, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr74, killed $vgpr4, $vgpr74(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr134, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr134, $vgpr134(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr3, 0, $vgpr131, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr134, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr132, $vgpr134, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, killed renamable $vgpr147, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr133, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr130, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_RCP_F32_e32 $vgpr133, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr134, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr131, 0, killed $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, killed $vgpr5, $vgpr75(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr135, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr135, $vgpr135(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr2, 0, $vgpr130, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr135, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr3 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr3, $vgpr135, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr133, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr135, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr130, 0, killed $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, killed $vgpr6, $vgpr76(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_FMAC_F32_e32 killed $vgpr77, killed $vgpr7, $vgpr77(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_FMAC_F32_e32 killed $vgpr78, killed $vgpr8, $vgpr78(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_FMAC_F32_e32 killed $vgpr79, killed $vgpr9, $vgpr79(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_FMAC_F32_e32 killed $vgpr80, killed $vgpr10, $vgpr80(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, killed $vgpr11, $vgpr81(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_FMAC_F32_e32 killed $vgpr82, killed $vgpr12, $vgpr82(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_FMAC_F32_e32 killed $vgpr83, killed $vgpr13, $vgpr83(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_FMAC_F32_e32 killed $vgpr84, killed $vgpr14, $vgpr84(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr15, $vgpr85(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_FMAC_F32_e32 killed $vgpr86, killed $vgpr16, $vgpr86(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_FMAC_F32_e32 killed $vgpr87, killed $vgpr17, $vgpr87(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr88 = nofpexcept V_FMAC_F32_e32 killed $vgpr88, killed $vgpr18, $vgpr88(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr89 = nofpexcept V_FMAC_F32_e32 killed $vgpr89, killed $vgpr19, $vgpr89(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr90 = nofpexcept V_FMAC_F32_e32 killed $vgpr90, killed $vgpr20, $vgpr90(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr91 = nofpexcept V_FMAC_F32_e32 killed $vgpr91, killed $vgpr21, $vgpr91(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr92 = nofpexcept V_FMAC_F32_e32 killed $vgpr92, killed $vgpr22, $vgpr92(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr93 = nofpexcept V_FMAC_F32_e32 killed $vgpr93, killed $vgpr23, $vgpr93(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr94 = nofpexcept V_FMAC_F32_e32 killed $vgpr94, killed $vgpr24, $vgpr94(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr95 = nofpexcept V_FMAC_F32_e32 killed $vgpr95, killed $vgpr25, $vgpr95(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr96 = nofpexcept V_FMAC_F32_e32 killed $vgpr96, killed $vgpr26, $vgpr96(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr97 = nofpexcept V_FMAC_F32_e32 killed $vgpr97, killed $vgpr27, $vgpr97(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr98 = nofpexcept V_FMAC_F32_e32 killed $vgpr98, killed $vgpr28, $vgpr98(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr99 = nofpexcept V_FMAC_F32_e32 killed $vgpr99, killed $vgpr29, $vgpr99(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr100 = nofpexcept V_FMAC_F32_e32 killed $vgpr100, killed $vgpr30, $vgpr100(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr101 = nofpexcept V_FMAC_F32_e32 killed $vgpr101, killed $vgpr31, $vgpr101(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr102 = nofpexcept V_FMAC_F32_e32 killed $vgpr102, killed $vgpr32, $vgpr102(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr103 = nofpexcept V_FMAC_F32_e32 killed $vgpr103, killed $vgpr33, $vgpr103(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr104 = nofpexcept V_FMAC_F32_e32 killed $vgpr104, killed $vgpr34, $vgpr104(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr105 = nofpexcept V_FMAC_F32_e32 killed $vgpr105, killed $vgpr35, $vgpr105(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr106 = nofpexcept V_FMAC_F32_e32 killed $vgpr106, killed $vgpr36, $vgpr106(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr107 = nofpexcept V_FMAC_F32_e32 killed $vgpr107, killed $vgpr37, $vgpr107(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr108 = nofpexcept V_FMAC_F32_e32 killed $vgpr108, killed $vgpr38, $vgpr108(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr109 = nofpexcept V_FMAC_F32_e32 killed $vgpr109, killed $vgpr39, $vgpr109(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr110 = nofpexcept V_FMAC_F32_e32 killed $vgpr110, killed $vgpr40, $vgpr110(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr111 = nofpexcept V_FMAC_F32_e32 killed $vgpr111, killed $vgpr41, $vgpr111(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr112 = nofpexcept V_FMAC_F32_e32 killed $vgpr112, killed $vgpr42, $vgpr112(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr113 = nofpexcept V_FMAC_F32_e32 killed $vgpr113, killed $vgpr43, $vgpr113(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr114 = nofpexcept V_FMAC_F32_e32 killed $vgpr114, killed $vgpr44, $vgpr114(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr115 = nofpexcept V_FMAC_F32_e32 killed $vgpr115, killed $vgpr45, $vgpr115(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr116 = nofpexcept V_FMAC_F32_e32 killed $vgpr116, killed $vgpr46, $vgpr116(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr117 = nofpexcept V_FMAC_F32_e32 killed $vgpr117, killed $vgpr47, $vgpr117(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr118 = nofpexcept V_FMAC_F32_e32 killed $vgpr118, killed $vgpr48, $vgpr118(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr119 = nofpexcept V_FMAC_F32_e32 killed $vgpr119, killed $vgpr49, $vgpr119(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr120 = nofpexcept V_FMAC_F32_e32 killed $vgpr120, killed $vgpr50, $vgpr120(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr121 = nofpexcept V_FMAC_F32_e32 killed $vgpr121, killed $vgpr51, $vgpr121(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr122 = nofpexcept V_FMAC_F32_e32 killed $vgpr122, killed $vgpr52, $vgpr122(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr123 = nofpexcept V_FMAC_F32_e32 killed $vgpr123, killed $vgpr53, $vgpr123(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr124 = nofpexcept V_FMAC_F32_e32 killed $vgpr124, killed $vgpr54, $vgpr124(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr125 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, killed $vgpr55, $vgpr125(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr126 = nofpexcept V_FMAC_F32_e32 killed $vgpr126, killed $vgpr56, $vgpr126(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr127 = nofpexcept V_FMAC_F32_e32 killed $vgpr127, killed $vgpr57, $vgpr127(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr128 = nofpexcept V_FMAC_F32_e32 killed $vgpr128, killed $vgpr58, $vgpr128(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr129 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, killed $vgpr59, $vgpr129(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, killed $vgpr60, $vgpr73(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, killed $vgpr61, $vgpr72(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, killed $vgpr62, $vgpr71(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, killed $vgpr63, $vgpr70(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, killed $vgpr64, $vgpr69(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, killed $vgpr65, $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_FMAC_F32_e32 killed $vgpr131, killed $vgpr66, $vgpr131(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_FMAC_F32_e32 killed $vgpr130, killed $vgpr67, $vgpr130(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  S_WAITCNT 3952, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_RCP_F32_e32 $vgpr0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  $vgpr147 = V_MOV_B32_e32 $sgpr13, implicit $exec, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr1, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr4, killed $vgpr1, $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr74, 0, $vgpr132, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 $vgpr4, $vgpr1, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr5, 0, $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_FMAC_F32_e32 killed $vgpr6, $vgpr1, killed $vgpr5(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr0, 0, $vgpr5, 0, killed $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr1, 0, killed $vgpr5, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr7, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr7, $vgpr7(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr132, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, $vgpr7, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr7, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr4, 0, killed $vgpr5, 0, 1065353216, undef $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr8, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr8, $vgpr8(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr132, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr7, $vgpr8, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_RCP_F32_e32 $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr8, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr9, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr9, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr132, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr8, $vgpr9, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_RCP_F32_e32 $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr7, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr9, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr10, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr10, $vgpr10(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr132, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr9, $vgpr10, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_RCP_F32_e32 $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr8, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr10, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr11, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr11, $vgpr11(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr132, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr10, $vgpr11, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_RCP_F32_e32 $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr9, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr11, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr12, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr12, $vgpr12(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr132, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr11, $vgpr12, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_RCP_F32_e32 $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr10, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr12, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr13, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr13, $vgpr13(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr132, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr12, $vgpr13, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_RCP_F32_e32 $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr11, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr13, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr14, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr14, $vgpr14(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr132, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr13, $vgpr14, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_RCP_F32_e32 $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr12, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr14, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr15, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr15, $vgpr15(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr132, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr14, $vgpr15, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_RCP_F32_e32 $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr13, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr15, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr16, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr16, $vgpr16(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr132, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr15, $vgpr16, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_RCP_F32_e32 $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr14, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr16, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr17, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr17, $vgpr17(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr132, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr16, $vgpr17, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_RCP_F32_e32 $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr15, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr17, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr18, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr18, $vgpr18(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr132, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr17, $vgpr18, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_RCP_F32_e32 $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr16, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr18, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr19, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr19, $vgpr19(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr132, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr18, $vgpr19, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_RCP_F32_e32 $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr17, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr19, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr20, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr20, $vgpr20(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr132, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr19, $vgpr20, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr18, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr20, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr21, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr21, $vgpr21(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr132, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr20, $vgpr21, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_RCP_F32_e32 $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr19, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr21, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr22, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr22, $vgpr22(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr132, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr21, $vgpr22, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_RCP_F32_e32 $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr20, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr22, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr23, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr23, $vgpr23(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr132, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr22, $vgpr23, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_RCP_F32_e32 $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr21, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr23, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr24, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr24, $vgpr24(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr132, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr23, $vgpr24, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_RCP_F32_e32 $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr22, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr24, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr25, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr25, $vgpr25(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr132, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr24, $vgpr25, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_RCP_F32_e32 $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr23, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr25, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr26, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr26, $vgpr26(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr132, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr25, $vgpr26, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_RCP_F32_e32 $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr24, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr26, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr27, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr27, $vgpr27(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr132, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr26, $vgpr27, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_RCP_F32_e32 $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr25, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr27, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr28, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr28, $vgpr28(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr132, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr27, $vgpr28, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_RCP_F32_e32 $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr26, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr28, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr29, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr29, $vgpr29(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr132, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr28, $vgpr29, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_RCP_F32_e32 $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr27, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr29, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr30, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr30, $vgpr30(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr132, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr29, $vgpr30, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_RCP_F32_e32 $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr28, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr30, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr31, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr31, $vgpr31(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr132, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr30, $vgpr31, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_RCP_F32_e32 $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr29, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr31, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr32, $vgpr32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr132, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr31, $vgpr32, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_RCP_F32_e32 $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr30, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr32, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr33, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr33, $vgpr33(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr132, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr32, $vgpr33, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_RCP_F32_e32 $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr31, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr33, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr34, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr34, $vgpr34(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr132, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr33, $vgpr34, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_RCP_F32_e32 $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr32, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr34, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr35, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr35, $vgpr35(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr132, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr34, $vgpr35, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_RCP_F32_e32 $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr33, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr35, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr36, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr36, $vgpr36(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr132, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr35, $vgpr36, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_RCP_F32_e32 $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr34, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr36, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr37, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr37, $vgpr37(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr132, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr36, $vgpr37, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_RCP_F32_e32 $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr35, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr37, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr38, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr38, $vgpr38(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr132, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr37, $vgpr38, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_RCP_F32_e32 $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr36, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr38, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr39, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr39, $vgpr39(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr132, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr38, $vgpr39, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr37, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr39, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr132, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr39, $vgpr40, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr38, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr40, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr41, $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr132, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, $vgpr41, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr6, 0, killed $vgpr7, 0, 1065353216, killed $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr132, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, $vgpr40, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr40, 0, killed $vgpr41, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr8, 0, killed $vgpr9, 0, 1065353216, undef $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr42, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, killed $vgpr42, $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr132, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr40, $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, $vgpr42, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_RCP_F32_e32 $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr39, 0, killed $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr39, 0, $vgpr132, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr20, 0, killed $vgpr21, 0, 1065353216, undef $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr43, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr41, killed $vgpr43, $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr132, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_MUL_F32_e32 $vgpr41, $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr42, 0, $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, $vgpr43, killed $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, killed $vgpr40, 0, $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_RCP_F32_e32 $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr40, 0, killed $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr36, 0, killed $vgpr37, 0, 1065353216, undef $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = V_AND_B32_e32 1, $vgpr240, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr44, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, killed $vgpr44, $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr132, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_MUL_F32_e32 $vgpr42, $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr43, 0, $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, $vgpr44, killed $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, killed $vgpr41, 0, $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_RCP_F32_e32 $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr41, 0, killed $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr10, 0, killed $vgpr11, 0, 1065353216, killed $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr22, 0, killed $vgpr23, 0, 1065353216, killed $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr45, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, killed $vgpr45, $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr132, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_MUL_F32_e32 $vgpr43, $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr44, 0, $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, $vgpr45, killed $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, killed $vgpr42, 0, $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_RCP_F32_e32 $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr42, 0, killed $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr38, 0, killed $vgpr0, 0, 1065353216, killed $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr1, 0, killed $vgpr39, 0, 1065353216, undef $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr46, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, killed $vgpr46, $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr132, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_MUL_F32_e32 $vgpr44, $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr45, 0, $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, $vgpr46, killed $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, killed $vgpr43, 0, $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_RCP_F32_e32 $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr43, 0, killed $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 4, killed $vgpr239, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = V_AND_B32_e32 48, killed $vgpr238, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr47, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, killed $vgpr47, $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr132, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_MUL_F32_e32 $vgpr45, $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr46, 0, $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, $vgpr47, killed $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, killed $vgpr44, 0, $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_RCP_F32_e32 $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr44, 0, killed $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nuw nsw V_LSHLREV_B32_e32 13, $vgpr20, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nuw nsw V_LSHLREV_B32_e32 8, $vgpr240, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr48, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, killed $vgpr48, $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr132, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_MUL_F32_e32 $vgpr46, $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr47, 0, $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, $vgpr48, killed $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, killed $vgpr45, 0, $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_RCP_F32_e32 $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr45, 0, killed $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = V_AND_B32_e32 16384, killed $vgpr22, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = disjoint V_LSHL_OR_B32_e64 killed $vgpr150, 9, killed $vgpr21, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr49, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, killed $vgpr49, $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr132, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_MUL_F32_e32 $vgpr47, $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr48, 0, $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, $vgpr49, killed $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, killed $vgpr46, 0, $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_RCP_F32_e32 $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr46, 0, killed $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, $vgpr149, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr40, 0, $vgpr132, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr50, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, killed $vgpr50, $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr132, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_MUL_F32_e32 $vgpr48, $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr49, 0, $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, $vgpr50, killed $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, killed $vgpr47, 0, $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_RCP_F32_e32 $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr47, 0, killed $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr41, 0, $vgpr132, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr42, 0, $vgpr132, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr51, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, killed $vgpr51, $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr132, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_MUL_F32_e32 $vgpr49, $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr50, 0, $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, $vgpr51, killed $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, killed $vgpr48, 0, $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_RCP_F32_e32 $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr48, 0, killed $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr43, 0, $vgpr132, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr46, 0, $vgpr132, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr52, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, killed $vgpr52, $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr132, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_MUL_F32_e32 $vgpr50, $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr51, 0, $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, $vgpr52, killed $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, killed $vgpr49, 0, $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_RCP_F32_e32 $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr49, 0, killed $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr47, 0, $vgpr132, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr12, 0, killed $vgpr13, 0, 1065353216, undef $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr53, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, killed $vgpr53, $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr132, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_MUL_F32_e32 $vgpr51, $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr52, 0, $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, $vgpr53, killed $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, killed $vgpr50, 0, $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_RCP_F32_e32 $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr50, 0, killed $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr50, 0, $vgpr132, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr16, 0, killed $vgpr17, 0, 1065353216, undef $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr54, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, killed $vgpr54, $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr132, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_MUL_F32_e32 $vgpr52, $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr53, 0, $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, $vgpr54, killed $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, killed $vgpr51, 0, $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_RCP_F32_e32 $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr51, 0, killed $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr51, 0, $vgpr132, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr24, 0, killed $vgpr25, 0, 1065353216, undef $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr55, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, killed $vgpr55, $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr132, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_MUL_F32_e32 $vgpr53, $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr54, 0, $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, $vgpr55, killed $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, killed $vgpr52, 0, $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_RCP_F32_e32 $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr52, 0, killed $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr52, 0, $vgpr132, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr50, 0, killed $vgpr51, 0, 1065353216, undef $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr56, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, killed $vgpr56, $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr132, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_MUL_F32_e32 $vgpr54, $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr55, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, $vgpr56, killed $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, killed $vgpr53, 0, $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_RCP_F32_e32 $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr53, 0, killed $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr53, 0, $vgpr132, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = disjoint V_OR3_B32_e64 killed $vgpr21, killed $vgpr22, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr57, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, killed $vgpr57, $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr132, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_MUL_F32_e32 $vgpr55, $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr56, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr58, $vgpr57, killed $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, killed $vgpr54, 0, $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_RCP_F32_e32 $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr54, 0, killed $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr54, 0, $vgpr132, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr44, 0, $vgpr132, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr58, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, killed $vgpr58, $vgpr58(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr132, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_MUL_F32_e32 $vgpr56, $vgpr58, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr57, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr59, $vgpr58, killed $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, killed $vgpr55, 0, $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_RCP_F32_e32 $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr55, 0, killed $vgpr58, 0, killed $vgpr57, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr55, 0, $vgpr132, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr54, 0, killed $vgpr55, 0, 1065353216, undef $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr59, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, killed $vgpr59, $vgpr59(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr132, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_MUL_F32_e32 $vgpr57, $vgpr59, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr58, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_FMAC_F32_e32 killed $vgpr60, $vgpr59, killed $vgpr58(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, killed $vgpr56, 0, $vgpr58, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_RCP_F32_e32 $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr56, 0, killed $vgpr59, 0, killed $vgpr58, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr56, 0, $vgpr132, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr45, 0, $vgpr132, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr60, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_FMAC_F32_e32 killed $vgpr58, killed $vgpr60, $vgpr60(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr132, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_MUL_F32_e32 $vgpr58, $vgpr60, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr59, 0, $vgpr58, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_FMAC_F32_e32 killed $vgpr61, $vgpr60, killed $vgpr59(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, killed $vgpr57, 0, $vgpr59, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_RCP_F32_e32 $vgpr58, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr57, 0, killed $vgpr60, 0, killed $vgpr59, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr57, 0, $vgpr132, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr48, 0, $vgpr132, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, $vgpr58, 0, $vgpr61, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_FMAC_F32_e32 killed $vgpr59, killed $vgpr61, $vgpr61(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr73, 0, $vgpr132, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_MUL_F32_e32 $vgpr59, $vgpr61, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, $vgpr58, 0, $vgpr60, 0, $vgpr59, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_FMAC_F32_e32 killed $vgpr62, $vgpr61, killed $vgpr60(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, killed $vgpr58, 0, $vgpr60, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_RCP_F32_e32 $vgpr59, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr58, 0, killed $vgpr61, 0, killed $vgpr60, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr58 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr58, 0, $vgpr132, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr49, 0, $vgpr132, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, $vgpr59, 0, $vgpr62, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_FMAC_F32_e32 killed $vgpr60, killed $vgpr62, $vgpr62(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr72, 0, $vgpr132, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_MUL_F32_e32 $vgpr60, $vgpr62, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, $vgpr59, 0, $vgpr61, 0, $vgpr60, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_FMAC_F32_e32 killed $vgpr63, $vgpr62, killed $vgpr61(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, killed $vgpr59, 0, $vgpr61, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_RCP_F32_e32 $vgpr60, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr59, 0, killed $vgpr62, 0, killed $vgpr61, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr59, 0, $vgpr132, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr14, 0, killed $vgpr15, 0, 1065353216, killed $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, $vgpr60, 0, $vgpr63, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_FMAC_F32_e32 killed $vgpr61, killed $vgpr63, $vgpr63(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr71, 0, $vgpr132, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_MUL_F32_e32 $vgpr61, $vgpr63, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, $vgpr60, 0, $vgpr62, 0, $vgpr61, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_FMAC_F32_e32 killed $vgpr64, $vgpr63, killed $vgpr62(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, killed $vgpr60, 0, $vgpr62, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_RCP_F32_e32 $vgpr61, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr60, 0, killed $vgpr63, 0, killed $vgpr62, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr60 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr60, 0, $vgpr132, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr18, 0, killed $vgpr19, 0, 1065353216, killed $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, $vgpr61, 0, $vgpr64, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_FMAC_F32_e32 killed $vgpr62, killed $vgpr64, $vgpr64(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr70, 0, $vgpr132, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_MUL_F32_e32 $vgpr62, $vgpr64, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr61, 0, $vgpr63, 0, $vgpr62, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, $vgpr64, killed $vgpr63(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, killed $vgpr61, 0, $vgpr63, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_RCP_F32_e32 $vgpr62, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr61, 0, killed $vgpr64, 0, killed $vgpr63, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr61 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr61, 0, $vgpr132, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr26, 0, killed $vgpr27, 0, 1065353216, killed $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, $vgpr62, 0, $vgpr65, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr63, killed $vgpr65, $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr69, 0, $vgpr132, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_MUL_F32_e32 $vgpr63, $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr62, 0, $vgpr64, 0, $vgpr63, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, $vgpr65, killed $vgpr64(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, killed $vgpr62, 0, $vgpr64, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_RCP_F32_e32 $vgpr63, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr62, 0, killed $vgpr65, 0, killed $vgpr64, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr62 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr62, 0, $vgpr132, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr28, 0, killed $vgpr29, 0, 1065353216, undef $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, $vgpr63, 0, $vgpr66, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr64, killed $vgpr66, $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr68, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_MUL_F32_e32 $vgpr64, $vgpr66, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr63, 0, $vgpr65, 0, $vgpr64, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, $vgpr66, killed $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, killed $vgpr63, 0, $vgpr65, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_RCP_F32_e32 $vgpr64, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr63, 0, killed $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr63 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr63, 0, $vgpr132, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr32, 0, killed $vgpr33, 0, 1065353216, undef $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr64, 0, $vgpr67, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, killed $vgpr67, $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr132, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_MUL_F32_e32 $vgpr65, $vgpr67, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr64, 0, $vgpr66, 0, $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, $vgpr67, killed $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, killed $vgpr64, 0, $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_RCP_F32_e32 $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr64, 0, killed $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr64 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr64, 0, $vgpr132, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr40, 0, killed $vgpr41, 0, 1065353216, killed $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr68, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, killed $vgpr68, $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr132, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_MUL_F32_e32 $vgpr66, $vgpr68, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr67, 0, $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, $vgpr68, killed $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, killed $vgpr65, 0, $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr65, 0, killed $vgpr68, 0, killed $vgpr67, 0, 0, implicit $mode, implicit killed $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr65, 0, killed $vgpr132, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr42, 0, killed $vgpr43, 0, 1065353216, undef $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr46, 0, killed $vgpr47, 0, 1065353216, undef $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr52, 0, killed $vgpr53, 0, 1065353216, killed $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr56, 0, killed $vgpr57, 0, 1065353216, killed $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr58, 0, killed $vgpr59, 0, 1065353216, undef $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr62, 0, killed $vgpr63, 0, 1065353216, undef $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nuw V_ADD_U32_e32 0, $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nuw V_XAD_U32_e64 killed $vgpr0, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr30, 0, killed $vgpr31, 0, 1065353216, killed $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr34, 0, killed $vgpr35, 0, 1065353216, killed $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr44, 0, killed $vgpr45, 0, 1065353216, killed $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr48, 0, killed $vgpr49, 0, 1065353216, killed $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr60, 0, killed $vgpr61, 0, 1065353216, killed $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr64, 0, killed $vgpr65, 0, 1065353216, killed $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 renamable $vgpr1, killed renamable $vgpr4_vgpr5_vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 killed renamable $vgpr1, killed renamable $vgpr12_vgpr13_vgpr14_vgpr15, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr8_vgpr9_vgpr10_vgpr11, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 killed renamable $vgpr0, killed renamable $vgpr16_vgpr17_vgpr18_vgpr19, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 5, killed $vgpr240, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_AND_B32_e32 7168, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = exact V_LSHRREV_B32_e32 1, killed $vgpr148, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = nuw nsw V_LSHLREV_B32_e32 9, killed $vgpr152, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr149, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nuw V_LSHL_ADD_U32_e64 killed $vgpr20, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 renamable $vgpr13, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = DS_READ_B128_gfx9 renamable $vgpr13, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr2 = V_OR_B32_e32 8, $vgpr146, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
  $vgpr3 = V_MOV_B32_e32 killed $sgpr13, implicit $exec, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
  renamable $vgpr0 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  V_CMP_GT_I64_e32 $sgpr12_sgpr13, $vgpr146_vgpr147, implicit-def $vcc, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, killed $vgpr2_vgpr3, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_LSHRREV_B32_sdwa 0, killed $vgpr0, 0, $vgpr8, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $sgpr12 = S_MOVK_I32 255
  renamable $vgpr0 = V_BITOP3_B16_e64 0, $vgpr8, 0, killed $vgpr0, 0, killed $sgpr12, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_LSHLREV_B32_e32 16, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $sgpr12 = S_MOV_B32 50464518
  renamable $sgpr13 = S_MOV_B32 16778500
  renamable $vgpr12 = V_AND_OR_B32_e64 $vgpr4, killed $sgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = V_PERM_B32_e64 killed $vgpr4, killed $vgpr8, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = V_PERM_B32_e64 killed $vgpr5, killed $vgpr9, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = V_PERM_B32_e64 killed $vgpr6, killed $vgpr10, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = V_PERM_B32_e64 $vgpr7, $vgpr11, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = V_PERM_B32_e64 killed $vgpr7, killed $vgpr11, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = DS_READ_B128_gfx9 renamable $vgpr13, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 killed renamable $vgpr13, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr237, $sgpr5, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
  renamable $vgpr11 = V_MUL_LO_U32_e64 killed $vgpr234, $sgpr5, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr230, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr9 = V_ADD_U32_e32 killed $vgpr11, killed $vgpr9, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr231, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr232, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $sgpr5, killed $vgpr233, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr11 = V_ADD3_U32_e64 $vgpr9, killed $vgpr13, $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr21 = V_ADD_U32_e32 8, $vgpr11, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr23 = V_ADD3_U32_e64 $vgpr9, killed $vgpr15, $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr27 = V_ADD3_U32_e64 killed $vgpr9, killed $vgpr19, killed $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  S_WAITCNT 49279, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr13 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr11, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr12_vgpr13, killed renamable $vgpr9, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr9 = V_PERM_B32_e64 killed $vgpr0, killed $vgpr4, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr21, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr24 = V_ADD_U32_e32 8, $vgpr23, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr8_vgpr9, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr15 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr23, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr14_vgpr15, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr17 = V_PERM_B32_e64 killed $vgpr1, killed $vgpr5, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr24, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr26 = V_ADD_U32_e32 8, $vgpr25, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr16_vgpr17, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr19 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr25, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr18_vgpr19, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr11 = V_PERM_B32_e64 killed $vgpr2, killed $vgpr6, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr26, killed $sgpr2_sgpr3, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr28 = V_ADD_U32_e32 8, $vgpr27, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr10_vgpr11, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr21 = V_PERM_B32_e64 $vgpr3, $vgpr7, killed $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e32 $vgpr151, killed $vgpr27, implicit killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr20_vgpr21, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr23 = V_PERM_B32_e64 killed $vgpr3, killed $vgpr7, killed $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr0 = V_CNDMASK_B32_e32 killed $vgpr151, killed $vgpr28, implicit killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr22_vgpr23, killed renamable $vgpr0, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20

bb.50.common.ret:
; predecessors: %bb.0, %bb.1, %bb.49

  S_ENDPGM 0, debug-location !16; moe_op_gemm_a8w4.py:0

# End machine code for function _moe_gemm_a8w4.

