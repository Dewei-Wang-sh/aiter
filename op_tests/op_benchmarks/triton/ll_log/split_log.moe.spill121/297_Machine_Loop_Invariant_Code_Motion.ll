# *** IR Dump After Machine Loop Invariant Code Motion (machinelicm) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, NoVRegs, TiedOpsRewritten, TracksDebugUserValues
Frame Objects:
  fi#0: size=16, align=4, at location [SP]
  fi#1: size=16, align=4, at location [SP]
  fi#2: size=16, align=4, at location [SP]
  fi#3: size=16, align=4, at location [SP]
  fi#4: size=16, align=4, at location [SP]
  fi#5: size=16, align=4, at location [SP]
  fi#6: size=16, align=4, at location [SP]
  fi#7: size=16, align=4, at location [SP]
  fi#8: size=16, align=4, at location [SP]
  fi#9: size=16, align=4, at location [SP]
  fi#10: size=16, align=4, at location [SP]
  fi#11: size=16, align=4, at location [SP]
  fi#12: size=16, align=4, at location [SP]
  fi#13: size=16, align=4, at location [SP]
  fi#14: size=16, align=4, at location [SP]
  fi#15: size=16, align=4, at location [SP]
  fi#16: size=16, align=4, at location [SP]
  fi#17: size=16, align=4, at location [SP]
  fi#18: size=16, align=4, at location [SP]
  fi#19: size=8, align=4, at location [SP]
  fi#20: size=8, align=4, at location [SP]
  fi#21: size=8, align=4, at location [SP]
  fi#22: size=8, align=4, at location [SP]
  fi#23: size=8, align=4, at location [SP]
  fi#24: size=8, align=4, at location [SP]
  fi#25: size=8, align=4, at location [SP]
  fi#26: size=8, align=4, at location [SP]
  fi#27: size=4, align=4, at location [SP]
  fi#28: size=8, align=4, at location [SP]
  fi#29: size=8, align=4, at location [SP]
  fi#30: size=8, align=4, at location [SP]
  fi#31: size=8, align=4, at location [SP]
  fi#32: size=8, align=4, at location [SP]
  fi#33: size=4, align=4, at location [SP]
  fi#34: size=4, align=4, at location [SP]
  fi#35: size=4, align=4, at location [SP]
  fi#36: size=8, align=4, at location [SP]
  fi#37: size=4, align=4, at location [SP]
  fi#38: size=8, align=4, at location [SP]
  fi#39: size=8, align=4, at location [SP]
  fi#40: size=8, align=4, at location [SP]
  fi#41: size=8, align=4, at location [SP]
  fi#42: size=4, align=4, at location [SP]
  fi#43: size=4, align=4, at location [SP]
  fi#44: size=4, align=4, at location [SP]
  fi#45: size=4, align=4, at location [SP]
save/restore points:
save points are empty
restore points are empty
Function Live Ins: $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr5, $sgpr6_sgpr7, $sgpr8, $sgpr12_sgpr13, $sgpr14, $sgpr15, $sgpr16

bb.0 (%ir-block.30):
  successors: %bb.2(0x40000000), %bb.1(0x40000000); %bb.2(50.00%), %bb.1(50.00%)
  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
  renamable $sgpr24_sgpr25 = COPY $sgpr6_sgpr7
  renamable $sgpr20_sgpr21 = COPY $sgpr2_sgpr3
  renamable $vgpr227 = COPY $vgpr0
  early-clobber renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $vgpr1 = V_MOV_B32_e32 0, implicit $exec
  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode, debug-location !8; moe_op_gemm_a8w4.py:190
  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr6_sgpr7, renamable $vgpr1, 0, 0, implicit $exec, debug-location !10 :: (load (s32) from %ir.22, addrspace 1); moe_op_gemm_a8w4.py:294:37
  renamable $sgpr6 = V_READFIRSTLANE_B32 $vgpr0, implicit $exec, debug-location !10; moe_op_gemm_a8w4.py:294:37
  renamable $vgpr0 = V_SUB_U32_e32 $sgpr2, killed $vgpr0, implicit $exec, debug-location !11; moe_op_gemm_a8w4.py:294:29
  renamable $sgpr2 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !12; moe_op_gemm_a8w4.py:302:38
  renamable $vcc = V_CMP_GT_I32_e64 1, killed $vgpr0, implicit $exec, debug-location !13; moe_op_gemm_a8w4.py:303:19
  S_CMP_LT_I32 renamable $sgpr16, renamable $sgpr2, implicit-def $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
  renamable $sgpr10_sgpr11 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
  renamable $sgpr10_sgpr11 = S_OR_B64 killed renamable $vcc, killed renamable $sgpr10_sgpr11, implicit-def dead $scc
  renamable $vcc = S_AND_B64 $exec, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !15; moe_op_gemm_a8w4.py:303:25
  S_CBRANCH_VCCNZ %bb.2, implicit $vcc, debug-location !15; moe_op_gemm_a8w4.py:303:25
  S_BRANCH %bb.1, debug-location !15; moe_op_gemm_a8w4.py:303:25

bb.1.common.ret:
; predecessors: %bb.0, %bb.2, %bb.71

  S_ENDPGM 0, debug-location !16; moe_op_gemm_a8w4.py:0

bb.2 (%ir-block.39):
; predecessors: %bb.0
  successors: %bb.3(0x50000000), %bb.1(0x30000000); %bb.3(62.50%), %bb.1(37.50%)
  liveins: $sgpr2, $sgpr5, $sgpr6, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr1, $vgpr227, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000C, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
  renamable $sgpr4 = S_ASHR_I32 renamable $sgpr2, 31, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_LSHR_B32 killed renamable $sgpr4, 29, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_ADD_I32 renamable $sgpr2, killed renamable $sgpr4, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 3, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_AND_B32 killed renamable $sgpr4, -8, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_SUB_I32 renamable $sgpr2, killed renamable $sgpr4, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr16, 31, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_LSHR_B32 killed renamable $sgpr9, 29, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_ADD_I32 renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr10 = S_ASHR_I32 renamable $sgpr9, 3, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr2 = S_ABS_I32 killed renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr2, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr9 = S_AND_B32 killed renamable $sgpr9, -8, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr7 = nsw S_MUL_I32 killed renamable $sgpr7, renamable $sgpr9, debug-location !23; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_MIN_I32 killed renamable $sgpr9, killed renamable $sgpr4, implicit-def dead $scc, debug-location !24; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = nsw S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr10, implicit-def dead $scc, debug-location !25; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !26; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:309:61 ]
  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_SUB_I32 0, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_I32 killed renamable $sgpr7, renamable $sgpr10, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr7, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr7, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr10, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_MUL_I32 killed renamable $sgpr7, renamable $sgpr2, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_SUB_I32 renamable $sgpr4, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr2, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr4, implicit $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_SUB_I32 renamable $sgpr4, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  S_CMP_GE_U32 renamable $sgpr4, killed renamable $sgpr2, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr2 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr4, implicit $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr7 = S_LSHL_B32 killed renamable $sgpr3, 2, implicit-def dead $scc, debug-location !28; pid_preprocessing.py:72:42 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_ABS_I32 renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_XOR_B32 killed renamable $sgpr2, renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr2, killed renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_XOR_B32 renamable $sgpr4, renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_ASHR_I32 killed renamable $sgpr2, 31, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr10, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr9, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr9, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_ABS_I32 renamable $sgpr4, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr11, killed renamable $sgpr10, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr9, renamable $sgpr3, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_SUB_I32 renamable $sgpr11, killed renamable $sgpr10, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr17 = S_SUB_I32 renamable $sgpr10, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr10, renamable $sgpr3, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_CSELECT_B32 killed renamable $sgpr17, killed renamable $sgpr10, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr2, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr2, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr2 = S_LSHL_B32 renamable $sgpr9, 2, implicit-def dead $scc, debug-location !33; pid_preprocessing.py:74:33 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_SUB_I32 killed renamable $sgpr6, renamable $sgpr2, implicit-def dead $scc, debug-location !34; pid_preprocessing.py:75:39 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_MIN_I32 killed renamable $sgpr3, 4, implicit-def dead $scc, debug-location !35; pid_preprocessing.py:75:52 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr3 = S_ABS_I32 renamable $sgpr10, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 144, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr18 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_MUL_I32 killed renamable $sgpr6, renamable $sgpr19, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr19, killed renamable $sgpr6, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr19, killed renamable $sgpr6, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr11, renamable $sgpr6, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_MUL_I32 killed renamable $sgpr19, renamable $sgpr3, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr11, killed renamable $sgpr19, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr19, killed renamable $sgpr11, implicit $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr19, killed renamable $sgpr11, implicit $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_XOR_B32 killed renamable $sgpr11, renamable $sgpr18, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr11, killed renamable $sgpr18, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr2, killed renamable $sgpr11, implicit-def dead $scc, debug-location !37; pid_preprocessing.py:77:31 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr19 = S_ASHR_I32 renamable $sgpr18, 31, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $sgpr18_sgpr19 = S_LSHL_B64 killed renamable $sgpr18_sgpr19, 2, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $sgpr16 = S_ADD_U32 renamable $sgpr16, renamable $sgpr18, implicit-def $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $sgpr17 = S_ADDC_U32 killed renamable $sgpr17, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
  renamable $vgpr1 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr16_sgpr17, killed renamable $vgpr1, 0, 0, implicit $exec, debug-location !38 :: (load (s32) from %ir.162, addrspace 1); moe_op_gemm_a8w4.py:319:24
  renamable $vcc = V_CMP_EQ_U32_e64 -1, $vgpr1, implicit $exec, debug-location !39; moe_op_gemm_a8w4.py:320:20
  $vcc = S_AND_B64 $exec, killed renamable $vcc, implicit-def dead $scc, debug-location !39; moe_op_gemm_a8w4.py:320:20
  renamable $sgpr2 = S_MOV_B32 0
  S_CBRANCH_VCCNZ %bb.1, implicit $vcc, debug-location !39; moe_op_gemm_a8w4.py:320:20

bb.3 (%ir-block.166):
; predecessors: %bb.2
  successors: %bb.6(0x40000000), %bb.4(0x40000000); %bb.6(50.00%), %bb.4(50.00%)
  liveins: $sgpr3, $sgpr4, $sgpr5, $sgpr6, $sgpr7, $sgpr8, $sgpr9, $sgpr10, $sgpr14, $sgpr15, $vgpr1, $vgpr227, $sgpr0_sgpr1, $sgpr2_sgpr3:0x0000000000000003, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
  early-clobber renamable $sgpr16_sgpr17_sgpr18_sgpr19 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
  renamable $vgpr83 = V_AND_B32_e32 65535, $vgpr1, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
  renamable $vgpr2 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr83, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
  renamable $vgpr104 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr18_sgpr19, renamable $vgpr2, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
  renamable $sgpr18_sgpr19 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr10 = S_ASHR_I32 killed renamable $sgpr10, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, killed renamable $sgpr7, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr0 = V_ASHRREV_I32_e32 16, killed $vgpr1, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
  renamable $vgpr228 = V_LSHRREV_B32_e32 4, $vgpr227, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $sgpr27 = S_MOV_B32 159744
  renamable $sgpr26 = S_MOV_B32 2147483646
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr0, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
  renamable $vgpr234 = disjoint V_OR_B32_e32 32, $vgpr228, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr232 = disjoint V_OR_B32_e32 64, $vgpr228, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr230 = disjoint V_OR_B32_e32 96, $vgpr228, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr236_vgpr237 = nsw V_LSHLREV_B64_e64 7, killed $vgpr0_vgpr1, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
  renamable $sgpr7 = S_XOR_B32 killed renamable $sgpr7, killed renamable $sgpr10, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr6, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr106 = V_OR_B32_e32 $vgpr236, $vgpr228, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr229 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, killed renamable $vgpr2, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
  renamable $vgpr112 = V_OR_B32_e32 $vgpr236, $vgpr234, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr110 = V_OR_B32_e32 $vgpr236, $vgpr232, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr108 = V_OR_B32_e32 $vgpr236, $vgpr230, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr236, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr9 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr10 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr1 = V_SUB_U32_e32 0, $vgpr106, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_SUB_U32_e32 0, $vgpr112, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_SUB_U32_e32 0, $vgpr110, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_SUB_U32_e32 0, $vgpr108, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr1 = V_MAX_I32_e32 killed $vgpr1, $vgpr106, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_MAX_I32_e32 killed $vgpr2, $vgpr112, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_MAX_I32_e32 killed $vgpr3, $vgpr110, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_MAX_I32_e32 killed $vgpr4, $vgpr108, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr18 = COPY renamable $sgpr26, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $sgpr19 = COPY renamable $sgpr27, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr5 = V_SUB_U32_e32 0, $vgpr104, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr5 = V_MAX_I32_e32 $vgpr104, killed $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_CVT_F32_U32_e32 $vgpr5, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr9 = S_SUB_I32 renamable $sgpr4, renamable $sgpr3, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr10, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr6 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr4, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr9 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  S_CMP_GE_U32 killed renamable $sgpr4, killed renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $vgpr6 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr7 = V_SUB_U32_e32 0, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr7, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_HI_U32_e64 $vgpr6, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_ADD_U32_e32 killed $vgpr6, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_HI_U32_e64 $vgpr1, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr2, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr3, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr7, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_MUL_LO_U32_e64 killed $vgpr8, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr9, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_MUL_LO_U32_e64 killed $vgpr6, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_SUB_U32_e32 killed $vgpr1, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr2, killed $vgpr8, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, killed $vgpr9, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_SUB_U32_e32 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_SUB_U32_e32 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_SUB_U32_e32 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_SUB_U32_e32 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr6 = V_SUB_U32_e32 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr7 = V_SUB_U32_e32 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr8 = V_SUB_U32_e32 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr9 = V_SUB_U32_e32 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vcc = V_CMP_GE_U32_e64 $vgpr4, killed $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_XOR_B32_e32 killed $vgpr3, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr4 = V_XOR_B32_e32 killed $vgpr4, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_SUB_U32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $vgpr1 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr1, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr2 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr2, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr3 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr3, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr0 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr0, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
  renamable $vgpr4 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr1, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr5 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr2, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr6 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr3, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  renamable $vgpr7 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
  KILL killed renamable $vgpr0
  KILL killed renamable $sgpr16_sgpr17_sgpr18, renamable $sgpr19
  KILL killed renamable $vgpr3
  KILL killed renamable $vgpr2
  KILL killed renamable $vgpr1
  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
  renamable $vgpr80 = V_AND_B32_e32 15, $vgpr227, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $vgpr0 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr114 = V_LSHLREV_B32_e32 4, $vgpr80, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $sgpr4 = S_ADD_I32 renamable $sgpr23, 255, implicit-def dead $scc, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr34 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
  renamable $sgpr35 = S_ASHR_I32 renamable $sgpr34, 31, implicit-def dead $scc, debug-location !47; moe_op_gemm_a8w4.py:328:28
  S_CMPK_GT_I32 renamable $sgpr4, 255, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr4, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr2 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
  renamable $vgpr3 = V_ASHRREV_I32_e32 31, $vgpr6, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
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
  renamable $vgpr34_vgpr35, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr1, $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $vgpr36_vgpr37, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr2, $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $vgpr38_vgpr39, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr3, $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $vgpr40_vgpr41, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr4, killed $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr25 = S_AND_B32 renamable $sgpr25, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr1 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr34, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr36, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr3 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr38, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, $vgpr40, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr1, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr2, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr3, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr0, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  KILL killed renamable $vgpr2
  KILL killed renamable $vgpr1
  KILL killed renamable $vgpr0
  KILL killed renamable $vgpr3
  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $vgpr5 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
  renamable $vgpr0 = V_LSHRREV_B32_e32 5, $vgpr227, implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
  renamable $vgpr2 = V_OR_B32_e32 $sgpr8, killed $vgpr0, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
  renamable $vgpr3 = COPY renamable $sgpr9, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = COPY killed renamable $sgpr9, debug-location !67; moe_op_gemm_a8w4.py:362:77
  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr6_vgpr7 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr8_sgpr9 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !67; moe_op_gemm_a8w4.py:362:77
  S_CBRANCH_EXECZ %bb.4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  S_BRANCH %bb.6, debug-location !67; moe_op_gemm_a8w4.py:362:77

bb.4.Flow349:
; predecessors: %bb.3, %bb.6
  successors: %bb.5(0x40000000), %bb.7(0x40000000); %bb.5(50.00%), %bb.7(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr2_vgpr3:0x0000000000000003, $vgpr6_vgpr7:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr8_sgpr9 = S_OR_SAVEEXEC_B64 killed renamable $sgpr8_sgpr9, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $vgpr3 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr8_sgpr9, implicit-def $scc
  S_CBRANCH_EXECZ %bb.7, implicit $exec
  S_BRANCH %bb.5

bb.5 (%ir-block.366):
; predecessors: %bb.4
  successors: %bb.7(0x80000000); %bb.7(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr3, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr2_vgpr3:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr3, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr10, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr2, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr2, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr6 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  S_BRANCH %bb.7, debug-location !67; moe_op_gemm_a8w4.py:362:77

bb.6 (%ir-block.371):
; predecessors: %bb.3
  successors: %bb.4(0x80000000); %bb.4(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x000000000000000C, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr10 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr11 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr10_sgpr11 = S_XOR_B64 killed renamable $sgpr10_sgpr11, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr10, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr11, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr10, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr11, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr16 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr17 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr2, renamable $sgpr16, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_I32 renamable $sgpr3, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr30, killed renamable $sgpr18, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr19, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_MUL_I32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_MUL_I32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr30, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
  dead renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr30, killed renamable $sgpr31, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_ADDC_U32 killed renamable $sgpr19, killed renamable $sgpr36, implicit-def $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_ADDC_U32 killed renamable $sgpr33, 0, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_U32 killed renamable $sgpr19, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr30, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr17, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr16, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr2, renamable $sgpr16, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr19, killed renamable $sgpr18, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr30 = S_MUL_I32 renamable $sgpr16, renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr17, killed renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr31 = S_ADDC_U32 0, killed renamable $sgpr31, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr30, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr31, killed renamable $sgpr19, implicit-def $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr18 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr17, killed renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr16, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr0_vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_XOR_B32_e32 $vgpr3, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr10 = V_XOR_B32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr10, $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4 = V_MUL_HI_U32_e64 $vgpr10, $sgpr17, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr4_vgpr5, 0, killed $vgpr2_vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr6_vgpr7, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr17, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  dead renamable $vgpr2 = V_ADD_CO_U32_e32 $vgpr2, $vgpr8, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4 = V_ADDC_U32_e32 killed $vgpr3, killed $vgpr9, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr7 = V_ADDC_U32_e32 0, $vgpr7, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr4_vgpr5, 0, killed $vgpr6_vgpr7, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4 = V_MUL_LO_U32_e64 $sgpr11, $vgpr2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr5 = V_MUL_LO_U32_e64 $sgpr10, $vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr10, killed $vgpr2, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr3 = V_ADD3_U32_e64 $vgpr3, killed $vgpr5, killed $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4 = V_SUB_U32_e32 $vgpr1, $vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr5 = COPY renamable $sgpr11, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr10, killed $vgpr2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr4, killed $vgpr5, $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr5, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr4, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr11, $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr6 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr10, $vgpr5, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr7 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $sgpr2_sgpr3 = V_CMP_EQ_U32_e64 $sgpr11, killed $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr6, 0, killed $vgpr7, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr6, dead renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr5, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr3, killed $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr11, $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr3 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr10, $vgpr2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr7 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr11, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr3, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr6, dead renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr1, killed $vgpr0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
  renamable $vgpr2_vgpr3 = IMPLICIT_DEF
  S_BRANCH %bb.4, debug-location !67; moe_op_gemm_a8w4.py:362:77

bb.7 (%ir-block.373):
; predecessors: %bb.4, %bb.5
  successors: %bb.10(0x40000000), %bb.8(0x40000000); %bb.10(50.00%), %bb.8(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr6_vgpr7:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
  renamable $vgpr115 = V_LSHLREV_B32_e32 3, $vgpr227, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $vgpr35 = V_AND_B32_e32 248, $vgpr115, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $vgpr37 = V_MUL_LO_U32_e64 $vgpr83, $sgpr2, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
  renamable $vgpr39 = V_MUL_LO_U32_e64 killed $sgpr3, killed $vgpr6, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
  renamable $vgpr0 = V_ADD3_U32_e64 $vgpr37, $vgpr35, $vgpr39, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
  renamable $sgpr31 = S_MOV_B32 159744
  renamable $sgpr30 = S_MOV_B32 2147483646
  renamable $sgpr29 = S_AND_B32 renamable $sgpr29, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr1 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr0, $sgpr6_sgpr7, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr0_vgpr1 = BUFFER_LOAD_DWORDX2_OFFEN killed renamable $vgpr0, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
  renamable $sgpr2 = S_MOV_B32 0
  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
  renamable $vgpr231 = V_LSHRREV_B32_e32 3, $vgpr227, implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
  renamable $vgpr4 = V_OR_B32_e32 $sgpr18, $vgpr231, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr5 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr11, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2_vgpr3 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.10, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.8.Flow348:
; predecessors: %bb.7, %bb.10
  successors: %bb.9(0x40000000), %bb.11(0x40000000); %bb.9(50.00%), %bb.11(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.11, implicit $exec
  S_BRANCH %bb.9

bb.9 (%ir-block.400):
; predecessors: %bb.8
  successors: %bb.11(0x80000000); %bb.11(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr4_vgpr5:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr2 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_MUL_HI_U32_e64 $vgpr2, killed $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_ADD_U32_e32 killed $vgpr2, killed $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_MUL_LO_U32_e64 killed $vgpr2, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_SUB_U32_e32 $vgpr4, killed $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_SUBREV_U32_e32 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr3, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_SUBREV_U32_e32 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr3, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.11, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.10 (%ir-block.405):
; predecessors: %bb.7
  successors: %bb.8(0x80000000); %bb.8(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr4_vgpr5:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_FMAMK_F32 killed $vgpr3, 1333788672, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_RCP_F32_e32 killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = nofpexcept V_MUL_F32_e32 796917760, $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = nofpexcept V_TRUNC_F32_e32 killed $vgpr3, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_FMAMK_F32 $vgpr3, -813694976, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr3, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = COPY renamable $vgpr6, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr4_vgpr5, 0, $vgpr6_vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr3, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_XOR_B32_e32 killed $vgpr2, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr7, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr7, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr8_vgpr9, 0, killed $vgpr2_vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10_vgpr11, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12_vgpr13, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr2 = V_ADD_CO_U32_e32 $vgpr2, $vgpr12, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_ADDC_U32_e32 killed $vgpr3, killed $vgpr13, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_ADDC_U32_e32 0, $vgpr11, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, killed $vgpr10_vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_MUL_LO_U32_e64 $sgpr37, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 $sgpr36, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_ADD3_U32_e64 $vgpr3, killed $vgpr9, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUB_U32_e32 $vgpr5, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr7, killed $vgpr2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr8, $vgpr9, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr7, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_CNDMASK_B32_e64 0, killed $vgpr11, 0, killed $vgpr12, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr7, killed $vgpr9, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr7, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_CNDMASK_B32_e64 0, killed $vgpr10, 0, killed $vgpr7, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr3, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr10, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr7, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr5, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3 = V_XOR_B32_e32 killed $vgpr3, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr2, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr2, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr2, $vgpr6, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr3, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr3, killed $vgpr6, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.8, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.11 (%ir-block.407):
; predecessors: %bb.8, %bb.9
  successors: %bb.14(0x40000000), %bb.12(0x40000000); %bb.14(50.00%), %bb.12(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr8 = V_OR3_B32_e64 $vgpr231, $sgpr18, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6_vgpr7 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.14, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.12.Flow347:
; predecessors: %bb.11, %bb.14
  successors: %bb.13(0x40000000), %bb.15(0x40000000); %bb.13(50.00%), %bb.15(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.15, implicit $exec
  S_BRANCH %bb.13

bb.13 (%ir-block.422):
; predecessors: %bb.12
  successors: %bb.15(0x80000000); %bb.15(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr8_vgpr9:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.15, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.14 (%ir-block.427):
; predecessors: %bb.11
  successors: %bb.12(0x80000000); %bb.12(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr8_vgpr9:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr6, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = nofpexcept V_TRUNC_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr6, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = COPY renamable $vgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr10_vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr7, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_XOR_B32_e32 killed $vgpr6, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6_vgpr7, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr11, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr11, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 $vgpr8_vgpr9, 0, killed $vgpr6_vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12_vgpr13, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14_vgpr15, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr6 = V_ADD_CO_U32_e32 $vgpr6, $vgpr14, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_ADDC_U32_e32 killed $vgpr7, killed $vgpr15, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_ADDC_U32_e32 0, $vgpr13, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, killed $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_MUL_LO_U32_e64 $sgpr37, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 $sgpr36, $vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6_vgpr7, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr6, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_ADD3_U32_e64 $vgpr7, killed $vgpr9, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUB_U32_e32 $vgpr5, $vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr11, killed $vgpr6, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr8, $vgpr9, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr6, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr8, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr13, 0, killed $vgpr14, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr8, killed $vgpr9, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr11, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr8, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr12, 0, killed $vgpr8, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr7, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_CNDMASK_B32_e64 0, killed $vgpr7, 0, killed $vgpr12, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7 = V_CNDMASK_B32_e64 0, killed $vgpr11, 0, killed $vgpr9, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_CNDMASK_B32_e64 0, killed $vgpr6, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6 = V_XOR_B32_e32 killed $vgpr6, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr6, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr6, $vgpr10, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr7, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr10, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
  S_BRANCH %bb.12, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.15 (%ir-block.429):
; predecessors: %bb.12, %bb.13
  successors: %bb.18(0x40000000), %bb.16(0x40000000); %bb.18(50.00%), %bb.16(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr8 = V_OR_B32_e32 128, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10_vgpr11 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.18, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.16.Flow346:
; predecessors: %bb.15, %bb.18
  successors: %bb.17(0x40000000), %bb.19(0x40000000); %bb.17(50.00%), %bb.19(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.19, implicit $exec
  S_BRANCH %bb.17

bb.17 (%ir-block.444):
; predecessors: %bb.16
  successors: %bb.19(0x80000000); %bb.19(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.19, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.18 (%ir-block.449):
; predecessors: %bb.15
  successors: %bb.16(0x80000000); %bb.16(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr10, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = nofpexcept V_TRUNC_F32_e32 killed $vgpr10, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr10, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr10, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr10_vgpr11, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14_vgpr15, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16_vgpr17, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr16, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr17, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = V_ADDC_U32_e32 0, $vgpr15, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr10_vgpr11, 0, killed $vgpr14_vgpr15, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr11, killed $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr10, $vgpr11, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr10, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = V_CNDMASK_B32_e64 0, killed $vgpr15, 0, killed $vgpr16, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr10, killed $vgpr11, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr13, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr10, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr15, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10 = V_CNDMASK_B32_e64 0, killed $vgpr14, 0, killed $vgpr10, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr14, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr10, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr13, 0, killed $vgpr11, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr10, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr11, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
  S_BRANCH %bb.16, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.19 (%ir-block.451):
; predecessors: %bb.16, %bb.17
  successors: %bb.22(0x40000000), %bb.20(0x40000000); %bb.22(50.00%), %bb.20(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr8 = V_OR_B32_e32 192, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14_vgpr15 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.22, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.20.Flow345:
; predecessors: %bb.19, %bb.22
  successors: %bb.21(0x40000000), %bb.23(0x40000000); %bb.21(50.00%), %bb.23(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.23, implicit $exec
  S_BRANCH %bb.21

bb.21 (%ir-block.466):
; predecessors: %bb.20
  successors: %bb.23(0x80000000); %bb.23(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.23, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.22 (%ir-block.471):
; predecessors: %bb.19
  successors: %bb.20(0x80000000); %bb.20(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr14_vgpr15, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16_vgpr17, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr18, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr19, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_ADDC_U32_e32 0, $vgpr17, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr14_vgpr15, 0, killed $vgpr16_vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr15, killed $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr14, $vgpr15, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_CNDMASK_B32_e64 0, killed $vgpr17, 0, killed $vgpr18, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr15, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr14, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr16, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr14, 0, killed $vgpr15, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr14, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr15, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
  S_BRANCH %bb.20, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.23 (%ir-block.473):
; predecessors: %bb.20, %bb.21
  successors: %bb.26(0x40000000), %bb.24(0x40000000); %bb.26(50.00%), %bb.24(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr8 = V_OR_B32_e32 256, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.26, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.24.Flow344:
; predecessors: %bb.23, %bb.26
  successors: %bb.25(0x40000000), %bb.27(0x40000000); %bb.25(50.00%), %bb.27(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.27, implicit $exec
  S_BRANCH %bb.25

bb.25 (%ir-block.488):
; predecessors: %bb.24
  successors: %bb.27(0x80000000); %bb.27(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.27, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.26 (%ir-block.493):
; predecessors: %bb.23
  successors: %bb.24(0x80000000); %bb.24(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr16_vgpr17, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr20, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr21, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_ADDC_U32_e32 0, $vgpr19, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr16_vgpr17, 0, killed $vgpr18_vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, killed $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr16, $vgpr17, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19 = V_CNDMASK_B32_e64 0, killed $vgpr19, 0, killed $vgpr20, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr17, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr18, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr18, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr17, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr18, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr19, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
  S_BRANCH %bb.24, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.27 (%ir-block.495):
; predecessors: %bb.24, %bb.25
  successors: %bb.30(0x40000000), %bb.28(0x40000000); %bb.30(50.00%), %bb.28(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr8 = V_OR_B32_e32 320, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.30, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.28.Flow343:
; predecessors: %bb.27, %bb.30
  successors: %bb.29(0x40000000), %bb.31(0x40000000); %bb.29(50.00%), %bb.31(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.31, implicit $exec
  S_BRANCH %bb.29

bb.29 (%ir-block.510):
; predecessors: %bb.28
  successors: %bb.31(0x80000000); %bb.31(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.31, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.30 (%ir-block.515):
; predecessors: %bb.27
  successors: %bb.28(0x80000000); %bb.28(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr16_vgpr17, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr22, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr23, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_ADDC_U32_e32 0, $vgpr21, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr16_vgpr17, 0, killed $vgpr20_vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, killed $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr16, $vgpr17, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr22, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr17, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr20, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr17, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr22, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr23, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
  S_BRANCH %bb.28, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.31 (%ir-block.517):
; predecessors: %bb.28, %bb.29
  successors: %bb.34(0x40000000), %bb.32(0x40000000); %bb.34(50.00%), %bb.32(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr8 = V_OR_B32_e32 384, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26_vgpr27 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.34, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.32.Flow342:
; predecessors: %bb.31, %bb.34
  successors: %bb.33(0x40000000), %bb.35(0x40000000); %bb.33(50.00%), %bb.35(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.35, implicit $exec
  S_BRANCH %bb.33

bb.33 (%ir-block.532):
; predecessors: %bb.32
  successors: %bb.35(0x80000000); %bb.35(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.35, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.34 (%ir-block.537):
; predecessors: %bb.31
  successors: %bb.32(0x80000000); %bb.32(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr16_vgpr17, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr25, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_ADDC_U32_e32 0, $vgpr21, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr16_vgpr17, 0, killed $vgpr20_vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, killed $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr16, $vgpr17, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr17, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr20, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr17, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr26, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr27, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
  S_BRANCH %bb.32, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.35 (%ir-block.539):
; predecessors: %bb.32, %bb.33
  successors: %bb.38(0x40000000), %bb.36(0x40000000); %bb.38(50.00%), %bb.36(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr4 = V_OR_B32_e32 448, killed $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr5 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $sgpr10 = S_MOV_B32 0
  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30_vgpr31 = IMPLICIT_DEF
  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr10_sgpr11 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_CBRANCH_EXECZ %bb.36, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.38, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.36.Flow341:
; predecessors: %bb.35, %bb.38
  successors: %bb.37(0x40000000), %bb.39(0x40000000); %bb.37(50.00%), %bb.39(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
  S_CBRANCH_EXECZ %bb.39, implicit $exec
  S_BRANCH %bb.37

bb.37 (%ir-block.554):
; predecessors: %bb.36
  successors: %bb.39(0x80000000); %bb.39(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUBREV_U32_e32 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr5, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_SUBREV_U32_e32 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr5, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  S_BRANCH %bb.39, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.38 (%ir-block.559):
; predecessors: %bb.35
  successors: %bb.36(0x80000000); %bb.36(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x000000000000000F, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = nofpexcept V_FMAMK_F32 killed $vgpr9, 1333788672, killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = nofpexcept V_MUL_F32_e32 796917760, $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = nofpexcept V_TRUNC_F32_e32 killed $vgpr9, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = nofpexcept V_FMAMK_F32 $vgpr9, -813694976, killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr9, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr37, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr36, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr39, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr37, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_ADDC_U32 killed renamable $sgpr36, killed renamable $sgpr40, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_ADDC_U32 killed renamable $sgpr39, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_U32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr37 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr39 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr38 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr38, killed renamable $sgpr36, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr8 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = COPY renamable $vgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 killed $vgpr4_vgpr5, 0, $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_XOR_B32_e32 $vgpr5, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr4, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4_vgpr5, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr24, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_MUL_HI_U32_e64 $vgpr24, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 $vgpr12_vgpr13, 0, killed $vgpr4_vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16_vgpr17, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr9, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr9, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  dead renamable $vgpr4 = V_ADD_CO_U32_e32 $vgpr4, $vgpr20, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_ADDC_U32_e32 killed $vgpr5, killed $vgpr21, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_ADDC_U32_e32 0, $vgpr17, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 killed $vgpr12_vgpr13, 0, killed $vgpr16_vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_MUL_LO_U32_e64 $sgpr17, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr16, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4_vgpr5, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr16, killed $vgpr4, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_ADD3_U32_e64 $vgpr5, killed $vgpr13, killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_SUB_U32_e32 $vgpr9, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13 = COPY renamable $sgpr17, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr24, killed $vgpr4, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr12, $vgpr13, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr4, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr12, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, $vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, $vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr20 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr21, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr12, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr13, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr12, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr12 = V_CNDMASK_B32_e64 0, killed $vgpr17, 0, killed $vgpr12, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr9, killed $vgpr5, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr17, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_LE_U32_e64 $sgpr16, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr17 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr17, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr17, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr12, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr13, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4 = V_XOR_B32_e32 killed $vgpr4, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr30, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr4, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr31, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr8, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
  renamable $vgpr4_vgpr5 = IMPLICIT_DEF
  S_BRANCH %bb.36, debug-location !75; moe_op_gemm_a8w4.py:377:35

bb.39 (%ir-block.561):
; predecessors: %bb.36, %bb.37
  successors: %bb.41(0x40000000), %bb.40(0x40000000); %bb.41(50.00%), %bb.40(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
  renamable $vgpr41 = V_LSHLREV_B32_e32 4, $vgpr227, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr42 = V_AND_B32_e32 112, $vgpr41, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
  renamable $vgpr45 = V_MUL_HI_I32_e64 $vgpr83, $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
  renamable $vgpr44 = V_MUL_LO_U32_e64 $vgpr83, killed $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
  renamable $vgpr32_vgpr33 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, $vgpr44_vgpr45, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr3 = V_MUL_LO_U32_e64 $vgpr3, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr4 = V_MUL_LO_U32_e64 $vgpr2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr46_vgpr47, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr2 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr6_sgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 1, killed $vgpr2, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr47 = V_ADD3_U32_e64 $vgpr47, killed $vgpr4, killed $vgpr3, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.41, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.40:
; predecessors: %bb.39
  successors: %bb.42(0x80000000); %bb.42(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr2 = COPY renamable $vgpr43
  renamable $vgpr3 = COPY renamable $vgpr43
  renamable $vgpr4 = COPY renamable $vgpr43
  renamable $vgpr5 = COPY renamable $vgpr43
  S_BRANCH %bb.42, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.41 (%ir-block.571):
; predecessors: %bb.39
  successors: %bb.42(0x80000000); %bb.42(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr46_vgpr47, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr2_vgpr3, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.42 (%ir-block.575):
; predecessors: %bb.41, %bb.40
  successors: %bb.44(0x40000000), %bb.43(0x40000000); %bb.44(50.00%), %bb.43(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr7 = V_MUL_LO_U32_e64 $vgpr7, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr8 = V_MUL_LO_U32_e64 $vgpr6, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr48_vgpr49, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr6, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr49 = V_ADD3_U32_e64 $vgpr49, killed $vgpr8, killed $vgpr7, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.44, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.43:
; predecessors: %bb.42
  successors: %bb.45(0x80000000); %bb.45(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr6 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr7 = COPY renamable $vgpr6
  renamable $vgpr8 = COPY renamable $vgpr6
  renamable $vgpr9 = COPY renamable $vgpr6
  S_BRANCH %bb.45, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.44 (%ir-block.577):
; predecessors: %bb.42
  successors: %bb.45(0x80000000); %bb.45(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr48_vgpr49, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr6_vgpr7, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.45 (%ir-block.581):
; predecessors: %bb.44, %bb.43
  successors: %bb.47(0x40000000), %bb.46(0x40000000); %bb.47(50.00%), %bb.46(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr11 = V_MUL_LO_U32_e64 $vgpr11, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr12 = V_MUL_LO_U32_e64 $vgpr10, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr50_vgpr51, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr10, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr51 = V_ADD3_U32_e64 $vgpr51, killed $vgpr12, killed $vgpr11, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.47, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.46:
; predecessors: %bb.45
  successors: %bb.48(0x80000000); %bb.48(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr10 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr11 = COPY renamable $vgpr10
  renamable $vgpr12 = COPY renamable $vgpr10
  renamable $vgpr13 = COPY renamable $vgpr10
  S_BRANCH %bb.48, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.47 (%ir-block.583):
; predecessors: %bb.45
  successors: %bb.48(0x80000000); %bb.48(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr10_vgpr11 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr50_vgpr51, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr10_vgpr11 = V_LSHL_ADD_U64_e64 killed $vgpr10_vgpr11, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr10_vgpr11, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.48 (%ir-block.587):
; predecessors: %bb.47, %bb.46
  successors: %bb.50(0x40000000), %bb.49(0x40000000); %bb.50(50.00%), %bb.49(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr15 = V_MUL_LO_U32_e64 $vgpr15, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr16 = V_MUL_LO_U32_e64 $vgpr14, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr52_vgpr53, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr14, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr53 = V_ADD3_U32_e64 $vgpr53, killed $vgpr16, killed $vgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.50, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.49:
; predecessors: %bb.48
  successors: %bb.51(0x80000000); %bb.51(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr14 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr15 = COPY renamable $vgpr14
  renamable $vgpr16 = COPY renamable $vgpr14
  renamable $vgpr17 = COPY renamable $vgpr14
  S_BRANCH %bb.51, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.50 (%ir-block.589):
; predecessors: %bb.48
  successors: %bb.51(0x80000000); %bb.51(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr14_vgpr15 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr52_vgpr53, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr14_vgpr15 = V_LSHL_ADD_U64_e64 killed $vgpr14_vgpr15, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr14_vgpr15, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.51 (%ir-block.593):
; predecessors: %bb.50, %bb.49
  successors: %bb.53(0x40000000), %bb.52(0x40000000); %bb.53(50.00%), %bb.52(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr19 = V_MUL_LO_U32_e64 $vgpr19, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr20 = V_MUL_LO_U32_e64 $vgpr18, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr54_vgpr55, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr18, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr55 = V_ADD3_U32_e64 $vgpr55, killed $vgpr20, killed $vgpr19, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.53, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.52:
; predecessors: %bb.51
  successors: %bb.54(0x80000000); %bb.54(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr18 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr19 = COPY renamable $vgpr18
  renamable $vgpr20 = COPY renamable $vgpr18
  renamable $vgpr21 = COPY renamable $vgpr18
  S_BRANCH %bb.54, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.53 (%ir-block.595):
; predecessors: %bb.51
  successors: %bb.54(0x80000000); %bb.54(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr54_vgpr55, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr18_vgpr19, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.54 (%ir-block.599):
; predecessors: %bb.53, %bb.52
  successors: %bb.56(0x40000000), %bb.55(0x40000000); %bb.56(50.00%), %bb.55(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr23 = V_MUL_LO_U32_e64 $vgpr23, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr24 = V_MUL_LO_U32_e64 $vgpr22, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr56_vgpr57, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr22, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr57 = V_ADD3_U32_e64 $vgpr57, killed $vgpr24, killed $vgpr23, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.56, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.55:
; predecessors: %bb.54
  successors: %bb.57(0x80000000); %bb.57(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr22 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr23 = COPY renamable $vgpr22
  renamable $vgpr24 = COPY renamable $vgpr22
  renamable $vgpr25 = COPY renamable $vgpr22
  S_BRANCH %bb.57, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.56 (%ir-block.601):
; predecessors: %bb.54
  successors: %bb.57(0x80000000); %bb.57(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr56_vgpr57, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr22_vgpr23, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr22_vgpr23, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.57 (%ir-block.605):
; predecessors: %bb.56, %bb.55
  successors: %bb.59(0x40000000), %bb.58(0x40000000); %bb.59(50.00%), %bb.58(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr27 = V_MUL_LO_U32_e64 $vgpr27, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr28 = V_MUL_LO_U32_e64 $vgpr26, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr58_vgpr59, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr26, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr59 = V_ADD3_U32_e64 $vgpr59, killed $vgpr28, killed $vgpr27, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.59, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.58:
; predecessors: %bb.57
  successors: %bb.60(0x80000000); %bb.60(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr27 = COPY renamable $vgpr26
  renamable $vgpr28 = COPY renamable $vgpr26
  renamable $vgpr29 = COPY renamable $vgpr26
  S_BRANCH %bb.60, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.59 (%ir-block.607):
; predecessors: %bb.57
  successors: %bb.60(0x80000000); %bb.60(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr58_vgpr59, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 killed $vgpr26_vgpr27, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr26_vgpr27, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.60 (%ir-block.611):
; predecessors: %bb.59, %bb.58
  successors: %bb.62(0x40000000), %bb.61(0x40000000); %bb.62(50.00%), %bb.61(50.00%)
  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr31 = V_MUL_LO_U32_e64 $vgpr31, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr62 = V_MUL_LO_U32_e64 $vgpr30, killed $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  renamable $vgpr60_vgpr61, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr30, killed $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr61 = V_ADD3_U32_e64 $vgpr61, killed $vgpr62, killed $vgpr31, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
  S_CBRANCH_VCCZ %bb.62, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.61:
; predecessors: %bb.60
  successors: %bb.63(0x80000000); %bb.63(100.00%)
  liveins: $sgpr4, $sgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr30 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr31 = COPY renamable $vgpr30
  renamable $vgpr32 = COPY renamable $vgpr30
  renamable $vgpr33 = COPY renamable $vgpr30
  S_BRANCH %bb.63, debug-location !79; moe_op_gemm_a8w4.py:405:20

bb.62 (%ir-block.613):
; predecessors: %bb.60
  successors: %bb.63(0x80000000); %bb.63(100.00%)
  liveins: $sgpr4, $sgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr32_vgpr33, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

bb.63 (%ir-block.617):
; predecessors: %bb.62, %bb.61
  successors: %bb.65(0x40000000), %bb.64(0x40000000); %bb.65(50.00%), %bb.64(50.00%)
  liveins: $sgpr4, $sgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
  renamable $sgpr6 = S_MOV_B32 240
  renamable $vgpr62 = V_BITOP3_B32_e64 $vgpr41, $vgpr227, killed $sgpr6, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr63 = V_ADD_U32_e32 0, $vgpr62, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr63 = V_ADD_U32_e32 65536, killed $vgpr63, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr63, killed renamable $vgpr64_vgpr65_vgpr66_vgpr67, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr63, killed renamable $vgpr68_vgpr69_vgpr70_vgpr71, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr63, killed renamable $vgpr72_vgpr73_vgpr74_vgpr75, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 killed renamable $vgpr63, killed renamable $vgpr76_vgpr77_vgpr78_vgpr79, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $sgpr6 = S_MOV_B32 112
  renamable $vgpr41 = V_BITOP3_B32_e64 killed $vgpr41, $vgpr227, $sgpr6, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr247 = nuw V_ADD_U32_e32 0, killed $vgpr41, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr2_vgpr3_vgpr4_vgpr5, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr10_vgpr11_vgpr12_vgpr13, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr14_vgpr15_vgpr16_vgpr17, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr18_vgpr19_vgpr20_vgpr21, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr22_vgpr23_vgpr24_vgpr25, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr26_vgpr27_vgpr28_vgpr29, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr30_vgpr31_vgpr32_vgpr33, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr2 = V_ADD_U32_e32 0, $vgpr115, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  renamable $vgpr2 = V_ADD_U32_e32 98304, killed $vgpr2, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
  DS_WRITE_B64_gfx9 killed renamable $vgpr2, killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr233 = V_AND_B32_e32 48, $vgpr227, implicit $exec
  renamable $vgpr26 = nuw nsw V_LSHLREV_B32_e32 6, $vgpr227, implicit $exec
  renamable $vgpr116 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr227, implicit $exec
  S_CBRANCH_SCC0 %bb.65, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

bb.64:
; predecessors: %bb.63
  successors: %bb.66(0x80000000); %bb.66(100.00%)
  liveins: $sgpr5, $vgpr26, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F
  renamable $vgpr5 = V_MOV_B32_e32 0, implicit $exec
  renamable $vgpr4 = COPY renamable $vgpr5
  renamable $vgpr3 = COPY renamable $vgpr5
  renamable $vgpr2 = COPY renamable $vgpr5
  renamable $vgpr213 = COPY renamable $vgpr5
  renamable $vgpr212 = COPY renamable $vgpr5
  renamable $vgpr211 = COPY renamable $vgpr5
  renamable $vgpr210 = COPY renamable $vgpr5
  renamable $vgpr189 = COPY renamable $vgpr5
  renamable $vgpr188 = COPY renamable $vgpr5
  renamable $vgpr187 = COPY renamable $vgpr5
  renamable $vgpr186 = COPY renamable $vgpr5
  renamable $vgpr177 = COPY renamable $vgpr5
  renamable $vgpr176 = COPY renamable $vgpr5
  renamable $vgpr175 = COPY renamable $vgpr5
  renamable $vgpr174 = COPY renamable $vgpr5
  renamable $vgpr185 = COPY renamable $vgpr5
  renamable $vgpr184 = COPY renamable $vgpr5
  renamable $vgpr183 = COPY renamable $vgpr5
  renamable $vgpr182 = COPY renamable $vgpr5
  renamable $vgpr153 = COPY renamable $vgpr5
  renamable $vgpr152 = COPY renamable $vgpr5
  renamable $vgpr151 = COPY renamable $vgpr5
  renamable $vgpr150 = COPY renamable $vgpr5
  renamable $vgpr205 = COPY renamable $vgpr5
  renamable $vgpr204 = COPY renamable $vgpr5
  renamable $vgpr203 = COPY renamable $vgpr5
  renamable $vgpr202 = COPY renamable $vgpr5
  renamable $vgpr217 = COPY renamable $vgpr5
  renamable $vgpr216 = COPY renamable $vgpr5
  renamable $vgpr215 = COPY renamable $vgpr5
  renamable $vgpr214 = COPY renamable $vgpr5
  renamable $vgpr53 = COPY renamable $vgpr5
  renamable $vgpr52 = COPY renamable $vgpr5
  renamable $vgpr51 = COPY renamable $vgpr5
  renamable $vgpr50 = COPY renamable $vgpr5
  renamable $vgpr49 = COPY renamable $vgpr5
  renamable $vgpr48 = COPY renamable $vgpr5
  renamable $vgpr47 = COPY renamable $vgpr5
  renamable $vgpr46 = COPY renamable $vgpr5
  renamable $vgpr161 = COPY renamable $vgpr5
  renamable $vgpr160 = COPY renamable $vgpr5
  renamable $vgpr159 = COPY renamable $vgpr5
  renamable $vgpr158 = COPY renamable $vgpr5
  renamable $vgpr125 = COPY renamable $vgpr5
  renamable $vgpr124 = COPY renamable $vgpr5
  renamable $vgpr123 = COPY renamable $vgpr5
  renamable $vgpr122 = COPY renamable $vgpr5
  renamable $vgpr133 = COPY renamable $vgpr5
  renamable $vgpr132 = COPY renamable $vgpr5
  renamable $vgpr131 = COPY renamable $vgpr5
  renamable $vgpr130 = COPY renamable $vgpr5
  renamable $vgpr137 = COPY renamable $vgpr5
  renamable $vgpr136 = COPY renamable $vgpr5
  renamable $vgpr135 = COPY renamable $vgpr5
  renamable $vgpr134 = COPY renamable $vgpr5
  renamable $vgpr121 = COPY renamable $vgpr5
  renamable $vgpr120 = COPY renamable $vgpr5
  renamable $vgpr119 = COPY renamable $vgpr5
  renamable $vgpr118 = COPY renamable $vgpr5
  renamable $vgpr201 = COPY renamable $vgpr5
  renamable $vgpr200 = COPY renamable $vgpr5
  renamable $vgpr199 = COPY renamable $vgpr5
  renamable $vgpr198 = COPY renamable $vgpr5
  renamable $vgpr197 = COPY renamable $vgpr5
  renamable $vgpr196 = COPY renamable $vgpr5
  renamable $vgpr195 = COPY renamable $vgpr5
  renamable $vgpr194 = COPY renamable $vgpr5
  renamable $vgpr13 = COPY renamable $vgpr5
  renamable $vgpr12 = COPY renamable $vgpr5
  renamable $vgpr11 = COPY renamable $vgpr5
  renamable $vgpr10 = COPY renamable $vgpr5
  renamable $vgpr157 = COPY renamable $vgpr5
  renamable $vgpr156 = COPY renamable $vgpr5
  renamable $vgpr155 = COPY renamable $vgpr5
  renamable $vgpr154 = COPY renamable $vgpr5
  renamable $vgpr165 = COPY renamable $vgpr5
  renamable $vgpr164 = COPY renamable $vgpr5
  renamable $vgpr163 = COPY renamable $vgpr5
  renamable $vgpr162 = COPY renamable $vgpr5
  renamable $vgpr17 = COPY renamable $vgpr5
  renamable $vgpr16 = COPY renamable $vgpr5
  renamable $vgpr15 = COPY renamable $vgpr5
  renamable $vgpr14 = COPY renamable $vgpr5
  renamable $vgpr21 = COPY renamable $vgpr5
  renamable $vgpr20 = COPY renamable $vgpr5
  renamable $vgpr19 = COPY renamable $vgpr5
  renamable $vgpr18 = COPY renamable $vgpr5
  renamable $vgpr169 = COPY renamable $vgpr5
  renamable $vgpr168 = COPY renamable $vgpr5
  renamable $vgpr167 = COPY renamable $vgpr5
  renamable $vgpr166 = COPY renamable $vgpr5
  renamable $vgpr173 = COPY renamable $vgpr5
  renamable $vgpr172 = COPY renamable $vgpr5
  renamable $vgpr171 = COPY renamable $vgpr5
  renamable $vgpr170 = COPY renamable $vgpr5
  renamable $vgpr25 = COPY renamable $vgpr5
  renamable $vgpr24 = COPY renamable $vgpr5
  renamable $vgpr23 = COPY renamable $vgpr5
  renamable $vgpr22 = COPY renamable $vgpr5
  renamable $vgpr9 = COPY renamable $vgpr5
  renamable $vgpr8 = COPY renamable $vgpr5
  renamable $vgpr7 = COPY renamable $vgpr5
  renamable $vgpr6 = COPY renamable $vgpr5
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = COPY killed renamable $vgpr6_vgpr7_vgpr8_vgpr9
  renamable $vgpr221 = COPY renamable $vgpr5
  renamable $vgpr220 = COPY renamable $vgpr5
  renamable $vgpr219 = COPY renamable $vgpr5
  renamable $vgpr218 = COPY renamable $vgpr5
  renamable $vgpr181 = COPY renamable $vgpr5
  renamable $vgpr180 = COPY renamable $vgpr5
  renamable $vgpr179 = COPY renamable $vgpr5
  renamable $vgpr178 = COPY renamable $vgpr5
  renamable $vgpr225 = COPY renamable $vgpr5
  renamable $vgpr224 = COPY renamable $vgpr5
  renamable $vgpr223 = COPY renamable $vgpr5
  renamable $vgpr222 = COPY renamable $vgpr5
  renamable $vgpr129 = COPY renamable $vgpr5
  renamable $vgpr128 = COPY renamable $vgpr5
  renamable $vgpr127 = COPY renamable $vgpr5
  renamable $vgpr126 = COPY renamable $vgpr5
  renamable $vgpr145 = COPY renamable $vgpr5
  renamable $vgpr144 = COPY renamable $vgpr5
  renamable $vgpr143 = COPY renamable $vgpr5
  renamable $vgpr142 = COPY renamable $vgpr5
  renamable $vgpr141 = COPY renamable $vgpr5
  renamable $vgpr140 = COPY renamable $vgpr5
  renamable $vgpr139 = COPY renamable $vgpr5
  renamable $vgpr138 = COPY renamable $vgpr5
  S_BRANCH %bb.66, debug-location !62; moe_op_gemm_a8w4.py:403:19

bb.65..lr.ph:
; predecessors: %bb.63
  successors: %bb.67(0x80000000); %bb.67(100.00%)
  liveins: $sgpr4, $sgpr5, $sgpr6, $vgpr26, $vgpr35, $vgpr37, $vgpr39, $vgpr62, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $vgpr247, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F
  SI_SPILL_AV64_SAVE $vgpr112_vgpr113, %stack.41, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.41, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr110_vgpr111, %stack.40, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.40, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr108_vgpr109, %stack.39, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.39, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr106_vgpr107, %stack.38, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.38, align 4, addrspace 5)
  SI_SPILL_AV32_SAVE killed $vgpr83, %stack.37, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.37, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr104_vgpr105, %stack.36, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.36, align 4, addrspace 5)
  SI_SPILL_AV32_SAVE killed $vgpr231, %stack.34, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.34, addrspace 5)
  SI_SPILL_AV32_SAVE killed $vgpr229, %stack.33, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.33, addrspace 5)
  SI_SPILL_AV64_SAVE killed $vgpr236_vgpr237, %stack.32, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.32, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr234_vgpr235, %stack.31, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.31, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr232_vgpr233, %stack.30, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.30, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr230_vgpr231, %stack.29, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.29, align 4, addrspace 5)
  SI_SPILL_AV64_SAVE $vgpr228_vgpr229, %stack.28, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.28, align 4, addrspace 5)
  SI_SPILL_AV32_SAVE killed $vgpr227, %stack.27, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.27, addrspace 5)
  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $sgpr7 = S_LSHR_B32 killed renamable $sgpr7, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $sgpr4 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
  renamable $vgpr0 = V_MUL_U32_U24_e32 272, $vgpr80, implicit $exec
  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr0, $vgpr233, implicit $exec
  renamable $vgpr3 = V_XOR_B32_e32 64, $vgpr2, implicit $exec
  renamable $vgpr4 = V_XOR_B32_e32 128, $vgpr2, implicit $exec
  renamable $vgpr5 = V_XOR_B32_e32 192, $vgpr2, implicit $exec
  SI_SPILL_AV32_SAVE $vgpr26, %stack.45, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.45, addrspace 5)
  renamable $vgpr0 = V_AND_B32_e32 28672, killed $vgpr26, implicit $exec
  SI_SPILL_AV32_SAVE $vgpr80, %stack.43, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.43, addrspace 5)
  renamable $vgpr0 = disjoint V_LSHL_OR_B32_e64 killed $vgpr80, 7, killed $vgpr0, implicit $exec
  SI_SPILL_AV32_SAVE $vgpr233, %stack.35, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.35, addrspace 5)
  renamable $vgpr1 = V_BITOP3_B32_e64 $vgpr115, killed $vgpr233, killed $sgpr6, 108, implicit $exec
  renamable $vgpr6 = disjoint V_OR_B32_e32 $vgpr0, $vgpr1, implicit $exec
  renamable $vgpr7 = V_BITOP3_B32_e64 killed $vgpr0, 64, killed $vgpr1, 54, implicit $exec
  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr4, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr37, killed $vgpr39, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr6 = S_MOV_B32 256
  renamable $vgpr241 = V_ADD3_U32_e64 killed $vgpr0, killed $vgpr35, killed $sgpr6, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr60_vgpr61, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr6_sgpr7 = S_MOV_B64_IMM_PSEUDO 128
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.19, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr58_vgpr59, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.20, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr56_vgpr57, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.21, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.21, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr54_vgpr55, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.22, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.22, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr52_vgpr53, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.23, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.23, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr50_vgpr51, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.24, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.24, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr48_vgpr49, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.25, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.25, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr46_vgpr47, 0, killed $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.26, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.26, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr40, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr200 = V_ADD_U32_e32 256, killed $vgpr38, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr201 = V_ADD_U32_e32 256, killed $vgpr36, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr252 = V_ADD_U32_e32 256, killed $vgpr34, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr4 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr4, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr138 = V_MOV_B32_e32 0, implicit $exec
  renamable $sgpr6_sgpr7 = S_MOV_B64 0
  renamable $sgpr13 = S_ADD_I32 0, 65536, implicit-def dead $scc
  renamable $vgpr253 = V_ADD_U32_e32 $sgpr13, killed $vgpr2, implicit $exec
  renamable $vgpr198 = V_ADD_U32_e32 $sgpr13, killed $vgpr3, implicit $exec
  renamable $vgpr199 = V_ADD_U32_e32 $sgpr13, killed $vgpr4, implicit $exec
  renamable $vgpr238 = V_ADD_U32_e32 $sgpr13, killed $vgpr5, implicit $exec
  renamable $vgpr239 = V_ADD_U32_e32 0, killed $vgpr6, implicit $exec
  renamable $vgpr240 = V_ADD_U32_e32 0, killed $vgpr7, implicit $exec
  renamable $sgpr14 = S_ADD_I32 0, 98304, implicit-def dead $scc
  SI_SPILL_AV32_SAVE $vgpr116, %stack.44, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.44, addrspace 5)
  renamable $vgpr254 = V_ADD_U32_e32 $sgpr14, killed $vgpr116, implicit $exec
  renamable $sgpr12 = S_MOV_B32 117769732
  renamable $vgpr242 = V_MOV_B32_e32 127, implicit $exec
  renamable $vgpr243 = V_ADD_U32_e32 killed $sgpr13, killed $vgpr62, implicit $exec
  SI_SPILL_AV32_SAVE $vgpr115, %stack.42, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.42, addrspace 5)
  renamable $vgpr255 = V_ADD_U32_e32 killed $sgpr14, killed $vgpr115, implicit $exec
  renamable $vgpr139 = COPY renamable $vgpr138
  renamable $vgpr140 = COPY renamable $vgpr138
  renamable $vgpr141 = COPY renamable $vgpr138
  renamable $vgpr142 = COPY renamable $vgpr138
  renamable $vgpr143 = COPY renamable $vgpr138
  renamable $vgpr144 = COPY renamable $vgpr138
  renamable $vgpr145 = COPY renamable $vgpr138
  renamable $vgpr126 = COPY renamable $vgpr138
  renamable $vgpr127 = COPY renamable $vgpr138
  renamable $vgpr128 = COPY renamable $vgpr138
  renamable $vgpr129 = COPY renamable $vgpr138
  renamable $vgpr222 = COPY renamable $vgpr138
  renamable $vgpr223 = COPY renamable $vgpr138
  renamable $vgpr224 = COPY renamable $vgpr138
  renamable $vgpr225 = COPY renamable $vgpr138
  renamable $vgpr178 = COPY renamable $vgpr138
  renamable $vgpr179 = COPY renamable $vgpr138
  renamable $vgpr180 = COPY renamable $vgpr138
  renamable $vgpr181 = COPY renamable $vgpr138
  renamable $vgpr218 = COPY renamable $vgpr138
  renamable $vgpr219 = COPY renamable $vgpr138
  renamable $vgpr220 = COPY renamable $vgpr138
  renamable $vgpr221 = COPY renamable $vgpr138
  renamable $vgpr226 = COPY renamable $vgpr138
  renamable $vgpr227 = COPY renamable $vgpr138
  renamable $vgpr228 = COPY renamable $vgpr138
  renamable $vgpr229 = COPY renamable $vgpr138
  renamable $vgpr22 = COPY renamable $vgpr138
  renamable $vgpr23 = COPY renamable $vgpr138
  renamable $vgpr24 = COPY renamable $vgpr138
  renamable $vgpr25 = COPY renamable $vgpr138
  renamable $vgpr170 = COPY renamable $vgpr138
  renamable $vgpr171 = COPY renamable $vgpr138
  renamable $vgpr172 = COPY renamable $vgpr138
  renamable $vgpr173 = COPY renamable $vgpr138
  renamable $vgpr166 = COPY renamable $vgpr138
  renamable $vgpr167 = COPY renamable $vgpr138
  renamable $vgpr168 = COPY renamable $vgpr138
  renamable $vgpr169 = COPY renamable $vgpr138
  renamable $vgpr18 = COPY renamable $vgpr138
  renamable $vgpr19 = COPY renamable $vgpr138
  renamable $vgpr20 = COPY renamable $vgpr138
  renamable $vgpr21 = COPY renamable $vgpr138
  renamable $vgpr14 = COPY renamable $vgpr138
  renamable $vgpr15 = COPY renamable $vgpr138
  renamable $vgpr16 = COPY renamable $vgpr138
  renamable $vgpr17 = COPY renamable $vgpr138
  renamable $vgpr162 = COPY renamable $vgpr138
  renamable $vgpr163 = COPY renamable $vgpr138
  renamable $vgpr164 = COPY renamable $vgpr138
  renamable $vgpr165 = COPY renamable $vgpr138
  renamable $vgpr154 = COPY renamable $vgpr138
  renamable $vgpr155 = COPY renamable $vgpr138
  renamable $vgpr156 = COPY renamable $vgpr138
  renamable $vgpr157 = COPY renamable $vgpr138
  renamable $vgpr10 = COPY renamable $vgpr138
  renamable $vgpr11 = COPY renamable $vgpr138
  renamable $vgpr12 = COPY renamable $vgpr138
  renamable $vgpr13 = COPY renamable $vgpr138
  renamable $vgpr194 = COPY renamable $vgpr138
  renamable $vgpr195 = COPY renamable $vgpr138
  renamable $vgpr196 = COPY renamable $vgpr138
  renamable $vgpr197 = COPY renamable $vgpr138
  renamable $vgpr74 = COPY renamable $vgpr138
  renamable $vgpr75 = COPY renamable $vgpr138
  renamable $vgpr76 = COPY renamable $vgpr138
  renamable $vgpr77 = COPY renamable $vgpr138
  renamable $vgpr70 = COPY renamable $vgpr138
  renamable $vgpr71 = COPY renamable $vgpr138
  renamable $vgpr72 = COPY renamable $vgpr138
  renamable $vgpr73 = COPY renamable $vgpr138
  renamable $vgpr134 = COPY renamable $vgpr138
  renamable $vgpr135 = COPY renamable $vgpr138
  renamable $vgpr136 = COPY renamable $vgpr138
  renamable $vgpr137 = COPY renamable $vgpr138
  renamable $vgpr130 = COPY renamable $vgpr138
  renamable $vgpr131 = COPY renamable $vgpr138
  renamable $vgpr132 = COPY renamable $vgpr138
  renamable $vgpr133 = COPY renamable $vgpr138
  renamable $vgpr66 = COPY renamable $vgpr138
  renamable $vgpr67 = COPY renamable $vgpr138
  renamable $vgpr68 = COPY renamable $vgpr138
  renamable $vgpr69 = COPY renamable $vgpr138
  renamable $vgpr158 = COPY renamable $vgpr138
  renamable $vgpr159 = COPY renamable $vgpr138
  renamable $vgpr160 = COPY renamable $vgpr138
  renamable $vgpr161 = COPY renamable $vgpr138
  renamable $vgpr46 = COPY renamable $vgpr138
  renamable $vgpr47 = COPY renamable $vgpr138
  renamable $vgpr48 = COPY renamable $vgpr138
  renamable $vgpr49 = COPY renamable $vgpr138
  renamable $vgpr50 = COPY renamable $vgpr138
  renamable $vgpr51 = COPY renamable $vgpr138
  renamable $vgpr52 = COPY renamable $vgpr138
  renamable $vgpr53 = COPY renamable $vgpr138
  renamable $vgpr214 = COPY renamable $vgpr138
  renamable $vgpr215 = COPY renamable $vgpr138
  renamable $vgpr216 = COPY renamable $vgpr138
  renamable $vgpr217 = COPY renamable $vgpr138
  renamable $vgpr202 = COPY renamable $vgpr138
  renamable $vgpr203 = COPY renamable $vgpr138
  renamable $vgpr204 = COPY renamable $vgpr138
  renamable $vgpr205 = COPY renamable $vgpr138
  renamable $vgpr150 = COPY renamable $vgpr138
  renamable $vgpr151 = COPY renamable $vgpr138
  renamable $vgpr152 = COPY renamable $vgpr138
  renamable $vgpr153 = COPY renamable $vgpr138
  renamable $vgpr182 = COPY renamable $vgpr138
  renamable $vgpr183 = COPY renamable $vgpr138
  renamable $vgpr184 = COPY renamable $vgpr138
  renamable $vgpr185 = COPY renamable $vgpr138
  renamable $vgpr174 = COPY renamable $vgpr138
  renamable $vgpr175 = COPY renamable $vgpr138
  renamable $vgpr176 = COPY renamable $vgpr138
  renamable $vgpr177 = COPY renamable $vgpr138
  renamable $vgpr186 = COPY renamable $vgpr138
  renamable $vgpr187 = COPY renamable $vgpr138
  renamable $vgpr188 = COPY renamable $vgpr138
  renamable $vgpr189 = COPY renamable $vgpr138
  renamable $vgpr210 = COPY renamable $vgpr138
  renamable $vgpr211 = COPY renamable $vgpr138
  renamable $vgpr212 = COPY renamable $vgpr138
  renamable $vgpr213 = COPY renamable $vgpr138
  renamable $vgpr2 = COPY renamable $vgpr138
  renamable $vgpr3 = COPY renamable $vgpr138
  renamable $vgpr4 = COPY renamable $vgpr138
  renamable $vgpr5 = COPY renamable $vgpr138
  S_BRANCH %bb.67, debug-location !62; moe_op_gemm_a8w4.py:403:19

bb.66.Flow340:
; predecessors: %bb.68, %bb.64
  successors: %bb.69(0x80000000); %bb.69(100.00%)
  liveins: $sgpr5, $vgpr26, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
  renamable $vgpr6 = V_AND_B32_e32 496, $vgpr227, implicit $exec
  renamable $vgpr107 = COPY renamable $vgpr237
  renamable $vgpr113 = COPY renamable $vgpr237
  renamable $vgpr111 = COPY renamable $vgpr237
  renamable $vgpr109 = COPY renamable $vgpr237
  renamable $vgpr60 = V_AND_B32_e32 480, $vgpr227, implicit $exec
  S_BRANCH %bb.69

bb.67 (%ir-block.818):
; predecessors: %bb.65, %bb.67
  successors: %bb.68(0x04000000), %bb.67(0x7c000000); %bb.68(3.12%), %bb.67(96.88%)
  liveins: $sgpr4, $sgpr5, $sgpr12, $vgpr198, $vgpr199, $vgpr200, $vgpr201, $vgpr238, $vgpr239, $vgpr240, $vgpr241, $vgpr242, $vgpr243, $vgpr244, $vgpr247, $vgpr252, $vgpr253, $vgpr254, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.26, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.26, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.25, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.25, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.24, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.24, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.23, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.23, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr28_vgpr29 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.22, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.22, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.21, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.21, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr32_vgpr33 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.20, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
  renamable $vgpr54_vgpr55 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.19, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s64) from %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr56_vgpr57 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr252, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.0, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.0, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr201, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.1, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.1, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr200, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.2, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.2, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr244, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.3, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.3, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr0_vgpr1 = BUFFER_LOAD_DWORDX2_OFFEN renamable $vgpr241, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.4, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.4, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.5, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.5, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr26_vgpr27, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.6, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.6, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr28_vgpr29, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.7, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.7, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.8, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.8, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr32_vgpr33, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.9, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.9, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr54_vgpr55, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.10, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.10, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr56_vgpr57, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.11, $sgpr32, 0, implicit $exec :: (store (s128) into %stack.11, align 4, addrspace 5)
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = COPY killed renamable $vgpr194_vgpr195_vgpr196_vgpr197
  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = DS_READ_B128_gfx9 renamable $vgpr239, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr248_vgpr249_vgpr250_vgpr251 = DS_READ_B128_gfx9 renamable $vgpr239, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = DS_READ_B128_gfx9 renamable $vgpr239, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr239, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7 = DS_READ2ST64_B32_gfx9 renamable $vgpr254, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr253, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = DS_READ_B128_gfx9 renamable $vgpr253, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = DS_READ_B128_gfx9 renamable $vgpr253, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = DS_READ_B128_gfx9 renamable $vgpr253, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = DS_READ_B128_gfx9 renamable $vgpr253, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = DS_READ_B128_gfx9 renamable $vgpr253, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr206_vgpr207_vgpr208_vgpr209 = DS_READ_B128_gfx9 renamable $vgpr253, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr230_vgpr231_vgpr232_vgpr233 = DS_READ_B128_gfx9 renamable $vgpr253, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr198, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = DS_READ_B128_gfx9 renamable $vgpr198, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = DS_READ_B128_gfx9 renamable $vgpr198, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = DS_READ_B128_gfx9 renamable $vgpr198, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = DS_READ_B128_gfx9 renamable $vgpr198, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = DS_READ_B128_gfx9 renamable $vgpr198, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = COPY killed renamable $vgpr210_vgpr211_vgpr212_vgpr213
  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = DS_READ_B128_gfx9 renamable $vgpr198, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr234_vgpr235_vgpr236_vgpr237 = DS_READ_B128_gfx9 renamable $vgpr198, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = DS_READ_B128_gfx9 renamable $vgpr240, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = DS_READ_B128_gfx9 renamable $vgpr240, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = DS_READ_B128_gfx9 renamable $vgpr240, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr240, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr246 = V_PERM_B32_e64 $vgpr6, $vgpr6, $sgpr12, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr245 = V_PERM_B32_e64 killed $vgpr7, $vgpr7, $sgpr12, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr138_vgpr139_vgpr140_vgpr141, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.14, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.14, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.15, $sgpr32, 0, implicit $exec :: (store (s128) into %stack.15, align 4, addrspace 5)
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.16, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.16, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.17, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.17, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.18, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.18, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = DS_READ_B128_gfx9 renamable $vgpr199, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr199, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = DS_READ_B128_gfx9 renamable $vgpr238, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr238, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $sgpr6 = S_ADD_U32 renamable $sgpr6, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $sgpr7 = S_ADDC_U32 renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr6, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr142_vgpr143_vgpr144_vgpr145, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr199, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr238, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr241 = V_ADD_U32_e32 256, killed $vgpr241, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr244, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr200 = V_ADD_U32_e32 256, killed $vgpr200, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr201 = V_ADD_U32_e32 256, killed $vgpr201, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr252 = V_ADD_U32_e32 256, killed $vgpr252, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr178_vgpr179_vgpr180_vgpr181, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr178_vgpr179_vgpr180_vgpr181 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr150_vgpr151_vgpr152_vgpr153, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.13, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.13, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  SI_SPILL_AV128_SAVE killed $vgpr2_vgpr3_vgpr4_vgpr5, %stack.12, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.12, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr134_vgpr135_vgpr136_vgpr137, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr218_vgpr219_vgpr220_vgpr221, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr199, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr238, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr170_vgpr171_vgpr172_vgpr173, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr170_vgpr171_vgpr172_vgpr173 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr166_vgpr167_vgpr168_vgpr169, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = DS_READ_B128_gfx9 renamable $vgpr199, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = DS_READ_B128_gfx9 renamable $vgpr238, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr166_vgpr167_vgpr168_vgpr169 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr162_vgpr163_vgpr164_vgpr165, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr154_vgpr155_vgpr156_vgpr157, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = DS_READ_B128_gfx9 renamable $vgpr199, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = DS_READ_B128_gfx9 renamable $vgpr238, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = DS_READ_B128_gfx9 renamable $vgpr199, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = DS_READ_B128_gfx9 renamable $vgpr238, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr158_vgpr159_vgpr160_vgpr161, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr199, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr238, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr214_vgpr215_vgpr216_vgpr217, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr202_vgpr203_vgpr204_vgpr205, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr174_vgpr175_vgpr176_vgpr177, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr186_vgpr187_vgpr188_vgpr189, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr138_vgpr139_vgpr140_vgpr141, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = SI_SPILL_AV128_RESTORE %stack.14, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.14, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = SI_SPILL_AV128_RESTORE %stack.15, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.15, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = SI_SPILL_AV128_RESTORE %stack.16, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.16, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = SI_SPILL_AV128_RESTORE %stack.17, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.17, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = SI_SPILL_AV128_RESTORE %stack.18, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.18, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr134_vgpr135_vgpr136_vgpr137, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr190_vgpr191_vgpr192_vgpr193, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr146_vgpr147_vgpr148_vgpr149, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr150_vgpr151_vgpr152_vgpr153, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr174_vgpr175_vgpr176_vgpr177 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, killed $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = SI_SPILL_AV128_RESTORE %stack.13, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.13, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = SI_SPILL_AV128_RESTORE %stack.12, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.12, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, killed $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.0, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.0, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.1, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.1, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.2, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.2, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.3, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.3, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
  DS_WRITE_B64_gfx9 renamable $vgpr255, killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.4, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.4, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.5, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.5, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.6, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.6, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.7, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.7, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.8, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.8, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.9, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.9, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.10, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.10, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.11, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.11, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
  S_CBRANCH_SCC1 %bb.67, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
  S_BRANCH %bb.68, debug-location !62; moe_op_gemm_a8w4.py:403:19

bb.68.Flow:
; predecessors: %bb.67
  successors: %bb.66(0x80000000); %bb.66(100.00%)
  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = COPY killed renamable $vgpr226_vgpr227_vgpr228_vgpr229
  renamable $vgpr227 = SI_SPILL_AV32_RESTORE %stack.27, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.27, addrspace 5)
  renamable $vgpr228_vgpr229 = SI_SPILL_AV64_RESTORE %stack.28, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.28, align 4, addrspace 5)
  renamable $vgpr230_vgpr231 = SI_SPILL_AV64_RESTORE %stack.29, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.29, align 4, addrspace 5)
  renamable $vgpr232_vgpr233 = SI_SPILL_AV64_RESTORE %stack.30, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.30, align 4, addrspace 5)
  renamable $vgpr234_vgpr235 = SI_SPILL_AV64_RESTORE %stack.31, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.31, align 4, addrspace 5)
  renamable $vgpr236_vgpr237 = SI_SPILL_AV64_RESTORE %stack.32, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.32, align 4, addrspace 5)
  renamable $vgpr229 = SI_SPILL_AV32_RESTORE %stack.33, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.33, addrspace 5)
  renamable $vgpr231 = SI_SPILL_AV32_RESTORE %stack.34, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.34, addrspace 5)
  renamable $vgpr233 = SI_SPILL_AV32_RESTORE %stack.35, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.35, addrspace 5)
  renamable $vgpr104_vgpr105 = SI_SPILL_AV64_RESTORE %stack.36, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.36, align 4, addrspace 5)
  renamable $vgpr83 = SI_SPILL_AV32_RESTORE %stack.37, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.37, addrspace 5)
  renamable $vgpr106_vgpr107 = SI_SPILL_AV64_RESTORE %stack.38, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.38, align 4, addrspace 5)
  renamable $vgpr108_vgpr109 = SI_SPILL_AV64_RESTORE %stack.39, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.39, align 4, addrspace 5)
  renamable $vgpr110_vgpr111 = SI_SPILL_AV64_RESTORE %stack.40, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.40, align 4, addrspace 5)
  renamable $vgpr112_vgpr113 = SI_SPILL_AV64_RESTORE %stack.41, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.41, align 4, addrspace 5)
  renamable $vgpr80 = SI_SPILL_AV32_RESTORE %stack.43, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.43, addrspace 5)
  renamable $vgpr114 = V_LSHLREV_B32_e32 4, $vgpr80, implicit $exec
  renamable $vgpr115 = SI_SPILL_AV32_RESTORE %stack.42, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.42, addrspace 5)
  renamable $vgpr116 = SI_SPILL_AV32_RESTORE %stack.44, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.44, addrspace 5)
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = COPY killed renamable $vgpr66_vgpr67_vgpr68_vgpr69
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = COPY killed renamable $vgpr70_vgpr71_vgpr72_vgpr73
  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = COPY killed renamable $vgpr74_vgpr75_vgpr76_vgpr77
  renamable $vgpr26 = SI_SPILL_AV32_RESTORE %stack.45, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.45, addrspace 5)
  S_BRANCH %bb.66

bb.69.._crit_edge:
; predecessors: %bb.66
  successors: %bb.70(0x40000000), %bb.71(0x40000000); %bb.70(50.00%), %bb.71(50.00%)
  liveins: $sgpr0, $sgpr5, $vgpr6, $vgpr26, $vgpr60, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr2_sgpr3, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x000000000000000F, $vgpr108_vgpr109:0x000000000000000F, $vgpr110_vgpr111:0x000000000000000F, $vgpr112_vgpr113:0x000000000000000F, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr62 = V_AND_B32_e32 14, $vgpr227, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  $vcc = S_AND_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr61 = nuw nsw V_LSHLREV_B32_e32 3, $vgpr62, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  S_CBRANCH_VCCNZ %bb.71, implicit $vcc, debug-location !85; moe_op_gemm_a8w4.py:421:46
  S_BRANCH %bb.70, debug-location !85; moe_op_gemm_a8w4.py:421:46

bb.70 (%ir-block.1360):
; predecessors: %bb.69
  successors: %bb.71(0x80000000); %bb.71(100.00%)
  liveins: $sgpr0, $sgpr5, $vgpr6, $vgpr26, $vgpr60, $vgpr61, $vgpr62, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x000000000000000F, $vgpr108_vgpr109:0x000000000000000F, $vgpr110_vgpr111:0x000000000000000F, $vgpr112_vgpr113:0x000000000000000F, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
  renamable $vgpr0 = V_LSHL_ADD_U32_e64 $vgpr227, 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr0 = V_ADD_U32_e32 98304, killed $vgpr0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr0_vgpr1 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr0, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
  renamable $vgpr7 = nuw nsw V_LSHLREV_B32_e32 7, $vgpr80, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr8 = V_AND_B32_e32 28672, killed $vgpr26, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr9 = V_XOR_B32_e32 $vgpr61, $vgpr233, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr7 = disjoint V_OR3_B32_e64 killed $vgpr7, killed $vgpr8, killed $vgpr9, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr8 = nuw V_XAD_U32_e64 $vgpr7, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr8, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr7 = nuw V_ADD_U32_e32 0, killed $vgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr9 = V_MUL_U32_U24_e32 272, killed $vgpr80, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr9 = V_XOR_B32_e32 killed $vgpr9, $vgpr233, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54 = V_XOR_B32_e32 192, $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr58 = nuw V_ADD_U32_e32 $sgpr1, killed $vgpr54, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr59 = nuw V_XAD_U32_e64 $vgpr9, 64, $sgpr1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr63 = nuw V_ADD_U32_e32 $sgpr1, $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $sgpr2 = S_MOV_B32 117769732
  renamable $vgpr0 = V_PERM_B32_e64 $vgpr0, $vgpr0, $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr80 = V_MOV_B32_e32 127, implicit $exec
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr138_vgpr139_vgpr140_vgpr141, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr9 = V_XOR_B32_e32 128, killed $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr81 = nuw V_ADD_U32_e32 killed $sgpr1, killed $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr7, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr142_vgpr143_vgpr144_vgpr145, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr84_vgpr85_vgpr86_vgpr87 = DS_READ_B128_gfx9 renamable $vgpr8, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr88_vgpr89_vgpr90_vgpr91 = DS_READ_B128_gfx9 renamable $vgpr7, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr82 = V_PERM_B32_e64 killed $vgpr1, $vgpr1, killed $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr92_vgpr93_vgpr94_vgpr95 = DS_READ_B128_gfx9 renamable $vgpr8, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr96_vgpr97_vgpr98_vgpr99 = DS_READ_B128_gfx9 killed renamable $vgpr7, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr100_vgpr101_vgpr102_vgpr103 = DS_READ_B128_gfx9 killed renamable $vgpr8, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr178_vgpr179_vgpr180_vgpr181, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr178_vgpr179_vgpr180_vgpr181 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr218_vgpr219_vgpr220_vgpr221, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr146_vgpr147_vgpr148_vgpr149, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr170_vgpr171_vgpr172_vgpr173, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr170_vgpr171_vgpr172_vgpr173 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr166_vgpr167_vgpr168_vgpr169, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr166_vgpr167_vgpr168_vgpr169 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr162_vgpr163_vgpr164_vgpr165, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr154_vgpr155_vgpr156_vgpr157, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr8_vgpr9_vgpr10_vgpr11, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr194_vgpr195_vgpr196_vgpr197, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr198_vgpr199_vgpr200_vgpr201, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr134_vgpr135_vgpr136_vgpr137, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr158_vgpr159_vgpr160_vgpr161, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr214_vgpr215_vgpr216_vgpr217, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr202_vgpr203_vgpr204_vgpr205, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr150_vgpr151_vgpr152_vgpr153, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 killed renamable $vgpr59, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 killed renamable $vgpr63, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr174_vgpr175_vgpr176_vgpr177, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 killed renamable $vgpr58, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 killed renamable $vgpr81, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
  renamable $vgpr174_vgpr175_vgpr176_vgpr177 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr186_vgpr187_vgpr188_vgpr189, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, killed $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr210_vgpr211_vgpr212_vgpr213, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, killed $vgpr82, killed $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46

bb.71.._crit_edge._crit_edge:
; predecessors: %bb.69, %bb.70
  successors: %bb.1(0x80000000); %bb.1(100.00%)
  liveins: $sgpr0, $sgpr5, $vgpr6, $vgpr60, $vgpr61, $vgpr62, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x000000000000000F, $vgpr108_vgpr109:0x000000000000000F, $vgpr110_vgpr111:0x000000000000000F, $vgpr112_vgpr113:0x000000000000000F, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
  renamable $vgpr0 = V_OR_B32_e32 $sgpr18, $vgpr227, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr1 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr83, killed $sgpr0, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
  renamable $vgpr7 = V_ADD_U32_e32 killed $sgpr18, killed $vgpr7, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $sgpr19 = S_MOV_B32 159744
  renamable $sgpr18 = S_MOV_B32 2147483646
  renamable $vgpr7 = V_ADD_LSHL_U32_e64 killed $vgpr7, $vgpr227, 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $vgpr63 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $vcc = V_CMP_GT_I64_e64 $sgpr22_sgpr23, killed $vgpr0_vgpr1, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
  renamable $vgpr8 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
  renamable $vgpr59 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr8_sgpr9, renamable $vgpr59, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
  renamable $vgpr105 = V_ASHRREV_I32_e32 31, $vgpr104, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
  renamable $sgpr4 = S_MOV_B32 65535
  renamable $vgpr1 = V_AND_B32_e32 96, killed $vgpr115, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr7 = V_AND_B32_e32 1932, killed $vgpr116, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr64 = V_AND_B32_e32 16, $vgpr227, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr6 = V_LSHL_ADD_U32_e64 killed $vgpr6, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr58 = V_OR_B32_e32 $sgpr12, killed $vgpr114, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 killed $vgpr106_vgpr107, $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 killed $vgpr112_vgpr113, $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 killed $vgpr110_vgpr111, $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 killed $vgpr108_vgpr109, killed $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
  renamable $vgpr1 = nuw V_ADD_U32_e32 0, killed $vgpr1, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr1 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr7, $vgpr64, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
  DS_WRITE_B32_gfx9 killed renamable $vgpr1, killed renamable $vgpr8, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
  ATOMIC_FENCE 5, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
  ATOMIC_FENCE 4, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr6, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = DS_READ_B128_gfx9 renamable $vgpr6, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr6, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 killed renamable $vgpr6, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 0, $vgpr138, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 0, $vgpr139, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 0, $vgpr140, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 0, killed $vgpr141, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 0, $vgpr142, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 0, $vgpr143, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 0, $vgpr144, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 0, killed $vgpr145, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 0, $vgpr126, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 0, $vgpr127, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 0, $vgpr128, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr81 = nofpexcept V_FMA_F32_e64 0, killed $vgpr129, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 0, $vgpr222, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr82 = nofpexcept V_FMA_F32_e64 0, $vgpr223, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 0, $vgpr224, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr83 = nofpexcept V_FMA_F32_e64 0, killed $vgpr225, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr77 = nofpexcept V_FMA_F32_e64 0, $vgpr178, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr84 = nofpexcept V_FMA_F32_e64 0, $vgpr179, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr78 = nofpexcept V_FMA_F32_e64 0, $vgpr180, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr85 = nofpexcept V_FMA_F32_e64 0, killed $vgpr181, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr79 = nofpexcept V_FMA_F32_e64 0, $vgpr218, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr86 = nofpexcept V_FMA_F32_e64 0, $vgpr219, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr80 = nofpexcept V_FMA_F32_e64 0, $vgpr220, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr87 = nofpexcept V_FMA_F32_e64 0, killed $vgpr221, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr93 = nofpexcept V_FMA_F32_e64 0, $vgpr146, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 0, $vgpr147, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr94 = nofpexcept V_FMA_F32_e64 0, $vgpr148, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 0, killed $vgpr149, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 0, $vgpr22, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 0, $vgpr23, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 0, $vgpr24, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 0, killed $vgpr25, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr97 = nofpexcept V_FMA_F32_e64 0, $vgpr170, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 0, $vgpr171, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr98 = nofpexcept V_FMA_F32_e64 0, $vgpr172, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 0, killed $vgpr173, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr99 = nofpexcept V_FMA_F32_e64 0, $vgpr166, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 0, $vgpr167, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr100 = nofpexcept V_FMA_F32_e64 0, $vgpr168, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 0, killed $vgpr169, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 0, $vgpr18, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 0, $vgpr19, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 0, $vgpr20, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 0, killed $vgpr21, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 0, $vgpr14, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 0, $vgpr15, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 0, $vgpr16, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 0, killed $vgpr17, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr105 = nofpexcept V_FMA_F32_e64 0, $vgpr162, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 0, $vgpr163, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr106 = nofpexcept V_FMA_F32_e64 0, $vgpr164, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 0, killed $vgpr165, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr107 = nofpexcept V_FMA_F32_e64 0, $vgpr154, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr146 = nofpexcept V_FMA_F32_e64 0, $vgpr155, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr108 = nofpexcept V_FMA_F32_e64 0, $vgpr156, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr147 = nofpexcept V_FMA_F32_e64 0, killed $vgpr157, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 0, $vgpr10, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 0, $vgpr11, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 0, $vgpr12, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 0, killed $vgpr13, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr111 = nofpexcept V_FMA_F32_e64 0, $vgpr194, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr148 = nofpexcept V_FMA_F32_e64 0, $vgpr195, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr112 = nofpexcept V_FMA_F32_e64 0, $vgpr196, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr149 = nofpexcept V_FMA_F32_e64 0, killed $vgpr197, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr113 = nofpexcept V_FMA_F32_e64 0, $vgpr198, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 0, $vgpr199, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr114 = nofpexcept V_FMA_F32_e64 0, $vgpr200, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 0, killed $vgpr201, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr115 = nofpexcept V_FMA_F32_e64 0, $vgpr118, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 0, $vgpr119, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr116 = nofpexcept V_FMA_F32_e64 0, $vgpr120, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 0, killed $vgpr121, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr117 = nofpexcept V_FMA_F32_e64 0, $vgpr134, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 0, $vgpr135, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr118 = nofpexcept V_FMA_F32_e64 0, $vgpr136, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr137 = nofpexcept V_FMA_F32_e64 0, killed $vgpr137, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr119 = nofpexcept V_FMA_F32_e64 0, $vgpr130, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 0, $vgpr131, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr120 = nofpexcept V_FMA_F32_e64 0, $vgpr132, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 0, killed $vgpr133, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr121 = nofpexcept V_FMA_F32_e64 0, $vgpr122, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 0, $vgpr123, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr122 = nofpexcept V_FMA_F32_e64 0, $vgpr124, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 0, killed $vgpr125, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr123 = nofpexcept V_FMA_F32_e64 0, $vgpr158, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 0, $vgpr159, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr124 = nofpexcept V_FMA_F32_e64 0, $vgpr160, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 0, killed $vgpr161, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 0, $vgpr46, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 0, $vgpr47, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 0, $vgpr48, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 0, killed $vgpr49, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 0, $vgpr50, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 0, $vgpr51, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 0, $vgpr52, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 0, killed $vgpr53, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 0, $vgpr214, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 0, $vgpr215, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr130 = nofpexcept V_FMA_F32_e64 0, $vgpr216, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 0, killed $vgpr217, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr131 = nofpexcept V_FMA_F32_e64 0, $vgpr202, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 0, $vgpr203, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 0, $vgpr204, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 0, killed $vgpr205, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 0, $vgpr150, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 0, $vgpr151, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 0, $vgpr152, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 0, killed $vgpr153, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 0, $vgpr182, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 0, $vgpr183, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 0, $vgpr184, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 0, killed $vgpr185, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 0, $vgpr174, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 0, $vgpr175, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 0, $vgpr176, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr177, $vgpr0, $vgpr33(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 0, $vgpr186, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 0, $vgpr187, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 0, $vgpr188, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr189, $vgpr0, $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 0, $vgpr210, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 0, $vgpr211, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 0, $vgpr212, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr213, $vgpr0, $vgpr29(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr2 = nofpexcept V_FMA_F32_e64 0, $vgpr2, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 0, $vgpr3, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 0, $vgpr4, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, killed $vgpr0, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
  renamable $vgpr0 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr1 = nofpexcept V_MIN_F32_e32 killed $vgpr1, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr174 = nofpexcept V_MIN_F32_e32 killed $vgpr66, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr175 = nofpexcept V_MIN_F32_e32 killed $vgpr68, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr176 = nofpexcept V_MIN_F32_e32 killed $vgpr70, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr177 = nofpexcept V_MIN_F32_e32 killed $vgpr72, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr178 = nofpexcept V_MIN_F32_e32 killed $vgpr74, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr179 = nofpexcept V_MIN_F32_e32 killed $vgpr75, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr88 = nofpexcept V_MIN_F32_e32 killed $vgpr76, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr89 = nofpexcept V_MIN_F32_e32 killed $vgpr77, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr90 = nofpexcept V_MIN_F32_e32 killed $vgpr78, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr91 = nofpexcept V_MIN_F32_e32 killed $vgpr79, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr92 = nofpexcept V_MIN_F32_e32 killed $vgpr80, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr93 = nofpexcept V_MIN_F32_e32 killed $vgpr93, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr94 = nofpexcept V_MIN_F32_e32 killed $vgpr94, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr95 = nofpexcept V_MIN_F32_e32 killed $vgpr22, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr96 = nofpexcept V_MIN_F32_e32 killed $vgpr24, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr97 = nofpexcept V_MIN_F32_e32 killed $vgpr97, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr98 = nofpexcept V_MIN_F32_e32 killed $vgpr98, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr99 = nofpexcept V_MIN_F32_e32 killed $vgpr99, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr100 = nofpexcept V_MIN_F32_e32 killed $vgpr100, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr101 = nofpexcept V_MIN_F32_e32 killed $vgpr18, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr102 = nofpexcept V_MIN_F32_e32 killed $vgpr20, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr103 = nofpexcept V_MIN_F32_e32 killed $vgpr14, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr104 = nofpexcept V_MIN_F32_e32 killed $vgpr16, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr105 = nofpexcept V_MIN_F32_e32 killed $vgpr105, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr106 = nofpexcept V_MIN_F32_e32 killed $vgpr106, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr107 = nofpexcept V_MIN_F32_e32 killed $vgpr107, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr108 = nofpexcept V_MIN_F32_e32 killed $vgpr108, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr109 = nofpexcept V_MIN_F32_e32 killed $vgpr10, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr110 = nofpexcept V_MIN_F32_e32 killed $vgpr12, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr111 = nofpexcept V_MIN_F32_e32 killed $vgpr111, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr112 = nofpexcept V_MIN_F32_e32 killed $vgpr112, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr113 = nofpexcept V_MIN_F32_e32 killed $vgpr113, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr114 = nofpexcept V_MIN_F32_e32 killed $vgpr114, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr115 = nofpexcept V_MIN_F32_e32 killed $vgpr115, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr116 = nofpexcept V_MIN_F32_e32 killed $vgpr116, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr117 = nofpexcept V_MIN_F32_e32 killed $vgpr117, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr118 = nofpexcept V_MIN_F32_e32 killed $vgpr118, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr119 = nofpexcept V_MIN_F32_e32 killed $vgpr119, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr120 = nofpexcept V_MIN_F32_e32 killed $vgpr120, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr121 = nofpexcept V_MIN_F32_e32 killed $vgpr121, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr122 = nofpexcept V_MIN_F32_e32 killed $vgpr122, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr123 = nofpexcept V_MIN_F32_e32 killed $vgpr123, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr124 = nofpexcept V_MIN_F32_e32 killed $vgpr124, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr125 = nofpexcept V_MIN_F32_e32 killed $vgpr46, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr126 = nofpexcept V_MIN_F32_e32 killed $vgpr48, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr127 = nofpexcept V_MIN_F32_e32 killed $vgpr50, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr128 = nofpexcept V_MIN_F32_e32 killed $vgpr52, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr129 = nofpexcept V_MIN_F32_e32 killed $vgpr34, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr130 = nofpexcept V_MIN_F32_e32 killed $vgpr130, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr131 = nofpexcept V_MIN_F32_e32 killed $vgpr131, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr132 = nofpexcept V_MIN_F32_e32 killed $vgpr132, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr133 = nofpexcept V_MIN_F32_e32 killed $vgpr42, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr134 = nofpexcept V_MIN_F32_e32 killed $vgpr44, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr135 = nofpexcept V_MIN_F32_e32 killed $vgpr38, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr136 = nofpexcept V_MIN_F32_e32 killed $vgpr40, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr80 = nofpexcept V_MIN_F32_e32 killed $vgpr30, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr79 = nofpexcept V_MIN_F32_e32 killed $vgpr32, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr78 = nofpexcept V_MIN_F32_e32 killed $vgpr54, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr77 = nofpexcept V_MIN_F32_e32 killed $vgpr56, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr76 = nofpexcept V_MIN_F32_e32 killed $vgpr26, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr75 = nofpexcept V_MIN_F32_e32 killed $vgpr28, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr3 = nofpexcept V_MIN_F32_e32 killed $vgpr2, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr2 = nofpexcept V_MIN_F32_e32 killed $vgpr4, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr4 = nofpexcept V_MIN_F32_e32 killed $vgpr65, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr5 = nofpexcept V_MIN_F32_e32 killed $vgpr67, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr7 = nofpexcept V_MIN_F32_e32 killed $vgpr69, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr8 = nofpexcept V_MIN_F32_e32 killed $vgpr71, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr10 = nofpexcept V_MIN_F32_e32 killed $vgpr73, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr12 = nofpexcept V_MIN_F32_e32 killed $vgpr81, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr14 = nofpexcept V_MIN_F32_e32 killed $vgpr82, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr16 = nofpexcept V_MIN_F32_e32 killed $vgpr83, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr18 = nofpexcept V_MIN_F32_e32 killed $vgpr84, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr20 = nofpexcept V_MIN_F32_e32 killed $vgpr85, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr22 = nofpexcept V_MIN_F32_e32 killed $vgpr86, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr24 = nofpexcept V_MIN_F32_e32 killed $vgpr87, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr26 = nofpexcept V_MIN_F32_e32 killed $vgpr138, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr28 = nofpexcept V_MIN_F32_e32 killed $vgpr139, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr23 = nofpexcept V_MIN_F32_e32 killed $vgpr23, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr25 = nofpexcept V_MIN_F32_e32 killed $vgpr25, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr30 = nofpexcept V_MIN_F32_e32 killed $vgpr140, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr32 = nofpexcept V_MIN_F32_e32 killed $vgpr141, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr34 = nofpexcept V_MIN_F32_e32 killed $vgpr142, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr35 = nofpexcept V_MIN_F32_e32 killed $vgpr143, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr36 = nofpexcept V_MIN_F32_e32 killed $vgpr19, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr37 = nofpexcept V_MIN_F32_e32 killed $vgpr21, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr38 = nofpexcept V_MIN_F32_e32 killed $vgpr15, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr40 = nofpexcept V_MIN_F32_e32 killed $vgpr17, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr42 = nofpexcept V_MIN_F32_e32 killed $vgpr144, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr44 = nofpexcept V_MIN_F32_e32 killed $vgpr145, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr46 = nofpexcept V_MIN_F32_e32 killed $vgpr146, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr48 = nofpexcept V_MIN_F32_e32 killed $vgpr147, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr50 = nofpexcept V_MIN_F32_e32 killed $vgpr11, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr52 = nofpexcept V_MIN_F32_e32 killed $vgpr13, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr54 = nofpexcept V_MIN_F32_e32 killed $vgpr148, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr56 = nofpexcept V_MIN_F32_e32 killed $vgpr149, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr65 = nofpexcept V_MIN_F32_e32 killed $vgpr169, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr66 = nofpexcept V_MIN_F32_e32 killed $vgpr170, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr67 = nofpexcept V_MIN_F32_e32 killed $vgpr171, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr68 = nofpexcept V_MIN_F32_e32 killed $vgpr172, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr69 = nofpexcept V_MIN_F32_e32 killed $vgpr154, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr70 = nofpexcept V_MIN_F32_e32 killed $vgpr137, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr71 = nofpexcept V_MIN_F32_e32 killed $vgpr155, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr72 = nofpexcept V_MIN_F32_e32 killed $vgpr156, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr73 = nofpexcept V_MIN_F32_e32 killed $vgpr157, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr74 = nofpexcept V_MIN_F32_e32 killed $vgpr165, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr81 = nofpexcept V_MIN_F32_e32 killed $vgpr166, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr82 = nofpexcept V_MIN_F32_e32 killed $vgpr167, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr83 = nofpexcept V_MIN_F32_e32 killed $vgpr47, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr49 = nofpexcept V_MIN_F32_e32 killed $vgpr49, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr51 = nofpexcept V_MIN_F32_e32 killed $vgpr51, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr53 = nofpexcept V_MIN_F32_e32 killed $vgpr53, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr84 = nofpexcept V_MIN_F32_e32 killed $vgpr168, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr85 = nofpexcept V_MIN_F32_e32 killed $vgpr162, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr86 = nofpexcept V_MIN_F32_e32 killed $vgpr163, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr87 = nofpexcept V_MIN_F32_e32 killed $vgpr164, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr137 = nofpexcept V_MIN_F32_e32 killed $vgpr43, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr138 = nofpexcept V_MIN_F32_e32 killed $vgpr45, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr139 = nofpexcept V_MIN_F32_e32 killed $vgpr39, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr140 = nofpexcept V_MIN_F32_e32 killed $vgpr41, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr141 = nofpexcept V_MIN_F32_e32 killed $vgpr31, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr142 = nofpexcept V_MIN_F32_e32 killed $vgpr33, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr143 = nofpexcept V_MIN_F32_e32 killed $vgpr55, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr144 = nofpexcept V_MIN_F32_e32 killed $vgpr57, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr145 = nofpexcept V_MIN_F32_e32 killed $vgpr27, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr146 = nofpexcept V_MIN_F32_e32 killed $vgpr29, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr147 = nofpexcept V_MIN_F32_e32 killed $vgpr6, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr0 = nofpexcept V_MIN_F32_e32 killed $vgpr9, killed $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr4 = nofpexcept V_MAX_F32_e64 0, killed $vgpr4, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr5 = nofpexcept V_MAX_F32_e64 0, killed $vgpr5, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr6 = nofpexcept V_MAX_F32_e64 0, killed $vgpr7, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr7 = nofpexcept V_MAX_F32_e64 0, killed $vgpr8, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr8 = nofpexcept V_MAX_F32_e64 0, killed $vgpr10, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr9 = nofpexcept V_MAX_F32_e64 0, killed $vgpr12, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr10 = nofpexcept V_MAX_F32_e64 0, killed $vgpr14, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr11 = nofpexcept V_MAX_F32_e64 0, killed $vgpr16, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr12 = nofpexcept V_MAX_F32_e64 0, killed $vgpr18, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr13 = nofpexcept V_MAX_F32_e64 0, killed $vgpr20, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr14 = nofpexcept V_MAX_F32_e64 0, killed $vgpr22, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr15 = nofpexcept V_MAX_F32_e64 0, killed $vgpr24, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr16 = nofpexcept V_MAX_F32_e64 0, killed $vgpr26, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr17 = nofpexcept V_MAX_F32_e64 0, killed $vgpr28, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr18 = nofpexcept V_MAX_F32_e64 0, killed $vgpr23, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr19 = nofpexcept V_MAX_F32_e64 0, killed $vgpr25, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr20 = nofpexcept V_MAX_F32_e64 0, killed $vgpr30, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr21 = nofpexcept V_MAX_F32_e64 0, killed $vgpr32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr22 = nofpexcept V_MAX_F32_e64 0, killed $vgpr34, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr23 = nofpexcept V_MAX_F32_e64 0, killed $vgpr35, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr24 = nofpexcept V_MAX_F32_e64 0, killed $vgpr36, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr25 = nofpexcept V_MAX_F32_e64 0, killed $vgpr37, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr26 = nofpexcept V_MAX_F32_e64 0, killed $vgpr38, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr27 = nofpexcept V_MAX_F32_e64 0, killed $vgpr40, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr28 = nofpexcept V_MAX_F32_e64 0, killed $vgpr42, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr29 = nofpexcept V_MAX_F32_e64 0, killed $vgpr44, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr30 = nofpexcept V_MAX_F32_e64 0, killed $vgpr46, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr31 = nofpexcept V_MAX_F32_e64 0, killed $vgpr48, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr32 = nofpexcept V_MAX_F32_e64 0, killed $vgpr50, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr33 = nofpexcept V_MAX_F32_e64 0, killed $vgpr52, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr34 = nofpexcept V_MAX_F32_e64 0, killed $vgpr54, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr35 = nofpexcept V_MAX_F32_e64 0, killed $vgpr56, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr36 = nofpexcept V_MAX_F32_e64 0, killed $vgpr65, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr37 = nofpexcept V_MAX_F32_e64 0, killed $vgpr66, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr38 = nofpexcept V_MAX_F32_e64 0, killed $vgpr67, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr39 = nofpexcept V_MAX_F32_e64 0, killed $vgpr68, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr40 = nofpexcept V_MAX_F32_e64 0, killed $vgpr69, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr41 = nofpexcept V_MAX_F32_e64 0, killed $vgpr70, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr42 = nofpexcept V_MAX_F32_e64 0, killed $vgpr71, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr43 = nofpexcept V_MAX_F32_e64 0, killed $vgpr72, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr44 = nofpexcept V_MAX_F32_e64 0, killed $vgpr73, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr45 = nofpexcept V_MAX_F32_e64 0, killed $vgpr74, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr46 = nofpexcept V_MAX_F32_e64 0, killed $vgpr81, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr47 = nofpexcept V_MAX_F32_e64 0, killed $vgpr82, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr48 = nofpexcept V_MAX_F32_e64 0, killed $vgpr83, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr49 = nofpexcept V_MAX_F32_e64 0, killed $vgpr49, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr50 = nofpexcept V_MAX_F32_e64 0, killed $vgpr51, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr51 = nofpexcept V_MAX_F32_e64 0, killed $vgpr53, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr52 = nofpexcept V_MAX_F32_e64 0, killed $vgpr84, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr53 = nofpexcept V_MAX_F32_e64 0, killed $vgpr85, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr54 = nofpexcept V_MAX_F32_e64 0, killed $vgpr86, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr55 = nofpexcept V_MAX_F32_e64 0, killed $vgpr87, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr56 = nofpexcept V_MAX_F32_e64 0, killed $vgpr137, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr57 = nofpexcept V_MAX_F32_e64 0, killed $vgpr138, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr65 = nofpexcept V_MAX_F32_e64 0, killed $vgpr139, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr66 = nofpexcept V_MAX_F32_e64 0, killed $vgpr140, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr67 = nofpexcept V_MAX_F32_e64 0, killed $vgpr141, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr68 = nofpexcept V_MAX_F32_e64 0, killed $vgpr142, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr69 = nofpexcept V_MAX_F32_e64 0, killed $vgpr143, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr70 = nofpexcept V_MAX_F32_e64 0, killed $vgpr144, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr71 = nofpexcept V_MAX_F32_e64 0, killed $vgpr145, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr72 = nofpexcept V_MAX_F32_e64 0, killed $vgpr146, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr73 = nofpexcept V_MAX_F32_e64 0, killed $vgpr147, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr74 = nofpexcept V_MAX_F32_e64 0, killed $vgpr0, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
  renamable $vgpr0 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $sgpr14, killed $vgpr0, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr1, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr174, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr177, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr178, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr179, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr88, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr89, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr90, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr91, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr92, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr93, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr94, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr95, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr96, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr97, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr98, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr99, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr100, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr101, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr102, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr103, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr104, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr105, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr106, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr107, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr108, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr109, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr110, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr111, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr112, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr113, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr114, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr115, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr116, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr117, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr118, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr119, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr120, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr121, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr122, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr123, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr124, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr125, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr126, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr127, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr128, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr184 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr129, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr185 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr130, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr186 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr131, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr187 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr132, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr188 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr133, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr189 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr134, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr190 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr135, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr191 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr136, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr192 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr80, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr193 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr79, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr194 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr78, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr195 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr77, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr196 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr76, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr197 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr75, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr198 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr3, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $vgpr0, $vgpr2, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_EXP_F32_e32 killed $vgpr81, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_EXP_F32_e32 killed $vgpr82, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_EXP_F32_e32 killed $vgpr83, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_EXP_F32_e32 killed $vgpr84, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_EXP_F32_e32 killed $vgpr85, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_EXP_F32_e32 killed $vgpr86, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_EXP_F32_e32 killed $vgpr87, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_EXP_F32_e32 killed $vgpr137, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_EXP_F32_e32 killed $vgpr138, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_EXP_F32_e32 killed $vgpr139, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_EXP_F32_e32 killed $vgpr140, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_EXP_F32_e32 killed $vgpr141, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_EXP_F32_e32 killed $vgpr142, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_EXP_F32_e32 killed $vgpr143, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_EXP_F32_e32 killed $vgpr144, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_EXP_F32_e32 killed $vgpr145, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146 = nofpexcept V_EXP_F32_e32 killed $vgpr146, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147 = nofpexcept V_EXP_F32_e32 killed $vgpr147, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148 = nofpexcept V_EXP_F32_e32 killed $vgpr148, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149 = nofpexcept V_EXP_F32_e32 killed $vgpr149, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150 = nofpexcept V_EXP_F32_e32 killed $vgpr150, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151 = nofpexcept V_EXP_F32_e32 killed $vgpr151, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152 = nofpexcept V_EXP_F32_e32 killed $vgpr152, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_EXP_F32_e32 killed $vgpr153, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_EXP_F32_e32 killed $vgpr154, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_EXP_F32_e32 killed $vgpr155, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_EXP_F32_e32 killed $vgpr156, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_EXP_F32_e32 killed $vgpr157, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_EXP_F32_e32 killed $vgpr158, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_EXP_F32_e32 killed $vgpr159, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_EXP_F32_e32 killed $vgpr160, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_EXP_F32_e32 killed $vgpr161, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_EXP_F32_e32 killed $vgpr162, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_EXP_F32_e32 killed $vgpr163, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_EXP_F32_e32 killed $vgpr164, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_EXP_F32_e32 killed $vgpr165, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr199 = nofpexcept V_EXP_F32_e32 killed $vgpr166, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr200 = nofpexcept V_EXP_F32_e32 killed $vgpr167, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr201 = nofpexcept V_EXP_F32_e32 killed $vgpr168, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr202 = nofpexcept V_EXP_F32_e32 killed $vgpr169, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr203 = nofpexcept V_EXP_F32_e32 killed $vgpr170, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr204 = nofpexcept V_EXP_F32_e32 killed $vgpr171, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr205 = nofpexcept V_EXP_F32_e32 killed $vgpr172, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr206 = nofpexcept V_EXP_F32_e32 killed $vgpr173, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180 = nofpexcept V_EXP_F32_e32 killed $vgpr180, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_EXP_F32_e32 killed $vgpr181, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_EXP_F32_e32 killed $vgpr182, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_EXP_F32_e32 killed $vgpr183, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr184 = nofpexcept V_EXP_F32_e32 killed $vgpr184, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr185 = nofpexcept V_EXP_F32_e32 killed $vgpr185, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr186 = nofpexcept V_EXP_F32_e32 killed $vgpr186, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr187 = nofpexcept V_EXP_F32_e32 killed $vgpr187, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr188 = nofpexcept V_EXP_F32_e32 killed $vgpr188, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr189 = nofpexcept V_EXP_F32_e32 killed $vgpr189, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr190 = nofpexcept V_EXP_F32_e32 killed $vgpr190, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr191 = nofpexcept V_EXP_F32_e32 killed $vgpr191, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr192 = nofpexcept V_EXP_F32_e32 killed $vgpr192, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr193 = nofpexcept V_EXP_F32_e32 killed $vgpr193, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr194 = nofpexcept V_EXP_F32_e32 killed $vgpr194, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr195 = nofpexcept V_EXP_F32_e32 killed $vgpr195, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr196 = nofpexcept V_EXP_F32_e32 killed $vgpr196, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr197 = nofpexcept V_EXP_F32_e32 killed $vgpr197, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr198 = nofpexcept V_EXP_F32_e32 killed $vgpr198, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_EXP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr81, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr82, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr83, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr84, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr85, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr86, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr87, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr207 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr137, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr208 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr138, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr209 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr139, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr210 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr140, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr211 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr141, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr212 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr142, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr213 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr143, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr214 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr144, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr215 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr145, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr216 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr146, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr217 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr147, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr218 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr148, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr219 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr149, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr220 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr150, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr221 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr151, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr222 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr152, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr223 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr153, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr224 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr154, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr225 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr155, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr226 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr156, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr157, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr158, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr159, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr160, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr161, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr162, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr163, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr164, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr165, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr199, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr200, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr201, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr202, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr203, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr204, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr205, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr206, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr180, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr181, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr182, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr183, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr184, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr185, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr186, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr187, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr188, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr189, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr190, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr191, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr192, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr193, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr194, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr195, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr196, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr81, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr197, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr198, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr0, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr1, 0, $vgpr81, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr182, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr182 = nofpexcept V_FMAC_F32_e32 killed $vgpr183, $vgpr181, killed $vgpr182(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr180, 0, $vgpr182, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr82, 0, $vgpr174, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_RCP_F32_e32 $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr182, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr81, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr183, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr183 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr183, $vgpr183(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr174, 0, $vgpr82, 0, $vgpr174, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr183, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr181, $vgpr183, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr180, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr83, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr183, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr82, 0, killed $vgpr174, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr175, 0, $vgpr83, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr181, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr180, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr84, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr83, 0, killed $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr180, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr180 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr180, $vgpr180(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr176, 0, $vgpr84, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr180, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr85, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr180, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr84, 0, killed $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr177, 0, $vgpr85, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr86, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr85, 0, killed $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr178, 0, $vgpr86, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr87, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr86, 0, killed $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr179, 0, $vgpr87, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr207, 0, $vgpr207, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr87, 0, killed $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr207, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr208, 0, $vgpr208, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr88 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr207, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr208, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr209, 0, $vgpr209, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr89 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr208, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr209, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr210, 0, $vgpr210, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr90 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr209, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr210, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr211, 0, $vgpr211, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr91 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr210, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr211, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr212, 0, $vgpr212, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr92 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr211, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr212, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr213, 0, $vgpr213, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr93 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr212, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr213, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr214, 0, $vgpr214, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr94 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr213, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr214, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr215, 0, $vgpr215, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr95 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr214, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr215, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr216, 0, $vgpr216, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr96 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr215, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr216, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr217, 0, $vgpr217, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr97 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr216, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr217, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr218, 0, $vgpr218, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr98 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr217, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr218, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr219, 0, $vgpr219, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr99 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr218, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr219, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr220, 0, $vgpr220, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr100 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr219, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr220, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr221, 0, $vgpr221, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr101 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr220, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr221, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr222, 0, $vgpr222, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr102 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr221, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr222, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr223, 0, $vgpr223, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr103 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr222, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr223, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr224, 0, $vgpr224, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr104 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr223, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr224, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr225, 0, $vgpr225, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr105 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr224, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr225, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr226, 0, $vgpr226, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr106 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr225, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr226, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr173, 0, $vgpr173, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr107 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr226, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr173, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr172, 0, $vgpr172, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr108 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr172, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr171, 0, $vgpr171, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr109 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr171, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr172, $vgpr174, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr173, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr170, 0, $vgpr170, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr174, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr110 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr170, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr171, $vgpr173, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr172, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr169, 0, $vgpr169, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_RCP_F32_e32 $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr111 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr172, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr172 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr172, $vgpr172(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr169, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr170, $vgpr172, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr171, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr168, 0, $vgpr168, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_RCP_F32_e32 $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr112 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr171, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr171 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr171, $vgpr171(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr168, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr169, $vgpr171, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr170, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr167, 0, $vgpr167, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_RCP_F32_e32 $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr113 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr170, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr170 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr170, $vgpr170(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr167, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr168, $vgpr170, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr169, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr166, 0, $vgpr166, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_RCP_F32_e32 $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr114 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr169, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr169 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr169, $vgpr169(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr166, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr167, $vgpr169, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr168, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr165, 0, $vgpr165, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_RCP_F32_e32 $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr115 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr168, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr168 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr168, $vgpr168(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr165, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr166, $vgpr168, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr167, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr164, 0, $vgpr164, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_RCP_F32_e32 $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr116 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr167, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr167 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr167, $vgpr167(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr164, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr165, $vgpr167, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr166, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr163, 0, $vgpr163, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_RCP_F32_e32 $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr117 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr166, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr166 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr166, $vgpr166(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr163, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr164, $vgpr166, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr165, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr162, 0, $vgpr162, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_RCP_F32_e32 $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr118 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr165, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr165 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr165, $vgpr165(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr162, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr163, $vgpr165, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr164, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr161, 0, $vgpr161, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_RCP_F32_e32 $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr119 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr164, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr164 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr164, $vgpr164(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr161, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr162, $vgpr164, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr163, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr160, 0, $vgpr160, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr120 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr163, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr163 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr163, $vgpr163(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr160, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr161, $vgpr163, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr159, 0, $vgpr159, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_RCP_F32_e32 $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr121 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr162, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr162 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr162, $vgpr162(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr159, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr160, $vgpr162, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr161, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr158, 0, $vgpr158, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_RCP_F32_e32 $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr122 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr161, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr161 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr161, $vgpr161(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr158, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr159, $vgpr161, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr160, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr157, 0, $vgpr157, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_RCP_F32_e32 $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr123 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr160, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr160 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr160, $vgpr160(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr157, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr158, $vgpr160, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr159, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr156, 0, $vgpr156, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_RCP_F32_e32 $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr124 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr159, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr159 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr159, $vgpr159(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr156, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr157, $vgpr159, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr158, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr155, 0, $vgpr155, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_RCP_F32_e32 $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr125 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr158, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr158 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr158, $vgpr158(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr155, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr156, $vgpr158, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr157, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr154, 0, $vgpr154, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_RCP_F32_e32 $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr126 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr157, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr157 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr157, $vgpr157(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr154, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr155, $vgpr157, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr156, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr153, 0, $vgpr153, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_RCP_F32_e32 $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr127 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr156, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr156 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr156, $vgpr156(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr153, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr154, $vgpr156, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr155, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr152, 0, $vgpr152, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_RCP_F32_e32 $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr128 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr155, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr155 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr155, $vgpr155(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr152, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr153, $vgpr155, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr154, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr151, 0, $vgpr151, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_RCP_F32_e32 $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr129 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr152, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr154, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr154 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr154, $vgpr154(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr151, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr152, $vgpr154, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr153, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr150, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_RCP_F32_e32 $vgpr152, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr151, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr152, 0, $vgpr153, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr153 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr153, $vgpr153(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151 = nofpexcept V_FMA_F32_e64 1, $vgpr152, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr151, $vgpr153, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr152, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr149, 0, $vgpr149, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152 = nofpexcept V_RCP_F32_e32 $vgpr151, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr150, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr151, 0, $vgpr152, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr152 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr152, $vgpr152(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr149, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr152, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150 = nofpexcept V_FMA_F32_e64 1, $vgpr151, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr150, $vgpr152, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr151, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr148, 0, $vgpr148, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151 = nofpexcept V_RCP_F32_e32 $vgpr150, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr152, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr149, 0, killed $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr150, 0, $vgpr151, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr151 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr151, $vgpr151(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr148, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr151, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149 = nofpexcept V_FMA_F32_e64 1, $vgpr150, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr149, $vgpr151, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr150, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr147, 0, $vgpr147, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150 = nofpexcept V_RCP_F32_e32 $vgpr149, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr151, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr148, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr149, 0, $vgpr150, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr150 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr150, $vgpr150(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr147, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr150, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148 = nofpexcept V_FMA_F32_e64 1, $vgpr149, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr148, $vgpr150, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr149, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr146, 0, $vgpr146, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149 = nofpexcept V_RCP_F32_e32 $vgpr148, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr150, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr147, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr148, 0, $vgpr149, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr149 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr149, $vgpr149(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr146, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr149, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147 = nofpexcept V_FMA_F32_e64 1, $vgpr148, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr147, $vgpr149, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr148, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr145, 0, $vgpr145, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148 = nofpexcept V_RCP_F32_e32 $vgpr147, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr149, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr146, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr147, 0, $vgpr148, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr148 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr148, $vgpr148(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr145, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr148, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146 = nofpexcept V_FMA_F32_e64 1, $vgpr147, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr146, $vgpr148, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr147, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr144, 0, $vgpr144, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147 = nofpexcept V_RCP_F32_e32 $vgpr146, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr148, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr146, 0, $vgpr147, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr147 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr147, $vgpr147(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr144, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr147, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 1, $vgpr146, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr145, $vgpr147, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr146, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr143, 0, $vgpr143, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146 = nofpexcept V_RCP_F32_e32 $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr147, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr146, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr146 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr146, $vgpr146(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr143, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr146, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr144, $vgpr146, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr145, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr142, 0, $vgpr142, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_RCP_F32_e32 $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr146, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr145, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr145, $vgpr145(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr142, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr143, $vgpr145, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr144, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr141, 0, $vgpr141, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_RCP_F32_e32 $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr144, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr144 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr144, $vgpr144(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr141, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr142, $vgpr144, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr143, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr140, 0, $vgpr140, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_RCP_F32_e32 $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr143, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr143 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr143, $vgpr143(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr140, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr141, $vgpr143, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr142, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr140, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr140, $vgpr142, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr141, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr138, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr75 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr139, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr141, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr141, $vgpr141(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr3, 0, $vgpr138, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr139, $vgpr141, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr137, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr139 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, killed renamable $vgpr59, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr138, 0, killed $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr2, 0, $vgpr137, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr3 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr3, $vgpr142, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr137, 0, killed $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr81 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, killed $vgpr4, $vgpr81(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr82 = nofpexcept V_FMAC_F32_e32 killed $vgpr82, killed $vgpr5, $vgpr82(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr83 = nofpexcept V_FMAC_F32_e32 killed $vgpr83, killed $vgpr6, $vgpr83(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr84 = nofpexcept V_FMAC_F32_e32 killed $vgpr84, killed $vgpr7, $vgpr84(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr85 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr8, $vgpr85(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr86 = nofpexcept V_FMAC_F32_e32 killed $vgpr86, killed $vgpr9, $vgpr86(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr87 = nofpexcept V_FMAC_F32_e32 killed $vgpr87, killed $vgpr10, $vgpr87(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr88 = nofpexcept V_FMAC_F32_e32 killed $vgpr88, killed $vgpr11, $vgpr88(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr89 = nofpexcept V_FMAC_F32_e32 killed $vgpr89, killed $vgpr12, $vgpr89(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr90 = nofpexcept V_FMAC_F32_e32 killed $vgpr90, killed $vgpr13, $vgpr90(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr91 = nofpexcept V_FMAC_F32_e32 killed $vgpr91, killed $vgpr14, $vgpr91(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr92 = nofpexcept V_FMAC_F32_e32 killed $vgpr92, killed $vgpr15, $vgpr92(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr93 = nofpexcept V_FMAC_F32_e32 killed $vgpr93, killed $vgpr16, $vgpr93(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr94 = nofpexcept V_FMAC_F32_e32 killed $vgpr94, killed $vgpr17, $vgpr94(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr95 = nofpexcept V_FMAC_F32_e32 killed $vgpr95, killed $vgpr18, $vgpr95(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr96 = nofpexcept V_FMAC_F32_e32 killed $vgpr96, killed $vgpr19, $vgpr96(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr97 = nofpexcept V_FMAC_F32_e32 killed $vgpr97, killed $vgpr20, $vgpr97(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr98 = nofpexcept V_FMAC_F32_e32 killed $vgpr98, killed $vgpr21, $vgpr98(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr99 = nofpexcept V_FMAC_F32_e32 killed $vgpr99, killed $vgpr22, $vgpr99(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr100 = nofpexcept V_FMAC_F32_e32 killed $vgpr100, killed $vgpr23, $vgpr100(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr101 = nofpexcept V_FMAC_F32_e32 killed $vgpr101, killed $vgpr24, $vgpr101(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr102 = nofpexcept V_FMAC_F32_e32 killed $vgpr102, killed $vgpr25, $vgpr102(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr103 = nofpexcept V_FMAC_F32_e32 killed $vgpr103, killed $vgpr26, $vgpr103(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr104 = nofpexcept V_FMAC_F32_e32 killed $vgpr104, killed $vgpr27, $vgpr104(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr105 = nofpexcept V_FMAC_F32_e32 killed $vgpr105, killed $vgpr28, $vgpr105(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr106 = nofpexcept V_FMAC_F32_e32 killed $vgpr106, killed $vgpr29, $vgpr106(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr107 = nofpexcept V_FMAC_F32_e32 killed $vgpr107, killed $vgpr30, $vgpr107(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr108 = nofpexcept V_FMAC_F32_e32 killed $vgpr108, killed $vgpr31, $vgpr108(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr109 = nofpexcept V_FMAC_F32_e32 killed $vgpr109, killed $vgpr32, $vgpr109(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr110 = nofpexcept V_FMAC_F32_e32 killed $vgpr110, killed $vgpr33, $vgpr110(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr111 = nofpexcept V_FMAC_F32_e32 killed $vgpr111, killed $vgpr34, $vgpr111(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr112 = nofpexcept V_FMAC_F32_e32 killed $vgpr112, killed $vgpr35, $vgpr112(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr113 = nofpexcept V_FMAC_F32_e32 killed $vgpr113, killed $vgpr36, $vgpr113(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr114 = nofpexcept V_FMAC_F32_e32 killed $vgpr114, killed $vgpr37, $vgpr114(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr115 = nofpexcept V_FMAC_F32_e32 killed $vgpr115, killed $vgpr38, $vgpr115(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr116 = nofpexcept V_FMAC_F32_e32 killed $vgpr116, killed $vgpr39, $vgpr116(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr117 = nofpexcept V_FMAC_F32_e32 killed $vgpr117, killed $vgpr40, $vgpr117(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr118 = nofpexcept V_FMAC_F32_e32 killed $vgpr118, killed $vgpr41, $vgpr118(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr119 = nofpexcept V_FMAC_F32_e32 killed $vgpr119, killed $vgpr42, $vgpr119(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr120 = nofpexcept V_FMAC_F32_e32 killed $vgpr120, killed $vgpr43, $vgpr120(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr121 = nofpexcept V_FMAC_F32_e32 killed $vgpr121, killed $vgpr44, $vgpr121(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr122 = nofpexcept V_FMAC_F32_e32 killed $vgpr122, killed $vgpr45, $vgpr122(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr123 = nofpexcept V_FMAC_F32_e32 killed $vgpr123, killed $vgpr46, $vgpr123(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr124 = nofpexcept V_FMAC_F32_e32 killed $vgpr124, killed $vgpr47, $vgpr124(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr125 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, killed $vgpr48, $vgpr125(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr126 = nofpexcept V_FMAC_F32_e32 killed $vgpr126, killed $vgpr49, $vgpr126(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr127 = nofpexcept V_FMAC_F32_e32 killed $vgpr127, killed $vgpr50, $vgpr127(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr128 = nofpexcept V_FMAC_F32_e32 killed $vgpr128, killed $vgpr51, $vgpr128(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr129 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, killed $vgpr52, $vgpr129(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr130 = nofpexcept V_FMAC_F32_e32 killed $vgpr130, killed $vgpr53, $vgpr130(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr131 = nofpexcept V_FMAC_F32_e32 killed $vgpr131, killed $vgpr54, $vgpr131(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr132 = nofpexcept V_FMAC_F32_e32 killed $vgpr132, killed $vgpr55, $vgpr132(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr133 = nofpexcept V_FMAC_F32_e32 killed $vgpr133, killed $vgpr56, $vgpr133(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr134 = nofpexcept V_FMAC_F32_e32 killed $vgpr134, killed $vgpr57, $vgpr134(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr135, killed $vgpr65, $vgpr135(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr136, killed $vgpr66, $vgpr136(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr80 = nofpexcept V_FMAC_F32_e32 killed $vgpr80, killed $vgpr67, $vgpr80(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr79 = nofpexcept V_FMAC_F32_e32 killed $vgpr79, killed $vgpr68, $vgpr79(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr78 = nofpexcept V_FMAC_F32_e32 killed $vgpr78, killed $vgpr69, $vgpr78(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr77 = nofpexcept V_FMAC_F32_e32 killed $vgpr77, killed $vgpr70, $vgpr77(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr76 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, killed $vgpr71, $vgpr76(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, killed $vgpr72, $vgpr75(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr138 = nofpexcept V_FMAC_F32_e32 killed $vgpr138, killed $vgpr73, $vgpr138(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr137, killed $vgpr74, $vgpr137(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
  renamable $vgpr0, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_RCP_F32_e32 $vgpr0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr59 = COPY renamable $sgpr13, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
  renamable $vgpr2 = V_OR_B32_e32 8, $vgpr58, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
  renamable $vgpr3 = COPY $sgpr13, debug-location !110; moe_op_gemm_a8w4.py:482:41
  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr1, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr4, killed $vgpr1, $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr139, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 $vgpr4, $vgpr1, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr5, 0, $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_FMAC_F32_e32 killed $vgpr6, $vgpr1, killed $vgpr5(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr0, 0, $vgpr5, 0, killed $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr1, 0, killed $vgpr5, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr7, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr7, $vgpr7(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr139, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, $vgpr7, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr7, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr8, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr8, $vgpr8(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr139, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr7, $vgpr8, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_RCP_F32_e32 $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr8, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr9, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr9, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr139, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr8, $vgpr9, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr7, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_RCP_F32_e32 $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr9, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr10, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr10, $vgpr10(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr139, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr9, $vgpr10, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr8, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_RCP_F32_e32 $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr10, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr11, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr11, $vgpr11(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr139, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr10, $vgpr11, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr9, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_RCP_F32_e32 $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr11, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr12, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr12, $vgpr12(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr139, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr11, $vgpr12, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr10, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_RCP_F32_e32 $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr12, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr13, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr13, $vgpr13(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr139, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr12, $vgpr13, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr11, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_RCP_F32_e32 $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr13, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr14, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr14, $vgpr14(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr139, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr13, $vgpr14, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr12, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_RCP_F32_e32 $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr14, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr15, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr15, $vgpr15(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr139, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr14, $vgpr15, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr13, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_RCP_F32_e32 $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr15, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr16, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr16, $vgpr16(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr139, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr15, $vgpr16, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr14, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_RCP_F32_e32 $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr16, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr17, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr17, $vgpr17(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr139, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr16, $vgpr17, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr15, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_RCP_F32_e32 $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr17, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr18, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr18, $vgpr18(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr139, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr17, $vgpr18, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr16, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_RCP_F32_e32 $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr18, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr19, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr19, $vgpr19(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr139, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr18, $vgpr19, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr17, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_RCP_F32_e32 $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr19, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr20, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr20, $vgpr20(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr139, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr19, $vgpr20, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr18, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr20, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr21, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr21, $vgpr21(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr139, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr20, $vgpr21, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr19, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_RCP_F32_e32 $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr21, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr22, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr22, $vgpr22(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr139, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr21, $vgpr22, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr20, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_RCP_F32_e32 $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr22, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr23, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr23, $vgpr23(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr139, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr22, $vgpr23, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr21, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_RCP_F32_e32 $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr23, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr24, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr24, $vgpr24(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr139, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr23, $vgpr24, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr22, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_RCP_F32_e32 $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr24, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr25, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr25, $vgpr25(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr139, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr24, $vgpr25, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr23, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_RCP_F32_e32 $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr25, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr23 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr26, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr26, $vgpr26(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr139, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr25, $vgpr26, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr24, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_RCP_F32_e32 $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr26, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr24 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr27, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr27, $vgpr27(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr139, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr26, $vgpr27, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr25, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_RCP_F32_e32 $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr27, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr25 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr28, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr28, $vgpr28(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr139, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr27, $vgpr28, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr26, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_RCP_F32_e32 $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr28, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr26 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr29, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr29, $vgpr29(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr139, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr28, $vgpr29, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr27, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_RCP_F32_e32 $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr29, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr27 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr30, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr30, $vgpr30(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr139, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr29, $vgpr30, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr28, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_RCP_F32_e32 $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr30, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr28 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr31, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr31, $vgpr31(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr139, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr30, $vgpr31, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr29, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_RCP_F32_e32 $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr31, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr29 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr32, $vgpr32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr139, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr31, $vgpr32, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr30, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_RCP_F32_e32 $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr32, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr30 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr33, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr33, $vgpr33(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr139, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr32, $vgpr33, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr31, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_RCP_F32_e32 $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr33, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr31 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr34, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr34, $vgpr34(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr139, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr33, $vgpr34, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr32, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_RCP_F32_e32 $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr34, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr32 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr35, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr35, $vgpr35(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr139, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr34, $vgpr35, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr33, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_RCP_F32_e32 $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr35, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr33 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr36, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr36, $vgpr36(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr139, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr35, $vgpr36, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr34, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_RCP_F32_e32 $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr36, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr34 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr37, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr37, $vgpr37(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr139, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr36, $vgpr37, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr35, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_RCP_F32_e32 $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr37, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr35 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr38, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr38, $vgpr38(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr139, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr37, $vgpr38, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr36, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_RCP_F32_e32 $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr38, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr36 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr39, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr39, $vgpr39(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr139, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr38, $vgpr39, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr37, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr39, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr37 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr139, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr39, $vgpr40, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr38, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr40, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr38 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr41, $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr139, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, $vgpr41, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr139, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, $vgpr40, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr40, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr139, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr42, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, killed $vgpr42, $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr139, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr40, $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, $vgpr42, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_RCP_F32_e32 $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr39, 0, killed $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr39 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr39, 0, $vgpr139, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr43, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr41, killed $vgpr43, $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr139, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_MUL_F32_e32 $vgpr41, $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr42, 0, $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, $vgpr43, killed $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, killed $vgpr40, 0, $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_RCP_F32_e32 $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr40, 0, killed $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr40 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr40, 0, $vgpr139, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr44, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, killed $vgpr44, $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr139, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_MUL_F32_e32 $vgpr42, $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr43, 0, $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, $vgpr44, killed $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, killed $vgpr41, 0, $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_RCP_F32_e32 $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr41, 0, killed $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr41 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr41, 0, $vgpr139, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr45, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, killed $vgpr45, $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr139, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_MUL_F32_e32 $vgpr43, $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr44, 0, $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, $vgpr45, killed $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, killed $vgpr42, 0, $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_RCP_F32_e32 $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr42, 0, killed $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr42 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr42, 0, $vgpr139, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr46, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, killed $vgpr46, $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr139, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_MUL_F32_e32 $vgpr44, $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr45, 0, $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, $vgpr46, killed $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, killed $vgpr43, 0, $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_RCP_F32_e32 $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr43, 0, killed $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr43 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr43, 0, $vgpr139, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr47, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, killed $vgpr47, $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr139, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_MUL_F32_e32 $vgpr45, $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr46, 0, $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, $vgpr47, killed $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, killed $vgpr44, 0, $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_RCP_F32_e32 $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr44, 0, killed $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr44 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr44, 0, $vgpr139, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr48, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, killed $vgpr48, $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr139, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_MUL_F32_e32 $vgpr46, $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr47, 0, $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, $vgpr48, killed $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, killed $vgpr45, 0, $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_RCP_F32_e32 $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr45, 0, killed $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr45 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr45, 0, $vgpr139, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr49, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, killed $vgpr49, $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr139, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_MUL_F32_e32 $vgpr47, $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr48, 0, $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, $vgpr49, killed $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, killed $vgpr46, 0, $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_RCP_F32_e32 $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr46, 0, killed $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr46 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr46, 0, $vgpr139, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr50, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, killed $vgpr50, $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr139, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_MUL_F32_e32 $vgpr48, $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr49, 0, $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, $vgpr50, killed $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, killed $vgpr47, 0, $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_RCP_F32_e32 $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr47, 0, killed $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr47 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr47, 0, $vgpr139, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr51, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, killed $vgpr51, $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr139, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_MUL_F32_e32 $vgpr49, $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr50, 0, $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, $vgpr51, killed $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, killed $vgpr48, 0, $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_RCP_F32_e32 $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr48, 0, killed $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr48 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr48, 0, $vgpr139, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr52, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, killed $vgpr52, $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_MUL_F32_e32 $vgpr50, $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr51, 0, $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, $vgpr52, killed $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, killed $vgpr49, 0, $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_RCP_F32_e32 $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr49, 0, killed $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr49 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr49, 0, $vgpr139, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr53, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, killed $vgpr53, $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr139, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_MUL_F32_e32 $vgpr51, $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr52, 0, $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, $vgpr53, killed $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, killed $vgpr50, 0, $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_RCP_F32_e32 $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr50, 0, killed $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr50 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr50, 0, $vgpr139, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr54, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, killed $vgpr54, $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr139, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_MUL_F32_e32 $vgpr52, $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr53, 0, $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, $vgpr54, killed $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, killed $vgpr51, 0, $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_RCP_F32_e32 $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr51, 0, killed $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr51 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr51, 0, $vgpr139, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr55, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, killed $vgpr55, $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr139, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_MUL_F32_e32 $vgpr53, $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr54, 0, $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, $vgpr55, killed $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, killed $vgpr52, 0, $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_RCP_F32_e32 $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr52, 0, killed $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr52 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr52, 0, $vgpr139, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr56, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, killed $vgpr56, $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr139, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_MUL_F32_e32 $vgpr54, $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr55, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, $vgpr56, killed $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, killed $vgpr53, 0, $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_RCP_F32_e32 $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr53, 0, killed $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr53 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr53, 0, $vgpr139, 0, killed $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr57, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, killed $vgpr57, $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr139, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_MUL_F32_e32 $vgpr55, $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr56, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, $vgpr57, killed $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, killed $vgpr54, 0, $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_RCP_F32_e32 $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr54, 0, killed $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr54 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr54, 0, $vgpr139, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr65, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, killed $vgpr65, $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr139, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_MUL_F32_e32 $vgpr56, $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr57, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, $vgpr65, killed $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, killed $vgpr55, 0, $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_RCP_F32_e32 $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr55, 0, killed $vgpr65, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr55 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr55, 0, $vgpr139, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr66, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, killed $vgpr66, $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr139, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_MUL_F32_e32 $vgpr57, $vgpr66, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr65, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, $vgpr66, killed $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, killed $vgpr56, 0, $vgpr65, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_RCP_F32_e32 $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr56, 0, killed $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr56 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr56, 0, $vgpr139, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr67, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, killed $vgpr67, $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr139, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_MUL_F32_e32 $vgpr65, $vgpr67, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr66, 0, $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, $vgpr67, killed $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, killed $vgpr57, 0, $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_RCP_F32_e32 $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr57, 0, killed $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr57 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr57, 0, $vgpr139, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr68, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, killed $vgpr68, $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr139, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_MUL_F32_e32 $vgpr66, $vgpr68, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr67, 0, $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, $vgpr68, killed $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, killed $vgpr65, 0, $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_RCP_F32_e32 $vgpr66, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr65, 0, killed $vgpr68, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr65 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr65, 0, $vgpr139, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr66, 0, $vgpr69, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, killed $vgpr69, $vgpr69(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr139, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_MUL_F32_e32 $vgpr67, $vgpr69, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, $vgpr66, 0, $vgpr68, 0, $vgpr67, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, $vgpr69, killed $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, killed $vgpr66, 0, $vgpr68, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_RCP_F32_e32 $vgpr67, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr66, 0, killed $vgpr69, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr66 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr66, 0, $vgpr139, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr67, 0, $vgpr70, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, killed $vgpr70, $vgpr70(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr139, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_MUL_F32_e32 $vgpr68, $vgpr70, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 1, $vgpr67, 0, $vgpr69, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, $vgpr70, killed $vgpr69(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, killed $vgpr67, 0, $vgpr69, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_RCP_F32_e32 $vgpr68, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr67, 0, killed $vgpr70, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr67 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr67, 0, $vgpr139, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr68, 0, $vgpr71, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, killed $vgpr71, $vgpr71(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr139, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_MUL_F32_e32 $vgpr69, $vgpr71, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 1, $vgpr68, 0, $vgpr70, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, $vgpr71, killed $vgpr70(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, killed $vgpr68, 0, $vgpr70, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_RCP_F32_e32 $vgpr69, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr68, 0, killed $vgpr71, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr68 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr68, 0, $vgpr139, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, $vgpr69, 0, $vgpr72, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, killed $vgpr72, $vgpr72(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr139, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_MUL_F32_e32 $vgpr70, $vgpr72, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 1, $vgpr69, 0, $vgpr71, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, $vgpr72, killed $vgpr71(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, killed $vgpr69, 0, $vgpr71, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73 = nofpexcept V_RCP_F32_e32 $vgpr70, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr69, 0, killed $vgpr72, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr69 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr69, 0, $vgpr139, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 1, $vgpr70, 0, $vgpr73, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, killed $vgpr73, $vgpr73(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_MUL_F32_e32 $vgpr71, $vgpr73, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 1, $vgpr70, 0, $vgpr72, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr74, $vgpr73, killed $vgpr72(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, killed $vgpr70, 0, $vgpr72, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr74 = nofpexcept V_RCP_F32_e32 $vgpr71, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr70, 0, killed $vgpr73, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr70 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr70, 0, $vgpr139, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 1, $vgpr71, 0, $vgpr74, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, killed $vgpr74, $vgpr74(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr139, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73 = nofpexcept V_MUL_F32_e32 $vgpr72, $vgpr74, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 1, $vgpr71, 0, $vgpr73, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, $vgpr74, killed $vgpr73(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 1, killed $vgpr71, 0, $vgpr73, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr75 = nofpexcept V_RCP_F32_e32 $vgpr72, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr71, 0, killed $vgpr74, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr71 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr71, 0, $vgpr139, 0, killed $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 1, $vgpr72, 0, $vgpr75, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, killed $vgpr75, $vgpr75(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr73, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr139, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr74 = nofpexcept V_MUL_F32_e32 $vgpr73, $vgpr75, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 1, $vgpr72, 0, $vgpr74, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, $vgpr75, killed $vgpr74(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 1, killed $vgpr72, 0, $vgpr74, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr72, 0, killed $vgpr75, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr72 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr72, 0, killed $vgpr139, 0, killed $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr4, 0, killed $vgpr5, 0, 1065353216, undef $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr6, 0, killed $vgpr7, 0, 1065353216, $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr8, 0, killed $vgpr9, 0, 1065353216, undef $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr10, 0, killed $vgpr11, 0, 1065353216, $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr12, 0, killed $vgpr13, 0, 1065353216, undef $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr14, 0, killed $vgpr15, 0, 1065353216, $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr16, 0, killed $vgpr17, 0, 1065353216, undef $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr18, 0, killed $vgpr19, 0, 1065353216, $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr20, 0, killed $vgpr21, 0, 1065353216, undef $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr22, 0, killed $vgpr23, 0, 1065353216, $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr24, 0, killed $vgpr25, 0, 1065353216, undef $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr26, 0, killed $vgpr27, 0, 1065353216, $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr28, 0, killed $vgpr29, 0, 1065353216, undef $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr30, 0, killed $vgpr31, 0, 1065353216, $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr32, 0, killed $vgpr33, 0, 1065353216, undef $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr34, 0, killed $vgpr35, 0, 1065353216, $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr36, 0, killed $vgpr37, 0, 1065353216, undef $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr38, 0, killed $vgpr0, 0, 1065353216, $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr1, 0, killed $vgpr39, 0, 1065353216, undef $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr40, 0, killed $vgpr41, 0, 1065353216, $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr42, 0, killed $vgpr43, 0, 1065353216, undef $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr44, 0, killed $vgpr45, 0, 1065353216, $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr46, 0, killed $vgpr47, 0, 1065353216, undef $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr48, 0, killed $vgpr49, 0, 1065353216, $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr50, 0, killed $vgpr51, 0, 1065353216, undef $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr52, 0, killed $vgpr53, 0, 1065353216, $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr54, 0, killed $vgpr55, 0, 1065353216, undef $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr56, 0, killed $vgpr57, 0, 1065353216, $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr65, 0, killed $vgpr66, 0, 1065353216, undef $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr67, 0, killed $vgpr68, 0, 1065353216, $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr69, 0, killed $vgpr70, 0, 1065353216, undef $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr71, 0, killed $vgpr72, 0, 1065353216, $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 4, killed $vgpr233, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = V_AND_B32_e32 48, killed $vgpr231, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = V_AND_B32_e32 1, $vgpr227, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = nuw nsw V_LSHLREV_B32_e32 13, $vgpr20, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = nuw nsw V_LSHLREV_B32_e32 8, $vgpr227, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = V_AND_B32_e32 16384, killed $vgpr22, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr21 = disjoint V_LSHL_OR_B32_e64 killed $vgpr62, 9, killed $vgpr21, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, $vgpr61, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = disjoint V_OR3_B32_e64 killed $vgpr21, killed $vgpr22, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nuw V_ADD_U32_e32 0, $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 renamable $vgpr1, killed renamable $vgpr4_vgpr5_vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 killed renamable $vgpr1, killed renamable $vgpr12_vgpr13_vgpr14_vgpr15, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nuw V_XAD_U32_e64 killed $vgpr0, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr8_vgpr9_vgpr10_vgpr11, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  DS_WRITE_B128_gfx9 killed renamable $vgpr0, killed renamable $vgpr16_vgpr17_vgpr18_vgpr19, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  ATOMIC_FENCE 5, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  ATOMIC_FENCE 4, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 5, killed $vgpr227, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_AND_B32_e32 7168, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = exact V_LSHRREV_B32_e32 1, killed $vgpr60, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4 = nuw nsw V_LSHLREV_B32_e32 9, killed $vgpr64, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr61, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr1 = nuw V_LSHL_ADD_U32_e64 killed $vgpr20, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr13 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 renamable $vgpr13, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = DS_READ_B128_gfx9 renamable $vgpr13, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
  renamable $vcc = V_CMP_GT_I64_e64 $sgpr12_sgpr13, $vgpr58_vgpr59, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, killed $vgpr2_vgpr3, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
  renamable $vgpr0 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_LSHRREV_B32_sdwa 0, killed $vgpr0, 0, $vgpr8, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $sgpr12 = S_MOV_B32 255
  renamable $vgpr0 = V_BITOP3_B16_e64 0, $vgpr8, 0, killed $vgpr0, 0, killed $sgpr12, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0 = V_LSHLREV_B32_e32 16, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr12 = V_AND_OR_B32_e64 $vgpr4, killed $sgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $sgpr12 = S_MOV_B32 50464518
  renamable $vgpr8 = V_PERM_B32_e64 $vgpr4, $vgpr8, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $sgpr13 = S_MOV_B32 16778500
  renamable $vgpr14 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr16 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr18 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr10 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr20 = V_PERM_B32_e64 $vgpr7, $vgpr11, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr22 = V_PERM_B32_e64 killed $vgpr7, killed $vgpr11, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = DS_READ_B128_gfx9 renamable $vgpr13, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 killed renamable $vgpr13, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr229, $sgpr5, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
  renamable $vgpr11 = V_MUL_LO_U32_e64 killed $vgpr236, $sgpr5, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr228, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr234, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr232, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $sgpr5, killed $vgpr230, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr9 = V_ADD_U32_e32 killed $vgpr11, killed $vgpr9, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
  renamable $vgpr11 = V_ADD3_U32_e64 $vgpr9, killed $vgpr13, $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr21 = V_ADD_U32_e32 8, $vgpr11, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr23 = V_ADD3_U32_e64 $vgpr9, killed $vgpr15, $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr24 = V_ADD_U32_e32 8, $vgpr23, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr26 = V_ADD_U32_e32 8, $vgpr25, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr27 = V_ADD3_U32_e64 killed $vgpr9, killed $vgpr19, killed $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $vgpr28 = V_ADD_U32_e32 8, $vgpr27, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
  renamable $sgpr21 = S_AND_B32 renamable $sgpr21, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr22 = COPY renamable $sgpr18, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr23 = COPY killed renamable $sgpr19, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vgpr13 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr9 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr11, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr12_vgpr13, killed renamable $vgpr9, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr9 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr21, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr8_vgpr9, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr15 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr23, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr14_vgpr15, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr17 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr24, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr16_vgpr17, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr19 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr25, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr18_vgpr19, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr11 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr26, killed $sgpr2_sgpr3, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr10_vgpr11, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr21 = V_PERM_B32_e64 $vgpr3, $vgpr7, killed $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr27, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr20_vgpr21, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  renamable $vgpr23 = V_PERM_B32_e64 killed $vgpr3, killed $vgpr7, killed $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr63, 0, killed $vgpr28, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr22_vgpr23, killed renamable $vgpr0, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
  S_BRANCH %bb.1, debug-location !123; moe_op_gemm_a8w4.py:505:4

# End machine code for function _moe_gemm_a8w4.

