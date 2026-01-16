# *** IR Dump After Virtual Register Rewriter (virtregrewriter) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, NoVRegs, TiedOpsRewritten, TracksDebugUserValues
Frame Objects:
  fi#0: size=4, align=4, at location [SP]
  fi#1: size=8, align=4, at location [SP]
  fi#2: size=8, align=4, at location [SP]
  fi#3: size=8, align=4, at location [SP]
  fi#4: size=8, align=4, at location [SP]
  fi#5: size=8, align=4, at location [SP]
  fi#6: size=4, align=4, at location [SP]
  fi#7: size=4, align=4, at location [SP]
  fi#8: size=4, align=4, at location [SP]
  fi#9: size=8, align=4, at location [SP]
  fi#10: size=4, align=4, at location [SP]
  fi#11: size=8, align=4, at location [SP]
  fi#12: size=8, align=4, at location [SP]
  fi#13: size=8, align=4, at location [SP]
  fi#14: size=8, align=4, at location [SP]
  fi#15: size=4, align=4, at location [SP]
  fi#16: size=4, align=4, at location [SP]
  fi#17: size=4, align=4, at location [SP]
  fi#18: size=4, align=4, at location [SP]
  fi#19: size=8, align=4, at location [SP]
  fi#20: size=8, align=4, at location [SP]
  fi#21: size=8, align=4, at location [SP]
  fi#22: size=8, align=4, at location [SP]
  fi#23: size=8, align=4, at location [SP]
  fi#24: size=8, align=4, at location [SP]
  fi#25: size=8, align=4, at location [SP]
  fi#26: size=8, align=4, at location [SP]
  fi#27: size=16, align=4, at location [SP]
  fi#28: size=16, align=4, at location [SP]
  fi#29: size=16, align=4, at location [SP]
  fi#30: size=16, align=4, at location [SP]
  fi#31: size=16, align=4, at location [SP]
  fi#32: size=16, align=4, at location [SP]
  fi#33: size=16, align=4, at location [SP]
  fi#34: size=16, align=4, at location [SP]
  fi#35: size=16, align=4, at location [SP]
  fi#36: size=16, align=4, at location [SP]
  fi#37: size=16, align=4, at location [SP]
  fi#38: size=16, align=4, at location [SP]
  fi#39: size=16, align=4, at location [SP]
  fi#40: size=16, align=4, at location [SP]
  fi#41: size=16, align=4, at location [SP]
  fi#42: size=16, align=4, at location [SP]
  fi#43: size=16, align=4, at location [SP]
  fi#44: size=16, align=4, at location [SP]
  fi#45: size=16, align=4, at location [SP]
save/restore points:
save points are empty
restore points are empty
Function Live Ins: $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr5, $sgpr6_sgpr7, $sgpr8, $sgpr12_sgpr13, $sgpr14, $sgpr15, $sgpr16

0B	bb.0 (%ir-block.30):
	  successors: %bb.2(0x40000000), %bb.1(0x40000000); %bb.2(50.00%), %bb.1(50.00%)
	  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
96B	  renamable $sgpr24_sgpr25 = COPY $sgpr6_sgpr7
144B	  renamable $sgpr20_sgpr21 = COPY $sgpr2_sgpr3
176B	  renamable $vgpr227 = COPY $vgpr0
192B	  early-clobber renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
208B	  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
224B	  renamable $vgpr1 = V_MOV_B32_e32 0, implicit $exec
240B	  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode, debug-location !8; moe_op_gemm_a8w4.py:190
256B	  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr6_sgpr7, renamable $vgpr1, 0, 0, implicit $exec, debug-location !10 :: (load (s32) from %ir.22, addrspace 1); moe_op_gemm_a8w4.py:294:37
272B	  renamable $sgpr6 = V_READFIRSTLANE_B32 $vgpr0, implicit $exec, debug-location !10; moe_op_gemm_a8w4.py:294:37
288B	  renamable $vgpr0 = V_SUB_U32_e32 $sgpr2, killed $vgpr0, implicit $exec, debug-location !11; moe_op_gemm_a8w4.py:294:29
304B	  renamable $sgpr2 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !12; moe_op_gemm_a8w4.py:302:38
320B	  renamable $vcc = V_CMP_GT_I32_e64 1, killed $vgpr0, implicit $exec, debug-location !13; moe_op_gemm_a8w4.py:303:19
336B	  S_CMP_LT_I32 renamable $sgpr16, renamable $sgpr2, implicit-def $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
352B	  renamable $sgpr10_sgpr11 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
368B	  renamable $sgpr10_sgpr11 = S_OR_B64 killed renamable $vcc, killed renamable $sgpr10_sgpr11, implicit-def dead $scc
384B	  renamable $vcc = S_AND_B64 $exec, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !15; moe_op_gemm_a8w4.py:303:25
416B	  S_CBRANCH_VCCNZ %bb.2, implicit $vcc, debug-location !15; moe_op_gemm_a8w4.py:303:25
432B	  S_BRANCH %bb.1, debug-location !15; moe_op_gemm_a8w4.py:303:25

448B	bb.1.common.ret:
	; predecessors: %bb.0, %bb.2, %bb.71

464B	  S_ENDPGM 0, debug-location !16; moe_op_gemm_a8w4.py:0

480B	bb.2 (%ir-block.39):
	; predecessors: %bb.0
	  successors: %bb.3(0x50000000), %bb.1(0x30000000); %bb.3(62.50%), %bb.1(37.50%)
	  liveins: $sgpr2, $sgpr5, $sgpr6, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr1, $vgpr227, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000C, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
512B	  renamable $sgpr4 = S_ASHR_I32 renamable $sgpr2, 31, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
528B	  renamable $sgpr4 = S_LSHR_B32 killed renamable $sgpr4, 29, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
544B	  renamable $sgpr4 = S_ADD_I32 renamable $sgpr2, killed renamable $sgpr4, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
560B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 3, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
576B	  renamable $sgpr4 = S_AND_B32 killed renamable $sgpr4, -8, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
592B	  renamable $sgpr4 = S_SUB_I32 renamable $sgpr2, killed renamable $sgpr4, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
608B	  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr16, 31, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
624B	  renamable $sgpr9 = S_LSHR_B32 killed renamable $sgpr9, 29, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
640B	  renamable $sgpr9 = S_ADD_I32 renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
656B	  renamable $sgpr10 = S_ASHR_I32 renamable $sgpr9, 3, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
800B	  renamable $sgpr2 = S_ABS_I32 killed renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
816B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr2, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
832B	  renamable $sgpr9 = S_AND_B32 killed renamable $sgpr9, -8, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
848B	  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
864B	  renamable $sgpr7 = nsw S_MUL_I32 killed renamable $sgpr7, renamable $sgpr9, debug-location !23; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:309:61 ]
880B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
896B	  renamable $sgpr4 = S_MIN_I32 killed renamable $sgpr9, killed renamable $sgpr4, implicit-def dead $scc, debug-location !24; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:309:61 ]
912B	  renamable $sgpr4 = nsw S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr10, implicit-def dead $scc, debug-location !25; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:309:61 ]
928B	  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !26; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:309:61 ]
944B	  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
960B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
976B	  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
992B	  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1024B	  renamable $sgpr7 = S_SUB_I32 0, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1040B	  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
1056B	  renamable $sgpr7 = S_MUL_I32 killed renamable $sgpr7, renamable $sgpr10, debug-location !27; moe_op_gemm_a8w4.py:311:26
1072B	  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr7, debug-location !27; moe_op_gemm_a8w4.py:311:26
1088B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr7, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1104B	  renamable $sgpr7 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr10, debug-location !27; moe_op_gemm_a8w4.py:311:26
1120B	  renamable $sgpr7 = S_MUL_I32 killed renamable $sgpr7, renamable $sgpr2, debug-location !27; moe_op_gemm_a8w4.py:311:26
1136B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1152B	  renamable $sgpr7 = S_SUB_I32 renamable $sgpr4, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1168B	  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr2, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1184B	  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr4, implicit $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1200B	  renamable $sgpr7 = S_SUB_I32 renamable $sgpr4, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1216B	  S_CMP_GE_U32 renamable $sgpr4, killed renamable $sgpr2, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1232B	  renamable $sgpr2 = S_CSELECT_B32 killed renamable $sgpr7, killed renamable $sgpr4, implicit $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1280B	  renamable $sgpr7 = S_LSHL_B32 killed renamable $sgpr3, 2, implicit-def dead $scc, debug-location !28; pid_preprocessing.py:72:42 @[ moe_op_gemm_a8w4.py:314:56 ]
1328B	  renamable $sgpr3 = S_ABS_I32 renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1344B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1360B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1376B	  renamable $sgpr2 = S_XOR_B32 killed renamable $sgpr2, renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1392B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr2, killed renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1408B	  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1424B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1440B	  renamable $sgpr2 = S_XOR_B32 renamable $sgpr4, renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1456B	  renamable $sgpr2 = S_ASHR_I32 killed renamable $sgpr2, 31, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1472B	  renamable $sgpr9 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1488B	  renamable $sgpr10 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1504B	  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, renamable $sgpr10, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1520B	  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr10, killed renamable $sgpr9, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1536B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr9, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1552B	  renamable $sgpr11 = S_ABS_I32 renamable $sgpr4, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1568B	  renamable $sgpr9 = S_MUL_HI_U32 renamable $sgpr11, killed renamable $sgpr10, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1584B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr9, renamable $sgpr3, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1600B	  renamable $sgpr10 = S_SUB_I32 renamable $sgpr11, killed renamable $sgpr10, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1616B	  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1632B	  renamable $sgpr17 = S_SUB_I32 renamable $sgpr10, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1648B	  S_CMP_GE_U32 renamable $sgpr10, renamable $sgpr3, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1664B	  renamable $sgpr9 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1680B	  renamable $sgpr10 = S_CSELECT_B32 killed renamable $sgpr17, killed renamable $sgpr10, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1696B	  renamable $sgpr16 = S_ADD_I32 renamable $sgpr9, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1712B	  S_CMP_GE_U32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1728B	  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr16, killed renamable $sgpr9, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1744B	  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr2, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1760B	  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr2, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1776B	  renamable $sgpr2 = S_LSHL_B32 renamable $sgpr9, 2, implicit-def dead $scc, debug-location !33; pid_preprocessing.py:74:33 @[ moe_op_gemm_a8w4.py:314:56 ]
1792B	  renamable $sgpr3 = S_SUB_I32 killed renamable $sgpr6, renamable $sgpr2, implicit-def dead $scc, debug-location !34; pid_preprocessing.py:75:39 @[ moe_op_gemm_a8w4.py:314:56 ]
1808B	  renamable $sgpr10 = S_MIN_I32 killed renamable $sgpr3, 4, implicit-def dead $scc, debug-location !35; pid_preprocessing.py:75:52 @[ moe_op_gemm_a8w4.py:314:56 ]
1840B	  renamable $sgpr3 = S_ABS_I32 renamable $sgpr10, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1856B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1872B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1888B	  renamable $vgpr0 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1904B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1920B	  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 144, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
1936B	  renamable $sgpr18 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1952B	  renamable $sgpr6 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1968B	  renamable $sgpr19 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1984B	  renamable $sgpr6 = S_MUL_I32 killed renamable $sgpr6, renamable $sgpr19, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2000B	  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr19, killed renamable $sgpr6, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2016B	  renamable $sgpr6 = S_ADD_I32 killed renamable $sgpr19, killed renamable $sgpr6, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2032B	  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr11, renamable $sgpr6, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2048B	  renamable $sgpr19 = S_MUL_I32 killed renamable $sgpr19, renamable $sgpr3, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2064B	  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr11, killed renamable $sgpr19, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2080B	  renamable $sgpr19 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2096B	  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2112B	  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr19, killed renamable $sgpr11, implicit $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2128B	  renamable $sgpr19 = S_SUB_I32 renamable $sgpr11, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2144B	  S_CMP_GE_U32 renamable $sgpr11, renamable $sgpr3, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2160B	  renamable $sgpr11 = S_CSELECT_B32 killed renamable $sgpr19, killed renamable $sgpr11, implicit $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2176B	  renamable $sgpr11 = S_XOR_B32 killed renamable $sgpr11, renamable $sgpr18, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2192B	  renamable $sgpr11 = S_SUB_I32 killed renamable $sgpr11, killed renamable $sgpr18, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
2208B	  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr2, killed renamable $sgpr11, implicit-def dead $scc, debug-location !37; pid_preprocessing.py:77:31 @[ moe_op_gemm_a8w4.py:314:56 ]
2224B	  renamable $sgpr19 = S_ASHR_I32 renamable $sgpr18, 31, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2272B	  renamable $sgpr18_sgpr19 = S_LSHL_B64 killed renamable $sgpr18_sgpr19, 2, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2288B	  renamable $sgpr16 = S_ADD_U32 renamable $sgpr16, renamable $sgpr18, implicit-def $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2304B	  renamable $sgpr17 = S_ADDC_U32 killed renamable $sgpr17, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2352B	  renamable $vgpr1 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr16_sgpr17, killed renamable $vgpr1, 0, 0, implicit $exec, debug-location !38 :: (load (s32) from %ir.162, addrspace 1); moe_op_gemm_a8w4.py:319:24
2368B	  renamable $vcc = V_CMP_EQ_U32_e64 -1, $vgpr1, implicit $exec, debug-location !39; moe_op_gemm_a8w4.py:320:20
2384B	  $vcc = S_AND_B64 $exec, killed renamable $vcc, implicit-def dead $scc, debug-location !39; moe_op_gemm_a8w4.py:320:20
2400B	  renamable $sgpr2 = S_MOV_B32 0
2416B	  S_CBRANCH_VCCNZ %bb.1, implicit $vcc, debug-location !39; moe_op_gemm_a8w4.py:320:20

2432B	bb.3 (%ir-block.166):
	; predecessors: %bb.2
	  successors: %bb.6(0x40000000), %bb.4(0x40000000); %bb.6(50.00%), %bb.4(50.00%)
	  liveins: $sgpr3, $sgpr4, $sgpr5, $sgpr6, $sgpr7, $sgpr8, $sgpr9, $sgpr10, $sgpr14, $sgpr15, $vgpr1, $vgpr227, $sgpr0_sgpr1, $sgpr2_sgpr3:0x0000000000000003, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
2464B	  early-clobber renamable $sgpr16_sgpr17_sgpr18_sgpr19 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
2848B	  renamable $vgpr83 = V_AND_B32_e32 65535, $vgpr1, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
2896B	  renamable $vgpr2 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr83, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
2912B	  renamable $vgpr104 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr18_sgpr19, renamable $vgpr2, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
2928B	  renamable $sgpr18_sgpr19 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
2944B	  renamable $sgpr10 = S_ASHR_I32 killed renamable $sgpr10, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
2960B	  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, killed renamable $sgpr7, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
2976B	  renamable $vgpr0 = V_ASHRREV_I32_e32 16, killed $vgpr1, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
3120B	  renamable $vgpr228 = V_LSHRREV_B32_e32 4, $vgpr227, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4272B	  renamable $sgpr27 = S_MOV_B32 159744
4288B	  renamable $sgpr26 = S_MOV_B32 2147483646
4304B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
4320B	  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr0, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
4336B	  renamable $vgpr234 = disjoint V_OR_B32_e32 32, $vgpr228, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4352B	  renamable $vgpr232 = disjoint V_OR_B32_e32 64, $vgpr228, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4368B	  renamable $vgpr230 = disjoint V_OR_B32_e32 96, $vgpr228, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4384B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4400B	  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4416B	  renamable $vgpr236_vgpr237 = nsw V_LSHLREV_B64_e64 7, killed $vgpr0_vgpr1, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
4432B	  renamable $sgpr7 = S_XOR_B32 killed renamable $sgpr7, killed renamable $sgpr10, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4448B	  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr6, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4464B	  renamable $vgpr106 = V_OR_B32_e32 $vgpr236, $vgpr228, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4480B	  renamable $vgpr229 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, killed renamable $vgpr2, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
4496B	  renamable $vgpr112 = V_OR_B32_e32 $vgpr236, $vgpr234, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4512B	  renamable $vgpr110 = V_OR_B32_e32 $vgpr236, $vgpr232, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4528B	  renamable $vgpr108 = V_OR_B32_e32 $vgpr236, $vgpr230, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4544B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr236, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4560B	  renamable $sgpr9 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4576B	  renamable $sgpr10 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4592B	  renamable $vgpr1 = V_SUB_U32_e32 0, $vgpr106, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4608B	  renamable $vgpr2 = V_SUB_U32_e32 0, $vgpr112, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4624B	  renamable $vgpr3 = V_SUB_U32_e32 0, $vgpr110, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4640B	  renamable $vgpr4 = V_SUB_U32_e32 0, $vgpr108, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4656B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4672B	  renamable $vgpr1 = V_MAX_I32_e32 killed $vgpr1, $vgpr106, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4688B	  renamable $vgpr2 = V_MAX_I32_e32 killed $vgpr2, $vgpr112, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4704B	  renamable $vgpr3 = V_MAX_I32_e32 killed $vgpr3, $vgpr110, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4720B	  renamable $vgpr4 = V_MAX_I32_e32 killed $vgpr4, $vgpr108, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4768B	  renamable $sgpr18 = COPY renamable $sgpr26, debug-location !53; moe_op_gemm_a8w4.py:338:27
4784B	  renamable $sgpr19 = COPY renamable $sgpr27, debug-location !53; moe_op_gemm_a8w4.py:338:27
4800B	  renamable $vgpr5 = V_SUB_U32_e32 0, $vgpr104, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4816B	  renamable $vgpr5 = V_MAX_I32_e32 $vgpr104, killed $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4832B	  renamable $vgpr6 = V_CVT_F32_U32_e32 $vgpr5, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4848B	  renamable $sgpr9 = S_SUB_I32 renamable $sgpr4, renamable $sgpr3, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4864B	  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4880B	  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr10, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4896B	  renamable $vgpr6 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4912B	  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr4, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4928B	  renamable $sgpr9 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4944B	  S_CMP_GE_U32 killed renamable $sgpr4, killed renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4960B	  renamable $vgpr6 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4976B	  renamable $vgpr6 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4992B	  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
5008B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !53; moe_op_gemm_a8w4.py:338:27
5024B	  renamable $vgpr7 = V_SUB_U32_e32 0, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5040B	  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr7, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5056B	  renamable $vgpr7 = V_MUL_HI_U32_e64 $vgpr6, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5072B	  renamable $vgpr6 = V_ADD_U32_e32 killed $vgpr6, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5088B	  renamable $vgpr7 = V_MUL_HI_U32_e64 $vgpr1, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5104B	  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr2, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5120B	  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr3, $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5136B	  renamable $vgpr6 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5152B	  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr7, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5168B	  renamable $vgpr8 = V_MUL_LO_U32_e64 killed $vgpr8, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5184B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr9, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5200B	  renamable $vgpr6 = V_MUL_LO_U32_e64 killed $vgpr6, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5216B	  renamable $vgpr1 = V_SUB_U32_e32 killed $vgpr1, killed $vgpr7, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5232B	  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr2, killed $vgpr8, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5248B	  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, killed $vgpr9, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5264B	  renamable $vgpr4 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr6, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5280B	  renamable $vgpr6 = V_SUB_U32_e32 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5296B	  renamable $vgpr7 = V_SUB_U32_e32 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5312B	  renamable $vgpr8 = V_SUB_U32_e32 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5328B	  renamable $vgpr9 = V_SUB_U32_e32 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5344B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5360B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5376B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5392B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5408B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5424B	  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5440B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5456B	  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5472B	  renamable $vgpr6 = V_SUB_U32_e32 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5488B	  renamable $vgpr7 = V_SUB_U32_e32 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5504B	  renamable $vgpr8 = V_SUB_U32_e32 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5520B	  renamable $vgpr9 = V_SUB_U32_e32 $vgpr4, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5536B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr1, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5552B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5568B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr2, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5584B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5600B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr3, $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5616B	  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5632B	  renamable $vcc = V_CMP_GE_U32_e64 $vgpr4, killed $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5648B	  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5664B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5680B	  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5696B	  renamable $vgpr3 = V_XOR_B32_e32 killed $vgpr3, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5712B	  renamable $vgpr4 = V_XOR_B32_e32 killed $vgpr4, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5728B	  renamable $vgpr1 = V_SUB_U32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5744B	  renamable $vgpr2 = V_SUB_U32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5760B	  renamable $vgpr3 = V_SUB_U32_e32 killed $vgpr3, $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5776B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5792B	  renamable $vgpr1 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr1, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5824B	  renamable $vgpr2 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr2, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5856B	  renamable $vgpr3 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr3, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5888B	  renamable $vgpr0 = V_ADD_LSHL_U32_e64 $vgpr229, killed $vgpr0, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5904B	  renamable $vgpr4 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr1, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5920B	  renamable $vgpr5 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr2, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5936B	  renamable $vgpr6 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr3, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5952B	  renamable $vgpr7 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5968B	  KILL killed renamable $vgpr0
5984B	  KILL killed renamable $sgpr16_sgpr17_sgpr18, renamable $sgpr19
6000B	  KILL killed renamable $vgpr3
6016B	  KILL killed renamable $vgpr2
6032B	  KILL killed renamable $vgpr1
6048B	  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
6320B	  renamable $vgpr80 = V_AND_B32_e32 15, $vgpr227, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6560B	  renamable $vgpr0 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
6576B	  renamable $vgpr114 = V_LSHLREV_B32_e32 4, $vgpr80, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6592B	  renamable $sgpr4 = S_ADD_I32 renamable $sgpr23, 255, implicit-def dead $scc, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
6608B	  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
6624B	  renamable $sgpr34 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
6640B	  renamable $sgpr35 = S_ASHR_I32 renamable $sgpr34, 31, implicit-def dead $scc, debug-location !47; moe_op_gemm_a8w4.py:328:28
6656B	  S_CMPK_GT_I32 renamable $sgpr4, 255, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
6672B	  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr4, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6688B	  renamable $vgpr2 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6704B	  renamable $vgpr3 = V_ASHRREV_I32_e32 31, $vgpr6, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6720B	  renamable $vgpr8 = V_ASHRREV_I32_e32 31, $vgpr7, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6736B	  renamable $vgpr1 = V_LSHRREV_B32_e32 29, killed $vgpr1, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6752B	  renamable $vgpr2 = V_LSHRREV_B32_e32 29, killed $vgpr2, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6768B	  renamable $vgpr3 = V_LSHRREV_B32_e32 29, killed $vgpr3, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6784B	  renamable $vgpr8 = V_LSHRREV_B32_e32 29, killed $vgpr8, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6800B	  renamable $vgpr1 = V_ADD_U32_e32 killed $vgpr4, killed $vgpr1, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6816B	  renamable $vgpr2 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr2, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6832B	  renamable $vgpr3 = V_ADD_U32_e32 killed $vgpr6, killed $vgpr3, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6848B	  renamable $vgpr4 = V_ADD_U32_e32 killed $vgpr7, killed $vgpr8, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6864B	  renamable $vgpr1 = V_ASHRREV_I32_e32 3, killed $vgpr1, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6880B	  renamable $vgpr2 = V_ASHRREV_I32_e32 3, killed $vgpr2, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6896B	  renamable $vgpr3 = V_ASHRREV_I32_e32 3, killed $vgpr3, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6912B	  renamable $vgpr4 = V_ASHRREV_I32_e32 3, killed $vgpr4, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6928B	  renamable $vgpr34_vgpr35, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr1, $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6944B	  renamable $vgpr36_vgpr37, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr2, $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6960B	  renamable $vgpr38_vgpr39, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr3, $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6976B	  renamable $vgpr40_vgpr41, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr4, killed $sgpr8, $vgpr114_vgpr115, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6992B	  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
7008B	  renamable $sgpr25 = S_AND_B32 renamable $sgpr25, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
7024B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr34, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7056B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr36, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7088B	  renamable $vgpr3 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr38, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7120B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, $vgpr40, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7136B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr1, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7152B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr2, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7168B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr3, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7184B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr0, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7200B	  KILL killed renamable $vgpr2
7216B	  KILL killed renamable $vgpr1
7232B	  KILL killed renamable $vgpr0
7248B	  KILL killed renamable $vgpr3
7264B	  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
7280B	  renamable $vgpr5 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
7296B	  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
7312B	  renamable $vgpr0 = V_LSHRREV_B32_e32 5, $vgpr227, implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
7328B	  renamable $vgpr2 = V_OR_B32_e32 $sgpr8, killed $vgpr0, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7344B	  renamable $vgpr3 = COPY renamable $sgpr9, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7392B	  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7440B	  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7472B	  renamable $sgpr3 = COPY killed renamable $sgpr9, debug-location !67; moe_op_gemm_a8w4.py:362:77
7488B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7504B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7520B	  renamable $vgpr6_vgpr7 = IMPLICIT_DEF
7552B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7568B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7584B	  renamable $sgpr8_sgpr9 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7600B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !67; moe_op_gemm_a8w4.py:362:77
7616B	  S_CBRANCH_EXECZ %bb.4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7632B	  S_BRANCH %bb.6, debug-location !67; moe_op_gemm_a8w4.py:362:77

7648B	bb.4.Flow349:
	; predecessors: %bb.3, %bb.6
	  successors: %bb.5(0x40000000), %bb.7(0x40000000); %bb.5(50.00%), %bb.7(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr2_vgpr3:0x0000000000000003, $vgpr6_vgpr7:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
7664B	  renamable $sgpr8_sgpr9 = S_OR_SAVEEXEC_B64 killed renamable $sgpr8_sgpr9, implicit-def $exec, implicit-def $scc, implicit $exec
7712B	  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
7728B	  renamable $vgpr3 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
7776B	  $exec = S_XOR_B64_term $exec, renamable $sgpr8_sgpr9, implicit-def $scc
7792B	  S_CBRANCH_EXECZ %bb.7, implicit $exec
7808B	  S_BRANCH %bb.5

7824B	bb.5 (%ir-block.366):
	; predecessors: %bb.4
	  successors: %bb.7(0x80000000); %bb.7(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr3, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr2_vgpr3:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
7856B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr3, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7872B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7888B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7904B	  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7920B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr10, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7936B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7952B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7968B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr2, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7984B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8000B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr2, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8032B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8048B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8064B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8096B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8112B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8128B	  renamable $vgpr6 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8192B	  S_BRANCH %bb.7, debug-location !67; moe_op_gemm_a8w4.py:362:77

8208B	bb.6 (%ir-block.371):
	; predecessors: %bb.3
	  successors: %bb.4(0x80000000); %bb.4(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x000000000000000C, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
8224B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8256B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
8272B	  renamable $sgpr10 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8288B	  renamable $sgpr11 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8336B	  renamable $sgpr10_sgpr11 = S_XOR_B64 killed renamable $sgpr10_sgpr11, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8352B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr10, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8368B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr11, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8384B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8400B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8416B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8432B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8448B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8464B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8576B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8592B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8608B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr10, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8624B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr11, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8640B	  renamable $sgpr16 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8656B	  renamable $sgpr17 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8672B	  renamable $sgpr18 = S_MUL_I32 renamable $sgpr2, renamable $sgpr16, debug-location !67; moe_op_gemm_a8w4.py:362:77
8688B	  renamable $sgpr19 = S_MUL_I32 renamable $sgpr3, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
8704B	  renamable $sgpr30 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
8720B	  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr30, killed renamable $sgpr18, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8736B	  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr19, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8752B	  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
8768B	  renamable $sgpr30 = S_MUL_I32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
8784B	  renamable $sgpr31 = S_MUL_I32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
8800B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
8816B	  renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr30, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8832B	  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8848B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
8864B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
8880B	  renamable $sgpr31 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr31, debug-location !67; moe_op_gemm_a8w4.py:362:77
8896B	  dead renamable $sgpr30 = S_ADD_U32 killed renamable $sgpr30, killed renamable $sgpr31, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8912B	  renamable $sgpr19 = S_ADDC_U32 killed renamable $sgpr19, killed renamable $sgpr36, implicit-def $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8928B	  renamable $sgpr30 = S_ADDC_U32 killed renamable $sgpr33, 0, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8944B	  renamable $sgpr18 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
8960B	  renamable $sgpr18 = S_ADD_U32 killed renamable $sgpr19, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8976B	  renamable $sgpr19 = S_ADDC_U32 0, killed renamable $sgpr30, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8992B	  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr17, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9008B	  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr16, killed renamable $sgpr19, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9024B	  renamable $sgpr18 = S_MUL_I32 renamable $sgpr2, renamable $sgpr16, debug-location !67; moe_op_gemm_a8w4.py:362:77
9040B	  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
9056B	  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr19, killed renamable $sgpr18, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9072B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
9088B	  renamable $sgpr18 = S_ADD_I32 killed renamable $sgpr18, killed renamable $sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9104B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
9120B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr17, debug-location !67; moe_op_gemm_a8w4.py:362:77
9136B	  renamable $sgpr19 = S_MUL_HI_U32 renamable $sgpr16, renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
9152B	  renamable $sgpr30 = S_MUL_I32 renamable $sgpr16, renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
9168B	  renamable $sgpr31 = S_MUL_HI_U32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
9184B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr17, renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
9200B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr17, killed renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
9216B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9232B	  renamable $sgpr31 = S_ADDC_U32 0, killed renamable $sgpr31, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9248B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr30, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9264B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr31, killed renamable $sgpr19, implicit-def $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9280B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9296B	  renamable $sgpr18 = S_MUL_I32 renamable $sgpr16, killed renamable $sgpr18, debug-location !67; moe_op_gemm_a8w4.py:362:77
9312B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr18, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9328B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9344B	  renamable $sgpr17 = S_ADD_U32 killed renamable $sgpr17, killed renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9360B	  renamable $sgpr16 = S_ADDC_U32 killed renamable $sgpr16, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
9376B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9408B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !67; moe_op_gemm_a8w4.py:362:77
9424B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr0_vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9440B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr3, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9456B	  renamable $vgpr10 = V_XOR_B32_e32 killed $vgpr2, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9472B	  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr10, $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9520B	  renamable $vgpr4 = V_MUL_HI_U32_e64 $vgpr10, $sgpr17, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9568B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr4_vgpr5, 0, killed $vgpr2_vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9584B	  renamable $vgpr6_vgpr7, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9600B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr17, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9616B	  dead renamable $vgpr2 = V_ADD_CO_U32_e32 $vgpr2, $vgpr8, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9632B	  renamable $vgpr4 = V_ADDC_U32_e32 killed $vgpr3, killed $vgpr9, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9648B	  renamable $vgpr7 = V_ADDC_U32_e32 0, $vgpr7, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9728B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr4_vgpr5, 0, killed $vgpr6_vgpr7, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9744B	  renamable $vgpr4 = V_MUL_LO_U32_e64 $sgpr11, $vgpr2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9760B	  renamable $vgpr5 = V_MUL_LO_U32_e64 $sgpr10, $vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9776B	  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr10, killed $vgpr2, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9792B	  renamable $vgpr3 = V_ADD3_U32_e64 $vgpr3, killed $vgpr5, killed $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9808B	  renamable $vgpr4 = V_SUB_U32_e32 $vgpr1, $vgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9840B	  renamable $vgpr5 = COPY renamable $sgpr11, debug-location !67; moe_op_gemm_a8w4.py:362:77
9856B	  renamable $vgpr2, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr10, killed $vgpr2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9872B	  renamable $vgpr4, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr4, killed $vgpr5, $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9888B	  renamable $vgpr5, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9904B	  renamable $vgpr4, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr4, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9920B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr11, $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9936B	  renamable $vgpr6 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9968B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr10, $vgpr5, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9984B	  renamable $vgpr7 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10000B	  renamable $sgpr2_sgpr3 = V_CMP_EQ_U32_e64 $sgpr11, killed $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10016B	  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr6, 0, killed $vgpr7, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10048B	  renamable $vgpr6, dead renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr5, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10064B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr3, killed $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10080B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr11, $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10096B	  renamable $vgpr3 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10128B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr10, $vgpr2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10144B	  renamable $vgpr7 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10160B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr11, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10176B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10192B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10224B	  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10240B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10256B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr3, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10272B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10288B	  renamable $vgpr6, dead renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr1, killed $vgpr0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10352B	  renamable $vgpr2_vgpr3 = IMPLICIT_DEF
10368B	  S_BRANCH %bb.4, debug-location !67; moe_op_gemm_a8w4.py:362:77

10384B	bb.7 (%ir-block.373):
	; predecessors: %bb.4, %bb.5
	  successors: %bb.10(0x40000000), %bb.8(0x40000000); %bb.10(50.00%), %bb.8(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr80, $vgpr83, $vgpr227, $vgpr229, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr6_vgpr7:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
10400B	  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
10432B	  renamable $vgpr115 = V_LSHLREV_B32_e32 3, $vgpr227, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10448B	  renamable $vgpr35 = V_AND_B32_e32 248, $vgpr115, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10464B	  renamable $vgpr37 = V_MUL_LO_U32_e64 $vgpr83, $sgpr2, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
10480B	  renamable $vgpr39 = V_MUL_LO_U32_e64 killed $sgpr3, killed $vgpr6, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10496B	  renamable $vgpr0 = V_ADD3_U32_e64 $vgpr37, $vgpr35, $vgpr39, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10512B	  renamable $sgpr31 = S_MOV_B32 159744
10528B	  renamable $sgpr30 = S_MOV_B32 2147483646
10544B	  renamable $sgpr29 = S_AND_B32 renamable $sgpr29, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
10624B	  renamable $vgpr1 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10640B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr0, $sgpr6_sgpr7, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10672B	  renamable $vgpr0_vgpr1 = BUFFER_LOAD_DWORDX2_OFFEN killed renamable $vgpr0, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
10688B	  renamable $sgpr2 = S_MOV_B32 0
10704B	  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
10720B	  renamable $vgpr231 = V_LSHRREV_B32_e32 3, $vgpr227, implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
10736B	  renamable $vgpr4 = V_OR_B32_e32 $sgpr18, $vgpr231, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10752B	  renamable $vgpr5 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10800B	  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10832B	  renamable $sgpr3 = COPY renamable $sgpr11, debug-location !75; moe_op_gemm_a8w4.py:377:35
10848B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10864B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10880B	  renamable $vgpr2_vgpr3 = IMPLICIT_DEF
10912B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10928B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10944B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10960B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
10976B	  S_CBRANCH_EXECZ %bb.8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10992B	  S_BRANCH %bb.10, debug-location !75; moe_op_gemm_a8w4.py:377:35

11008B	bb.8.Flow348:
	; predecessors: %bb.7, %bb.10
	  successors: %bb.9(0x40000000), %bb.11(0x40000000); %bb.9(50.00%), %bb.11(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
11024B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
11072B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
11120B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
11136B	  S_CBRANCH_EXECZ %bb.11, implicit $exec
11152B	  S_BRANCH %bb.9

11168B	bb.9 (%ir-block.400):
	; predecessors: %bb.8
	  successors: %bb.11(0x80000000); %bb.11(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr4_vgpr5:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
11200B	  renamable $vgpr2 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11216B	  renamable $vgpr2 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11232B	  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11248B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11264B	  renamable $vgpr3 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11280B	  renamable $vgpr3 = V_MUL_HI_U32_e64 $vgpr2, killed $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11296B	  renamable $vgpr2 = V_ADD_U32_e32 killed $vgpr2, killed $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11312B	  renamable $vgpr2 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11328B	  renamable $vgpr2 = V_MUL_LO_U32_e64 killed $vgpr2, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11344B	  renamable $vgpr2 = V_SUB_U32_e32 $vgpr4, killed $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11376B	  renamable $vgpr3 = V_SUBREV_U32_e32 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11392B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11408B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr3, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11440B	  renamable $vgpr3 = V_SUBREV_U32_e32 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11456B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11472B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr3, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11488B	  renamable $vgpr3 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11568B	  S_BRANCH %bb.11, debug-location !75; moe_op_gemm_a8w4.py:377:35

11584B	bb.10 (%ir-block.405):
	; predecessors: %bb.7
	  successors: %bb.8(0x80000000); %bb.8(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr4_vgpr5:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
11600B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11632B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
11648B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11664B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11712B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11728B	  renamable $vgpr2 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11744B	  renamable $vgpr3 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11760B	  renamable $vgpr2 = nofpexcept V_FMAMK_F32 killed $vgpr3, 1333788672, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11776B	  renamable $vgpr2 = nofpexcept V_RCP_F32_e32 killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11792B	  renamable $vgpr2 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11808B	  renamable $vgpr3 = nofpexcept V_MUL_F32_e32 796917760, $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11824B	  renamable $vgpr3 = nofpexcept V_TRUNC_F32_e32 killed $vgpr3, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11840B	  renamable $vgpr2 = nofpexcept V_FMAMK_F32 $vgpr3, -813694976, killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11952B	  renamable $vgpr3 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr3, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11968B	  renamable $vgpr2 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr2, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11984B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12000B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12016B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12032B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12048B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
12064B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12080B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12096B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12112B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12128B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12144B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12160B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12176B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
12192B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12208B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12224B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12240B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
12256B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
12272B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12288B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12304B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12320B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12336B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12352B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12368B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12384B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12400B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
12416B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12432B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12448B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12464B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12480B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12496B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12512B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12528B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12544B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12560B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12576B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12592B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12608B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12624B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12640B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12656B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12672B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12688B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12704B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12720B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12736B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12752B	  renamable $vgpr6 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12784B	  renamable $vgpr7 = COPY renamable $vgpr6, debug-location !75; moe_op_gemm_a8w4.py:377:35
12800B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr4_vgpr5, 0, $vgpr6_vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12816B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr3, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12832B	  renamable $vgpr7 = V_XOR_B32_e32 killed $vgpr2, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12848B	  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr7, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12896B	  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr7, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12912B	  renamable $vgpr9 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12960B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr8_vgpr9, 0, killed $vgpr2_vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12976B	  renamable $vgpr10_vgpr11, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12992B	  renamable $vgpr12_vgpr13, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13008B	  dead renamable $vgpr2 = V_ADD_CO_U32_e32 $vgpr2, $vgpr12, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13024B	  renamable $vgpr8 = V_ADDC_U32_e32 killed $vgpr3, killed $vgpr13, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13040B	  renamable $vgpr11 = V_ADDC_U32_e32 0, $vgpr11, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13120B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, killed $vgpr10_vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13136B	  renamable $vgpr8 = V_MUL_LO_U32_e64 $sgpr37, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13152B	  renamable $vgpr9 = V_MUL_LO_U32_e64 $sgpr36, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13168B	  renamable $vgpr2_vgpr3, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13184B	  renamable $vgpr3 = V_ADD3_U32_e64 $vgpr3, killed $vgpr9, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13200B	  renamable $vgpr8 = V_SUB_U32_e32 $vgpr5, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13232B	  renamable $vgpr9 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
13248B	  renamable $vgpr2, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr7, killed $vgpr2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13264B	  renamable $vgpr7, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr8, $vgpr9, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13280B	  renamable $vgpr8, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13296B	  renamable $vgpr10, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr7, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13312B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13328B	  renamable $vgpr11 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13360B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13376B	  renamable $vgpr12 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13392B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13408B	  renamable $vgpr11 = V_CNDMASK_B32_e64 0, killed $vgpr11, 0, killed $vgpr12, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13440B	  renamable $vgpr7, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr7, killed $vgpr9, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13456B	  renamable $vgpr9, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13472B	  renamable $vgpr7, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr7, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13488B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13504B	  renamable $vgpr7 = V_CNDMASK_B32_e64 0, killed $vgpr10, 0, killed $vgpr7, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13520B	  renamable $vgpr3, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr3, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13536B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13552B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13584B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13600B	  renamable $vgpr10 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13616B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13632B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr10, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13648B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13664B	  renamable $vgpr3 = V_CNDMASK_B32_e64 0, killed $vgpr3, 0, killed $vgpr7, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13680B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13696B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, killed $vgpr2, 0, killed $vgpr5, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13712B	  renamable $vgpr3 = V_XOR_B32_e32 killed $vgpr3, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13728B	  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr2, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13744B	  renamable $vgpr2, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr2, $vgpr6, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13760B	  renamable $vgpr3, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr3, killed $vgpr6, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13856B	  S_BRANCH %bb.8, debug-location !75; moe_op_gemm_a8w4.py:377:35

13872B	bb.11 (%ir-block.407):
	; predecessors: %bb.8, %bb.9
	  successors: %bb.14(0x40000000), %bb.12(0x40000000); %bb.14(50.00%), %bb.12(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
13888B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
13920B	  renamable $vgpr8 = V_OR3_B32_e64 $vgpr231, $sgpr18, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13936B	  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13984B	  renamable $sgpr10 = S_MOV_B32 0
14032B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14048B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14064B	  renamable $vgpr6_vgpr7 = IMPLICIT_DEF
14096B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14112B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14128B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14144B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
14160B	  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14176B	  S_BRANCH %bb.14, debug-location !75; moe_op_gemm_a8w4.py:377:35

14192B	bb.12.Flow347:
	; predecessors: %bb.11, %bb.14
	  successors: %bb.13(0x40000000), %bb.15(0x40000000); %bb.13(50.00%), %bb.15(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
14208B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
14256B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
14304B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
14320B	  S_CBRANCH_EXECZ %bb.15, implicit $exec
14336B	  S_BRANCH %bb.13

14352B	bb.13 (%ir-block.422):
	; predecessors: %bb.12
	  successors: %bb.15(0x80000000); %bb.15(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr8_vgpr9:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
14384B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14400B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14416B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14432B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14448B	  renamable $vgpr6 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14464B	  renamable $vgpr6 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14480B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14496B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14512B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14528B	  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14560B	  renamable $vgpr6 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14576B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14592B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14624B	  renamable $vgpr6 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14640B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14656B	  renamable $vgpr6 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr6, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14672B	  renamable $vgpr7 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14752B	  S_BRANCH %bb.15, debug-location !75; moe_op_gemm_a8w4.py:377:35

14768B	bb.14 (%ir-block.427):
	; predecessors: %bb.11
	  successors: %bb.12(0x80000000); %bb.12(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr8_vgpr9:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
14784B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14816B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
14832B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14848B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14896B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14912B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14928B	  renamable $vgpr6 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14944B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr6, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14960B	  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14976B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14992B	  renamable $vgpr6 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15008B	  renamable $vgpr6 = nofpexcept V_TRUNC_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15024B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr6, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15136B	  renamable $vgpr6 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr6, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15152B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15168B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15184B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15200B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15216B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15232B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
15248B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15264B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15280B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15296B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15312B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15328B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15344B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15360B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
15376B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15392B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15408B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15424B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
15440B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
15456B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15472B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15488B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15504B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15520B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15536B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15552B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15568B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15584B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
15600B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15616B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15632B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15648B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15664B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15680B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15696B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15712B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15728B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15744B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15760B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15776B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15792B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15808B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15824B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15840B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15856B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15872B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15888B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15904B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15920B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15936B	  renamable $vgpr10 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15968B	  renamable $vgpr11 = COPY renamable $vgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15984B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr10_vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16000B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr7, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16016B	  renamable $vgpr11 = V_XOR_B32_e32 killed $vgpr6, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16032B	  renamable $vgpr6_vgpr7, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr11, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16080B	  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr11, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16096B	  renamable $vgpr9 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16144B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 $vgpr8_vgpr9, 0, killed $vgpr6_vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16160B	  renamable $vgpr12_vgpr13, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16176B	  renamable $vgpr14_vgpr15, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16192B	  dead renamable $vgpr6 = V_ADD_CO_U32_e32 $vgpr6, $vgpr14, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16208B	  renamable $vgpr8 = V_ADDC_U32_e32 killed $vgpr7, killed $vgpr15, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16224B	  renamable $vgpr13 = V_ADDC_U32_e32 0, $vgpr13, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16304B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, killed $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16320B	  renamable $vgpr8 = V_MUL_LO_U32_e64 $sgpr37, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16336B	  renamable $vgpr9 = V_MUL_LO_U32_e64 $sgpr36, $vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16352B	  renamable $vgpr6_vgpr7, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr6, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16368B	  renamable $vgpr7 = V_ADD3_U32_e64 $vgpr7, killed $vgpr9, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16384B	  renamable $vgpr8 = V_SUB_U32_e32 $vgpr5, $vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16416B	  renamable $vgpr9 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
16432B	  renamable $vgpr6, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr11, killed $vgpr6, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16448B	  renamable $vgpr8, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr8, $vgpr9, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16464B	  renamable $vgpr11, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr6, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16480B	  renamable $vgpr12, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr8, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16496B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16512B	  renamable $vgpr13 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16544B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr11, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16560B	  renamable $vgpr14 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16576B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16592B	  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr13, 0, killed $vgpr14, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16624B	  renamable $vgpr8, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr8, killed $vgpr9, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16640B	  renamable $vgpr9, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr11, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16656B	  renamable $vgpr8, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr8, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16672B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16688B	  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr12, 0, killed $vgpr8, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16704B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr7, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16720B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16736B	  renamable $vgpr7 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16768B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr6, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16784B	  renamable $vgpr12 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16800B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16816B	  renamable $vgpr7 = V_CNDMASK_B32_e64 0, killed $vgpr7, 0, killed $vgpr12, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16832B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr7, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16848B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16864B	  renamable $vgpr7 = V_CNDMASK_B32_e64 0, killed $vgpr11, 0, killed $vgpr9, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16880B	  renamable $vgpr6 = V_CNDMASK_B32_e64 0, killed $vgpr6, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16896B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16912B	  renamable $vgpr6 = V_XOR_B32_e32 killed $vgpr6, $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16928B	  renamable $vgpr6, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr6, $vgpr10, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16944B	  renamable $vgpr7, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr10, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17024B	  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
17040B	  S_BRANCH %bb.12, debug-location !75; moe_op_gemm_a8w4.py:377:35

17056B	bb.15 (%ir-block.429):
	; predecessors: %bb.12, %bb.13
	  successors: %bb.18(0x40000000), %bb.16(0x40000000); %bb.18(50.00%), %bb.16(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
17072B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
17104B	  renamable $vgpr8 = V_OR_B32_e32 128, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17120B	  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17168B	  renamable $sgpr10 = S_MOV_B32 0
17216B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17232B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17248B	  renamable $vgpr10_vgpr11 = IMPLICIT_DEF
17280B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17296B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17312B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17328B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
17344B	  S_CBRANCH_EXECZ %bb.16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17360B	  S_BRANCH %bb.18, debug-location !75; moe_op_gemm_a8w4.py:377:35

17376B	bb.16.Flow346:
	; predecessors: %bb.15, %bb.18
	  successors: %bb.17(0x40000000), %bb.19(0x40000000); %bb.17(50.00%), %bb.19(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
17392B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
17440B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
17488B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
17504B	  S_CBRANCH_EXECZ %bb.19, implicit $exec
17520B	  S_BRANCH %bb.17

17536B	bb.17 (%ir-block.444):
	; predecessors: %bb.16
	  successors: %bb.19(0x80000000); %bb.19(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
17568B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17584B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17600B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17616B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17632B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17648B	  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17664B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17680B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17696B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17712B	  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17744B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17760B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17776B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17808B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17824B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17840B	  renamable $vgpr10 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17856B	  renamable $vgpr11 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17936B	  S_BRANCH %bb.19, debug-location !75; moe_op_gemm_a8w4.py:377:35

17952B	bb.18 (%ir-block.449):
	; predecessors: %bb.15
	  successors: %bb.16(0x80000000); %bb.16(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
17968B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18000B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18016B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18032B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18080B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18096B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18112B	  renamable $vgpr10 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18128B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr10, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18144B	  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18160B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18176B	  renamable $vgpr10 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18192B	  renamable $vgpr10 = nofpexcept V_TRUNC_F32_e32 killed $vgpr10, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18208B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr10, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18320B	  renamable $vgpr10 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr10, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18336B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18352B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18368B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18384B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18400B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18416B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
18432B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18448B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18464B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18480B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18496B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18512B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18528B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18544B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
18560B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18576B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18592B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18608B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
18624B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
18640B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18656B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18672B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18688B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18704B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18720B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18736B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18752B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18768B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
18784B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18800B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18816B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18832B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18848B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18864B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18880B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18896B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18912B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18928B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18944B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18960B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18976B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18992B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19008B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19024B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19040B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
19056B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19072B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19088B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19104B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19120B	  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19152B	  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
19168B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19184B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19200B	  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19216B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19264B	  renamable $vgpr10 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19280B	  renamable $vgpr11 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19328B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr10_vgpr11, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19344B	  renamable $vgpr14_vgpr15, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19360B	  renamable $vgpr16_vgpr17, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19376B	  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr16, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19392B	  renamable $vgpr10 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr17, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19408B	  renamable $vgpr15 = V_ADDC_U32_e32 0, $vgpr15, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19488B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr10_vgpr11, 0, killed $vgpr14_vgpr15, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19504B	  renamable $vgpr10 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19520B	  renamable $vgpr11 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19536B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19552B	  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr11, killed $vgpr10, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19568B	  renamable $vgpr10 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19600B	  renamable $vgpr11 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
19616B	  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19632B	  renamable $vgpr10, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr10, $vgpr11, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19648B	  renamable $vgpr13, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19664B	  renamable $vgpr14, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr10, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19680B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19696B	  renamable $vgpr15 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19728B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19744B	  renamable $vgpr16 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19760B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19776B	  renamable $vgpr15 = V_CNDMASK_B32_e64 0, killed $vgpr15, 0, killed $vgpr16, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19808B	  renamable $vgpr10, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr10, killed $vgpr11, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19824B	  renamable $vgpr11, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr13, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19840B	  renamable $vgpr10, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr10, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19856B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr15, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19872B	  renamable $vgpr10 = V_CNDMASK_B32_e64 0, killed $vgpr14, 0, killed $vgpr10, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19888B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19904B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19920B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19952B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19968B	  renamable $vgpr14 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19984B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20000B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr14, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20016B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20032B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr10, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20048B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr13, 0, killed $vgpr11, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20064B	  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20080B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20096B	  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20112B	  renamable $vgpr10, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20128B	  renamable $vgpr11, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20208B	  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
20224B	  S_BRANCH %bb.16, debug-location !75; moe_op_gemm_a8w4.py:377:35

20240B	bb.19 (%ir-block.451):
	; predecessors: %bb.16, %bb.17
	  successors: %bb.22(0x40000000), %bb.20(0x40000000); %bb.22(50.00%), %bb.20(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
20256B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
20288B	  renamable $vgpr8 = V_OR_B32_e32 192, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20304B	  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20352B	  renamable $sgpr10 = S_MOV_B32 0
20400B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20416B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20432B	  renamable $vgpr14_vgpr15 = IMPLICIT_DEF
20464B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20480B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20496B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20512B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
20528B	  S_CBRANCH_EXECZ %bb.20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20544B	  S_BRANCH %bb.22, debug-location !75; moe_op_gemm_a8w4.py:377:35

20560B	bb.20.Flow345:
	; predecessors: %bb.19, %bb.22
	  successors: %bb.21(0x40000000), %bb.23(0x40000000); %bb.21(50.00%), %bb.23(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
20576B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
20624B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
20672B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
20688B	  S_CBRANCH_EXECZ %bb.23, implicit $exec
20704B	  S_BRANCH %bb.21

20720B	bb.21 (%ir-block.466):
	; predecessors: %bb.20
	  successors: %bb.23(0x80000000); %bb.23(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
20752B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20768B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20784B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20800B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20816B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20832B	  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20848B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20864B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20880B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20896B	  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20928B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20944B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20960B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20992B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21008B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21024B	  renamable $vgpr14 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21040B	  renamable $vgpr15 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21120B	  S_BRANCH %bb.23, debug-location !75; moe_op_gemm_a8w4.py:377:35

21136B	bb.22 (%ir-block.471):
	; predecessors: %bb.19
	  successors: %bb.20(0x80000000); %bb.20(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
21152B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21184B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
21200B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21216B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21264B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21280B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21296B	  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21312B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21328B	  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21344B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21360B	  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21376B	  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21392B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21504B	  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21520B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21536B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21552B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21568B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21584B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21600B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
21616B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21632B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21648B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21664B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21680B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21696B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21712B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21728B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
21744B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21760B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21776B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21792B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
21808B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
21824B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21840B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21856B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21872B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21888B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21904B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21920B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21936B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21952B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
21968B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21984B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22000B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
22016B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22032B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22048B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
22064B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22080B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22096B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22112B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22128B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22144B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22160B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22176B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22192B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22208B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22224B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22240B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22256B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22272B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22288B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22304B	  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22336B	  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
22352B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22368B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22384B	  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22400B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22448B	  renamable $vgpr14 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22464B	  renamable $vgpr15 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22512B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr14_vgpr15, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22528B	  renamable $vgpr16_vgpr17, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22544B	  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22560B	  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr18, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22576B	  renamable $vgpr14 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr19, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22592B	  renamable $vgpr17 = V_ADDC_U32_e32 0, $vgpr17, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22672B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr14_vgpr15, 0, killed $vgpr16_vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22688B	  renamable $vgpr14 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22704B	  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22720B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22736B	  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr15, killed $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22752B	  renamable $vgpr14 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22784B	  renamable $vgpr15 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
22800B	  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22816B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr14, $vgpr15, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22832B	  renamable $vgpr14, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22848B	  renamable $vgpr16, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22864B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22880B	  renamable $vgpr17 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22912B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr14, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22928B	  renamable $vgpr18 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22944B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22960B	  renamable $vgpr17 = V_CNDMASK_B32_e64 0, killed $vgpr17, 0, killed $vgpr18, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22992B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr15, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23008B	  renamable $vgpr15, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr14, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23024B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23040B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23056B	  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23072B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23088B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23104B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23136B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23152B	  renamable $vgpr16 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23168B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23184B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr16, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23200B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23216B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23232B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr14, 0, killed $vgpr15, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23248B	  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23264B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23280B	  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23296B	  renamable $vgpr14, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23312B	  renamable $vgpr15, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23392B	  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
23408B	  S_BRANCH %bb.20, debug-location !75; moe_op_gemm_a8w4.py:377:35

23424B	bb.23 (%ir-block.473):
	; predecessors: %bb.20, %bb.21
	  successors: %bb.26(0x40000000), %bb.24(0x40000000); %bb.26(50.00%), %bb.24(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
23440B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
23472B	  renamable $vgpr8 = V_OR_B32_e32 256, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23488B	  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23536B	  renamable $sgpr10 = S_MOV_B32 0
23584B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23600B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23616B	  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
23648B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23664B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23680B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23696B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
23712B	  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23728B	  S_BRANCH %bb.26, debug-location !75; moe_op_gemm_a8w4.py:377:35

23744B	bb.24.Flow344:
	; predecessors: %bb.23, %bb.26
	  successors: %bb.25(0x40000000), %bb.27(0x40000000); %bb.25(50.00%), %bb.27(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
23760B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
23808B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
23856B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
23872B	  S_CBRANCH_EXECZ %bb.27, implicit $exec
23888B	  S_BRANCH %bb.25

23904B	bb.25 (%ir-block.488):
	; predecessors: %bb.24
	  successors: %bb.27(0x80000000); %bb.27(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
23936B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23952B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23968B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23984B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24000B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24016B	  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24032B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24048B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24064B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24080B	  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24112B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24128B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24144B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24176B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24192B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24208B	  renamable $vgpr18 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24224B	  renamable $vgpr19 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24304B	  S_BRANCH %bb.27, debug-location !75; moe_op_gemm_a8w4.py:377:35

24320B	bb.26 (%ir-block.493):
	; predecessors: %bb.23
	  successors: %bb.24(0x80000000); %bb.24(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
24336B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24368B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
24384B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24400B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24448B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24464B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24480B	  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24496B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24512B	  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24528B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24544B	  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24560B	  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24576B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24688B	  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24704B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24720B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24736B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24752B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24768B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24784B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
24800B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
24816B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
24832B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24848B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24864B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24880B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24896B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
24912B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
24928B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24944B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24960B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24976B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
24992B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
25008B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25024B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25040B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25056B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25072B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25088B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25104B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25120B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25136B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
25152B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
25168B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25184B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
25200B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25216B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25232B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
25248B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25264B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25280B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25296B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25312B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25328B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25344B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25360B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25376B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25392B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25408B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25424B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25440B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25456B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25472B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25488B	  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25520B	  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
25536B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25552B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25568B	  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25584B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25632B	  renamable $vgpr16 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25648B	  renamable $vgpr17 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25696B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr16_vgpr17, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25712B	  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25728B	  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25744B	  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr20, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25760B	  renamable $vgpr16 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr21, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25776B	  renamable $vgpr19 = V_ADDC_U32_e32 0, $vgpr19, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25856B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr16_vgpr17, 0, killed $vgpr18_vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25872B	  renamable $vgpr16 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25888B	  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25904B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25920B	  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, killed $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25936B	  renamable $vgpr16 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25968B	  renamable $vgpr17 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
25984B	  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26000B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr16, $vgpr17, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26016B	  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26032B	  renamable $vgpr18, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26048B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26064B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26096B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26112B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26128B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26144B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, killed $vgpr19, 0, killed $vgpr20, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26176B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr17, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26192B	  renamable $vgpr17, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26208B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26224B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26240B	  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr18, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26256B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26272B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26288B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26320B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26336B	  renamable $vgpr18 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26352B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26368B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr18, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26384B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26400B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26416B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr17, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26432B	  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26448B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26464B	  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26480B	  renamable $vgpr18, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26496B	  renamable $vgpr19, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26576B	  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
26592B	  S_BRANCH %bb.24, debug-location !75; moe_op_gemm_a8w4.py:377:35

26608B	bb.27 (%ir-block.495):
	; predecessors: %bb.24, %bb.25
	  successors: %bb.30(0x40000000), %bb.28(0x40000000); %bb.30(50.00%), %bb.28(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
26624B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
26656B	  renamable $vgpr8 = V_OR_B32_e32 320, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26672B	  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26720B	  renamable $sgpr10 = S_MOV_B32 0
26768B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26784B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26800B	  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
26832B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26848B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26864B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26880B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
26896B	  S_CBRANCH_EXECZ %bb.28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26912B	  S_BRANCH %bb.30, debug-location !75; moe_op_gemm_a8w4.py:377:35

26928B	bb.28.Flow343:
	; predecessors: %bb.27, %bb.30
	  successors: %bb.29(0x40000000), %bb.31(0x40000000); %bb.29(50.00%), %bb.31(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
26944B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
26992B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
27040B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
27056B	  S_CBRANCH_EXECZ %bb.31, implicit $exec
27072B	  S_BRANCH %bb.29

27088B	bb.29 (%ir-block.510):
	; predecessors: %bb.28
	  successors: %bb.31(0x80000000); %bb.31(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
27120B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27136B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27152B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27168B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27184B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27200B	  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27216B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27232B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27248B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27264B	  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27296B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27312B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27328B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27360B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27376B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27392B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27408B	  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27488B	  S_BRANCH %bb.31, debug-location !75; moe_op_gemm_a8w4.py:377:35

27504B	bb.30 (%ir-block.515):
	; predecessors: %bb.27
	  successors: %bb.28(0x80000000); %bb.28(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
27520B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27552B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
27568B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27584B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27632B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27648B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27664B	  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27680B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27696B	  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27712B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27728B	  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27744B	  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27760B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27872B	  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27888B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27904B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27920B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27936B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27952B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27968B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
27984B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28000B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28016B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28032B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28048B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28064B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28080B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28096B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
28112B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28128B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28144B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28160B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
28176B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
28192B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28208B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28224B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28240B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28256B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28272B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28288B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28304B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28320B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
28336B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28352B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28368B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28384B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28400B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28416B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28432B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28448B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28464B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28480B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28496B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28512B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28528B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28544B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28560B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28576B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28592B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28608B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28624B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28640B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28656B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28672B	  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28704B	  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
28720B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28736B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28752B	  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28768B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28816B	  renamable $vgpr16 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28832B	  renamable $vgpr17 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28880B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr16_vgpr17, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28896B	  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28912B	  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28928B	  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr22, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28944B	  renamable $vgpr16 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr23, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28960B	  renamable $vgpr21 = V_ADDC_U32_e32 0, $vgpr21, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29040B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr16_vgpr17, 0, killed $vgpr20_vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29056B	  renamable $vgpr16 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29072B	  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29088B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29104B	  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, killed $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29120B	  renamable $vgpr16 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29152B	  renamable $vgpr17 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
29168B	  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29184B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr16, $vgpr17, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29200B	  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29216B	  renamable $vgpr20, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29232B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29248B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29280B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29296B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29312B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29328B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr22, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29360B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr17, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29376B	  renamable $vgpr17, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29392B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29408B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29424B	  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29440B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29456B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29472B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29504B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29520B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29536B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29552B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr20, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29568B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29584B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29600B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr17, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29616B	  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29632B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29648B	  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29664B	  renamable $vgpr22, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29680B	  renamable $vgpr23, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29760B	  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
29776B	  S_BRANCH %bb.28, debug-location !75; moe_op_gemm_a8w4.py:377:35

29792B	bb.31 (%ir-block.517):
	; predecessors: %bb.28, %bb.29
	  successors: %bb.34(0x40000000), %bb.32(0x40000000); %bb.34(50.00%), %bb.32(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
29808B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
29840B	  renamable $vgpr8 = V_OR_B32_e32 384, $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29856B	  renamable $vgpr9 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29904B	  renamable $sgpr10 = S_MOV_B32 0
29952B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29968B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29984B	  renamable $vgpr26_vgpr27 = IMPLICIT_DEF
30016B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30032B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30048B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30064B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
30080B	  S_CBRANCH_EXECZ %bb.32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30096B	  S_BRANCH %bb.34, debug-location !75; moe_op_gemm_a8w4.py:377:35

30112B	bb.32.Flow342:
	; predecessors: %bb.31, %bb.34
	  successors: %bb.33(0x40000000), %bb.35(0x40000000); %bb.33(50.00%), %bb.35(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
30128B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
30176B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
30224B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
30240B	  S_CBRANCH_EXECZ %bb.35, implicit $exec
30256B	  S_BRANCH %bb.33

30272B	bb.33 (%ir-block.532):
	; predecessors: %bb.32
	  successors: %bb.35(0x80000000); %bb.35(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x0000000000000003, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
30304B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30320B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30336B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30352B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30368B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30384B	  renamable $vgpr9 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30400B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30416B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30432B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30448B	  renamable $vgpr5 = V_SUB_U32_e32 killed $vgpr8, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30480B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30496B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30512B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30544B	  renamable $vgpr8 = V_SUBREV_U32_e32 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30560B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30576B	  renamable $vgpr26 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr8, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30592B	  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30672B	  S_BRANCH %bb.35, debug-location !75; moe_op_gemm_a8w4.py:377:35

30688B	bb.34 (%ir-block.537):
	; predecessors: %bb.31
	  successors: %bb.32(0x80000000); %bb.32(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr8_vgpr9:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
30704B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30736B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
30752B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30768B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30816B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30832B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30848B	  renamable $vgpr12 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30864B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 killed $vgpr12, 1333788672, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30880B	  renamable $vgpr5 = nofpexcept V_RCP_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30896B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30912B	  renamable $vgpr12 = nofpexcept V_MUL_F32_e32 796917760, $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30928B	  renamable $vgpr12 = nofpexcept V_TRUNC_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30944B	  renamable $vgpr5 = nofpexcept V_FMAMK_F32 $vgpr12, -813694976, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31056B	  renamable $vgpr12 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr12, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31072B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31088B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31104B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31120B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31136B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31152B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
31168B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31184B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31200B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31216B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31232B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31248B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31264B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31280B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
31296B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31312B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31328B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31344B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
31360B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
31376B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31392B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31408B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31424B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31440B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31456B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31472B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31488B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31504B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
31520B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31536B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31552B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31568B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31584B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31600B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31616B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31632B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31648B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31664B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31680B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31696B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31712B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31728B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31744B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31760B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31776B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31792B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31808B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31824B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31840B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31856B	  renamable $vgpr12 = V_ASHRREV_I32_e32 31, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31888B	  renamable $vgpr13 = COPY renamable $vgpr12, debug-location !75; moe_op_gemm_a8w4.py:377:35
31904B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $vgpr12_vgpr13, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31920B	  renamable $vgpr5 = V_XOR_B32_e32 $vgpr9, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31936B	  renamable $vgpr13 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31952B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr13, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32000B	  renamable $vgpr16 = V_MUL_HI_U32_e64 $vgpr13, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32016B	  renamable $vgpr17 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32064B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 $vgpr16_vgpr17, 0, killed $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32080B	  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32096B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr5, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32112B	  dead renamable $vgpr8 = V_ADD_CO_U32_e32 $vgpr8, $vgpr24, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32128B	  renamable $vgpr16 = V_ADDC_U32_e32 killed $vgpr9, killed $vgpr25, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32144B	  renamable $vgpr21 = V_ADDC_U32_e32 0, $vgpr21, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32224B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr16_vgpr17, 0, killed $vgpr20_vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32240B	  renamable $vgpr16 = V_MUL_LO_U32_e64 $sgpr37, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32256B	  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr36, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32272B	  renamable $vgpr8_vgpr9, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32288B	  renamable $vgpr9 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, killed $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32304B	  renamable $vgpr16 = V_SUB_U32_e32 $vgpr5, $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32336B	  renamable $vgpr17 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
32352B	  renamable $vgpr8, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr13, killed $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32368B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr16, $vgpr17, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32384B	  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32400B	  renamable $vgpr20, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr13, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32416B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32432B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32464B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32480B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32496B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32512B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32544B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr13, killed $vgpr17, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32560B	  renamable $vgpr17, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32576B	  renamable $vgpr13, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32592B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32608B	  renamable $vgpr13 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr13, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32624B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr9, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32640B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32656B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32688B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32704B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32720B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32736B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr20, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32752B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32768B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr13, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32784B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr17, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32800B	  renamable $vgpr8 = V_CNDMASK_B32_e64 0, killed $vgpr8, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32816B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32832B	  renamable $vgpr8 = V_XOR_B32_e32 killed $vgpr8, $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32848B	  renamable $vgpr26, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr8, $vgpr12, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32864B	  renamable $vgpr27, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr12, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32944B	  renamable $vgpr8_vgpr9 = IMPLICIT_DEF
32960B	  S_BRANCH %bb.32, debug-location !75; moe_op_gemm_a8w4.py:377:35

32976B	bb.35 (%ir-block.539):
	; predecessors: %bb.32, %bb.33
	  successors: %bb.38(0x40000000), %bb.36(0x40000000); %bb.38(50.00%), %bb.36(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
32992B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
33024B	  renamable $vgpr4 = V_OR_B32_e32 448, killed $vgpr4, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
33040B	  renamable $vgpr5 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
33088B	  renamable $sgpr10 = S_MOV_B32 0
33136B	  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33152B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33168B	  renamable $vgpr30_vgpr31 = IMPLICIT_DEF
33200B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33216B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33232B	  renamable $sgpr10_sgpr11 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33248B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
33264B	  S_CBRANCH_EXECZ %bb.36, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33280B	  S_BRANCH %bb.38, debug-location !75; moe_op_gemm_a8w4.py:377:35

33296B	bb.36.Flow341:
	; predecessors: %bb.35, %bb.38
	  successors: %bb.37(0x40000000), %bb.39(0x40000000); %bb.37(50.00%), %bb.39(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
33312B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
33392B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
33408B	  S_CBRANCH_EXECZ %bb.39, implicit $exec
33424B	  S_BRANCH %bb.37

33440B	bb.37 (%ir-block.554):
	; predecessors: %bb.36
	  successors: %bb.39(0x80000000); %bb.39(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x0000000000000003, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
33472B	  renamable $vgpr5 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33488B	  renamable $vgpr5 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33504B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33520B	  renamable $vgpr5 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr5, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33536B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33552B	  renamable $vgpr8 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33568B	  renamable $vgpr8 = V_MUL_HI_U32_e64 $vgpr5, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33584B	  renamable $vgpr5 = V_ADD_U32_e32 killed $vgpr5, killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33600B	  renamable $vgpr5 = V_MUL_HI_U32_e64 $vgpr4, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33616B	  renamable $vgpr5 = V_MUL_LO_U32_e64 killed $vgpr5, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33632B	  renamable $vgpr4 = V_SUB_U32_e32 killed $vgpr4, killed $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33664B	  renamable $vgpr5 = V_SUBREV_U32_e32 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33680B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33696B	  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr5, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33728B	  renamable $vgpr5 = V_SUBREV_U32_e32 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33744B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33760B	  renamable $vgpr30 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr5, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33776B	  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33856B	  S_BRANCH %bb.39, debug-location !75; moe_op_gemm_a8w4.py:377:35

33872B	bb.38 (%ir-block.559):
	; predecessors: %bb.35
	  successors: %bb.36(0x80000000); %bb.36(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr4_vgpr5:0x000000000000000F, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
33888B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33920B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
33936B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33952B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34000B	  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34016B	  renamable $vgpr8 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34032B	  renamable $vgpr9 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34048B	  renamable $vgpr8 = nofpexcept V_FMAMK_F32 killed $vgpr9, 1333788672, killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34064B	  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34080B	  renamable $vgpr8 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34096B	  renamable $vgpr9 = nofpexcept V_MUL_F32_e32 796917760, $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34112B	  renamable $vgpr9 = nofpexcept V_TRUNC_F32_e32 killed $vgpr9, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34128B	  renamable $vgpr8 = nofpexcept V_FMAMK_F32 $vgpr9, -813694976, killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34240B	  renamable $vgpr9 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr9, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34256B	  renamable $vgpr8 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr8, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34272B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34288B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34304B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34320B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34336B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
34352B	  renamable $sgpr36 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34368B	  renamable $sgpr37 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34384B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr37, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34400B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr36, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34416B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34432B	  renamable $sgpr37 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34448B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34464B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
34480B	  renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr39, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34496B	  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34512B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34528B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
34544B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
34560B	  dead renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr37, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34576B	  renamable $sgpr36 = S_ADDC_U32 killed renamable $sgpr36, killed renamable $sgpr40, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34592B	  renamable $sgpr37 = S_ADDC_U32 killed renamable $sgpr39, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34608B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34624B	  renamable $sgpr33 = S_ADD_U32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34640B	  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34656B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34672B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34688B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
34704B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34720B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34736B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34752B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34768B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34784B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34800B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34816B	  renamable $sgpr37 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34832B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34848B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34864B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34880B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34896B	  renamable $sgpr38 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34912B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34928B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr38, killed renamable $sgpr36, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34944B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34960B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34976B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34992B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
35008B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
35024B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
35040B	  renamable $vgpr8 = V_ASHRREV_I32_e32 31, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35072B	  renamable $vgpr9 = COPY renamable $vgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
35088B	  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 killed $vgpr4_vgpr5, 0, $vgpr8_vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35104B	  renamable $vgpr9 = V_XOR_B32_e32 $vgpr5, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35120B	  renamable $vgpr24 = V_XOR_B32_e32 killed $vgpr4, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35136B	  renamable $vgpr4_vgpr5, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr24, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35184B	  renamable $vgpr12 = V_MUL_HI_U32_e64 $vgpr24, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35200B	  renamable $vgpr13 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35248B	  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 $vgpr12_vgpr13, 0, killed $vgpr4_vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35264B	  renamable $vgpr16_vgpr17, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr9, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35280B	  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr9, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35296B	  dead renamable $vgpr4 = V_ADD_CO_U32_e32 $vgpr4, $vgpr20, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35312B	  renamable $vgpr12 = V_ADDC_U32_e32 killed $vgpr5, killed $vgpr21, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35328B	  renamable $vgpr17 = V_ADDC_U32_e32 0, $vgpr17, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35408B	  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 killed $vgpr12_vgpr13, 0, killed $vgpr16_vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35424B	  renamable $vgpr12 = V_MUL_LO_U32_e64 $sgpr17, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35440B	  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr16, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35456B	  renamable $vgpr4_vgpr5, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr16, killed $vgpr4, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35472B	  renamable $vgpr5 = V_ADD3_U32_e64 $vgpr5, killed $vgpr13, killed $vgpr12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35488B	  renamable $vgpr12 = V_SUB_U32_e32 $vgpr9, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35520B	  renamable $vgpr13 = COPY renamable $sgpr17, debug-location !75; moe_op_gemm_a8w4.py:377:35
35536B	  renamable $vgpr4, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr24, killed $vgpr4, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35552B	  renamable $vgpr12, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr12, $vgpr13, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35568B	  renamable $vgpr16, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr4, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35584B	  renamable $vgpr17, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr12, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35600B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, $vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35616B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35648B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, $vgpr16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35664B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35680B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, $vgpr17, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35696B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr21, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35728B	  renamable $vgpr12, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr12, killed $vgpr13, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35744B	  renamable $vgpr13, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr16, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35760B	  renamable $vgpr12, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr12, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35776B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35792B	  renamable $vgpr12 = V_CNDMASK_B32_e64 0, killed $vgpr17, 0, killed $vgpr12, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35808B	  renamable $vgpr5, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr9, killed $vgpr5, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35824B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr17, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35840B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35872B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr16, $vgpr4, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35888B	  renamable $vgpr17 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35904B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr17, $vgpr5, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35920B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr9, 0, killed $vgpr17, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35936B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35952B	  renamable $vgpr5 = V_CNDMASK_B32_e64 0, killed $vgpr5, 0, killed $vgpr12, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35968B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, killed $vgpr16, 0, killed $vgpr13, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35984B	  renamable $vgpr4 = V_CNDMASK_B32_e64 0, killed $vgpr4, 0, killed $vgpr9, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36000B	  renamable $vgpr5 = V_XOR_B32_e32 killed $vgpr5, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36016B	  renamable $vgpr4 = V_XOR_B32_e32 killed $vgpr4, $vgpr8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36032B	  renamable $vgpr30, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr4, $vgpr8, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36048B	  renamable $vgpr31, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr5, killed $vgpr8, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36128B	  renamable $vgpr4_vgpr5 = IMPLICIT_DEF
36144B	  S_BRANCH %bb.36, debug-location !75; moe_op_gemm_a8w4.py:377:35

36160B	bb.39 (%ir-block.561):
	; predecessors: %bb.36, %bb.37
	  successors: %bb.41(0x40000000), %bb.40(0x40000000); %bb.41(50.00%), %bb.40(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr2_vgpr3:0x000000000000000F, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
36176B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
36208B	  renamable $vgpr41 = V_LSHLREV_B32_e32 4, $vgpr227, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36224B	  renamable $vgpr42 = V_AND_B32_e32 112, $vgpr41, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36240B	  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
36288B	  renamable $vgpr45 = V_MUL_HI_I32_e64 $vgpr83, $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36304B	  renamable $vgpr44 = V_MUL_LO_U32_e64 $vgpr83, killed $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36352B	  renamable $vgpr32_vgpr33 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, $vgpr44_vgpr45, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
36368B	  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
36416B	  renamable $vgpr3 = V_MUL_LO_U32_e64 $vgpr3, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36432B	  renamable $vgpr4 = V_MUL_LO_U32_e64 $vgpr2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36448B	  renamable $vgpr46_vgpr47, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36512B	  renamable $vgpr2 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr6_sgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36528B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 1, killed $vgpr2, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36544B	  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36560B	  renamable $vgpr47 = V_ADD3_U32_e64 $vgpr47, killed $vgpr4, killed $vgpr3, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36576B	  S_CBRANCH_VCCZ %bb.41, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

36592B	bb.40:
	; predecessors: %bb.39
	  successors: %bb.42(0x80000000); %bb.42(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
36608B	  renamable $vgpr2 = COPY renamable $vgpr43
36624B	  renamable $vgpr3 = COPY renamable $vgpr43
36640B	  renamable $vgpr4 = COPY renamable $vgpr43
36656B	  renamable $vgpr5 = COPY renamable $vgpr43
36672B	  S_BRANCH %bb.42, debug-location !79; moe_op_gemm_a8w4.py:405:20

36688B	bb.41 (%ir-block.571):
	; predecessors: %bb.39
	  successors: %bb.42(0x80000000); %bb.42(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
36704B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr46_vgpr47, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36720B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 killed $vgpr2_vgpr3, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36736B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr2_vgpr3, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

36880B	bb.42 (%ir-block.575):
	; predecessors: %bb.41, %bb.40
	  successors: %bb.44(0x40000000), %bb.43(0x40000000); %bb.44(50.00%), %bb.43(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr6_vgpr7:0x000000000000000F, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
36960B	  renamable $vgpr7 = V_MUL_LO_U32_e64 $vgpr7, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36976B	  renamable $vgpr8 = V_MUL_LO_U32_e64 $vgpr6, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36992B	  renamable $vgpr48_vgpr49, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr6, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37056B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37072B	  renamable $vgpr49 = V_ADD3_U32_e64 $vgpr49, killed $vgpr8, killed $vgpr7, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37088B	  S_CBRANCH_VCCZ %bb.44, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

37104B	bb.43:
	; predecessors: %bb.42
	  successors: %bb.45(0x80000000); %bb.45(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
37120B	  renamable $vgpr6 = V_MOV_B32_e32 0, implicit $exec
37152B	  renamable $vgpr7 = COPY renamable $vgpr6
37168B	  renamable $vgpr8 = COPY renamable $vgpr6
37184B	  renamable $vgpr9 = COPY renamable $vgpr6
37200B	  S_BRANCH %bb.45, debug-location !79; moe_op_gemm_a8w4.py:405:20

37216B	bb.44 (%ir-block.577):
	; predecessors: %bb.42
	  successors: %bb.45(0x80000000); %bb.45(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
37232B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr48_vgpr49, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37248B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr6_vgpr7, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37264B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

37408B	bb.45 (%ir-block.581):
	; predecessors: %bb.44, %bb.43
	  successors: %bb.47(0x40000000), %bb.46(0x40000000); %bb.47(50.00%), %bb.46(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr10_vgpr11:0x000000000000000F, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
37488B	  renamable $vgpr11 = V_MUL_LO_U32_e64 $vgpr11, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37504B	  renamable $vgpr12 = V_MUL_LO_U32_e64 $vgpr10, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37520B	  renamable $vgpr50_vgpr51, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr10, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37584B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37600B	  renamable $vgpr51 = V_ADD3_U32_e64 $vgpr51, killed $vgpr12, killed $vgpr11, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37616B	  S_CBRANCH_VCCZ %bb.47, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

37632B	bb.46:
	; predecessors: %bb.45
	  successors: %bb.48(0x80000000); %bb.48(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
37648B	  renamable $vgpr10 = V_MOV_B32_e32 0, implicit $exec
37680B	  renamable $vgpr11 = COPY renamable $vgpr10
37696B	  renamable $vgpr12 = COPY renamable $vgpr10
37712B	  renamable $vgpr13 = COPY renamable $vgpr10
37728B	  S_BRANCH %bb.48, debug-location !79; moe_op_gemm_a8w4.py:405:20

37744B	bb.47 (%ir-block.583):
	; predecessors: %bb.45
	  successors: %bb.48(0x80000000); %bb.48(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
37760B	  renamable $vgpr10_vgpr11 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr50_vgpr51, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37776B	  renamable $vgpr10_vgpr11 = V_LSHL_ADD_U64_e64 killed $vgpr10_vgpr11, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37792B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr10_vgpr11, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

37936B	bb.48 (%ir-block.587):
	; predecessors: %bb.47, %bb.46
	  successors: %bb.50(0x40000000), %bb.49(0x40000000); %bb.50(50.00%), %bb.49(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr14_vgpr15:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
38016B	  renamable $vgpr15 = V_MUL_LO_U32_e64 $vgpr15, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38032B	  renamable $vgpr16 = V_MUL_LO_U32_e64 $vgpr14, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38048B	  renamable $vgpr52_vgpr53, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr14, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38112B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38128B	  renamable $vgpr53 = V_ADD3_U32_e64 $vgpr53, killed $vgpr16, killed $vgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38144B	  S_CBRANCH_VCCZ %bb.50, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

38160B	bb.49:
	; predecessors: %bb.48
	  successors: %bb.51(0x80000000); %bb.51(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
38176B	  renamable $vgpr14 = V_MOV_B32_e32 0, implicit $exec
38208B	  renamable $vgpr15 = COPY renamable $vgpr14
38224B	  renamable $vgpr16 = COPY renamable $vgpr14
38240B	  renamable $vgpr17 = COPY renamable $vgpr14
38256B	  S_BRANCH %bb.51, debug-location !79; moe_op_gemm_a8w4.py:405:20

38272B	bb.50 (%ir-block.589):
	; predecessors: %bb.48
	  successors: %bb.51(0x80000000); %bb.51(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
38288B	  renamable $vgpr14_vgpr15 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr52_vgpr53, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38304B	  renamable $vgpr14_vgpr15 = V_LSHL_ADD_U64_e64 killed $vgpr14_vgpr15, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38320B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr14_vgpr15, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

38464B	bb.51 (%ir-block.593):
	; predecessors: %bb.50, %bb.49
	  successors: %bb.53(0x40000000), %bb.52(0x40000000); %bb.53(50.00%), %bb.52(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
38544B	  renamable $vgpr19 = V_MUL_LO_U32_e64 $vgpr19, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38560B	  renamable $vgpr20 = V_MUL_LO_U32_e64 $vgpr18, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38576B	  renamable $vgpr54_vgpr55, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr18, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38640B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38656B	  renamable $vgpr55 = V_ADD3_U32_e64 $vgpr55, killed $vgpr20, killed $vgpr19, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38672B	  S_CBRANCH_VCCZ %bb.53, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

38688B	bb.52:
	; predecessors: %bb.51
	  successors: %bb.54(0x80000000); %bb.54(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
38704B	  renamable $vgpr18 = V_MOV_B32_e32 0, implicit $exec
38736B	  renamable $vgpr19 = COPY renamable $vgpr18
38752B	  renamable $vgpr20 = COPY renamable $vgpr18
38768B	  renamable $vgpr21 = COPY renamable $vgpr18
38784B	  S_BRANCH %bb.54, debug-location !79; moe_op_gemm_a8w4.py:405:20

38800B	bb.53 (%ir-block.595):
	; predecessors: %bb.51
	  successors: %bb.54(0x80000000); %bb.54(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
38816B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr54_vgpr55, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38832B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38848B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr18_vgpr19, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

38992B	bb.54 (%ir-block.599):
	; predecessors: %bb.53, %bb.52
	  successors: %bb.56(0x40000000), %bb.55(0x40000000); %bb.56(50.00%), %bb.55(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
39072B	  renamable $vgpr23 = V_MUL_LO_U32_e64 $vgpr23, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39088B	  renamable $vgpr24 = V_MUL_LO_U32_e64 $vgpr22, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39104B	  renamable $vgpr56_vgpr57, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr22, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39168B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39184B	  renamable $vgpr57 = V_ADD3_U32_e64 $vgpr57, killed $vgpr24, killed $vgpr23, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39200B	  S_CBRANCH_VCCZ %bb.56, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

39216B	bb.55:
	; predecessors: %bb.54
	  successors: %bb.57(0x80000000); %bb.57(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
39232B	  renamable $vgpr22 = V_MOV_B32_e32 0, implicit $exec
39264B	  renamable $vgpr23 = COPY renamable $vgpr22
39280B	  renamable $vgpr24 = COPY renamable $vgpr22
39296B	  renamable $vgpr25 = COPY renamable $vgpr22
39312B	  S_BRANCH %bb.57, debug-location !79; moe_op_gemm_a8w4.py:405:20

39328B	bb.56 (%ir-block.601):
	; predecessors: %bb.54
	  successors: %bb.57(0x80000000); %bb.57(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
39344B	  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr56_vgpr57, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39360B	  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr22_vgpr23, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39376B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr22_vgpr23, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

39520B	bb.57 (%ir-block.605):
	; predecessors: %bb.56, %bb.55
	  successors: %bb.59(0x40000000), %bb.58(0x40000000); %bb.59(50.00%), %bb.58(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr26_vgpr27:0x000000000000000F, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
39600B	  renamable $vgpr27 = V_MUL_LO_U32_e64 $vgpr27, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39616B	  renamable $vgpr28 = V_MUL_LO_U32_e64 $vgpr26, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39632B	  renamable $vgpr58_vgpr59, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr26, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39696B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39712B	  renamable $vgpr59 = V_ADD3_U32_e64 $vgpr59, killed $vgpr28, killed $vgpr27, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39728B	  S_CBRANCH_VCCZ %bb.59, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

39744B	bb.58:
	; predecessors: %bb.57
	  successors: %bb.60(0x80000000); %bb.60(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
39760B	  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
39792B	  renamable $vgpr27 = COPY renamable $vgpr26
39808B	  renamable $vgpr28 = COPY renamable $vgpr26
39824B	  renamable $vgpr29 = COPY renamable $vgpr26
39840B	  S_BRANCH %bb.60, debug-location !79; moe_op_gemm_a8w4.py:405:20

39856B	bb.59 (%ir-block.607):
	; predecessors: %bb.57
	  successors: %bb.60(0x80000000); %bb.60(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
39872B	  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 $vgpr32_vgpr33, 0, $vgpr58_vgpr59, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39888B	  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 killed $vgpr26_vgpr27, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39904B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr26_vgpr27, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

40048B	bb.60 (%ir-block.611):
	; predecessors: %bb.59, %bb.58
	  successors: %bb.62(0x40000000), %bb.61(0x40000000); %bb.62(50.00%), %bb.61(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr30_vgpr31:0x000000000000000F, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
40128B	  renamable $vgpr31 = V_MUL_LO_U32_e64 $vgpr31, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40144B	  renamable $vgpr62 = V_MUL_LO_U32_e64 $vgpr30, killed $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40160B	  renamable $vgpr60_vgpr61, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr30, killed $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40224B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
40240B	  renamable $vgpr61 = V_ADD3_U32_e64 $vgpr61, killed $vgpr62, killed $vgpr31, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40256B	  S_CBRANCH_VCCZ %bb.62, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

40272B	bb.61:
	; predecessors: %bb.60
	  successors: %bb.63(0x80000000); %bb.63(100.00%)
	  liveins: $sgpr4, $sgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
40288B	  renamable $vgpr30 = V_MOV_B32_e32 0, implicit $exec
40320B	  renamable $vgpr31 = COPY renamable $vgpr30
40336B	  renamable $vgpr32 = COPY renamable $vgpr30
40352B	  renamable $vgpr33 = COPY renamable $vgpr30
40368B	  S_BRANCH %bb.63, debug-location !79; moe_op_gemm_a8w4.py:405:20

40384B	bb.62 (%ir-block.613):
	; predecessors: %bb.60
	  successors: %bb.63(0x80000000); %bb.63(100.00%)
	  liveins: $sgpr4, $sgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr32_vgpr33, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
40400B	  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr32_vgpr33, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
40416B	  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, $vgpr42_vgpr43, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
40432B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

40576B	bb.63 (%ir-block.617):
	; predecessors: %bb.62, %bb.61
	  successors: %bb.65(0x40000000), %bb.64(0x40000000); %bb.65(50.00%), %bb.64(50.00%)
	  liveins: $sgpr4, $sgpr5, $vgpr35, $vgpr37, $vgpr39, $vgpr41, $vgpr80, $vgpr83, $vgpr115, $vgpr227, $vgpr229, $vgpr231, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr0_vgpr1, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr6_vgpr7_vgpr8_vgpr9:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr64_vgpr65_vgpr66_vgpr67, $vgpr68_vgpr69_vgpr70_vgpr71, $vgpr72_vgpr73_vgpr74_vgpr75, $vgpr76_vgpr77_vgpr78_vgpr79
40640B	  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
40656B	  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
40736B	  renamable $sgpr6 = S_MOV_B32 240
40752B	  renamable $vgpr62 = V_BITOP3_B32_e64 $vgpr41, $vgpr227, killed $sgpr6, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40768B	  renamable $vgpr63 = V_ADD_U32_e32 0, $vgpr62, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40784B	  renamable $vgpr63 = V_ADD_U32_e32 65536, killed $vgpr63, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40800B	  DS_WRITE_B128_gfx9 renamable $vgpr63, killed renamable $vgpr64_vgpr65_vgpr66_vgpr67, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
40816B	  DS_WRITE_B128_gfx9 renamable $vgpr63, killed renamable $vgpr68_vgpr69_vgpr70_vgpr71, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
40832B	  DS_WRITE_B128_gfx9 renamable $vgpr63, killed renamable $vgpr72_vgpr73_vgpr74_vgpr75, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
40848B	  DS_WRITE_B128_gfx9 killed renamable $vgpr63, killed renamable $vgpr76_vgpr77_vgpr78_vgpr79, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
40864B	  renamable $sgpr6 = S_MOV_B32 112
40880B	  renamable $vgpr41 = V_BITOP3_B32_e64 killed $vgpr41, $vgpr227, $sgpr6, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40896B	  renamable $vgpr247 = nuw V_ADD_U32_e32 0, killed $vgpr41, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40976B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr2_vgpr3_vgpr4_vgpr5, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
41056B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
41136B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr10_vgpr11_vgpr12_vgpr13, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
41216B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr14_vgpr15_vgpr16_vgpr17, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
41296B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr18_vgpr19_vgpr20_vgpr21, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
41376B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr22_vgpr23_vgpr24_vgpr25, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
41456B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr26_vgpr27_vgpr28_vgpr29, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
41552B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr30_vgpr31_vgpr32_vgpr33, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
41568B	  renamable $vgpr2 = V_ADD_U32_e32 0, $vgpr115, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41584B	  renamable $vgpr2 = V_ADD_U32_e32 98304, killed $vgpr2, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41600B	  DS_WRITE_B64_gfx9 killed renamable $vgpr2, killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
41616B	  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
41632B	  renamable $vgpr233 = V_AND_B32_e32 48, $vgpr227, implicit $exec
41648B	  renamable $vgpr26 = nuw nsw V_LSHLREV_B32_e32 6, $vgpr227, implicit $exec
41664B	  renamable $vgpr116 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr227, implicit $exec
41680B	  S_CBRANCH_SCC0 %bb.65, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

41696B	bb.64:
	; predecessors: %bb.63
	  successors: %bb.66(0x80000000); %bb.66(100.00%)
	  liveins: $sgpr5, $vgpr26, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F
41712B	  renamable $vgpr5 = V_MOV_B32_e32 0, implicit $exec
41744B	  renamable $vgpr4 = COPY renamable $vgpr5
41760B	  renamable $vgpr3 = COPY renamable $vgpr5
41776B	  renamable $vgpr2 = COPY renamable $vgpr5
41792B	  renamable $vgpr213 = COPY renamable $vgpr5
41808B	  renamable $vgpr212 = COPY renamable $vgpr5
41824B	  renamable $vgpr211 = COPY renamable $vgpr5
41840B	  renamable $vgpr210 = COPY renamable $vgpr5
41856B	  renamable $vgpr189 = COPY renamable $vgpr5
41872B	  renamable $vgpr188 = COPY renamable $vgpr5
41888B	  renamable $vgpr187 = COPY renamable $vgpr5
41904B	  renamable $vgpr186 = COPY renamable $vgpr5
41920B	  renamable $vgpr177 = COPY renamable $vgpr5
41936B	  renamable $vgpr176 = COPY renamable $vgpr5
41952B	  renamable $vgpr175 = COPY renamable $vgpr5
41968B	  renamable $vgpr174 = COPY renamable $vgpr5
41984B	  renamable $vgpr185 = COPY renamable $vgpr5
42000B	  renamable $vgpr184 = COPY renamable $vgpr5
42016B	  renamable $vgpr183 = COPY renamable $vgpr5
42032B	  renamable $vgpr182 = COPY renamable $vgpr5
42048B	  renamable $vgpr153 = COPY renamable $vgpr5
42064B	  renamable $vgpr152 = COPY renamable $vgpr5
42080B	  renamable $vgpr151 = COPY renamable $vgpr5
42096B	  renamable $vgpr150 = COPY renamable $vgpr5
42112B	  renamable $vgpr205 = COPY renamable $vgpr5
42128B	  renamable $vgpr204 = COPY renamable $vgpr5
42144B	  renamable $vgpr203 = COPY renamable $vgpr5
42160B	  renamable $vgpr202 = COPY renamable $vgpr5
42176B	  renamable $vgpr217 = COPY renamable $vgpr5
42192B	  renamable $vgpr216 = COPY renamable $vgpr5
42208B	  renamable $vgpr215 = COPY renamable $vgpr5
42224B	  renamable $vgpr214 = COPY renamable $vgpr5
42240B	  renamable $vgpr53 = COPY renamable $vgpr5
42256B	  renamable $vgpr52 = COPY renamable $vgpr5
42272B	  renamable $vgpr51 = COPY renamable $vgpr5
42288B	  renamable $vgpr50 = COPY renamable $vgpr5
42304B	  renamable $vgpr49 = COPY renamable $vgpr5
42320B	  renamable $vgpr48 = COPY renamable $vgpr5
42336B	  renamable $vgpr47 = COPY renamable $vgpr5
42352B	  renamable $vgpr46 = COPY renamable $vgpr5
42368B	  renamable $vgpr161 = COPY renamable $vgpr5
42384B	  renamable $vgpr160 = COPY renamable $vgpr5
42400B	  renamable $vgpr159 = COPY renamable $vgpr5
42416B	  renamable $vgpr158 = COPY renamable $vgpr5
42432B	  renamable $vgpr125 = COPY renamable $vgpr5
42448B	  renamable $vgpr124 = COPY renamable $vgpr5
42464B	  renamable $vgpr123 = COPY renamable $vgpr5
42480B	  renamable $vgpr122 = COPY renamable $vgpr5
42496B	  renamable $vgpr133 = COPY renamable $vgpr5
42512B	  renamable $vgpr132 = COPY renamable $vgpr5
42528B	  renamable $vgpr131 = COPY renamable $vgpr5
42544B	  renamable $vgpr130 = COPY renamable $vgpr5
42560B	  renamable $vgpr137 = COPY renamable $vgpr5
42576B	  renamable $vgpr136 = COPY renamable $vgpr5
42592B	  renamable $vgpr135 = COPY renamable $vgpr5
42608B	  renamable $vgpr134 = COPY renamable $vgpr5
42624B	  renamable $vgpr121 = COPY renamable $vgpr5
42640B	  renamable $vgpr120 = COPY renamable $vgpr5
42656B	  renamable $vgpr119 = COPY renamable $vgpr5
42672B	  renamable $vgpr118 = COPY renamable $vgpr5
42688B	  renamable $vgpr201 = COPY renamable $vgpr5
42704B	  renamable $vgpr200 = COPY renamable $vgpr5
42720B	  renamable $vgpr199 = COPY renamable $vgpr5
42736B	  renamable $vgpr198 = COPY renamable $vgpr5
42752B	  renamable $vgpr197 = COPY renamable $vgpr5
42768B	  renamable $vgpr196 = COPY renamable $vgpr5
42784B	  renamable $vgpr195 = COPY renamable $vgpr5
42800B	  renamable $vgpr194 = COPY renamable $vgpr5
42816B	  renamable $vgpr13 = COPY renamable $vgpr5
42832B	  renamable $vgpr12 = COPY renamable $vgpr5
42848B	  renamable $vgpr11 = COPY renamable $vgpr5
42864B	  renamable $vgpr10 = COPY renamable $vgpr5
42880B	  renamable $vgpr157 = COPY renamable $vgpr5
42896B	  renamable $vgpr156 = COPY renamable $vgpr5
42912B	  renamable $vgpr155 = COPY renamable $vgpr5
42928B	  renamable $vgpr154 = COPY renamable $vgpr5
42944B	  renamable $vgpr165 = COPY renamable $vgpr5
42960B	  renamable $vgpr164 = COPY renamable $vgpr5
42976B	  renamable $vgpr163 = COPY renamable $vgpr5
42992B	  renamable $vgpr162 = COPY renamable $vgpr5
43008B	  renamable $vgpr17 = COPY renamable $vgpr5
43024B	  renamable $vgpr16 = COPY renamable $vgpr5
43040B	  renamable $vgpr15 = COPY renamable $vgpr5
43056B	  renamable $vgpr14 = COPY renamable $vgpr5
43072B	  renamable $vgpr21 = COPY renamable $vgpr5
43088B	  renamable $vgpr20 = COPY renamable $vgpr5
43104B	  renamable $vgpr19 = COPY renamable $vgpr5
43120B	  renamable $vgpr18 = COPY renamable $vgpr5
43136B	  renamable $vgpr169 = COPY renamable $vgpr5
43152B	  renamable $vgpr168 = COPY renamable $vgpr5
43168B	  renamable $vgpr167 = COPY renamable $vgpr5
43184B	  renamable $vgpr166 = COPY renamable $vgpr5
43200B	  renamable $vgpr173 = COPY renamable $vgpr5
43216B	  renamable $vgpr172 = COPY renamable $vgpr5
43232B	  renamable $vgpr171 = COPY renamable $vgpr5
43248B	  renamable $vgpr170 = COPY renamable $vgpr5
43264B	  renamable $vgpr25 = COPY renamable $vgpr5
43280B	  renamable $vgpr24 = COPY renamable $vgpr5
43296B	  renamable $vgpr23 = COPY renamable $vgpr5
43312B	  renamable $vgpr22 = COPY renamable $vgpr5
43328B	  renamable $vgpr9 = COPY renamable $vgpr5
43344B	  renamable $vgpr8 = COPY renamable $vgpr5
43360B	  renamable $vgpr7 = COPY renamable $vgpr5
43376B	  renamable $vgpr6 = COPY renamable $vgpr5
43384B	  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = COPY killed renamable $vgpr6_vgpr7_vgpr8_vgpr9
43392B	  renamable $vgpr221 = COPY renamable $vgpr5
43408B	  renamable $vgpr220 = COPY renamable $vgpr5
43424B	  renamable $vgpr219 = COPY renamable $vgpr5
43440B	  renamable $vgpr218 = COPY renamable $vgpr5
43456B	  renamable $vgpr181 = COPY renamable $vgpr5
43472B	  renamable $vgpr180 = COPY renamable $vgpr5
43488B	  renamable $vgpr179 = COPY renamable $vgpr5
43504B	  renamable $vgpr178 = COPY renamable $vgpr5
43520B	  renamable $vgpr225 = COPY renamable $vgpr5
43536B	  renamable $vgpr224 = COPY renamable $vgpr5
43552B	  renamable $vgpr223 = COPY renamable $vgpr5
43568B	  renamable $vgpr222 = COPY renamable $vgpr5
43584B	  renamable $vgpr129 = COPY renamable $vgpr5
43600B	  renamable $vgpr128 = COPY renamable $vgpr5
43616B	  renamable $vgpr127 = COPY renamable $vgpr5
43632B	  renamable $vgpr126 = COPY renamable $vgpr5
43648B	  renamable $vgpr145 = COPY renamable $vgpr5
43664B	  renamable $vgpr144 = COPY renamable $vgpr5
43680B	  renamable $vgpr143 = COPY renamable $vgpr5
43696B	  renamable $vgpr142 = COPY renamable $vgpr5
43712B	  renamable $vgpr141 = COPY renamable $vgpr5
43728B	  renamable $vgpr140 = COPY renamable $vgpr5
43744B	  renamable $vgpr139 = COPY renamable $vgpr5
43760B	  renamable $vgpr138 = COPY renamable $vgpr5
43776B	  S_BRANCH %bb.66, debug-location !62; moe_op_gemm_a8w4.py:403:19

43792B	bb.65..lr.ph:
	; predecessors: %bb.63
	  successors: %bb.67(0x80000000); %bb.67(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr6, $vgpr26, $vgpr35, $vgpr37, $vgpr39, $vgpr62, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $vgpr247, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x0000000000000003, $vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39:0x0000000000000003, $vgpr40_vgpr41:0x0000000000000003, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr46_vgpr47:0x000000000000000F, $vgpr48_vgpr49:0x000000000000000F, $vgpr50_vgpr51:0x000000000000000F, $vgpr52_vgpr53:0x000000000000000F, $vgpr54_vgpr55:0x000000000000000F, $vgpr56_vgpr57:0x000000000000000F, $vgpr58_vgpr59:0x000000000000000F, $vgpr60_vgpr61:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F
43816B	  SI_SPILL_AV64_SAVE $vgpr112_vgpr113, %stack.14, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.14, align 4, addrspace 5)
43832B	  SI_SPILL_AV64_SAVE $vgpr110_vgpr111, %stack.13, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.13, align 4, addrspace 5)
43848B	  SI_SPILL_AV64_SAVE $vgpr108_vgpr109, %stack.12, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.12, align 4, addrspace 5)
43864B	  SI_SPILL_AV64_SAVE $vgpr106_vgpr107, %stack.11, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.11, align 4, addrspace 5)
43872B	  SI_SPILL_AV32_SAVE killed $vgpr83, %stack.10, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.10, addrspace 5)
43888B	  SI_SPILL_AV64_SAVE $vgpr104_vgpr105, %stack.9, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.9, align 4, addrspace 5)
43896B	  SI_SPILL_AV32_SAVE killed $vgpr231, %stack.7, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.7, addrspace 5)
43904B	  SI_SPILL_AV32_SAVE killed $vgpr229, %stack.6, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.6, addrspace 5)
43912B	  SI_SPILL_AV64_SAVE killed $vgpr236_vgpr237, %stack.5, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.5, align 4, addrspace 5)
43928B	  SI_SPILL_AV64_SAVE $vgpr234_vgpr235, %stack.4, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.4, align 4, addrspace 5)
43944B	  SI_SPILL_AV64_SAVE $vgpr232_vgpr233, %stack.3, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.3, align 4, addrspace 5)
43960B	  SI_SPILL_AV64_SAVE $vgpr230_vgpr231, %stack.2, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.2, align 4, addrspace 5)
43976B	  SI_SPILL_AV64_SAVE $vgpr228_vgpr229, %stack.1, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.1, align 4, addrspace 5)
43984B	  SI_SPILL_AV32_SAVE killed $vgpr227, %stack.0, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.0, addrspace 5)
43992B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44000B	  renamable $sgpr7 = S_LSHR_B32 killed renamable $sgpr7, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44008B	  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44016B	  renamable $sgpr4 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44024B	  renamable $vgpr0 = V_MUL_U32_U24_e32 272, $vgpr80, implicit $exec
44032B	  renamable $vgpr2 = V_XOR_B32_e32 killed $vgpr0, $vgpr233, implicit $exec
44040B	  renamable $vgpr3 = V_XOR_B32_e32 64, $vgpr2, implicit $exec
44048B	  renamable $vgpr4 = V_XOR_B32_e32 128, $vgpr2, implicit $exec
44056B	  renamable $vgpr5 = V_XOR_B32_e32 192, $vgpr2, implicit $exec
44060B	  SI_SPILL_AV32_SAVE $vgpr26, %stack.18, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.18, addrspace 5)
44064B	  renamable $vgpr0 = V_AND_B32_e32 28672, killed $vgpr26, implicit $exec
44068B	  SI_SPILL_AV32_SAVE $vgpr80, %stack.16, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.16, addrspace 5)
44072B	  renamable $vgpr0 = disjoint V_LSHL_OR_B32_e64 killed $vgpr80, 7, killed $vgpr0, implicit $exec
44080B	  SI_SPILL_AV32_SAVE $vgpr233, %stack.8, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.8, addrspace 5)
44088B	  renamable $vgpr1 = V_BITOP3_B32_e64 $vgpr115, killed $vgpr233, killed $sgpr6, 108, implicit $exec
44096B	  renamable $vgpr6 = disjoint V_OR_B32_e32 $vgpr0, $vgpr1, implicit $exec
44104B	  renamable $vgpr7 = V_BITOP3_B32_e64 killed $vgpr0, 64, killed $vgpr1, 54, implicit $exec
44112B	  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr4, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44120B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr37, killed $vgpr39, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44128B	  renamable $sgpr6 = S_MOV_B32 256
44136B	  renamable $vgpr241 = V_ADD3_U32_e64 killed $vgpr0, killed $vgpr35, killed $sgpr6, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44144B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr60_vgpr61, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44152B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44160B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44168B	  renamable $sgpr6_sgpr7 = S_MOV_B64_IMM_PSEUDO 128
44176B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44180B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.19, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44184B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr58_vgpr59, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44192B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44208B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44224B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44232B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.20, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44240B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr56_vgpr57, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44256B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44272B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44288B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44296B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.21, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.21, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44304B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr54_vgpr55, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44320B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44336B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44352B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44360B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.22, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.22, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44368B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr52_vgpr53, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44384B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44400B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44416B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44424B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.23, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.23, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44432B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr50_vgpr51, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44448B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44464B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44480B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44488B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.24, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.24, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44496B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr48_vgpr49, 0, $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44512B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44528B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44544B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44552B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.25, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.25, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44560B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr46_vgpr47, 0, killed $vgpr44_vgpr45, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44576B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $vgpr42_vgpr43, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44592B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44608B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44616B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.26, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.26, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44624B	  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr40, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44640B	  renamable $vgpr200 = V_ADD_U32_e32 256, killed $vgpr38, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44656B	  renamable $vgpr201 = V_ADD_U32_e32 256, killed $vgpr36, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44672B	  renamable $vgpr252 = V_ADD_U32_e32 256, killed $vgpr34, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44688B	  renamable $sgpr4 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44704B	  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr4, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44720B	  renamable $vgpr138 = V_MOV_B32_e32 0, implicit $exec
44736B	  renamable $sgpr6_sgpr7 = S_MOV_B64 0
44896B	  renamable $sgpr13 = S_ADD_I32 0, 65536, implicit-def dead $scc
44912B	  renamable $vgpr253 = V_ADD_U32_e32 $sgpr13, killed $vgpr2, implicit $exec
44928B	  renamable $vgpr198 = V_ADD_U32_e32 $sgpr13, killed $vgpr3, implicit $exec
44944B	  renamable $vgpr199 = V_ADD_U32_e32 $sgpr13, killed $vgpr4, implicit $exec
44960B	  renamable $vgpr238 = V_ADD_U32_e32 $sgpr13, killed $vgpr5, implicit $exec
44976B	  renamable $vgpr239 = V_ADD_U32_e32 0, killed $vgpr6, implicit $exec
44992B	  renamable $vgpr240 = V_ADD_U32_e32 0, killed $vgpr7, implicit $exec
45072B	  renamable $sgpr14 = S_ADD_I32 0, 98304, implicit-def dead $scc
45080B	  SI_SPILL_AV32_SAVE $vgpr116, %stack.17, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.17, addrspace 5)
45088B	  renamable $vgpr254 = V_ADD_U32_e32 $sgpr14, killed $vgpr116, implicit $exec
45104B	  renamable $sgpr12 = S_MOV_B32 117769732
45120B	  renamable $vgpr242 = V_MOV_B32_e32 127, implicit $exec
45136B	  renamable $vgpr243 = V_ADD_U32_e32 killed $sgpr13, killed $vgpr62, implicit $exec
45144B	  SI_SPILL_AV32_SAVE $vgpr115, %stack.15, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.15, addrspace 5)
45152B	  renamable $vgpr255 = V_ADD_U32_e32 killed $sgpr14, killed $vgpr115, implicit $exec
45280B	  renamable $vgpr139 = COPY renamable $vgpr138
45296B	  renamable $vgpr140 = COPY renamable $vgpr138
45312B	  renamable $vgpr141 = COPY renamable $vgpr138
45328B	  renamable $vgpr142 = COPY renamable $vgpr138
45344B	  renamable $vgpr143 = COPY renamable $vgpr138
45360B	  renamable $vgpr144 = COPY renamable $vgpr138
45376B	  renamable $vgpr145 = COPY renamable $vgpr138
45392B	  renamable $vgpr126 = COPY renamable $vgpr138
45408B	  renamable $vgpr127 = COPY renamable $vgpr138
45424B	  renamable $vgpr128 = COPY renamable $vgpr138
45440B	  renamable $vgpr129 = COPY renamable $vgpr138
45456B	  renamable $vgpr222 = COPY renamable $vgpr138
45472B	  renamable $vgpr223 = COPY renamable $vgpr138
45488B	  renamable $vgpr224 = COPY renamable $vgpr138
45504B	  renamable $vgpr225 = COPY renamable $vgpr138
45520B	  renamable $vgpr178 = COPY renamable $vgpr138
45536B	  renamable $vgpr179 = COPY renamable $vgpr138
45552B	  renamable $vgpr180 = COPY renamable $vgpr138
45568B	  renamable $vgpr181 = COPY renamable $vgpr138
45584B	  renamable $vgpr218 = COPY renamable $vgpr138
45600B	  renamable $vgpr219 = COPY renamable $vgpr138
45616B	  renamable $vgpr220 = COPY renamable $vgpr138
45632B	  renamable $vgpr221 = COPY renamable $vgpr138
45648B	  renamable $vgpr226 = COPY renamable $vgpr138
45664B	  renamable $vgpr227 = COPY renamable $vgpr138
45680B	  renamable $vgpr228 = COPY renamable $vgpr138
45696B	  renamable $vgpr229 = COPY renamable $vgpr138
45712B	  renamable $vgpr22 = COPY renamable $vgpr138
45728B	  renamable $vgpr23 = COPY renamable $vgpr138
45744B	  renamable $vgpr24 = COPY renamable $vgpr138
45760B	  renamable $vgpr25 = COPY renamable $vgpr138
45776B	  renamable $vgpr170 = COPY renamable $vgpr138
45792B	  renamable $vgpr171 = COPY renamable $vgpr138
45808B	  renamable $vgpr172 = COPY renamable $vgpr138
45824B	  renamable $vgpr173 = COPY renamable $vgpr138
45840B	  renamable $vgpr166 = COPY renamable $vgpr138
45856B	  renamable $vgpr167 = COPY renamable $vgpr138
45872B	  renamable $vgpr168 = COPY renamable $vgpr138
45888B	  renamable $vgpr169 = COPY renamable $vgpr138
45904B	  renamable $vgpr18 = COPY renamable $vgpr138
45920B	  renamable $vgpr19 = COPY renamable $vgpr138
45936B	  renamable $vgpr20 = COPY renamable $vgpr138
45952B	  renamable $vgpr21 = COPY renamable $vgpr138
45968B	  renamable $vgpr14 = COPY renamable $vgpr138
45984B	  renamable $vgpr15 = COPY renamable $vgpr138
46000B	  renamable $vgpr16 = COPY renamable $vgpr138
46016B	  renamable $vgpr17 = COPY renamable $vgpr138
46032B	  renamable $vgpr162 = COPY renamable $vgpr138
46048B	  renamable $vgpr163 = COPY renamable $vgpr138
46064B	  renamable $vgpr164 = COPY renamable $vgpr138
46080B	  renamable $vgpr165 = COPY renamable $vgpr138
46096B	  renamable $vgpr154 = COPY renamable $vgpr138
46112B	  renamable $vgpr155 = COPY renamable $vgpr138
46128B	  renamable $vgpr156 = COPY renamable $vgpr138
46144B	  renamable $vgpr157 = COPY renamable $vgpr138
46160B	  renamable $vgpr10 = COPY renamable $vgpr138
46176B	  renamable $vgpr11 = COPY renamable $vgpr138
46192B	  renamable $vgpr12 = COPY renamable $vgpr138
46208B	  renamable $vgpr13 = COPY renamable $vgpr138
46224B	  renamable $vgpr194 = COPY renamable $vgpr138
46240B	  renamable $vgpr195 = COPY renamable $vgpr138
46256B	  renamable $vgpr196 = COPY renamable $vgpr138
46272B	  renamable $vgpr197 = COPY renamable $vgpr138
46288B	  renamable $vgpr74 = COPY renamable $vgpr138
46304B	  renamable $vgpr75 = COPY renamable $vgpr138
46320B	  renamable $vgpr76 = COPY renamable $vgpr138
46336B	  renamable $vgpr77 = COPY renamable $vgpr138
46352B	  renamable $vgpr70 = COPY renamable $vgpr138
46368B	  renamable $vgpr71 = COPY renamable $vgpr138
46384B	  renamable $vgpr72 = COPY renamable $vgpr138
46400B	  renamable $vgpr73 = COPY renamable $vgpr138
46416B	  renamable $vgpr134 = COPY renamable $vgpr138
46432B	  renamable $vgpr135 = COPY renamable $vgpr138
46448B	  renamable $vgpr136 = COPY renamable $vgpr138
46464B	  renamable $vgpr137 = COPY renamable $vgpr138
46480B	  renamable $vgpr130 = COPY renamable $vgpr138
46496B	  renamable $vgpr131 = COPY renamable $vgpr138
46512B	  renamable $vgpr132 = COPY renamable $vgpr138
46528B	  renamable $vgpr133 = COPY renamable $vgpr138
46544B	  renamable $vgpr66 = COPY renamable $vgpr138
46560B	  renamable $vgpr67 = COPY renamable $vgpr138
46576B	  renamable $vgpr68 = COPY renamable $vgpr138
46592B	  renamable $vgpr69 = COPY renamable $vgpr138
46608B	  renamable $vgpr158 = COPY renamable $vgpr138
46624B	  renamable $vgpr159 = COPY renamable $vgpr138
46640B	  renamable $vgpr160 = COPY renamable $vgpr138
46656B	  renamable $vgpr161 = COPY renamable $vgpr138
46672B	  renamable $vgpr46 = COPY renamable $vgpr138
46688B	  renamable $vgpr47 = COPY renamable $vgpr138
46704B	  renamable $vgpr48 = COPY renamable $vgpr138
46720B	  renamable $vgpr49 = COPY renamable $vgpr138
46736B	  renamable $vgpr50 = COPY renamable $vgpr138
46752B	  renamable $vgpr51 = COPY renamable $vgpr138
46768B	  renamable $vgpr52 = COPY renamable $vgpr138
46784B	  renamable $vgpr53 = COPY renamable $vgpr138
46800B	  renamable $vgpr214 = COPY renamable $vgpr138
46816B	  renamable $vgpr215 = COPY renamable $vgpr138
46832B	  renamable $vgpr216 = COPY renamable $vgpr138
46848B	  renamable $vgpr217 = COPY renamable $vgpr138
46864B	  renamable $vgpr202 = COPY renamable $vgpr138
46880B	  renamable $vgpr203 = COPY renamable $vgpr138
46896B	  renamable $vgpr204 = COPY renamable $vgpr138
46912B	  renamable $vgpr205 = COPY renamable $vgpr138
46928B	  renamable $vgpr150 = COPY renamable $vgpr138
46944B	  renamable $vgpr151 = COPY renamable $vgpr138
46960B	  renamable $vgpr152 = COPY renamable $vgpr138
46976B	  renamable $vgpr153 = COPY renamable $vgpr138
46992B	  renamable $vgpr182 = COPY renamable $vgpr138
47008B	  renamable $vgpr183 = COPY renamable $vgpr138
47024B	  renamable $vgpr184 = COPY renamable $vgpr138
47040B	  renamable $vgpr185 = COPY renamable $vgpr138
47056B	  renamable $vgpr174 = COPY renamable $vgpr138
47072B	  renamable $vgpr175 = COPY renamable $vgpr138
47088B	  renamable $vgpr176 = COPY renamable $vgpr138
47104B	  renamable $vgpr177 = COPY renamable $vgpr138
47120B	  renamable $vgpr186 = COPY renamable $vgpr138
47136B	  renamable $vgpr187 = COPY renamable $vgpr138
47152B	  renamable $vgpr188 = COPY renamable $vgpr138
47168B	  renamable $vgpr189 = COPY renamable $vgpr138
47184B	  renamable $vgpr210 = COPY renamable $vgpr138
47200B	  renamable $vgpr211 = COPY renamable $vgpr138
47216B	  renamable $vgpr212 = COPY renamable $vgpr138
47232B	  renamable $vgpr213 = COPY renamable $vgpr138
47248B	  renamable $vgpr2 = COPY renamable $vgpr138
47264B	  renamable $vgpr3 = COPY renamable $vgpr138
47280B	  renamable $vgpr4 = COPY renamable $vgpr138
47296B	  renamable $vgpr5 = COPY renamable $vgpr138
47312B	  S_BRANCH %bb.67, debug-location !62; moe_op_gemm_a8w4.py:403:19

47328B	bb.66.Flow340:
	; predecessors: %bb.68, %bb.64
	  successors: %bb.69(0x80000000); %bb.69(100.00%)
	  liveins: $sgpr5, $vgpr26, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x0000000000000003, $vgpr108_vgpr109:0x0000000000000003, $vgpr110_vgpr111:0x0000000000000003, $vgpr112_vgpr113:0x0000000000000003, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
49392B	  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
49424B	  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
49440B	  renamable $vgpr6 = V_AND_B32_e32 496, $vgpr227, implicit $exec
49472B	  renamable $vgpr107 = COPY renamable $vgpr237
49504B	  renamable $vgpr113 = COPY renamable $vgpr237
49536B	  renamable $vgpr111 = COPY renamable $vgpr237
49568B	  renamable $vgpr109 = COPY renamable $vgpr237
49584B	  renamable $vgpr60 = V_AND_B32_e32 480, $vgpr227, implicit $exec
49600B	  S_BRANCH %bb.69

49616B	bb.67 (%ir-block.818):
	; predecessors: %bb.65, %bb.67
	  successors: %bb.68(0x04000000), %bb.67(0x7c000000); %bb.68(3.12%), %bb.67(96.88%)
	  liveins: $sgpr4, $sgpr5, $sgpr12, $vgpr198, $vgpr199, $vgpr200, $vgpr201, $vgpr238, $vgpr239, $vgpr240, $vgpr241, $vgpr242, $vgpr243, $vgpr244, $vgpr247, $vgpr252, $vgpr253, $vgpr254, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
49624B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.26, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.26, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51760B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51768B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.25, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.25, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51776B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51784B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.24, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.24, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51792B	  renamable $vgpr26_vgpr27 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51800B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.23, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.23, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51808B	  renamable $vgpr28_vgpr29 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51816B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.22, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.22, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51824B	  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51832B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.21, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.21, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51840B	  renamable $vgpr32_vgpr33 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51848B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.20, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51856B	  renamable $vgpr54_vgpr55 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51864B	  renamable $vgpr0_vgpr1 = SI_SPILL_AV64_RESTORE %stack.19, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s64) from %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51872B	  renamable $vgpr56_vgpr57 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
51888B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr252, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51896B	  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.27, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.27, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51904B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr201, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51912B	  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.28, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.28, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51920B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr200, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51928B	  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.29, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.29, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51936B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr244, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51944B	  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.30, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.30, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51952B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
51968B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
51984B	  renamable $vgpr0_vgpr1 = BUFFER_LOAD_DWORDX2_OFFEN renamable $vgpr241, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
52000B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
52008B	  SI_SPILL_AV128_SAVE killed $vgpr34_vgpr35_vgpr36_vgpr37, %stack.31, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.31, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52016B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
52024B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.32, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.32, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52032B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr26_vgpr27, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
52040B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.33, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.33, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52048B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr28_vgpr29, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
52056B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.34, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.34, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52064B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
52072B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.35, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.35, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52080B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr32_vgpr33, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
52088B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.36, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.36, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52096B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr54_vgpr55, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
52104B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.37, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.37, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52112B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr56_vgpr57, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
52116B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.38, $sgpr32, 0, implicit $exec :: (store (s128) into %stack.38, align 4, addrspace 5)
52120B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = COPY killed renamable $vgpr194_vgpr195_vgpr196_vgpr197
52128B	  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = DS_READ_B128_gfx9 renamable $vgpr239, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
52144B	  renamable $vgpr248_vgpr249_vgpr250_vgpr251 = DS_READ_B128_gfx9 renamable $vgpr239, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
52160B	  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = DS_READ_B128_gfx9 renamable $vgpr239, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
52176B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr239, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
52192B	  renamable $vgpr6_vgpr7 = DS_READ2ST64_B32_gfx9 renamable $vgpr254, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
52208B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr253, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
52224B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = DS_READ_B128_gfx9 renamable $vgpr253, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
52240B	  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = DS_READ_B128_gfx9 renamable $vgpr253, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
52256B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = DS_READ_B128_gfx9 renamable $vgpr253, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
52272B	  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = DS_READ_B128_gfx9 renamable $vgpr253, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
52288B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = DS_READ_B128_gfx9 renamable $vgpr253, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
52304B	  renamable $vgpr206_vgpr207_vgpr208_vgpr209 = DS_READ_B128_gfx9 renamable $vgpr253, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
52320B	  renamable $vgpr230_vgpr231_vgpr232_vgpr233 = DS_READ_B128_gfx9 renamable $vgpr253, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
52336B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr198, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
52352B	  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = DS_READ_B128_gfx9 renamable $vgpr198, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
52368B	  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = DS_READ_B128_gfx9 renamable $vgpr198, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
52384B	  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = DS_READ_B128_gfx9 renamable $vgpr198, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
52400B	  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = DS_READ_B128_gfx9 renamable $vgpr198, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
52416B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = DS_READ_B128_gfx9 renamable $vgpr198, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
52424B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = COPY killed renamable $vgpr210_vgpr211_vgpr212_vgpr213
52432B	  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = DS_READ_B128_gfx9 renamable $vgpr198, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
52448B	  renamable $vgpr234_vgpr235_vgpr236_vgpr237 = DS_READ_B128_gfx9 renamable $vgpr198, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
52464B	  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = DS_READ_B128_gfx9 renamable $vgpr240, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
52480B	  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = DS_READ_B128_gfx9 renamable $vgpr240, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
52496B	  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = DS_READ_B128_gfx9 renamable $vgpr240, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
52512B	  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr240, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
52528B	  renamable $vgpr246 = V_PERM_B32_e64 $vgpr6, $vgpr6, $sgpr12, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52544B	  renamable $vgpr245 = V_PERM_B32_e64 killed $vgpr7, $vgpr7, $sgpr12, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52560B	  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr138_vgpr139_vgpr140_vgpr141, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52576B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52584B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.41, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.41, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
52592B	  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52608B	  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52624B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52628B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.42, $sgpr32, 0, implicit $exec :: (store (s128) into %stack.42, align 4, addrspace 5)
52640B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52648B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.43, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.43, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
52656B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52664B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.44, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.44, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
52672B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52680B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.45, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.45, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
52688B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = DS_READ_B128_gfx9 renamable $vgpr199, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
52704B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr199, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
52720B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = DS_READ_B128_gfx9 renamable $vgpr238, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
52736B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr238, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
52752B	  renamable $sgpr6 = S_ADD_U32 renamable $sgpr6, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
52768B	  renamable $sgpr7 = S_ADDC_U32 renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
52784B	  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr6, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
52800B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr142_vgpr143_vgpr144_vgpr145, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52816B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr199, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
52832B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr238, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
52848B	  renamable $vgpr241 = V_ADD_U32_e32 256, killed $vgpr241, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52864B	  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr244, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52880B	  renamable $vgpr200 = V_ADD_U32_e32 256, killed $vgpr200, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52896B	  renamable $vgpr201 = V_ADD_U32_e32 256, killed $vgpr201, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52912B	  renamable $vgpr252 = V_ADD_U32_e32 256, killed $vgpr252, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52928B	  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr178_vgpr179_vgpr180_vgpr181, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52944B	  renamable $vgpr178_vgpr179_vgpr180_vgpr181 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52960B	  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52976B	  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52992B	  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr150_vgpr151_vgpr152_vgpr153, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53008B	  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53024B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53032B	  SI_SPILL_AV128_SAVE killed $vgpr6_vgpr7_vgpr8_vgpr9, %stack.40, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.40, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
53040B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53048B	  SI_SPILL_AV128_SAVE killed $vgpr2_vgpr3_vgpr4_vgpr5, %stack.39, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.39, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
53056B	  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr134_vgpr135_vgpr136_vgpr137, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53072B	  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53088B	  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr245, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53104B	  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr245, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53120B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr54_vgpr55_vgpr56_vgpr57_vgpr58_vgpr59_vgpr60_vgpr61, killed $vgpr218_vgpr219_vgpr220_vgpr221, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53168B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr199, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
53184B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr238, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
53200B	  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53216B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr170_vgpr171_vgpr172_vgpr173, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53232B	  renamable $vgpr170_vgpr171_vgpr172_vgpr173 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53248B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr94_vgpr95_vgpr96_vgpr97_vgpr98_vgpr99_vgpr100_vgpr101, killed $vgpr166_vgpr167_vgpr168_vgpr169, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53264B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = DS_READ_B128_gfx9 renamable $vgpr199, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
53280B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = DS_READ_B128_gfx9 renamable $vgpr238, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
53296B	  renamable $vgpr166_vgpr167_vgpr168_vgpr169 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53312B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr162_vgpr163_vgpr164_vgpr165, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53328B	  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53344B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr102_vgpr103_vgpr104_vgpr105_vgpr106_vgpr107_vgpr108_vgpr109, killed $vgpr154_vgpr155_vgpr156_vgpr157, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53360B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = DS_READ_B128_gfx9 renamable $vgpr199, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
53376B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = DS_READ_B128_gfx9 renamable $vgpr238, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
53392B	  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53408B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53424B	  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53440B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr110_vgpr111_vgpr112_vgpr113_vgpr114_vgpr115_vgpr116_vgpr117, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53456B	  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = DS_READ_B128_gfx9 renamable $vgpr199, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
53472B	  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = DS_READ_B128_gfx9 renamable $vgpr238, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
53488B	  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53504B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53520B	  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53536B	  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr118_vgpr119_vgpr120_vgpr121_vgpr122_vgpr123_vgpr124_vgpr125, killed $vgpr158_vgpr159_vgpr160_vgpr161, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53552B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr199, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
53568B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr238, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
53584B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
53600B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
53616B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr214_vgpr215_vgpr216_vgpr217, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53632B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr206_vgpr207_vgpr208_vgpr209_vgpr210_vgpr211_vgpr212_vgpr213, killed $vgpr202_vgpr203_vgpr204_vgpr205, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53648B	  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr174_vgpr175_vgpr176_vgpr177, 4, 0, $vgpr246, $vgpr242, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53664B	  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr248_vgpr249_vgpr250_vgpr251, killed $vgpr230_vgpr231_vgpr232_vgpr233_vgpr234_vgpr235_vgpr236_vgpr237, killed $vgpr186_vgpr187_vgpr188_vgpr189, 4, 0, $vgpr246, $vgpr242, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54016B	  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62688B	  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr138_vgpr139_vgpr140_vgpr141, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62696B	  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = SI_SPILL_AV128_RESTORE %stack.41, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.41, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62704B	  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62720B	  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr18_vgpr19_vgpr20_vgpr21_vgpr22_vgpr23_vgpr24_vgpr25, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62736B	  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62744B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = SI_SPILL_AV128_RESTORE %stack.42, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.42, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62752B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62760B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = SI_SPILL_AV128_RESTORE %stack.43, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.43, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62768B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62776B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = SI_SPILL_AV128_RESTORE %stack.44, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.44, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62784B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62792B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = SI_SPILL_AV128_RESTORE %stack.45, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.45, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62800B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62832B	  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr134_vgpr135_vgpr136_vgpr137, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62848B	  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr42_vgpr43_vgpr44_vgpr45_vgpr46_vgpr47_vgpr48_vgpr49, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62880B	  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62896B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr190_vgpr191_vgpr192_vgpr193, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62912B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr50_vgpr51_vgpr52_vgpr53_vgpr54_vgpr55_vgpr56_vgpr57, killed $vgpr146_vgpr147_vgpr148_vgpr149, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62928B	  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62944B	  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62960B	  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr150_vgpr151_vgpr152_vgpr153, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62976B	  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr58_vgpr59_vgpr60_vgpr61_vgpr62_vgpr63_vgpr64_vgpr65, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62992B	  renamable $vgpr174_vgpr175_vgpr176_vgpr177 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr86_vgpr87_vgpr88_vgpr89, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr246, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63008B	  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr90_vgpr91_vgpr92_vgpr93, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, killed $vgpr246, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63016B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = SI_SPILL_AV128_RESTORE %stack.40, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.40, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
63168B	  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr82_vgpr83_vgpr84_vgpr85, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr245, $vgpr242, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63176B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = SI_SPILL_AV128_RESTORE %stack.39, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.39, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
63952B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr78_vgpr79_vgpr80_vgpr81, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, killed $vgpr245, $vgpr242, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63960B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.27, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.27, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
63968B	  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
63976B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.28, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.28, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
63984B	  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
63992B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.29, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.29, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
64000B	  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
64008B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.30, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.30, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
64016B	  DS_WRITE_B128_gfx9 renamable $vgpr243, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
64032B	  DS_WRITE_B64_gfx9 renamable $vgpr255, killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
64040B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.31, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.31, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64048B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
64056B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.32, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.32, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64064B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
64072B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.33, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.33, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64080B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
64088B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.34, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.34, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64096B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
64104B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.35, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.35, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64112B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
64120B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.36, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.36, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64128B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
64136B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.37, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.37, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64144B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
64152B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = SI_SPILL_AV128_RESTORE %stack.38, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.38, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64160B	  DS_WRITE_B128_gfx9 renamable $vgpr247, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
66400B	  S_CBRANCH_SCC1 %bb.67, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
66416B	  S_BRANCH %bb.68, debug-location !62; moe_op_gemm_a8w4.py:403:19

66432B	bb.68.Flow:
	; predecessors: %bb.67
	  successors: %bb.66(0x80000000); %bb.66(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
66440B	  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = COPY killed renamable $vgpr226_vgpr227_vgpr228_vgpr229
68488B	  renamable $vgpr227 = SI_SPILL_AV32_RESTORE %stack.0, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.0, addrspace 5)
68496B	  renamable $vgpr228_vgpr229 = SI_SPILL_AV64_RESTORE %stack.1, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.1, align 4, addrspace 5)
68512B	  renamable $vgpr230_vgpr231 = SI_SPILL_AV64_RESTORE %stack.2, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.2, align 4, addrspace 5)
68528B	  renamable $vgpr232_vgpr233 = SI_SPILL_AV64_RESTORE %stack.3, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.3, align 4, addrspace 5)
68544B	  renamable $vgpr234_vgpr235 = SI_SPILL_AV64_RESTORE %stack.4, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.4, align 4, addrspace 5)
68556B	  renamable $vgpr236_vgpr237 = SI_SPILL_AV64_RESTORE %stack.5, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.5, align 4, addrspace 5)
68564B	  renamable $vgpr229 = SI_SPILL_AV32_RESTORE %stack.6, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.6, addrspace 5)
68568B	  renamable $vgpr231 = SI_SPILL_AV32_RESTORE %stack.7, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.7, addrspace 5)
68576B	  renamable $vgpr233 = SI_SPILL_AV32_RESTORE %stack.8, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.8, addrspace 5)
68584B	  renamable $vgpr104_vgpr105 = SI_SPILL_AV64_RESTORE %stack.9, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.9, align 4, addrspace 5)
68596B	  renamable $vgpr83 = SI_SPILL_AV32_RESTORE %stack.10, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.10, addrspace 5)
68600B	  renamable $vgpr106_vgpr107 = SI_SPILL_AV64_RESTORE %stack.11, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.11, align 4, addrspace 5)
68612B	  renamable $vgpr108_vgpr109 = SI_SPILL_AV64_RESTORE %stack.12, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.12, align 4, addrspace 5)
68628B	  renamable $vgpr110_vgpr111 = SI_SPILL_AV64_RESTORE %stack.13, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.13, align 4, addrspace 5)
68644B	  renamable $vgpr112_vgpr113 = SI_SPILL_AV64_RESTORE %stack.14, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.14, align 4, addrspace 5)
68656B	  renamable $vgpr80 = SI_SPILL_AV32_RESTORE %stack.16, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.16, addrspace 5)
68660B	  renamable $vgpr114 = V_LSHLREV_B32_e32 4, $vgpr80, implicit $exec
68672B	  renamable $vgpr115 = SI_SPILL_AV32_RESTORE %stack.15, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.15, addrspace 5)
68680B	  renamable $vgpr116 = SI_SPILL_AV32_RESTORE %stack.17, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.17, addrspace 5)
68684B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = COPY killed renamable $vgpr66_vgpr67_vgpr68_vgpr69
68692B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = COPY killed renamable $vgpr70_vgpr71_vgpr72_vgpr73
68696B	  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = COPY killed renamable $vgpr74_vgpr75_vgpr76_vgpr77
68732B	  renamable $vgpr26 = SI_SPILL_AV32_RESTORE %stack.18, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.18, addrspace 5)
68736B	  S_BRANCH %bb.66

68744B	bb.69.._crit_edge:
	; predecessors: %bb.66
	  successors: %bb.70(0x40000000), %bb.71(0x40000000); %bb.70(50.00%), %bb.71(50.00%)
	  liveins: $sgpr0, $sgpr5, $vgpr6, $vgpr26, $vgpr60, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr2_sgpr3, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x000000000000000F, $vgpr108_vgpr109:0x000000000000000F, $vgpr110_vgpr111:0x000000000000000F, $vgpr112_vgpr113:0x000000000000000F, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
68752B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
68760B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
68768B	  renamable $vgpr62 = V_AND_B32_e32 14, $vgpr227, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
68784B	  $vcc = S_AND_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
68792B	  renamable $vgpr61 = nuw nsw V_LSHLREV_B32_e32 3, $vgpr62, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72720B	  S_CBRANCH_VCCNZ %bb.71, implicit $vcc, debug-location !85; moe_op_gemm_a8w4.py:421:46
72736B	  S_BRANCH %bb.70, debug-location !85; moe_op_gemm_a8w4.py:421:46

72752B	bb.70 (%ir-block.1360):
	; predecessors: %bb.69
	  successors: %bb.71(0x80000000); %bb.71(100.00%)
	  liveins: $sgpr0, $sgpr5, $vgpr6, $vgpr26, $vgpr60, $vgpr61, $vgpr62, $vgpr80, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x000000000000000F, $vgpr108_vgpr109:0x000000000000000F, $vgpr110_vgpr111:0x000000000000000F, $vgpr112_vgpr113:0x000000000000000F, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
72768B	  renamable $vgpr0 = V_LSHL_ADD_U32_e64 $vgpr227, 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
72784B	  renamable $vgpr0 = V_ADD_U32_e32 98304, killed $vgpr0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
72800B	  renamable $vgpr0_vgpr1 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr0, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
72816B	  renamable $vgpr7 = nuw nsw V_LSHLREV_B32_e32 7, $vgpr80, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72832B	  renamable $vgpr8 = V_AND_B32_e32 28672, killed $vgpr26, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72848B	  renamable $vgpr9 = V_XOR_B32_e32 $vgpr61, $vgpr233, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72864B	  renamable $vgpr7 = disjoint V_OR3_B32_e64 killed $vgpr7, killed $vgpr8, killed $vgpr9, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72880B	  renamable $vgpr8 = nuw V_XAD_U32_e64 $vgpr7, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72944B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr8, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
72960B	  renamable $vgpr7 = nuw V_ADD_U32_e32 0, killed $vgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
73024B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
73040B	  renamable $vgpr9 = V_MUL_U32_U24_e32 272, killed $vgpr80, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73056B	  renamable $vgpr9 = V_XOR_B32_e32 killed $vgpr9, $vgpr233, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73072B	  renamable $vgpr54 = V_XOR_B32_e32 192, $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73088B	  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
73104B	  renamable $vgpr58 = nuw V_ADD_U32_e32 $sgpr1, killed $vgpr54, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73408B	  renamable $vgpr59 = nuw V_XAD_U32_e64 $vgpr9, 64, $sgpr1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73536B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
73552B	  renamable $vgpr63 = nuw V_ADD_U32_e32 $sgpr1, $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73680B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
73696B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
75760B	  renamable $sgpr2 = S_MOV_B32 117769732
75776B	  renamable $vgpr0 = V_PERM_B32_e64 $vgpr0, $vgpr0, $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
75872B	  renamable $vgpr80 = V_MOV_B32_e32 127, implicit $exec
75888B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr138_vgpr139_vgpr140_vgpr141, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
75904B	  renamable $vgpr9 = V_XOR_B32_e32 128, killed $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
75920B	  renamable $vgpr81 = nuw V_ADD_U32_e32 killed $sgpr1, killed $vgpr9, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
75936B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
75952B	  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
75968B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr7, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
76048B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr142_vgpr143_vgpr144_vgpr145, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76064B	  renamable $vgpr84_vgpr85_vgpr86_vgpr87 = DS_READ_B128_gfx9 renamable $vgpr8, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
76080B	  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76096B	  renamable $vgpr88_vgpr89_vgpr90_vgpr91 = DS_READ_B128_gfx9 renamable $vgpr7, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
76112B	  renamable $vgpr82 = V_PERM_B32_e64 killed $vgpr1, $vgpr1, killed $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76192B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76208B	  renamable $vgpr92_vgpr93_vgpr94_vgpr95 = DS_READ_B128_gfx9 renamable $vgpr8, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
76224B	  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76240B	  renamable $vgpr96_vgpr97_vgpr98_vgpr99 = DS_READ_B128_gfx9 killed renamable $vgpr7, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
76320B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76336B	  renamable $vgpr100_vgpr101_vgpr102_vgpr103 = DS_READ_B128_gfx9 killed renamable $vgpr8, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
76352B	  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76368B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
76384B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
76464B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr178_vgpr179_vgpr180_vgpr181, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76480B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
76496B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
76512B	  renamable $vgpr178_vgpr179_vgpr180_vgpr181 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76592B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr218_vgpr219_vgpr220_vgpr221, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76608B	  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76688B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr146_vgpr147_vgpr148_vgpr149, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76704B	  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76784B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76800B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76816B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
76832B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
76912B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr170_vgpr171_vgpr172_vgpr173, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76928B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
76944B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
76960B	  renamable $vgpr170_vgpr171_vgpr172_vgpr173 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77040B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr166_vgpr167_vgpr168_vgpr169, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77056B	  renamable $vgpr166_vgpr167_vgpr168_vgpr169 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77136B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77152B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77232B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77248B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77264B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
77280B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
77360B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr162_vgpr163_vgpr164_vgpr165, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77376B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
77392B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
77408B	  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77488B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr154_vgpr155_vgpr156_vgpr157, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77504B	  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77584B	  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77600B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr8_vgpr9_vgpr10_vgpr11, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77680B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr194_vgpr195_vgpr196_vgpr197, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77696B	  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77712B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
77728B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
77808B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr198_vgpr199_vgpr200_vgpr201, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77824B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
77840B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
77856B	  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77936B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77952B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78032B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr134_vgpr135_vgpr136_vgpr137, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78048B	  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78128B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78144B	  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78160B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
78176B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
78256B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78272B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
78288B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
78304B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78384B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr158_vgpr159_vgpr160_vgpr161, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78400B	  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78480B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78496B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78576B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78592B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78608B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 renamable $vgpr59, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
78624B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 renamable $vgpr63, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
78704B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr214_vgpr215_vgpr216_vgpr217, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78720B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 renamable $vgpr58, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
78736B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 renamable $vgpr81, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
78752B	  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78832B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr202_vgpr203_vgpr204_vgpr205, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78848B	  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78928B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr150_vgpr151_vgpr152_vgpr153, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78944B	  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79024B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79040B	  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr82, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79056B	  renamable $vgpr68_vgpr69_vgpr70_vgpr71 = DS_READ_B128_gfx9 killed renamable $vgpr59, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
79072B	  renamable $vgpr64_vgpr65_vgpr66_vgpr67 = DS_READ_B128_gfx9 killed renamable $vgpr63, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
79152B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr174_vgpr175_vgpr176_vgpr177, 4, 0, $vgpr0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79168B	  renamable $vgpr76_vgpr77_vgpr78_vgpr79 = DS_READ_B128_gfx9 killed renamable $vgpr58, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
79184B	  renamable $vgpr72_vgpr73_vgpr74_vgpr75 = DS_READ_B128_gfx9 killed renamable $vgpr81, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
79200B	  renamable $vgpr174_vgpr175_vgpr176_vgpr177 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr26_vgpr27_vgpr28_vgpr29, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr0, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79280B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr34_vgpr35_vgpr36_vgpr37, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr186_vgpr187_vgpr188_vgpr189, 4, 0, $vgpr0, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79296B	  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr84_vgpr85_vgpr86_vgpr87, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, killed $vgpr0, $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79376B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr88_vgpr89_vgpr90_vgpr91, $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr210_vgpr211_vgpr212_vgpr213, 4, 0, $vgpr82, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79392B	  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr92_vgpr93_vgpr94_vgpr95, $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr82, $vgpr80, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79472B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr96_vgpr97_vgpr98_vgpr99, killed $vgpr64_vgpr65_vgpr66_vgpr67_vgpr68_vgpr69_vgpr70_vgpr71, killed $vgpr2_vgpr3_vgpr4_vgpr5, 4, 0, $vgpr82, $vgpr80, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79488B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr100_vgpr101_vgpr102_vgpr103, killed $vgpr72_vgpr73_vgpr74_vgpr75_vgpr76_vgpr77_vgpr78_vgpr79, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, killed $vgpr82, killed $vgpr80, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46

83600B	bb.71.._crit_edge._crit_edge:
	; predecessors: %bb.69, %bb.70
	  successors: %bb.1(0x80000000); %bb.1(100.00%)
	  liveins: $sgpr0, $sgpr5, $vgpr6, $vgpr60, $vgpr61, $vgpr62, $vgpr83, $vgpr115, $vgpr116, $vgpr227, $vgpr229, $vgpr231, $vgpr233, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr104_vgpr105:0x0000000000000003, $vgpr106_vgpr107:0x000000000000000F, $vgpr108_vgpr109:0x000000000000000F, $vgpr110_vgpr111:0x000000000000000F, $vgpr112_vgpr113:0x000000000000000F, $vgpr114_vgpr115:0x0000000000000003, $vgpr228_vgpr229:0x0000000000000003, $vgpr230_vgpr231:0x0000000000000003, $vgpr232_vgpr233:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr236_vgpr237:0x0000000000000003, $vgpr2_vgpr3_vgpr4_vgpr5:0x00000000000000FF, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr134_vgpr135_vgpr136_vgpr137:0x00000000000000FF, $vgpr138_vgpr139_vgpr140_vgpr141:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr146_vgpr147_vgpr148_vgpr149:0x00000000000000FF, $vgpr150_vgpr151_vgpr152_vgpr153:0x00000000000000FF, $vgpr154_vgpr155_vgpr156_vgpr157:0x00000000000000FF, $vgpr158_vgpr159_vgpr160_vgpr161:0x00000000000000FF, $vgpr162_vgpr163_vgpr164_vgpr165:0x00000000000000FF, $vgpr166_vgpr167_vgpr168_vgpr169:0x00000000000000FF, $vgpr170_vgpr171_vgpr172_vgpr173:0x00000000000000FF, $vgpr174_vgpr175_vgpr176_vgpr177:0x00000000000000FF, $vgpr178_vgpr179_vgpr180_vgpr181:0x00000000000000FF, $vgpr182_vgpr183_vgpr184_vgpr185:0x00000000000000FF, $vgpr186_vgpr187_vgpr188_vgpr189:0x00000000000000FF, $vgpr194_vgpr195_vgpr196_vgpr197:0x00000000000000FF, $vgpr198_vgpr199_vgpr200_vgpr201:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr214_vgpr215_vgpr216_vgpr217:0x00000000000000FF, $vgpr218_vgpr219_vgpr220_vgpr221:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF
85648B	  renamable $vgpr0 = V_OR_B32_e32 $sgpr18, $vgpr227, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
85664B	  renamable $vgpr1 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
85952B	  renamable $vgpr7 = V_MUL_LO_U32_e64 killed $vgpr83, killed $sgpr0, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
85968B	  renamable $vgpr7 = V_ADD_U32_e32 killed $sgpr18, killed $vgpr7, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
86000B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
86016B	  renamable $sgpr19 = S_MOV_B32 159744
86032B	  renamable $sgpr18 = S_MOV_B32 2147483646
86112B	  renamable $vgpr7 = V_ADD_LSHL_U32_e64 killed $vgpr7, $vgpr227, 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
86128B	  renamable $vgpr63 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
86144B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr22_sgpr23, killed $vgpr0_vgpr1, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
86160B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr7, killed $vcc, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
86176B	  renamable $vgpr8 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
86192B	  renamable $vgpr59 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
86208B	  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr8_sgpr9, renamable $vgpr59, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
86224B	  renamable $vgpr105 = V_ASHRREV_I32_e32 31, $vgpr104, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
86240B	  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
86256B	  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
86272B	  renamable $sgpr4 = S_MOV_B32 65535
86320B	  renamable $vgpr1 = V_AND_B32_e32 96, killed $vgpr115, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86336B	  renamable $vgpr7 = V_AND_B32_e32 1932, killed $vgpr116, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86352B	  renamable $vgpr64 = V_AND_B32_e32 16, $vgpr227, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86464B	  renamable $vgpr6 = V_LSHL_ADD_U32_e64 killed $vgpr6, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86480B	  renamable $vgpr58 = V_OR_B32_e32 $sgpr12, killed $vgpr114, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
86496B	  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
86512B	  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 killed $vgpr106_vgpr107, $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86528B	  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 killed $vgpr112_vgpr113, $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86544B	  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 killed $vgpr110_vgpr111, $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86560B	  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 killed $vgpr108_vgpr109, killed $vgpr104_vgpr105, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86576B	  renamable $vgpr1 = nuw V_ADD_U32_e32 0, killed $vgpr1, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86592B	  renamable $vgpr1 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr7, $vgpr64, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86608B	  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
86624B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
86640B	  DS_WRITE_B32_gfx9 killed renamable $vgpr1, killed renamable $vgpr8, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
86656B	  ATOMIC_FENCE 5, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
86672B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
86688B	  ATOMIC_FENCE 4, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
86704B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr6, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
86720B	  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
86736B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = DS_READ_B128_gfx9 renamable $vgpr6, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
86752B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr6, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
86768B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 killed renamable $vgpr6, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
86800B	  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 0, $vgpr138, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86816B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 0, $vgpr139, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86832B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 0, $vgpr140, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86848B	  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 0, killed $vgpr141, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86864B	  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 0, $vgpr142, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86880B	  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 0, $vgpr143, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86896B	  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 0, $vgpr144, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86912B	  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 0, killed $vgpr145, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86928B	  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 0, $vgpr126, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86944B	  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 0, $vgpr127, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86960B	  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 0, $vgpr128, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86976B	  renamable $vgpr81 = nofpexcept V_FMA_F32_e64 0, killed $vgpr129, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86992B	  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 0, $vgpr222, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87008B	  renamable $vgpr82 = nofpexcept V_FMA_F32_e64 0, $vgpr223, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87024B	  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 0, $vgpr224, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87040B	  renamable $vgpr83 = nofpexcept V_FMA_F32_e64 0, killed $vgpr225, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87056B	  renamable $vgpr77 = nofpexcept V_FMA_F32_e64 0, $vgpr178, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87072B	  renamable $vgpr84 = nofpexcept V_FMA_F32_e64 0, $vgpr179, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87088B	  renamable $vgpr78 = nofpexcept V_FMA_F32_e64 0, $vgpr180, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87104B	  renamable $vgpr85 = nofpexcept V_FMA_F32_e64 0, killed $vgpr181, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87120B	  renamable $vgpr79 = nofpexcept V_FMA_F32_e64 0, $vgpr218, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87136B	  renamable $vgpr86 = nofpexcept V_FMA_F32_e64 0, $vgpr219, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87152B	  renamable $vgpr80 = nofpexcept V_FMA_F32_e64 0, $vgpr220, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87168B	  renamable $vgpr87 = nofpexcept V_FMA_F32_e64 0, killed $vgpr221, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87184B	  renamable $vgpr93 = nofpexcept V_FMA_F32_e64 0, $vgpr146, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87200B	  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 0, $vgpr147, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87216B	  renamable $vgpr94 = nofpexcept V_FMA_F32_e64 0, $vgpr148, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87232B	  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 0, killed $vgpr149, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87248B	  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 0, $vgpr22, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87264B	  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 0, $vgpr23, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87280B	  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 0, $vgpr24, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87296B	  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 0, killed $vgpr25, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87312B	  renamable $vgpr97 = nofpexcept V_FMA_F32_e64 0, $vgpr170, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87328B	  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 0, $vgpr171, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87344B	  renamable $vgpr98 = nofpexcept V_FMA_F32_e64 0, $vgpr172, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87360B	  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 0, killed $vgpr173, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87376B	  renamable $vgpr99 = nofpexcept V_FMA_F32_e64 0, $vgpr166, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87392B	  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 0, $vgpr167, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87408B	  renamable $vgpr100 = nofpexcept V_FMA_F32_e64 0, $vgpr168, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87424B	  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 0, killed $vgpr169, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87440B	  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 0, $vgpr18, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87456B	  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 0, $vgpr19, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87472B	  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 0, $vgpr20, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87488B	  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 0, killed $vgpr21, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87504B	  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 0, $vgpr14, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87520B	  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 0, $vgpr15, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87536B	  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 0, $vgpr16, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87552B	  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 0, killed $vgpr17, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87568B	  renamable $vgpr105 = nofpexcept V_FMA_F32_e64 0, $vgpr162, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87584B	  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 0, $vgpr163, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87600B	  renamable $vgpr106 = nofpexcept V_FMA_F32_e64 0, $vgpr164, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87616B	  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 0, killed $vgpr165, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87632B	  renamable $vgpr107 = nofpexcept V_FMA_F32_e64 0, $vgpr154, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87648B	  renamable $vgpr146 = nofpexcept V_FMA_F32_e64 0, $vgpr155, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87664B	  renamable $vgpr108 = nofpexcept V_FMA_F32_e64 0, $vgpr156, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87680B	  renamable $vgpr147 = nofpexcept V_FMA_F32_e64 0, killed $vgpr157, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87696B	  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 0, $vgpr10, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87712B	  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 0, $vgpr11, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87728B	  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 0, $vgpr12, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87744B	  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 0, killed $vgpr13, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87760B	  renamable $vgpr111 = nofpexcept V_FMA_F32_e64 0, $vgpr194, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87776B	  renamable $vgpr148 = nofpexcept V_FMA_F32_e64 0, $vgpr195, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87792B	  renamable $vgpr112 = nofpexcept V_FMA_F32_e64 0, $vgpr196, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87808B	  renamable $vgpr149 = nofpexcept V_FMA_F32_e64 0, killed $vgpr197, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87824B	  renamable $vgpr113 = nofpexcept V_FMA_F32_e64 0, $vgpr198, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87840B	  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 0, $vgpr199, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87856B	  renamable $vgpr114 = nofpexcept V_FMA_F32_e64 0, $vgpr200, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87872B	  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 0, killed $vgpr201, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87888B	  renamable $vgpr115 = nofpexcept V_FMA_F32_e64 0, $vgpr118, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87904B	  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 0, $vgpr119, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87920B	  renamable $vgpr116 = nofpexcept V_FMA_F32_e64 0, $vgpr120, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87936B	  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 0, killed $vgpr121, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87952B	  renamable $vgpr117 = nofpexcept V_FMA_F32_e64 0, $vgpr134, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87968B	  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 0, $vgpr135, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87984B	  renamable $vgpr118 = nofpexcept V_FMA_F32_e64 0, $vgpr136, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88000B	  renamable $vgpr137 = nofpexcept V_FMA_F32_e64 0, killed $vgpr137, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88016B	  renamable $vgpr119 = nofpexcept V_FMA_F32_e64 0, $vgpr130, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88032B	  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 0, $vgpr131, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88048B	  renamable $vgpr120 = nofpexcept V_FMA_F32_e64 0, $vgpr132, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88064B	  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 0, killed $vgpr133, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88080B	  renamable $vgpr121 = nofpexcept V_FMA_F32_e64 0, $vgpr122, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88096B	  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 0, $vgpr123, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88112B	  renamable $vgpr122 = nofpexcept V_FMA_F32_e64 0, $vgpr124, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88128B	  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 0, killed $vgpr125, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88144B	  renamable $vgpr123 = nofpexcept V_FMA_F32_e64 0, $vgpr158, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88160B	  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 0, $vgpr159, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88176B	  renamable $vgpr124 = nofpexcept V_FMA_F32_e64 0, $vgpr160, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88192B	  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 0, killed $vgpr161, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88208B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 0, $vgpr46, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88224B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 0, $vgpr47, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88240B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 0, $vgpr48, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88256B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 0, killed $vgpr49, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88272B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 0, $vgpr50, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88288B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 0, $vgpr51, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88304B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 0, $vgpr52, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88320B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 0, killed $vgpr53, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88336B	  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 0, $vgpr214, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88352B	  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 0, $vgpr215, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88368B	  renamable $vgpr130 = nofpexcept V_FMA_F32_e64 0, $vgpr216, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88384B	  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 0, killed $vgpr217, 0, $vgpr0, 0, $vgpr33, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88400B	  renamable $vgpr131 = nofpexcept V_FMA_F32_e64 0, $vgpr202, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88416B	  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 0, $vgpr203, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88432B	  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 0, $vgpr204, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88448B	  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 0, killed $vgpr205, 0, $vgpr0, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88464B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 0, $vgpr150, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88480B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 0, $vgpr151, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88496B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 0, $vgpr152, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88512B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 0, killed $vgpr153, 0, $vgpr0, 0, $vgpr29, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88528B	  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 0, $vgpr182, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88544B	  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 0, $vgpr183, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88560B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 0, $vgpr184, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88576B	  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 0, killed $vgpr185, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88592B	  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 0, $vgpr174, 0, $vgpr0, 0, $vgpr30, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88608B	  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 0, $vgpr175, 0, $vgpr0, 0, $vgpr31, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88624B	  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 0, $vgpr176, 0, $vgpr0, 0, $vgpr32, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88656B	  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr177, $vgpr0, $vgpr33(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88672B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 0, $vgpr186, 0, $vgpr0, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88688B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 0, $vgpr187, 0, $vgpr0, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88704B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 0, $vgpr188, 0, $vgpr0, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88736B	  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr189, $vgpr0, $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88752B	  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 0, $vgpr210, 0, $vgpr0, 0, $vgpr26, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88768B	  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 0, $vgpr211, 0, $vgpr0, 0, $vgpr27, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88784B	  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 0, $vgpr212, 0, $vgpr0, 0, $vgpr28, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88816B	  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr213, $vgpr0, $vgpr29(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88832B	  renamable $vgpr2 = nofpexcept V_FMA_F32_e64 0, $vgpr2, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88848B	  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 0, $vgpr3, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88864B	  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 0, $vgpr4, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88896B	  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, killed $vgpr0, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88912B	  renamable $vgpr0 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88928B	  renamable $vgpr1 = nofpexcept V_MIN_F32_e32 killed $vgpr1, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88944B	  renamable $vgpr174 = nofpexcept V_MIN_F32_e32 killed $vgpr66, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88960B	  renamable $vgpr175 = nofpexcept V_MIN_F32_e32 killed $vgpr68, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88976B	  renamable $vgpr176 = nofpexcept V_MIN_F32_e32 killed $vgpr70, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88992B	  renamable $vgpr177 = nofpexcept V_MIN_F32_e32 killed $vgpr72, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89008B	  renamable $vgpr178 = nofpexcept V_MIN_F32_e32 killed $vgpr74, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89024B	  renamable $vgpr179 = nofpexcept V_MIN_F32_e32 killed $vgpr75, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89040B	  renamable $vgpr88 = nofpexcept V_MIN_F32_e32 killed $vgpr76, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89056B	  renamable $vgpr89 = nofpexcept V_MIN_F32_e32 killed $vgpr77, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89072B	  renamable $vgpr90 = nofpexcept V_MIN_F32_e32 killed $vgpr78, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89088B	  renamable $vgpr91 = nofpexcept V_MIN_F32_e32 killed $vgpr79, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89104B	  renamable $vgpr92 = nofpexcept V_MIN_F32_e32 killed $vgpr80, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89120B	  renamable $vgpr93 = nofpexcept V_MIN_F32_e32 killed $vgpr93, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89136B	  renamable $vgpr94 = nofpexcept V_MIN_F32_e32 killed $vgpr94, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89152B	  renamable $vgpr95 = nofpexcept V_MIN_F32_e32 killed $vgpr22, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89168B	  renamable $vgpr96 = nofpexcept V_MIN_F32_e32 killed $vgpr24, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89184B	  renamable $vgpr97 = nofpexcept V_MIN_F32_e32 killed $vgpr97, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89200B	  renamable $vgpr98 = nofpexcept V_MIN_F32_e32 killed $vgpr98, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89216B	  renamable $vgpr99 = nofpexcept V_MIN_F32_e32 killed $vgpr99, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89232B	  renamable $vgpr100 = nofpexcept V_MIN_F32_e32 killed $vgpr100, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89248B	  renamable $vgpr101 = nofpexcept V_MIN_F32_e32 killed $vgpr18, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89264B	  renamable $vgpr102 = nofpexcept V_MIN_F32_e32 killed $vgpr20, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89280B	  renamable $vgpr103 = nofpexcept V_MIN_F32_e32 killed $vgpr14, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89296B	  renamable $vgpr104 = nofpexcept V_MIN_F32_e32 killed $vgpr16, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89312B	  renamable $vgpr105 = nofpexcept V_MIN_F32_e32 killed $vgpr105, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89328B	  renamable $vgpr106 = nofpexcept V_MIN_F32_e32 killed $vgpr106, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89344B	  renamable $vgpr107 = nofpexcept V_MIN_F32_e32 killed $vgpr107, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89360B	  renamable $vgpr108 = nofpexcept V_MIN_F32_e32 killed $vgpr108, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89376B	  renamable $vgpr109 = nofpexcept V_MIN_F32_e32 killed $vgpr10, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89392B	  renamable $vgpr110 = nofpexcept V_MIN_F32_e32 killed $vgpr12, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89408B	  renamable $vgpr111 = nofpexcept V_MIN_F32_e32 killed $vgpr111, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89424B	  renamable $vgpr112 = nofpexcept V_MIN_F32_e32 killed $vgpr112, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89440B	  renamable $vgpr113 = nofpexcept V_MIN_F32_e32 killed $vgpr113, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89456B	  renamable $vgpr114 = nofpexcept V_MIN_F32_e32 killed $vgpr114, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89472B	  renamable $vgpr115 = nofpexcept V_MIN_F32_e32 killed $vgpr115, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89488B	  renamable $vgpr116 = nofpexcept V_MIN_F32_e32 killed $vgpr116, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89504B	  renamable $vgpr117 = nofpexcept V_MIN_F32_e32 killed $vgpr117, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89520B	  renamable $vgpr118 = nofpexcept V_MIN_F32_e32 killed $vgpr118, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89536B	  renamable $vgpr119 = nofpexcept V_MIN_F32_e32 killed $vgpr119, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89552B	  renamable $vgpr120 = nofpexcept V_MIN_F32_e32 killed $vgpr120, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89568B	  renamable $vgpr121 = nofpexcept V_MIN_F32_e32 killed $vgpr121, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89584B	  renamable $vgpr122 = nofpexcept V_MIN_F32_e32 killed $vgpr122, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89600B	  renamable $vgpr123 = nofpexcept V_MIN_F32_e32 killed $vgpr123, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89616B	  renamable $vgpr124 = nofpexcept V_MIN_F32_e32 killed $vgpr124, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89632B	  renamable $vgpr125 = nofpexcept V_MIN_F32_e32 killed $vgpr46, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89648B	  renamable $vgpr126 = nofpexcept V_MIN_F32_e32 killed $vgpr48, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89664B	  renamable $vgpr127 = nofpexcept V_MIN_F32_e32 killed $vgpr50, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89680B	  renamable $vgpr128 = nofpexcept V_MIN_F32_e32 killed $vgpr52, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89696B	  renamable $vgpr129 = nofpexcept V_MIN_F32_e32 killed $vgpr34, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89712B	  renamable $vgpr130 = nofpexcept V_MIN_F32_e32 killed $vgpr130, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89728B	  renamable $vgpr131 = nofpexcept V_MIN_F32_e32 killed $vgpr131, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89744B	  renamable $vgpr132 = nofpexcept V_MIN_F32_e32 killed $vgpr132, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89760B	  renamable $vgpr133 = nofpexcept V_MIN_F32_e32 killed $vgpr42, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89776B	  renamable $vgpr134 = nofpexcept V_MIN_F32_e32 killed $vgpr44, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89792B	  renamable $vgpr135 = nofpexcept V_MIN_F32_e32 killed $vgpr38, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89808B	  renamable $vgpr136 = nofpexcept V_MIN_F32_e32 killed $vgpr40, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89824B	  renamable $vgpr80 = nofpexcept V_MIN_F32_e32 killed $vgpr30, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89840B	  renamable $vgpr79 = nofpexcept V_MIN_F32_e32 killed $vgpr32, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89856B	  renamable $vgpr78 = nofpexcept V_MIN_F32_e32 killed $vgpr54, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89872B	  renamable $vgpr77 = nofpexcept V_MIN_F32_e32 killed $vgpr56, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89888B	  renamable $vgpr76 = nofpexcept V_MIN_F32_e32 killed $vgpr26, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89904B	  renamable $vgpr75 = nofpexcept V_MIN_F32_e32 killed $vgpr28, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89920B	  renamable $vgpr3 = nofpexcept V_MIN_F32_e32 killed $vgpr2, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89936B	  renamable $vgpr2 = nofpexcept V_MIN_F32_e32 killed $vgpr4, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89952B	  renamable $vgpr4 = nofpexcept V_MIN_F32_e32 killed $vgpr65, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89968B	  renamable $vgpr5 = nofpexcept V_MIN_F32_e32 killed $vgpr67, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89984B	  renamable $vgpr7 = nofpexcept V_MIN_F32_e32 killed $vgpr69, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90000B	  renamable $vgpr8 = nofpexcept V_MIN_F32_e32 killed $vgpr71, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90016B	  renamable $vgpr10 = nofpexcept V_MIN_F32_e32 killed $vgpr73, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90032B	  renamable $vgpr12 = nofpexcept V_MIN_F32_e32 killed $vgpr81, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90048B	  renamable $vgpr14 = nofpexcept V_MIN_F32_e32 killed $vgpr82, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90064B	  renamable $vgpr16 = nofpexcept V_MIN_F32_e32 killed $vgpr83, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90080B	  renamable $vgpr18 = nofpexcept V_MIN_F32_e32 killed $vgpr84, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90096B	  renamable $vgpr20 = nofpexcept V_MIN_F32_e32 killed $vgpr85, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90112B	  renamable $vgpr22 = nofpexcept V_MIN_F32_e32 killed $vgpr86, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90128B	  renamable $vgpr24 = nofpexcept V_MIN_F32_e32 killed $vgpr87, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90144B	  renamable $vgpr26 = nofpexcept V_MIN_F32_e32 killed $vgpr138, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90160B	  renamable $vgpr28 = nofpexcept V_MIN_F32_e32 killed $vgpr139, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90176B	  renamable $vgpr23 = nofpexcept V_MIN_F32_e32 killed $vgpr23, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90192B	  renamable $vgpr25 = nofpexcept V_MIN_F32_e32 killed $vgpr25, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90208B	  renamable $vgpr30 = nofpexcept V_MIN_F32_e32 killed $vgpr140, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90224B	  renamable $vgpr32 = nofpexcept V_MIN_F32_e32 killed $vgpr141, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90240B	  renamable $vgpr34 = nofpexcept V_MIN_F32_e32 killed $vgpr142, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90256B	  renamable $vgpr35 = nofpexcept V_MIN_F32_e32 killed $vgpr143, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90272B	  renamable $vgpr36 = nofpexcept V_MIN_F32_e32 killed $vgpr19, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90288B	  renamable $vgpr37 = nofpexcept V_MIN_F32_e32 killed $vgpr21, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90304B	  renamable $vgpr38 = nofpexcept V_MIN_F32_e32 killed $vgpr15, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90320B	  renamable $vgpr40 = nofpexcept V_MIN_F32_e32 killed $vgpr17, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90336B	  renamable $vgpr42 = nofpexcept V_MIN_F32_e32 killed $vgpr144, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90352B	  renamable $vgpr44 = nofpexcept V_MIN_F32_e32 killed $vgpr145, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90368B	  renamable $vgpr46 = nofpexcept V_MIN_F32_e32 killed $vgpr146, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90384B	  renamable $vgpr48 = nofpexcept V_MIN_F32_e32 killed $vgpr147, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90400B	  renamable $vgpr50 = nofpexcept V_MIN_F32_e32 killed $vgpr11, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90416B	  renamable $vgpr52 = nofpexcept V_MIN_F32_e32 killed $vgpr13, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90432B	  renamable $vgpr54 = nofpexcept V_MIN_F32_e32 killed $vgpr148, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90448B	  renamable $vgpr56 = nofpexcept V_MIN_F32_e32 killed $vgpr149, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90464B	  renamable $vgpr65 = nofpexcept V_MIN_F32_e32 killed $vgpr169, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90480B	  renamable $vgpr66 = nofpexcept V_MIN_F32_e32 killed $vgpr170, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90496B	  renamable $vgpr67 = nofpexcept V_MIN_F32_e32 killed $vgpr171, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90512B	  renamable $vgpr68 = nofpexcept V_MIN_F32_e32 killed $vgpr172, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90528B	  renamable $vgpr69 = nofpexcept V_MIN_F32_e32 killed $vgpr154, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90544B	  renamable $vgpr70 = nofpexcept V_MIN_F32_e32 killed $vgpr137, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90560B	  renamable $vgpr71 = nofpexcept V_MIN_F32_e32 killed $vgpr155, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90576B	  renamable $vgpr72 = nofpexcept V_MIN_F32_e32 killed $vgpr156, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90592B	  renamable $vgpr73 = nofpexcept V_MIN_F32_e32 killed $vgpr157, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90608B	  renamable $vgpr74 = nofpexcept V_MIN_F32_e32 killed $vgpr165, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90624B	  renamable $vgpr81 = nofpexcept V_MIN_F32_e32 killed $vgpr166, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90640B	  renamable $vgpr82 = nofpexcept V_MIN_F32_e32 killed $vgpr167, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90656B	  renamable $vgpr83 = nofpexcept V_MIN_F32_e32 killed $vgpr47, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90672B	  renamable $vgpr49 = nofpexcept V_MIN_F32_e32 killed $vgpr49, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90688B	  renamable $vgpr51 = nofpexcept V_MIN_F32_e32 killed $vgpr51, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90704B	  renamable $vgpr53 = nofpexcept V_MIN_F32_e32 killed $vgpr53, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90720B	  renamable $vgpr84 = nofpexcept V_MIN_F32_e32 killed $vgpr168, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90736B	  renamable $vgpr85 = nofpexcept V_MIN_F32_e32 killed $vgpr162, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90752B	  renamable $vgpr86 = nofpexcept V_MIN_F32_e32 killed $vgpr163, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90768B	  renamable $vgpr87 = nofpexcept V_MIN_F32_e32 killed $vgpr164, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90784B	  renamable $vgpr137 = nofpexcept V_MIN_F32_e32 killed $vgpr43, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90800B	  renamable $vgpr138 = nofpexcept V_MIN_F32_e32 killed $vgpr45, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90816B	  renamable $vgpr139 = nofpexcept V_MIN_F32_e32 killed $vgpr39, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90832B	  renamable $vgpr140 = nofpexcept V_MIN_F32_e32 killed $vgpr41, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90848B	  renamable $vgpr141 = nofpexcept V_MIN_F32_e32 killed $vgpr31, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90864B	  renamable $vgpr142 = nofpexcept V_MIN_F32_e32 killed $vgpr33, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90880B	  renamable $vgpr143 = nofpexcept V_MIN_F32_e32 killed $vgpr55, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90896B	  renamable $vgpr144 = nofpexcept V_MIN_F32_e32 killed $vgpr57, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90912B	  renamable $vgpr145 = nofpexcept V_MIN_F32_e32 killed $vgpr27, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90928B	  renamable $vgpr146 = nofpexcept V_MIN_F32_e32 killed $vgpr29, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90944B	  renamable $vgpr147 = nofpexcept V_MIN_F32_e32 killed $vgpr6, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90960B	  renamable $vgpr0 = nofpexcept V_MIN_F32_e32 killed $vgpr9, killed $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90976B	  renamable $vgpr4 = nofpexcept V_MAX_F32_e64 0, killed $vgpr4, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90992B	  renamable $vgpr5 = nofpexcept V_MAX_F32_e64 0, killed $vgpr5, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91008B	  renamable $vgpr6 = nofpexcept V_MAX_F32_e64 0, killed $vgpr7, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91024B	  renamable $vgpr7 = nofpexcept V_MAX_F32_e64 0, killed $vgpr8, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91040B	  renamable $vgpr8 = nofpexcept V_MAX_F32_e64 0, killed $vgpr10, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91056B	  renamable $vgpr9 = nofpexcept V_MAX_F32_e64 0, killed $vgpr12, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91072B	  renamable $vgpr10 = nofpexcept V_MAX_F32_e64 0, killed $vgpr14, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91088B	  renamable $vgpr11 = nofpexcept V_MAX_F32_e64 0, killed $vgpr16, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91104B	  renamable $vgpr12 = nofpexcept V_MAX_F32_e64 0, killed $vgpr18, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91120B	  renamable $vgpr13 = nofpexcept V_MAX_F32_e64 0, killed $vgpr20, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91136B	  renamable $vgpr14 = nofpexcept V_MAX_F32_e64 0, killed $vgpr22, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91152B	  renamable $vgpr15 = nofpexcept V_MAX_F32_e64 0, killed $vgpr24, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91168B	  renamable $vgpr16 = nofpexcept V_MAX_F32_e64 0, killed $vgpr26, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91184B	  renamable $vgpr17 = nofpexcept V_MAX_F32_e64 0, killed $vgpr28, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91200B	  renamable $vgpr18 = nofpexcept V_MAX_F32_e64 0, killed $vgpr23, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91216B	  renamable $vgpr19 = nofpexcept V_MAX_F32_e64 0, killed $vgpr25, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91232B	  renamable $vgpr20 = nofpexcept V_MAX_F32_e64 0, killed $vgpr30, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91248B	  renamable $vgpr21 = nofpexcept V_MAX_F32_e64 0, killed $vgpr32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91264B	  renamable $vgpr22 = nofpexcept V_MAX_F32_e64 0, killed $vgpr34, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91280B	  renamable $vgpr23 = nofpexcept V_MAX_F32_e64 0, killed $vgpr35, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91296B	  renamable $vgpr24 = nofpexcept V_MAX_F32_e64 0, killed $vgpr36, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91312B	  renamable $vgpr25 = nofpexcept V_MAX_F32_e64 0, killed $vgpr37, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91328B	  renamable $vgpr26 = nofpexcept V_MAX_F32_e64 0, killed $vgpr38, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91344B	  renamable $vgpr27 = nofpexcept V_MAX_F32_e64 0, killed $vgpr40, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91360B	  renamable $vgpr28 = nofpexcept V_MAX_F32_e64 0, killed $vgpr42, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91376B	  renamable $vgpr29 = nofpexcept V_MAX_F32_e64 0, killed $vgpr44, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91392B	  renamable $vgpr30 = nofpexcept V_MAX_F32_e64 0, killed $vgpr46, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91408B	  renamable $vgpr31 = nofpexcept V_MAX_F32_e64 0, killed $vgpr48, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91424B	  renamable $vgpr32 = nofpexcept V_MAX_F32_e64 0, killed $vgpr50, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91440B	  renamable $vgpr33 = nofpexcept V_MAX_F32_e64 0, killed $vgpr52, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91456B	  renamable $vgpr34 = nofpexcept V_MAX_F32_e64 0, killed $vgpr54, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91472B	  renamable $vgpr35 = nofpexcept V_MAX_F32_e64 0, killed $vgpr56, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91488B	  renamable $vgpr36 = nofpexcept V_MAX_F32_e64 0, killed $vgpr65, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91504B	  renamable $vgpr37 = nofpexcept V_MAX_F32_e64 0, killed $vgpr66, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91520B	  renamable $vgpr38 = nofpexcept V_MAX_F32_e64 0, killed $vgpr67, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91536B	  renamable $vgpr39 = nofpexcept V_MAX_F32_e64 0, killed $vgpr68, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91552B	  renamable $vgpr40 = nofpexcept V_MAX_F32_e64 0, killed $vgpr69, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91568B	  renamable $vgpr41 = nofpexcept V_MAX_F32_e64 0, killed $vgpr70, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91584B	  renamable $vgpr42 = nofpexcept V_MAX_F32_e64 0, killed $vgpr71, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91600B	  renamable $vgpr43 = nofpexcept V_MAX_F32_e64 0, killed $vgpr72, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91616B	  renamable $vgpr44 = nofpexcept V_MAX_F32_e64 0, killed $vgpr73, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91632B	  renamable $vgpr45 = nofpexcept V_MAX_F32_e64 0, killed $vgpr74, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91648B	  renamable $vgpr46 = nofpexcept V_MAX_F32_e64 0, killed $vgpr81, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91664B	  renamable $vgpr47 = nofpexcept V_MAX_F32_e64 0, killed $vgpr82, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91680B	  renamable $vgpr48 = nofpexcept V_MAX_F32_e64 0, killed $vgpr83, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91696B	  renamable $vgpr49 = nofpexcept V_MAX_F32_e64 0, killed $vgpr49, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91712B	  renamable $vgpr50 = nofpexcept V_MAX_F32_e64 0, killed $vgpr51, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91728B	  renamable $vgpr51 = nofpexcept V_MAX_F32_e64 0, killed $vgpr53, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91744B	  renamable $vgpr52 = nofpexcept V_MAX_F32_e64 0, killed $vgpr84, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91760B	  renamable $vgpr53 = nofpexcept V_MAX_F32_e64 0, killed $vgpr85, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91776B	  renamable $vgpr54 = nofpexcept V_MAX_F32_e64 0, killed $vgpr86, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91792B	  renamable $vgpr55 = nofpexcept V_MAX_F32_e64 0, killed $vgpr87, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91808B	  renamable $vgpr56 = nofpexcept V_MAX_F32_e64 0, killed $vgpr137, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91824B	  renamable $vgpr57 = nofpexcept V_MAX_F32_e64 0, killed $vgpr138, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91840B	  renamable $vgpr65 = nofpexcept V_MAX_F32_e64 0, killed $vgpr139, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91856B	  renamable $vgpr66 = nofpexcept V_MAX_F32_e64 0, killed $vgpr140, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91872B	  renamable $vgpr67 = nofpexcept V_MAX_F32_e64 0, killed $vgpr141, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91888B	  renamable $vgpr68 = nofpexcept V_MAX_F32_e64 0, killed $vgpr142, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91904B	  renamable $vgpr69 = nofpexcept V_MAX_F32_e64 0, killed $vgpr143, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91920B	  renamable $vgpr70 = nofpexcept V_MAX_F32_e64 0, killed $vgpr144, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91936B	  renamable $vgpr71 = nofpexcept V_MAX_F32_e64 0, killed $vgpr145, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91952B	  renamable $vgpr72 = nofpexcept V_MAX_F32_e64 0, killed $vgpr146, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91968B	  renamable $vgpr73 = nofpexcept V_MAX_F32_e64 0, killed $vgpr147, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91984B	  renamable $vgpr74 = nofpexcept V_MAX_F32_e64 0, killed $vgpr0, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92000B	  renamable $vgpr0 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
92016B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $sgpr14, killed $vgpr0, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
92032B	  renamable $vgpr81 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr1, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92048B	  renamable $vgpr82 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr174, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92064B	  renamable $vgpr83 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92080B	  renamable $vgpr84 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92096B	  renamable $vgpr85 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr177, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92112B	  renamable $vgpr86 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr178, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92128B	  renamable $vgpr87 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr179, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92144B	  renamable $vgpr137 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr88, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92160B	  renamable $vgpr138 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr89, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92176B	  renamable $vgpr139 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr90, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92192B	  renamable $vgpr140 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr91, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92208B	  renamable $vgpr141 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr92, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92224B	  renamable $vgpr142 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr93, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92240B	  renamable $vgpr143 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr94, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92256B	  renamable $vgpr144 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr95, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92272B	  renamable $vgpr145 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr96, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92288B	  renamable $vgpr146 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr97, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92304B	  renamable $vgpr147 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr98, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92320B	  renamable $vgpr148 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr99, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92336B	  renamable $vgpr149 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr100, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92352B	  renamable $vgpr150 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr101, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92368B	  renamable $vgpr151 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr102, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92384B	  renamable $vgpr152 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr103, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92400B	  renamable $vgpr153 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr104, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92416B	  renamable $vgpr154 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr105, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92432B	  renamable $vgpr155 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr106, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92448B	  renamable $vgpr156 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr107, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92464B	  renamable $vgpr157 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr108, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92480B	  renamable $vgpr158 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr109, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92496B	  renamable $vgpr159 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr110, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92512B	  renamable $vgpr160 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr111, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92528B	  renamable $vgpr161 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr112, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92544B	  renamable $vgpr162 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr113, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92560B	  renamable $vgpr163 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr114, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92576B	  renamable $vgpr164 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr115, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92592B	  renamable $vgpr165 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr116, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92608B	  renamable $vgpr166 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr117, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92624B	  renamable $vgpr167 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr118, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92640B	  renamable $vgpr168 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr119, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92656B	  renamable $vgpr169 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr120, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92672B	  renamable $vgpr170 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr121, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92688B	  renamable $vgpr171 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr122, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92704B	  renamable $vgpr172 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr123, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92720B	  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr124, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92736B	  renamable $vgpr180 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr125, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92752B	  renamable $vgpr181 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr126, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92768B	  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr127, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92784B	  renamable $vgpr183 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr128, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92800B	  renamable $vgpr184 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr129, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92816B	  renamable $vgpr185 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr130, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92832B	  renamable $vgpr186 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr131, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92848B	  renamable $vgpr187 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr132, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92864B	  renamable $vgpr188 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr133, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92880B	  renamable $vgpr189 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr134, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92896B	  renamable $vgpr190 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr135, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92912B	  renamable $vgpr191 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr136, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92928B	  renamable $vgpr192 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr80, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92944B	  renamable $vgpr193 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr79, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92960B	  renamable $vgpr194 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr78, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92976B	  renamable $vgpr195 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr77, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92992B	  renamable $vgpr196 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr76, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93008B	  renamable $vgpr197 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr75, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93024B	  renamable $vgpr198 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr3, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93040B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $vgpr0, $vgpr2, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93056B	  renamable $vgpr81 = nofpexcept V_EXP_F32_e32 killed $vgpr81, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93072B	  renamable $vgpr82 = nofpexcept V_EXP_F32_e32 killed $vgpr82, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93088B	  renamable $vgpr83 = nofpexcept V_EXP_F32_e32 killed $vgpr83, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93104B	  renamable $vgpr84 = nofpexcept V_EXP_F32_e32 killed $vgpr84, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93120B	  renamable $vgpr85 = nofpexcept V_EXP_F32_e32 killed $vgpr85, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93136B	  renamable $vgpr86 = nofpexcept V_EXP_F32_e32 killed $vgpr86, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93152B	  renamable $vgpr87 = nofpexcept V_EXP_F32_e32 killed $vgpr87, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93168B	  renamable $vgpr137 = nofpexcept V_EXP_F32_e32 killed $vgpr137, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93184B	  renamable $vgpr138 = nofpexcept V_EXP_F32_e32 killed $vgpr138, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93200B	  renamable $vgpr139 = nofpexcept V_EXP_F32_e32 killed $vgpr139, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93216B	  renamable $vgpr140 = nofpexcept V_EXP_F32_e32 killed $vgpr140, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93232B	  renamable $vgpr141 = nofpexcept V_EXP_F32_e32 killed $vgpr141, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93248B	  renamable $vgpr142 = nofpexcept V_EXP_F32_e32 killed $vgpr142, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93264B	  renamable $vgpr143 = nofpexcept V_EXP_F32_e32 killed $vgpr143, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93280B	  renamable $vgpr144 = nofpexcept V_EXP_F32_e32 killed $vgpr144, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93296B	  renamable $vgpr145 = nofpexcept V_EXP_F32_e32 killed $vgpr145, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93312B	  renamable $vgpr146 = nofpexcept V_EXP_F32_e32 killed $vgpr146, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93328B	  renamable $vgpr147 = nofpexcept V_EXP_F32_e32 killed $vgpr147, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93344B	  renamable $vgpr148 = nofpexcept V_EXP_F32_e32 killed $vgpr148, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93360B	  renamable $vgpr149 = nofpexcept V_EXP_F32_e32 killed $vgpr149, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93376B	  renamable $vgpr150 = nofpexcept V_EXP_F32_e32 killed $vgpr150, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93392B	  renamable $vgpr151 = nofpexcept V_EXP_F32_e32 killed $vgpr151, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93408B	  renamable $vgpr152 = nofpexcept V_EXP_F32_e32 killed $vgpr152, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93424B	  renamable $vgpr153 = nofpexcept V_EXP_F32_e32 killed $vgpr153, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93440B	  renamable $vgpr154 = nofpexcept V_EXP_F32_e32 killed $vgpr154, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93456B	  renamable $vgpr155 = nofpexcept V_EXP_F32_e32 killed $vgpr155, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93472B	  renamable $vgpr156 = nofpexcept V_EXP_F32_e32 killed $vgpr156, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93488B	  renamable $vgpr157 = nofpexcept V_EXP_F32_e32 killed $vgpr157, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93504B	  renamable $vgpr158 = nofpexcept V_EXP_F32_e32 killed $vgpr158, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93520B	  renamable $vgpr159 = nofpexcept V_EXP_F32_e32 killed $vgpr159, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93536B	  renamable $vgpr160 = nofpexcept V_EXP_F32_e32 killed $vgpr160, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93552B	  renamable $vgpr161 = nofpexcept V_EXP_F32_e32 killed $vgpr161, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93568B	  renamable $vgpr162 = nofpexcept V_EXP_F32_e32 killed $vgpr162, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93584B	  renamable $vgpr163 = nofpexcept V_EXP_F32_e32 killed $vgpr163, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93600B	  renamable $vgpr164 = nofpexcept V_EXP_F32_e32 killed $vgpr164, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93616B	  renamable $vgpr165 = nofpexcept V_EXP_F32_e32 killed $vgpr165, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93632B	  renamable $vgpr199 = nofpexcept V_EXP_F32_e32 killed $vgpr166, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93648B	  renamable $vgpr200 = nofpexcept V_EXP_F32_e32 killed $vgpr167, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93664B	  renamable $vgpr201 = nofpexcept V_EXP_F32_e32 killed $vgpr168, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93680B	  renamable $vgpr202 = nofpexcept V_EXP_F32_e32 killed $vgpr169, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93696B	  renamable $vgpr203 = nofpexcept V_EXP_F32_e32 killed $vgpr170, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93712B	  renamable $vgpr204 = nofpexcept V_EXP_F32_e32 killed $vgpr171, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93728B	  renamable $vgpr205 = nofpexcept V_EXP_F32_e32 killed $vgpr172, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93744B	  renamable $vgpr206 = nofpexcept V_EXP_F32_e32 killed $vgpr173, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93760B	  renamable $vgpr180 = nofpexcept V_EXP_F32_e32 killed $vgpr180, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93776B	  renamable $vgpr181 = nofpexcept V_EXP_F32_e32 killed $vgpr181, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93792B	  renamable $vgpr182 = nofpexcept V_EXP_F32_e32 killed $vgpr182, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93808B	  renamable $vgpr183 = nofpexcept V_EXP_F32_e32 killed $vgpr183, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93824B	  renamable $vgpr184 = nofpexcept V_EXP_F32_e32 killed $vgpr184, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93840B	  renamable $vgpr185 = nofpexcept V_EXP_F32_e32 killed $vgpr185, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93856B	  renamable $vgpr186 = nofpexcept V_EXP_F32_e32 killed $vgpr186, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93872B	  renamable $vgpr187 = nofpexcept V_EXP_F32_e32 killed $vgpr187, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93888B	  renamable $vgpr188 = nofpexcept V_EXP_F32_e32 killed $vgpr188, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93904B	  renamable $vgpr189 = nofpexcept V_EXP_F32_e32 killed $vgpr189, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93920B	  renamable $vgpr190 = nofpexcept V_EXP_F32_e32 killed $vgpr190, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93936B	  renamable $vgpr191 = nofpexcept V_EXP_F32_e32 killed $vgpr191, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93952B	  renamable $vgpr192 = nofpexcept V_EXP_F32_e32 killed $vgpr192, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93968B	  renamable $vgpr193 = nofpexcept V_EXP_F32_e32 killed $vgpr193, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93984B	  renamable $vgpr194 = nofpexcept V_EXP_F32_e32 killed $vgpr194, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94000B	  renamable $vgpr195 = nofpexcept V_EXP_F32_e32 killed $vgpr195, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94016B	  renamable $vgpr196 = nofpexcept V_EXP_F32_e32 killed $vgpr196, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94032B	  renamable $vgpr197 = nofpexcept V_EXP_F32_e32 killed $vgpr197, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94048B	  renamable $vgpr198 = nofpexcept V_EXP_F32_e32 killed $vgpr198, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94064B	  renamable $vgpr0 = nofpexcept V_EXP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94080B	  renamable $vgpr81 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr81, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94096B	  renamable $vgpr82 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr82, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94112B	  renamable $vgpr83 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr83, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94128B	  renamable $vgpr84 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr84, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94144B	  renamable $vgpr85 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr85, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94160B	  renamable $vgpr86 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr86, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94176B	  renamable $vgpr87 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr87, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94192B	  renamable $vgpr207 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr137, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94208B	  renamable $vgpr208 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr138, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94224B	  renamable $vgpr209 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr139, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94240B	  renamable $vgpr210 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr140, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94256B	  renamable $vgpr211 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr141, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94272B	  renamable $vgpr212 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr142, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94288B	  renamable $vgpr213 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr143, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94304B	  renamable $vgpr214 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr144, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94320B	  renamable $vgpr215 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr145, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94336B	  renamable $vgpr216 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr146, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94352B	  renamable $vgpr217 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr147, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94368B	  renamable $vgpr218 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr148, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94384B	  renamable $vgpr219 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr149, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94400B	  renamable $vgpr220 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr150, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94416B	  renamable $vgpr221 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr151, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94432B	  renamable $vgpr222 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr152, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94448B	  renamable $vgpr223 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr153, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94464B	  renamable $vgpr224 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr154, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94480B	  renamable $vgpr225 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr155, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94496B	  renamable $vgpr226 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr156, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94512B	  renamable $vgpr173 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr157, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94528B	  renamable $vgpr172 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr158, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94544B	  renamable $vgpr171 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr159, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94560B	  renamable $vgpr170 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr160, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94576B	  renamable $vgpr169 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr161, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94592B	  renamable $vgpr168 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr162, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94608B	  renamable $vgpr167 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr163, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94624B	  renamable $vgpr166 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr164, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94640B	  renamable $vgpr165 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr165, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94656B	  renamable $vgpr164 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr199, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94672B	  renamable $vgpr163 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr200, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94688B	  renamable $vgpr162 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr201, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94704B	  renamable $vgpr161 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr202, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94720B	  renamable $vgpr160 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr203, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94736B	  renamable $vgpr159 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr204, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94752B	  renamable $vgpr158 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr205, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94768B	  renamable $vgpr157 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr206, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94784B	  renamable $vgpr156 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr180, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94800B	  renamable $vgpr155 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr181, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94816B	  renamable $vgpr154 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr182, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94832B	  renamable $vgpr153 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr183, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94848B	  renamable $vgpr152 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr184, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94864B	  renamable $vgpr151 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr185, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94880B	  renamable $vgpr150 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr186, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94896B	  renamable $vgpr149 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr187, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94912B	  renamable $vgpr148 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr188, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94928B	  renamable $vgpr147 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr189, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94944B	  renamable $vgpr146 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr190, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94960B	  renamable $vgpr145 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr191, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94976B	  renamable $vgpr144 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr192, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94992B	  renamable $vgpr143 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr193, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95008B	  renamable $vgpr142 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr194, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95024B	  renamable $vgpr141 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr195, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95040B	  renamable $vgpr140 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr196, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95104B	  renamable $vgpr180, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr81, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95120B	  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95136B	  renamable $vgpr139 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr197, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95152B	  renamable $vgpr138 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr198, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95168B	  renamable $vgpr137 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr0, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95184B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95216B	  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95232B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr1, 0, $vgpr81, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95248B	  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95264B	  renamable $vgpr183 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr182, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95296B	  renamable $vgpr182 = nofpexcept V_FMAC_F32_e32 killed $vgpr183, $vgpr181, killed $vgpr182(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95312B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr180, 0, $vgpr182, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95376B	  renamable $vgpr180, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr82, 0, $vgpr174, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95392B	  renamable $vgpr183 = nofpexcept V_RCP_F32_e32 $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95424B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr182, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95440B	  renamable $vgpr81 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr81, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95456B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr183, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95488B	  renamable $vgpr183 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr183, $vgpr183(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95504B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr174, 0, $vgpr82, 0, $vgpr174, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95520B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr183, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95536B	  renamable $vgpr181 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95568B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr181, $vgpr183, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95584B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr180, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95648B	  renamable $vgpr180, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr83, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95664B	  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95696B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr183, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95712B	  renamable $vgpr82 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr82, 0, killed $vgpr174, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95728B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95760B	  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95776B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr175, 0, $vgpr83, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95792B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95808B	  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 1, $vgpr180, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95840B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr174, $vgpr181, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95856B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr180, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95920B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr84, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95936B	  renamable $vgpr180 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95968B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95984B	  renamable $vgpr83 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr83, 0, killed $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96000B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr180, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96032B	  renamable $vgpr180 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr180, $vgpr180(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96048B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr176, 0, $vgpr84, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96064B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr180, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96080B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96112B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr180, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96128B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96192B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr85, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96208B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96240B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr180, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96256B	  renamable $vgpr84 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr84, 0, killed $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96272B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96304B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96320B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr177, 0, $vgpr85, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96336B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96352B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96384B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96400B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96464B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr86, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96480B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96512B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96528B	  renamable $vgpr85 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr85, 0, killed $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96544B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96576B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96592B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr178, 0, $vgpr86, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96608B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96624B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96656B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96672B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96736B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr87, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96752B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96784B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96800B	  renamable $vgpr86 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr86, 0, killed $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96816B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96848B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96864B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr179, 0, $vgpr87, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96880B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96896B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96928B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96944B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97008B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr207, 0, $vgpr207, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97024B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97056B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97072B	  renamable $vgpr87 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr87, 0, killed $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97088B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97120B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97136B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr207, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97152B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97168B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97200B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97216B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97280B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr208, 0, $vgpr208, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97296B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97328B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97344B	  renamable $vgpr88 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr207, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97360B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97392B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97408B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr208, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97424B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97440B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97472B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97488B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97552B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr209, 0, $vgpr209, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97568B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97600B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97616B	  renamable $vgpr89 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr208, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97632B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97664B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97680B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr209, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97696B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97712B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97744B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97760B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97824B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr210, 0, $vgpr210, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97840B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97872B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97888B	  renamable $vgpr90 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr209, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97904B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97936B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97952B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr210, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97968B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97984B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98016B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98032B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98096B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr211, 0, $vgpr211, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98112B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98144B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98160B	  renamable $vgpr91 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr210, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98176B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98208B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98224B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr211, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98240B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98256B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98288B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98304B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98368B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr212, 0, $vgpr212, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98384B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98416B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98432B	  renamable $vgpr92 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr211, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98448B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98480B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98496B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr212, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98512B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98528B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98560B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98576B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98640B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr213, 0, $vgpr213, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98656B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98688B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98704B	  renamable $vgpr93 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr212, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98720B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98752B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98768B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr213, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98784B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98800B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98832B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98848B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98912B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr214, 0, $vgpr214, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98928B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98960B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98976B	  renamable $vgpr94 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr213, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98992B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99024B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99040B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr214, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99056B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99072B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99104B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99120B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99184B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr215, 0, $vgpr215, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99200B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99232B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99248B	  renamable $vgpr95 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr214, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99264B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99296B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99312B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr215, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99328B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99344B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99376B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99392B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99456B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr216, 0, $vgpr216, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99472B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99504B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99520B	  renamable $vgpr96 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr215, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99536B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99568B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99584B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr216, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99600B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99616B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99648B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99664B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99728B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr217, 0, $vgpr217, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99744B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99776B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99792B	  renamable $vgpr97 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr216, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99808B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99840B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99856B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr217, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99872B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99888B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99920B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99936B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100000B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr218, 0, $vgpr218, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100016B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100048B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100064B	  renamable $vgpr98 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr217, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100080B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100112B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100128B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr218, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100144B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100160B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100192B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100208B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100272B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr219, 0, $vgpr219, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100288B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100320B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100336B	  renamable $vgpr99 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr218, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100352B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100384B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100400B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr219, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100416B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100432B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100464B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100480B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100544B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr220, 0, $vgpr220, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100560B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100592B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100608B	  renamable $vgpr100 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr219, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100624B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100656B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100672B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr220, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100688B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100704B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100736B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100752B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100816B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr221, 0, $vgpr221, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100832B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100864B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100880B	  renamable $vgpr101 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr220, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100896B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100928B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100944B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr221, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100960B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100976B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101008B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101024B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101088B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr222, 0, $vgpr222, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101104B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101136B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101152B	  renamable $vgpr102 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr221, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101168B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101200B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101216B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr222, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101232B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101248B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101280B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101296B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101360B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr223, 0, $vgpr223, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101376B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101408B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101424B	  renamable $vgpr103 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr222, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101440B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101472B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101488B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr223, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101504B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101520B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101552B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101568B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101632B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr224, 0, $vgpr224, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101648B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101680B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101696B	  renamable $vgpr104 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr223, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101712B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101744B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101760B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr224, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101776B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101792B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101824B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101840B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101904B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr225, 0, $vgpr225, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101920B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101952B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101968B	  renamable $vgpr105 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr224, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101984B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102016B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102032B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr225, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102048B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102064B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102096B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102112B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102176B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr226, 0, $vgpr226, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102192B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102224B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102240B	  renamable $vgpr106 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr225, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102256B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102288B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102304B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr226, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102320B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102336B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102368B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102384B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102448B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr173, 0, $vgpr173, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102464B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102496B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102512B	  renamable $vgpr107 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr226, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102528B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102560B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102576B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr173, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102592B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102608B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102640B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102656B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102720B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr172, 0, $vgpr172, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102736B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102768B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102784B	  renamable $vgpr108 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102800B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102832B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102848B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr172, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102864B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102880B	  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102912B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102928B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102992B	  renamable $vgpr173, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr171, 0, $vgpr171, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103008B	  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103040B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103056B	  renamable $vgpr109 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103072B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103104B	  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103120B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr171, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103136B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103152B	  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103184B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr172, $vgpr174, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103200B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr173, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103264B	  renamable $vgpr172, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr170, 0, $vgpr170, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103280B	  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103312B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr174, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103328B	  renamable $vgpr110 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103344B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103376B	  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103392B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr170, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103408B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103424B	  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103456B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr171, $vgpr173, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103472B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr172, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103536B	  renamable $vgpr171, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr169, 0, $vgpr169, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103552B	  renamable $vgpr172 = nofpexcept V_RCP_F32_e32 $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103584B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103600B	  renamable $vgpr111 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103616B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr172, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103648B	  renamable $vgpr172 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr172, $vgpr172(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103664B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr169, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103680B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103696B	  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103728B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr170, $vgpr172, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103744B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr171, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103808B	  renamable $vgpr170, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr168, 0, $vgpr168, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103824B	  renamable $vgpr171 = nofpexcept V_RCP_F32_e32 $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103856B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103872B	  renamable $vgpr112 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103888B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr171, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103920B	  renamable $vgpr171 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr171, $vgpr171(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103936B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr168, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103952B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103968B	  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104000B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr169, $vgpr171, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104016B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr170, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104080B	  renamable $vgpr169, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr167, 0, $vgpr167, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104096B	  renamable $vgpr170 = nofpexcept V_RCP_F32_e32 $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104128B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104144B	  renamable $vgpr113 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104160B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr170, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104192B	  renamable $vgpr170 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr170, $vgpr170(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104208B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr167, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104224B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104240B	  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104272B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr168, $vgpr170, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104288B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr169, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104352B	  renamable $vgpr168, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr166, 0, $vgpr166, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104368B	  renamable $vgpr169 = nofpexcept V_RCP_F32_e32 $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104400B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104416B	  renamable $vgpr114 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104432B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr169, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104464B	  renamable $vgpr169 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr169, $vgpr169(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104480B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr166, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104496B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104512B	  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104544B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr167, $vgpr169, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104560B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr168, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104624B	  renamable $vgpr167, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr165, 0, $vgpr165, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104640B	  renamable $vgpr168 = nofpexcept V_RCP_F32_e32 $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104672B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104688B	  renamable $vgpr115 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104704B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr168, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104736B	  renamable $vgpr168 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr168, $vgpr168(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104752B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr165, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104768B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104784B	  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104816B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr166, $vgpr168, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104832B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr167, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104896B	  renamable $vgpr166, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr164, 0, $vgpr164, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104912B	  renamable $vgpr167 = nofpexcept V_RCP_F32_e32 $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104944B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104960B	  renamable $vgpr116 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104976B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr167, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105008B	  renamable $vgpr167 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr167, $vgpr167(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105024B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr164, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105040B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105056B	  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105088B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr165, $vgpr167, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105104B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr166, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105168B	  renamable $vgpr165, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr163, 0, $vgpr163, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105184B	  renamable $vgpr166 = nofpexcept V_RCP_F32_e32 $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105216B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105232B	  renamable $vgpr117 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105248B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr166, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105280B	  renamable $vgpr166 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr166, $vgpr166(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105296B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr163, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105312B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105328B	  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105360B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr164, $vgpr166, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105376B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr165, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105440B	  renamable $vgpr164, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr162, 0, $vgpr162, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105456B	  renamable $vgpr165 = nofpexcept V_RCP_F32_e32 $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105488B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105504B	  renamable $vgpr118 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105520B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr165, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105552B	  renamable $vgpr165 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr165, $vgpr165(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105568B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr162, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105584B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105600B	  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105632B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr163, $vgpr165, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105648B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr164, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105712B	  renamable $vgpr163, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr161, 0, $vgpr161, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105728B	  renamable $vgpr164 = nofpexcept V_RCP_F32_e32 $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105760B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105776B	  renamable $vgpr119 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105792B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr164, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105824B	  renamable $vgpr164 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr164, $vgpr164(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105840B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr161, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105856B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105872B	  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105904B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr162, $vgpr164, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105920B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr163, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105984B	  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr160, 0, $vgpr160, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106000B	  renamable $vgpr163 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106032B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106048B	  renamable $vgpr120 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106064B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr163, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106096B	  renamable $vgpr163 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr163, $vgpr163(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106112B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr160, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106128B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106144B	  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106176B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr161, $vgpr163, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106192B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106256B	  renamable $vgpr161, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr159, 0, $vgpr159, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106272B	  renamable $vgpr162 = nofpexcept V_RCP_F32_e32 $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106304B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106320B	  renamable $vgpr121 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106336B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr162, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106368B	  renamable $vgpr162 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr162, $vgpr162(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106384B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr159, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106400B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106416B	  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106448B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr160, $vgpr162, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106464B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr161, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106528B	  renamable $vgpr160, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr158, 0, $vgpr158, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106544B	  renamable $vgpr161 = nofpexcept V_RCP_F32_e32 $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106576B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106592B	  renamable $vgpr122 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106608B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr161, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106640B	  renamable $vgpr161 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr161, $vgpr161(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106656B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr158, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106672B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106688B	  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106720B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr159, $vgpr161, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106736B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr160, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106800B	  renamable $vgpr159, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr157, 0, $vgpr157, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106816B	  renamable $vgpr160 = nofpexcept V_RCP_F32_e32 $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106848B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106864B	  renamable $vgpr123 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106880B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr160, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106912B	  renamable $vgpr160 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr160, $vgpr160(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106928B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr157, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106944B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106960B	  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106992B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr158, $vgpr160, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107008B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr159, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107072B	  renamable $vgpr158, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr156, 0, $vgpr156, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107088B	  renamable $vgpr159 = nofpexcept V_RCP_F32_e32 $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107120B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107136B	  renamable $vgpr124 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107152B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr159, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107184B	  renamable $vgpr159 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr159, $vgpr159(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107200B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr156, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107216B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107232B	  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107264B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr157, $vgpr159, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107280B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr158, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107344B	  renamable $vgpr157, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr155, 0, $vgpr155, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107360B	  renamable $vgpr158 = nofpexcept V_RCP_F32_e32 $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107392B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107408B	  renamable $vgpr125 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107424B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr158, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107456B	  renamable $vgpr158 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr158, $vgpr158(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107472B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr155, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107488B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107504B	  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107536B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr156, $vgpr158, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107552B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr157, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107616B	  renamable $vgpr156, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr154, 0, $vgpr154, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107632B	  renamable $vgpr157 = nofpexcept V_RCP_F32_e32 $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107664B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107680B	  renamable $vgpr126 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107696B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr157, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107728B	  renamable $vgpr157 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr157, $vgpr157(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107744B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr154, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107760B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107776B	  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107808B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr155, $vgpr157, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107824B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr156, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107888B	  renamable $vgpr155, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr153, 0, $vgpr153, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107904B	  renamable $vgpr156 = nofpexcept V_RCP_F32_e32 $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107936B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107952B	  renamable $vgpr127 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107968B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr156, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108000B	  renamable $vgpr156 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr156, $vgpr156(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108016B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr153, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108032B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108048B	  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108080B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr154, $vgpr156, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108096B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr155, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108160B	  renamable $vgpr154, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr152, 0, $vgpr152, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108176B	  renamable $vgpr155 = nofpexcept V_RCP_F32_e32 $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108208B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108224B	  renamable $vgpr128 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108240B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr155, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108272B	  renamable $vgpr155 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr155, $vgpr155(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108288B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr152, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108304B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108320B	  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108352B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr153, $vgpr155, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108368B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr154, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108432B	  renamable $vgpr153, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr151, 0, $vgpr151, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108448B	  renamable $vgpr154 = nofpexcept V_RCP_F32_e32 $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108480B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108496B	  renamable $vgpr129 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr152, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108512B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr154, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108544B	  renamable $vgpr154 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr154, $vgpr154(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108560B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr151, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108576B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108592B	  renamable $vgpr152 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108624B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr152, $vgpr154, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108640B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr153, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108704B	  renamable $vgpr152, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr150, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108720B	  renamable $vgpr153 = nofpexcept V_RCP_F32_e32 $vgpr152, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108752B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108768B	  renamable $vgpr130 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr151, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108784B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr152, 0, $vgpr153, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108816B	  renamable $vgpr153 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr153, $vgpr153(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108832B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr150, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108848B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108864B	  renamable $vgpr151 = nofpexcept V_FMA_F32_e64 1, $vgpr152, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108896B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr151, $vgpr153, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108912B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr152, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108976B	  renamable $vgpr151, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr149, 0, $vgpr149, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108992B	  renamable $vgpr152 = nofpexcept V_RCP_F32_e32 $vgpr151, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109024B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109040B	  renamable $vgpr131 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr150, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109056B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr151, 0, $vgpr152, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109088B	  renamable $vgpr152 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr152, $vgpr152(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109104B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr149, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109120B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr152, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109136B	  renamable $vgpr150 = nofpexcept V_FMA_F32_e64 1, $vgpr151, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109168B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr150, $vgpr152, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109184B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr151, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109248B	  renamable $vgpr150, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr148, 0, $vgpr148, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109264B	  renamable $vgpr151 = nofpexcept V_RCP_F32_e32 $vgpr150, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109296B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr152, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109312B	  renamable $vgpr132 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr149, 0, killed $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109328B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr150, 0, $vgpr151, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109360B	  renamable $vgpr151 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr151, $vgpr151(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109376B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr148, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109392B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr151, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109408B	  renamable $vgpr149 = nofpexcept V_FMA_F32_e64 1, $vgpr150, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109440B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr149, $vgpr151, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109456B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr150, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109520B	  renamable $vgpr149, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr147, 0, $vgpr147, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109536B	  renamable $vgpr150 = nofpexcept V_RCP_F32_e32 $vgpr149, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109568B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr151, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109584B	  renamable $vgpr133 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr148, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109600B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr149, 0, $vgpr150, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109632B	  renamable $vgpr150 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr150, $vgpr150(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109648B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr147, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109664B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr150, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109680B	  renamable $vgpr148 = nofpexcept V_FMA_F32_e64 1, $vgpr149, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109712B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr148, $vgpr150, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109728B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr149, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109792B	  renamable $vgpr148, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr146, 0, $vgpr146, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109808B	  renamable $vgpr149 = nofpexcept V_RCP_F32_e32 $vgpr148, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109840B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr150, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109856B	  renamable $vgpr134 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr147, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109872B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr148, 0, $vgpr149, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109904B	  renamable $vgpr149 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr149, $vgpr149(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109920B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr146, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109936B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr149, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109952B	  renamable $vgpr147 = nofpexcept V_FMA_F32_e64 1, $vgpr148, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109984B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr147, $vgpr149, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110000B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr148, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110064B	  renamable $vgpr147, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr145, 0, $vgpr145, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110080B	  renamable $vgpr148 = nofpexcept V_RCP_F32_e32 $vgpr147, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110112B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr149, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110128B	  renamable $vgpr135 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr146, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110144B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr147, 0, $vgpr148, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110176B	  renamable $vgpr148 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr148, $vgpr148(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110192B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr145, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110208B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr148, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110224B	  renamable $vgpr146 = nofpexcept V_FMA_F32_e64 1, $vgpr147, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110256B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr146, $vgpr148, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110272B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr147, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110336B	  renamable $vgpr146, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr144, 0, $vgpr144, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110352B	  renamable $vgpr147 = nofpexcept V_RCP_F32_e32 $vgpr146, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110384B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr148, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110400B	  renamable $vgpr136 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110416B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr146, 0, $vgpr147, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110448B	  renamable $vgpr147 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr147, $vgpr147(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110464B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr144, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110480B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr147, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110496B	  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 1, $vgpr146, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110528B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr145, $vgpr147, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110544B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr146, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110608B	  renamable $vgpr145, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr143, 0, $vgpr143, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110624B	  renamable $vgpr146 = nofpexcept V_RCP_F32_e32 $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110656B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr147, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110672B	  renamable $vgpr80 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110688B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr146, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110720B	  renamable $vgpr146 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr146, $vgpr146(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110736B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr143, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110752B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr146, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110768B	  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110800B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr144, $vgpr146, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110816B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr145, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110880B	  renamable $vgpr144, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr142, 0, $vgpr142, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110896B	  renamable $vgpr145 = nofpexcept V_RCP_F32_e32 $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110928B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr146, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110944B	  renamable $vgpr79 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110960B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr145, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110992B	  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr145, $vgpr145(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111008B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr142, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111024B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111040B	  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111072B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr143, $vgpr145, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111088B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr144, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111152B	  renamable $vgpr143, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr141, 0, $vgpr141, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111168B	  renamable $vgpr144 = nofpexcept V_RCP_F32_e32 $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111200B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111216B	  renamable $vgpr78 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111232B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr144, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111264B	  renamable $vgpr144 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr144, $vgpr144(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111280B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr141, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111296B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111312B	  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111344B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr142, $vgpr144, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111360B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr143, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111424B	  renamable $vgpr142, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr140, 0, $vgpr140, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111440B	  renamable $vgpr143 = nofpexcept V_RCP_F32_e32 $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111472B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111488B	  renamable $vgpr77 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111504B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr143, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111536B	  renamable $vgpr143 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr143, $vgpr143(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111552B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr140, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111568B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111584B	  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111616B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr141, $vgpr143, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111632B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr142, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111696B	  renamable $vgpr141, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111712B	  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111744B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111760B	  renamable $vgpr76 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr140, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111776B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111808B	  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111824B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111840B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111856B	  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111888B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr140, $vgpr142, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111904B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr141, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111968B	  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr138, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111984B	  renamable $vgpr141 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112016B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112032B	  renamable $vgpr75 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr139, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112048B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr141, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112080B	  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr141, $vgpr141(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112096B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr3, 0, $vgpr138, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112112B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112128B	  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112160B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr139, $vgpr141, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112176B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112240B	  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr137, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112256B	  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114688B	  renamable $vgpr139 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, killed renamable $vgpr59, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
114720B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114736B	  renamable $vgpr138 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr138, 0, killed $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114752B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114768B	  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114784B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr2, 0, $vgpr137, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114800B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114816B	  renamable $vgpr3 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114832B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr3, $vgpr142, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114848B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114880B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114896B	  renamable $vgpr137 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr137, 0, killed $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114912B	  renamable $vgpr81 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, killed $vgpr4, $vgpr81(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114928B	  renamable $vgpr82 = nofpexcept V_FMAC_F32_e32 killed $vgpr82, killed $vgpr5, $vgpr82(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114944B	  renamable $vgpr83 = nofpexcept V_FMAC_F32_e32 killed $vgpr83, killed $vgpr6, $vgpr83(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114960B	  renamable $vgpr84 = nofpexcept V_FMAC_F32_e32 killed $vgpr84, killed $vgpr7, $vgpr84(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114976B	  renamable $vgpr85 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr8, $vgpr85(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114992B	  renamable $vgpr86 = nofpexcept V_FMAC_F32_e32 killed $vgpr86, killed $vgpr9, $vgpr86(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115008B	  renamable $vgpr87 = nofpexcept V_FMAC_F32_e32 killed $vgpr87, killed $vgpr10, $vgpr87(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115024B	  renamable $vgpr88 = nofpexcept V_FMAC_F32_e32 killed $vgpr88, killed $vgpr11, $vgpr88(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115040B	  renamable $vgpr89 = nofpexcept V_FMAC_F32_e32 killed $vgpr89, killed $vgpr12, $vgpr89(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115056B	  renamable $vgpr90 = nofpexcept V_FMAC_F32_e32 killed $vgpr90, killed $vgpr13, $vgpr90(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115072B	  renamable $vgpr91 = nofpexcept V_FMAC_F32_e32 killed $vgpr91, killed $vgpr14, $vgpr91(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115088B	  renamable $vgpr92 = nofpexcept V_FMAC_F32_e32 killed $vgpr92, killed $vgpr15, $vgpr92(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115104B	  renamable $vgpr93 = nofpexcept V_FMAC_F32_e32 killed $vgpr93, killed $vgpr16, $vgpr93(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115120B	  renamable $vgpr94 = nofpexcept V_FMAC_F32_e32 killed $vgpr94, killed $vgpr17, $vgpr94(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115136B	  renamable $vgpr95 = nofpexcept V_FMAC_F32_e32 killed $vgpr95, killed $vgpr18, $vgpr95(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115152B	  renamable $vgpr96 = nofpexcept V_FMAC_F32_e32 killed $vgpr96, killed $vgpr19, $vgpr96(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115168B	  renamable $vgpr97 = nofpexcept V_FMAC_F32_e32 killed $vgpr97, killed $vgpr20, $vgpr97(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115184B	  renamable $vgpr98 = nofpexcept V_FMAC_F32_e32 killed $vgpr98, killed $vgpr21, $vgpr98(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115200B	  renamable $vgpr99 = nofpexcept V_FMAC_F32_e32 killed $vgpr99, killed $vgpr22, $vgpr99(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115216B	  renamable $vgpr100 = nofpexcept V_FMAC_F32_e32 killed $vgpr100, killed $vgpr23, $vgpr100(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115232B	  renamable $vgpr101 = nofpexcept V_FMAC_F32_e32 killed $vgpr101, killed $vgpr24, $vgpr101(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115248B	  renamable $vgpr102 = nofpexcept V_FMAC_F32_e32 killed $vgpr102, killed $vgpr25, $vgpr102(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115264B	  renamable $vgpr103 = nofpexcept V_FMAC_F32_e32 killed $vgpr103, killed $vgpr26, $vgpr103(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115280B	  renamable $vgpr104 = nofpexcept V_FMAC_F32_e32 killed $vgpr104, killed $vgpr27, $vgpr104(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115296B	  renamable $vgpr105 = nofpexcept V_FMAC_F32_e32 killed $vgpr105, killed $vgpr28, $vgpr105(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115312B	  renamable $vgpr106 = nofpexcept V_FMAC_F32_e32 killed $vgpr106, killed $vgpr29, $vgpr106(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115328B	  renamable $vgpr107 = nofpexcept V_FMAC_F32_e32 killed $vgpr107, killed $vgpr30, $vgpr107(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115344B	  renamable $vgpr108 = nofpexcept V_FMAC_F32_e32 killed $vgpr108, killed $vgpr31, $vgpr108(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115360B	  renamable $vgpr109 = nofpexcept V_FMAC_F32_e32 killed $vgpr109, killed $vgpr32, $vgpr109(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115376B	  renamable $vgpr110 = nofpexcept V_FMAC_F32_e32 killed $vgpr110, killed $vgpr33, $vgpr110(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115392B	  renamable $vgpr111 = nofpexcept V_FMAC_F32_e32 killed $vgpr111, killed $vgpr34, $vgpr111(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115408B	  renamable $vgpr112 = nofpexcept V_FMAC_F32_e32 killed $vgpr112, killed $vgpr35, $vgpr112(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115424B	  renamable $vgpr113 = nofpexcept V_FMAC_F32_e32 killed $vgpr113, killed $vgpr36, $vgpr113(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115440B	  renamable $vgpr114 = nofpexcept V_FMAC_F32_e32 killed $vgpr114, killed $vgpr37, $vgpr114(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115456B	  renamable $vgpr115 = nofpexcept V_FMAC_F32_e32 killed $vgpr115, killed $vgpr38, $vgpr115(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115472B	  renamable $vgpr116 = nofpexcept V_FMAC_F32_e32 killed $vgpr116, killed $vgpr39, $vgpr116(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115488B	  renamable $vgpr117 = nofpexcept V_FMAC_F32_e32 killed $vgpr117, killed $vgpr40, $vgpr117(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115504B	  renamable $vgpr118 = nofpexcept V_FMAC_F32_e32 killed $vgpr118, killed $vgpr41, $vgpr118(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115520B	  renamable $vgpr119 = nofpexcept V_FMAC_F32_e32 killed $vgpr119, killed $vgpr42, $vgpr119(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115536B	  renamable $vgpr120 = nofpexcept V_FMAC_F32_e32 killed $vgpr120, killed $vgpr43, $vgpr120(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115552B	  renamable $vgpr121 = nofpexcept V_FMAC_F32_e32 killed $vgpr121, killed $vgpr44, $vgpr121(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115568B	  renamable $vgpr122 = nofpexcept V_FMAC_F32_e32 killed $vgpr122, killed $vgpr45, $vgpr122(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115584B	  renamable $vgpr123 = nofpexcept V_FMAC_F32_e32 killed $vgpr123, killed $vgpr46, $vgpr123(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115600B	  renamable $vgpr124 = nofpexcept V_FMAC_F32_e32 killed $vgpr124, killed $vgpr47, $vgpr124(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115616B	  renamable $vgpr125 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, killed $vgpr48, $vgpr125(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115632B	  renamable $vgpr126 = nofpexcept V_FMAC_F32_e32 killed $vgpr126, killed $vgpr49, $vgpr126(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115648B	  renamable $vgpr127 = nofpexcept V_FMAC_F32_e32 killed $vgpr127, killed $vgpr50, $vgpr127(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115664B	  renamable $vgpr128 = nofpexcept V_FMAC_F32_e32 killed $vgpr128, killed $vgpr51, $vgpr128(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115680B	  renamable $vgpr129 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, killed $vgpr52, $vgpr129(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115696B	  renamable $vgpr130 = nofpexcept V_FMAC_F32_e32 killed $vgpr130, killed $vgpr53, $vgpr130(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115712B	  renamable $vgpr131 = nofpexcept V_FMAC_F32_e32 killed $vgpr131, killed $vgpr54, $vgpr131(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115728B	  renamable $vgpr132 = nofpexcept V_FMAC_F32_e32 killed $vgpr132, killed $vgpr55, $vgpr132(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115744B	  renamable $vgpr133 = nofpexcept V_FMAC_F32_e32 killed $vgpr133, killed $vgpr56, $vgpr133(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115760B	  renamable $vgpr134 = nofpexcept V_FMAC_F32_e32 killed $vgpr134, killed $vgpr57, $vgpr134(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115776B	  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr135, killed $vgpr65, $vgpr135(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115792B	  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr136, killed $vgpr66, $vgpr136(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115808B	  renamable $vgpr80 = nofpexcept V_FMAC_F32_e32 killed $vgpr80, killed $vgpr67, $vgpr80(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115824B	  renamable $vgpr79 = nofpexcept V_FMAC_F32_e32 killed $vgpr79, killed $vgpr68, $vgpr79(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115840B	  renamable $vgpr78 = nofpexcept V_FMAC_F32_e32 killed $vgpr78, killed $vgpr69, $vgpr78(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115856B	  renamable $vgpr77 = nofpexcept V_FMAC_F32_e32 killed $vgpr77, killed $vgpr70, $vgpr77(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115872B	  renamable $vgpr76 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, killed $vgpr71, $vgpr76(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115888B	  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, killed $vgpr72, $vgpr75(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115904B	  renamable $vgpr138 = nofpexcept V_FMAC_F32_e32 killed $vgpr138, killed $vgpr73, $vgpr138(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115920B	  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr137, killed $vgpr74, $vgpr137(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115936B	  renamable $vgpr0, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115952B	  renamable $vgpr1 = nofpexcept V_RCP_F32_e32 $vgpr0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115968B	  renamable $vgpr59 = COPY killed renamable $sgpr13, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
115984B	  renamable $vgpr2 = V_OR_B32_e32 8, $vgpr58, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
116000B	  renamable $vgpr3 = COPY renamable $vgpr59, debug-location !110; moe_op_gemm_a8w4.py:482:41
116016B	  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr1, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116048B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr4, killed $vgpr1, $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116064B	  renamable $vgpr4, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr139, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116080B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 $vgpr4, $vgpr1, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116096B	  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr5, 0, $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116128B	  renamable $vgpr5 = nofpexcept V_FMAC_F32_e32 killed $vgpr6, $vgpr1, killed $vgpr5(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116144B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr0, 0, $vgpr5, 0, killed $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116208B	  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116224B	  renamable $vgpr7 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116256B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr1, 0, killed $vgpr5, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116272B	  renamable $vgpr4 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116288B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr7, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116320B	  renamable $vgpr7 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr7, $vgpr7(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116336B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr139, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116352B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116368B	  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116400B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, $vgpr7, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116416B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116480B	  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116496B	  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116528B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr7, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116544B	  renamable $vgpr5 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116560B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr8, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116592B	  renamable $vgpr8 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr8, $vgpr8(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116608B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr139, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116624B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116640B	  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116672B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr7, $vgpr8, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116688B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116752B	  renamable $vgpr7, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116768B	  renamable $vgpr9 = nofpexcept V_RCP_F32_e32 $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116800B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr8, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116816B	  renamable $vgpr6 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116832B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr9, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116864B	  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr9, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116880B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr139, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116896B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116912B	  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116944B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr8, $vgpr9, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116960B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr7, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117024B	  renamable $vgpr8, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117040B	  renamable $vgpr10 = nofpexcept V_RCP_F32_e32 $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117072B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr9, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117088B	  renamable $vgpr7 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117104B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr10, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117136B	  renamable $vgpr10 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr10, $vgpr10(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117152B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr139, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117168B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117184B	  renamable $vgpr9 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117216B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr9, $vgpr10, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117232B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr8, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117296B	  renamable $vgpr9, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117312B	  renamable $vgpr11 = nofpexcept V_RCP_F32_e32 $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117344B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr10, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117360B	  renamable $vgpr8 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117376B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr11, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117408B	  renamable $vgpr11 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr11, $vgpr11(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117424B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr139, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117440B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117456B	  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117488B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr10, $vgpr11, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117504B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr9, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117568B	  renamable $vgpr10, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117584B	  renamable $vgpr12 = nofpexcept V_RCP_F32_e32 $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117616B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr11, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117632B	  renamable $vgpr9 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117648B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr12, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117680B	  renamable $vgpr12 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr12, $vgpr12(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117696B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr139, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117712B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117728B	  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117760B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr11, $vgpr12, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117776B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr10, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117840B	  renamable $vgpr11, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117856B	  renamable $vgpr13 = nofpexcept V_RCP_F32_e32 $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117888B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr12, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117904B	  renamable $vgpr10 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117920B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr13, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117952B	  renamable $vgpr13 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr13, $vgpr13(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117968B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr139, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117984B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118000B	  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118032B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr12, $vgpr13, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118048B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr11, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118112B	  renamable $vgpr12, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118128B	  renamable $vgpr14 = nofpexcept V_RCP_F32_e32 $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118160B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr13, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118176B	  renamable $vgpr11 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118192B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr14, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118224B	  renamable $vgpr14 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr14, $vgpr14(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118240B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr139, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118256B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118272B	  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118304B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr13, $vgpr14, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118320B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr12, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118384B	  renamable $vgpr13, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118400B	  renamable $vgpr15 = nofpexcept V_RCP_F32_e32 $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118432B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr14, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118448B	  renamable $vgpr12 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118464B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr15, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118496B	  renamable $vgpr15 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr15, $vgpr15(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118512B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr139, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118528B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118544B	  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118576B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr14, $vgpr15, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118592B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr13, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118656B	  renamable $vgpr14, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118672B	  renamable $vgpr16 = nofpexcept V_RCP_F32_e32 $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118704B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr15, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118720B	  renamable $vgpr13 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118736B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr16, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118768B	  renamable $vgpr16 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr16, $vgpr16(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118784B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr139, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118800B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118816B	  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118848B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr15, $vgpr16, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118864B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr14, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118928B	  renamable $vgpr15, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118944B	  renamable $vgpr17 = nofpexcept V_RCP_F32_e32 $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118976B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr16, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118992B	  renamable $vgpr14 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119008B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr17, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119040B	  renamable $vgpr17 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr17, $vgpr17(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119056B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr139, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119072B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119088B	  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119120B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr16, $vgpr17, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119136B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr15, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119200B	  renamable $vgpr16, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119216B	  renamable $vgpr18 = nofpexcept V_RCP_F32_e32 $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119248B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr17, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119264B	  renamable $vgpr15 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119280B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr18, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119312B	  renamable $vgpr18 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr18, $vgpr18(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119328B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr139, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119344B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119360B	  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119392B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr17, $vgpr18, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119408B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr16, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119472B	  renamable $vgpr17, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119488B	  renamable $vgpr19 = nofpexcept V_RCP_F32_e32 $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119520B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr18, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119536B	  renamable $vgpr16 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119552B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr19, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119584B	  renamable $vgpr19 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr19, $vgpr19(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119600B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr139, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119616B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119632B	  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119664B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr18, $vgpr19, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119680B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr17, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119744B	  renamable $vgpr18, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119760B	  renamable $vgpr20 = nofpexcept V_RCP_F32_e32 $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119792B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr19, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119808B	  renamable $vgpr17 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119824B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr20, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119856B	  renamable $vgpr20 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr20, $vgpr20(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119872B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr139, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119888B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119904B	  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119936B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr19, $vgpr20, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119952B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr18, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120016B	  renamable $vgpr19, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120032B	  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120064B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr20, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120080B	  renamable $vgpr18 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120096B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr21, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120128B	  renamable $vgpr21 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr21, $vgpr21(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120144B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr139, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120160B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120176B	  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120208B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr20, $vgpr21, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120224B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr19, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120288B	  renamable $vgpr20, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120304B	  renamable $vgpr22 = nofpexcept V_RCP_F32_e32 $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120336B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr21, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120352B	  renamable $vgpr19 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120368B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr22, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120400B	  renamable $vgpr22 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr22, $vgpr22(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120416B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr139, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120432B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120448B	  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120480B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr21, $vgpr22, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120496B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr20, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120560B	  renamable $vgpr21, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120576B	  renamable $vgpr23 = nofpexcept V_RCP_F32_e32 $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120608B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr22, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120624B	  renamable $vgpr20 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120640B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr23, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120672B	  renamable $vgpr23 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr23, $vgpr23(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120688B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr139, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120704B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120720B	  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120752B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr22, $vgpr23, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120768B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr21, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120832B	  renamable $vgpr22, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120848B	  renamable $vgpr24 = nofpexcept V_RCP_F32_e32 $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120880B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr23, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120896B	  renamable $vgpr21 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120912B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr24, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120944B	  renamable $vgpr24 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr24, $vgpr24(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120960B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr139, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120976B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120992B	  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121024B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr23, $vgpr24, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121040B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr22, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121104B	  renamable $vgpr23, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121120B	  renamable $vgpr25 = nofpexcept V_RCP_F32_e32 $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121152B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr24, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121168B	  renamable $vgpr22 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121184B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr25, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121216B	  renamable $vgpr25 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr25, $vgpr25(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121232B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr139, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121248B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121264B	  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121296B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr24, $vgpr25, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121312B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr23, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121376B	  renamable $vgpr24, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121392B	  renamable $vgpr26 = nofpexcept V_RCP_F32_e32 $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121424B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr25, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121440B	  renamable $vgpr23 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121456B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr26, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121488B	  renamable $vgpr26 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr26, $vgpr26(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121504B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr139, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121520B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121536B	  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121568B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr25, $vgpr26, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121584B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr24, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121648B	  renamable $vgpr25, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121664B	  renamable $vgpr27 = nofpexcept V_RCP_F32_e32 $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121696B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr26, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121712B	  renamable $vgpr24 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121728B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr27, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121760B	  renamable $vgpr27 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr27, $vgpr27(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121776B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr139, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121792B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121808B	  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121840B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr26, $vgpr27, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121856B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr25, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121920B	  renamable $vgpr26, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121936B	  renamable $vgpr28 = nofpexcept V_RCP_F32_e32 $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121968B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr27, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121984B	  renamable $vgpr25 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122000B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr28, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122032B	  renamable $vgpr28 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr28, $vgpr28(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122048B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr139, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122064B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122080B	  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122112B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr27, $vgpr28, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122128B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr26, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122192B	  renamable $vgpr27, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122208B	  renamable $vgpr29 = nofpexcept V_RCP_F32_e32 $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122240B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr28, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122256B	  renamable $vgpr26 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122272B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr29, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122304B	  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr29, $vgpr29(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122320B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr139, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122336B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122352B	  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122384B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr28, $vgpr29, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122400B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr27, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122464B	  renamable $vgpr28, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122480B	  renamable $vgpr30 = nofpexcept V_RCP_F32_e32 $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122512B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr29, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122528B	  renamable $vgpr27 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122544B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr30, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122576B	  renamable $vgpr30 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr30, $vgpr30(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122592B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr139, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122608B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122624B	  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122656B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr29, $vgpr30, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122672B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr28, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122736B	  renamable $vgpr29, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122752B	  renamable $vgpr31 = nofpexcept V_RCP_F32_e32 $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122784B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr30, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122800B	  renamable $vgpr28 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122816B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr31, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122848B	  renamable $vgpr31 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr31, $vgpr31(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122864B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr139, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122880B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122896B	  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122928B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr30, $vgpr31, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122944B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr29, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123008B	  renamable $vgpr30, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123024B	  renamable $vgpr32 = nofpexcept V_RCP_F32_e32 $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123056B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr31, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123072B	  renamable $vgpr29 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123088B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123120B	  renamable $vgpr32 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr32, $vgpr32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123136B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr139, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123152B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123168B	  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123200B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr31, $vgpr32, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123216B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr30, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123280B	  renamable $vgpr31, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123296B	  renamable $vgpr33 = nofpexcept V_RCP_F32_e32 $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123328B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr32, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123344B	  renamable $vgpr30 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123360B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr33, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123392B	  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr33, $vgpr33(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123408B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr139, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123424B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123440B	  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123472B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr32, $vgpr33, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123488B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr31, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123552B	  renamable $vgpr32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123568B	  renamable $vgpr34 = nofpexcept V_RCP_F32_e32 $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123600B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr33, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123616B	  renamable $vgpr31 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123632B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr34, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123664B	  renamable $vgpr34 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr34, $vgpr34(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123680B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr139, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123696B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123712B	  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123744B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr33, $vgpr34, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123760B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr32, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123824B	  renamable $vgpr33, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123840B	  renamable $vgpr35 = nofpexcept V_RCP_F32_e32 $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123872B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr34, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123888B	  renamable $vgpr32 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123904B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr35, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123936B	  renamable $vgpr35 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr35, $vgpr35(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123952B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr139, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123968B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123984B	  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124016B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr34, $vgpr35, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124032B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr33, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124096B	  renamable $vgpr34, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124112B	  renamable $vgpr36 = nofpexcept V_RCP_F32_e32 $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124144B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr35, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124160B	  renamable $vgpr33 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124176B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr36, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124208B	  renamable $vgpr36 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr36, $vgpr36(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124224B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr139, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124240B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124256B	  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124288B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr35, $vgpr36, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124304B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr34, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124368B	  renamable $vgpr35, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124384B	  renamable $vgpr37 = nofpexcept V_RCP_F32_e32 $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124416B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr36, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124432B	  renamable $vgpr34 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124448B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr37, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124480B	  renamable $vgpr37 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr37, $vgpr37(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124496B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr139, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124512B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124528B	  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124560B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr36, $vgpr37, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124576B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr35, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124640B	  renamable $vgpr36, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124656B	  renamable $vgpr38 = nofpexcept V_RCP_F32_e32 $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124688B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr37, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124704B	  renamable $vgpr35 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124720B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr38, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124752B	  renamable $vgpr38 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr38, $vgpr38(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124768B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr139, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124784B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124800B	  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124832B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr37, $vgpr38, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124848B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr36, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124912B	  renamable $vgpr37, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124928B	  renamable $vgpr39 = nofpexcept V_RCP_F32_e32 $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124960B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr38, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124976B	  renamable $vgpr36 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124992B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr39, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125024B	  renamable $vgpr39 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr39, $vgpr39(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125040B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr139, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125056B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125072B	  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125104B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr38, $vgpr39, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125120B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr37, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125184B	  renamable $vgpr38, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125200B	  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125232B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr39, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125248B	  renamable $vgpr37 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125264B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125296B	  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125312B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr139, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125328B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125344B	  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125376B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr39, $vgpr40, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125392B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr38, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125456B	  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125472B	  renamable $vgpr41 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125504B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr40, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125520B	  renamable $vgpr38 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125536B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125568B	  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr41, $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125584B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr139, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125600B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125616B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125648B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, $vgpr41, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125664B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125728B	  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125744B	  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125776B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125792B	  renamable $vgpr0 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr139, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125808B	  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125840B	  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125856B	  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr139, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125872B	  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125888B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125920B	  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, $vgpr40, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125936B	  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126000B	  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126016B	  renamable $vgpr42 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126048B	  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr40, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126064B	  renamable $vgpr1 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr139, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126080B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr42, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126112B	  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, killed $vgpr42, $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126128B	  renamable $vgpr40, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr139, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126144B	  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr40, $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126160B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126192B	  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, $vgpr42, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126208B	  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126272B	  renamable $vgpr40, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126288B	  renamable $vgpr43 = nofpexcept V_RCP_F32_e32 $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126320B	  renamable $vgpr39 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr39, 0, killed $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126336B	  renamable $vgpr39 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr39, 0, $vgpr139, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126352B	  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr43, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126384B	  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr41, killed $vgpr43, $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126400B	  renamable $vgpr41, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr139, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126416B	  renamable $vgpr42 = nofpexcept V_MUL_F32_e32 $vgpr41, $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126432B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr42, 0, $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126464B	  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, $vgpr43, killed $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126480B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, killed $vgpr40, 0, $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126544B	  renamable $vgpr41, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126560B	  renamable $vgpr44 = nofpexcept V_RCP_F32_e32 $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126592B	  renamable $vgpr40 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr40, 0, killed $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126608B	  renamable $vgpr40 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr40, 0, $vgpr139, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126624B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr44, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126656B	  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, killed $vgpr44, $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126672B	  renamable $vgpr42, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr139, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126688B	  renamable $vgpr43 = nofpexcept V_MUL_F32_e32 $vgpr42, $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126704B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr43, 0, $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126736B	  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, $vgpr44, killed $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126752B	  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, killed $vgpr41, 0, $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126816B	  renamable $vgpr42, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126832B	  renamable $vgpr45 = nofpexcept V_RCP_F32_e32 $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126864B	  renamable $vgpr41 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr41, 0, killed $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126880B	  renamable $vgpr41 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr41, 0, $vgpr139, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126896B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr45, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126928B	  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, killed $vgpr45, $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126944B	  renamable $vgpr43, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr139, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126960B	  renamable $vgpr44 = nofpexcept V_MUL_F32_e32 $vgpr43, $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126976B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr44, 0, $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127008B	  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, $vgpr45, killed $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127024B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, killed $vgpr42, 0, $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127088B	  renamable $vgpr43, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127104B	  renamable $vgpr46 = nofpexcept V_RCP_F32_e32 $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127136B	  renamable $vgpr42 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr42, 0, killed $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127152B	  renamable $vgpr42 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr42, 0, $vgpr139, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127168B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr46, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127200B	  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, killed $vgpr46, $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127216B	  renamable $vgpr44, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr139, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127232B	  renamable $vgpr45 = nofpexcept V_MUL_F32_e32 $vgpr44, $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127248B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr45, 0, $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127280B	  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, $vgpr46, killed $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127296B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, killed $vgpr43, 0, $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127360B	  renamable $vgpr44, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127376B	  renamable $vgpr47 = nofpexcept V_RCP_F32_e32 $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127408B	  renamable $vgpr43 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr43, 0, killed $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127424B	  renamable $vgpr43 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr43, 0, $vgpr139, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127440B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr47, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127472B	  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, killed $vgpr47, $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127488B	  renamable $vgpr45, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr139, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127504B	  renamable $vgpr46 = nofpexcept V_MUL_F32_e32 $vgpr45, $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127520B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr46, 0, $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127552B	  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, $vgpr47, killed $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127568B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, killed $vgpr44, 0, $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127632B	  renamable $vgpr45, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127648B	  renamable $vgpr48 = nofpexcept V_RCP_F32_e32 $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127680B	  renamable $vgpr44 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr44, 0, killed $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127696B	  renamable $vgpr44 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr44, 0, $vgpr139, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127712B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr48, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127744B	  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, killed $vgpr48, $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127760B	  renamable $vgpr46, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr139, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127776B	  renamable $vgpr47 = nofpexcept V_MUL_F32_e32 $vgpr46, $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127792B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr47, 0, $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127824B	  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, $vgpr48, killed $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127840B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, killed $vgpr45, 0, $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127904B	  renamable $vgpr46, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127920B	  renamable $vgpr49 = nofpexcept V_RCP_F32_e32 $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127952B	  renamable $vgpr45 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr45, 0, killed $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127968B	  renamable $vgpr45 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr45, 0, $vgpr139, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127984B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr49, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128016B	  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, killed $vgpr49, $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128032B	  renamable $vgpr47, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr139, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128048B	  renamable $vgpr48 = nofpexcept V_MUL_F32_e32 $vgpr47, $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128064B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr48, 0, $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128096B	  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, $vgpr49, killed $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128112B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, killed $vgpr46, 0, $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128176B	  renamable $vgpr47, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128192B	  renamable $vgpr50 = nofpexcept V_RCP_F32_e32 $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128224B	  renamable $vgpr46 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr46, 0, killed $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128240B	  renamable $vgpr46 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr46, 0, $vgpr139, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128256B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr50, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128288B	  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, killed $vgpr50, $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128304B	  renamable $vgpr48, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr139, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128320B	  renamable $vgpr49 = nofpexcept V_MUL_F32_e32 $vgpr48, $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128336B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr49, 0, $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128368B	  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, $vgpr50, killed $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128384B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, killed $vgpr47, 0, $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128448B	  renamable $vgpr48, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128464B	  renamable $vgpr51 = nofpexcept V_RCP_F32_e32 $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128496B	  renamable $vgpr47 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr47, 0, killed $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128512B	  renamable $vgpr47 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr47, 0, $vgpr139, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128528B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr51, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128560B	  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, killed $vgpr51, $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128576B	  renamable $vgpr49, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr139, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128592B	  renamable $vgpr50 = nofpexcept V_MUL_F32_e32 $vgpr49, $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128608B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr50, 0, $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128640B	  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, $vgpr51, killed $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128656B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, killed $vgpr48, 0, $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128720B	  renamable $vgpr49, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128736B	  renamable $vgpr52 = nofpexcept V_RCP_F32_e32 $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128768B	  renamable $vgpr48 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr48, 0, killed $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128784B	  renamable $vgpr48 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr48, 0, $vgpr139, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128800B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr52, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128832B	  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, killed $vgpr52, $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128848B	  renamable $vgpr50, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128864B	  renamable $vgpr51 = nofpexcept V_MUL_F32_e32 $vgpr50, $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128880B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr51, 0, $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128912B	  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, $vgpr52, killed $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128928B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, killed $vgpr49, 0, $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128992B	  renamable $vgpr50, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129008B	  renamable $vgpr53 = nofpexcept V_RCP_F32_e32 $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129040B	  renamable $vgpr49 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr49, 0, killed $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129056B	  renamable $vgpr49 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr49, 0, $vgpr139, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129072B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr53, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129104B	  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, killed $vgpr53, $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129120B	  renamable $vgpr51, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr139, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129136B	  renamable $vgpr52 = nofpexcept V_MUL_F32_e32 $vgpr51, $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129152B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr52, 0, $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129184B	  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, $vgpr53, killed $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129200B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, killed $vgpr50, 0, $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129264B	  renamable $vgpr51, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129280B	  renamable $vgpr54 = nofpexcept V_RCP_F32_e32 $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129312B	  renamable $vgpr50 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr50, 0, killed $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129328B	  renamable $vgpr50 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr50, 0, $vgpr139, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129344B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr54, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129376B	  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, killed $vgpr54, $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129392B	  renamable $vgpr52, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr139, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129408B	  renamable $vgpr53 = nofpexcept V_MUL_F32_e32 $vgpr52, $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129424B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr53, 0, $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129456B	  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, $vgpr54, killed $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129472B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, killed $vgpr51, 0, $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129536B	  renamable $vgpr52, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129552B	  renamable $vgpr55 = nofpexcept V_RCP_F32_e32 $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129584B	  renamable $vgpr51 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr51, 0, killed $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129600B	  renamable $vgpr51 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr51, 0, $vgpr139, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129616B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr55, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129648B	  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, killed $vgpr55, $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129664B	  renamable $vgpr53, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr139, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129680B	  renamable $vgpr54 = nofpexcept V_MUL_F32_e32 $vgpr53, $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129696B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr54, 0, $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129728B	  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, $vgpr55, killed $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129744B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, killed $vgpr52, 0, $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129808B	  renamable $vgpr53, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129824B	  renamable $vgpr56 = nofpexcept V_RCP_F32_e32 $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129856B	  renamable $vgpr52 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr52, 0, killed $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129872B	  renamable $vgpr52 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr52, 0, $vgpr139, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129888B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr56, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129920B	  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, killed $vgpr56, $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129936B	  renamable $vgpr54, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr139, 0, $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129952B	  renamable $vgpr55 = nofpexcept V_MUL_F32_e32 $vgpr54, $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129968B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr55, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130000B	  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, $vgpr56, killed $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130016B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, killed $vgpr53, 0, $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130080B	  renamable $vgpr54, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130096B	  renamable $vgpr57 = nofpexcept V_RCP_F32_e32 $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130128B	  renamable $vgpr53 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr53, 0, killed $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130144B	  renamable $vgpr53 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr53, 0, $vgpr139, 0, killed $vgpr132, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130160B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr57, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130192B	  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, killed $vgpr57, $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130208B	  renamable $vgpr55, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr139, 0, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130224B	  renamable $vgpr56 = nofpexcept V_MUL_F32_e32 $vgpr55, $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130240B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr56, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130272B	  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, $vgpr57, killed $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130288B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, killed $vgpr54, 0, $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130352B	  renamable $vgpr55, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130368B	  renamable $vgpr65 = nofpexcept V_RCP_F32_e32 $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130400B	  renamable $vgpr54 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr54, 0, killed $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130416B	  renamable $vgpr54 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr54, 0, $vgpr139, 0, killed $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130432B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr65, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130464B	  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, killed $vgpr65, $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130480B	  renamable $vgpr56, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr139, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130496B	  renamable $vgpr57 = nofpexcept V_MUL_F32_e32 $vgpr56, $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130512B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr57, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130544B	  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, $vgpr65, killed $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130560B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, killed $vgpr55, 0, $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130624B	  renamable $vgpr56, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130640B	  renamable $vgpr66 = nofpexcept V_RCP_F32_e32 $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130672B	  renamable $vgpr55 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr55, 0, killed $vgpr65, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130688B	  renamable $vgpr55 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr55, 0, $vgpr139, 0, killed $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130704B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr66, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130736B	  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, killed $vgpr66, $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130752B	  renamable $vgpr57, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr139, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130768B	  renamable $vgpr65 = nofpexcept V_MUL_F32_e32 $vgpr57, $vgpr66, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130784B	  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr65, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130816B	  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, $vgpr66, killed $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130832B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, killed $vgpr56, 0, $vgpr65, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130896B	  renamable $vgpr57, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130912B	  renamable $vgpr67 = nofpexcept V_RCP_F32_e32 $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130944B	  renamable $vgpr56 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr56, 0, killed $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130960B	  renamable $vgpr56 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr56, 0, $vgpr139, 0, killed $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130976B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr67, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131008B	  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, killed $vgpr67, $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131024B	  renamable $vgpr65, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr139, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131040B	  renamable $vgpr66 = nofpexcept V_MUL_F32_e32 $vgpr65, $vgpr67, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131056B	  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr66, 0, $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131088B	  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, $vgpr67, killed $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131104B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, killed $vgpr57, 0, $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131168B	  renamable $vgpr65, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131184B	  renamable $vgpr68 = nofpexcept V_RCP_F32_e32 $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131216B	  renamable $vgpr57 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr57, 0, killed $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131232B	  renamable $vgpr57 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr57, 0, $vgpr139, 0, killed $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131248B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr68, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131280B	  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, killed $vgpr68, $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131296B	  renamable $vgpr66, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr139, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131312B	  renamable $vgpr67 = nofpexcept V_MUL_F32_e32 $vgpr66, $vgpr68, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131328B	  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr67, 0, $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131360B	  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, $vgpr68, killed $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131376B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, killed $vgpr65, 0, $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131440B	  renamable $vgpr66, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131456B	  renamable $vgpr69 = nofpexcept V_RCP_F32_e32 $vgpr66, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131488B	  renamable $vgpr65 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr65, 0, killed $vgpr68, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131504B	  renamable $vgpr65 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr65, 0, $vgpr139, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131520B	  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr66, 0, $vgpr69, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131552B	  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, killed $vgpr69, $vgpr69(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131568B	  renamable $vgpr67, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr139, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131584B	  renamable $vgpr68 = nofpexcept V_MUL_F32_e32 $vgpr67, $vgpr69, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131600B	  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, $vgpr66, 0, $vgpr68, 0, $vgpr67, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131632B	  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, $vgpr69, killed $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131648B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, killed $vgpr66, 0, $vgpr68, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131712B	  renamable $vgpr67, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131728B	  renamable $vgpr70 = nofpexcept V_RCP_F32_e32 $vgpr67, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131760B	  renamable $vgpr66 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr66, 0, killed $vgpr69, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131776B	  renamable $vgpr66 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr66, 0, $vgpr139, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131792B	  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr67, 0, $vgpr70, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131824B	  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, killed $vgpr70, $vgpr70(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131840B	  renamable $vgpr68, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr139, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131856B	  renamable $vgpr69 = nofpexcept V_MUL_F32_e32 $vgpr68, $vgpr70, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131872B	  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 1, $vgpr67, 0, $vgpr69, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131904B	  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, $vgpr70, killed $vgpr69(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131920B	  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, killed $vgpr67, 0, $vgpr69, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131984B	  renamable $vgpr68, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132000B	  renamable $vgpr71 = nofpexcept V_RCP_F32_e32 $vgpr68, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132032B	  renamable $vgpr67 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr67, 0, killed $vgpr70, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132048B	  renamable $vgpr67 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr67, 0, $vgpr139, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132064B	  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr68, 0, $vgpr71, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132096B	  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, killed $vgpr71, $vgpr71(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132112B	  renamable $vgpr69, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr139, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132128B	  renamable $vgpr70 = nofpexcept V_MUL_F32_e32 $vgpr69, $vgpr71, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132144B	  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 1, $vgpr68, 0, $vgpr70, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132176B	  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, $vgpr71, killed $vgpr70(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132192B	  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, killed $vgpr68, 0, $vgpr70, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132256B	  renamable $vgpr69, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132272B	  renamable $vgpr72 = nofpexcept V_RCP_F32_e32 $vgpr69, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132304B	  renamable $vgpr68 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr68, 0, killed $vgpr71, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132320B	  renamable $vgpr68 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr68, 0, $vgpr139, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132336B	  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, $vgpr69, 0, $vgpr72, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132368B	  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, killed $vgpr72, $vgpr72(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132384B	  renamable $vgpr70, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr139, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132400B	  renamable $vgpr71 = nofpexcept V_MUL_F32_e32 $vgpr70, $vgpr72, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132416B	  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 1, $vgpr69, 0, $vgpr71, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132448B	  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, $vgpr72, killed $vgpr71(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132464B	  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, killed $vgpr69, 0, $vgpr71, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132528B	  renamable $vgpr70, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132544B	  renamable $vgpr73 = nofpexcept V_RCP_F32_e32 $vgpr70, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132576B	  renamable $vgpr69 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr69, 0, killed $vgpr72, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132592B	  renamable $vgpr69 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr69, 0, $vgpr139, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132608B	  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 1, $vgpr70, 0, $vgpr73, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132640B	  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, killed $vgpr73, $vgpr73(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132656B	  renamable $vgpr71, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr139, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132672B	  renamable $vgpr72 = nofpexcept V_MUL_F32_e32 $vgpr71, $vgpr73, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132688B	  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 1, $vgpr70, 0, $vgpr72, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132720B	  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr74, $vgpr73, killed $vgpr72(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132736B	  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 1, killed $vgpr70, 0, $vgpr72, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132800B	  renamable $vgpr71, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132816B	  renamable $vgpr74 = nofpexcept V_RCP_F32_e32 $vgpr71, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132848B	  renamable $vgpr70 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr70, 0, killed $vgpr73, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132864B	  renamable $vgpr70 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr70, 0, $vgpr139, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132880B	  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 1, $vgpr71, 0, $vgpr74, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132912B	  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, killed $vgpr74, $vgpr74(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132928B	  renamable $vgpr72, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr139, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132944B	  renamable $vgpr73 = nofpexcept V_MUL_F32_e32 $vgpr72, $vgpr74, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132960B	  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 1, $vgpr71, 0, $vgpr73, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132992B	  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, $vgpr74, killed $vgpr73(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133008B	  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 1, killed $vgpr71, 0, $vgpr73, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133072B	  renamable $vgpr72, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133088B	  renamable $vgpr75 = nofpexcept V_RCP_F32_e32 $vgpr72, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133120B	  renamable $vgpr71 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr71, 0, killed $vgpr74, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133136B	  renamable $vgpr71 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr71, 0, $vgpr139, 0, killed $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133152B	  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 1, $vgpr72, 0, $vgpr75, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133184B	  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, killed $vgpr75, $vgpr75(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133200B	  renamable $vgpr73, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr139, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133216B	  renamable $vgpr74 = nofpexcept V_MUL_F32_e32 $vgpr73, $vgpr75, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133232B	  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 1, $vgpr72, 0, $vgpr74, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133264B	  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, $vgpr75, killed $vgpr74(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133280B	  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 1, killed $vgpr72, 0, $vgpr74, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133312B	  renamable $vgpr72 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr72, 0, killed $vgpr75, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133328B	  renamable $vgpr72 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr72, 0, killed $vgpr139, 0, killed $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133344B	  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr4, 0, killed $vgpr5, 0, 1065353216, undef $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133376B	  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr6, 0, killed $vgpr7, 0, 1065353216, $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133392B	  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr8, 0, killed $vgpr9, 0, 1065353216, undef $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133424B	  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr10, 0, killed $vgpr11, 0, 1065353216, $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133440B	  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr12, 0, killed $vgpr13, 0, 1065353216, undef $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133472B	  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr14, 0, killed $vgpr15, 0, 1065353216, $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133488B	  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr16, 0, killed $vgpr17, 0, 1065353216, undef $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133520B	  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr18, 0, killed $vgpr19, 0, 1065353216, $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133536B	  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr20, 0, killed $vgpr21, 0, 1065353216, undef $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133568B	  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr22, 0, killed $vgpr23, 0, 1065353216, $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133584B	  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr24, 0, killed $vgpr25, 0, 1065353216, undef $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133616B	  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr26, 0, killed $vgpr27, 0, 1065353216, $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133632B	  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr28, 0, killed $vgpr29, 0, 1065353216, undef $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133664B	  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr30, 0, killed $vgpr31, 0, 1065353216, $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133680B	  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr32, 0, killed $vgpr33, 0, 1065353216, undef $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133712B	  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr34, 0, killed $vgpr35, 0, 1065353216, $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133728B	  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr36, 0, killed $vgpr37, 0, 1065353216, undef $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133760B	  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr38, 0, killed $vgpr0, 0, 1065353216, $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133776B	  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr1, 0, killed $vgpr39, 0, 1065353216, undef $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133808B	  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr40, 0, killed $vgpr41, 0, 1065353216, $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133824B	  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr42, 0, killed $vgpr43, 0, 1065353216, undef $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133856B	  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr44, 0, killed $vgpr45, 0, 1065353216, $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133872B	  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr46, 0, killed $vgpr47, 0, 1065353216, undef $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133904B	  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr48, 0, killed $vgpr49, 0, 1065353216, $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133920B	  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr50, 0, killed $vgpr51, 0, 1065353216, undef $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133952B	  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr52, 0, killed $vgpr53, 0, 1065353216, $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133968B	  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr54, 0, killed $vgpr55, 0, 1065353216, undef $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134000B	  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr56, 0, killed $vgpr57, 0, 1065353216, $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134016B	  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr65, 0, killed $vgpr66, 0, 1065353216, undef $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134048B	  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr67, 0, killed $vgpr68, 0, 1065353216, $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134064B	  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr69, 0, killed $vgpr70, 0, 1065353216, undef $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134096B	  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr71, 0, killed $vgpr72, 0, 1065353216, $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134112B	  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134128B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134144B	  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 4, killed $vgpr233, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134160B	  renamable $vgpr1 = V_AND_B32_e32 48, killed $vgpr231, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134176B	  renamable $vgpr20 = V_AND_B32_e32 1, $vgpr227, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134192B	  renamable $vgpr21 = nuw nsw V_LSHLREV_B32_e32 13, $vgpr20, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134208B	  renamable $vgpr22 = nuw nsw V_LSHLREV_B32_e32 8, $vgpr227, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134224B	  renamable $vgpr22 = V_AND_B32_e32 16384, killed $vgpr22, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134240B	  renamable $vgpr21 = disjoint V_LSHL_OR_B32_e64 killed $vgpr62, 9, killed $vgpr21, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134256B	  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, $vgpr61, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134272B	  renamable $vgpr0 = disjoint V_OR3_B32_e64 killed $vgpr21, killed $vgpr22, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134288B	  renamable $vgpr1 = nuw V_ADD_U32_e32 0, $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134368B	  DS_WRITE_B128_gfx9 renamable $vgpr1, killed renamable $vgpr4_vgpr5_vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134448B	  DS_WRITE_B128_gfx9 killed renamable $vgpr1, killed renamable $vgpr12_vgpr13_vgpr14_vgpr15, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134464B	  renamable $vgpr0 = nuw V_XAD_U32_e64 killed $vgpr0, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134544B	  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr8_vgpr9_vgpr10_vgpr11, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134624B	  DS_WRITE_B128_gfx9 killed renamable $vgpr0, killed renamable $vgpr16_vgpr17_vgpr18_vgpr19, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134640B	  ATOMIC_FENCE 5, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134656B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134672B	  ATOMIC_FENCE 4, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134688B	  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 5, killed $vgpr227, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134704B	  renamable $vgpr0 = V_AND_B32_e32 7168, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134720B	  renamable $vgpr1 = exact V_LSHRREV_B32_e32 1, killed $vgpr60, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134736B	  renamable $vgpr4 = nuw nsw V_LSHLREV_B32_e32 9, killed $vgpr64, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134752B	  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr61, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134768B	  renamable $vgpr1 = nuw V_LSHL_ADD_U32_e64 killed $vgpr20, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134784B	  renamable $vgpr13 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134800B	  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 renamable $vgpr13, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134816B	  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = DS_READ_B128_gfx9 renamable $vgpr13, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134832B	  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
134848B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr12_sgpr13, $vgpr58_vgpr59, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
134864B	  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, killed $vgpr2_vgpr3, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
134880B	  renamable $vgpr0 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134896B	  renamable $vgpr0 = V_LSHRREV_B32_sdwa 0, killed $vgpr0, 0, $vgpr8, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134912B	  renamable $sgpr12 = S_MOV_B32 255
134928B	  renamable $vgpr0 = V_BITOP3_B16_e64 0, $vgpr8, 0, killed $vgpr0, 0, killed $sgpr12, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134944B	  renamable $vgpr0 = V_LSHLREV_B32_e32 16, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134960B	  renamable $vgpr12 = V_AND_OR_B32_e64 $vgpr4, killed $sgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134976B	  renamable $sgpr12 = S_MOV_B32 50464518
134992B	  renamable $vgpr8 = V_PERM_B32_e64 $vgpr4, $vgpr8, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135008B	  renamable $sgpr13 = S_MOV_B32 16778500
135024B	  renamable $vgpr14 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135040B	  renamable $vgpr16 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135056B	  renamable $vgpr18 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135072B	  renamable $vgpr10 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135088B	  renamable $vgpr20 = V_PERM_B32_e64 $vgpr7, $vgpr11, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135104B	  renamable $vgpr22 = V_PERM_B32_e64 killed $vgpr7, killed $vgpr11, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135120B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = DS_READ_B128_gfx9 renamable $vgpr13, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135136B	  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 killed renamable $vgpr13, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135152B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr229, $sgpr5, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
135168B	  renamable $vgpr11 = V_MUL_LO_U32_e64 killed $vgpr236, $sgpr5, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135184B	  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr228, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135200B	  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr234, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135216B	  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr232, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135232B	  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $sgpr5, killed $vgpr230, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135248B	  renamable $vgpr9 = V_ADD_U32_e32 killed $vgpr11, killed $vgpr9, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135264B	  renamable $vgpr11 = V_ADD3_U32_e64 $vgpr9, killed $vgpr13, $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135280B	  renamable $vgpr21 = V_ADD_U32_e32 8, $vgpr11, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135296B	  renamable $vgpr23 = V_ADD3_U32_e64 $vgpr9, killed $vgpr15, $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135312B	  renamable $vgpr24 = V_ADD_U32_e32 8, $vgpr23, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135328B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135344B	  renamable $vgpr26 = V_ADD_U32_e32 8, $vgpr25, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135360B	  renamable $vgpr27 = V_ADD3_U32_e64 killed $vgpr9, killed $vgpr19, killed $vgpr58, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135376B	  renamable $vgpr28 = V_ADD_U32_e32 8, $vgpr27, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135520B	  renamable $sgpr21 = S_AND_B32 renamable $sgpr21, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
135568B	  renamable $sgpr22 = COPY renamable $sgpr18, debug-location !122; moe_op_gemm_a8w4.py:505:20
135584B	  renamable $sgpr23 = COPY killed renamable $sgpr19, debug-location !122; moe_op_gemm_a8w4.py:505:20
135600B	  renamable $vgpr13 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135616B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135664B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr11, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135680B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr12_vgpr13, killed renamable $vgpr9, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135696B	  renamable $vgpr9 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135712B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135760B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr21, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135776B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr8_vgpr9, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135792B	  renamable $vgpr15 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135808B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135856B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr23, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135872B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr14_vgpr15, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135888B	  renamable $vgpr17 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135904B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135952B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr24, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135968B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr16_vgpr17, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135984B	  renamable $vgpr19 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136000B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136048B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr25, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136064B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr18_vgpr19, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136080B	  renamable $vgpr11 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136096B	  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136144B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr26, killed $sgpr2_sgpr3, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136160B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr10_vgpr11, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136176B	  renamable $vgpr21 = V_PERM_B32_e64 $vgpr3, $vgpr7, killed $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136192B	  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136240B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr63, 0, killed $vgpr27, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136256B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr20_vgpr21, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136272B	  renamable $vgpr23 = V_PERM_B32_e64 killed $vgpr3, killed $vgpr7, killed $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136288B	  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136336B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr63, 0, killed $vgpr28, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136352B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr22_vgpr23, killed renamable $vgpr0, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136368B	  S_BRANCH %bb.1, debug-location !123; moe_op_gemm_a8w4.py:505:4

# End machine code for function _moe_gemm_a8w4.

