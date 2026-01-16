# *** IR Dump After GCN NSA Reassign (amdgpu-nsa-reassign) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, TiedOpsRewritten, TracksDebugUserValues
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
Function Live Ins: $vgpr0 in %999, $sgpr0_sgpr1 in %1000, $sgpr2_sgpr3 in %1001, $sgpr5 in %1003, $sgpr6_sgpr7 in %1004, $sgpr8 in %1005, $sgpr12_sgpr13 in %1008, $sgpr14 in %1009, $sgpr15 in %1010, $sgpr16 in %1011

0B	bb.0 (%ir-block.30):
	  successors: %bb.2(0x40000000), %bb.1(0x40000000); %bb.2(50.00%), %bb.1(50.00%)
	  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
96B	  renamable $sgpr24_sgpr25 = COPY $sgpr6_sgpr7
144B	  renamable $sgpr20_sgpr21 = COPY $sgpr2_sgpr3
176B	  %10369:vgpr_32(s32) = COPY $vgpr0
192B	  early-clobber renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
208B	  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
224B	  %1053:vgpr_32 = V_MOV_B32_e32 0, implicit $exec
240B	  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode, debug-location !8; moe_op_gemm_a8w4.py:190
256B	  %1055:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr6_sgpr7, %1053:vgpr_32, 0, 0, implicit $exec, debug-location !10 :: (load (s32) from %ir.22, addrspace 1); moe_op_gemm_a8w4.py:294:37
272B	  renamable $sgpr6 = V_READFIRSTLANE_B32 %1055:vgpr_32, implicit $exec, debug-location !10; moe_op_gemm_a8w4.py:294:37
288B	  %9100:vgpr_32 = V_SUB_U32_e32 $sgpr2, %1055:vgpr_32, implicit $exec, debug-location !11; moe_op_gemm_a8w4.py:294:29
304B	  renamable $sgpr2 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !12; moe_op_gemm_a8w4.py:302:38
320B	  renamable $vcc = V_CMP_GT_I32_e64 1, %9100:vgpr_32, implicit $exec, debug-location !13; moe_op_gemm_a8w4.py:303:19
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
	  liveins: $sgpr2, $sgpr5, $sgpr6, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000C, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
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
816B	  %1086:vgpr_32 = V_CVT_F32_U32_e32 $sgpr2, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
832B	  renamable $sgpr9 = S_AND_B32 killed renamable $sgpr9, -8, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
848B	  renamable $sgpr9 = S_SUB_I32 killed renamable $sgpr16, killed renamable $sgpr9, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
864B	  renamable $sgpr7 = nsw S_MUL_I32 killed renamable $sgpr7, renamable $sgpr9, debug-location !23; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:309:61 ]
880B	  %1087:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1086:vgpr_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
896B	  renamable $sgpr4 = S_MIN_I32 killed renamable $sgpr9, killed renamable $sgpr4, implicit-def dead $scc, debug-location !24; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:309:61 ]
912B	  renamable $sgpr4 = nsw S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr10, implicit-def dead $scc, debug-location !25; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:309:61 ]
928B	  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !26; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:309:61 ]
944B	  %1089:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1087:vgpr_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
960B	  %1090:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1089:vgpr_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
976B	  renamable $sgpr9 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
992B	  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1024B	  renamable $sgpr7 = S_SUB_I32 0, renamable $sgpr2, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1040B	  renamable $sgpr10 = V_READFIRSTLANE_B32 %1090:vgpr_32, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
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
1344B	  %1112:vgpr_32 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1360B	  %1113:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1112:vgpr_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1376B	  renamable $sgpr2 = S_XOR_B32 killed renamable $sgpr2, renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1392B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr2, killed renamable $sgpr9, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1408B	  %1114:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1113:vgpr_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1424B	  %1115:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1114:vgpr_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1440B	  renamable $sgpr2 = S_XOR_B32 renamable $sgpr4, renamable $sgpr7, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1456B	  renamable $sgpr2 = S_ASHR_I32 killed renamable $sgpr2, 31, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1472B	  renamable $sgpr9 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1488B	  renamable $sgpr10 = V_READFIRSTLANE_B32 %1115:vgpr_32, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
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
1856B	  %1140:vgpr_32 = V_CVT_F32_U32_e32 $sgpr3, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1872B	  %1141:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1140:vgpr_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1888B	  %1142:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1141:vgpr_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1904B	  %1143:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1142:vgpr_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1920B	  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 144, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
1936B	  renamable $sgpr18 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1952B	  renamable $sgpr6 = S_SUB_I32 0, renamable $sgpr3, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1968B	  renamable $sgpr19 = V_READFIRSTLANE_B32 %1143:vgpr_32, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
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
2352B	  %1169:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr16_sgpr17, %1053:vgpr_32, 0, 0, implicit $exec, debug-location !38 :: (load (s32) from %ir.162, addrspace 1); moe_op_gemm_a8w4.py:319:24
2368B	  renamable $vcc = V_CMP_EQ_U32_e64 -1, %1169:vgpr_32, implicit $exec, debug-location !39; moe_op_gemm_a8w4.py:320:20
2384B	  $vcc = S_AND_B64 $exec, killed renamable $vcc, implicit-def dead $scc, debug-location !39; moe_op_gemm_a8w4.py:320:20
2400B	  renamable $sgpr2 = S_MOV_B32 0
2416B	  S_CBRANCH_VCCNZ %bb.1, implicit $vcc, debug-location !39; moe_op_gemm_a8w4.py:320:20

2432B	bb.3 (%ir-block.166):
	; predecessors: %bb.2
	  successors: %bb.6(0x40000000), %bb.4(0x40000000); %bb.6(50.00%), %bb.4(50.00%)
	  liveins: $sgpr3, $sgpr4, $sgpr5, $sgpr6, $sgpr7, $sgpr8, $sgpr9, $sgpr10, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3:0x0000000000000003, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
2464B	  early-clobber renamable $sgpr16_sgpr17_sgpr18_sgpr19 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
2848B	  %10399:vgpr_32 = V_AND_B32_e32 65535, %1169:vgpr_32, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
2896B	  %9123:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 2, %10399:vgpr_32, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
2912B	  undef %10395.sub0:vreg_64_align2 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr18_sgpr19, %9123:vgpr_32, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
2928B	  renamable $sgpr18_sgpr19 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
2944B	  renamable $sgpr10 = S_ASHR_I32 killed renamable $sgpr10, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
2960B	  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, killed renamable $sgpr7, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
2976B	  undef %9126.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 16, %1169:vgpr_32, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
3120B	  undef %10371.sub0:vreg_64_align2 = V_LSHRREV_B32_e32 4, %10369:vgpr_32(s32), implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4272B	  renamable $sgpr27 = S_MOV_B32 159744
4288B	  renamable $sgpr26 = S_MOV_B32 2147483646
4304B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
4320B	  %9126.sub1:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9126.sub0:vreg_64_align2, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
4336B	  undef %10383.sub0:vreg_64_align2 = disjoint V_OR_B32_e32 32, %10371.sub0:vreg_64_align2, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4352B	  undef %10379.sub0:vreg_64_align2 = disjoint V_OR_B32_e32 64, %10371.sub0:vreg_64_align2, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4368B	  undef %10375.sub0:vreg_64_align2 = disjoint V_OR_B32_e32 96, %10371.sub0:vreg_64_align2, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4384B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4400B	  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4416B	  %10387:vreg_64_align2 = nsw V_LSHLREV_B64_e64 7, %9126:vreg_64_align2, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
4432B	  renamable $sgpr7 = S_XOR_B32 killed renamable $sgpr7, killed renamable $sgpr10, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4448B	  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr6, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4464B	  undef %10401.sub0:vreg_64_align2 = V_OR_B32_e32 %10387.sub0:vreg_64_align2, %10371.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4480B	  %10389:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, %9123:vgpr_32, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
4496B	  undef %10413.sub0:vreg_64_align2 = V_OR_B32_e32 %10387.sub0:vreg_64_align2, %10383.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4512B	  undef %10409.sub0:vreg_64_align2 = V_OR_B32_e32 %10387.sub0:vreg_64_align2, %10379.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4528B	  undef %10405.sub0:vreg_64_align2 = V_OR_B32_e32 %10387.sub0:vreg_64_align2, %10375.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4544B	  %9138:vgpr_32 = V_ASHRREV_I32_e32 31, %10387.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4560B	  renamable $sgpr9 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4576B	  renamable $sgpr10 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4592B	  %1234:vgpr_32 = V_SUB_U32_e32 0, %10401.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4608B	  %1263:vgpr_32 = V_SUB_U32_e32 0, %10413.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4624B	  %1276:vgpr_32 = V_SUB_U32_e32 0, %10409.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4640B	  %1289:vgpr_32 = V_SUB_U32_e32 0, %10405.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4656B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4672B	  %1235:vgpr_32 = V_MAX_I32_e32 %1234:vgpr_32, %10401.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4688B	  %1264:vgpr_32 = V_MAX_I32_e32 %1263:vgpr_32, %10413.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4704B	  %1277:vgpr_32 = V_MAX_I32_e32 %1276:vgpr_32, %10409.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4720B	  %1290:vgpr_32 = V_MAX_I32_e32 %1289:vgpr_32, %10405.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4768B	  renamable $sgpr18 = COPY renamable $sgpr26, debug-location !53; moe_op_gemm_a8w4.py:338:27
4784B	  renamable $sgpr19 = COPY renamable $sgpr27, debug-location !53; moe_op_gemm_a8w4.py:338:27
4800B	  %9073:vgpr_32 = V_SUB_U32_e32 0, %10395.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4816B	  %9074:vgpr_32 = V_MAX_I32_e32 %10395.sub0:vreg_64_align2, %9073:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4832B	  %1238:vgpr_32 = V_CVT_F32_U32_e32 %9074:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4848B	  renamable $sgpr9 = S_SUB_I32 renamable $sgpr4, renamable $sgpr3, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4864B	  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4880B	  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr10, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4896B	  %1239:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1238:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4912B	  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr4, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4928B	  renamable $sgpr9 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4944B	  S_CMP_GE_U32 killed renamable $sgpr4, killed renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4960B	  %1241:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1239:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4976B	  %1242:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1241:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4992B	  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
5008B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !53; moe_op_gemm_a8w4.py:338:27
5024B	  %9119:vgpr_32 = V_SUB_U32_e32 0, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5040B	  %9076:vgpr_32 = V_MUL_LO_U32_e64 %9119:vgpr_32, %1242:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5056B	  %9075:vgpr_32 = V_MUL_HI_U32_e64 %1242:vgpr_32, %9076:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5072B	  %9072:vgpr_32 = V_ADD_U32_e32 %1242:vgpr_32, %9075:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5088B	  %1251:vgpr_32 = V_MUL_HI_U32_e64 %1235:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5104B	  %1265:vgpr_32 = V_MUL_HI_U32_e64 %1264:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5120B	  %1278:vgpr_32 = V_MUL_HI_U32_e64 %1277:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5136B	  %1291:vgpr_32 = V_MUL_HI_U32_e64 %1290:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5152B	  %1252:vgpr_32 = V_MUL_LO_U32_e64 %1251:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5168B	  %1266:vgpr_32 = V_MUL_LO_U32_e64 %1265:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5184B	  %1279:vgpr_32 = V_MUL_LO_U32_e64 %1278:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5200B	  %1292:vgpr_32 = V_MUL_LO_U32_e64 %1291:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5216B	  %1253:vgpr_32 = V_SUB_U32_e32 %1235:vgpr_32, %1252:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5232B	  %1267:vgpr_32 = V_SUB_U32_e32 %1264:vgpr_32, %1266:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5248B	  %1280:vgpr_32 = V_SUB_U32_e32 %1277:vgpr_32, %1279:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5264B	  %1293:vgpr_32 = V_SUB_U32_e32 %1290:vgpr_32, %1292:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5280B	  %1255:vgpr_32 = V_SUB_U32_e32 %1253:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5296B	  %1269:vgpr_32 = V_SUB_U32_e32 %1267:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5312B	  %1282:vgpr_32 = V_SUB_U32_e32 %1280:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5328B	  %1295:vgpr_32 = V_SUB_U32_e32 %1293:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5344B	  renamable $vcc = V_CMP_GE_U32_e64 %1253:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5360B	  %1256:vgpr_32 = V_CNDMASK_B32_e64 0, %1253:vgpr_32, 0, %1255:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5376B	  renamable $vcc = V_CMP_GE_U32_e64 %1267:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5392B	  %1270:vgpr_32 = V_CNDMASK_B32_e64 0, %1267:vgpr_32, 0, %1269:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5408B	  renamable $vcc = V_CMP_GE_U32_e64 %1280:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5424B	  %1283:vgpr_32 = V_CNDMASK_B32_e64 0, %1280:vgpr_32, 0, %1282:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5440B	  renamable $vcc = V_CMP_GE_U32_e64 %1293:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5456B	  %1296:vgpr_32 = V_CNDMASK_B32_e64 0, %1293:vgpr_32, 0, %1295:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5472B	  %1258:vgpr_32 = V_SUB_U32_e32 %1256:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5488B	  %1272:vgpr_32 = V_SUB_U32_e32 %1270:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5504B	  %1285:vgpr_32 = V_SUB_U32_e32 %1283:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5520B	  %1298:vgpr_32 = V_SUB_U32_e32 %1296:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5536B	  renamable $vcc = V_CMP_GE_U32_e64 %1256:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5552B	  %1259:vgpr_32 = V_CNDMASK_B32_e64 0, %1256:vgpr_32, 0, %1258:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5568B	  renamable $vcc = V_CMP_GE_U32_e64 %1270:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5584B	  %1273:vgpr_32 = V_CNDMASK_B32_e64 0, %1270:vgpr_32, 0, %1272:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5600B	  renamable $vcc = V_CMP_GE_U32_e64 %1283:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5616B	  %1286:vgpr_32 = V_CNDMASK_B32_e64 0, %1283:vgpr_32, 0, %1285:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5632B	  renamable $vcc = V_CMP_GE_U32_e64 %1296:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5648B	  %1299:vgpr_32 = V_CNDMASK_B32_e64 0, %1296:vgpr_32, 0, %1298:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5664B	  %1261:vgpr_32 = V_XOR_B32_e32 %1259:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5680B	  %1274:vgpr_32 = V_XOR_B32_e32 %1273:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5696B	  %1287:vgpr_32 = V_XOR_B32_e32 %1286:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5712B	  %1300:vgpr_32 = V_XOR_B32_e32 %1299:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5728B	  %1262:vgpr_32 = V_SUB_U32_e32 %1261:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5744B	  %1275:vgpr_32 = V_SUB_U32_e32 %1274:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5760B	  %1288:vgpr_32 = V_SUB_U32_e32 %1287:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5776B	  %1301:vgpr_32 = V_SUB_U32_e32 %1300:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5792B	  %1308:vgpr_32 = V_ADD_LSHL_U32_e64 %10389:vgpr_32, %1262:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5824B	  %1310:vgpr_32 = V_ADD_LSHL_U32_e64 %10389:vgpr_32, %1275:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5856B	  %1312:vgpr_32 = V_ADD_LSHL_U32_e64 %10389:vgpr_32, %1288:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5888B	  %1314:vgpr_32 = V_ADD_LSHL_U32_e64 %10389:vgpr_32, %1301:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5904B	  %1309:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1308:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5920B	  %1311:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1310:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5936B	  %1313:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1312:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5952B	  %1315:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1314:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5968B	  KILL %1314:vgpr_32
5984B	  KILL killed renamable $sgpr16_sgpr17_sgpr18, renamable $sgpr19
6000B	  KILL %1312:vgpr_32
6016B	  KILL %1310:vgpr_32
6032B	  KILL %1308:vgpr_32
6048B	  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
6320B	  %10422:vgpr_32 = V_AND_B32_e32 15, %10369:vgpr_32(s32), implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6560B	  %1362:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
6576B	  undef %10417.sub0:vreg_64_align2 = V_LSHLREV_B32_e32 4, %10422:vgpr_32, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6592B	  renamable $sgpr4 = S_ADD_I32 renamable $sgpr23, 255, implicit-def dead $scc, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
6608B	  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
6624B	  renamable $sgpr34 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
6640B	  renamable $sgpr35 = S_ASHR_I32 renamable $sgpr34, 31, implicit-def dead $scc, debug-location !47; moe_op_gemm_a8w4.py:328:28
6656B	  S_CMPK_GT_I32 renamable $sgpr4, 255, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
6672B	  %1316:vgpr_32 = V_ASHRREV_I32_e32 31, %1309:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6688B	  %1322:vgpr_32 = V_ASHRREV_I32_e32 31, %1311:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6704B	  %1326:vgpr_32 = V_ASHRREV_I32_e32 31, %1313:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6720B	  %1330:vgpr_32 = V_ASHRREV_I32_e32 31, %1315:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6736B	  %1318:vgpr_32 = V_LSHRREV_B32_e32 29, %1316:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6752B	  %1323:vgpr_32 = V_LSHRREV_B32_e32 29, %1322:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6768B	  %1327:vgpr_32 = V_LSHRREV_B32_e32 29, %1326:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6784B	  %1331:vgpr_32 = V_LSHRREV_B32_e32 29, %1330:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6800B	  %1319:vgpr_32 = V_ADD_U32_e32 %1309:vgpr_32, %1318:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6816B	  %1324:vgpr_32 = V_ADD_U32_e32 %1311:vgpr_32, %1323:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6832B	  %1328:vgpr_32 = V_ADD_U32_e32 %1313:vgpr_32, %1327:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6848B	  %1332:vgpr_32 = V_ADD_U32_e32 %1315:vgpr_32, %1331:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6864B	  %1321:vgpr_32 = V_ASHRREV_I32_e32 3, %1319:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6880B	  %1325:vgpr_32 = V_ASHRREV_I32_e32 3, %1324:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6896B	  %1329:vgpr_32 = V_ASHRREV_I32_e32 3, %1328:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6912B	  %1333:vgpr_32 = V_ASHRREV_I32_e32 3, %1332:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6928B	  %1340:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1321:vgpr_32, $sgpr8, %10417:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6944B	  %1343:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1325:vgpr_32, $sgpr8, %10417:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6960B	  %1346:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1329:vgpr_32, $sgpr8, %10417:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6976B	  %1349:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1333:vgpr_32, killed $sgpr8, %10417:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6992B	  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
7008B	  renamable $sgpr25 = S_AND_B32 renamable $sgpr25, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
7024B	  %1361:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1340.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7056B	  %1363:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1343.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7088B	  %1365:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1346.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7120B	  %1367:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1349.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7136B	  %36:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1361:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7152B	  %37:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1363:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7168B	  %38:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1365:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7184B	  %39:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1367:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7200B	  KILL %1363:vgpr_32
7216B	  KILL %1361:vgpr_32
7232B	  KILL %1367:vgpr_32
7248B	  KILL %1365:vgpr_32
7264B	  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
7280B	  undef %9054.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
7296B	  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
7312B	  %1375:vgpr_32 = V_LSHRREV_B32_e32 5, %10369:vgpr_32(s32), implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
7328B	  undef %9890.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr8, %1375:vgpr_32, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7344B	  %9890.sub1:vreg_64_align2 = COPY renamable $sgpr9, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7392B	  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7440B	  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7472B	  renamable $sgpr3 = COPY killed renamable $sgpr9, debug-location !67; moe_op_gemm_a8w4.py:362:77
7488B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7504B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7520B	  %9891:vreg_64_align2 = IMPLICIT_DEF
7552B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7568B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7584B	  renamable $sgpr8_sgpr9 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7600B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !67; moe_op_gemm_a8w4.py:362:77
7616B	  S_CBRANCH_EXECZ %bb.4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7632B	  S_BRANCH %bb.6, debug-location !67; moe_op_gemm_a8w4.py:362:77

7648B	bb.4.Flow349:
	; predecessors: %bb.3, %bb.6
	  successors: %bb.5(0x40000000), %bb.7(0x40000000); %bb.5(50.00%), %bb.7(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F
7664B	  renamable $sgpr8_sgpr9 = S_OR_SAVEEXEC_B64 killed renamable $sgpr8_sgpr9, implicit-def $exec, implicit-def $scc, implicit $exec
7712B	  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
7728B	  %9870:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
7776B	  $exec = S_XOR_B64_term $exec, renamable $sgpr8_sgpr9, implicit-def $scc
7792B	  S_CBRANCH_EXECZ %bb.7, implicit $exec
7808B	  S_BRANCH %bb.5

7824B	bb.5 (%ir-block.366):
	; predecessors: %bb.4
	  successors: %bb.7(0x80000000); %bb.7(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F
7856B	  %1612:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9870:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7872B	  %1613:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %1612:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7888B	  %1614:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1613:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7904B	  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7920B	  %9067:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr10, %1614:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7936B	  %9066:vgpr_32 = V_MUL_HI_U32_e64 %1614:vgpr_32, %9067:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7952B	  %9065:vgpr_32 = V_ADD_U32_e32 %1614:vgpr_32, %9066:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7968B	  %1621:vgpr_32 = V_MUL_HI_U32_e64 %9890.sub0:vreg_64_align2, %9065:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7984B	  %1622:vgpr_32 = V_MUL_LO_U32_e64 %1621:vgpr_32, $sgpr22, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8000B	  %1623:vgpr_32 = V_SUB_U32_e32 %9890.sub0:vreg_64_align2, %1622:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8032B	  %1625:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1623:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8048B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1623:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8064B	  %1626:vgpr_32 = V_CNDMASK_B32_e64 0, %1623:vgpr_32, 0, %1625:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8096B	  %1628:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1626:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8112B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1626:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8128B	  undef %9891.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %1626:vgpr_32, 0, %1628:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8192B	  S_BRANCH %bb.7, debug-location !67; moe_op_gemm_a8w4.py:362:77

8208B	bb.6 (%ir-block.371):
	; predecessors: %bb.3
	  successors: %bb.4(0x80000000); %bb.4(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F
8224B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8256B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !67; moe_op_gemm_a8w4.py:362:77
8272B	  renamable $sgpr10 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8288B	  renamable $sgpr11 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8336B	  renamable $sgpr10_sgpr11 = S_XOR_B64 killed renamable $sgpr10_sgpr11, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8352B	  %1394:vgpr_32 = V_CVT_F32_U32_e32 $sgpr10, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8368B	  %1396:vgpr_32 = V_CVT_F32_U32_e32 $sgpr11, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8384B	  %1398:vgpr_32 = nofpexcept V_FMAMK_F32 %1396:vgpr_32, 1333788672, %1394:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8400B	  %1399:vgpr_32 = nofpexcept V_RCP_F32_e32 %1398:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8416B	  %1401:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1399:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8432B	  %1403:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1401:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8448B	  %1404:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1403:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8464B	  %1406:vgpr_32 = nofpexcept V_FMAMK_F32 %1404:vgpr_32, -813694976, %1401:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8576B	  %1416:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1404:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8592B	  %1407:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1406:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8608B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr10, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8624B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr11, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8640B	  renamable $sgpr16 = V_READFIRSTLANE_B32 %1416:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8656B	  renamable $sgpr17 = V_READFIRSTLANE_B32 %1407:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
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
9376B	  undef %9062.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9890.sub1:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9408B	  %9062.sub1:vreg_64_align2 = COPY %9062.sub0:vreg_64_align2, debug-location !67; moe_op_gemm_a8w4.py:362:77
9424B	  %1502:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9890:vreg_64_align2, 0, %9062:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9440B	  %1504:vgpr_32 = V_XOR_B32_e32 %1502.sub1:vreg_64_align2, %9062.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9456B	  %1507:vgpr_32 = V_XOR_B32_e32 %1502.sub0:vreg_64_align2, %9062.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9472B	  %9061:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1507:vgpr_32, $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9520B	  %9054.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %1507:vgpr_32, $sgpr17, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9568B	  %1517:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9054:vreg_64_align2, 0, %9061:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9584B	  %9057:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1504:vgpr_32, killed $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9600B	  %1524:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1504:vgpr_32, killed $sgpr17, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9616B	  dead %1531:vgpr_32 = V_ADD_CO_U32_e32 %1517.sub0:vreg_64_align2, %1524.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9632B	  %9054.sub0:vreg_64_align2 = V_ADDC_U32_e32 %1517.sub1:vreg_64_align2, %1524.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9648B	  %9057.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9057.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9728B	  %1540:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9054:vreg_64_align2, 0, %9057:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9744B	  %1542:vgpr_32 = V_MUL_LO_U32_e64 $sgpr11, %1540.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9760B	  %1544:vgpr_32 = V_MUL_LO_U32_e64 $sgpr10, %1540.sub1:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9776B	  %1545:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr10, %1540.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9792B	  %1548:vgpr_32 = V_ADD3_U32_e64 %1545.sub1:vreg_64_align2, %1544:vgpr_32, %1542:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9808B	  %1549:vgpr_32 = V_SUB_U32_e32 %1504:vgpr_32, %1548:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9840B	  %1555:vgpr_32 = COPY renamable $sgpr11, debug-location !67; moe_op_gemm_a8w4.py:362:77
9856B	  %1551:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %1507:vgpr_32, %1545.sub0:vreg_64_align2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9872B	  %1553:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %1549:vgpr_32, %1555:vgpr_32, $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9888B	  %1556:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, %1551:vgpr_32, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9904B	  %1558:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %1553:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9920B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr11, %1558:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9936B	  %1563:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9968B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr10, %1556:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9984B	  %1568:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10000B	  renamable $sgpr2_sgpr3 = V_CMP_EQ_U32_e64 $sgpr11, %1558:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10016B	  %1571:vgpr_32 = V_CNDMASK_B32_e64 0, %1563:vgpr_32, 0, %1568:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10048B	  %1577:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, %1556:vgpr_32, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10064B	  %1583:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %1504:vgpr_32, %1548:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10080B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr11, %1583:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10096B	  %1586:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10128B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr10, %1551:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10144B	  %1591:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10160B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr11, %1583:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10176B	  %1594:vgpr_32 = V_CNDMASK_B32_e64 0, %1586:vgpr_32, 0, %1591:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10192B	  renamable $vcc = V_CMP_NE_U32_e64 0, %1571:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10224B	  %1598:vgpr_32 = V_CNDMASK_B32_e64 0, %1556:vgpr_32, 0, %1577:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10240B	  renamable $vcc = V_CMP_NE_U32_e64 0, %1594:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10256B	  %1599:vgpr_32 = V_CNDMASK_B32_e64 0, %1551:vgpr_32, 0, %1598:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10272B	  %1604:vgpr_32 = V_XOR_B32_e32 %1599:vgpr_32, %9062.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10288B	  undef %9891.sub0:vreg_64_align2, dead renamable $vcc = V_SUB_CO_U32_e64 %1604:vgpr_32, %9062.sub0:vreg_64_align2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10352B	  %9890:vreg_64_align2 = IMPLICIT_DEF
10368B	  S_BRANCH %bb.4, debug-location !67; moe_op_gemm_a8w4.py:362:77

10384B	bb.7 (%ir-block.373):
	; predecessors: %bb.4, %bb.5
	  successors: %bb.10(0x40000000), %bb.8(0x40000000); %bb.10(50.00%), %bb.8(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F
10400B	  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
10432B	  %10420:vgpr_32 = V_LSHLREV_B32_e32 3, %10369:vgpr_32(s32), implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10448B	  %1636:vgpr_32 = V_AND_B32_e32 248, %10420:vgpr_32, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10464B	  %9124:vgpr_32 = V_MUL_LO_U32_e64 %10399:vgpr_32, $sgpr2, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
10480B	  %1638:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr3, %9891.sub0:vreg_64_align2, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10496B	  %1639:vgpr_32 = V_ADD3_U32_e64 %9124:vgpr_32, %1636:vgpr_32, %1638:vgpr_32, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10512B	  renamable $sgpr31 = S_MOV_B32 159744
10528B	  renamable $sgpr30 = S_MOV_B32 2147483646
10544B	  renamable $sgpr29 = S_AND_B32 renamable $sgpr29, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
10624B	  %1651:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10640B	  %1650:vgpr_32 = V_CNDMASK_B32_e64 0, %1651:vgpr_32, 0, %1639:vgpr_32, $sgpr6_sgpr7, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10672B	  %55:av_64_align2 = BUFFER_LOAD_DWORDX2_OFFEN %1650:vgpr_32, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
10688B	  renamable $sgpr2 = S_MOV_B32 0
10704B	  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
10720B	  %10391:vgpr_32 = V_LSHRREV_B32_e32 3, %10369:vgpr_32(s32), implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
10736B	  undef %9893.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr18, %10391:vgpr_32, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10752B	  %9893.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10800B	  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10832B	  renamable $sgpr3 = COPY renamable $sgpr11, debug-location !75; moe_op_gemm_a8w4.py:377:35
10848B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10864B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10880B	  %9894:vreg_64_align2 = IMPLICIT_DEF
10912B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10928B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10944B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10960B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
10976B	  S_CBRANCH_EXECZ %bb.8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10992B	  S_BRANCH %bb.10, debug-location !75; moe_op_gemm_a8w4.py:377:35

11008B	bb.8.Flow348:
	; predecessors: %bb.7, %bb.10
	  successors: %bb.9(0x40000000), %bb.11(0x40000000); %bb.9(50.00%), %bb.11(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
11024B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
11072B	  %9869:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
11120B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
11136B	  S_CBRANCH_EXECZ %bb.11, implicit $exec
11152B	  S_BRANCH %bb.9

11168B	bb.9 (%ir-block.400):
	; predecessors: %bb.8
	  successors: %bb.11(0x80000000); %bb.11(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
11200B	  %1890:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9869:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11216B	  %1891:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %1890:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11232B	  %1892:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1891:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11248B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11264B	  %9050:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %1892:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11280B	  %9049:vgpr_32 = V_MUL_HI_U32_e64 %1892:vgpr_32, %9050:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11296B	  %9048:vgpr_32 = V_ADD_U32_e32 %1892:vgpr_32, %9049:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11312B	  %1899:vgpr_32 = V_MUL_HI_U32_e64 %9893.sub0:vreg_64_align2, %9048:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11328B	  %1900:vgpr_32 = V_MUL_LO_U32_e64 %1899:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11344B	  %1901:vgpr_32 = V_SUB_U32_e32 %9893.sub0:vreg_64_align2, %1900:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11376B	  %1903:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1901:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11392B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1901:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11408B	  %1904:vgpr_32 = V_CNDMASK_B32_e64 0, %1901:vgpr_32, 0, %1903:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11440B	  %1906:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1904:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11456B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1904:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11472B	  undef %9894.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %1904:vgpr_32, 0, %1906:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11488B	  %9894.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11568B	  S_BRANCH %bb.11, debug-location !75; moe_op_gemm_a8w4.py:377:35

11584B	bb.10 (%ir-block.405):
	; predecessors: %bb.7
	  successors: %bb.8(0x80000000); %bb.8(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
11600B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11632B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
11648B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11664B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11712B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11728B	  %1672:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11744B	  %1674:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11760B	  %1676:vgpr_32 = nofpexcept V_FMAMK_F32 %1674:vgpr_32, 1333788672, %1672:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11776B	  %1677:vgpr_32 = nofpexcept V_RCP_F32_e32 %1676:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11792B	  %1679:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1677:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11808B	  %1681:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1679:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11824B	  %1682:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1681:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11840B	  %1684:vgpr_32 = nofpexcept V_FMAMK_F32 %1682:vgpr_32, -813694976, %1679:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11952B	  %1694:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1682:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11968B	  %1685:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1684:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11984B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12000B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12016B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %1694:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12032B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %1685:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
12752B	  undef %9045.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9893.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12784B	  %9045.sub1:vreg_64_align2 = COPY %9045.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12800B	  %1780:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9893:vreg_64_align2, 0, %9045:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12816B	  %1782:vgpr_32 = V_XOR_B32_e32 %1780.sub1:vreg_64_align2, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12832B	  %1785:vgpr_32 = V_XOR_B32_e32 %1780.sub0:vreg_64_align2, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12848B	  %9044:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1785:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12896B	  undef %9037.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %1785:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12912B	  %9037.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12960B	  %1795:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9037:vreg_64_align2, 0, %9044:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12976B	  %9040:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1782:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12992B	  %1802:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1782:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13008B	  dead %1809:vgpr_32 = V_ADD_CO_U32_e32 %1795.sub0:vreg_64_align2, %1802.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13024B	  %9037.sub0:vreg_64_align2 = V_ADDC_U32_e32 %1795.sub1:vreg_64_align2, %1802.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13040B	  %9040.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9040.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13120B	  %1818:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9037:vreg_64_align2, 0, %9040:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13136B	  %1820:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %1818.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13152B	  %1822:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %1818.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13168B	  %1823:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %1818.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13184B	  %1826:vgpr_32 = V_ADD3_U32_e64 %1823.sub1:vreg_64_align2, %1822:vgpr_32, %1820:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13200B	  %1827:vgpr_32 = V_SUB_U32_e32 %1782:vgpr_32, %1826:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13232B	  %1833:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
13248B	  %1829:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %1785:vgpr_32, %1823.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13264B	  %1831:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %1827:vgpr_32, %1833:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13280B	  %1834:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %1829:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13296B	  %1836:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %1831:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13312B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %1836:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13328B	  %1841:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13360B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %1834:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13376B	  %1846:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13392B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %1836:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13408B	  %1849:vgpr_32 = V_CNDMASK_B32_e64 0, %1841:vgpr_32, 0, %1846:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13440B	  %1852:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %1831:vgpr_32, %1833:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13456B	  %1855:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %1834:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13472B	  %1857:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %1852:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13488B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %1849:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13504B	  %1860:vgpr_32 = V_CNDMASK_B32_e64 0, %1836:vgpr_32, 0, %1857:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13520B	  %1861:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %1782:vgpr_32, %1826:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13536B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %1861:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13552B	  %1864:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13584B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %1829:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13600B	  %1869:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13616B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %1861:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13632B	  %1872:vgpr_32 = V_CNDMASK_B32_e64 0, %1864:vgpr_32, 0, %1869:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13648B	  renamable $vcc = V_CMP_NE_U32_e64 0, %1872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13664B	  %1875:vgpr_32 = V_CNDMASK_B32_e64 0, %1861:vgpr_32, 0, %1860:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13680B	  %1876:vgpr_32 = V_CNDMASK_B32_e64 0, %1834:vgpr_32, 0, %1855:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13696B	  %1877:vgpr_32 = V_CNDMASK_B32_e64 0, %1829:vgpr_32, 0, %1876:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13712B	  %1880:vgpr_32 = V_XOR_B32_e32 %1875:vgpr_32, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13728B	  %1882:vgpr_32 = V_XOR_B32_e32 %1877:vgpr_32, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13744B	  undef %9894.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %1882:vgpr_32, %9045.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13760B	  %9894.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %1880:vgpr_32, %9045.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13856B	  S_BRANCH %bb.8, debug-location !75; moe_op_gemm_a8w4.py:377:35

13872B	bb.11 (%ir-block.407):
	; predecessors: %bb.8, %bb.9
	  successors: %bb.14(0x40000000), %bb.12(0x40000000); %bb.14(50.00%), %bb.12(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
13888B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
13920B	  undef %9896.sub0:vreg_64_align2 = V_OR3_B32_e64 %10391:vgpr_32, $sgpr18, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13936B	  %9896.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13984B	  renamable $sgpr10 = S_MOV_B32 0
14032B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14048B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14064B	  %9897:vreg_64_align2 = IMPLICIT_DEF
14096B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14112B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14128B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14144B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
14160B	  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14176B	  S_BRANCH %bb.14, debug-location !75; moe_op_gemm_a8w4.py:377:35

14192B	bb.12.Flow347:
	; predecessors: %bb.11, %bb.14
	  successors: %bb.13(0x40000000), %bb.15(0x40000000); %bb.13(50.00%), %bb.15(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
14208B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
14256B	  %9868:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
14304B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
14320B	  S_CBRANCH_EXECZ %bb.15, implicit $exec
14336B	  S_BRANCH %bb.13

14352B	bb.13 (%ir-block.422):
	; predecessors: %bb.12
	  successors: %bb.15(0x80000000); %bb.15(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
14384B	  %2149:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9868:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14400B	  %2150:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2149:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14416B	  %2151:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2150:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14432B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14448B	  %9033:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2151:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14464B	  %9032:vgpr_32 = V_MUL_HI_U32_e64 %2151:vgpr_32, %9033:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14480B	  %9031:vgpr_32 = V_ADD_U32_e32 %2151:vgpr_32, %9032:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14496B	  %2158:vgpr_32 = V_MUL_HI_U32_e64 %9896.sub0:vreg_64_align2, %9031:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14512B	  %2159:vgpr_32 = V_MUL_LO_U32_e64 %2158:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14528B	  %2160:vgpr_32 = V_SUB_U32_e32 %9896.sub0:vreg_64_align2, %2159:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14560B	  %2162:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2160:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14576B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2160:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14592B	  %2163:vgpr_32 = V_CNDMASK_B32_e64 0, %2160:vgpr_32, 0, %2162:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14624B	  %2165:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2163:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14640B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2163:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14656B	  undef %9897.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2163:vgpr_32, 0, %2165:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14672B	  %9897.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14752B	  S_BRANCH %bb.15, debug-location !75; moe_op_gemm_a8w4.py:377:35

14768B	bb.14 (%ir-block.427):
	; predecessors: %bb.11
	  successors: %bb.12(0x80000000); %bb.12(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
14784B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14816B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
14832B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14848B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14896B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14912B	  %1931:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14928B	  %1933:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14944B	  %1935:vgpr_32 = nofpexcept V_FMAMK_F32 %1933:vgpr_32, 1333788672, %1931:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14960B	  %1936:vgpr_32 = nofpexcept V_RCP_F32_e32 %1935:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14976B	  %1938:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1936:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14992B	  %1940:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1938:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15008B	  %1941:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1940:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15024B	  %1943:vgpr_32 = nofpexcept V_FMAMK_F32 %1941:vgpr_32, -813694976, %1938:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15136B	  %1953:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1941:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15152B	  %1944:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1943:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15168B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15184B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15200B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %1953:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15216B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %1944:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
15936B	  undef %9028.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9896.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15968B	  %9028.sub1:vreg_64_align2 = COPY %9028.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15984B	  %2039:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9896:vreg_64_align2, 0, %9028:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16000B	  %2041:vgpr_32 = V_XOR_B32_e32 %2039.sub1:vreg_64_align2, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16016B	  %2044:vgpr_32 = V_XOR_B32_e32 %2039.sub0:vreg_64_align2, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16032B	  %9027:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2044:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16080B	  undef %9020.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2044:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16096B	  %9020.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16144B	  %2054:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9020:vreg_64_align2, 0, %9027:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16160B	  %9023:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2041:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16176B	  %2061:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2041:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16192B	  dead %2068:vgpr_32 = V_ADD_CO_U32_e32 %2054.sub0:vreg_64_align2, %2061.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16208B	  %9020.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2054.sub1:vreg_64_align2, %2061.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16224B	  %9023.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9023.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16304B	  %2077:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9020:vreg_64_align2, 0, %9023:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16320B	  %2079:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2077.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16336B	  %2081:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2077.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16352B	  %2082:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2077.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16368B	  %2085:vgpr_32 = V_ADD3_U32_e64 %2082.sub1:vreg_64_align2, %2081:vgpr_32, %2079:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16384B	  %2086:vgpr_32 = V_SUB_U32_e32 %2041:vgpr_32, %2085:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16416B	  %2092:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
16432B	  %2088:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2044:vgpr_32, %2082.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16448B	  %2090:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2086:vgpr_32, %2092:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16464B	  %2093:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2088:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16480B	  %2095:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2090:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16496B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2095:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16512B	  %2100:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16544B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2093:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16560B	  %2105:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16576B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2095:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16592B	  %2108:vgpr_32 = V_CNDMASK_B32_e64 0, %2100:vgpr_32, 0, %2105:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16624B	  %2111:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2090:vgpr_32, %2092:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16640B	  %2114:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2093:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16656B	  %2116:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2111:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16672B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2108:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16688B	  %2119:vgpr_32 = V_CNDMASK_B32_e64 0, %2095:vgpr_32, 0, %2116:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16704B	  %2120:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2041:vgpr_32, %2085:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16720B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2120:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16736B	  %2123:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16768B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2088:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16784B	  %2128:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16800B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2120:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16816B	  %2131:vgpr_32 = V_CNDMASK_B32_e64 0, %2123:vgpr_32, 0, %2128:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16832B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2131:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16848B	  %2134:vgpr_32 = V_CNDMASK_B32_e64 0, %2120:vgpr_32, 0, %2119:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16864B	  %2135:vgpr_32 = V_CNDMASK_B32_e64 0, %2093:vgpr_32, 0, %2114:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16880B	  %2136:vgpr_32 = V_CNDMASK_B32_e64 0, %2088:vgpr_32, 0, %2135:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16896B	  %2139:vgpr_32 = V_XOR_B32_e32 %2134:vgpr_32, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16912B	  %2141:vgpr_32 = V_XOR_B32_e32 %2136:vgpr_32, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16928B	  undef %9897.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2141:vgpr_32, %9028.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16944B	  %9897.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2139:vgpr_32, %9028.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17024B	  %9896:vreg_64_align2 = IMPLICIT_DEF
17040B	  S_BRANCH %bb.12, debug-location !75; moe_op_gemm_a8w4.py:377:35

17056B	bb.15 (%ir-block.429):
	; predecessors: %bb.12, %bb.13
	  successors: %bb.18(0x40000000), %bb.16(0x40000000); %bb.18(50.00%), %bb.16(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17072B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
17104B	  undef %9899.sub0:vreg_64_align2 = V_OR_B32_e32 128, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17120B	  %9899.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17168B	  renamable $sgpr10 = S_MOV_B32 0
17216B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17232B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17248B	  %9900:vreg_64_align2 = IMPLICIT_DEF
17280B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17296B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17312B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17328B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
17344B	  S_CBRANCH_EXECZ %bb.16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17360B	  S_BRANCH %bb.18, debug-location !75; moe_op_gemm_a8w4.py:377:35

17376B	bb.16.Flow346:
	; predecessors: %bb.15, %bb.18
	  successors: %bb.17(0x40000000), %bb.19(0x40000000); %bb.17(50.00%), %bb.19(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17392B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
17440B	  %9867:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
17488B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
17504B	  S_CBRANCH_EXECZ %bb.19, implicit $exec
17520B	  S_BRANCH %bb.17

17536B	bb.17 (%ir-block.444):
	; predecessors: %bb.16
	  successors: %bb.19(0x80000000); %bb.19(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17568B	  %2408:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9867:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17584B	  %2409:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2408:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17600B	  %2410:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2409:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17616B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17632B	  %9016:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2410:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17648B	  %9015:vgpr_32 = V_MUL_HI_U32_e64 %2410:vgpr_32, %9016:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17664B	  %9014:vgpr_32 = V_ADD_U32_e32 %2410:vgpr_32, %9015:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17680B	  %2417:vgpr_32 = V_MUL_HI_U32_e64 %9899.sub0:vreg_64_align2, %9014:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17696B	  %2418:vgpr_32 = V_MUL_LO_U32_e64 %2417:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17712B	  %2419:vgpr_32 = V_SUB_U32_e32 %9899.sub0:vreg_64_align2, %2418:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17744B	  %2421:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2419:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17760B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2419:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17776B	  %2422:vgpr_32 = V_CNDMASK_B32_e64 0, %2419:vgpr_32, 0, %2421:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17808B	  %2424:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2422:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17824B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2422:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17840B	  undef %9900.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2422:vgpr_32, 0, %2424:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17856B	  %9900.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17936B	  S_BRANCH %bb.19, debug-location !75; moe_op_gemm_a8w4.py:377:35

17952B	bb.18 (%ir-block.449):
	; predecessors: %bb.15
	  successors: %bb.16(0x80000000); %bb.16(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17968B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18000B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18016B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18032B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18080B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18096B	  %2190:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18112B	  %2192:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18128B	  %2194:vgpr_32 = nofpexcept V_FMAMK_F32 %2192:vgpr_32, 1333788672, %2190:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18144B	  %2195:vgpr_32 = nofpexcept V_RCP_F32_e32 %2194:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18160B	  %2197:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2195:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18176B	  %2199:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2197:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18192B	  %2200:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2199:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18208B	  %2202:vgpr_32 = nofpexcept V_FMAMK_F32 %2200:vgpr_32, -813694976, %2197:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18320B	  %2212:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2200:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18336B	  %2203:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2202:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18352B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18368B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18384B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2212:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18400B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2203:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
19120B	  undef %9011.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9899.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19152B	  %9011.sub1:vreg_64_align2 = COPY %9011.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
19168B	  %2298:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9899:vreg_64_align2, 0, %9011:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19184B	  %2300:vgpr_32 = V_XOR_B32_e32 %2298.sub1:vreg_64_align2, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19200B	  %2303:vgpr_32 = V_XOR_B32_e32 %2298.sub0:vreg_64_align2, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19216B	  %9010:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2303:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19264B	  undef %9003.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2303:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19280B	  %9003.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19328B	  %2313:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9003:vreg_64_align2, 0, %9010:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19344B	  %9006:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2300:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19360B	  %2320:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2300:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19376B	  dead %2327:vgpr_32 = V_ADD_CO_U32_e32 %2313.sub0:vreg_64_align2, %2320.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19392B	  %9003.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2313.sub1:vreg_64_align2, %2320.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19408B	  %9006.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9006.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19488B	  %2336:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9003:vreg_64_align2, 0, %9006:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19504B	  %2338:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2336.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19520B	  %2340:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2336.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19536B	  %2341:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2336.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19552B	  %2344:vgpr_32 = V_ADD3_U32_e64 %2341.sub1:vreg_64_align2, %2340:vgpr_32, %2338:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19568B	  %2345:vgpr_32 = V_SUB_U32_e32 %2300:vgpr_32, %2344:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19600B	  %2351:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
19616B	  %2347:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2303:vgpr_32, %2341.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19632B	  %2349:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2345:vgpr_32, %2351:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19648B	  %2352:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2347:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19664B	  %2354:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2349:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19680B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2354:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19696B	  %2359:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19728B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2352:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19744B	  %2364:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19760B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2354:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19776B	  %2367:vgpr_32 = V_CNDMASK_B32_e64 0, %2359:vgpr_32, 0, %2364:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19808B	  %2370:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2349:vgpr_32, %2351:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19824B	  %2373:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2352:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19840B	  %2375:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2370:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19856B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2367:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19872B	  %2378:vgpr_32 = V_CNDMASK_B32_e64 0, %2354:vgpr_32, 0, %2375:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19888B	  %2379:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2300:vgpr_32, %2344:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19904B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2379:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19920B	  %2382:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19952B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2347:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19968B	  %2387:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19984B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2379:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20000B	  %2390:vgpr_32 = V_CNDMASK_B32_e64 0, %2382:vgpr_32, 0, %2387:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20016B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2390:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20032B	  %2393:vgpr_32 = V_CNDMASK_B32_e64 0, %2379:vgpr_32, 0, %2378:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20048B	  %2394:vgpr_32 = V_CNDMASK_B32_e64 0, %2352:vgpr_32, 0, %2373:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20064B	  %2395:vgpr_32 = V_CNDMASK_B32_e64 0, %2347:vgpr_32, 0, %2394:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20080B	  %2398:vgpr_32 = V_XOR_B32_e32 %2393:vgpr_32, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20096B	  %2400:vgpr_32 = V_XOR_B32_e32 %2395:vgpr_32, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20112B	  undef %9900.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2400:vgpr_32, %9011.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20128B	  %9900.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2398:vgpr_32, %9011.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20208B	  %9899:vreg_64_align2 = IMPLICIT_DEF
20224B	  S_BRANCH %bb.16, debug-location !75; moe_op_gemm_a8w4.py:377:35

20240B	bb.19 (%ir-block.451):
	; predecessors: %bb.16, %bb.17
	  successors: %bb.22(0x40000000), %bb.20(0x40000000); %bb.22(50.00%), %bb.20(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
20256B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
20288B	  undef %9902.sub0:vreg_64_align2 = V_OR_B32_e32 192, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20304B	  %9902.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20352B	  renamable $sgpr10 = S_MOV_B32 0
20400B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20416B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20432B	  %9903:vreg_64_align2 = IMPLICIT_DEF
20464B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20480B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20496B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20512B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
20528B	  S_CBRANCH_EXECZ %bb.20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20544B	  S_BRANCH %bb.22, debug-location !75; moe_op_gemm_a8w4.py:377:35

20560B	bb.20.Flow345:
	; predecessors: %bb.19, %bb.22
	  successors: %bb.21(0x40000000), %bb.23(0x40000000); %bb.21(50.00%), %bb.23(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
20576B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
20624B	  %9866:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
20672B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
20688B	  S_CBRANCH_EXECZ %bb.23, implicit $exec
20704B	  S_BRANCH %bb.21

20720B	bb.21 (%ir-block.466):
	; predecessors: %bb.20
	  successors: %bb.23(0x80000000); %bb.23(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
20752B	  %2667:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9866:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20768B	  %2668:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2667:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20784B	  %2669:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2668:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20800B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20816B	  %8999:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2669:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20832B	  %8998:vgpr_32 = V_MUL_HI_U32_e64 %2669:vgpr_32, %8999:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20848B	  %8997:vgpr_32 = V_ADD_U32_e32 %2669:vgpr_32, %8998:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20864B	  %2676:vgpr_32 = V_MUL_HI_U32_e64 %9902.sub0:vreg_64_align2, %8997:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20880B	  %2677:vgpr_32 = V_MUL_LO_U32_e64 %2676:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20896B	  %2678:vgpr_32 = V_SUB_U32_e32 %9902.sub0:vreg_64_align2, %2677:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20928B	  %2680:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2678:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20944B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2678:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20960B	  %2681:vgpr_32 = V_CNDMASK_B32_e64 0, %2678:vgpr_32, 0, %2680:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20992B	  %2683:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2681:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21008B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2681:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21024B	  undef %9903.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2681:vgpr_32, 0, %2683:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21040B	  %9903.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21120B	  S_BRANCH %bb.23, debug-location !75; moe_op_gemm_a8w4.py:377:35

21136B	bb.22 (%ir-block.471):
	; predecessors: %bb.19
	  successors: %bb.20(0x80000000); %bb.20(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
21152B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21184B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
21200B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21216B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21264B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21280B	  %2449:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21296B	  %2451:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21312B	  %2453:vgpr_32 = nofpexcept V_FMAMK_F32 %2451:vgpr_32, 1333788672, %2449:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21328B	  %2454:vgpr_32 = nofpexcept V_RCP_F32_e32 %2453:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21344B	  %2456:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2454:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21360B	  %2458:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2456:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21376B	  %2459:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2458:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21392B	  %2461:vgpr_32 = nofpexcept V_FMAMK_F32 %2459:vgpr_32, -813694976, %2456:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21504B	  %2471:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2459:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21520B	  %2462:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2461:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21536B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21552B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21568B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2471:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21584B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2462:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
22304B	  undef %8994.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9902.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22336B	  %8994.sub1:vreg_64_align2 = COPY %8994.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22352B	  %2557:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9902:vreg_64_align2, 0, %8994:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22368B	  %2559:vgpr_32 = V_XOR_B32_e32 %2557.sub1:vreg_64_align2, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22384B	  %2562:vgpr_32 = V_XOR_B32_e32 %2557.sub0:vreg_64_align2, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22400B	  %8993:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2562:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22448B	  undef %8986.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2562:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22464B	  %8986.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22512B	  %2572:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8986:vreg_64_align2, 0, %8993:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22528B	  %8989:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2559:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22544B	  %2579:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2559:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22560B	  dead %2586:vgpr_32 = V_ADD_CO_U32_e32 %2572.sub0:vreg_64_align2, %2579.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22576B	  %8986.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2572.sub1:vreg_64_align2, %2579.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22592B	  %8989.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8989.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22672B	  %2595:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8986:vreg_64_align2, 0, %8989:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22688B	  %2597:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2595.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22704B	  %2599:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2595.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22720B	  %2600:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2595.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22736B	  %2603:vgpr_32 = V_ADD3_U32_e64 %2600.sub1:vreg_64_align2, %2599:vgpr_32, %2597:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22752B	  %2604:vgpr_32 = V_SUB_U32_e32 %2559:vgpr_32, %2603:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22784B	  %2610:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
22800B	  %2606:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2562:vgpr_32, %2600.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22816B	  %2608:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2604:vgpr_32, %2610:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22832B	  %2611:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2606:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22848B	  %2613:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2608:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22864B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2613:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22880B	  %2618:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22912B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2611:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22928B	  %2623:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22944B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2613:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22960B	  %2626:vgpr_32 = V_CNDMASK_B32_e64 0, %2618:vgpr_32, 0, %2623:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22992B	  %2629:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2608:vgpr_32, %2610:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23008B	  %2632:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2611:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23024B	  %2634:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2629:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23040B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2626:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23056B	  %2637:vgpr_32 = V_CNDMASK_B32_e64 0, %2613:vgpr_32, 0, %2634:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23072B	  %2638:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2559:vgpr_32, %2603:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23088B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2638:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23104B	  %2641:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23136B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2606:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23152B	  %2646:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23168B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2638:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23184B	  %2649:vgpr_32 = V_CNDMASK_B32_e64 0, %2641:vgpr_32, 0, %2646:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23200B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2649:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23216B	  %2652:vgpr_32 = V_CNDMASK_B32_e64 0, %2638:vgpr_32, 0, %2637:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23232B	  %2653:vgpr_32 = V_CNDMASK_B32_e64 0, %2611:vgpr_32, 0, %2632:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23248B	  %2654:vgpr_32 = V_CNDMASK_B32_e64 0, %2606:vgpr_32, 0, %2653:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23264B	  %2657:vgpr_32 = V_XOR_B32_e32 %2652:vgpr_32, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23280B	  %2659:vgpr_32 = V_XOR_B32_e32 %2654:vgpr_32, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23296B	  undef %9903.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2659:vgpr_32, %8994.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23312B	  %9903.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2657:vgpr_32, %8994.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23392B	  %9902:vreg_64_align2 = IMPLICIT_DEF
23408B	  S_BRANCH %bb.20, debug-location !75; moe_op_gemm_a8w4.py:377:35

23424B	bb.23 (%ir-block.473):
	; predecessors: %bb.20, %bb.21
	  successors: %bb.26(0x40000000), %bb.24(0x40000000); %bb.26(50.00%), %bb.24(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
23440B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
23472B	  undef %9905.sub0:vreg_64_align2 = V_OR_B32_e32 256, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23488B	  %9905.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23536B	  renamable $sgpr10 = S_MOV_B32 0
23584B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23600B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23616B	  %9906:vreg_64_align2 = IMPLICIT_DEF
23648B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23664B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23680B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23696B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
23712B	  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23728B	  S_BRANCH %bb.26, debug-location !75; moe_op_gemm_a8w4.py:377:35

23744B	bb.24.Flow344:
	; predecessors: %bb.23, %bb.26
	  successors: %bb.25(0x40000000), %bb.27(0x40000000); %bb.25(50.00%), %bb.27(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
23760B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
23808B	  %9865:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
23856B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
23872B	  S_CBRANCH_EXECZ %bb.27, implicit $exec
23888B	  S_BRANCH %bb.25

23904B	bb.25 (%ir-block.488):
	; predecessors: %bb.24
	  successors: %bb.27(0x80000000); %bb.27(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
23936B	  %2926:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9865:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23952B	  %2927:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2926:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23968B	  %2928:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2927:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23984B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24000B	  %8982:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2928:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24016B	  %8981:vgpr_32 = V_MUL_HI_U32_e64 %2928:vgpr_32, %8982:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24032B	  %8980:vgpr_32 = V_ADD_U32_e32 %2928:vgpr_32, %8981:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24048B	  %2935:vgpr_32 = V_MUL_HI_U32_e64 %9905.sub0:vreg_64_align2, %8980:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24064B	  %2936:vgpr_32 = V_MUL_LO_U32_e64 %2935:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24080B	  %2937:vgpr_32 = V_SUB_U32_e32 %9905.sub0:vreg_64_align2, %2936:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24112B	  %2939:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2937:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24128B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2937:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24144B	  %2940:vgpr_32 = V_CNDMASK_B32_e64 0, %2937:vgpr_32, 0, %2939:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24176B	  %2942:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2940:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24192B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2940:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24208B	  undef %9906.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2940:vgpr_32, 0, %2942:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24224B	  %9906.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24304B	  S_BRANCH %bb.27, debug-location !75; moe_op_gemm_a8w4.py:377:35

24320B	bb.26 (%ir-block.493):
	; predecessors: %bb.23
	  successors: %bb.24(0x80000000); %bb.24(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
24336B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24368B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
24384B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24400B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24448B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24464B	  %2708:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24480B	  %2710:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24496B	  %2712:vgpr_32 = nofpexcept V_FMAMK_F32 %2710:vgpr_32, 1333788672, %2708:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24512B	  %2713:vgpr_32 = nofpexcept V_RCP_F32_e32 %2712:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24528B	  %2715:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2713:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24544B	  %2717:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2715:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24560B	  %2718:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2717:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24576B	  %2720:vgpr_32 = nofpexcept V_FMAMK_F32 %2718:vgpr_32, -813694976, %2715:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24688B	  %2730:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2718:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24704B	  %2721:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2720:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24720B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24736B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24752B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2730:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24768B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2721:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
25488B	  undef %8977.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9905.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25520B	  %8977.sub1:vreg_64_align2 = COPY %8977.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25536B	  %2816:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9905:vreg_64_align2, 0, %8977:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25552B	  %2818:vgpr_32 = V_XOR_B32_e32 %2816.sub1:vreg_64_align2, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25568B	  %2821:vgpr_32 = V_XOR_B32_e32 %2816.sub0:vreg_64_align2, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25584B	  %8976:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2821:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25632B	  undef %8969.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2821:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25648B	  %8969.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25696B	  %2831:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8969:vreg_64_align2, 0, %8976:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25712B	  %8972:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2818:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25728B	  %2838:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2818:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25744B	  dead %2845:vgpr_32 = V_ADD_CO_U32_e32 %2831.sub0:vreg_64_align2, %2838.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25760B	  %8969.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2831.sub1:vreg_64_align2, %2838.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25776B	  %8972.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8972.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25856B	  %2854:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8969:vreg_64_align2, 0, %8972:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25872B	  %2856:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2854.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25888B	  %2858:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2854.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25904B	  %2859:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2854.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25920B	  %2862:vgpr_32 = V_ADD3_U32_e64 %2859.sub1:vreg_64_align2, %2858:vgpr_32, %2856:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25936B	  %2863:vgpr_32 = V_SUB_U32_e32 %2818:vgpr_32, %2862:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25968B	  %2869:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
25984B	  %2865:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2821:vgpr_32, %2859.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26000B	  %2867:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2863:vgpr_32, %2869:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26016B	  %2870:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2865:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26032B	  %2872:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2867:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26048B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26064B	  %2877:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26096B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2870:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26112B	  %2882:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26128B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26144B	  %2885:vgpr_32 = V_CNDMASK_B32_e64 0, %2877:vgpr_32, 0, %2882:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26176B	  %2888:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2867:vgpr_32, %2869:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26192B	  %2891:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2870:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26208B	  %2893:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2888:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26224B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2885:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26240B	  %2896:vgpr_32 = V_CNDMASK_B32_e64 0, %2872:vgpr_32, 0, %2893:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26256B	  %2897:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2818:vgpr_32, %2862:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26272B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2897:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26288B	  %2900:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26320B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2865:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26336B	  %2905:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26352B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2897:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26368B	  %2908:vgpr_32 = V_CNDMASK_B32_e64 0, %2900:vgpr_32, 0, %2905:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26384B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2908:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26400B	  %2911:vgpr_32 = V_CNDMASK_B32_e64 0, %2897:vgpr_32, 0, %2896:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26416B	  %2912:vgpr_32 = V_CNDMASK_B32_e64 0, %2870:vgpr_32, 0, %2891:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26432B	  %2913:vgpr_32 = V_CNDMASK_B32_e64 0, %2865:vgpr_32, 0, %2912:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26448B	  %2916:vgpr_32 = V_XOR_B32_e32 %2911:vgpr_32, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26464B	  %2918:vgpr_32 = V_XOR_B32_e32 %2913:vgpr_32, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26480B	  undef %9906.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2918:vgpr_32, %8977.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26496B	  %9906.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2916:vgpr_32, %8977.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26576B	  %9905:vreg_64_align2 = IMPLICIT_DEF
26592B	  S_BRANCH %bb.24, debug-location !75; moe_op_gemm_a8w4.py:377:35

26608B	bb.27 (%ir-block.495):
	; predecessors: %bb.24, %bb.25
	  successors: %bb.30(0x40000000), %bb.28(0x40000000); %bb.30(50.00%), %bb.28(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
26624B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
26656B	  undef %9908.sub0:vreg_64_align2 = V_OR_B32_e32 320, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26672B	  %9908.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26720B	  renamable $sgpr10 = S_MOV_B32 0
26768B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26784B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26800B	  %9909:vreg_64_align2 = IMPLICIT_DEF
26832B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26848B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26864B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26880B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
26896B	  S_CBRANCH_EXECZ %bb.28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26912B	  S_BRANCH %bb.30, debug-location !75; moe_op_gemm_a8w4.py:377:35

26928B	bb.28.Flow343:
	; predecessors: %bb.27, %bb.30
	  successors: %bb.29(0x40000000), %bb.31(0x40000000); %bb.29(50.00%), %bb.31(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
26944B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
26992B	  %9864:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
27040B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
27056B	  S_CBRANCH_EXECZ %bb.31, implicit $exec
27072B	  S_BRANCH %bb.29

27088B	bb.29 (%ir-block.510):
	; predecessors: %bb.28
	  successors: %bb.31(0x80000000); %bb.31(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
27120B	  %3185:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9864:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27136B	  %3186:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3185:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27152B	  %3187:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3186:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27168B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27184B	  %8965:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %3187:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27200B	  %8964:vgpr_32 = V_MUL_HI_U32_e64 %3187:vgpr_32, %8965:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27216B	  %8963:vgpr_32 = V_ADD_U32_e32 %3187:vgpr_32, %8964:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27232B	  %3194:vgpr_32 = V_MUL_HI_U32_e64 %9908.sub0:vreg_64_align2, %8963:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27248B	  %3195:vgpr_32 = V_MUL_LO_U32_e64 %3194:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27264B	  %3196:vgpr_32 = V_SUB_U32_e32 %9908.sub0:vreg_64_align2, %3195:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27296B	  %3198:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3196:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27312B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3196:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27328B	  %3199:vgpr_32 = V_CNDMASK_B32_e64 0, %3196:vgpr_32, 0, %3198:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27360B	  %3201:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3199:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27376B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3199:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27392B	  undef %9909.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3199:vgpr_32, 0, %3201:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27408B	  %9909.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27488B	  S_BRANCH %bb.31, debug-location !75; moe_op_gemm_a8w4.py:377:35

27504B	bb.30 (%ir-block.515):
	; predecessors: %bb.27
	  successors: %bb.28(0x80000000); %bb.28(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
27520B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27552B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
27568B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27584B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27632B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27648B	  %2967:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27664B	  %2969:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27680B	  %2971:vgpr_32 = nofpexcept V_FMAMK_F32 %2969:vgpr_32, 1333788672, %2967:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27696B	  %2972:vgpr_32 = nofpexcept V_RCP_F32_e32 %2971:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27712B	  %2974:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2972:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27728B	  %2976:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2974:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27744B	  %2977:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2976:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27760B	  %2979:vgpr_32 = nofpexcept V_FMAMK_F32 %2977:vgpr_32, -813694976, %2974:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27872B	  %2989:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2977:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27888B	  %2980:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2979:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27904B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27920B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27936B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2989:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27952B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2980:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
28672B	  undef %8960.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9908.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28704B	  %8960.sub1:vreg_64_align2 = COPY %8960.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28720B	  %3075:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9908:vreg_64_align2, 0, %8960:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28736B	  %3077:vgpr_32 = V_XOR_B32_e32 %3075.sub1:vreg_64_align2, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28752B	  %3080:vgpr_32 = V_XOR_B32_e32 %3075.sub0:vreg_64_align2, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28768B	  %8959:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3080:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28816B	  undef %8952.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3080:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28832B	  %8952.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28880B	  %3090:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8952:vreg_64_align2, 0, %8959:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28896B	  %8955:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3077:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28912B	  %3097:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3077:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28928B	  dead %3104:vgpr_32 = V_ADD_CO_U32_e32 %3090.sub0:vreg_64_align2, %3097.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28944B	  %8952.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3090.sub1:vreg_64_align2, %3097.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28960B	  %8955.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8955.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29040B	  %3113:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8952:vreg_64_align2, 0, %8955:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29056B	  %3115:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %3113.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29072B	  %3117:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %3113.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29088B	  %3118:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %3113.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29104B	  %3121:vgpr_32 = V_ADD3_U32_e64 %3118.sub1:vreg_64_align2, %3117:vgpr_32, %3115:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29120B	  %3122:vgpr_32 = V_SUB_U32_e32 %3077:vgpr_32, %3121:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29152B	  %3128:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
29168B	  %3124:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %3080:vgpr_32, %3118.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29184B	  %3126:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3122:vgpr_32, %3128:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29200B	  %3129:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3124:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29216B	  %3131:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %3126:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29232B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %3131:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29248B	  %3136:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29280B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %3129:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29296B	  %3141:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29312B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %3131:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29328B	  %3144:vgpr_32 = V_CNDMASK_B32_e64 0, %3136:vgpr_32, 0, %3141:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29360B	  %3147:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3126:vgpr_32, %3128:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29376B	  %3150:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3129:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29392B	  %3152:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %3147:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29408B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %3144:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29424B	  %3155:vgpr_32 = V_CNDMASK_B32_e64 0, %3131:vgpr_32, 0, %3152:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29440B	  %3156:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %3077:vgpr_32, %3121:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29456B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %3156:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29472B	  %3159:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29504B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %3124:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29520B	  %3164:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29536B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %3156:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29552B	  %3167:vgpr_32 = V_CNDMASK_B32_e64 0, %3159:vgpr_32, 0, %3164:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29568B	  renamable $vcc = V_CMP_NE_U32_e64 0, %3167:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29584B	  %3170:vgpr_32 = V_CNDMASK_B32_e64 0, %3156:vgpr_32, 0, %3155:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29600B	  %3171:vgpr_32 = V_CNDMASK_B32_e64 0, %3129:vgpr_32, 0, %3150:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29616B	  %3172:vgpr_32 = V_CNDMASK_B32_e64 0, %3124:vgpr_32, 0, %3171:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29632B	  %3175:vgpr_32 = V_XOR_B32_e32 %3170:vgpr_32, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29648B	  %3177:vgpr_32 = V_XOR_B32_e32 %3172:vgpr_32, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29664B	  undef %9909.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %3177:vgpr_32, %8960.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29680B	  %9909.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %3175:vgpr_32, %8960.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29760B	  %9908:vreg_64_align2 = IMPLICIT_DEF
29776B	  S_BRANCH %bb.28, debug-location !75; moe_op_gemm_a8w4.py:377:35

29792B	bb.31 (%ir-block.517):
	; predecessors: %bb.28, %bb.29
	  successors: %bb.34(0x40000000), %bb.32(0x40000000); %bb.34(50.00%), %bb.32(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
29808B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
29840B	  undef %9911.sub0:vreg_64_align2 = V_OR_B32_e32 384, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29856B	  %9911.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29904B	  renamable $sgpr10 = S_MOV_B32 0
29952B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29968B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29984B	  %9912:vreg_64_align2 = IMPLICIT_DEF
30016B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30032B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30048B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30064B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
30080B	  S_CBRANCH_EXECZ %bb.32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30096B	  S_BRANCH %bb.34, debug-location !75; moe_op_gemm_a8w4.py:377:35

30112B	bb.32.Flow342:
	; predecessors: %bb.31, %bb.34
	  successors: %bb.33(0x40000000), %bb.35(0x40000000); %bb.33(50.00%), %bb.35(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
30128B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
30176B	  %9863:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
30224B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
30240B	  S_CBRANCH_EXECZ %bb.35, implicit $exec
30256B	  S_BRANCH %bb.33

30272B	bb.33 (%ir-block.532):
	; predecessors: %bb.32
	  successors: %bb.35(0x80000000); %bb.35(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
30304B	  %3444:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9863:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30320B	  %3445:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3444:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30336B	  %3446:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3445:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30352B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30368B	  %8948:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %3446:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30384B	  %8947:vgpr_32 = V_MUL_HI_U32_e64 %3446:vgpr_32, %8948:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30400B	  %8946:vgpr_32 = V_ADD_U32_e32 %3446:vgpr_32, %8947:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30416B	  %3453:vgpr_32 = V_MUL_HI_U32_e64 %9911.sub0:vreg_64_align2, %8946:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30432B	  %3454:vgpr_32 = V_MUL_LO_U32_e64 %3453:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30448B	  %3455:vgpr_32 = V_SUB_U32_e32 %9911.sub0:vreg_64_align2, %3454:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30480B	  %3457:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3455:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30496B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3455:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30512B	  %3458:vgpr_32 = V_CNDMASK_B32_e64 0, %3455:vgpr_32, 0, %3457:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30544B	  %3460:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3458:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30560B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3458:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30576B	  undef %9912.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3458:vgpr_32, 0, %3460:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30592B	  %9912.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30672B	  S_BRANCH %bb.35, debug-location !75; moe_op_gemm_a8w4.py:377:35

30688B	bb.34 (%ir-block.537):
	; predecessors: %bb.31
	  successors: %bb.32(0x80000000); %bb.32(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
30704B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30736B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
30752B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30768B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30816B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30832B	  %3226:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30848B	  %3228:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30864B	  %3230:vgpr_32 = nofpexcept V_FMAMK_F32 %3228:vgpr_32, 1333788672, %3226:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30880B	  %3231:vgpr_32 = nofpexcept V_RCP_F32_e32 %3230:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30896B	  %3233:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %3231:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30912B	  %3235:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %3233:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30928B	  %3236:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %3235:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30944B	  %3238:vgpr_32 = nofpexcept V_FMAMK_F32 %3236:vgpr_32, -813694976, %3233:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31056B	  %3248:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3236:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31072B	  %3239:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3238:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31088B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31104B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31120B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %3248:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31136B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %3239:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
31856B	  undef %8943.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9911.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31888B	  %8943.sub1:vreg_64_align2 = COPY %8943.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31904B	  %3334:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9911:vreg_64_align2, 0, %8943:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31920B	  %3336:vgpr_32 = V_XOR_B32_e32 %3334.sub1:vreg_64_align2, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31936B	  %3339:vgpr_32 = V_XOR_B32_e32 %3334.sub0:vreg_64_align2, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31952B	  %8942:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3339:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32000B	  undef %8935.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3339:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32016B	  %8935.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32064B	  %3349:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8935:vreg_64_align2, 0, %8942:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32080B	  %8938:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3336:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32096B	  %3356:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3336:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32112B	  dead %3363:vgpr_32 = V_ADD_CO_U32_e32 %3349.sub0:vreg_64_align2, %3356.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32128B	  %8935.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3349.sub1:vreg_64_align2, %3356.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32144B	  %8938.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8938.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32224B	  %3372:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8935:vreg_64_align2, 0, %8938:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32240B	  %3374:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %3372.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32256B	  %3376:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %3372.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32272B	  %3377:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %3372.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32288B	  %3380:vgpr_32 = V_ADD3_U32_e64 %3377.sub1:vreg_64_align2, %3376:vgpr_32, %3374:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32304B	  %3381:vgpr_32 = V_SUB_U32_e32 %3336:vgpr_32, %3380:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32336B	  %3387:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
32352B	  %3383:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %3339:vgpr_32, %3377.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32368B	  %3385:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3381:vgpr_32, %3387:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32384B	  %3388:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3383:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32400B	  %3390:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %3385:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32416B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %3390:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32432B	  %3395:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32464B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %3388:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32480B	  %3400:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32496B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %3390:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32512B	  %3403:vgpr_32 = V_CNDMASK_B32_e64 0, %3395:vgpr_32, 0, %3400:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32544B	  %3406:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3385:vgpr_32, %3387:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32560B	  %3409:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3388:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32576B	  %3411:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %3406:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32592B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %3403:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32608B	  %3414:vgpr_32 = V_CNDMASK_B32_e64 0, %3390:vgpr_32, 0, %3411:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32624B	  %3415:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %3336:vgpr_32, %3380:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32640B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %3415:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32656B	  %3418:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32688B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %3383:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32704B	  %3423:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32720B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %3415:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32736B	  %3426:vgpr_32 = V_CNDMASK_B32_e64 0, %3418:vgpr_32, 0, %3423:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32752B	  renamable $vcc = V_CMP_NE_U32_e64 0, %3426:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32768B	  %3429:vgpr_32 = V_CNDMASK_B32_e64 0, %3415:vgpr_32, 0, %3414:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32784B	  %3430:vgpr_32 = V_CNDMASK_B32_e64 0, %3388:vgpr_32, 0, %3409:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32800B	  %3431:vgpr_32 = V_CNDMASK_B32_e64 0, %3383:vgpr_32, 0, %3430:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32816B	  %3434:vgpr_32 = V_XOR_B32_e32 %3429:vgpr_32, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32832B	  %3436:vgpr_32 = V_XOR_B32_e32 %3431:vgpr_32, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32848B	  undef %9912.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %3436:vgpr_32, %8943.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32864B	  %9912.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %3434:vgpr_32, %8943.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32944B	  %9911:vreg_64_align2 = IMPLICIT_DEF
32960B	  S_BRANCH %bb.32, debug-location !75; moe_op_gemm_a8w4.py:377:35

32976B	bb.35 (%ir-block.539):
	; predecessors: %bb.32, %bb.33
	  successors: %bb.38(0x40000000), %bb.36(0x40000000); %bb.38(50.00%), %bb.36(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
32992B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
33024B	  undef %9914.sub0:vreg_64_align2 = V_OR_B32_e32 448, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
33040B	  %9914.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
33088B	  renamable $sgpr10 = S_MOV_B32 0
33136B	  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33152B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33168B	  %9915:vreg_64_align2 = IMPLICIT_DEF
33200B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33216B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33232B	  renamable $sgpr10_sgpr11 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33248B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
33264B	  S_CBRANCH_EXECZ %bb.36, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33280B	  S_BRANCH %bb.38, debug-location !75; moe_op_gemm_a8w4.py:377:35

33296B	bb.36.Flow341:
	; predecessors: %bb.35, %bb.38
	  successors: %bb.37(0x40000000), %bb.39(0x40000000); %bb.37(50.00%), %bb.39(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
33312B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
33392B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
33408B	  S_CBRANCH_EXECZ %bb.39, implicit $exec
33424B	  S_BRANCH %bb.37

33440B	bb.37 (%ir-block.554):
	; predecessors: %bb.36
	  successors: %bb.39(0x80000000); %bb.39(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
33472B	  %3702:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33488B	  %3703:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %3702:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33504B	  %3704:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3703:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33520B	  %3705:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3704:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33536B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33552B	  %8931:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %3705:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33568B	  %8930:vgpr_32 = V_MUL_HI_U32_e64 %3705:vgpr_32, %8931:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33584B	  %8929:vgpr_32 = V_ADD_U32_e32 %3705:vgpr_32, %8930:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33600B	  %3712:vgpr_32 = V_MUL_HI_U32_e64 %9914.sub0:vreg_64_align2, %8929:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33616B	  %3713:vgpr_32 = V_MUL_LO_U32_e64 %3712:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33632B	  %3714:vgpr_32 = V_SUB_U32_e32 %9914.sub0:vreg_64_align2, %3713:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33664B	  %3716:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3714:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33680B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3714:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33696B	  %3717:vgpr_32 = V_CNDMASK_B32_e64 0, %3714:vgpr_32, 0, %3716:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33728B	  %3719:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3717:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33744B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3717:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33760B	  undef %9915.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3717:vgpr_32, 0, %3719:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33776B	  %9915.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33856B	  S_BRANCH %bb.39, debug-location !75; moe_op_gemm_a8w4.py:377:35

33872B	bb.38 (%ir-block.559):
	; predecessors: %bb.35
	  successors: %bb.36(0x80000000); %bb.36(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
33888B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33920B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
33936B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33952B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34000B	  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34016B	  %3485:vgpr_32 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34032B	  %3487:vgpr_32 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34048B	  %3489:vgpr_32 = nofpexcept V_FMAMK_F32 %3487:vgpr_32, 1333788672, %3485:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34064B	  %3490:vgpr_32 = nofpexcept V_RCP_F32_e32 %3489:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34080B	  %3492:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %3490:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34096B	  %3494:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %3492:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34112B	  %3495:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %3494:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34128B	  %3497:vgpr_32 = nofpexcept V_FMAMK_F32 %3495:vgpr_32, -813694976, %3492:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34240B	  %3507:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3495:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34256B	  %3498:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3497:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34272B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34288B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34304B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %3507:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34320B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %3498:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
35040B	  undef %8926.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9914.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35072B	  %8926.sub1:vreg_64_align2 = COPY %8926.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
35088B	  %3593:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9914:vreg_64_align2, 0, %8926:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35104B	  %3595:vgpr_32 = V_XOR_B32_e32 %3593.sub1:vreg_64_align2, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35120B	  %3598:vgpr_32 = V_XOR_B32_e32 %3593.sub0:vreg_64_align2, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35136B	  %8925:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3598:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35184B	  undef %8918.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3598:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35200B	  %8918.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35248B	  %3608:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8918:vreg_64_align2, 0, %8925:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35264B	  %8921:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3595:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35280B	  %3615:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3595:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35296B	  dead %3622:vgpr_32 = V_ADD_CO_U32_e32 %3608.sub0:vreg_64_align2, %3615.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35312B	  %8918.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3608.sub1:vreg_64_align2, %3615.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35328B	  %8921.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8921.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35408B	  %3631:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8918:vreg_64_align2, 0, %8921:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35424B	  %3633:vgpr_32 = V_MUL_LO_U32_e64 $sgpr17, %3631.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35440B	  %3635:vgpr_32 = V_MUL_LO_U32_e64 $sgpr16, %3631.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35456B	  %3636:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr16, %3631.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35472B	  %3639:vgpr_32 = V_ADD3_U32_e64 %3636.sub1:vreg_64_align2, %3635:vgpr_32, %3633:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35488B	  %3640:vgpr_32 = V_SUB_U32_e32 %3595:vgpr_32, %3639:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35520B	  %3646:vgpr_32 = COPY renamable $sgpr17, debug-location !75; moe_op_gemm_a8w4.py:377:35
35536B	  %3642:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %3598:vgpr_32, %3636.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35552B	  %3644:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3640:vgpr_32, %3646:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35568B	  %3647:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, %3642:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35584B	  %3649:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %3644:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35600B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, %3649:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35616B	  %3654:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35648B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, %3647:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35664B	  %3659:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35680B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, %3649:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35696B	  %3662:vgpr_32 = V_CNDMASK_B32_e64 0, %3654:vgpr_32, 0, %3659:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35728B	  %3665:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3644:vgpr_32, %3646:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35744B	  %3668:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, %3647:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35760B	  %3670:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %3665:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35776B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %3662:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35792B	  %3673:vgpr_32 = V_CNDMASK_B32_e64 0, %3649:vgpr_32, 0, %3670:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35808B	  %3674:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %3595:vgpr_32, %3639:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35824B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr17, %3674:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35840B	  %3677:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35872B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr16, %3642:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35888B	  %3682:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35904B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr17, %3674:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35920B	  %3685:vgpr_32 = V_CNDMASK_B32_e64 0, %3677:vgpr_32, 0, %3682:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35936B	  renamable $vcc = V_CMP_NE_U32_e64 0, %3685:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35952B	  %3688:vgpr_32 = V_CNDMASK_B32_e64 0, %3674:vgpr_32, 0, %3673:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35968B	  %3689:vgpr_32 = V_CNDMASK_B32_e64 0, %3647:vgpr_32, 0, %3668:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35984B	  %3690:vgpr_32 = V_CNDMASK_B32_e64 0, %3642:vgpr_32, 0, %3689:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36000B	  %3693:vgpr_32 = V_XOR_B32_e32 %3688:vgpr_32, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36016B	  %3695:vgpr_32 = V_XOR_B32_e32 %3690:vgpr_32, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36032B	  undef %9915.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %3695:vgpr_32, %8926.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36048B	  %9915.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %3693:vgpr_32, %8926.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
36128B	  %9914:vreg_64_align2 = IMPLICIT_DEF
36144B	  S_BRANCH %bb.36, debug-location !75; moe_op_gemm_a8w4.py:377:35

36160B	bb.39 (%ir-block.561):
	; predecessors: %bb.36, %bb.37
	  successors: %bb.41(0x40000000), %bb.40(0x40000000); %bb.41(50.00%), %bb.40(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36176B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
36208B	  %3725:vgpr_32 = V_LSHLREV_B32_e32 4, %10369:vgpr_32(s32), implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36224B	  undef %8915.sub0:vreg_64_align2 = V_AND_B32_e32 112, %3725:vgpr_32, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36240B	  %8915.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
36288B	  undef %9140.sub1:vreg_64_align2 = V_MUL_HI_I32_e64 %10399:vgpr_32, $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36304B	  %9140.sub0:vreg_64_align2 = V_MUL_LO_U32_e64 %10399:vgpr_32, killed $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36352B	  %9142:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %9140:vreg_64_align2, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
36368B	  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
36416B	  %3739:vgpr_32 = V_MUL_LO_U32_e64 %9894.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36432B	  %3741:vgpr_32 = V_MUL_LO_U32_e64 %9894.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36448B	  %8914:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %9894.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36512B	  %3749:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr6_sgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36528B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 1, %3749:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36544B	  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36560B	  %8914.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8914.sub1:vreg_64_align2, %3741:vgpr_32, %3739:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36576B	  S_CBRANCH_VCCZ %bb.41, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

36592B	bb.40:
	; predecessors: %bb.39
	  successors: %bb.42(0x80000000); %bb.42(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36608B	  undef %8898.sub0:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
36624B	  %8898.sub1:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
36640B	  %8898.sub2:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
36656B	  %8898.sub3:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
36672B	  S_BRANCH %bb.42, debug-location !79; moe_op_gemm_a8w4.py:405:20

36688B	bb.41 (%ir-block.571):
	; predecessors: %bb.39
	  successors: %bb.42(0x80000000); %bb.42(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36704B	  %3752:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8914:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36720B	  %3753:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3752:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36736B	  %8898:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3753:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

36880B	bb.42 (%ir-block.575):
	; predecessors: %bb.41, %bb.40
	  successors: %bb.44(0x40000000), %bb.43(0x40000000); %bb.44(50.00%), %bb.43(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36960B	  %3758:vgpr_32 = V_MUL_LO_U32_e64 %9897.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36976B	  %3761:vgpr_32 = V_MUL_LO_U32_e64 %9897.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36992B	  %8912:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9897.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37056B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37072B	  %8912.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8912.sub1:vreg_64_align2, %3761:vgpr_32, %3758:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37088B	  S_CBRANCH_VCCZ %bb.44, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

37104B	bb.43:
	; predecessors: %bb.42
	  successors: %bb.45(0x80000000); %bb.45(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37120B	  undef %8897.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37152B	  %8897.sub1:vreg_128_align2 = COPY %8897.sub0:vreg_128_align2
37168B	  %8897.sub2:vreg_128_align2 = COPY %8897.sub0:vreg_128_align2
37184B	  %8897.sub3:vreg_128_align2 = COPY %8897.sub0:vreg_128_align2
37200B	  S_BRANCH %bb.45, debug-location !79; moe_op_gemm_a8w4.py:405:20

37216B	bb.44 (%ir-block.577):
	; predecessors: %bb.42
	  successors: %bb.45(0x80000000); %bb.45(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37232B	  %3772:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8912:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37248B	  %3773:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3772:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37264B	  %8897:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3773:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

37408B	bb.45 (%ir-block.581):
	; predecessors: %bb.44, %bb.43
	  successors: %bb.47(0x40000000), %bb.46(0x40000000); %bb.47(50.00%), %bb.46(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37488B	  %3778:vgpr_32 = V_MUL_LO_U32_e64 %9900.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37504B	  %3781:vgpr_32 = V_MUL_LO_U32_e64 %9900.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37520B	  %8910:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9900.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37584B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37600B	  %8910.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8910.sub1:vreg_64_align2, %3781:vgpr_32, %3778:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37616B	  S_CBRANCH_VCCZ %bb.47, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

37632B	bb.46:
	; predecessors: %bb.45
	  successors: %bb.48(0x80000000); %bb.48(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37648B	  undef %8896.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37680B	  %8896.sub1:vreg_128_align2 = COPY %8896.sub0:vreg_128_align2
37696B	  %8896.sub2:vreg_128_align2 = COPY %8896.sub0:vreg_128_align2
37712B	  %8896.sub3:vreg_128_align2 = COPY %8896.sub0:vreg_128_align2
37728B	  S_BRANCH %bb.48, debug-location !79; moe_op_gemm_a8w4.py:405:20

37744B	bb.47 (%ir-block.583):
	; predecessors: %bb.45
	  successors: %bb.48(0x80000000); %bb.48(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37760B	  %3792:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8910:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37776B	  %3793:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3792:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37792B	  %8896:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3793:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

37936B	bb.48 (%ir-block.587):
	; predecessors: %bb.47, %bb.46
	  successors: %bb.50(0x40000000), %bb.49(0x40000000); %bb.50(50.00%), %bb.49(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38016B	  %3798:vgpr_32 = V_MUL_LO_U32_e64 %9903.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38032B	  %3801:vgpr_32 = V_MUL_LO_U32_e64 %9903.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38048B	  %8908:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9903.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38112B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38128B	  %8908.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8908.sub1:vreg_64_align2, %3801:vgpr_32, %3798:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38144B	  S_CBRANCH_VCCZ %bb.50, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

38160B	bb.49:
	; predecessors: %bb.48
	  successors: %bb.51(0x80000000); %bb.51(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38176B	  undef %8895.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38208B	  %8895.sub1:vreg_128_align2 = COPY %8895.sub0:vreg_128_align2
38224B	  %8895.sub2:vreg_128_align2 = COPY %8895.sub0:vreg_128_align2
38240B	  %8895.sub3:vreg_128_align2 = COPY %8895.sub0:vreg_128_align2
38256B	  S_BRANCH %bb.51, debug-location !79; moe_op_gemm_a8w4.py:405:20

38272B	bb.50 (%ir-block.589):
	; predecessors: %bb.48
	  successors: %bb.51(0x80000000); %bb.51(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38288B	  %3812:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8908:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38304B	  %3813:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3812:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38320B	  %8895:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3813:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

38464B	bb.51 (%ir-block.593):
	; predecessors: %bb.50, %bb.49
	  successors: %bb.53(0x40000000), %bb.52(0x40000000); %bb.53(50.00%), %bb.52(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38544B	  %3818:vgpr_32 = V_MUL_LO_U32_e64 %9906.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38560B	  %3821:vgpr_32 = V_MUL_LO_U32_e64 %9906.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38576B	  %8906:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9906.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38640B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38656B	  %8906.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8906.sub1:vreg_64_align2, %3821:vgpr_32, %3818:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38672B	  S_CBRANCH_VCCZ %bb.53, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

38688B	bb.52:
	; predecessors: %bb.51
	  successors: %bb.54(0x80000000); %bb.54(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38704B	  undef %8894.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38736B	  %8894.sub1:vreg_128_align2 = COPY %8894.sub0:vreg_128_align2
38752B	  %8894.sub2:vreg_128_align2 = COPY %8894.sub0:vreg_128_align2
38768B	  %8894.sub3:vreg_128_align2 = COPY %8894.sub0:vreg_128_align2
38784B	  S_BRANCH %bb.54, debug-location !79; moe_op_gemm_a8w4.py:405:20

38800B	bb.53 (%ir-block.595):
	; predecessors: %bb.51
	  successors: %bb.54(0x80000000); %bb.54(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38816B	  %3832:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8906:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38832B	  %3833:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3832:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38848B	  %8894:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3833:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

38992B	bb.54 (%ir-block.599):
	; predecessors: %bb.53, %bb.52
	  successors: %bb.56(0x40000000), %bb.55(0x40000000); %bb.56(50.00%), %bb.55(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39072B	  %3838:vgpr_32 = V_MUL_LO_U32_e64 %9909.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39088B	  %3841:vgpr_32 = V_MUL_LO_U32_e64 %9909.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39104B	  %8904:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9909.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39168B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39184B	  %8904.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8904.sub1:vreg_64_align2, %3841:vgpr_32, %3838:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39200B	  S_CBRANCH_VCCZ %bb.56, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

39216B	bb.55:
	; predecessors: %bb.54
	  successors: %bb.57(0x80000000); %bb.57(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39232B	  undef %8893.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39264B	  %8893.sub1:vreg_128_align2 = COPY %8893.sub0:vreg_128_align2
39280B	  %8893.sub2:vreg_128_align2 = COPY %8893.sub0:vreg_128_align2
39296B	  %8893.sub3:vreg_128_align2 = COPY %8893.sub0:vreg_128_align2
39312B	  S_BRANCH %bb.57, debug-location !79; moe_op_gemm_a8w4.py:405:20

39328B	bb.56 (%ir-block.601):
	; predecessors: %bb.54
	  successors: %bb.57(0x80000000); %bb.57(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39344B	  %3852:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8904:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39360B	  %3853:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3852:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39376B	  %8893:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3853:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

39520B	bb.57 (%ir-block.605):
	; predecessors: %bb.56, %bb.55
	  successors: %bb.59(0x40000000), %bb.58(0x40000000); %bb.59(50.00%), %bb.58(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39600B	  %3858:vgpr_32 = V_MUL_LO_U32_e64 %9912.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39616B	  %3861:vgpr_32 = V_MUL_LO_U32_e64 %9912.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39632B	  %8902:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9912.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39696B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39712B	  %8902.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8902.sub1:vreg_64_align2, %3861:vgpr_32, %3858:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39728B	  S_CBRANCH_VCCZ %bb.59, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

39744B	bb.58:
	; predecessors: %bb.57
	  successors: %bb.60(0x80000000); %bb.60(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39760B	  undef %8892.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39792B	  %8892.sub1:vreg_128_align2 = COPY %8892.sub0:vreg_128_align2
39808B	  %8892.sub2:vreg_128_align2 = COPY %8892.sub0:vreg_128_align2
39824B	  %8892.sub3:vreg_128_align2 = COPY %8892.sub0:vreg_128_align2
39840B	  S_BRANCH %bb.60, debug-location !79; moe_op_gemm_a8w4.py:405:20

39856B	bb.59 (%ir-block.607):
	; predecessors: %bb.57
	  successors: %bb.60(0x80000000); %bb.60(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39872B	  %3872:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8902:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39888B	  %3873:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3872:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39904B	  %8892:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3873:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

40048B	bb.60 (%ir-block.611):
	; predecessors: %bb.59, %bb.58
	  successors: %bb.62(0x40000000), %bb.61(0x40000000); %bb.62(50.00%), %bb.61(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
40128B	  %3878:vgpr_32 = V_MUL_LO_U32_e64 %9915.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40144B	  %3881:vgpr_32 = V_MUL_LO_U32_e64 %9915.sub0:vreg_64_align2, killed $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40160B	  %8900:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9915.sub0:vreg_64_align2, killed $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40224B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
40240B	  %8900.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8900.sub1:vreg_64_align2, %3881:vgpr_32, %3878:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
40256B	  S_CBRANCH_VCCZ %bb.62, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

40272B	bb.61:
	; predecessors: %bb.60
	  successors: %bb.63(0x80000000); %bb.63(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
40288B	  undef %8891.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
40320B	  %8891.sub1:vreg_128_align2 = COPY %8891.sub0:vreg_128_align2
40336B	  %8891.sub2:vreg_128_align2 = COPY %8891.sub0:vreg_128_align2
40352B	  %8891.sub3:vreg_128_align2 = COPY %8891.sub0:vreg_128_align2
40368B	  S_BRANCH %bb.63, debug-location !79; moe_op_gemm_a8w4.py:405:20

40384B	bb.62 (%ir-block.613):
	; predecessors: %bb.60
	  successors: %bb.63(0x80000000); %bb.63(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
40400B	  %3892:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8900:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
40416B	  %3893:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3892:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
40432B	  %8891:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3893:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

40576B	bb.63 (%ir-block.617):
	; predecessors: %bb.62, %bb.61
	  successors: %bb.65(0x40000000), %bb.64(0x40000000); %bb.65(50.00%), %bb.64(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
40640B	  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
40656B	  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
40736B	  renamable $sgpr6 = S_MOV_B32 240
40752B	  %3899:vgpr_32 = V_BITOP3_B32_e64 %3725:vgpr_32, %10369:vgpr_32(s32), killed $sgpr6, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40768B	  %3901:vgpr_32 = V_ADD_U32_e32 0, %3899:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40784B	  %3903:vgpr_32 = V_ADD_U32_e32 65536, %3901:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40800B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %36:av_128_align2, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
40816B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %37:av_128_align2, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
40832B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %38:av_128_align2, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
40848B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %39:av_128_align2, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
40864B	  renamable $sgpr6 = S_MOV_B32 112
40880B	  %3905:vgpr_32 = V_BITOP3_B32_e64 %3725:vgpr_32, %10369:vgpr_32(s32), $sgpr6, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40896B	  %3906:vgpr_32 = nuw V_ADD_U32_e32 0, %3905:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40976B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8898:vreg_128_align2, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
41056B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8897:vreg_128_align2, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
41136B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8896:vreg_128_align2, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
41216B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8895:vreg_128_align2, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
41296B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8894:vreg_128_align2, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
41376B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8893:vreg_128_align2, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
41456B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8892:vreg_128_align2, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
41552B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8891:vreg_128_align2, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
41568B	  %3925:vgpr_32 = V_ADD_U32_e32 0, %10420:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41584B	  %3927:vgpr_32 = V_ADD_U32_e32 98304, %3925:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41600B	  DS_WRITE_B64_gfx9 %3927:vgpr_32, %55:av_64_align2, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
41616B	  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
41632B	  %10393:vgpr_32 = V_AND_B32_e32 48, %10369:vgpr_32(s32), implicit $exec
41648B	  %10481:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 6, %10369:vgpr_32(s32), implicit $exec
41664B	  %10424:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 2, %10369:vgpr_32(s32), implicit $exec
41680B	  S_CBRANCH_SCC0 %bb.65, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

41696B	bb.64:
	; predecessors: %bb.63
	  successors: %bb.66(0x80000000); %bb.66(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
41712B	  undef %8793.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
41744B	  %8793.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41760B	  %8793.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41776B	  %8793.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41792B	  undef %10474.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41808B	  %10474.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41824B	  %10474.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41840B	  %10474.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41856B	  undef %10459.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41872B	  %10459.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41888B	  %10459.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41904B	  %10459.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41920B	  undef %10462.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41936B	  %10462.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41952B	  %10462.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41968B	  %10462.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
41984B	  undef %8797.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42000B	  %8797.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42016B	  %8797.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42032B	  %8797.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42048B	  undef %8798.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42064B	  %8798.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42080B	  %8798.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42096B	  %8798.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42112B	  undef %10465.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42128B	  %10465.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42144B	  %10465.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42160B	  %10465.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42176B	  undef %10468.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42192B	  %10468.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42208B	  %10468.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42224B	  %10468.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42240B	  undef %8801.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42256B	  %8801.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42272B	  %8801.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42288B	  %8801.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42304B	  undef %8802.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42320B	  %8802.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42336B	  %8802.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42352B	  %8802.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42368B	  undef %10471.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42384B	  %10471.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42400B	  %10471.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42416B	  %10471.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42432B	  undef %10426.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42448B	  %10426.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42464B	  %10426.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42480B	  %10426.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42496B	  undef %8805.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42512B	  %8805.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42528B	  %8805.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42544B	  %8805.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42560B	  undef %8806.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42576B	  %8806.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42592B	  %8806.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42608B	  %8806.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42624B	  undef %10429.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42640B	  %10429.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42656B	  %10429.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42672B	  %10429.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42688B	  undef %10432.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42704B	  %10432.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42720B	  %10432.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42736B	  %10432.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42752B	  undef %10453.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42768B	  %10453.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42784B	  %10453.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42800B	  %10453.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42816B	  undef %8810.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42832B	  %8810.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42848B	  %8810.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42864B	  %8810.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42880B	  undef %10435.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42896B	  %10435.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42912B	  %10435.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42928B	  %10435.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42944B	  undef %10438.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42960B	  %10438.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42976B	  %10438.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
42992B	  %10438.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43008B	  undef %8813.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43024B	  %8813.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43040B	  %8813.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43056B	  %8813.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43072B	  undef %8814.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43088B	  %8814.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43104B	  %8814.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43120B	  %8814.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43136B	  undef %10441.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43152B	  %10441.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43168B	  %10441.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43184B	  %10441.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43200B	  undef %10444.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43216B	  %10444.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43232B	  %10444.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43248B	  %10444.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43264B	  undef %8817.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43280B	  %8817.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43296B	  %8817.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43312B	  %8817.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43328B	  undef %10478.sub3:av_128_align2 = COPY %8793.sub3:vreg_128_align2
43344B	  %10478.sub2:av_128_align2 = COPY %8793.sub3:vreg_128_align2
43360B	  %10478.sub1:av_128_align2 = COPY %8793.sub3:vreg_128_align2
43376B	  %10478.sub0:av_128_align2 = COPY %8793.sub3:vreg_128_align2
43384B	  %10476:vreg_128_align2 = COPY %10478:av_128_align2
43392B	  undef %10447.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43408B	  %10447.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43424B	  %10447.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43440B	  %10447.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43456B	  undef %10450.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43472B	  %10450.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43488B	  %10450.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43504B	  %10450.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43520B	  undef %8821.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43536B	  %8821.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43552B	  %8821.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43568B	  %8821.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43584B	  undef %8822.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43600B	  %8822.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43616B	  %8822.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43632B	  %8822.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43648B	  undef %10456.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43664B	  %10456.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43680B	  %10456.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43696B	  %10456.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43712B	  undef %8824.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43728B	  %8824.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43744B	  %8824.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43760B	  %8824.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
43776B	  S_BRANCH %bb.66, debug-location !62; moe_op_gemm_a8w4.py:403:19

43792B	bb.65..lr.ph:
	; predecessors: %bb.63
	  successors: %bb.67(0x80000000); %bb.67(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr6, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
43808B	  undef %10414.sub0:av_64_align2 = COPY %10413.sub0:vreg_64_align2
43816B	  SI_SPILL_AV64_SAVE %10414:av_64_align2, %stack.14, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.14, align 4, addrspace 5)
43824B	  undef %10410.sub0:av_64_align2 = COPY %10409.sub0:vreg_64_align2
43832B	  SI_SPILL_AV64_SAVE %10410:av_64_align2, %stack.13, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.13, align 4, addrspace 5)
43840B	  undef %10406.sub0:av_64_align2 = COPY %10405.sub0:vreg_64_align2
43848B	  SI_SPILL_AV64_SAVE %10406:av_64_align2, %stack.12, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.12, align 4, addrspace 5)
43856B	  undef %10402.sub0:av_64_align2 = COPY %10401.sub0:vreg_64_align2
43864B	  SI_SPILL_AV64_SAVE %10402:av_64_align2, %stack.11, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.11, align 4, addrspace 5)
43872B	  SI_SPILL_AV32_SAVE %10399:vgpr_32, %stack.10, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.10, addrspace 5)
43880B	  undef %10396.sub0:av_64_align2 = COPY %10395.sub0:vreg_64_align2
43888B	  SI_SPILL_AV64_SAVE %10396:av_64_align2, %stack.9, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.9, align 4, addrspace 5)
43896B	  SI_SPILL_AV32_SAVE %10391:vgpr_32, %stack.7, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.7, addrspace 5)
43904B	  SI_SPILL_AV32_SAVE %10389:vgpr_32, %stack.6, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.6, addrspace 5)
43912B	  SI_SPILL_AV64_SAVE %10387:vreg_64_align2, %stack.5, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.5, align 4, addrspace 5)
43920B	  undef %10384.sub0:av_64_align2 = COPY %10383.sub0:vreg_64_align2
43928B	  SI_SPILL_AV64_SAVE %10384:av_64_align2, %stack.4, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.4, align 4, addrspace 5)
43936B	  undef %10380.sub0:av_64_align2 = COPY %10379.sub0:vreg_64_align2
43944B	  SI_SPILL_AV64_SAVE %10380:av_64_align2, %stack.3, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.3, align 4, addrspace 5)
43952B	  undef %10376.sub0:av_64_align2 = COPY %10375.sub0:vreg_64_align2
43960B	  SI_SPILL_AV64_SAVE %10376:av_64_align2, %stack.2, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.2, align 4, addrspace 5)
43968B	  undef %10372.sub0:av_64_align2 = COPY %10371.sub0:vreg_64_align2
43976B	  SI_SPILL_AV64_SAVE %10372:av_64_align2, %stack.1, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.1, align 4, addrspace 5)
43984B	  SI_SPILL_AV32_SAVE %10369:vgpr_32(s32), %stack.0, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.0, addrspace 5)
43992B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44000B	  renamable $sgpr7 = S_LSHR_B32 killed renamable $sgpr7, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44008B	  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44016B	  renamable $sgpr4 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
44024B	  %3942:vgpr_32 = V_MUL_U32_U24_e32 272, %10422:vgpr_32, implicit $exec
44032B	  %3943:vgpr_32 = V_XOR_B32_e32 %3942:vgpr_32, %10393:vgpr_32, implicit $exec
44040B	  %3945:vgpr_32 = V_XOR_B32_e32 64, %3943:vgpr_32, implicit $exec
44048B	  %3947:vgpr_32 = V_XOR_B32_e32 128, %3943:vgpr_32, implicit $exec
44056B	  %3949:vgpr_32 = V_XOR_B32_e32 192, %3943:vgpr_32, implicit $exec
44060B	  SI_SPILL_AV32_SAVE %10481:vgpr_32, %stack.18, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.18, addrspace 5)
44064B	  %3953:vgpr_32 = V_AND_B32_e32 28672, %10481:vgpr_32, implicit $exec
44068B	  SI_SPILL_AV32_SAVE %10422:vgpr_32, %stack.16, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.16, addrspace 5)
44072B	  %3955:vgpr_32 = disjoint V_LSHL_OR_B32_e64 %10422:vgpr_32, 7, %3953:vgpr_32, implicit $exec
44080B	  SI_SPILL_AV32_SAVE %10393:vgpr_32, %stack.8, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.8, addrspace 5)
44088B	  %3957:vgpr_32 = V_BITOP3_B32_e64 %10420:vgpr_32, %10393:vgpr_32, killed $sgpr6, 108, implicit $exec
44096B	  %3958:vgpr_32 = disjoint V_OR_B32_e32 %3955:vgpr_32, %3957:vgpr_32, implicit $exec
44104B	  %3959:vgpr_32 = V_BITOP3_B32_e64 %3955:vgpr_32, 64, %3957:vgpr_32, 54, implicit $exec
44112B	  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr4, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44120B	  %3963:vgpr_32 = V_ADD_U32_e32 %9124:vgpr_32, %1638:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44128B	  renamable $sgpr6 = S_MOV_B32 256
44136B	  %10081:vgpr_32 = V_ADD3_U32_e64 %3963:vgpr_32, %1636:vgpr_32, killed $sgpr6, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44144B	  %3966:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8900:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44152B	  %3967:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3966:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44160B	  %3968:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3967:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44168B	  renamable $sgpr6_sgpr7 = S_MOV_B64_IMM_PSEUDO 128
44176B	  %10482:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3968:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44180B	  SI_SPILL_AV64_SAVE %10482:vreg_64_align2, %stack.19, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44184B	  %3971:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8902:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44192B	  %3972:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3971:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44208B	  %3973:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3972:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44224B	  %10484:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3973:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44232B	  SI_SPILL_AV64_SAVE %10484:vreg_64_align2, %stack.20, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44240B	  %3975:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8904:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44256B	  %3976:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3975:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44272B	  %3977:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3976:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44288B	  %10486:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3977:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44296B	  SI_SPILL_AV64_SAVE %10486:vreg_64_align2, %stack.21, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.21, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44304B	  %3979:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8906:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44320B	  %3980:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3979:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44336B	  %3981:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3980:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44352B	  %10488:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3981:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44360B	  SI_SPILL_AV64_SAVE %10488:vreg_64_align2, %stack.22, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.22, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44368B	  %3983:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8908:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44384B	  %3984:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3983:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44400B	  %3985:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3984:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44416B	  %10490:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3985:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44424B	  SI_SPILL_AV64_SAVE %10490:vreg_64_align2, %stack.23, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.23, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44432B	  %3987:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8910:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44448B	  %3988:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3987:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44464B	  %3989:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3988:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44480B	  %10492:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3989:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44488B	  SI_SPILL_AV64_SAVE %10492:vreg_64_align2, %stack.24, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.24, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44496B	  %3991:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8912:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44512B	  %3992:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3991:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44528B	  %3993:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3992:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44544B	  %10494:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3993:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44552B	  SI_SPILL_AV64_SAVE %10494:vreg_64_align2, %stack.25, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.25, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44560B	  %3995:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8914:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44576B	  %3996:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3995:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44592B	  %3997:vreg_64_align2 = V_LSHL_ADD_U64_e64 killed $sgpr12_sgpr13, 0, %3996:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44608B	  %10496:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3997:vreg_64_align2, 0, killed $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44616B	  SI_SPILL_AV64_SAVE %10496:vreg_64_align2, %stack.26, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.26, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
44624B	  %10079:vgpr_32 = V_ADD_U32_e32 256, %1349.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44640B	  %10078:vgpr_32 = V_ADD_U32_e32 256, %1346.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44656B	  %10077:vgpr_32 = V_ADD_U32_e32 256, %1343.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44672B	  %10076:vgpr_32 = V_ADD_U32_e32 256, %1340.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44688B	  renamable $sgpr4 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44704B	  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr4, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44720B	  undef %8824.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
44736B	  renamable $sgpr6_sgpr7 = S_MOV_B64 0
44896B	  renamable $sgpr13 = S_ADD_I32 0, 65536, implicit-def dead $scc
44912B	  %4029:vgpr_32 = V_ADD_U32_e32 $sgpr13, %3943:vgpr_32, implicit $exec
44928B	  %4070:vgpr_32 = V_ADD_U32_e32 $sgpr13, %3945:vgpr_32, implicit $exec
44944B	  %4111:vgpr_32 = V_ADD_U32_e32 $sgpr13, %3947:vgpr_32, implicit $exec
44960B	  %4152:vgpr_32 = V_ADD_U32_e32 $sgpr13, %3949:vgpr_32, implicit $exec
44976B	  %4193:vgpr_32 = V_ADD_U32_e32 0, %3958:vgpr_32, implicit $exec
44992B	  %4198:vgpr_32 = V_ADD_U32_e32 0, %3959:vgpr_32, implicit $exec
45072B	  renamable $sgpr14 = S_ADD_I32 0, 98304, implicit-def dead $scc
45080B	  SI_SPILL_AV32_SAVE %10424:vgpr_32, %stack.17, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.17, addrspace 5)
45088B	  %4211:vgpr_32 = V_ADD_U32_e32 $sgpr14, %10424:vgpr_32, implicit $exec
45104B	  renamable $sgpr12 = S_MOV_B32 117769732
45120B	  %4234:vgpr_32 = V_MOV_B32_e32 127, implicit $exec
45136B	  %4434:vgpr_32 = V_ADD_U32_e32 killed $sgpr13, %3899:vgpr_32, implicit $exec
45144B	  SI_SPILL_AV32_SAVE %10420:vgpr_32, %stack.15, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.15, addrspace 5)
45152B	  %4436:vgpr_32 = V_ADD_U32_e32 killed $sgpr14, %10420:vgpr_32, implicit $exec
45280B	  %8824.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45296B	  %8824.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45312B	  %8824.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45328B	  undef %10456.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45344B	  %10456.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45360B	  %10456.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45376B	  %10456.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45392B	  undef %8822.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45408B	  %8822.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45424B	  %8822.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45440B	  %8822.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45456B	  undef %8821.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45472B	  %8821.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45488B	  %8821.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45504B	  %8821.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45520B	  undef %10450.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45536B	  %10450.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45552B	  %10450.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45568B	  %10450.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45584B	  undef %10448.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45600B	  %10448.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45616B	  %10448.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45632B	  %10448.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45648B	  undef %10477.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45664B	  %10477.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45680B	  %10477.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45696B	  %10477.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45712B	  undef %8817.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45728B	  %8817.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45744B	  %8817.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45760B	  %8817.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45776B	  undef %10445.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45792B	  %10445.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45808B	  %10445.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45824B	  %10445.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45840B	  undef %10442.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45856B	  %10442.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45872B	  %10442.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45888B	  %10442.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45904B	  undef %8814.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45920B	  %8814.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45936B	  %8814.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45952B	  %8814.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45968B	  undef %8813.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
45984B	  %8813.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46000B	  %8813.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46016B	  %8813.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46032B	  undef %10439.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46048B	  %10439.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46064B	  %10439.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46080B	  %10439.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46096B	  undef %10436.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46112B	  %10436.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46128B	  %10436.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46144B	  %10436.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46160B	  undef %8810.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46176B	  %8810.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46192B	  %8810.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46208B	  %8810.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46224B	  undef %10453.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46240B	  %10453.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46256B	  %10453.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46272B	  %10453.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46288B	  undef %10433.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46304B	  %10433.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46320B	  %10433.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46336B	  %10433.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46352B	  undef %10430.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46368B	  %10430.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46384B	  %10430.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46400B	  %10430.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46416B	  undef %8806.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46432B	  %8806.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46448B	  %8806.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46464B	  %8806.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46480B	  undef %8805.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46496B	  %8805.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46512B	  %8805.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46528B	  %8805.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46544B	  undef %10427.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46560B	  %10427.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46576B	  %10427.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46592B	  %10427.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46608B	  undef %10471.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46624B	  %10471.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46640B	  %10471.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46656B	  %10471.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46672B	  undef %8802.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46688B	  %8802.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46704B	  %8802.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46720B	  %8802.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46736B	  undef %8801.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46752B	  %8801.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46768B	  %8801.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46784B	  %8801.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46800B	  undef %10468.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46816B	  %10468.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46832B	  %10468.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46848B	  %10468.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46864B	  undef %10465.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46880B	  %10465.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46896B	  %10465.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46912B	  %10465.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46928B	  undef %8798.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46944B	  %8798.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46960B	  %8798.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46976B	  %8798.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
46992B	  undef %8797.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47008B	  %8797.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47024B	  %8797.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47040B	  %8797.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47056B	  undef %10462.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47072B	  %10462.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47088B	  %10462.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47104B	  %10462.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47120B	  undef %10459.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47136B	  %10459.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47152B	  %10459.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47168B	  %10459.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47184B	  undef %10474.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47200B	  %10474.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47216B	  %10474.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47232B	  %10474.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47248B	  undef %8793.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47264B	  %8793.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47280B	  %8793.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47296B	  %8793.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
47312B	  S_BRANCH %bb.67, debug-location !62; moe_op_gemm_a8w4.py:403:19

47328B	bb.66.Flow340:
	; predecessors: %bb.68, %bb.64
	  successors: %bb.69(0x80000000); %bb.69(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
49392B	  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
49424B	  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
49440B	  %1213:vgpr_32 = V_AND_B32_e32 496, %10369:vgpr_32(s32), implicit $exec
49472B	  %10401.sub1:vreg_64_align2 = COPY %10387.sub1:vreg_64_align2
49504B	  %10413.sub1:vreg_64_align2 = COPY %10387.sub1:vreg_64_align2
49536B	  %10409.sub1:vreg_64_align2 = COPY %10387.sub1:vreg_64_align2
49568B	  %10405.sub1:vreg_64_align2 = COPY %10387.sub1:vreg_64_align2
49584B	  %1373:vgpr_32 = V_AND_B32_e32 480, %10369:vgpr_32(s32), implicit $exec
49600B	  S_BRANCH %bb.69

49616B	bb.67 (%ir-block.818):
	; predecessors: %bb.65, %bb.67
	  successors: %bb.68(0x04000000), %bb.67(0x7c000000); %bb.68(3.12%), %bb.67(96.88%)
	  liveins: $sgpr4, $sgpr5, $sgpr12, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
49624B	  %10497:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.26, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.26, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51760B	  %4008:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10497:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51768B	  %10495:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.25, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.25, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51776B	  %4009:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10495:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51784B	  %10493:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.24, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.24, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51792B	  %4010:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10493:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51800B	  %10491:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.23, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.23, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51808B	  %4011:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10491:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51816B	  %10489:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.22, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.22, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51824B	  %4012:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10489:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51832B	  %10487:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.21, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.21, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51840B	  %4013:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10487:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51848B	  %10485:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.20, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51856B	  %4014:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10485:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51864B	  %10483:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.19, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s64) from %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51872B	  %4015:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10483:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
51888B	  %10498:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10076:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51896B	  SI_SPILL_AV128_SAVE %10498:av_128_align2, %stack.27, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.27, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51904B	  %10500:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10077:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51912B	  SI_SPILL_AV128_SAVE %10500:av_128_align2, %stack.28, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.28, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51920B	  %10502:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10078:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51928B	  SI_SPILL_AV128_SAVE %10502:av_128_align2, %stack.29, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.29, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51936B	  %10504:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10079:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51944B	  SI_SPILL_AV128_SAVE %10504:av_128_align2, %stack.30, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.30, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51952B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
51968B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
51984B	  %4208:av_64_align2 = BUFFER_LOAD_DWORDX2_OFFEN %10081:vgpr_32, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
52000B	  %10506:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4008:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
52008B	  SI_SPILL_AV128_SAVE %10506:av_128_align2, %stack.31, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.31, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52016B	  %10508:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4009:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
52024B	  SI_SPILL_AV128_SAVE %10508:av_128_align2, %stack.32, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.32, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52032B	  %10510:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4010:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
52040B	  SI_SPILL_AV128_SAVE %10510:av_128_align2, %stack.33, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.33, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52048B	  %10512:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4011:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
52056B	  SI_SPILL_AV128_SAVE %10512:av_128_align2, %stack.34, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.34, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52064B	  %10514:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4012:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
52072B	  SI_SPILL_AV128_SAVE %10514:av_128_align2, %stack.35, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.35, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52080B	  %10516:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4013:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
52088B	  SI_SPILL_AV128_SAVE %10516:av_128_align2, %stack.36, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.36, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52096B	  %10518:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4014:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
52104B	  SI_SPILL_AV128_SAVE %10518:av_128_align2, %stack.37, $sgpr32, 0, implicit $exec, debug-location !79 :: (store (s128) into %stack.37, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
52112B	  %10520:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4015:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
52116B	  SI_SPILL_AV128_SAVE %10520:av_128_align2, %stack.38, $sgpr32, 0, implicit $exec :: (store (s128) into %stack.38, align 4, addrspace 5)
52120B	  %10454:vreg_128_align2 = COPY %10453:vreg_128_align2
52128B	  %4194:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
52144B	  %4195:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
52152B	  %10463:vreg_128_align2 = COPY %10462:vreg_128_align2
52160B	  %4196:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
52176B	  %4197:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
52192B	  %9858:vreg_64_align2 = DS_READ2ST64_B32_gfx9 %4211:vgpr_32, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
52208B	  undef %8890.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
52224B	  undef %8888.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
52240B	  undef %8886.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
52256B	  undef %8884.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
52272B	  undef %8882.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
52288B	  undef %8880.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
52292B	  %10472:vreg_128_align2 = COPY %10471:vreg_128_align2
52296B	  %10469:vreg_128_align2 = COPY %10468:vreg_128_align2
52304B	  undef %8878.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
52320B	  undef %8876.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
52336B	  %8890.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
52352B	  %8888.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
52368B	  %8886.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
52384B	  %8884.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
52400B	  %8882.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
52416B	  %8880.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
52424B	  %10475:vreg_128_align2 = COPY %10474:vreg_128_align2
52432B	  %8878.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
52448B	  %8876.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
52464B	  %4199:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
52480B	  %4200:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
52496B	  %4201:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
52512B	  %4202:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
52528B	  %4231:vgpr_32 = V_PERM_B32_e64 %9858.sub0:vreg_64_align2, %9858.sub0:vreg_64_align2, $sgpr12, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52544B	  %4232:vgpr_32 = V_PERM_B32_e64 %9858.sub1:vreg_64_align2, %9858.sub1:vreg_64_align2, $sgpr12, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52560B	  %4235:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8890:vreg_256_align2, %8824:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52576B	  %10526:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8890:vreg_256_align2, %8822:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52584B	  SI_SPILL_AV128_SAVE %10526:vreg_128_align2, %stack.41, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.41, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
52592B	  %4253:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8890:vreg_256_align2, %8821:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52608B	  %4271:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8888:vreg_256_align2, %10477:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52624B	  %10528:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8888:vreg_256_align2, %8817:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52628B	  SI_SPILL_AV128_SAVE %10528:vreg_128_align2, %stack.42, $sgpr32, 0, implicit $exec :: (store (s128) into %stack.42, align 4, addrspace 5)
52632B	  %10466:vreg_128_align2 = COPY %10465:vreg_128_align2
52640B	  %10530:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8886:vreg_256_align2, %8814:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52648B	  SI_SPILL_AV128_SAVE %10530:vreg_128_align2, %stack.43, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.43, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
52656B	  %10532:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8886:vreg_256_align2, %8813:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52664B	  SI_SPILL_AV128_SAVE %10532:vreg_128_align2, %stack.44, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.44, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
52672B	  %10534:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8884:vreg_256_align2, %8810:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52680B	  SI_SPILL_AV128_SAVE %10534:vreg_128_align2, %stack.45, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.45, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
52688B	  undef %8889.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
52704B	  undef %8887.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
52720B	  %8889.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
52736B	  %8887.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
52752B	  renamable $sgpr6 = S_ADD_U32 renamable $sgpr6, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
52768B	  renamable $sgpr7 = S_ADDC_U32 renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
52784B	  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr6, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
52800B	  %4241:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8890:vreg_256_align2, %10456:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52816B	  undef %8885.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
52832B	  %8885.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
52848B	  %10081:vgpr_32 = V_ADD_U32_e32 256, %10081:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52864B	  %10079:vgpr_32 = V_ADD_U32_e32 256, %10079:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52880B	  %10078:vgpr_32 = V_ADD_U32_e32 256, %10078:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52896B	  %10077:vgpr_32 = V_ADD_U32_e32 256, %10077:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52912B	  %10076:vgpr_32 = V_ADD_U32_e32 256, %10076:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
52928B	  %4259:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8888:vreg_256_align2, %10450:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52944B	  %10451:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8887:vreg_256_align2, %4259:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52960B	  %10457:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8889:vreg_256_align2, %4241:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52968B	  %10460:vreg_128_align2 = COPY %10459:vreg_128_align2
52976B	  %4373:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8880:vreg_256_align2, %8801:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52992B	  %4391:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8878:vreg_256_align2, %8798:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53008B	  %4397:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8878:vreg_256_align2, %8797:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53024B	  %10524:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8876:vreg_256_align2, %10475:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53032B	  SI_SPILL_AV128_SAVE %10524:vreg_128_align2, %stack.40, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.40, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
53040B	  %10522:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8876:vreg_256_align2, %8793:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53048B	  SI_SPILL_AV128_SAVE %10522:vreg_128_align2, %stack.39, $sgpr32, 0, implicit $exec, debug-location !85 :: (store (s128) into %stack.39, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
53056B	  %4343:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8882:vreg_256_align2, %8806:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53072B	  %4325:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8884:vreg_256_align2, %10454:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53088B	  %4367:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8880:vreg_256_align2, %8802:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53104B	  %4349:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8882:vreg_256_align2, %8805:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53120B	  %4265:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8888:vreg_256_align2, %10448:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53168B	  undef %8883.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
53184B	  %8883.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
53200B	  %10448:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8887:vreg_256_align2, %4265:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53216B	  %4283:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8886:vreg_256_align2, %10445:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53232B	  %10445:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8885:vreg_256_align2, %4283:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53248B	  %4289:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8886:vreg_256_align2, %10442:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53264B	  undef %8881.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
53280B	  %8881.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
53296B	  %10442:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8885:vreg_256_align2, %4289:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53312B	  %4307:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8884:vreg_256_align2, %10439:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53328B	  %10439:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8883:vreg_256_align2, %4307:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53344B	  %4313:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8884:vreg_256_align2, %10436:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53360B	  undef %8879.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
53376B	  %8879.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
53392B	  %10436:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8883:vreg_256_align2, %4313:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53408B	  %4331:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8882:vreg_256_align2, %10433:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53424B	  %10433:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8881:vreg_256_align2, %4331:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53440B	  %4337:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8882:vreg_256_align2, %10430:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53456B	  undef %8877.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
53472B	  %8877.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
53488B	  %10430:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8881:vreg_256_align2, %4337:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53504B	  %4355:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8880:vreg_256_align2, %10427:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53520B	  %10427:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8879:vreg_256_align2, %4355:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53536B	  %4361:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8880:vreg_256_align2, %10472:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53552B	  undef %8875.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
53568B	  %8875.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
53584B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
53600B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
53616B	  %4379:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8878:vreg_256_align2, %10469:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53632B	  %4385:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8878:vreg_256_align2, %10466:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53648B	  %4403:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8876:vreg_256_align2, %10463:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53664B	  %4409:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8876:vreg_256_align2, %10460:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54016B	  %10453:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8883:vreg_256_align2, %4325:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62688B	  %8824:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8889:vreg_256_align2, %4235:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62696B	  %10527:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.41, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.41, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62704B	  %8822:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8889:vreg_256_align2, %10527:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62720B	  %8821:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8889:vreg_256_align2, %4253:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62736B	  %10477:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8887:vreg_256_align2, %4271:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62744B	  %10529:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.42, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.42, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62752B	  %8817:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8887:vreg_256_align2, %10529:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62760B	  %10531:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.43, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.43, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62768B	  %8814:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8885:vreg_256_align2, %10531:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62776B	  %10533:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.44, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.44, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62784B	  %8813:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8885:vreg_256_align2, %10533:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62792B	  %10535:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.45, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.45, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
62800B	  %8810:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8883:vreg_256_align2, %10535:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62832B	  %8806:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8881:vreg_256_align2, %4343:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62848B	  %8805:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8881:vreg_256_align2, %4349:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62880B	  %10471:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8879:vreg_256_align2, %4361:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62896B	  %8802:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8879:vreg_256_align2, %4367:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62912B	  %8801:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8879:vreg_256_align2, %4373:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62928B	  %10468:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8877:vreg_256_align2, %4379:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62944B	  %10465:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8877:vreg_256_align2, %4385:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62960B	  %8798:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8877:vreg_256_align2, %4391:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62964B	  %10456:vreg_128_align2 = COPY %10457:vreg_128_align2
62968B	  %10450:vreg_128_align2 = COPY %10451:vreg_128_align2
62976B	  %8797:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8877:vreg_256_align2, %4397:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
62992B	  %10462:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8875:vreg_256_align2, %4403:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63008B	  %10459:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8875:vreg_256_align2, %4409:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63016B	  %10525:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.40, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.40, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
63168B	  %10474:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8875:vreg_256_align2, %10525:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63176B	  %10523:vreg_128_align2 = SI_SPILL_AV128_RESTORE %stack.39, $sgpr32, 0, implicit $exec, debug-location !85 :: (load (s128) from %stack.39, align 4, addrspace 5); moe_op_gemm_a8w4.py:421:46
63952B	  %8793:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8875:vreg_256_align2, %10523:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
63960B	  %10499:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.27, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.27, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
63968B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %10499:av_128_align2, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
63976B	  %10501:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.28, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.28, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
63984B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %10501:av_128_align2, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
63992B	  %10503:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.29, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.29, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
64000B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %10503:av_128_align2, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
64008B	  %10505:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.30, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.30, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
64016B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %10505:av_128_align2, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
64032B	  DS_WRITE_B64_gfx9 %4436:vgpr_32, %4208:av_64_align2, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
64040B	  %10507:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.31, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.31, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64048B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10507:av_128_align2, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
64056B	  %10509:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.32, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.32, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64064B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10509:av_128_align2, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
64072B	  %10511:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.33, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.33, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64080B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10511:av_128_align2, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
64088B	  %10513:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.34, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.34, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64096B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10513:av_128_align2, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
64104B	  %10515:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.35, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.35, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64112B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10515:av_128_align2, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
64120B	  %10517:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.36, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.36, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64128B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10517:av_128_align2, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
64136B	  %10519:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.37, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.37, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64144B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10519:av_128_align2, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
64152B	  %10521:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.38, $sgpr32, 0, implicit $exec, debug-location !79 :: (load (s128) from %stack.38, align 4, addrspace 5); moe_op_gemm_a8w4.py:405:20
64160B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %10521:av_128_align2, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
66400B	  S_CBRANCH_SCC1 %bb.67, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
66416B	  S_BRANCH %bb.68, debug-location !62; moe_op_gemm_a8w4.py:403:19

66432B	bb.68.Flow:
	; predecessors: %bb.67
	  successors: %bb.66(0x80000000); %bb.66(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
66440B	  %10476:vreg_128_align2 = COPY %10477:vreg_128_align2
68488B	  %10369:vgpr_32(s32) = SI_SPILL_AV32_RESTORE %stack.0, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.0, addrspace 5)
68496B	  %10373:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.1, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.1, align 4, addrspace 5)
68504B	  undef %10371.sub0:vreg_64_align2 = COPY %10373.sub0:av_64_align2
68512B	  %10377:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.2, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.2, align 4, addrspace 5)
68520B	  undef %10375.sub0:vreg_64_align2 = COPY %10377.sub0:av_64_align2
68528B	  %10381:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.3, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.3, align 4, addrspace 5)
68536B	  undef %10379.sub0:vreg_64_align2 = COPY %10381.sub0:av_64_align2
68544B	  %10385:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.4, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.4, align 4, addrspace 5)
68552B	  undef %10383.sub0:vreg_64_align2 = COPY %10385.sub0:av_64_align2
68556B	  %10387:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.5, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.5, align 4, addrspace 5)
68564B	  %10389:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.6, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.6, addrspace 5)
68568B	  %10391:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.7, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.7, addrspace 5)
68576B	  %10393:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.8, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.8, addrspace 5)
68584B	  %10397:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.9, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.9, align 4, addrspace 5)
68592B	  undef %10395.sub0:vreg_64_align2 = COPY %10397.sub0:av_64_align2
68596B	  %10399:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.10, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.10, addrspace 5)
68600B	  %10403:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.11, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.11, align 4, addrspace 5)
68604B	  undef %10401.sub0:vreg_64_align2 = COPY %10403.sub0:av_64_align2
68612B	  %10407:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.12, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.12, align 4, addrspace 5)
68620B	  undef %10405.sub0:vreg_64_align2 = COPY %10407.sub0:av_64_align2
68628B	  %10411:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.13, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.13, align 4, addrspace 5)
68636B	  undef %10409.sub0:vreg_64_align2 = COPY %10411.sub0:av_64_align2
68644B	  %10415:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.14, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.14, align 4, addrspace 5)
68652B	  undef %10413.sub0:vreg_64_align2 = COPY %10415.sub0:av_64_align2
68656B	  %10422:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.16, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.16, addrspace 5)
68660B	  undef %10418.sub0:vreg_64_align2 = V_LSHLREV_B32_e32 4, %10422:vgpr_32, implicit $exec
68668B	  undef %10417.sub0:vreg_64_align2 = COPY %10418.sub0:vreg_64_align2
68672B	  %10420:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.15, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.15, addrspace 5)
68680B	  %10424:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.17, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.17, addrspace 5)
68684B	  %10426:vreg_128_align2 = COPY %10427:vreg_128_align2
68692B	  %10429:vreg_128_align2 = COPY %10430:vreg_128_align2
68696B	  %10432:vreg_128_align2 = COPY %10433:vreg_128_align2
68704B	  %10435:vreg_128_align2 = COPY %10436:vreg_128_align2
68708B	  %10438:vreg_128_align2 = COPY %10439:vreg_128_align2
68716B	  %10441:vreg_128_align2 = COPY %10442:vreg_128_align2
68720B	  %10444:vreg_128_align2 = COPY %10445:vreg_128_align2
68728B	  %10447:vreg_128_align2 = COPY %10448:vreg_128_align2
68732B	  %10481:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.18, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.18, addrspace 5)
68736B	  S_BRANCH %bb.66

68744B	bb.69.._crit_edge:
	; predecessors: %bb.66
	  successors: %bb.70(0x40000000), %bb.71(0x40000000); %bb.70(50.00%), %bb.71(50.00%)
	  liveins: $sgpr0, $sgpr5, $sgpr2_sgpr3, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
68752B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
68760B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
68768B	  %4447:vgpr_32 = V_AND_B32_e32 14, %10369:vgpr_32(s32), implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
68784B	  $vcc = S_AND_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
68792B	  %4449:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 3, %4447:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72720B	  S_CBRANCH_VCCNZ %bb.71, implicit $vcc, debug-location !85; moe_op_gemm_a8w4.py:421:46
72736B	  S_BRANCH %bb.70, debug-location !85; moe_op_gemm_a8w4.py:421:46

72752B	bb.70 (%ir-block.1360):
	; predecessors: %bb.69
	  successors: %bb.71(0x80000000); %bb.71(100.00%)
	  liveins: $sgpr0, $sgpr5, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
72768B	  %8841:vgpr_32 = V_LSHL_ADD_U32_e64 %10369:vgpr_32(s32), 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
72784B	  %4457:vgpr_32 = V_ADD_U32_e32 98304, %8841:vgpr_32, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
72800B	  %9859:vreg_64_align2 = DS_READ2ST64_B32_gfx9 %4457:vgpr_32, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
72816B	  %4462:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 7, %10422:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72832B	  %4466:vgpr_32 = V_AND_B32_e32 28672, %10481:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72848B	  %4467:vgpr_32 = V_XOR_B32_e32 %4449:vgpr_32, %10393:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72864B	  %4468:vgpr_32 = disjoint V_OR3_B32_e64 %4462:vgpr_32, %4466:vgpr_32, %4467:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72880B	  %4470:vgpr_32 = nuw V_XAD_U32_e64 %4468:vgpr_32, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72944B	  %4475:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
72960B	  %4476:vgpr_32 = nuw V_ADD_U32_e32 0, %4468:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
73024B	  %4480:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
73040B	  %4482:vgpr_32 = V_MUL_U32_U24_e32 272, %10422:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73056B	  %4483:vgpr_32 = V_XOR_B32_e32 %4482:vgpr_32, %10393:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73072B	  %4485:vgpr_32 = V_XOR_B32_e32 192, %4483:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73088B	  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
73104B	  %4488:vgpr_32 = nuw V_ADD_U32_e32 $sgpr1, %4485:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73408B	  %4572:vgpr_32 = nuw V_XAD_U32_e64 %4483:vgpr_32, 64, $sgpr1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73536B	  undef %8840.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
73552B	  %4614:vgpr_32 = nuw V_ADD_U32_e32 $sgpr1, %4483:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
73680B	  %8840.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
73696B	  undef %8839.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
75760B	  renamable $sgpr2 = S_MOV_B32 117769732
75776B	  %4672:vgpr_32 = V_PERM_B32_e64 %9859.sub0:vreg_64_align2, %9859.sub0:vreg_64_align2, $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
75872B	  %4675:vgpr_32 = V_MOV_B32_e32 127, implicit $exec
75888B	  %4676:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8840:vreg_256_align2, %8824:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
75904B	  %4530:vgpr_32 = V_XOR_B32_e32 128, %4483:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
75920B	  %4531:vgpr_32 = nuw V_ADD_U32_e32 killed $sgpr1, %4530:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
75936B	  %8839.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
75952B	  %8824:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8839:vreg_256_align2, %4676:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
75968B	  %4479:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
76048B	  %4682:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8840:vreg_256_align2, %10456:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76064B	  %4474:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
76080B	  %10456:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8839:vreg_256_align2, %4682:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76096B	  %4478:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
76112B	  %4673:vgpr_32 = V_PERM_B32_e64 %9859.sub1:vreg_64_align2, %9859.sub1:vreg_64_align2, killed $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76192B	  %4688:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8840:vreg_256_align2, %8822:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76208B	  %4473:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
76224B	  %8822:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8839:vreg_256_align2, %4688:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76240B	  %4477:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
76320B	  %4694:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8840:vreg_256_align2, %8821:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76336B	  %4472:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
76352B	  %8821:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8839:vreg_256_align2, %4694:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76368B	  undef %8838.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
76384B	  %8838.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
76464B	  %4700:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8838:vreg_256_align2, %10450:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76480B	  undef %8837.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
76496B	  %8837.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
76512B	  %10450:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8837:vreg_256_align2, %4700:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76592B	  %4706:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8838:vreg_256_align2, %10447:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76608B	  %10447:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8837:vreg_256_align2, %4706:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76688B	  %4712:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8838:vreg_256_align2, %10476:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76704B	  %10476:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8837:vreg_256_align2, %4712:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76784B	  %4718:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8838:vreg_256_align2, %8817:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76800B	  %8817:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8837:vreg_256_align2, %4718:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76816B	  undef %8836.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
76832B	  %8836.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
76912B	  %4724:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8836:vreg_256_align2, %10444:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
76928B	  undef %8835.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
76944B	  %8835.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
76960B	  %10444:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8835:vreg_256_align2, %4724:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77040B	  %4730:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8836:vreg_256_align2, %10441:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77056B	  %10441:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8835:vreg_256_align2, %4730:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77136B	  %4736:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8836:vreg_256_align2, %8814:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77152B	  %8814:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8835:vreg_256_align2, %4736:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77232B	  %4742:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8836:vreg_256_align2, %8813:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77248B	  %8813:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8835:vreg_256_align2, %4742:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77264B	  undef %8834.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
77280B	  %8834.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
77360B	  %4748:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8834:vreg_256_align2, %10438:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77376B	  undef %8833.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
77392B	  %8833.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
77408B	  %10438:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8833:vreg_256_align2, %4748:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77488B	  %4754:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8834:vreg_256_align2, %10435:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77504B	  %10435:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8833:vreg_256_align2, %4754:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77584B	  %4760:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8834:vreg_256_align2, %8810:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77600B	  %8810:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8833:vreg_256_align2, %4760:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77680B	  %4766:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8834:vreg_256_align2, %10453:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77696B	  %10453:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8833:vreg_256_align2, %4766:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77712B	  undef %8832.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
77728B	  %8832.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
77808B	  %4772:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8832:vreg_256_align2, %10432:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77824B	  undef %8831.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
77840B	  %8831.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
77856B	  %10432:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8831:vreg_256_align2, %4772:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77936B	  %4778:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8832:vreg_256_align2, %10429:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
77952B	  %10429:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8831:vreg_256_align2, %4778:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78032B	  %4784:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8832:vreg_256_align2, %8806:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78048B	  %8806:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8831:vreg_256_align2, %4784:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78128B	  %4790:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8832:vreg_256_align2, %8805:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78144B	  %8805:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8831:vreg_256_align2, %4790:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78160B	  undef %8830.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
78176B	  %8830.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
78256B	  %4796:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8830:vreg_256_align2, %10426:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78272B	  undef %8829.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
78288B	  %8829.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
78304B	  %10426:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8829:vreg_256_align2, %4796:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78384B	  %4802:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8830:vreg_256_align2, %10471:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78400B	  %10471:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8829:vreg_256_align2, %4802:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78480B	  %4808:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8830:vreg_256_align2, %8802:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78496B	  %8802:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8829:vreg_256_align2, %4808:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78576B	  %4814:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8830:vreg_256_align2, %8801:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78592B	  %8801:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8829:vreg_256_align2, %4814:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78608B	  undef %8828.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
78624B	  %8828.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
78704B	  %4820:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8828:vreg_256_align2, %10468:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78720B	  undef %8827.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
78736B	  %8827.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
78752B	  %10468:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8827:vreg_256_align2, %4820:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78832B	  %4826:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8828:vreg_256_align2, %10465:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78848B	  %10465:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8827:vreg_256_align2, %4826:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78928B	  %4832:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8828:vreg_256_align2, %8798:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
78944B	  %8798:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8827:vreg_256_align2, %4832:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79024B	  %4838:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8828:vreg_256_align2, %8797:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79040B	  %8797:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8827:vreg_256_align2, %4838:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79056B	  undef %8826.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
79072B	  %8826.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
79152B	  %4844:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8826:vreg_256_align2, %10462:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79168B	  undef %8825.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
79184B	  %8825.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
79200B	  %10462:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8825:vreg_256_align2, %4844:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79280B	  %4850:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8826:vreg_256_align2, %10459:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79296B	  %10459:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8825:vreg_256_align2, %4850:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79376B	  %4856:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8826:vreg_256_align2, %10474:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79392B	  %10474:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8825:vreg_256_align2, %4856:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79472B	  %4862:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8826:vreg_256_align2, %8793:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79488B	  %8793:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8825:vreg_256_align2, %4862:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46

83600B	bb.71.._crit_edge._crit_edge:
	; predecessors: %bb.69, %bb.70
	  successors: %bb.1(0x80000000); %bb.1(100.00%)
	  liveins: $sgpr0, $sgpr5, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
85648B	  undef %8791.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr18, %10369:vgpr_32(s32), implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
85664B	  %8791.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
85952B	  %9137:vgpr_32 = V_MUL_LO_U32_e64 %10399:vgpr_32, killed $sgpr0, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
85968B	  %9141:vgpr_32 = V_ADD_U32_e32 killed $sgpr18, %9137:vgpr_32, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
86000B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
86016B	  renamable $sgpr19 = S_MOV_B32 159744
86032B	  renamable $sgpr18 = S_MOV_B32 2147483646
86112B	  %4902:vgpr_32 = V_ADD_LSHL_U32_e64 %9141:vgpr_32, %10369:vgpr_32(s32), 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
86128B	  %4906:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
86144B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr22_sgpr23, %8791:vreg_64_align2, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
86160B	  %4905:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %4902:vgpr_32, killed $vcc, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
86176B	  %4908:av_32 = BUFFER_LOAD_DWORD_OFFEN %4905:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
86192B	  %4884:vgpr_32 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
86208B	  %4885:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr8_sgpr9, %4884:vgpr_32, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
86224B	  %10395.sub1:vreg_64_align2 = V_ASHRREV_I32_e32 31, %10395.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
86240B	  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
86256B	  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
86272B	  renamable $sgpr4 = S_MOV_B32 65535
86320B	  %4910:vgpr_32 = V_AND_B32_e32 96, %10420:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86336B	  %4913:vgpr_32 = V_AND_B32_e32 1932, %10424:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86352B	  %4915:vgpr_32 = V_AND_B32_e32 16, %10369:vgpr_32(s32), implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86464B	  %8790:vgpr_32 = V_LSHL_ADD_U32_e64 %1213:vgpr_32, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86480B	  undef %8788.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr12, %10417.sub0:vreg_64_align2, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
86496B	  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
86512B	  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 %10401:vreg_64_align2, %10395:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86528B	  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 %10413:vreg_64_align2, %10395:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86544B	  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 %10409:vreg_64_align2, %10395:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86560B	  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 %10405:vreg_64_align2, %10395:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
86576B	  %4917:vgpr_32 = nuw V_ADD_U32_e32 0, %4910:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86592B	  %4918:vgpr_32 = nuw V_ADD3_U32_e64 %4917:vgpr_32, %4913:vgpr_32, %4915:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86608B	  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
86624B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
86640B	  DS_WRITE_B32_gfx9 %4918:vgpr_32, %4908:av_32, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
86656B	  ATOMIC_FENCE 5, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
86672B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
86688B	  ATOMIC_FENCE 4, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
86704B	  %4921:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
86720B	  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
86736B	  %4923:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
86752B	  %4933:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
86768B	  %4939:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
86800B	  %4945:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86816B	  %4946:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86832B	  %4947:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86848B	  %4948:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86864B	  %4949:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10456.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86880B	  %4950:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10456.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86896B	  %4951:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10456.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86912B	  %4952:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10456.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86928B	  %4953:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86944B	  %4954:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86960B	  %4955:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86976B	  %4956:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
86992B	  %4957:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87008B	  %4958:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87024B	  %4959:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87040B	  %4960:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87056B	  %4961:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10450.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87072B	  %4962:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10450.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87088B	  %4963:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10450.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87104B	  %4964:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10450.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87120B	  %4965:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10447.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87136B	  %4966:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10447.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87152B	  %4967:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10447.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87168B	  %4968:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10447.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87176B	  %10479:vreg_128_align2 = COPY %10476:vreg_128_align2
87184B	  %4969:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10479.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87200B	  %4970:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10479.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87216B	  %4971:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10479.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87232B	  %4972:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10479.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87248B	  %4973:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87264B	  %4974:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87280B	  %4975:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87296B	  %4976:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87312B	  %4977:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10444.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87328B	  %4978:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10444.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87344B	  %4979:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10444.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87360B	  %4980:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10444.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87376B	  %4981:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10441.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87392B	  %4982:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10441.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87408B	  %4983:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10441.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87424B	  %4984:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10441.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87440B	  %4985:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87456B	  %4986:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87472B	  %4987:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87488B	  %4988:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87504B	  %4989:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87520B	  %4990:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87536B	  %4991:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87552B	  %4992:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87568B	  %4993:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10438.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87584B	  %4994:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10438.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87600B	  %4995:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10438.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87616B	  %4996:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10438.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87632B	  %4997:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10435.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87648B	  %4998:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10435.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87664B	  %4999:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10435.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87680B	  %5000:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10435.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87696B	  %5001:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87712B	  %5002:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87728B	  %5003:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87744B	  %5004:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87760B	  %5005:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10453.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87776B	  %5006:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10453.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87792B	  %5007:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10453.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87808B	  %5008:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10453.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87824B	  %5009:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10432.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87840B	  %5010:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10432.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87856B	  %5011:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10432.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87872B	  %5012:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10432.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87888B	  %5013:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10429.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87904B	  %5014:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10429.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87920B	  %5015:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10429.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87936B	  %5016:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10429.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87952B	  %5017:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87968B	  %5018:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
87984B	  %5019:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88000B	  %5020:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88016B	  %5021:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88032B	  %5022:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88048B	  %5023:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88064B	  %5024:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88080B	  %5025:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10426.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88096B	  %5026:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10426.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88112B	  %5027:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10426.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88128B	  %5028:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10426.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88144B	  %5029:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10471.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88160B	  %5030:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10471.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88176B	  %5031:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10471.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88192B	  %5032:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10471.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88208B	  %5033:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88224B	  %5034:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88240B	  %5035:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88256B	  %5036:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88272B	  %5037:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88288B	  %5038:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88304B	  %5039:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88320B	  %5040:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88336B	  %5041:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10468.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88352B	  %5042:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10468.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88368B	  %5043:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10468.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88384B	  %5044:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10468.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88400B	  %5045:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10465.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88416B	  %5046:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10465.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88432B	  %5047:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10465.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88448B	  %5048:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10465.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88464B	  %5049:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88480B	  %5050:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88496B	  %5051:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88512B	  %5052:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88528B	  %5053:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88544B	  %5054:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88560B	  %5055:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88576B	  %5056:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88592B	  %5057:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10462.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88608B	  %5058:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10462.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88624B	  %5059:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10462.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88656B	  undef %4921.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %10462.sub3:vreg_128_align2, %4885:vgpr_32, %4921.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88672B	  %5061:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10459.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88688B	  %5062:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10459.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88704B	  %5063:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10459.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88736B	  undef %4923.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %10459.sub3:vreg_128_align2, %4885:vgpr_32, %4923.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88752B	  %5065:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10474.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88768B	  %5066:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10474.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88784B	  %5067:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10474.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88816B	  undef %4933.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %10474.sub3:vreg_128_align2, %4885:vgpr_32, %4933.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88832B	  %5069:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8793.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88848B	  %5070:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8793.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88864B	  %5071:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8793.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88896B	  undef %4939.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8793.sub3:vreg_128_align2, %4885:vgpr_32, %4939.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
88912B	  %5073:vgpr_32 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88928B	  %5074:vgpr_32 = nofpexcept V_MIN_F32_e32 %4945:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88944B	  %5075:vgpr_32 = nofpexcept V_MIN_F32_e32 %4947:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88960B	  %5076:vgpr_32 = nofpexcept V_MIN_F32_e32 %4949:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88976B	  %5077:vgpr_32 = nofpexcept V_MIN_F32_e32 %4951:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
88992B	  %5078:vgpr_32 = nofpexcept V_MIN_F32_e32 %4953:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89008B	  %5079:vgpr_32 = nofpexcept V_MIN_F32_e32 %4955:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89024B	  %5080:vgpr_32 = nofpexcept V_MIN_F32_e32 %4957:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89040B	  %5081:vgpr_32 = nofpexcept V_MIN_F32_e32 %4959:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89056B	  %5082:vgpr_32 = nofpexcept V_MIN_F32_e32 %4961:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89072B	  %5083:vgpr_32 = nofpexcept V_MIN_F32_e32 %4963:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89088B	  %5084:vgpr_32 = nofpexcept V_MIN_F32_e32 %4965:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89104B	  %5085:vgpr_32 = nofpexcept V_MIN_F32_e32 %4967:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89120B	  %5086:vgpr_32 = nofpexcept V_MIN_F32_e32 %4969:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89136B	  %5087:vgpr_32 = nofpexcept V_MIN_F32_e32 %4971:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89152B	  %5088:vgpr_32 = nofpexcept V_MIN_F32_e32 %4973:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89168B	  %5089:vgpr_32 = nofpexcept V_MIN_F32_e32 %4975:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89184B	  %5090:vgpr_32 = nofpexcept V_MIN_F32_e32 %4977:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89200B	  %5091:vgpr_32 = nofpexcept V_MIN_F32_e32 %4979:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89216B	  %5092:vgpr_32 = nofpexcept V_MIN_F32_e32 %4981:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89232B	  %5093:vgpr_32 = nofpexcept V_MIN_F32_e32 %4983:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89248B	  %5094:vgpr_32 = nofpexcept V_MIN_F32_e32 %4985:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89264B	  %5095:vgpr_32 = nofpexcept V_MIN_F32_e32 %4987:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89280B	  %5096:vgpr_32 = nofpexcept V_MIN_F32_e32 %4989:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89296B	  %5097:vgpr_32 = nofpexcept V_MIN_F32_e32 %4991:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89312B	  %5098:vgpr_32 = nofpexcept V_MIN_F32_e32 %4993:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89328B	  %5099:vgpr_32 = nofpexcept V_MIN_F32_e32 %4995:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89344B	  %5100:vgpr_32 = nofpexcept V_MIN_F32_e32 %4997:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89360B	  %5101:vgpr_32 = nofpexcept V_MIN_F32_e32 %4999:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89376B	  %5102:vgpr_32 = nofpexcept V_MIN_F32_e32 %5001:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89392B	  %5103:vgpr_32 = nofpexcept V_MIN_F32_e32 %5003:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89408B	  %5104:vgpr_32 = nofpexcept V_MIN_F32_e32 %5005:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89424B	  %5105:vgpr_32 = nofpexcept V_MIN_F32_e32 %5007:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89440B	  %5106:vgpr_32 = nofpexcept V_MIN_F32_e32 %5009:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89456B	  %5107:vgpr_32 = nofpexcept V_MIN_F32_e32 %5011:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89472B	  %5108:vgpr_32 = nofpexcept V_MIN_F32_e32 %5013:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89488B	  %5109:vgpr_32 = nofpexcept V_MIN_F32_e32 %5015:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89504B	  %5110:vgpr_32 = nofpexcept V_MIN_F32_e32 %5017:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89520B	  %5111:vgpr_32 = nofpexcept V_MIN_F32_e32 %5019:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89536B	  %5112:vgpr_32 = nofpexcept V_MIN_F32_e32 %5021:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89552B	  %5113:vgpr_32 = nofpexcept V_MIN_F32_e32 %5023:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89568B	  %5114:vgpr_32 = nofpexcept V_MIN_F32_e32 %5025:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89584B	  %5115:vgpr_32 = nofpexcept V_MIN_F32_e32 %5027:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89600B	  %5116:vgpr_32 = nofpexcept V_MIN_F32_e32 %5029:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89616B	  %5117:vgpr_32 = nofpexcept V_MIN_F32_e32 %5031:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89632B	  %5118:vgpr_32 = nofpexcept V_MIN_F32_e32 %5033:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89648B	  %5119:vgpr_32 = nofpexcept V_MIN_F32_e32 %5035:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89664B	  %5120:vgpr_32 = nofpexcept V_MIN_F32_e32 %5037:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89680B	  %5121:vgpr_32 = nofpexcept V_MIN_F32_e32 %5039:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89696B	  %5122:vgpr_32 = nofpexcept V_MIN_F32_e32 %5041:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89712B	  %5123:vgpr_32 = nofpexcept V_MIN_F32_e32 %5043:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89728B	  %5124:vgpr_32 = nofpexcept V_MIN_F32_e32 %5045:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89744B	  %5125:vgpr_32 = nofpexcept V_MIN_F32_e32 %5047:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89760B	  %5126:vgpr_32 = nofpexcept V_MIN_F32_e32 %5049:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89776B	  %5127:vgpr_32 = nofpexcept V_MIN_F32_e32 %5051:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89792B	  %5128:vgpr_32 = nofpexcept V_MIN_F32_e32 %5053:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89808B	  %5129:vgpr_32 = nofpexcept V_MIN_F32_e32 %5055:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89824B	  %5130:vgpr_32 = nofpexcept V_MIN_F32_e32 %5057:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89840B	  %5131:vgpr_32 = nofpexcept V_MIN_F32_e32 %5059:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89856B	  %5132:vgpr_32 = nofpexcept V_MIN_F32_e32 %5061:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89872B	  %5133:vgpr_32 = nofpexcept V_MIN_F32_e32 %5063:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89888B	  %5134:vgpr_32 = nofpexcept V_MIN_F32_e32 %5065:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89904B	  %5135:vgpr_32 = nofpexcept V_MIN_F32_e32 %5067:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89920B	  %5136:vgpr_32 = nofpexcept V_MIN_F32_e32 %5069:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89936B	  %5137:vgpr_32 = nofpexcept V_MIN_F32_e32 %5071:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89952B	  %5138:vgpr_32 = nofpexcept V_MIN_F32_e32 %4946:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89968B	  %5139:vgpr_32 = nofpexcept V_MIN_F32_e32 %4948:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
89984B	  %5140:vgpr_32 = nofpexcept V_MIN_F32_e32 %4950:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90000B	  %5141:vgpr_32 = nofpexcept V_MIN_F32_e32 %4952:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90016B	  %5142:vgpr_32 = nofpexcept V_MIN_F32_e32 %4954:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90032B	  %5143:vgpr_32 = nofpexcept V_MIN_F32_e32 %4956:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90048B	  %5144:vgpr_32 = nofpexcept V_MIN_F32_e32 %4958:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90064B	  %5145:vgpr_32 = nofpexcept V_MIN_F32_e32 %4960:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90080B	  %5146:vgpr_32 = nofpexcept V_MIN_F32_e32 %4962:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90096B	  %5147:vgpr_32 = nofpexcept V_MIN_F32_e32 %4964:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90112B	  %5148:vgpr_32 = nofpexcept V_MIN_F32_e32 %4966:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90128B	  %5149:vgpr_32 = nofpexcept V_MIN_F32_e32 %4968:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90144B	  %5150:vgpr_32 = nofpexcept V_MIN_F32_e32 %4970:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90160B	  %5151:vgpr_32 = nofpexcept V_MIN_F32_e32 %4972:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90176B	  %5152:vgpr_32 = nofpexcept V_MIN_F32_e32 %4974:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90192B	  %5153:vgpr_32 = nofpexcept V_MIN_F32_e32 %4976:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90208B	  %5154:vgpr_32 = nofpexcept V_MIN_F32_e32 %4978:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90224B	  %5155:vgpr_32 = nofpexcept V_MIN_F32_e32 %4980:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90240B	  %5156:vgpr_32 = nofpexcept V_MIN_F32_e32 %4982:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90256B	  %5157:vgpr_32 = nofpexcept V_MIN_F32_e32 %4984:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90272B	  %5158:vgpr_32 = nofpexcept V_MIN_F32_e32 %4986:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90288B	  %5159:vgpr_32 = nofpexcept V_MIN_F32_e32 %4988:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90304B	  %5160:vgpr_32 = nofpexcept V_MIN_F32_e32 %4990:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90320B	  %5161:vgpr_32 = nofpexcept V_MIN_F32_e32 %4992:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90336B	  %5162:vgpr_32 = nofpexcept V_MIN_F32_e32 %4994:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90352B	  %5163:vgpr_32 = nofpexcept V_MIN_F32_e32 %4996:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90368B	  %5164:vgpr_32 = nofpexcept V_MIN_F32_e32 %4998:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90384B	  %5165:vgpr_32 = nofpexcept V_MIN_F32_e32 %5000:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90400B	  %5166:vgpr_32 = nofpexcept V_MIN_F32_e32 %5002:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90416B	  %5167:vgpr_32 = nofpexcept V_MIN_F32_e32 %5004:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90432B	  %5168:vgpr_32 = nofpexcept V_MIN_F32_e32 %5006:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90448B	  %5169:vgpr_32 = nofpexcept V_MIN_F32_e32 %5008:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90464B	  %5170:vgpr_32 = nofpexcept V_MIN_F32_e32 %5010:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90480B	  %5171:vgpr_32 = nofpexcept V_MIN_F32_e32 %5012:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90496B	  %5172:vgpr_32 = nofpexcept V_MIN_F32_e32 %5014:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90512B	  %5173:vgpr_32 = nofpexcept V_MIN_F32_e32 %5016:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90528B	  %5174:vgpr_32 = nofpexcept V_MIN_F32_e32 %5018:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90544B	  %5175:vgpr_32 = nofpexcept V_MIN_F32_e32 %5020:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90560B	  %5176:vgpr_32 = nofpexcept V_MIN_F32_e32 %5022:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90576B	  %5177:vgpr_32 = nofpexcept V_MIN_F32_e32 %5024:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90592B	  %5178:vgpr_32 = nofpexcept V_MIN_F32_e32 %5026:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90608B	  %5179:vgpr_32 = nofpexcept V_MIN_F32_e32 %5028:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90624B	  %5180:vgpr_32 = nofpexcept V_MIN_F32_e32 %5030:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90640B	  %5181:vgpr_32 = nofpexcept V_MIN_F32_e32 %5032:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90656B	  %5182:vgpr_32 = nofpexcept V_MIN_F32_e32 %5034:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90672B	  %5183:vgpr_32 = nofpexcept V_MIN_F32_e32 %5036:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90688B	  %5184:vgpr_32 = nofpexcept V_MIN_F32_e32 %5038:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90704B	  %5185:vgpr_32 = nofpexcept V_MIN_F32_e32 %5040:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90720B	  %5186:vgpr_32 = nofpexcept V_MIN_F32_e32 %5042:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90736B	  %5187:vgpr_32 = nofpexcept V_MIN_F32_e32 %5044:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90752B	  %5188:vgpr_32 = nofpexcept V_MIN_F32_e32 %5046:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90768B	  %5189:vgpr_32 = nofpexcept V_MIN_F32_e32 %5048:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90784B	  %5190:vgpr_32 = nofpexcept V_MIN_F32_e32 %5050:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90800B	  %5191:vgpr_32 = nofpexcept V_MIN_F32_e32 %5052:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90816B	  %5192:vgpr_32 = nofpexcept V_MIN_F32_e32 %5054:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90832B	  %5193:vgpr_32 = nofpexcept V_MIN_F32_e32 %5056:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90848B	  %5194:vgpr_32 = nofpexcept V_MIN_F32_e32 %5058:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90864B	  %5195:vgpr_32 = nofpexcept V_MIN_F32_e32 %4921.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90880B	  %5196:vgpr_32 = nofpexcept V_MIN_F32_e32 %5062:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90896B	  %5197:vgpr_32 = nofpexcept V_MIN_F32_e32 %4923.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90912B	  %5198:vgpr_32 = nofpexcept V_MIN_F32_e32 %5066:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90928B	  %5199:vgpr_32 = nofpexcept V_MIN_F32_e32 %4933.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90944B	  %5200:vgpr_32 = nofpexcept V_MIN_F32_e32 %5070:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90960B	  %5201:vgpr_32 = nofpexcept V_MIN_F32_e32 %4939.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90976B	  %5202:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5138:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
90992B	  %5203:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5139:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91008B	  %5204:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5140:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91024B	  %5205:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5141:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91040B	  %5206:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5142:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91056B	  %5207:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5143:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91072B	  %5208:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5144:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91088B	  %5209:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5145:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91104B	  %5210:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5146:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91120B	  %5211:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5147:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91136B	  %5212:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5148:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91152B	  %5213:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5149:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91168B	  %5214:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5150:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91184B	  %5215:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5151:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91200B	  %5216:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5152:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91216B	  %5217:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5153:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91232B	  %5218:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5154:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91248B	  %5219:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5155:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91264B	  %5220:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5156:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91280B	  %5221:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5157:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91296B	  %5222:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5158:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91312B	  %5223:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5159:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91328B	  %5224:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5160:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91344B	  %5225:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5161:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91360B	  %5226:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5162:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91376B	  %5227:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5163:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91392B	  %5228:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5164:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91408B	  %5229:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5165:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91424B	  %5230:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5166:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91440B	  %5231:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5167:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91456B	  %5232:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5168:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91472B	  %5233:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5169:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91488B	  %5234:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5170:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91504B	  %5235:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5171:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91520B	  %5236:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5172:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91536B	  %5237:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5173:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91552B	  %5238:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5174:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91568B	  %5239:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5175:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91584B	  %5240:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5176:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91600B	  %5241:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5177:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91616B	  %5242:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5178:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91632B	  %5243:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5179:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91648B	  %5244:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5180:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91664B	  %5245:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5181:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91680B	  %5246:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5182:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91696B	  %5247:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5183:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91712B	  %5248:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5184:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91728B	  %5249:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5185:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91744B	  %5250:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5186:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91760B	  %5251:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5187:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91776B	  %5252:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5188:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91792B	  %5253:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5189:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91808B	  %5254:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5190:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91824B	  %5255:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5191:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91840B	  %5256:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5192:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91856B	  %5257:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5193:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91872B	  %5258:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5194:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91888B	  %5259:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5195:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91904B	  %5260:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5196:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91920B	  %5261:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5197:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91936B	  %5262:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5198:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91952B	  %5263:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5199:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91968B	  %5264:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5200:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
91984B	  %5265:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5201:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92000B	  %5268:vgpr_32 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
92016B	  %5267:vgpr_32 = nofpexcept V_MUL_F32_e32 killed $sgpr14, %5268:vgpr_32, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
92032B	  %5269:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5074:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92048B	  %5270:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5075:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92064B	  %5271:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5076:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92080B	  %5272:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5077:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92096B	  %5273:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5078:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92112B	  %5274:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5079:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92128B	  %5275:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5080:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92144B	  %5276:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5081:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92160B	  %5277:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5082:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92176B	  %5278:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5083:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92192B	  %5279:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5084:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92208B	  %5280:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5085:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92224B	  %5281:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5086:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92240B	  %5282:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5087:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92256B	  %5283:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5088:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92272B	  %5284:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5089:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92288B	  %5285:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5090:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92304B	  %5286:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5091:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92320B	  %5287:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5092:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92336B	  %5288:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5093:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92352B	  %5289:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5094:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92368B	  %5290:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5095:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92384B	  %5291:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5096:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92400B	  %5292:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5097:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92416B	  %5293:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5098:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92432B	  %5294:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5099:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92448B	  %5295:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5100:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92464B	  %5296:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5101:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92480B	  %5297:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5102:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92496B	  %5298:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5103:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92512B	  %5299:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5104:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92528B	  %5300:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5105:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92544B	  %5301:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5106:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92560B	  %5302:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5107:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92576B	  %5303:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5108:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92592B	  %5304:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5109:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92608B	  %5305:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5110:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92624B	  %5306:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5111:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92640B	  %5307:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5112:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92656B	  %5308:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5113:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92672B	  %5309:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5114:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92688B	  %5310:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5115:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92704B	  %5311:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5116:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92720B	  %5312:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5117:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92736B	  %5313:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5118:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92752B	  %5314:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5119:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92768B	  %5315:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5120:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92784B	  %5316:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5121:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92800B	  %5317:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5122:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92816B	  %5318:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5123:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92832B	  %5319:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5124:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92848B	  %5320:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5125:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92864B	  %5321:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5126:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92880B	  %5322:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5127:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92896B	  %5323:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5128:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92912B	  %5324:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5129:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92928B	  %5325:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5130:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92944B	  %5326:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5131:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92960B	  %5327:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5132:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92976B	  %5328:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5133:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
92992B	  %5329:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5134:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93008B	  %5330:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5135:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93024B	  %5331:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5136:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93040B	  %5332:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5137:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
93056B	  %5333:vgpr_32 = nofpexcept V_EXP_F32_e32 %5269:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93072B	  %5334:vgpr_32 = nofpexcept V_EXP_F32_e32 %5270:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93088B	  %5335:vgpr_32 = nofpexcept V_EXP_F32_e32 %5271:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93104B	  %5336:vgpr_32 = nofpexcept V_EXP_F32_e32 %5272:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93120B	  %5337:vgpr_32 = nofpexcept V_EXP_F32_e32 %5273:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93136B	  %5338:vgpr_32 = nofpexcept V_EXP_F32_e32 %5274:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93152B	  %5339:vgpr_32 = nofpexcept V_EXP_F32_e32 %5275:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93168B	  %5340:vgpr_32 = nofpexcept V_EXP_F32_e32 %5276:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93184B	  %5341:vgpr_32 = nofpexcept V_EXP_F32_e32 %5277:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93200B	  %5342:vgpr_32 = nofpexcept V_EXP_F32_e32 %5278:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93216B	  %5343:vgpr_32 = nofpexcept V_EXP_F32_e32 %5279:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93232B	  %5344:vgpr_32 = nofpexcept V_EXP_F32_e32 %5280:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93248B	  %5345:vgpr_32 = nofpexcept V_EXP_F32_e32 %5281:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93264B	  %5346:vgpr_32 = nofpexcept V_EXP_F32_e32 %5282:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93280B	  %5347:vgpr_32 = nofpexcept V_EXP_F32_e32 %5283:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93296B	  %5348:vgpr_32 = nofpexcept V_EXP_F32_e32 %5284:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93312B	  %5349:vgpr_32 = nofpexcept V_EXP_F32_e32 %5285:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93328B	  %5350:vgpr_32 = nofpexcept V_EXP_F32_e32 %5286:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93344B	  %5351:vgpr_32 = nofpexcept V_EXP_F32_e32 %5287:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93360B	  %5352:vgpr_32 = nofpexcept V_EXP_F32_e32 %5288:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93376B	  %5353:vgpr_32 = nofpexcept V_EXP_F32_e32 %5289:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93392B	  %5354:vgpr_32 = nofpexcept V_EXP_F32_e32 %5290:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93408B	  %5355:vgpr_32 = nofpexcept V_EXP_F32_e32 %5291:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93424B	  %5356:vgpr_32 = nofpexcept V_EXP_F32_e32 %5292:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93440B	  %5357:vgpr_32 = nofpexcept V_EXP_F32_e32 %5293:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93456B	  %5358:vgpr_32 = nofpexcept V_EXP_F32_e32 %5294:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93472B	  %5359:vgpr_32 = nofpexcept V_EXP_F32_e32 %5295:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93488B	  %5360:vgpr_32 = nofpexcept V_EXP_F32_e32 %5296:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93504B	  %5361:vgpr_32 = nofpexcept V_EXP_F32_e32 %5297:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93520B	  %5362:vgpr_32 = nofpexcept V_EXP_F32_e32 %5298:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93536B	  %5363:vgpr_32 = nofpexcept V_EXP_F32_e32 %5299:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93552B	  %5364:vgpr_32 = nofpexcept V_EXP_F32_e32 %5300:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93568B	  %5365:vgpr_32 = nofpexcept V_EXP_F32_e32 %5301:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93584B	  %5366:vgpr_32 = nofpexcept V_EXP_F32_e32 %5302:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93600B	  %5367:vgpr_32 = nofpexcept V_EXP_F32_e32 %5303:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93616B	  %5368:vgpr_32 = nofpexcept V_EXP_F32_e32 %5304:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93632B	  %5369:vgpr_32 = nofpexcept V_EXP_F32_e32 %5305:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93648B	  %5370:vgpr_32 = nofpexcept V_EXP_F32_e32 %5306:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93664B	  %5371:vgpr_32 = nofpexcept V_EXP_F32_e32 %5307:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93680B	  %5372:vgpr_32 = nofpexcept V_EXP_F32_e32 %5308:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93696B	  %5373:vgpr_32 = nofpexcept V_EXP_F32_e32 %5309:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93712B	  %5374:vgpr_32 = nofpexcept V_EXP_F32_e32 %5310:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93728B	  %5375:vgpr_32 = nofpexcept V_EXP_F32_e32 %5311:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93744B	  %5376:vgpr_32 = nofpexcept V_EXP_F32_e32 %5312:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93760B	  %5377:vgpr_32 = nofpexcept V_EXP_F32_e32 %5313:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93776B	  %5378:vgpr_32 = nofpexcept V_EXP_F32_e32 %5314:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93792B	  %5379:vgpr_32 = nofpexcept V_EXP_F32_e32 %5315:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93808B	  %5380:vgpr_32 = nofpexcept V_EXP_F32_e32 %5316:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93824B	  %5381:vgpr_32 = nofpexcept V_EXP_F32_e32 %5317:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93840B	  %5382:vgpr_32 = nofpexcept V_EXP_F32_e32 %5318:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93856B	  %5383:vgpr_32 = nofpexcept V_EXP_F32_e32 %5319:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93872B	  %5384:vgpr_32 = nofpexcept V_EXP_F32_e32 %5320:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93888B	  %5385:vgpr_32 = nofpexcept V_EXP_F32_e32 %5321:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93904B	  %5386:vgpr_32 = nofpexcept V_EXP_F32_e32 %5322:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93920B	  %5387:vgpr_32 = nofpexcept V_EXP_F32_e32 %5323:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93936B	  %5388:vgpr_32 = nofpexcept V_EXP_F32_e32 %5324:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93952B	  %5389:vgpr_32 = nofpexcept V_EXP_F32_e32 %5325:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93968B	  %5390:vgpr_32 = nofpexcept V_EXP_F32_e32 %5326:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
93984B	  %5391:vgpr_32 = nofpexcept V_EXP_F32_e32 %5327:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94000B	  %5392:vgpr_32 = nofpexcept V_EXP_F32_e32 %5328:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94016B	  %5393:vgpr_32 = nofpexcept V_EXP_F32_e32 %5329:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94032B	  %5394:vgpr_32 = nofpexcept V_EXP_F32_e32 %5330:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94048B	  %5395:vgpr_32 = nofpexcept V_EXP_F32_e32 %5331:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94064B	  %5396:vgpr_32 = nofpexcept V_EXP_F32_e32 %5332:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
94080B	  %5398:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5333:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94096B	  %5399:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5334:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94112B	  %5400:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5335:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94128B	  %5401:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5336:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94144B	  %5402:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5337:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94160B	  %5403:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5338:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94176B	  %5404:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5339:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94192B	  %5405:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5340:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94208B	  %5406:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5341:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94224B	  %5407:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5342:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94240B	  %5408:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5343:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94256B	  %5409:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5344:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94272B	  %5410:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5345:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94288B	  %5411:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5346:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94304B	  %5412:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5347:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94320B	  %5413:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5348:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94336B	  %5414:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5349:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94352B	  %5415:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5350:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94368B	  %5416:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5351:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94384B	  %5417:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5352:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94400B	  %5418:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5353:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94416B	  %5419:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5354:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94432B	  %5420:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5355:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94448B	  %5421:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5356:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94464B	  %5422:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5357:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94480B	  %5423:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5358:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94496B	  %5424:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5359:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94512B	  %5425:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5360:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94528B	  %5426:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5361:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94544B	  %5427:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5362:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94560B	  %5428:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5363:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94576B	  %5429:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5364:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94592B	  %5430:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5365:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94608B	  %5431:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5366:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94624B	  %5432:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5367:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94640B	  %5433:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5368:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94656B	  %5434:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5369:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94672B	  %5435:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5370:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94688B	  %5436:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5371:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94704B	  %5437:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5372:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94720B	  %5438:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5373:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94736B	  %5439:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5374:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94752B	  %5440:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5375:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94768B	  %5441:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5376:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94784B	  %5442:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5377:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94800B	  %5443:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5378:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94816B	  %5444:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5379:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94832B	  %5445:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5380:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94848B	  %5446:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5381:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94864B	  %5447:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5382:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94880B	  %5448:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5383:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94896B	  %5449:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5384:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94912B	  %5450:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5385:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94928B	  %5451:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5386:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94944B	  %5452:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5387:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94960B	  %5453:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5388:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94976B	  %5454:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5389:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
94992B	  %5455:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5390:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95008B	  %5456:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5391:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95024B	  %5457:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5392:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95040B	  %5458:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5393:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95104B	  %5462:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5398:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95120B	  %5466:vgpr_32 = nofpexcept V_RCP_F32_e32 %5462:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95136B	  %5459:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5394:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95152B	  %5460:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5395:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95168B	  %5461:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5396:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
95184B	  %5465:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5462:vgpr_32, 0, %5466:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95216B	  %5466:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5465:vgpr_32, %5466:vgpr_32, %5466:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95232B	  %5467:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5074:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95248B	  %5471:vgpr_32 = nofpexcept V_MUL_F32_e32 %5467:vgpr_32, %5466:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95264B	  %5470:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5462:vgpr_32, 0, %5471:vgpr_32, 0, %5467:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95296B	  %5471:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5470:vgpr_32, %5466:vgpr_32, %5471:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95312B	  %5472:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5462:vgpr_32, 0, %5471:vgpr_32, 0, %5467:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95376B	  %5475:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5399:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95392B	  %5479:vgpr_32 = nofpexcept V_RCP_F32_e32 %5475:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95424B	  %5473:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5472:vgpr_32, 0, %5466:vgpr_32, 0, %5471:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95440B	  %6294:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5473:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95456B	  %5478:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5475:vgpr_32, 0, %5479:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95488B	  %5479:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5478:vgpr_32, %5479:vgpr_32, %5479:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95504B	  %5480:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5075:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95520B	  %5484:vgpr_32 = nofpexcept V_MUL_F32_e32 %5480:vgpr_32, %5479:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95536B	  %5483:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5475:vgpr_32, 0, %5484:vgpr_32, 0, %5480:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95568B	  %5484:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5483:vgpr_32, %5479:vgpr_32, %5484:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95584B	  %5485:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5475:vgpr_32, 0, %5484:vgpr_32, 0, %5480:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95648B	  %5488:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5400:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95664B	  %5492:vgpr_32 = nofpexcept V_RCP_F32_e32 %5488:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95696B	  %5486:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5485:vgpr_32, 0, %5479:vgpr_32, 0, %5484:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95712B	  %6295:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5486:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95728B	  %5491:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5488:vgpr_32, 0, %5492:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95760B	  %5492:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5491:vgpr_32, %5492:vgpr_32, %5492:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95776B	  %5493:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5076:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95792B	  %5497:vgpr_32 = nofpexcept V_MUL_F32_e32 %5493:vgpr_32, %5492:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95808B	  %5496:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5488:vgpr_32, 0, %5497:vgpr_32, 0, %5493:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95840B	  %5497:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5496:vgpr_32, %5492:vgpr_32, %5497:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95856B	  %5498:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5488:vgpr_32, 0, %5497:vgpr_32, 0, %5493:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95920B	  %5501:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5401:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95936B	  %5505:vgpr_32 = nofpexcept V_RCP_F32_e32 %5501:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95968B	  %5499:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5498:vgpr_32, 0, %5492:vgpr_32, 0, %5497:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95984B	  %6296:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5499:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96000B	  %5504:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5501:vgpr_32, 0, %5505:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96032B	  %5505:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5504:vgpr_32, %5505:vgpr_32, %5505:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96048B	  %5506:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5077:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96064B	  %5510:vgpr_32 = nofpexcept V_MUL_F32_e32 %5506:vgpr_32, %5505:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96080B	  %5509:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5501:vgpr_32, 0, %5510:vgpr_32, 0, %5506:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96112B	  %5510:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5509:vgpr_32, %5505:vgpr_32, %5510:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96128B	  %5511:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5501:vgpr_32, 0, %5510:vgpr_32, 0, %5506:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96192B	  %5514:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5402:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96208B	  %5518:vgpr_32 = nofpexcept V_RCP_F32_e32 %5514:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96240B	  %5512:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5511:vgpr_32, 0, %5505:vgpr_32, 0, %5510:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96256B	  %6297:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5512:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96272B	  %5517:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5514:vgpr_32, 0, %5518:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96304B	  %5518:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5517:vgpr_32, %5518:vgpr_32, %5518:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96320B	  %5519:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5078:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96336B	  %5523:vgpr_32 = nofpexcept V_MUL_F32_e32 %5519:vgpr_32, %5518:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96352B	  %5522:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5514:vgpr_32, 0, %5523:vgpr_32, 0, %5519:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96384B	  %5523:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5522:vgpr_32, %5518:vgpr_32, %5523:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96400B	  %5524:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5514:vgpr_32, 0, %5523:vgpr_32, 0, %5519:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96464B	  %5527:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5403:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96480B	  %5531:vgpr_32 = nofpexcept V_RCP_F32_e32 %5527:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96512B	  %5525:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5524:vgpr_32, 0, %5518:vgpr_32, 0, %5523:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96528B	  %6298:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5525:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96544B	  %5530:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5527:vgpr_32, 0, %5531:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96576B	  %5531:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5530:vgpr_32, %5531:vgpr_32, %5531:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96592B	  %5532:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5079:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96608B	  %5536:vgpr_32 = nofpexcept V_MUL_F32_e32 %5532:vgpr_32, %5531:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96624B	  %5535:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5527:vgpr_32, 0, %5536:vgpr_32, 0, %5532:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96656B	  %5536:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5535:vgpr_32, %5531:vgpr_32, %5536:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96672B	  %5537:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5527:vgpr_32, 0, %5536:vgpr_32, 0, %5532:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96736B	  %5540:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5404:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96752B	  %5544:vgpr_32 = nofpexcept V_RCP_F32_e32 %5540:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96784B	  %5538:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5537:vgpr_32, 0, %5531:vgpr_32, 0, %5536:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96800B	  %6299:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5538:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96816B	  %5543:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5540:vgpr_32, 0, %5544:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96848B	  %5544:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5543:vgpr_32, %5544:vgpr_32, %5544:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96864B	  %5545:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5080:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96880B	  %5549:vgpr_32 = nofpexcept V_MUL_F32_e32 %5545:vgpr_32, %5544:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96896B	  %5548:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5540:vgpr_32, 0, %5549:vgpr_32, 0, %5545:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96928B	  %5549:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5548:vgpr_32, %5544:vgpr_32, %5549:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96944B	  %5550:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5540:vgpr_32, 0, %5549:vgpr_32, 0, %5545:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97008B	  %5553:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5405:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97024B	  %5557:vgpr_32 = nofpexcept V_RCP_F32_e32 %5553:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97056B	  %5551:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5550:vgpr_32, 0, %5544:vgpr_32, 0, %5549:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97072B	  %6300:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5551:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97088B	  %5556:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5553:vgpr_32, 0, %5557:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97120B	  %5557:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5556:vgpr_32, %5557:vgpr_32, %5557:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97136B	  %5558:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5081:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97152B	  %5562:vgpr_32 = nofpexcept V_MUL_F32_e32 %5558:vgpr_32, %5557:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97168B	  %5561:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5553:vgpr_32, 0, %5562:vgpr_32, 0, %5558:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97200B	  %5562:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5561:vgpr_32, %5557:vgpr_32, %5562:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97216B	  %5563:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5553:vgpr_32, 0, %5562:vgpr_32, 0, %5558:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97280B	  %5566:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5406:vgpr_32, 0, %5406:vgpr_32, 0, %5082:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97296B	  %5570:vgpr_32 = nofpexcept V_RCP_F32_e32 %5566:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97328B	  %5564:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5563:vgpr_32, 0, %5557:vgpr_32, 0, %5562:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97344B	  %6301:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5564:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97360B	  %5569:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5566:vgpr_32, 0, %5570:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97392B	  %5570:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5569:vgpr_32, %5570:vgpr_32, %5570:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97408B	  %5571:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5082:vgpr_32, 0, %5406:vgpr_32, 0, %5082:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97424B	  %5575:vgpr_32 = nofpexcept V_MUL_F32_e32 %5571:vgpr_32, %5570:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97440B	  %5574:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5566:vgpr_32, 0, %5575:vgpr_32, 0, %5571:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97472B	  %5575:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5574:vgpr_32, %5570:vgpr_32, %5575:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97488B	  %5576:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5566:vgpr_32, 0, %5575:vgpr_32, 0, %5571:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97552B	  %5579:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5407:vgpr_32, 0, %5407:vgpr_32, 0, %5083:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97568B	  %5583:vgpr_32 = nofpexcept V_RCP_F32_e32 %5579:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97600B	  %5577:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5576:vgpr_32, 0, %5570:vgpr_32, 0, %5575:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97616B	  %6302:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5577:vgpr_32, 0, %5406:vgpr_32, 0, %5082:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97632B	  %5582:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5579:vgpr_32, 0, %5583:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97664B	  %5583:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5582:vgpr_32, %5583:vgpr_32, %5583:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97680B	  %5584:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5083:vgpr_32, 0, %5407:vgpr_32, 0, %5083:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97696B	  %5588:vgpr_32 = nofpexcept V_MUL_F32_e32 %5584:vgpr_32, %5583:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97712B	  %5587:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5579:vgpr_32, 0, %5588:vgpr_32, 0, %5584:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97744B	  %5588:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5587:vgpr_32, %5583:vgpr_32, %5588:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97760B	  %5589:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5579:vgpr_32, 0, %5588:vgpr_32, 0, %5584:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97824B	  %5592:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5408:vgpr_32, 0, %5408:vgpr_32, 0, %5084:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97840B	  %5596:vgpr_32 = nofpexcept V_RCP_F32_e32 %5592:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97872B	  %5590:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5589:vgpr_32, 0, %5583:vgpr_32, 0, %5588:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97888B	  %6303:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5590:vgpr_32, 0, %5407:vgpr_32, 0, %5083:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97904B	  %5595:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5592:vgpr_32, 0, %5596:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97936B	  %5596:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5595:vgpr_32, %5596:vgpr_32, %5596:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97952B	  %5597:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5084:vgpr_32, 0, %5408:vgpr_32, 0, %5084:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97968B	  %5601:vgpr_32 = nofpexcept V_MUL_F32_e32 %5597:vgpr_32, %5596:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97984B	  %5600:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5592:vgpr_32, 0, %5601:vgpr_32, 0, %5597:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98016B	  %5601:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5600:vgpr_32, %5596:vgpr_32, %5601:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98032B	  %5602:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5592:vgpr_32, 0, %5601:vgpr_32, 0, %5597:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98096B	  %5605:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5409:vgpr_32, 0, %5409:vgpr_32, 0, %5085:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98112B	  %5609:vgpr_32 = nofpexcept V_RCP_F32_e32 %5605:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98144B	  %5603:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5602:vgpr_32, 0, %5596:vgpr_32, 0, %5601:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98160B	  %6304:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5603:vgpr_32, 0, %5408:vgpr_32, 0, %5084:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98176B	  %5608:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5605:vgpr_32, 0, %5609:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98208B	  %5609:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5608:vgpr_32, %5609:vgpr_32, %5609:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98224B	  %5610:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5085:vgpr_32, 0, %5409:vgpr_32, 0, %5085:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98240B	  %5614:vgpr_32 = nofpexcept V_MUL_F32_e32 %5610:vgpr_32, %5609:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98256B	  %5613:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5605:vgpr_32, 0, %5614:vgpr_32, 0, %5610:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98288B	  %5614:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5613:vgpr_32, %5609:vgpr_32, %5614:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98304B	  %5615:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5605:vgpr_32, 0, %5614:vgpr_32, 0, %5610:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98368B	  %5618:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5410:vgpr_32, 0, %5410:vgpr_32, 0, %5086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98384B	  %5622:vgpr_32 = nofpexcept V_RCP_F32_e32 %5618:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98416B	  %5616:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5615:vgpr_32, 0, %5609:vgpr_32, 0, %5614:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98432B	  %6305:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5616:vgpr_32, 0, %5409:vgpr_32, 0, %5085:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98448B	  %5621:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5618:vgpr_32, 0, %5622:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98480B	  %5622:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5621:vgpr_32, %5622:vgpr_32, %5622:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98496B	  %5623:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5086:vgpr_32, 0, %5410:vgpr_32, 0, %5086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98512B	  %5627:vgpr_32 = nofpexcept V_MUL_F32_e32 %5623:vgpr_32, %5622:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98528B	  %5626:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5618:vgpr_32, 0, %5627:vgpr_32, 0, %5623:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98560B	  %5627:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5626:vgpr_32, %5622:vgpr_32, %5627:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98576B	  %5628:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5618:vgpr_32, 0, %5627:vgpr_32, 0, %5623:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98640B	  %5631:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5411:vgpr_32, 0, %5411:vgpr_32, 0, %5087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98656B	  %5635:vgpr_32 = nofpexcept V_RCP_F32_e32 %5631:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98688B	  %5629:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5628:vgpr_32, 0, %5622:vgpr_32, 0, %5627:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98704B	  %6306:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5629:vgpr_32, 0, %5410:vgpr_32, 0, %5086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98720B	  %5634:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5631:vgpr_32, 0, %5635:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98752B	  %5635:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5634:vgpr_32, %5635:vgpr_32, %5635:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98768B	  %5636:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5087:vgpr_32, 0, %5411:vgpr_32, 0, %5087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98784B	  %5640:vgpr_32 = nofpexcept V_MUL_F32_e32 %5636:vgpr_32, %5635:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98800B	  %5639:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5631:vgpr_32, 0, %5640:vgpr_32, 0, %5636:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98832B	  %5640:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5639:vgpr_32, %5635:vgpr_32, %5640:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98848B	  %5641:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5631:vgpr_32, 0, %5640:vgpr_32, 0, %5636:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98912B	  %5644:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5412:vgpr_32, 0, %5412:vgpr_32, 0, %5088:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98928B	  %5648:vgpr_32 = nofpexcept V_RCP_F32_e32 %5644:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98960B	  %5642:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5641:vgpr_32, 0, %5635:vgpr_32, 0, %5640:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98976B	  %6307:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5642:vgpr_32, 0, %5411:vgpr_32, 0, %5087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98992B	  %5647:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5644:vgpr_32, 0, %5648:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99024B	  %5648:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5647:vgpr_32, %5648:vgpr_32, %5648:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99040B	  %5649:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5088:vgpr_32, 0, %5412:vgpr_32, 0, %5088:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99056B	  %5653:vgpr_32 = nofpexcept V_MUL_F32_e32 %5649:vgpr_32, %5648:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99072B	  %5652:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5644:vgpr_32, 0, %5653:vgpr_32, 0, %5649:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99104B	  %5653:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5652:vgpr_32, %5648:vgpr_32, %5653:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99120B	  %5654:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5644:vgpr_32, 0, %5653:vgpr_32, 0, %5649:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99184B	  %5657:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5413:vgpr_32, 0, %5413:vgpr_32, 0, %5089:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99200B	  %5661:vgpr_32 = nofpexcept V_RCP_F32_e32 %5657:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99232B	  %5655:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5654:vgpr_32, 0, %5648:vgpr_32, 0, %5653:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99248B	  %6308:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5655:vgpr_32, 0, %5412:vgpr_32, 0, %5088:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99264B	  %5660:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5657:vgpr_32, 0, %5661:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99296B	  %5661:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5660:vgpr_32, %5661:vgpr_32, %5661:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99312B	  %5662:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5089:vgpr_32, 0, %5413:vgpr_32, 0, %5089:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99328B	  %5666:vgpr_32 = nofpexcept V_MUL_F32_e32 %5662:vgpr_32, %5661:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99344B	  %5665:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5657:vgpr_32, 0, %5666:vgpr_32, 0, %5662:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99376B	  %5666:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5665:vgpr_32, %5661:vgpr_32, %5666:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99392B	  %5667:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5657:vgpr_32, 0, %5666:vgpr_32, 0, %5662:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99456B	  %5670:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5414:vgpr_32, 0, %5414:vgpr_32, 0, %5090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99472B	  %5674:vgpr_32 = nofpexcept V_RCP_F32_e32 %5670:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99504B	  %5668:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5667:vgpr_32, 0, %5661:vgpr_32, 0, %5666:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99520B	  %6309:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5668:vgpr_32, 0, %5413:vgpr_32, 0, %5089:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99536B	  %5673:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5670:vgpr_32, 0, %5674:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99568B	  %5674:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5673:vgpr_32, %5674:vgpr_32, %5674:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99584B	  %5675:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5090:vgpr_32, 0, %5414:vgpr_32, 0, %5090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99600B	  %5679:vgpr_32 = nofpexcept V_MUL_F32_e32 %5675:vgpr_32, %5674:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99616B	  %5678:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5670:vgpr_32, 0, %5679:vgpr_32, 0, %5675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99648B	  %5679:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5678:vgpr_32, %5674:vgpr_32, %5679:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99664B	  %5680:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5670:vgpr_32, 0, %5679:vgpr_32, 0, %5675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99728B	  %5683:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5415:vgpr_32, 0, %5415:vgpr_32, 0, %5091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99744B	  %5687:vgpr_32 = nofpexcept V_RCP_F32_e32 %5683:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99776B	  %5681:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5680:vgpr_32, 0, %5674:vgpr_32, 0, %5679:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99792B	  %6310:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5681:vgpr_32, 0, %5414:vgpr_32, 0, %5090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99808B	  %5686:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5683:vgpr_32, 0, %5687:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99840B	  %5687:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5686:vgpr_32, %5687:vgpr_32, %5687:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99856B	  %5688:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5091:vgpr_32, 0, %5415:vgpr_32, 0, %5091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99872B	  %5692:vgpr_32 = nofpexcept V_MUL_F32_e32 %5688:vgpr_32, %5687:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99888B	  %5691:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5683:vgpr_32, 0, %5692:vgpr_32, 0, %5688:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99920B	  %5692:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5691:vgpr_32, %5687:vgpr_32, %5692:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99936B	  %5693:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5683:vgpr_32, 0, %5692:vgpr_32, 0, %5688:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100000B	  %5696:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5416:vgpr_32, 0, %5416:vgpr_32, 0, %5092:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100016B	  %5700:vgpr_32 = nofpexcept V_RCP_F32_e32 %5696:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100048B	  %5694:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5693:vgpr_32, 0, %5687:vgpr_32, 0, %5692:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100064B	  %6311:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5694:vgpr_32, 0, %5415:vgpr_32, 0, %5091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100080B	  %5699:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5696:vgpr_32, 0, %5700:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100112B	  %5700:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5699:vgpr_32, %5700:vgpr_32, %5700:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100128B	  %5701:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5092:vgpr_32, 0, %5416:vgpr_32, 0, %5092:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100144B	  %5705:vgpr_32 = nofpexcept V_MUL_F32_e32 %5701:vgpr_32, %5700:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100160B	  %5704:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5696:vgpr_32, 0, %5705:vgpr_32, 0, %5701:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100192B	  %5705:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5704:vgpr_32, %5700:vgpr_32, %5705:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100208B	  %5706:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5696:vgpr_32, 0, %5705:vgpr_32, 0, %5701:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100272B	  %5709:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5417:vgpr_32, 0, %5417:vgpr_32, 0, %5093:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100288B	  %5713:vgpr_32 = nofpexcept V_RCP_F32_e32 %5709:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100320B	  %5707:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5706:vgpr_32, 0, %5700:vgpr_32, 0, %5705:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100336B	  %6312:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5707:vgpr_32, 0, %5416:vgpr_32, 0, %5092:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100352B	  %5712:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5709:vgpr_32, 0, %5713:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100384B	  %5713:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5712:vgpr_32, %5713:vgpr_32, %5713:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100400B	  %5714:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5093:vgpr_32, 0, %5417:vgpr_32, 0, %5093:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100416B	  %5718:vgpr_32 = nofpexcept V_MUL_F32_e32 %5714:vgpr_32, %5713:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100432B	  %5717:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5709:vgpr_32, 0, %5718:vgpr_32, 0, %5714:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100464B	  %5718:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5717:vgpr_32, %5713:vgpr_32, %5718:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100480B	  %5719:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5709:vgpr_32, 0, %5718:vgpr_32, 0, %5714:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100544B	  %5722:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5418:vgpr_32, 0, %5418:vgpr_32, 0, %5094:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100560B	  %5726:vgpr_32 = nofpexcept V_RCP_F32_e32 %5722:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100592B	  %5720:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5719:vgpr_32, 0, %5713:vgpr_32, 0, %5718:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100608B	  %6313:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5720:vgpr_32, 0, %5417:vgpr_32, 0, %5093:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100624B	  %5725:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5722:vgpr_32, 0, %5726:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100656B	  %5726:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5725:vgpr_32, %5726:vgpr_32, %5726:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100672B	  %5727:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5094:vgpr_32, 0, %5418:vgpr_32, 0, %5094:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100688B	  %5731:vgpr_32 = nofpexcept V_MUL_F32_e32 %5727:vgpr_32, %5726:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100704B	  %5730:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5722:vgpr_32, 0, %5731:vgpr_32, 0, %5727:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100736B	  %5731:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5730:vgpr_32, %5726:vgpr_32, %5731:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100752B	  %5732:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5722:vgpr_32, 0, %5731:vgpr_32, 0, %5727:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100816B	  %5735:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5419:vgpr_32, 0, %5419:vgpr_32, 0, %5095:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100832B	  %5739:vgpr_32 = nofpexcept V_RCP_F32_e32 %5735:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100864B	  %5733:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5732:vgpr_32, 0, %5726:vgpr_32, 0, %5731:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100880B	  %6314:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5733:vgpr_32, 0, %5418:vgpr_32, 0, %5094:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100896B	  %5738:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5735:vgpr_32, 0, %5739:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100928B	  %5739:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5738:vgpr_32, %5739:vgpr_32, %5739:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100944B	  %5740:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5095:vgpr_32, 0, %5419:vgpr_32, 0, %5095:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100960B	  %5744:vgpr_32 = nofpexcept V_MUL_F32_e32 %5740:vgpr_32, %5739:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100976B	  %5743:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5735:vgpr_32, 0, %5744:vgpr_32, 0, %5740:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101008B	  %5744:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5743:vgpr_32, %5739:vgpr_32, %5744:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101024B	  %5745:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5735:vgpr_32, 0, %5744:vgpr_32, 0, %5740:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101088B	  %5748:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5420:vgpr_32, 0, %5420:vgpr_32, 0, %5096:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101104B	  %5752:vgpr_32 = nofpexcept V_RCP_F32_e32 %5748:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101136B	  %5746:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5745:vgpr_32, 0, %5739:vgpr_32, 0, %5744:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101152B	  %6315:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5746:vgpr_32, 0, %5419:vgpr_32, 0, %5095:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101168B	  %5751:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5748:vgpr_32, 0, %5752:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101200B	  %5752:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5751:vgpr_32, %5752:vgpr_32, %5752:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101216B	  %5753:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5096:vgpr_32, 0, %5420:vgpr_32, 0, %5096:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101232B	  %5757:vgpr_32 = nofpexcept V_MUL_F32_e32 %5753:vgpr_32, %5752:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101248B	  %5756:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5748:vgpr_32, 0, %5757:vgpr_32, 0, %5753:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101280B	  %5757:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5756:vgpr_32, %5752:vgpr_32, %5757:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101296B	  %5758:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5748:vgpr_32, 0, %5757:vgpr_32, 0, %5753:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101360B	  %5761:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5421:vgpr_32, 0, %5421:vgpr_32, 0, %5097:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101376B	  %5765:vgpr_32 = nofpexcept V_RCP_F32_e32 %5761:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101408B	  %5759:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5758:vgpr_32, 0, %5752:vgpr_32, 0, %5757:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101424B	  %6316:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5759:vgpr_32, 0, %5420:vgpr_32, 0, %5096:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101440B	  %5764:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5761:vgpr_32, 0, %5765:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101472B	  %5765:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5764:vgpr_32, %5765:vgpr_32, %5765:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101488B	  %5766:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5097:vgpr_32, 0, %5421:vgpr_32, 0, %5097:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101504B	  %5770:vgpr_32 = nofpexcept V_MUL_F32_e32 %5766:vgpr_32, %5765:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101520B	  %5769:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5761:vgpr_32, 0, %5770:vgpr_32, 0, %5766:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101552B	  %5770:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5769:vgpr_32, %5765:vgpr_32, %5770:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101568B	  %5771:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5761:vgpr_32, 0, %5770:vgpr_32, 0, %5766:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101632B	  %5774:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5422:vgpr_32, 0, %5422:vgpr_32, 0, %5098:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101648B	  %5778:vgpr_32 = nofpexcept V_RCP_F32_e32 %5774:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101680B	  %5772:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5771:vgpr_32, 0, %5765:vgpr_32, 0, %5770:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101696B	  %6317:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5772:vgpr_32, 0, %5421:vgpr_32, 0, %5097:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101712B	  %5777:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5774:vgpr_32, 0, %5778:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101744B	  %5778:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5777:vgpr_32, %5778:vgpr_32, %5778:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101760B	  %5779:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5098:vgpr_32, 0, %5422:vgpr_32, 0, %5098:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101776B	  %5783:vgpr_32 = nofpexcept V_MUL_F32_e32 %5779:vgpr_32, %5778:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101792B	  %5782:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5774:vgpr_32, 0, %5783:vgpr_32, 0, %5779:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101824B	  %5783:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5782:vgpr_32, %5778:vgpr_32, %5783:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101840B	  %5784:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5774:vgpr_32, 0, %5783:vgpr_32, 0, %5779:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101904B	  %5787:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5423:vgpr_32, 0, %5423:vgpr_32, 0, %5099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101920B	  %5791:vgpr_32 = nofpexcept V_RCP_F32_e32 %5787:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101952B	  %5785:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5784:vgpr_32, 0, %5778:vgpr_32, 0, %5783:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101968B	  %6318:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5785:vgpr_32, 0, %5422:vgpr_32, 0, %5098:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101984B	  %5790:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5787:vgpr_32, 0, %5791:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102016B	  %5791:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5790:vgpr_32, %5791:vgpr_32, %5791:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102032B	  %5792:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5099:vgpr_32, 0, %5423:vgpr_32, 0, %5099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102048B	  %5796:vgpr_32 = nofpexcept V_MUL_F32_e32 %5792:vgpr_32, %5791:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102064B	  %5795:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5787:vgpr_32, 0, %5796:vgpr_32, 0, %5792:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102096B	  %5796:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5795:vgpr_32, %5791:vgpr_32, %5796:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102112B	  %5797:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5787:vgpr_32, 0, %5796:vgpr_32, 0, %5792:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102176B	  %5800:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5424:vgpr_32, 0, %5424:vgpr_32, 0, %5100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102192B	  %5804:vgpr_32 = nofpexcept V_RCP_F32_e32 %5800:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102224B	  %5798:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5797:vgpr_32, 0, %5791:vgpr_32, 0, %5796:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102240B	  %6319:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5798:vgpr_32, 0, %5423:vgpr_32, 0, %5099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102256B	  %5803:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5800:vgpr_32, 0, %5804:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102288B	  %5804:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5803:vgpr_32, %5804:vgpr_32, %5804:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102304B	  %5805:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5100:vgpr_32, 0, %5424:vgpr_32, 0, %5100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102320B	  %5809:vgpr_32 = nofpexcept V_MUL_F32_e32 %5805:vgpr_32, %5804:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102336B	  %5808:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5800:vgpr_32, 0, %5809:vgpr_32, 0, %5805:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102368B	  %5809:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5808:vgpr_32, %5804:vgpr_32, %5809:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102384B	  %5810:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5800:vgpr_32, 0, %5809:vgpr_32, 0, %5805:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102448B	  %5813:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5425:vgpr_32, 0, %5425:vgpr_32, 0, %5101:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102464B	  %5817:vgpr_32 = nofpexcept V_RCP_F32_e32 %5813:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102496B	  %5811:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5810:vgpr_32, 0, %5804:vgpr_32, 0, %5809:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102512B	  %6320:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5811:vgpr_32, 0, %5424:vgpr_32, 0, %5100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102528B	  %5816:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5813:vgpr_32, 0, %5817:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102560B	  %5817:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5816:vgpr_32, %5817:vgpr_32, %5817:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102576B	  %5818:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5101:vgpr_32, 0, %5425:vgpr_32, 0, %5101:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102592B	  %5822:vgpr_32 = nofpexcept V_MUL_F32_e32 %5818:vgpr_32, %5817:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102608B	  %5821:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5813:vgpr_32, 0, %5822:vgpr_32, 0, %5818:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102640B	  %5822:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5821:vgpr_32, %5817:vgpr_32, %5822:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102656B	  %5823:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5813:vgpr_32, 0, %5822:vgpr_32, 0, %5818:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102720B	  %5826:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5426:vgpr_32, 0, %5426:vgpr_32, 0, %5102:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102736B	  %5830:vgpr_32 = nofpexcept V_RCP_F32_e32 %5826:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102768B	  %5824:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5823:vgpr_32, 0, %5817:vgpr_32, 0, %5822:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102784B	  %6321:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5824:vgpr_32, 0, %5425:vgpr_32, 0, %5101:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102800B	  %5829:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5826:vgpr_32, 0, %5830:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102832B	  %5830:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5829:vgpr_32, %5830:vgpr_32, %5830:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102848B	  %5831:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5102:vgpr_32, 0, %5426:vgpr_32, 0, %5102:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102864B	  %5835:vgpr_32 = nofpexcept V_MUL_F32_e32 %5831:vgpr_32, %5830:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102880B	  %5834:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5826:vgpr_32, 0, %5835:vgpr_32, 0, %5831:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102912B	  %5835:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5834:vgpr_32, %5830:vgpr_32, %5835:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102928B	  %5836:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5826:vgpr_32, 0, %5835:vgpr_32, 0, %5831:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102992B	  %5839:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5427:vgpr_32, 0, %5427:vgpr_32, 0, %5103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103008B	  %5843:vgpr_32 = nofpexcept V_RCP_F32_e32 %5839:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103040B	  %5837:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5836:vgpr_32, 0, %5830:vgpr_32, 0, %5835:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103056B	  %6322:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5837:vgpr_32, 0, %5426:vgpr_32, 0, %5102:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103072B	  %5842:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5839:vgpr_32, 0, %5843:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103104B	  %5843:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5842:vgpr_32, %5843:vgpr_32, %5843:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103120B	  %5844:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5103:vgpr_32, 0, %5427:vgpr_32, 0, %5103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103136B	  %5848:vgpr_32 = nofpexcept V_MUL_F32_e32 %5844:vgpr_32, %5843:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103152B	  %5847:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5839:vgpr_32, 0, %5848:vgpr_32, 0, %5844:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103184B	  %5848:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5847:vgpr_32, %5843:vgpr_32, %5848:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103200B	  %5849:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5839:vgpr_32, 0, %5848:vgpr_32, 0, %5844:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103264B	  %5852:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5428:vgpr_32, 0, %5428:vgpr_32, 0, %5104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103280B	  %5856:vgpr_32 = nofpexcept V_RCP_F32_e32 %5852:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103312B	  %5850:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5849:vgpr_32, 0, %5843:vgpr_32, 0, %5848:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103328B	  %6323:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5850:vgpr_32, 0, %5427:vgpr_32, 0, %5103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103344B	  %5855:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5852:vgpr_32, 0, %5856:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103376B	  %5856:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5855:vgpr_32, %5856:vgpr_32, %5856:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103392B	  %5857:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5104:vgpr_32, 0, %5428:vgpr_32, 0, %5104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103408B	  %5861:vgpr_32 = nofpexcept V_MUL_F32_e32 %5857:vgpr_32, %5856:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103424B	  %5860:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5852:vgpr_32, 0, %5861:vgpr_32, 0, %5857:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103456B	  %5861:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5860:vgpr_32, %5856:vgpr_32, %5861:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103472B	  %5862:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5852:vgpr_32, 0, %5861:vgpr_32, 0, %5857:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103536B	  %5865:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5429:vgpr_32, 0, %5429:vgpr_32, 0, %5105:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103552B	  %5869:vgpr_32 = nofpexcept V_RCP_F32_e32 %5865:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103584B	  %5863:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5862:vgpr_32, 0, %5856:vgpr_32, 0, %5861:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103600B	  %6324:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5863:vgpr_32, 0, %5428:vgpr_32, 0, %5104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103616B	  %5868:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5865:vgpr_32, 0, %5869:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103648B	  %5869:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5868:vgpr_32, %5869:vgpr_32, %5869:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103664B	  %5870:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5105:vgpr_32, 0, %5429:vgpr_32, 0, %5105:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103680B	  %5874:vgpr_32 = nofpexcept V_MUL_F32_e32 %5870:vgpr_32, %5869:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103696B	  %5873:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5865:vgpr_32, 0, %5874:vgpr_32, 0, %5870:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103728B	  %5874:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5873:vgpr_32, %5869:vgpr_32, %5874:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103744B	  %5875:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5865:vgpr_32, 0, %5874:vgpr_32, 0, %5870:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103808B	  %5878:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5430:vgpr_32, 0, %5430:vgpr_32, 0, %5106:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103824B	  %5882:vgpr_32 = nofpexcept V_RCP_F32_e32 %5878:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103856B	  %5876:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5875:vgpr_32, 0, %5869:vgpr_32, 0, %5874:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103872B	  %6325:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5876:vgpr_32, 0, %5429:vgpr_32, 0, %5105:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103888B	  %5881:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5878:vgpr_32, 0, %5882:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103920B	  %5882:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5881:vgpr_32, %5882:vgpr_32, %5882:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103936B	  %5883:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5106:vgpr_32, 0, %5430:vgpr_32, 0, %5106:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103952B	  %5887:vgpr_32 = nofpexcept V_MUL_F32_e32 %5883:vgpr_32, %5882:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103968B	  %5886:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5878:vgpr_32, 0, %5887:vgpr_32, 0, %5883:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104000B	  %5887:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5886:vgpr_32, %5882:vgpr_32, %5887:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104016B	  %5888:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5878:vgpr_32, 0, %5887:vgpr_32, 0, %5883:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104080B	  %5891:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5431:vgpr_32, 0, %5431:vgpr_32, 0, %5107:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104096B	  %5895:vgpr_32 = nofpexcept V_RCP_F32_e32 %5891:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104128B	  %5889:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5888:vgpr_32, 0, %5882:vgpr_32, 0, %5887:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104144B	  %6326:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5889:vgpr_32, 0, %5430:vgpr_32, 0, %5106:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104160B	  %5894:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5891:vgpr_32, 0, %5895:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104192B	  %5895:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5894:vgpr_32, %5895:vgpr_32, %5895:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104208B	  %5896:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5107:vgpr_32, 0, %5431:vgpr_32, 0, %5107:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104224B	  %5900:vgpr_32 = nofpexcept V_MUL_F32_e32 %5896:vgpr_32, %5895:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104240B	  %5899:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5891:vgpr_32, 0, %5900:vgpr_32, 0, %5896:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104272B	  %5900:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5899:vgpr_32, %5895:vgpr_32, %5900:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104288B	  %5901:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5891:vgpr_32, 0, %5900:vgpr_32, 0, %5896:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104352B	  %5904:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5432:vgpr_32, 0, %5432:vgpr_32, 0, %5108:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104368B	  %5908:vgpr_32 = nofpexcept V_RCP_F32_e32 %5904:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104400B	  %5902:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5901:vgpr_32, 0, %5895:vgpr_32, 0, %5900:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104416B	  %6327:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5902:vgpr_32, 0, %5431:vgpr_32, 0, %5107:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104432B	  %5907:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5904:vgpr_32, 0, %5908:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104464B	  %5908:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5907:vgpr_32, %5908:vgpr_32, %5908:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104480B	  %5909:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5108:vgpr_32, 0, %5432:vgpr_32, 0, %5108:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104496B	  %5913:vgpr_32 = nofpexcept V_MUL_F32_e32 %5909:vgpr_32, %5908:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104512B	  %5912:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5904:vgpr_32, 0, %5913:vgpr_32, 0, %5909:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104544B	  %5913:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5912:vgpr_32, %5908:vgpr_32, %5913:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104560B	  %5914:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5904:vgpr_32, 0, %5913:vgpr_32, 0, %5909:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104624B	  %5917:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5433:vgpr_32, 0, %5433:vgpr_32, 0, %5109:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104640B	  %5921:vgpr_32 = nofpexcept V_RCP_F32_e32 %5917:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104672B	  %5915:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5914:vgpr_32, 0, %5908:vgpr_32, 0, %5913:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104688B	  %6328:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5915:vgpr_32, 0, %5432:vgpr_32, 0, %5108:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104704B	  %5920:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5917:vgpr_32, 0, %5921:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104736B	  %5921:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5920:vgpr_32, %5921:vgpr_32, %5921:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104752B	  %5922:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5109:vgpr_32, 0, %5433:vgpr_32, 0, %5109:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104768B	  %5926:vgpr_32 = nofpexcept V_MUL_F32_e32 %5922:vgpr_32, %5921:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104784B	  %5925:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5917:vgpr_32, 0, %5926:vgpr_32, 0, %5922:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104816B	  %5926:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5925:vgpr_32, %5921:vgpr_32, %5926:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104832B	  %5927:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5917:vgpr_32, 0, %5926:vgpr_32, 0, %5922:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104896B	  %5930:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5434:vgpr_32, 0, %5434:vgpr_32, 0, %5110:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104912B	  %5934:vgpr_32 = nofpexcept V_RCP_F32_e32 %5930:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104944B	  %5928:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5927:vgpr_32, 0, %5921:vgpr_32, 0, %5926:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104960B	  %6329:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5928:vgpr_32, 0, %5433:vgpr_32, 0, %5109:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104976B	  %5933:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5930:vgpr_32, 0, %5934:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105008B	  %5934:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5933:vgpr_32, %5934:vgpr_32, %5934:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105024B	  %5935:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5110:vgpr_32, 0, %5434:vgpr_32, 0, %5110:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105040B	  %5939:vgpr_32 = nofpexcept V_MUL_F32_e32 %5935:vgpr_32, %5934:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105056B	  %5938:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5930:vgpr_32, 0, %5939:vgpr_32, 0, %5935:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105088B	  %5939:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5938:vgpr_32, %5934:vgpr_32, %5939:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105104B	  %5940:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5930:vgpr_32, 0, %5939:vgpr_32, 0, %5935:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105168B	  %5943:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5435:vgpr_32, 0, %5435:vgpr_32, 0, %5111:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105184B	  %5947:vgpr_32 = nofpexcept V_RCP_F32_e32 %5943:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105216B	  %5941:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5940:vgpr_32, 0, %5934:vgpr_32, 0, %5939:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105232B	  %6330:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5941:vgpr_32, 0, %5434:vgpr_32, 0, %5110:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105248B	  %5946:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5943:vgpr_32, 0, %5947:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105280B	  %5947:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5946:vgpr_32, %5947:vgpr_32, %5947:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105296B	  %5948:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5111:vgpr_32, 0, %5435:vgpr_32, 0, %5111:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105312B	  %5952:vgpr_32 = nofpexcept V_MUL_F32_e32 %5948:vgpr_32, %5947:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105328B	  %5951:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5943:vgpr_32, 0, %5952:vgpr_32, 0, %5948:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105360B	  %5952:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5951:vgpr_32, %5947:vgpr_32, %5952:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105376B	  %5953:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5943:vgpr_32, 0, %5952:vgpr_32, 0, %5948:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105440B	  %5956:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5436:vgpr_32, 0, %5436:vgpr_32, 0, %5112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105456B	  %5960:vgpr_32 = nofpexcept V_RCP_F32_e32 %5956:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105488B	  %5954:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5953:vgpr_32, 0, %5947:vgpr_32, 0, %5952:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105504B	  %6331:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5954:vgpr_32, 0, %5435:vgpr_32, 0, %5111:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105520B	  %5959:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5956:vgpr_32, 0, %5960:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105552B	  %5960:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5959:vgpr_32, %5960:vgpr_32, %5960:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105568B	  %5961:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5112:vgpr_32, 0, %5436:vgpr_32, 0, %5112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105584B	  %5965:vgpr_32 = nofpexcept V_MUL_F32_e32 %5961:vgpr_32, %5960:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105600B	  %5964:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5956:vgpr_32, 0, %5965:vgpr_32, 0, %5961:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105632B	  %5965:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5964:vgpr_32, %5960:vgpr_32, %5965:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105648B	  %5966:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5956:vgpr_32, 0, %5965:vgpr_32, 0, %5961:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105712B	  %5969:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5437:vgpr_32, 0, %5437:vgpr_32, 0, %5113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105728B	  %5973:vgpr_32 = nofpexcept V_RCP_F32_e32 %5969:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105760B	  %5967:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5966:vgpr_32, 0, %5960:vgpr_32, 0, %5965:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105776B	  %6332:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5967:vgpr_32, 0, %5436:vgpr_32, 0, %5112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105792B	  %5972:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5969:vgpr_32, 0, %5973:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105824B	  %5973:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5972:vgpr_32, %5973:vgpr_32, %5973:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105840B	  %5974:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5113:vgpr_32, 0, %5437:vgpr_32, 0, %5113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105856B	  %5978:vgpr_32 = nofpexcept V_MUL_F32_e32 %5974:vgpr_32, %5973:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105872B	  %5977:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5969:vgpr_32, 0, %5978:vgpr_32, 0, %5974:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105904B	  %5978:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5977:vgpr_32, %5973:vgpr_32, %5978:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105920B	  %5979:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5969:vgpr_32, 0, %5978:vgpr_32, 0, %5974:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105984B	  %5982:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5438:vgpr_32, 0, %5438:vgpr_32, 0, %5114:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106000B	  %5986:vgpr_32 = nofpexcept V_RCP_F32_e32 %5982:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106032B	  %5980:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5979:vgpr_32, 0, %5973:vgpr_32, 0, %5978:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106048B	  %6333:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5980:vgpr_32, 0, %5437:vgpr_32, 0, %5113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106064B	  %5985:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5982:vgpr_32, 0, %5986:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106096B	  %5986:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5985:vgpr_32, %5986:vgpr_32, %5986:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106112B	  %5987:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5114:vgpr_32, 0, %5438:vgpr_32, 0, %5114:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106128B	  %5991:vgpr_32 = nofpexcept V_MUL_F32_e32 %5987:vgpr_32, %5986:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106144B	  %5990:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5982:vgpr_32, 0, %5991:vgpr_32, 0, %5987:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106176B	  %5991:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5990:vgpr_32, %5986:vgpr_32, %5991:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106192B	  %5992:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5982:vgpr_32, 0, %5991:vgpr_32, 0, %5987:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106256B	  %5995:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5439:vgpr_32, 0, %5439:vgpr_32, 0, %5115:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106272B	  %5999:vgpr_32 = nofpexcept V_RCP_F32_e32 %5995:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106304B	  %5993:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5992:vgpr_32, 0, %5986:vgpr_32, 0, %5991:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106320B	  %6334:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5993:vgpr_32, 0, %5438:vgpr_32, 0, %5114:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106336B	  %5998:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5995:vgpr_32, 0, %5999:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106368B	  %5999:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5998:vgpr_32, %5999:vgpr_32, %5999:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106384B	  %6000:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5115:vgpr_32, 0, %5439:vgpr_32, 0, %5115:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106400B	  %6004:vgpr_32 = nofpexcept V_MUL_F32_e32 %6000:vgpr_32, %5999:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106416B	  %6003:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5995:vgpr_32, 0, %6004:vgpr_32, 0, %6000:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106448B	  %6004:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6003:vgpr_32, %5999:vgpr_32, %6004:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106464B	  %6005:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5995:vgpr_32, 0, %6004:vgpr_32, 0, %6000:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106528B	  %6008:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5440:vgpr_32, 0, %5440:vgpr_32, 0, %5116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106544B	  %6012:vgpr_32 = nofpexcept V_RCP_F32_e32 %6008:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106576B	  %6006:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6005:vgpr_32, 0, %5999:vgpr_32, 0, %6004:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106592B	  %6335:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6006:vgpr_32, 0, %5439:vgpr_32, 0, %5115:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106608B	  %6011:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6008:vgpr_32, 0, %6012:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106640B	  %6012:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6011:vgpr_32, %6012:vgpr_32, %6012:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106656B	  %6013:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5116:vgpr_32, 0, %5440:vgpr_32, 0, %5116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106672B	  %6017:vgpr_32 = nofpexcept V_MUL_F32_e32 %6013:vgpr_32, %6012:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106688B	  %6016:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6008:vgpr_32, 0, %6017:vgpr_32, 0, %6013:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106720B	  %6017:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6016:vgpr_32, %6012:vgpr_32, %6017:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106736B	  %6018:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6008:vgpr_32, 0, %6017:vgpr_32, 0, %6013:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106800B	  %6021:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5441:vgpr_32, 0, %5441:vgpr_32, 0, %5117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106816B	  %6025:vgpr_32 = nofpexcept V_RCP_F32_e32 %6021:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106848B	  %6019:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6018:vgpr_32, 0, %6012:vgpr_32, 0, %6017:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106864B	  %6336:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6019:vgpr_32, 0, %5440:vgpr_32, 0, %5116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106880B	  %6024:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6021:vgpr_32, 0, %6025:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106912B	  %6025:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6024:vgpr_32, %6025:vgpr_32, %6025:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106928B	  %6026:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5117:vgpr_32, 0, %5441:vgpr_32, 0, %5117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106944B	  %6030:vgpr_32 = nofpexcept V_MUL_F32_e32 %6026:vgpr_32, %6025:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106960B	  %6029:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6021:vgpr_32, 0, %6030:vgpr_32, 0, %6026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106992B	  %6030:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6029:vgpr_32, %6025:vgpr_32, %6030:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107008B	  %6031:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6021:vgpr_32, 0, %6030:vgpr_32, 0, %6026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107072B	  %6034:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5442:vgpr_32, 0, %5442:vgpr_32, 0, %5118:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107088B	  %6038:vgpr_32 = nofpexcept V_RCP_F32_e32 %6034:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107120B	  %6032:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6031:vgpr_32, 0, %6025:vgpr_32, 0, %6030:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107136B	  %6337:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6032:vgpr_32, 0, %5441:vgpr_32, 0, %5117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107152B	  %6037:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6034:vgpr_32, 0, %6038:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107184B	  %6038:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6037:vgpr_32, %6038:vgpr_32, %6038:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107200B	  %6039:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5118:vgpr_32, 0, %5442:vgpr_32, 0, %5118:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107216B	  %6043:vgpr_32 = nofpexcept V_MUL_F32_e32 %6039:vgpr_32, %6038:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107232B	  %6042:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6034:vgpr_32, 0, %6043:vgpr_32, 0, %6039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107264B	  %6043:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6042:vgpr_32, %6038:vgpr_32, %6043:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107280B	  %6044:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6034:vgpr_32, 0, %6043:vgpr_32, 0, %6039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107344B	  %6047:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5443:vgpr_32, 0, %5443:vgpr_32, 0, %5119:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107360B	  %6051:vgpr_32 = nofpexcept V_RCP_F32_e32 %6047:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107392B	  %6045:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6044:vgpr_32, 0, %6038:vgpr_32, 0, %6043:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107408B	  %6338:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6045:vgpr_32, 0, %5442:vgpr_32, 0, %5118:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107424B	  %6050:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6047:vgpr_32, 0, %6051:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107456B	  %6051:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6050:vgpr_32, %6051:vgpr_32, %6051:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107472B	  %6052:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5119:vgpr_32, 0, %5443:vgpr_32, 0, %5119:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107488B	  %6056:vgpr_32 = nofpexcept V_MUL_F32_e32 %6052:vgpr_32, %6051:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107504B	  %6055:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6047:vgpr_32, 0, %6056:vgpr_32, 0, %6052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107536B	  %6056:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6055:vgpr_32, %6051:vgpr_32, %6056:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107552B	  %6057:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6047:vgpr_32, 0, %6056:vgpr_32, 0, %6052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107616B	  %6060:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5444:vgpr_32, 0, %5444:vgpr_32, 0, %5120:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107632B	  %6064:vgpr_32 = nofpexcept V_RCP_F32_e32 %6060:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107664B	  %6058:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6057:vgpr_32, 0, %6051:vgpr_32, 0, %6056:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107680B	  %6339:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6058:vgpr_32, 0, %5443:vgpr_32, 0, %5119:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107696B	  %6063:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6060:vgpr_32, 0, %6064:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107728B	  %6064:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6063:vgpr_32, %6064:vgpr_32, %6064:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107744B	  %6065:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5120:vgpr_32, 0, %5444:vgpr_32, 0, %5120:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107760B	  %6069:vgpr_32 = nofpexcept V_MUL_F32_e32 %6065:vgpr_32, %6064:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107776B	  %6068:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6060:vgpr_32, 0, %6069:vgpr_32, 0, %6065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107808B	  %6069:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6068:vgpr_32, %6064:vgpr_32, %6069:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107824B	  %6070:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6060:vgpr_32, 0, %6069:vgpr_32, 0, %6065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107888B	  %6073:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5445:vgpr_32, 0, %5445:vgpr_32, 0, %5121:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107904B	  %6077:vgpr_32 = nofpexcept V_RCP_F32_e32 %6073:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107936B	  %6071:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6070:vgpr_32, 0, %6064:vgpr_32, 0, %6069:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107952B	  %6340:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6071:vgpr_32, 0, %5444:vgpr_32, 0, %5120:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107968B	  %6076:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6073:vgpr_32, 0, %6077:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108000B	  %6077:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6076:vgpr_32, %6077:vgpr_32, %6077:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108016B	  %6078:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5121:vgpr_32, 0, %5445:vgpr_32, 0, %5121:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108032B	  %6082:vgpr_32 = nofpexcept V_MUL_F32_e32 %6078:vgpr_32, %6077:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108048B	  %6081:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6073:vgpr_32, 0, %6082:vgpr_32, 0, %6078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108080B	  %6082:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6081:vgpr_32, %6077:vgpr_32, %6082:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108096B	  %6083:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6073:vgpr_32, 0, %6082:vgpr_32, 0, %6078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108160B	  %6086:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5446:vgpr_32, 0, %5446:vgpr_32, 0, %5122:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108176B	  %6090:vgpr_32 = nofpexcept V_RCP_F32_e32 %6086:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108208B	  %6084:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6083:vgpr_32, 0, %6077:vgpr_32, 0, %6082:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108224B	  %6341:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6084:vgpr_32, 0, %5445:vgpr_32, 0, %5121:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108240B	  %6089:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6086:vgpr_32, 0, %6090:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108272B	  %6090:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6089:vgpr_32, %6090:vgpr_32, %6090:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108288B	  %6091:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5122:vgpr_32, 0, %5446:vgpr_32, 0, %5122:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108304B	  %6095:vgpr_32 = nofpexcept V_MUL_F32_e32 %6091:vgpr_32, %6090:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108320B	  %6094:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6086:vgpr_32, 0, %6095:vgpr_32, 0, %6091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108352B	  %6095:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6094:vgpr_32, %6090:vgpr_32, %6095:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108368B	  %6096:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6086:vgpr_32, 0, %6095:vgpr_32, 0, %6091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108432B	  %6099:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5447:vgpr_32, 0, %5447:vgpr_32, 0, %5123:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108448B	  %6103:vgpr_32 = nofpexcept V_RCP_F32_e32 %6099:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108480B	  %6097:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6096:vgpr_32, 0, %6090:vgpr_32, 0, %6095:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108496B	  %6342:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6097:vgpr_32, 0, %5446:vgpr_32, 0, %5122:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108512B	  %6102:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6099:vgpr_32, 0, %6103:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108544B	  %6103:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6102:vgpr_32, %6103:vgpr_32, %6103:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108560B	  %6104:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5123:vgpr_32, 0, %5447:vgpr_32, 0, %5123:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108576B	  %6108:vgpr_32 = nofpexcept V_MUL_F32_e32 %6104:vgpr_32, %6103:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108592B	  %6107:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6099:vgpr_32, 0, %6108:vgpr_32, 0, %6104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108624B	  %6108:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6107:vgpr_32, %6103:vgpr_32, %6108:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108640B	  %6109:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6099:vgpr_32, 0, %6108:vgpr_32, 0, %6104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108704B	  %6112:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5448:vgpr_32, 0, %5448:vgpr_32, 0, %5124:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108720B	  %6116:vgpr_32 = nofpexcept V_RCP_F32_e32 %6112:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108752B	  %6110:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6109:vgpr_32, 0, %6103:vgpr_32, 0, %6108:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108768B	  %6343:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6110:vgpr_32, 0, %5447:vgpr_32, 0, %5123:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108784B	  %6115:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6112:vgpr_32, 0, %6116:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108816B	  %6116:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6115:vgpr_32, %6116:vgpr_32, %6116:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108832B	  %6117:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5124:vgpr_32, 0, %5448:vgpr_32, 0, %5124:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108848B	  %6121:vgpr_32 = nofpexcept V_MUL_F32_e32 %6117:vgpr_32, %6116:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108864B	  %6120:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6112:vgpr_32, 0, %6121:vgpr_32, 0, %6117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108896B	  %6121:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6120:vgpr_32, %6116:vgpr_32, %6121:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108912B	  %6122:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6112:vgpr_32, 0, %6121:vgpr_32, 0, %6117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108976B	  %6125:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5449:vgpr_32, 0, %5449:vgpr_32, 0, %5125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108992B	  %6129:vgpr_32 = nofpexcept V_RCP_F32_e32 %6125:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109024B	  %6123:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6122:vgpr_32, 0, %6116:vgpr_32, 0, %6121:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109040B	  %6344:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6123:vgpr_32, 0, %5448:vgpr_32, 0, %5124:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109056B	  %6128:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6125:vgpr_32, 0, %6129:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109088B	  %6129:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6128:vgpr_32, %6129:vgpr_32, %6129:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109104B	  %6130:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5125:vgpr_32, 0, %5449:vgpr_32, 0, %5125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109120B	  %6134:vgpr_32 = nofpexcept V_MUL_F32_e32 %6130:vgpr_32, %6129:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109136B	  %6133:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6125:vgpr_32, 0, %6134:vgpr_32, 0, %6130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109168B	  %6134:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6133:vgpr_32, %6129:vgpr_32, %6134:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109184B	  %6135:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6125:vgpr_32, 0, %6134:vgpr_32, 0, %6130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109248B	  %6138:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5450:vgpr_32, 0, %5450:vgpr_32, 0, %5126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109264B	  %6142:vgpr_32 = nofpexcept V_RCP_F32_e32 %6138:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109296B	  %6136:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6135:vgpr_32, 0, %6129:vgpr_32, 0, %6134:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109312B	  %6345:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6136:vgpr_32, 0, %5449:vgpr_32, 0, %5125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109328B	  %6141:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6138:vgpr_32, 0, %6142:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109360B	  %6142:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6141:vgpr_32, %6142:vgpr_32, %6142:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109376B	  %6143:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5126:vgpr_32, 0, %5450:vgpr_32, 0, %5126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109392B	  %6147:vgpr_32 = nofpexcept V_MUL_F32_e32 %6143:vgpr_32, %6142:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109408B	  %6146:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6138:vgpr_32, 0, %6147:vgpr_32, 0, %6143:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109440B	  %6147:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6146:vgpr_32, %6142:vgpr_32, %6147:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109456B	  %6148:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6138:vgpr_32, 0, %6147:vgpr_32, 0, %6143:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109520B	  %6151:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5451:vgpr_32, 0, %5451:vgpr_32, 0, %5127:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109536B	  %6155:vgpr_32 = nofpexcept V_RCP_F32_e32 %6151:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109568B	  %6149:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6148:vgpr_32, 0, %6142:vgpr_32, 0, %6147:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109584B	  %6346:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6149:vgpr_32, 0, %5450:vgpr_32, 0, %5126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109600B	  %6154:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6151:vgpr_32, 0, %6155:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109632B	  %6155:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6154:vgpr_32, %6155:vgpr_32, %6155:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109648B	  %6156:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5127:vgpr_32, 0, %5451:vgpr_32, 0, %5127:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109664B	  %6160:vgpr_32 = nofpexcept V_MUL_F32_e32 %6156:vgpr_32, %6155:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109680B	  %6159:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6151:vgpr_32, 0, %6160:vgpr_32, 0, %6156:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109712B	  %6160:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6159:vgpr_32, %6155:vgpr_32, %6160:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109728B	  %6161:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6151:vgpr_32, 0, %6160:vgpr_32, 0, %6156:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109792B	  %6164:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5452:vgpr_32, 0, %5452:vgpr_32, 0, %5128:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109808B	  %6168:vgpr_32 = nofpexcept V_RCP_F32_e32 %6164:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109840B	  %6162:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6161:vgpr_32, 0, %6155:vgpr_32, 0, %6160:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109856B	  %6347:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6162:vgpr_32, 0, %5451:vgpr_32, 0, %5127:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109872B	  %6167:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6164:vgpr_32, 0, %6168:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109904B	  %6168:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6167:vgpr_32, %6168:vgpr_32, %6168:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109920B	  %6169:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5128:vgpr_32, 0, %5452:vgpr_32, 0, %5128:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109936B	  %6173:vgpr_32 = nofpexcept V_MUL_F32_e32 %6169:vgpr_32, %6168:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109952B	  %6172:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6164:vgpr_32, 0, %6173:vgpr_32, 0, %6169:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109984B	  %6173:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6172:vgpr_32, %6168:vgpr_32, %6173:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110000B	  %6174:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6164:vgpr_32, 0, %6173:vgpr_32, 0, %6169:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110064B	  %6177:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5453:vgpr_32, 0, %5453:vgpr_32, 0, %5129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110080B	  %6181:vgpr_32 = nofpexcept V_RCP_F32_e32 %6177:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110112B	  %6175:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6174:vgpr_32, 0, %6168:vgpr_32, 0, %6173:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110128B	  %6348:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6175:vgpr_32, 0, %5452:vgpr_32, 0, %5128:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110144B	  %6180:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6177:vgpr_32, 0, %6181:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110176B	  %6181:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6180:vgpr_32, %6181:vgpr_32, %6181:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110192B	  %6182:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5129:vgpr_32, 0, %5453:vgpr_32, 0, %5129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110208B	  %6186:vgpr_32 = nofpexcept V_MUL_F32_e32 %6182:vgpr_32, %6181:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110224B	  %6185:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6177:vgpr_32, 0, %6186:vgpr_32, 0, %6182:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110256B	  %6186:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6185:vgpr_32, %6181:vgpr_32, %6186:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110272B	  %6187:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6177:vgpr_32, 0, %6186:vgpr_32, 0, %6182:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110336B	  %6190:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5454:vgpr_32, 0, %5454:vgpr_32, 0, %5130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110352B	  %6194:vgpr_32 = nofpexcept V_RCP_F32_e32 %6190:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110384B	  %6188:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6187:vgpr_32, 0, %6181:vgpr_32, 0, %6186:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110400B	  %6349:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6188:vgpr_32, 0, %5453:vgpr_32, 0, %5129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110416B	  %6193:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6190:vgpr_32, 0, %6194:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110448B	  %6194:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6193:vgpr_32, %6194:vgpr_32, %6194:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110464B	  %6195:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5130:vgpr_32, 0, %5454:vgpr_32, 0, %5130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110480B	  %6199:vgpr_32 = nofpexcept V_MUL_F32_e32 %6195:vgpr_32, %6194:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110496B	  %6198:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6190:vgpr_32, 0, %6199:vgpr_32, 0, %6195:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110528B	  %6199:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6198:vgpr_32, %6194:vgpr_32, %6199:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110544B	  %6200:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6190:vgpr_32, 0, %6199:vgpr_32, 0, %6195:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110608B	  %6203:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5455:vgpr_32, 0, %5455:vgpr_32, 0, %5131:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110624B	  %6207:vgpr_32 = nofpexcept V_RCP_F32_e32 %6203:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110656B	  %6201:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6200:vgpr_32, 0, %6194:vgpr_32, 0, %6199:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110672B	  %6350:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6201:vgpr_32, 0, %5454:vgpr_32, 0, %5130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110688B	  %6206:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6203:vgpr_32, 0, %6207:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110720B	  %6207:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6206:vgpr_32, %6207:vgpr_32, %6207:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110736B	  %6208:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5131:vgpr_32, 0, %5455:vgpr_32, 0, %5131:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110752B	  %6212:vgpr_32 = nofpexcept V_MUL_F32_e32 %6208:vgpr_32, %6207:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110768B	  %6211:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6203:vgpr_32, 0, %6212:vgpr_32, 0, %6208:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110800B	  %6212:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6211:vgpr_32, %6207:vgpr_32, %6212:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110816B	  %6213:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6203:vgpr_32, 0, %6212:vgpr_32, 0, %6208:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110880B	  %6216:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5456:vgpr_32, 0, %5456:vgpr_32, 0, %5132:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110896B	  %6220:vgpr_32 = nofpexcept V_RCP_F32_e32 %6216:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110928B	  %6214:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6213:vgpr_32, 0, %6207:vgpr_32, 0, %6212:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110944B	  %6351:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6214:vgpr_32, 0, %5455:vgpr_32, 0, %5131:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110960B	  %6219:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6216:vgpr_32, 0, %6220:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110992B	  %6220:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6219:vgpr_32, %6220:vgpr_32, %6220:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111008B	  %6221:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5132:vgpr_32, 0, %5456:vgpr_32, 0, %5132:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111024B	  %6225:vgpr_32 = nofpexcept V_MUL_F32_e32 %6221:vgpr_32, %6220:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111040B	  %6224:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6216:vgpr_32, 0, %6225:vgpr_32, 0, %6221:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111072B	  %6225:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6224:vgpr_32, %6220:vgpr_32, %6225:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111088B	  %6226:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6216:vgpr_32, 0, %6225:vgpr_32, 0, %6221:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111152B	  %6229:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5457:vgpr_32, 0, %5457:vgpr_32, 0, %5133:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111168B	  %6233:vgpr_32 = nofpexcept V_RCP_F32_e32 %6229:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111200B	  %6227:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6226:vgpr_32, 0, %6220:vgpr_32, 0, %6225:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111216B	  %6352:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6227:vgpr_32, 0, %5456:vgpr_32, 0, %5132:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111232B	  %6232:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6229:vgpr_32, 0, %6233:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111264B	  %6233:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6232:vgpr_32, %6233:vgpr_32, %6233:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111280B	  %6234:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5133:vgpr_32, 0, %5457:vgpr_32, 0, %5133:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111296B	  %6238:vgpr_32 = nofpexcept V_MUL_F32_e32 %6234:vgpr_32, %6233:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111312B	  %6237:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6229:vgpr_32, 0, %6238:vgpr_32, 0, %6234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111344B	  %6238:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6237:vgpr_32, %6233:vgpr_32, %6238:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111360B	  %6239:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6229:vgpr_32, 0, %6238:vgpr_32, 0, %6234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111424B	  %6242:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5458:vgpr_32, 0, %5458:vgpr_32, 0, %5134:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111440B	  %6246:vgpr_32 = nofpexcept V_RCP_F32_e32 %6242:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111472B	  %6240:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6239:vgpr_32, 0, %6233:vgpr_32, 0, %6238:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111488B	  %6353:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6240:vgpr_32, 0, %5457:vgpr_32, 0, %5133:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111504B	  %6245:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6242:vgpr_32, 0, %6246:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111536B	  %6246:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6245:vgpr_32, %6246:vgpr_32, %6246:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111552B	  %6247:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5134:vgpr_32, 0, %5458:vgpr_32, 0, %5134:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111568B	  %6251:vgpr_32 = nofpexcept V_MUL_F32_e32 %6247:vgpr_32, %6246:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111584B	  %6250:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6242:vgpr_32, 0, %6251:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111616B	  %6251:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6250:vgpr_32, %6246:vgpr_32, %6251:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111632B	  %6252:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6242:vgpr_32, 0, %6251:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111696B	  %6255:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5459:vgpr_32, 0, %5459:vgpr_32, 0, %5135:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111712B	  %6259:vgpr_32 = nofpexcept V_RCP_F32_e32 %6255:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111744B	  %6253:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6252:vgpr_32, 0, %6246:vgpr_32, 0, %6251:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111760B	  %6354:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6253:vgpr_32, 0, %5458:vgpr_32, 0, %5134:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111776B	  %6258:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6255:vgpr_32, 0, %6259:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111808B	  %6259:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6258:vgpr_32, %6259:vgpr_32, %6259:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111824B	  %6260:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5135:vgpr_32, 0, %5459:vgpr_32, 0, %5135:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111840B	  %6264:vgpr_32 = nofpexcept V_MUL_F32_e32 %6260:vgpr_32, %6259:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111856B	  %6263:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6255:vgpr_32, 0, %6264:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111888B	  %6264:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6263:vgpr_32, %6259:vgpr_32, %6264:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111904B	  %6265:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6255:vgpr_32, 0, %6264:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111968B	  %6268:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5460:vgpr_32, 0, %5460:vgpr_32, 0, %5136:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111984B	  %6272:vgpr_32 = nofpexcept V_RCP_F32_e32 %6268:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112016B	  %6266:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6265:vgpr_32, 0, %6259:vgpr_32, 0, %6264:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112032B	  %6355:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6266:vgpr_32, 0, %5459:vgpr_32, 0, %5135:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112048B	  %6271:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6268:vgpr_32, 0, %6272:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112080B	  %6272:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6271:vgpr_32, %6272:vgpr_32, %6272:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112096B	  %6273:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5136:vgpr_32, 0, %5460:vgpr_32, 0, %5136:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112112B	  %6277:vgpr_32 = nofpexcept V_MUL_F32_e32 %6273:vgpr_32, %6272:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112128B	  %6276:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6268:vgpr_32, 0, %6277:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112160B	  %6277:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6276:vgpr_32, %6272:vgpr_32, %6277:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112176B	  %6278:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6268:vgpr_32, 0, %6277:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112240B	  %6281:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5461:vgpr_32, 0, %5461:vgpr_32, 0, %5137:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112256B	  %6285:vgpr_32 = nofpexcept V_RCP_F32_e32 %6281:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114688B	  %6369:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, %4884:vgpr_32, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
114720B	  %6279:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6278:vgpr_32, 0, %6272:vgpr_32, 0, %6277:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114736B	  %6356:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6279:vgpr_32, 0, %5460:vgpr_32, 0, %5136:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114752B	  %6284:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6281:vgpr_32, 0, %6285:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114768B	  %6285:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6284:vgpr_32, %6285:vgpr_32, %6285:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114784B	  %6286:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5137:vgpr_32, 0, %5461:vgpr_32, 0, %5137:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114800B	  %6290:vgpr_32 = nofpexcept V_MUL_F32_e32 %6286:vgpr_32, %6285:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114816B	  %6289:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6281:vgpr_32, 0, %6290:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114832B	  %6290:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6289:vgpr_32, %6285:vgpr_32, %6290:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114848B	  %6291:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6281:vgpr_32, 0, %6290:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114880B	  %6292:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6291:vgpr_32, 0, %6285:vgpr_32, 0, %6290:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114896B	  %6357:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6292:vgpr_32, 0, %5461:vgpr_32, 0, %5137:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114912B	  %6294:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6294:vgpr_32, %5202:vgpr_32, %6294:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114928B	  %6295:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6295:vgpr_32, %5203:vgpr_32, %6295:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114944B	  %6296:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6296:vgpr_32, %5204:vgpr_32, %6296:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114960B	  %6297:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6297:vgpr_32, %5205:vgpr_32, %6297:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114976B	  %6298:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6298:vgpr_32, %5206:vgpr_32, %6298:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
114992B	  %6299:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6299:vgpr_32, %5207:vgpr_32, %6299:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115008B	  %6300:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6300:vgpr_32, %5208:vgpr_32, %6300:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115024B	  %6301:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6301:vgpr_32, %5209:vgpr_32, %6301:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115040B	  %6302:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6302:vgpr_32, %5210:vgpr_32, %6302:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115056B	  %6303:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6303:vgpr_32, %5211:vgpr_32, %6303:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115072B	  %6304:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6304:vgpr_32, %5212:vgpr_32, %6304:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115088B	  %6305:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6305:vgpr_32, %5213:vgpr_32, %6305:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115104B	  %6306:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6306:vgpr_32, %5214:vgpr_32, %6306:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115120B	  %6307:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6307:vgpr_32, %5215:vgpr_32, %6307:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115136B	  %6308:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6308:vgpr_32, %5216:vgpr_32, %6308:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115152B	  %6309:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6309:vgpr_32, %5217:vgpr_32, %6309:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115168B	  %6310:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6310:vgpr_32, %5218:vgpr_32, %6310:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115184B	  %6311:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6311:vgpr_32, %5219:vgpr_32, %6311:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115200B	  %6312:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6312:vgpr_32, %5220:vgpr_32, %6312:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115216B	  %6313:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6313:vgpr_32, %5221:vgpr_32, %6313:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115232B	  %6314:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6314:vgpr_32, %5222:vgpr_32, %6314:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115248B	  %6315:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6315:vgpr_32, %5223:vgpr_32, %6315:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115264B	  %6316:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6316:vgpr_32, %5224:vgpr_32, %6316:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115280B	  %6317:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6317:vgpr_32, %5225:vgpr_32, %6317:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115296B	  %6318:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6318:vgpr_32, %5226:vgpr_32, %6318:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115312B	  %6319:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6319:vgpr_32, %5227:vgpr_32, %6319:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115328B	  %6320:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6320:vgpr_32, %5228:vgpr_32, %6320:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115344B	  %6321:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6321:vgpr_32, %5229:vgpr_32, %6321:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115360B	  %6322:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6322:vgpr_32, %5230:vgpr_32, %6322:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115376B	  %6323:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6323:vgpr_32, %5231:vgpr_32, %6323:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115392B	  %6324:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6324:vgpr_32, %5232:vgpr_32, %6324:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115408B	  %6325:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6325:vgpr_32, %5233:vgpr_32, %6325:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115424B	  %6326:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6326:vgpr_32, %5234:vgpr_32, %6326:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115440B	  %6327:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6327:vgpr_32, %5235:vgpr_32, %6327:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115456B	  %6328:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6328:vgpr_32, %5236:vgpr_32, %6328:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115472B	  %6329:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6329:vgpr_32, %5237:vgpr_32, %6329:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115488B	  %6330:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6330:vgpr_32, %5238:vgpr_32, %6330:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115504B	  %6331:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6331:vgpr_32, %5239:vgpr_32, %6331:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115520B	  %6332:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6332:vgpr_32, %5240:vgpr_32, %6332:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115536B	  %6333:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6333:vgpr_32, %5241:vgpr_32, %6333:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115552B	  %6334:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6334:vgpr_32, %5242:vgpr_32, %6334:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115568B	  %6335:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6335:vgpr_32, %5243:vgpr_32, %6335:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115584B	  %6336:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6336:vgpr_32, %5244:vgpr_32, %6336:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115600B	  %6337:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6337:vgpr_32, %5245:vgpr_32, %6337:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115616B	  %6338:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6338:vgpr_32, %5246:vgpr_32, %6338:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115632B	  %6339:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6339:vgpr_32, %5247:vgpr_32, %6339:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115648B	  %6340:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6340:vgpr_32, %5248:vgpr_32, %6340:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115664B	  %6341:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6341:vgpr_32, %5249:vgpr_32, %6341:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115680B	  %6342:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6342:vgpr_32, %5250:vgpr_32, %6342:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115696B	  %6343:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6343:vgpr_32, %5251:vgpr_32, %6343:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115712B	  %6344:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6344:vgpr_32, %5252:vgpr_32, %6344:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115728B	  %6345:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6345:vgpr_32, %5253:vgpr_32, %6345:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115744B	  %6346:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6346:vgpr_32, %5254:vgpr_32, %6346:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115760B	  %6347:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6347:vgpr_32, %5255:vgpr_32, %6347:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115776B	  %6348:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6348:vgpr_32, %5256:vgpr_32, %6348:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115792B	  %6349:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6349:vgpr_32, %5257:vgpr_32, %6349:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115808B	  %6350:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6350:vgpr_32, %5258:vgpr_32, %6350:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115824B	  %6351:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6351:vgpr_32, %5259:vgpr_32, %6351:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115840B	  %6352:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6352:vgpr_32, %5260:vgpr_32, %6352:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115856B	  %6353:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6353:vgpr_32, %5261:vgpr_32, %6353:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115872B	  %6354:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6354:vgpr_32, %5262:vgpr_32, %6354:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115888B	  %6355:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6355:vgpr_32, %5263:vgpr_32, %6355:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115904B	  %6356:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6356:vgpr_32, %5264:vgpr_32, %6356:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115920B	  %6357:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6357:vgpr_32, %5265:vgpr_32, %6357:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
115936B	  %6370:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115952B	  %6374:vgpr_32 = nofpexcept V_RCP_F32_e32 %6370:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115968B	  %8788.sub1:vreg_64_align2 = COPY killed renamable $sgpr13, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
115984B	  undef %8786.sub0:vreg_64_align2 = V_OR_B32_e32 8, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
116000B	  %8786.sub1:vreg_64_align2 = COPY %8788.sub1:vreg_64_align2, debug-location !110; moe_op_gemm_a8w4.py:482:41
116016B	  %6373:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6370:vgpr_32, 0, %6374:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116048B	  %6374:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6373:vgpr_32, %6374:vgpr_32, %6374:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116064B	  %6375:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6294:vgpr_32, 0, %6369:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116080B	  %6379:vgpr_32 = nofpexcept V_MUL_F32_e32 %6375:vgpr_32, %6374:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116096B	  %6378:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6370:vgpr_32, 0, %6379:vgpr_32, 0, %6375:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116128B	  %6379:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6378:vgpr_32, %6374:vgpr_32, %6379:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116144B	  %6380:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6370:vgpr_32, 0, %6379:vgpr_32, 0, %6375:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116208B	  %6383:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116224B	  %6387:vgpr_32 = nofpexcept V_RCP_F32_e32 %6383:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116256B	  %6381:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6380:vgpr_32, 0, %6374:vgpr_32, 0, %6379:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116272B	  %6382:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6381:vgpr_32, 0, %6369:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116288B	  %6386:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6383:vgpr_32, 0, %6387:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116320B	  %6387:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6386:vgpr_32, %6387:vgpr_32, %6387:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116336B	  %6388:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6295:vgpr_32, 0, %6369:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116352B	  %6392:vgpr_32 = nofpexcept V_MUL_F32_e32 %6388:vgpr_32, %6387:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116368B	  %6391:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6383:vgpr_32, 0, %6392:vgpr_32, 0, %6388:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116400B	  %6392:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6391:vgpr_32, %6387:vgpr_32, %6392:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116416B	  %6393:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6383:vgpr_32, 0, %6392:vgpr_32, 0, %6388:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116480B	  %6396:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116496B	  %6400:vgpr_32 = nofpexcept V_RCP_F32_e32 %6396:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116528B	  %6394:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6393:vgpr_32, 0, %6387:vgpr_32, 0, %6392:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116544B	  %6395:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6394:vgpr_32, 0, %6369:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116560B	  %6399:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6396:vgpr_32, 0, %6400:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116592B	  %6400:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6399:vgpr_32, %6400:vgpr_32, %6400:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116608B	  %6401:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6296:vgpr_32, 0, %6369:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116624B	  %6405:vgpr_32 = nofpexcept V_MUL_F32_e32 %6401:vgpr_32, %6400:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116640B	  %6404:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6396:vgpr_32, 0, %6405:vgpr_32, 0, %6401:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116672B	  %6405:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6404:vgpr_32, %6400:vgpr_32, %6405:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116688B	  %6406:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6396:vgpr_32, 0, %6405:vgpr_32, 0, %6401:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116752B	  %6409:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116768B	  %6413:vgpr_32 = nofpexcept V_RCP_F32_e32 %6409:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116800B	  %6407:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6406:vgpr_32, 0, %6400:vgpr_32, 0, %6405:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116816B	  %6408:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6407:vgpr_32, 0, %6369:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116832B	  %6412:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6409:vgpr_32, 0, %6413:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116864B	  %6413:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6412:vgpr_32, %6413:vgpr_32, %6413:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116880B	  %6414:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6297:vgpr_32, 0, %6369:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116896B	  %6418:vgpr_32 = nofpexcept V_MUL_F32_e32 %6414:vgpr_32, %6413:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116912B	  %6417:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6409:vgpr_32, 0, %6418:vgpr_32, 0, %6414:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116944B	  %6418:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6417:vgpr_32, %6413:vgpr_32, %6418:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116960B	  %6419:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6409:vgpr_32, 0, %6418:vgpr_32, 0, %6414:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117024B	  %6422:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117040B	  %6426:vgpr_32 = nofpexcept V_RCP_F32_e32 %6422:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117072B	  %6420:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6419:vgpr_32, 0, %6413:vgpr_32, 0, %6418:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117088B	  %6421:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6420:vgpr_32, 0, %6369:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117104B	  %6425:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6422:vgpr_32, 0, %6426:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117136B	  %6426:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6425:vgpr_32, %6426:vgpr_32, %6426:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117152B	  %6427:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6298:vgpr_32, 0, %6369:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117168B	  %6431:vgpr_32 = nofpexcept V_MUL_F32_e32 %6427:vgpr_32, %6426:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117184B	  %6430:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6422:vgpr_32, 0, %6431:vgpr_32, 0, %6427:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117216B	  %6431:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6430:vgpr_32, %6426:vgpr_32, %6431:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117232B	  %6432:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6422:vgpr_32, 0, %6431:vgpr_32, 0, %6427:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117296B	  %6435:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117312B	  %6439:vgpr_32 = nofpexcept V_RCP_F32_e32 %6435:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117344B	  %6433:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6432:vgpr_32, 0, %6426:vgpr_32, 0, %6431:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117360B	  %6434:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6433:vgpr_32, 0, %6369:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117376B	  %6438:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6435:vgpr_32, 0, %6439:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117408B	  %6439:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6438:vgpr_32, %6439:vgpr_32, %6439:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117424B	  %6440:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6299:vgpr_32, 0, %6369:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117440B	  %6444:vgpr_32 = nofpexcept V_MUL_F32_e32 %6440:vgpr_32, %6439:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117456B	  %6443:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6435:vgpr_32, 0, %6444:vgpr_32, 0, %6440:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117488B	  %6444:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6443:vgpr_32, %6439:vgpr_32, %6444:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117504B	  %6445:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6435:vgpr_32, 0, %6444:vgpr_32, 0, %6440:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117568B	  %6448:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117584B	  %6452:vgpr_32 = nofpexcept V_RCP_F32_e32 %6448:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117616B	  %6446:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6445:vgpr_32, 0, %6439:vgpr_32, 0, %6444:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117632B	  %6447:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6446:vgpr_32, 0, %6369:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117648B	  %6451:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6448:vgpr_32, 0, %6452:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117680B	  %6452:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6451:vgpr_32, %6452:vgpr_32, %6452:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117696B	  %6453:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6300:vgpr_32, 0, %6369:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117712B	  %6457:vgpr_32 = nofpexcept V_MUL_F32_e32 %6453:vgpr_32, %6452:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117728B	  %6456:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6448:vgpr_32, 0, %6457:vgpr_32, 0, %6453:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117760B	  %6457:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6456:vgpr_32, %6452:vgpr_32, %6457:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117776B	  %6458:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6448:vgpr_32, 0, %6457:vgpr_32, 0, %6453:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117840B	  %6461:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117856B	  %6465:vgpr_32 = nofpexcept V_RCP_F32_e32 %6461:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117888B	  %6459:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6458:vgpr_32, 0, %6452:vgpr_32, 0, %6457:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117904B	  %6460:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6459:vgpr_32, 0, %6369:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117920B	  %6464:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6461:vgpr_32, 0, %6465:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117952B	  %6465:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6464:vgpr_32, %6465:vgpr_32, %6465:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117968B	  %6466:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6301:vgpr_32, 0, %6369:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
117984B	  %6470:vgpr_32 = nofpexcept V_MUL_F32_e32 %6466:vgpr_32, %6465:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118000B	  %6469:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6461:vgpr_32, 0, %6470:vgpr_32, 0, %6466:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118032B	  %6470:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6469:vgpr_32, %6465:vgpr_32, %6470:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118048B	  %6471:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6461:vgpr_32, 0, %6470:vgpr_32, 0, %6466:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118112B	  %6474:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6302:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118128B	  %6478:vgpr_32 = nofpexcept V_RCP_F32_e32 %6474:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118160B	  %6472:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6471:vgpr_32, 0, %6465:vgpr_32, 0, %6470:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118176B	  %6473:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6472:vgpr_32, 0, %6369:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118192B	  %6477:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6474:vgpr_32, 0, %6478:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118224B	  %6478:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6477:vgpr_32, %6478:vgpr_32, %6478:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118240B	  %6479:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6302:vgpr_32, 0, %6369:vgpr_32, 0, %6302:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118256B	  %6483:vgpr_32 = nofpexcept V_MUL_F32_e32 %6479:vgpr_32, %6478:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118272B	  %6482:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6474:vgpr_32, 0, %6483:vgpr_32, 0, %6479:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118304B	  %6483:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6482:vgpr_32, %6478:vgpr_32, %6483:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118320B	  %6484:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6474:vgpr_32, 0, %6483:vgpr_32, 0, %6479:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118384B	  %6487:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6303:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118400B	  %6491:vgpr_32 = nofpexcept V_RCP_F32_e32 %6487:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118432B	  %6485:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6484:vgpr_32, 0, %6478:vgpr_32, 0, %6483:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118448B	  %6486:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6485:vgpr_32, 0, %6369:vgpr_32, 0, %6302:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118464B	  %6490:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6487:vgpr_32, 0, %6491:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118496B	  %6491:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6490:vgpr_32, %6491:vgpr_32, %6491:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118512B	  %6492:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6303:vgpr_32, 0, %6369:vgpr_32, 0, %6303:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118528B	  %6496:vgpr_32 = nofpexcept V_MUL_F32_e32 %6492:vgpr_32, %6491:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118544B	  %6495:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6487:vgpr_32, 0, %6496:vgpr_32, 0, %6492:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118576B	  %6496:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6495:vgpr_32, %6491:vgpr_32, %6496:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118592B	  %6497:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6487:vgpr_32, 0, %6496:vgpr_32, 0, %6492:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118656B	  %6500:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6304:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118672B	  %6504:vgpr_32 = nofpexcept V_RCP_F32_e32 %6500:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118704B	  %6498:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6497:vgpr_32, 0, %6491:vgpr_32, 0, %6496:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118720B	  %6499:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6498:vgpr_32, 0, %6369:vgpr_32, 0, %6303:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118736B	  %6503:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6500:vgpr_32, 0, %6504:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118768B	  %6504:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6503:vgpr_32, %6504:vgpr_32, %6504:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118784B	  %6505:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6304:vgpr_32, 0, %6369:vgpr_32, 0, %6304:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118800B	  %6509:vgpr_32 = nofpexcept V_MUL_F32_e32 %6505:vgpr_32, %6504:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118816B	  %6508:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6500:vgpr_32, 0, %6509:vgpr_32, 0, %6505:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118848B	  %6509:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6508:vgpr_32, %6504:vgpr_32, %6509:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118864B	  %6510:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6500:vgpr_32, 0, %6509:vgpr_32, 0, %6505:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118928B	  %6513:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6305:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118944B	  %6517:vgpr_32 = nofpexcept V_RCP_F32_e32 %6513:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118976B	  %6511:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6510:vgpr_32, 0, %6504:vgpr_32, 0, %6509:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
118992B	  %6512:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6511:vgpr_32, 0, %6369:vgpr_32, 0, %6304:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119008B	  %6516:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6513:vgpr_32, 0, %6517:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119040B	  %6517:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6516:vgpr_32, %6517:vgpr_32, %6517:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119056B	  %6518:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6305:vgpr_32, 0, %6369:vgpr_32, 0, %6305:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119072B	  %6522:vgpr_32 = nofpexcept V_MUL_F32_e32 %6518:vgpr_32, %6517:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119088B	  %6521:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6513:vgpr_32, 0, %6522:vgpr_32, 0, %6518:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119120B	  %6522:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6521:vgpr_32, %6517:vgpr_32, %6522:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119136B	  %6523:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6513:vgpr_32, 0, %6522:vgpr_32, 0, %6518:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119200B	  %6526:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6306:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119216B	  %6530:vgpr_32 = nofpexcept V_RCP_F32_e32 %6526:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119248B	  %6524:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6523:vgpr_32, 0, %6517:vgpr_32, 0, %6522:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119264B	  %6525:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6524:vgpr_32, 0, %6369:vgpr_32, 0, %6305:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119280B	  %6529:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6526:vgpr_32, 0, %6530:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119312B	  %6530:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6529:vgpr_32, %6530:vgpr_32, %6530:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119328B	  %6531:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6306:vgpr_32, 0, %6369:vgpr_32, 0, %6306:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119344B	  %6535:vgpr_32 = nofpexcept V_MUL_F32_e32 %6531:vgpr_32, %6530:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119360B	  %6534:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6526:vgpr_32, 0, %6535:vgpr_32, 0, %6531:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119392B	  %6535:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6534:vgpr_32, %6530:vgpr_32, %6535:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119408B	  %6536:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6526:vgpr_32, 0, %6535:vgpr_32, 0, %6531:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119472B	  %6539:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6307:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119488B	  %6543:vgpr_32 = nofpexcept V_RCP_F32_e32 %6539:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119520B	  %6537:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6536:vgpr_32, 0, %6530:vgpr_32, 0, %6535:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119536B	  %6538:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6537:vgpr_32, 0, %6369:vgpr_32, 0, %6306:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119552B	  %6542:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6539:vgpr_32, 0, %6543:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119584B	  %6543:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6542:vgpr_32, %6543:vgpr_32, %6543:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119600B	  %6544:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6307:vgpr_32, 0, %6369:vgpr_32, 0, %6307:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119616B	  %6548:vgpr_32 = nofpexcept V_MUL_F32_e32 %6544:vgpr_32, %6543:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119632B	  %6547:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6539:vgpr_32, 0, %6548:vgpr_32, 0, %6544:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119664B	  %6548:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6547:vgpr_32, %6543:vgpr_32, %6548:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119680B	  %6549:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6539:vgpr_32, 0, %6548:vgpr_32, 0, %6544:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119744B	  %6552:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6308:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119760B	  %6556:vgpr_32 = nofpexcept V_RCP_F32_e32 %6552:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119792B	  %6550:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6549:vgpr_32, 0, %6543:vgpr_32, 0, %6548:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119808B	  %6551:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6550:vgpr_32, 0, %6369:vgpr_32, 0, %6307:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119824B	  %6555:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6552:vgpr_32, 0, %6556:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119856B	  %6556:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6555:vgpr_32, %6556:vgpr_32, %6556:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119872B	  %6557:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6308:vgpr_32, 0, %6369:vgpr_32, 0, %6308:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119888B	  %6561:vgpr_32 = nofpexcept V_MUL_F32_e32 %6557:vgpr_32, %6556:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119904B	  %6560:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6552:vgpr_32, 0, %6561:vgpr_32, 0, %6557:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119936B	  %6561:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6560:vgpr_32, %6556:vgpr_32, %6561:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119952B	  %6562:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6552:vgpr_32, 0, %6561:vgpr_32, 0, %6557:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120016B	  %6565:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6309:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120032B	  %6569:vgpr_32 = nofpexcept V_RCP_F32_e32 %6565:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120064B	  %6563:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6562:vgpr_32, 0, %6556:vgpr_32, 0, %6561:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120080B	  %6564:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6563:vgpr_32, 0, %6369:vgpr_32, 0, %6308:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120096B	  %6568:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6565:vgpr_32, 0, %6569:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120128B	  %6569:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6568:vgpr_32, %6569:vgpr_32, %6569:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120144B	  %6570:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6309:vgpr_32, 0, %6369:vgpr_32, 0, %6309:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120160B	  %6574:vgpr_32 = nofpexcept V_MUL_F32_e32 %6570:vgpr_32, %6569:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120176B	  %6573:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6565:vgpr_32, 0, %6574:vgpr_32, 0, %6570:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120208B	  %6574:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6573:vgpr_32, %6569:vgpr_32, %6574:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120224B	  %6575:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6565:vgpr_32, 0, %6574:vgpr_32, 0, %6570:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120288B	  %6578:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6310:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120304B	  %6582:vgpr_32 = nofpexcept V_RCP_F32_e32 %6578:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120336B	  %6576:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6575:vgpr_32, 0, %6569:vgpr_32, 0, %6574:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120352B	  %6577:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6576:vgpr_32, 0, %6369:vgpr_32, 0, %6309:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120368B	  %6581:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6578:vgpr_32, 0, %6582:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120400B	  %6582:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6581:vgpr_32, %6582:vgpr_32, %6582:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120416B	  %6583:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6310:vgpr_32, 0, %6369:vgpr_32, 0, %6310:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120432B	  %6587:vgpr_32 = nofpexcept V_MUL_F32_e32 %6583:vgpr_32, %6582:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120448B	  %6586:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6578:vgpr_32, 0, %6587:vgpr_32, 0, %6583:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120480B	  %6587:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6586:vgpr_32, %6582:vgpr_32, %6587:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120496B	  %6588:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6578:vgpr_32, 0, %6587:vgpr_32, 0, %6583:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120560B	  %6591:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6311:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120576B	  %6595:vgpr_32 = nofpexcept V_RCP_F32_e32 %6591:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120608B	  %6589:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6588:vgpr_32, 0, %6582:vgpr_32, 0, %6587:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120624B	  %6590:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6589:vgpr_32, 0, %6369:vgpr_32, 0, %6310:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120640B	  %6594:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6591:vgpr_32, 0, %6595:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120672B	  %6595:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6594:vgpr_32, %6595:vgpr_32, %6595:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120688B	  %6596:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6311:vgpr_32, 0, %6369:vgpr_32, 0, %6311:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120704B	  %6600:vgpr_32 = nofpexcept V_MUL_F32_e32 %6596:vgpr_32, %6595:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120720B	  %6599:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6591:vgpr_32, 0, %6600:vgpr_32, 0, %6596:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120752B	  %6600:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6599:vgpr_32, %6595:vgpr_32, %6600:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120768B	  %6601:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6591:vgpr_32, 0, %6600:vgpr_32, 0, %6596:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120832B	  %6604:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6312:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120848B	  %6608:vgpr_32 = nofpexcept V_RCP_F32_e32 %6604:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120880B	  %6602:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6601:vgpr_32, 0, %6595:vgpr_32, 0, %6600:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120896B	  %6603:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6602:vgpr_32, 0, %6369:vgpr_32, 0, %6311:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120912B	  %6607:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6604:vgpr_32, 0, %6608:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120944B	  %6608:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6607:vgpr_32, %6608:vgpr_32, %6608:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120960B	  %6609:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6312:vgpr_32, 0, %6369:vgpr_32, 0, %6312:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120976B	  %6613:vgpr_32 = nofpexcept V_MUL_F32_e32 %6609:vgpr_32, %6608:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120992B	  %6612:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6604:vgpr_32, 0, %6613:vgpr_32, 0, %6609:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121024B	  %6613:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6612:vgpr_32, %6608:vgpr_32, %6613:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121040B	  %6614:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6604:vgpr_32, 0, %6613:vgpr_32, 0, %6609:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121104B	  %6617:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6313:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121120B	  %6621:vgpr_32 = nofpexcept V_RCP_F32_e32 %6617:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121152B	  %6615:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6614:vgpr_32, 0, %6608:vgpr_32, 0, %6613:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121168B	  %6616:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6615:vgpr_32, 0, %6369:vgpr_32, 0, %6312:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121184B	  %6620:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6617:vgpr_32, 0, %6621:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121216B	  %6621:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6620:vgpr_32, %6621:vgpr_32, %6621:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121232B	  %6622:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6369:vgpr_32, 0, %6313:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121248B	  %6626:vgpr_32 = nofpexcept V_MUL_F32_e32 %6622:vgpr_32, %6621:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121264B	  %6625:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6617:vgpr_32, 0, %6626:vgpr_32, 0, %6622:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121296B	  %6626:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6625:vgpr_32, %6621:vgpr_32, %6626:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121312B	  %6627:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6617:vgpr_32, 0, %6626:vgpr_32, 0, %6622:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121376B	  %6630:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6314:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121392B	  %6634:vgpr_32 = nofpexcept V_RCP_F32_e32 %6630:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121424B	  %6628:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6627:vgpr_32, 0, %6621:vgpr_32, 0, %6626:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121440B	  %6629:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6628:vgpr_32, 0, %6369:vgpr_32, 0, %6313:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121456B	  %6633:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6630:vgpr_32, 0, %6634:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121488B	  %6634:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6633:vgpr_32, %6634:vgpr_32, %6634:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121504B	  %6635:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6314:vgpr_32, 0, %6369:vgpr_32, 0, %6314:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121520B	  %6639:vgpr_32 = nofpexcept V_MUL_F32_e32 %6635:vgpr_32, %6634:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121536B	  %6638:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6630:vgpr_32, 0, %6639:vgpr_32, 0, %6635:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121568B	  %6639:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6638:vgpr_32, %6634:vgpr_32, %6639:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121584B	  %6640:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6630:vgpr_32, 0, %6639:vgpr_32, 0, %6635:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121648B	  %6643:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6315:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121664B	  %6647:vgpr_32 = nofpexcept V_RCP_F32_e32 %6643:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121696B	  %6641:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6640:vgpr_32, 0, %6634:vgpr_32, 0, %6639:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121712B	  %6642:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6641:vgpr_32, 0, %6369:vgpr_32, 0, %6314:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121728B	  %6646:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6643:vgpr_32, 0, %6647:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121760B	  %6647:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6646:vgpr_32, %6647:vgpr_32, %6647:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121776B	  %6648:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6315:vgpr_32, 0, %6369:vgpr_32, 0, %6315:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121792B	  %6652:vgpr_32 = nofpexcept V_MUL_F32_e32 %6648:vgpr_32, %6647:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121808B	  %6651:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6643:vgpr_32, 0, %6652:vgpr_32, 0, %6648:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121840B	  %6652:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6651:vgpr_32, %6647:vgpr_32, %6652:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121856B	  %6653:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6643:vgpr_32, 0, %6652:vgpr_32, 0, %6648:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121920B	  %6656:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6316:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121936B	  %6660:vgpr_32 = nofpexcept V_RCP_F32_e32 %6656:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121968B	  %6654:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6653:vgpr_32, 0, %6647:vgpr_32, 0, %6652:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121984B	  %6655:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6654:vgpr_32, 0, %6369:vgpr_32, 0, %6315:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122000B	  %6659:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6656:vgpr_32, 0, %6660:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122032B	  %6660:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6659:vgpr_32, %6660:vgpr_32, %6660:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122048B	  %6661:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6316:vgpr_32, 0, %6369:vgpr_32, 0, %6316:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122064B	  %6665:vgpr_32 = nofpexcept V_MUL_F32_e32 %6661:vgpr_32, %6660:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122080B	  %6664:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6656:vgpr_32, 0, %6665:vgpr_32, 0, %6661:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122112B	  %6665:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6664:vgpr_32, %6660:vgpr_32, %6665:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122128B	  %6666:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6656:vgpr_32, 0, %6665:vgpr_32, 0, %6661:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122192B	  %6669:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6317:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122208B	  %6673:vgpr_32 = nofpexcept V_RCP_F32_e32 %6669:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122240B	  %6667:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6666:vgpr_32, 0, %6660:vgpr_32, 0, %6665:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122256B	  %6668:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6667:vgpr_32, 0, %6369:vgpr_32, 0, %6316:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122272B	  %6672:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6669:vgpr_32, 0, %6673:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122304B	  %6673:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6672:vgpr_32, %6673:vgpr_32, %6673:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122320B	  %6674:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6317:vgpr_32, 0, %6369:vgpr_32, 0, %6317:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122336B	  %6678:vgpr_32 = nofpexcept V_MUL_F32_e32 %6674:vgpr_32, %6673:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122352B	  %6677:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6669:vgpr_32, 0, %6678:vgpr_32, 0, %6674:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122384B	  %6678:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6677:vgpr_32, %6673:vgpr_32, %6678:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122400B	  %6679:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6669:vgpr_32, 0, %6678:vgpr_32, 0, %6674:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122464B	  %6682:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6318:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122480B	  %6686:vgpr_32 = nofpexcept V_RCP_F32_e32 %6682:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122512B	  %6680:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6679:vgpr_32, 0, %6673:vgpr_32, 0, %6678:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122528B	  %6681:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6680:vgpr_32, 0, %6369:vgpr_32, 0, %6317:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122544B	  %6685:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6682:vgpr_32, 0, %6686:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122576B	  %6686:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6685:vgpr_32, %6686:vgpr_32, %6686:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122592B	  %6687:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6318:vgpr_32, 0, %6369:vgpr_32, 0, %6318:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122608B	  %6691:vgpr_32 = nofpexcept V_MUL_F32_e32 %6687:vgpr_32, %6686:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122624B	  %6690:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6682:vgpr_32, 0, %6691:vgpr_32, 0, %6687:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122656B	  %6691:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6690:vgpr_32, %6686:vgpr_32, %6691:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122672B	  %6692:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6682:vgpr_32, 0, %6691:vgpr_32, 0, %6687:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122736B	  %6695:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122752B	  %6699:vgpr_32 = nofpexcept V_RCP_F32_e32 %6695:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122784B	  %6693:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6692:vgpr_32, 0, %6686:vgpr_32, 0, %6691:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122800B	  %6694:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6693:vgpr_32, 0, %6369:vgpr_32, 0, %6318:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122816B	  %6698:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6695:vgpr_32, 0, %6699:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122848B	  %6699:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6698:vgpr_32, %6699:vgpr_32, %6699:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122864B	  %6700:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6319:vgpr_32, 0, %6369:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122880B	  %6704:vgpr_32 = nofpexcept V_MUL_F32_e32 %6700:vgpr_32, %6699:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122896B	  %6703:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6695:vgpr_32, 0, %6704:vgpr_32, 0, %6700:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122928B	  %6704:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6703:vgpr_32, %6699:vgpr_32, %6704:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122944B	  %6705:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6695:vgpr_32, 0, %6704:vgpr_32, 0, %6700:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123008B	  %6708:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6320:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123024B	  %6712:vgpr_32 = nofpexcept V_RCP_F32_e32 %6708:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123056B	  %6706:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6705:vgpr_32, 0, %6699:vgpr_32, 0, %6704:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123072B	  %6707:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6706:vgpr_32, 0, %6369:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123088B	  %6711:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6708:vgpr_32, 0, %6712:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123120B	  %6712:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6711:vgpr_32, %6712:vgpr_32, %6712:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123136B	  %6713:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6320:vgpr_32, 0, %6369:vgpr_32, 0, %6320:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123152B	  %6717:vgpr_32 = nofpexcept V_MUL_F32_e32 %6713:vgpr_32, %6712:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123168B	  %6716:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6708:vgpr_32, 0, %6717:vgpr_32, 0, %6713:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123200B	  %6717:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6716:vgpr_32, %6712:vgpr_32, %6717:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123216B	  %6718:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6708:vgpr_32, 0, %6717:vgpr_32, 0, %6713:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123280B	  %6721:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6321:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123296B	  %6725:vgpr_32 = nofpexcept V_RCP_F32_e32 %6721:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123328B	  %6719:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6718:vgpr_32, 0, %6712:vgpr_32, 0, %6717:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123344B	  %6720:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6719:vgpr_32, 0, %6369:vgpr_32, 0, %6320:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123360B	  %6724:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6721:vgpr_32, 0, %6725:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123392B	  %6725:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6724:vgpr_32, %6725:vgpr_32, %6725:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123408B	  %6726:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6321:vgpr_32, 0, %6369:vgpr_32, 0, %6321:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123424B	  %6730:vgpr_32 = nofpexcept V_MUL_F32_e32 %6726:vgpr_32, %6725:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123440B	  %6729:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6721:vgpr_32, 0, %6730:vgpr_32, 0, %6726:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123472B	  %6730:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6729:vgpr_32, %6725:vgpr_32, %6730:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123488B	  %6731:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6721:vgpr_32, 0, %6730:vgpr_32, 0, %6726:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123552B	  %6734:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6322:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123568B	  %6738:vgpr_32 = nofpexcept V_RCP_F32_e32 %6734:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123600B	  %6732:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6731:vgpr_32, 0, %6725:vgpr_32, 0, %6730:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123616B	  %6733:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6732:vgpr_32, 0, %6369:vgpr_32, 0, %6321:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123632B	  %6737:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6734:vgpr_32, 0, %6738:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123664B	  %6738:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6737:vgpr_32, %6738:vgpr_32, %6738:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123680B	  %6739:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6322:vgpr_32, 0, %6369:vgpr_32, 0, %6322:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123696B	  %6743:vgpr_32 = nofpexcept V_MUL_F32_e32 %6739:vgpr_32, %6738:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123712B	  %6742:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6734:vgpr_32, 0, %6743:vgpr_32, 0, %6739:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123744B	  %6743:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6742:vgpr_32, %6738:vgpr_32, %6743:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123760B	  %6744:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6734:vgpr_32, 0, %6743:vgpr_32, 0, %6739:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123824B	  %6747:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123840B	  %6751:vgpr_32 = nofpexcept V_RCP_F32_e32 %6747:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123872B	  %6745:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6744:vgpr_32, 0, %6738:vgpr_32, 0, %6743:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123888B	  %6746:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6745:vgpr_32, 0, %6369:vgpr_32, 0, %6322:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123904B	  %6750:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6747:vgpr_32, 0, %6751:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123936B	  %6751:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6750:vgpr_32, %6751:vgpr_32, %6751:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123952B	  %6752:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6323:vgpr_32, 0, %6369:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123968B	  %6756:vgpr_32 = nofpexcept V_MUL_F32_e32 %6752:vgpr_32, %6751:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123984B	  %6755:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6747:vgpr_32, 0, %6756:vgpr_32, 0, %6752:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124016B	  %6756:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6755:vgpr_32, %6751:vgpr_32, %6756:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124032B	  %6757:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6747:vgpr_32, 0, %6756:vgpr_32, 0, %6752:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124096B	  %6760:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6324:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124112B	  %6764:vgpr_32 = nofpexcept V_RCP_F32_e32 %6760:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124144B	  %6758:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6757:vgpr_32, 0, %6751:vgpr_32, 0, %6756:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124160B	  %6759:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6758:vgpr_32, 0, %6369:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124176B	  %6763:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6760:vgpr_32, 0, %6764:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124208B	  %6764:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6763:vgpr_32, %6764:vgpr_32, %6764:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124224B	  %6765:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6324:vgpr_32, 0, %6369:vgpr_32, 0, %6324:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124240B	  %6769:vgpr_32 = nofpexcept V_MUL_F32_e32 %6765:vgpr_32, %6764:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124256B	  %6768:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6760:vgpr_32, 0, %6769:vgpr_32, 0, %6765:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124288B	  %6769:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6768:vgpr_32, %6764:vgpr_32, %6769:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124304B	  %6770:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6760:vgpr_32, 0, %6769:vgpr_32, 0, %6765:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124368B	  %6773:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6325:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124384B	  %6777:vgpr_32 = nofpexcept V_RCP_F32_e32 %6773:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124416B	  %6771:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6770:vgpr_32, 0, %6764:vgpr_32, 0, %6769:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124432B	  %6772:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6771:vgpr_32, 0, %6369:vgpr_32, 0, %6324:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124448B	  %6776:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6773:vgpr_32, 0, %6777:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124480B	  %6777:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6776:vgpr_32, %6777:vgpr_32, %6777:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124496B	  %6778:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6325:vgpr_32, 0, %6369:vgpr_32, 0, %6325:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124512B	  %6782:vgpr_32 = nofpexcept V_MUL_F32_e32 %6778:vgpr_32, %6777:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124528B	  %6781:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6773:vgpr_32, 0, %6782:vgpr_32, 0, %6778:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124560B	  %6782:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6781:vgpr_32, %6777:vgpr_32, %6782:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124576B	  %6783:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6773:vgpr_32, 0, %6782:vgpr_32, 0, %6778:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124640B	  %6786:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6326:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124656B	  %6790:vgpr_32 = nofpexcept V_RCP_F32_e32 %6786:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124688B	  %6784:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6783:vgpr_32, 0, %6777:vgpr_32, 0, %6782:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124704B	  %6785:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6784:vgpr_32, 0, %6369:vgpr_32, 0, %6325:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124720B	  %6789:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6786:vgpr_32, 0, %6790:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124752B	  %6790:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6789:vgpr_32, %6790:vgpr_32, %6790:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124768B	  %6791:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6326:vgpr_32, 0, %6369:vgpr_32, 0, %6326:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124784B	  %6795:vgpr_32 = nofpexcept V_MUL_F32_e32 %6791:vgpr_32, %6790:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124800B	  %6794:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6786:vgpr_32, 0, %6795:vgpr_32, 0, %6791:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124832B	  %6795:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6794:vgpr_32, %6790:vgpr_32, %6795:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124848B	  %6796:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6786:vgpr_32, 0, %6795:vgpr_32, 0, %6791:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124912B	  %6799:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6327:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124928B	  %6803:vgpr_32 = nofpexcept V_RCP_F32_e32 %6799:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124960B	  %6797:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6796:vgpr_32, 0, %6790:vgpr_32, 0, %6795:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124976B	  %6798:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6797:vgpr_32, 0, %6369:vgpr_32, 0, %6326:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124992B	  %6802:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6799:vgpr_32, 0, %6803:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125024B	  %6803:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6802:vgpr_32, %6803:vgpr_32, %6803:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125040B	  %6804:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6327:vgpr_32, 0, %6369:vgpr_32, 0, %6327:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125056B	  %6808:vgpr_32 = nofpexcept V_MUL_F32_e32 %6804:vgpr_32, %6803:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125072B	  %6807:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6799:vgpr_32, 0, %6808:vgpr_32, 0, %6804:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125104B	  %6808:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6807:vgpr_32, %6803:vgpr_32, %6808:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125120B	  %6809:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6799:vgpr_32, 0, %6808:vgpr_32, 0, %6804:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125184B	  %6812:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6328:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125200B	  %6816:vgpr_32 = nofpexcept V_RCP_F32_e32 %6812:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125232B	  %6810:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6809:vgpr_32, 0, %6803:vgpr_32, 0, %6808:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125248B	  %6811:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6810:vgpr_32, 0, %6369:vgpr_32, 0, %6327:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125264B	  %6815:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6812:vgpr_32, 0, %6816:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125296B	  %6816:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6815:vgpr_32, %6816:vgpr_32, %6816:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125312B	  %6817:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6328:vgpr_32, 0, %6369:vgpr_32, 0, %6328:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125328B	  %6821:vgpr_32 = nofpexcept V_MUL_F32_e32 %6817:vgpr_32, %6816:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125344B	  %6820:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6812:vgpr_32, 0, %6821:vgpr_32, 0, %6817:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125376B	  %6821:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6820:vgpr_32, %6816:vgpr_32, %6821:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125392B	  %6822:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6812:vgpr_32, 0, %6821:vgpr_32, 0, %6817:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125456B	  %6825:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6329:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125472B	  %6829:vgpr_32 = nofpexcept V_RCP_F32_e32 %6825:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125504B	  %6823:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6822:vgpr_32, 0, %6816:vgpr_32, 0, %6821:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125520B	  %6824:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6823:vgpr_32, 0, %6369:vgpr_32, 0, %6328:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125536B	  %6828:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6825:vgpr_32, 0, %6829:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125568B	  %6829:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6828:vgpr_32, %6829:vgpr_32, %6829:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125584B	  %6830:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6329:vgpr_32, 0, %6369:vgpr_32, 0, %6329:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125600B	  %6834:vgpr_32 = nofpexcept V_MUL_F32_e32 %6830:vgpr_32, %6829:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125616B	  %6833:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6825:vgpr_32, 0, %6834:vgpr_32, 0, %6830:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125648B	  %6834:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6833:vgpr_32, %6829:vgpr_32, %6834:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125664B	  %6835:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6825:vgpr_32, 0, %6834:vgpr_32, 0, %6830:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125728B	  %6838:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6330:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125744B	  %6842:vgpr_32 = nofpexcept V_RCP_F32_e32 %6838:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125776B	  %6836:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6835:vgpr_32, 0, %6829:vgpr_32, 0, %6834:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125792B	  %6837:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6836:vgpr_32, 0, %6369:vgpr_32, 0, %6329:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125808B	  %6841:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6838:vgpr_32, 0, %6842:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125840B	  %6842:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6841:vgpr_32, %6842:vgpr_32, %6842:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125856B	  %6843:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6330:vgpr_32, 0, %6369:vgpr_32, 0, %6330:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125872B	  %6847:vgpr_32 = nofpexcept V_MUL_F32_e32 %6843:vgpr_32, %6842:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125888B	  %6846:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6838:vgpr_32, 0, %6847:vgpr_32, 0, %6843:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125920B	  %6847:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6846:vgpr_32, %6842:vgpr_32, %6847:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125936B	  %6848:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6838:vgpr_32, 0, %6847:vgpr_32, 0, %6843:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126000B	  %6851:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6331:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126016B	  %6855:vgpr_32 = nofpexcept V_RCP_F32_e32 %6851:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126048B	  %6849:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6848:vgpr_32, 0, %6842:vgpr_32, 0, %6847:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126064B	  %6850:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6849:vgpr_32, 0, %6369:vgpr_32, 0, %6330:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126080B	  %6854:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6851:vgpr_32, 0, %6855:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126112B	  %6855:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6854:vgpr_32, %6855:vgpr_32, %6855:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126128B	  %6856:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6331:vgpr_32, 0, %6369:vgpr_32, 0, %6331:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126144B	  %6860:vgpr_32 = nofpexcept V_MUL_F32_e32 %6856:vgpr_32, %6855:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126160B	  %6859:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6851:vgpr_32, 0, %6860:vgpr_32, 0, %6856:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126192B	  %6860:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6859:vgpr_32, %6855:vgpr_32, %6860:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126208B	  %6861:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6851:vgpr_32, 0, %6860:vgpr_32, 0, %6856:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126272B	  %6864:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126288B	  %6868:vgpr_32 = nofpexcept V_RCP_F32_e32 %6864:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126320B	  %6862:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6861:vgpr_32, 0, %6855:vgpr_32, 0, %6860:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126336B	  %6863:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6862:vgpr_32, 0, %6369:vgpr_32, 0, %6331:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126352B	  %6867:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6864:vgpr_32, 0, %6868:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126384B	  %6868:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6867:vgpr_32, %6868:vgpr_32, %6868:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126400B	  %6869:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6332:vgpr_32, 0, %6369:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126416B	  %6873:vgpr_32 = nofpexcept V_MUL_F32_e32 %6869:vgpr_32, %6868:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126432B	  %6872:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6864:vgpr_32, 0, %6873:vgpr_32, 0, %6869:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126464B	  %6873:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6872:vgpr_32, %6868:vgpr_32, %6873:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126480B	  %6874:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6864:vgpr_32, 0, %6873:vgpr_32, 0, %6869:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126544B	  %6877:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6333:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126560B	  %6881:vgpr_32 = nofpexcept V_RCP_F32_e32 %6877:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126592B	  %6875:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6874:vgpr_32, 0, %6868:vgpr_32, 0, %6873:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126608B	  %6876:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6875:vgpr_32, 0, %6369:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126624B	  %6880:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6877:vgpr_32, 0, %6881:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126656B	  %6881:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6880:vgpr_32, %6881:vgpr_32, %6881:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126672B	  %6882:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6333:vgpr_32, 0, %6369:vgpr_32, 0, %6333:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126688B	  %6886:vgpr_32 = nofpexcept V_MUL_F32_e32 %6882:vgpr_32, %6881:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126704B	  %6885:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6877:vgpr_32, 0, %6886:vgpr_32, 0, %6882:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126736B	  %6886:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6885:vgpr_32, %6881:vgpr_32, %6886:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126752B	  %6887:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6877:vgpr_32, 0, %6886:vgpr_32, 0, %6882:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126816B	  %6890:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6334:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126832B	  %6894:vgpr_32 = nofpexcept V_RCP_F32_e32 %6890:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126864B	  %6888:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6887:vgpr_32, 0, %6881:vgpr_32, 0, %6886:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126880B	  %6889:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6888:vgpr_32, 0, %6369:vgpr_32, 0, %6333:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126896B	  %6893:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6890:vgpr_32, 0, %6894:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126928B	  %6894:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6893:vgpr_32, %6894:vgpr_32, %6894:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126944B	  %6895:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6334:vgpr_32, 0, %6369:vgpr_32, 0, %6334:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126960B	  %6899:vgpr_32 = nofpexcept V_MUL_F32_e32 %6895:vgpr_32, %6894:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126976B	  %6898:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6890:vgpr_32, 0, %6899:vgpr_32, 0, %6895:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127008B	  %6899:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6898:vgpr_32, %6894:vgpr_32, %6899:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127024B	  %6900:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6890:vgpr_32, 0, %6899:vgpr_32, 0, %6895:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127088B	  %6903:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6335:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127104B	  %6907:vgpr_32 = nofpexcept V_RCP_F32_e32 %6903:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127136B	  %6901:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6900:vgpr_32, 0, %6894:vgpr_32, 0, %6899:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127152B	  %6902:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6901:vgpr_32, 0, %6369:vgpr_32, 0, %6334:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127168B	  %6906:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6903:vgpr_32, 0, %6907:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127200B	  %6907:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6906:vgpr_32, %6907:vgpr_32, %6907:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127216B	  %6908:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6335:vgpr_32, 0, %6369:vgpr_32, 0, %6335:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127232B	  %6912:vgpr_32 = nofpexcept V_MUL_F32_e32 %6908:vgpr_32, %6907:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127248B	  %6911:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6903:vgpr_32, 0, %6912:vgpr_32, 0, %6908:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127280B	  %6912:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6911:vgpr_32, %6907:vgpr_32, %6912:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127296B	  %6913:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6903:vgpr_32, 0, %6912:vgpr_32, 0, %6908:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127360B	  %6916:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127376B	  %6920:vgpr_32 = nofpexcept V_RCP_F32_e32 %6916:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127408B	  %6914:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6913:vgpr_32, 0, %6907:vgpr_32, 0, %6912:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127424B	  %6915:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6914:vgpr_32, 0, %6369:vgpr_32, 0, %6335:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127440B	  %6919:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6916:vgpr_32, 0, %6920:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127472B	  %6920:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6919:vgpr_32, %6920:vgpr_32, %6920:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127488B	  %6921:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6336:vgpr_32, 0, %6369:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127504B	  %6925:vgpr_32 = nofpexcept V_MUL_F32_e32 %6921:vgpr_32, %6920:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127520B	  %6924:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6916:vgpr_32, 0, %6925:vgpr_32, 0, %6921:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127552B	  %6925:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6924:vgpr_32, %6920:vgpr_32, %6925:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127568B	  %6926:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6916:vgpr_32, 0, %6925:vgpr_32, 0, %6921:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127632B	  %6929:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6337:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127648B	  %6933:vgpr_32 = nofpexcept V_RCP_F32_e32 %6929:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127680B	  %6927:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6926:vgpr_32, 0, %6920:vgpr_32, 0, %6925:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127696B	  %6928:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6927:vgpr_32, 0, %6369:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127712B	  %6932:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6929:vgpr_32, 0, %6933:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127744B	  %6933:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6932:vgpr_32, %6933:vgpr_32, %6933:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127760B	  %6934:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6337:vgpr_32, 0, %6369:vgpr_32, 0, %6337:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127776B	  %6938:vgpr_32 = nofpexcept V_MUL_F32_e32 %6934:vgpr_32, %6933:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127792B	  %6937:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6929:vgpr_32, 0, %6938:vgpr_32, 0, %6934:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127824B	  %6938:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6937:vgpr_32, %6933:vgpr_32, %6938:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127840B	  %6939:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6929:vgpr_32, 0, %6938:vgpr_32, 0, %6934:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127904B	  %6942:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6338:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127920B	  %6946:vgpr_32 = nofpexcept V_RCP_F32_e32 %6942:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127952B	  %6940:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6939:vgpr_32, 0, %6933:vgpr_32, 0, %6938:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127968B	  %6941:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6940:vgpr_32, 0, %6369:vgpr_32, 0, %6337:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127984B	  %6945:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6942:vgpr_32, 0, %6946:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128016B	  %6946:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6945:vgpr_32, %6946:vgpr_32, %6946:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128032B	  %6947:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6338:vgpr_32, 0, %6369:vgpr_32, 0, %6338:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128048B	  %6951:vgpr_32 = nofpexcept V_MUL_F32_e32 %6947:vgpr_32, %6946:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128064B	  %6950:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6942:vgpr_32, 0, %6951:vgpr_32, 0, %6947:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128096B	  %6951:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6950:vgpr_32, %6946:vgpr_32, %6951:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128112B	  %6952:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6942:vgpr_32, 0, %6951:vgpr_32, 0, %6947:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128176B	  %6955:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6339:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128192B	  %6959:vgpr_32 = nofpexcept V_RCP_F32_e32 %6955:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128224B	  %6953:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6952:vgpr_32, 0, %6946:vgpr_32, 0, %6951:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128240B	  %6954:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6953:vgpr_32, 0, %6369:vgpr_32, 0, %6338:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128256B	  %6958:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6955:vgpr_32, 0, %6959:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128288B	  %6959:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6958:vgpr_32, %6959:vgpr_32, %6959:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128304B	  %6960:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6339:vgpr_32, 0, %6369:vgpr_32, 0, %6339:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128320B	  %6964:vgpr_32 = nofpexcept V_MUL_F32_e32 %6960:vgpr_32, %6959:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128336B	  %6963:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6955:vgpr_32, 0, %6964:vgpr_32, 0, %6960:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128368B	  %6964:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6963:vgpr_32, %6959:vgpr_32, %6964:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128384B	  %6965:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6955:vgpr_32, 0, %6964:vgpr_32, 0, %6960:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128448B	  %6968:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6340:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128464B	  %6972:vgpr_32 = nofpexcept V_RCP_F32_e32 %6968:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128496B	  %6966:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6965:vgpr_32, 0, %6959:vgpr_32, 0, %6964:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128512B	  %6967:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6966:vgpr_32, 0, %6369:vgpr_32, 0, %6339:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128528B	  %6971:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6968:vgpr_32, 0, %6972:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128560B	  %6972:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6971:vgpr_32, %6972:vgpr_32, %6972:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128576B	  %6973:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6340:vgpr_32, 0, %6369:vgpr_32, 0, %6340:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128592B	  %6977:vgpr_32 = nofpexcept V_MUL_F32_e32 %6973:vgpr_32, %6972:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128608B	  %6976:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6968:vgpr_32, 0, %6977:vgpr_32, 0, %6973:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128640B	  %6977:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6976:vgpr_32, %6972:vgpr_32, %6977:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128656B	  %6978:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6968:vgpr_32, 0, %6977:vgpr_32, 0, %6973:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128720B	  %6981:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6341:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128736B	  %6985:vgpr_32 = nofpexcept V_RCP_F32_e32 %6981:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128768B	  %6979:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6978:vgpr_32, 0, %6972:vgpr_32, 0, %6977:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128784B	  %6980:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6979:vgpr_32, 0, %6369:vgpr_32, 0, %6340:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128800B	  %6984:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6981:vgpr_32, 0, %6985:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128832B	  %6985:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6984:vgpr_32, %6985:vgpr_32, %6985:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128848B	  %6986:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6341:vgpr_32, 0, %6369:vgpr_32, 0, %6341:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128864B	  %6990:vgpr_32 = nofpexcept V_MUL_F32_e32 %6986:vgpr_32, %6985:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128880B	  %6989:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6981:vgpr_32, 0, %6990:vgpr_32, 0, %6986:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128912B	  %6990:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6989:vgpr_32, %6985:vgpr_32, %6990:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128928B	  %6991:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6981:vgpr_32, 0, %6990:vgpr_32, 0, %6986:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128992B	  %6994:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6342:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129008B	  %6998:vgpr_32 = nofpexcept V_RCP_F32_e32 %6994:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129040B	  %6992:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6991:vgpr_32, 0, %6985:vgpr_32, 0, %6990:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129056B	  %6993:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6992:vgpr_32, 0, %6369:vgpr_32, 0, %6341:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129072B	  %6997:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6994:vgpr_32, 0, %6998:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129104B	  %6998:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6997:vgpr_32, %6998:vgpr_32, %6998:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129120B	  %6999:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6342:vgpr_32, 0, %6369:vgpr_32, 0, %6342:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129136B	  %7003:vgpr_32 = nofpexcept V_MUL_F32_e32 %6999:vgpr_32, %6998:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129152B	  %7002:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6994:vgpr_32, 0, %7003:vgpr_32, 0, %6999:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129184B	  %7003:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7002:vgpr_32, %6998:vgpr_32, %7003:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129200B	  %7004:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6994:vgpr_32, 0, %7003:vgpr_32, 0, %6999:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129264B	  %7007:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6343:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129280B	  %7011:vgpr_32 = nofpexcept V_RCP_F32_e32 %7007:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129312B	  %7005:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7004:vgpr_32, 0, %6998:vgpr_32, 0, %7003:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129328B	  %7006:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7005:vgpr_32, 0, %6369:vgpr_32, 0, %6342:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129344B	  %7010:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7007:vgpr_32, 0, %7011:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129376B	  %7011:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7010:vgpr_32, %7011:vgpr_32, %7011:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129392B	  %7012:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6343:vgpr_32, 0, %6369:vgpr_32, 0, %6343:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129408B	  %7016:vgpr_32 = nofpexcept V_MUL_F32_e32 %7012:vgpr_32, %7011:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129424B	  %7015:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7007:vgpr_32, 0, %7016:vgpr_32, 0, %7012:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129456B	  %7016:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7015:vgpr_32, %7011:vgpr_32, %7016:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129472B	  %7017:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7007:vgpr_32, 0, %7016:vgpr_32, 0, %7012:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129536B	  %7020:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6344:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129552B	  %7024:vgpr_32 = nofpexcept V_RCP_F32_e32 %7020:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129584B	  %7018:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7017:vgpr_32, 0, %7011:vgpr_32, 0, %7016:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129600B	  %7019:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7018:vgpr_32, 0, %6369:vgpr_32, 0, %6343:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129616B	  %7023:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7020:vgpr_32, 0, %7024:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129648B	  %7024:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7023:vgpr_32, %7024:vgpr_32, %7024:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129664B	  %7025:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6344:vgpr_32, 0, %6369:vgpr_32, 0, %6344:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129680B	  %7029:vgpr_32 = nofpexcept V_MUL_F32_e32 %7025:vgpr_32, %7024:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129696B	  %7028:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7020:vgpr_32, 0, %7029:vgpr_32, 0, %7025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129728B	  %7029:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7028:vgpr_32, %7024:vgpr_32, %7029:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129744B	  %7030:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7020:vgpr_32, 0, %7029:vgpr_32, 0, %7025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129808B	  %7033:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129824B	  %7037:vgpr_32 = nofpexcept V_RCP_F32_e32 %7033:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129856B	  %7031:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7030:vgpr_32, 0, %7024:vgpr_32, 0, %7029:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129872B	  %7032:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7031:vgpr_32, 0, %6369:vgpr_32, 0, %6344:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129888B	  %7036:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7033:vgpr_32, 0, %7037:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129920B	  %7037:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7036:vgpr_32, %7037:vgpr_32, %7037:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129936B	  %7038:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6345:vgpr_32, 0, %6369:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129952B	  %7042:vgpr_32 = nofpexcept V_MUL_F32_e32 %7038:vgpr_32, %7037:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129968B	  %7041:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7033:vgpr_32, 0, %7042:vgpr_32, 0, %7038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130000B	  %7042:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7041:vgpr_32, %7037:vgpr_32, %7042:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130016B	  %7043:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7033:vgpr_32, 0, %7042:vgpr_32, 0, %7038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130080B	  %7046:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6346:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130096B	  %7050:vgpr_32 = nofpexcept V_RCP_F32_e32 %7046:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130128B	  %7044:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7043:vgpr_32, 0, %7037:vgpr_32, 0, %7042:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130144B	  %7045:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7044:vgpr_32, 0, %6369:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130160B	  %7049:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7046:vgpr_32, 0, %7050:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130192B	  %7050:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7049:vgpr_32, %7050:vgpr_32, %7050:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130208B	  %7051:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6346:vgpr_32, 0, %6369:vgpr_32, 0, %6346:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130224B	  %7055:vgpr_32 = nofpexcept V_MUL_F32_e32 %7051:vgpr_32, %7050:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130240B	  %7054:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7046:vgpr_32, 0, %7055:vgpr_32, 0, %7051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130272B	  %7055:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7054:vgpr_32, %7050:vgpr_32, %7055:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130288B	  %7056:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7046:vgpr_32, 0, %7055:vgpr_32, 0, %7051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130352B	  %7059:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6347:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130368B	  %7063:vgpr_32 = nofpexcept V_RCP_F32_e32 %7059:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130400B	  %7057:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7056:vgpr_32, 0, %7050:vgpr_32, 0, %7055:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130416B	  %7058:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7057:vgpr_32, 0, %6369:vgpr_32, 0, %6346:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130432B	  %7062:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7059:vgpr_32, 0, %7063:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130464B	  %7063:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7062:vgpr_32, %7063:vgpr_32, %7063:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130480B	  %7064:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6347:vgpr_32, 0, %6369:vgpr_32, 0, %6347:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130496B	  %7068:vgpr_32 = nofpexcept V_MUL_F32_e32 %7064:vgpr_32, %7063:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130512B	  %7067:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7059:vgpr_32, 0, %7068:vgpr_32, 0, %7064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130544B	  %7068:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7067:vgpr_32, %7063:vgpr_32, %7068:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130560B	  %7069:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7059:vgpr_32, 0, %7068:vgpr_32, 0, %7064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130624B	  %7072:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6348:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130640B	  %7076:vgpr_32 = nofpexcept V_RCP_F32_e32 %7072:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130672B	  %7070:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7069:vgpr_32, 0, %7063:vgpr_32, 0, %7068:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130688B	  %7071:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7070:vgpr_32, 0, %6369:vgpr_32, 0, %6347:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130704B	  %7075:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7072:vgpr_32, 0, %7076:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130736B	  %7076:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7075:vgpr_32, %7076:vgpr_32, %7076:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130752B	  %7077:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6348:vgpr_32, 0, %6369:vgpr_32, 0, %6348:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130768B	  %7081:vgpr_32 = nofpexcept V_MUL_F32_e32 %7077:vgpr_32, %7076:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130784B	  %7080:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7072:vgpr_32, 0, %7081:vgpr_32, 0, %7077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130816B	  %7081:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7080:vgpr_32, %7076:vgpr_32, %7081:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130832B	  %7082:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7072:vgpr_32, 0, %7081:vgpr_32, 0, %7077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130896B	  %7085:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130912B	  %7089:vgpr_32 = nofpexcept V_RCP_F32_e32 %7085:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130944B	  %7083:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7082:vgpr_32, 0, %7076:vgpr_32, 0, %7081:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130960B	  %7084:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7083:vgpr_32, 0, %6369:vgpr_32, 0, %6348:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130976B	  %7088:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7085:vgpr_32, 0, %7089:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131008B	  %7089:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7088:vgpr_32, %7089:vgpr_32, %7089:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131024B	  %7090:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6349:vgpr_32, 0, %6369:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131040B	  %7094:vgpr_32 = nofpexcept V_MUL_F32_e32 %7090:vgpr_32, %7089:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131056B	  %7093:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7085:vgpr_32, 0, %7094:vgpr_32, 0, %7090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131088B	  %7094:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7093:vgpr_32, %7089:vgpr_32, %7094:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131104B	  %7095:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7085:vgpr_32, 0, %7094:vgpr_32, 0, %7090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131168B	  %7098:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6350:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131184B	  %7102:vgpr_32 = nofpexcept V_RCP_F32_e32 %7098:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131216B	  %7096:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7095:vgpr_32, 0, %7089:vgpr_32, 0, %7094:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131232B	  %7097:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7096:vgpr_32, 0, %6369:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131248B	  %7101:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7098:vgpr_32, 0, %7102:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131280B	  %7102:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7101:vgpr_32, %7102:vgpr_32, %7102:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131296B	  %7103:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6350:vgpr_32, 0, %6369:vgpr_32, 0, %6350:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131312B	  %7107:vgpr_32 = nofpexcept V_MUL_F32_e32 %7103:vgpr_32, %7102:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131328B	  %7106:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7098:vgpr_32, 0, %7107:vgpr_32, 0, %7103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131360B	  %7107:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7106:vgpr_32, %7102:vgpr_32, %7107:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131376B	  %7108:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7098:vgpr_32, 0, %7107:vgpr_32, 0, %7103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131440B	  %7111:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6351:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131456B	  %7115:vgpr_32 = nofpexcept V_RCP_F32_e32 %7111:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131488B	  %7109:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7108:vgpr_32, 0, %7102:vgpr_32, 0, %7107:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131504B	  %7110:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7109:vgpr_32, 0, %6369:vgpr_32, 0, %6350:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131520B	  %7114:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7111:vgpr_32, 0, %7115:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131552B	  %7115:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7114:vgpr_32, %7115:vgpr_32, %7115:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131568B	  %7116:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6351:vgpr_32, 0, %6369:vgpr_32, 0, %6351:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131584B	  %7120:vgpr_32 = nofpexcept V_MUL_F32_e32 %7116:vgpr_32, %7115:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131600B	  %7119:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7111:vgpr_32, 0, %7120:vgpr_32, 0, %7116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131632B	  %7120:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7119:vgpr_32, %7115:vgpr_32, %7120:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131648B	  %7121:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7111:vgpr_32, 0, %7120:vgpr_32, 0, %7116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131712B	  %7124:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6352:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131728B	  %7128:vgpr_32 = nofpexcept V_RCP_F32_e32 %7124:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131760B	  %7122:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7121:vgpr_32, 0, %7115:vgpr_32, 0, %7120:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131776B	  %7123:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7122:vgpr_32, 0, %6369:vgpr_32, 0, %6351:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131792B	  %7127:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7124:vgpr_32, 0, %7128:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131824B	  %7128:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7127:vgpr_32, %7128:vgpr_32, %7128:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131840B	  %7129:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6352:vgpr_32, 0, %6369:vgpr_32, 0, %6352:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131856B	  %7133:vgpr_32 = nofpexcept V_MUL_F32_e32 %7129:vgpr_32, %7128:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131872B	  %7132:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7124:vgpr_32, 0, %7133:vgpr_32, 0, %7129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131904B	  %7133:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7132:vgpr_32, %7128:vgpr_32, %7133:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131920B	  %7134:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7124:vgpr_32, 0, %7133:vgpr_32, 0, %7129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131984B	  %7137:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6353:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132000B	  %7141:vgpr_32 = nofpexcept V_RCP_F32_e32 %7137:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132032B	  %7135:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7134:vgpr_32, 0, %7128:vgpr_32, 0, %7133:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132048B	  %7136:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7135:vgpr_32, 0, %6369:vgpr_32, 0, %6352:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132064B	  %7140:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7137:vgpr_32, 0, %7141:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132096B	  %7141:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7140:vgpr_32, %7141:vgpr_32, %7141:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132112B	  %7142:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6353:vgpr_32, 0, %6369:vgpr_32, 0, %6353:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132128B	  %7146:vgpr_32 = nofpexcept V_MUL_F32_e32 %7142:vgpr_32, %7141:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132144B	  %7145:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7137:vgpr_32, 0, %7146:vgpr_32, 0, %7142:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132176B	  %7146:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7145:vgpr_32, %7141:vgpr_32, %7146:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132192B	  %7147:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7137:vgpr_32, 0, %7146:vgpr_32, 0, %7142:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132256B	  %7150:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6354:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132272B	  %7154:vgpr_32 = nofpexcept V_RCP_F32_e32 %7150:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132304B	  %7148:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7147:vgpr_32, 0, %7141:vgpr_32, 0, %7146:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132320B	  %7149:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7148:vgpr_32, 0, %6369:vgpr_32, 0, %6353:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132336B	  %7153:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7150:vgpr_32, 0, %7154:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132368B	  %7154:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7153:vgpr_32, %7154:vgpr_32, %7154:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132384B	  %7155:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6354:vgpr_32, 0, %6369:vgpr_32, 0, %6354:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132400B	  %7159:vgpr_32 = nofpexcept V_MUL_F32_e32 %7155:vgpr_32, %7154:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132416B	  %7158:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7150:vgpr_32, 0, %7159:vgpr_32, 0, %7155:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132448B	  %7159:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7158:vgpr_32, %7154:vgpr_32, %7159:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132464B	  %7160:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7150:vgpr_32, 0, %7159:vgpr_32, 0, %7155:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132528B	  %7163:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6355:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132544B	  %7167:vgpr_32 = nofpexcept V_RCP_F32_e32 %7163:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132576B	  %7161:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7160:vgpr_32, 0, %7154:vgpr_32, 0, %7159:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132592B	  %7162:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7161:vgpr_32, 0, %6369:vgpr_32, 0, %6354:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132608B	  %7166:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7163:vgpr_32, 0, %7167:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132640B	  %7167:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7166:vgpr_32, %7167:vgpr_32, %7167:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132656B	  %7168:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6355:vgpr_32, 0, %6369:vgpr_32, 0, %6355:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132672B	  %7172:vgpr_32 = nofpexcept V_MUL_F32_e32 %7168:vgpr_32, %7167:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132688B	  %7171:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7163:vgpr_32, 0, %7172:vgpr_32, 0, %7168:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132720B	  %7172:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7171:vgpr_32, %7167:vgpr_32, %7172:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132736B	  %7173:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7163:vgpr_32, 0, %7172:vgpr_32, 0, %7168:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132800B	  %7176:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6356:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132816B	  %7180:vgpr_32 = nofpexcept V_RCP_F32_e32 %7176:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132848B	  %7174:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7173:vgpr_32, 0, %7167:vgpr_32, 0, %7172:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132864B	  %7175:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7174:vgpr_32, 0, %6369:vgpr_32, 0, %6355:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132880B	  %7179:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7176:vgpr_32, 0, %7180:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132912B	  %7180:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7179:vgpr_32, %7180:vgpr_32, %7180:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132928B	  %7181:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6356:vgpr_32, 0, %6369:vgpr_32, 0, %6356:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132944B	  %7185:vgpr_32 = nofpexcept V_MUL_F32_e32 %7181:vgpr_32, %7180:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132960B	  %7184:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7176:vgpr_32, 0, %7185:vgpr_32, 0, %7181:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132992B	  %7185:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7184:vgpr_32, %7180:vgpr_32, %7185:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133008B	  %7186:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7176:vgpr_32, 0, %7185:vgpr_32, 0, %7181:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133072B	  %7189:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6357:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133088B	  %7193:vgpr_32 = nofpexcept V_RCP_F32_e32 %7189:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133120B	  %7187:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7186:vgpr_32, 0, %7180:vgpr_32, 0, %7185:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133136B	  %7188:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7187:vgpr_32, 0, %6369:vgpr_32, 0, %6356:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133152B	  %7192:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7189:vgpr_32, 0, %7193:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133184B	  %7193:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7192:vgpr_32, %7193:vgpr_32, %7193:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133200B	  %7194:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6357:vgpr_32, 0, %6369:vgpr_32, 0, %6357:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133216B	  %7198:vgpr_32 = nofpexcept V_MUL_F32_e32 %7194:vgpr_32, %7193:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133232B	  %7197:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7189:vgpr_32, 0, %7198:vgpr_32, 0, %7194:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133264B	  %7198:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7197:vgpr_32, %7193:vgpr_32, %7198:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133280B	  %7199:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7189:vgpr_32, 0, %7198:vgpr_32, 0, %7194:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133312B	  %7200:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7199:vgpr_32, 0, %7193:vgpr_32, 0, %7198:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133328B	  %7201:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7200:vgpr_32, 0, %6369:vgpr_32, 0, %6357:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133344B	  undef %8785.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6382:vgpr_32, 0, %6395:vgpr_32, 0, 1065353216, undef %8785.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133376B	  undef %8785.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6408:vgpr_32, 0, %6421:vgpr_32, 0, 1065353216, %8785.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133392B	  undef %8783.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6434:vgpr_32, 0, %6447:vgpr_32, 0, 1065353216, undef %8783.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133424B	  undef %8783.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6460:vgpr_32, 0, %6473:vgpr_32, 0, 1065353216, %8783.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133440B	  undef %8784.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6486:vgpr_32, 0, %6499:vgpr_32, 0, 1065353216, undef %8784.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133472B	  undef %8784.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6512:vgpr_32, 0, %6525:vgpr_32, 0, 1065353216, %8784.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133488B	  undef %8782.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6538:vgpr_32, 0, %6551:vgpr_32, 0, 1065353216, undef %8782.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133520B	  undef %8782.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6564:vgpr_32, 0, %6577:vgpr_32, 0, 1065353216, %8782.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133536B	  %8785.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6590:vgpr_32, 0, %6603:vgpr_32, 0, 1065353216, undef %8785.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133568B	  %8785.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6616:vgpr_32, 0, %6629:vgpr_32, 0, 1065353216, %8785.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133584B	  %8783.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6642:vgpr_32, 0, %6655:vgpr_32, 0, 1065353216, undef %8783.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133616B	  %8783.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6668:vgpr_32, 0, %6681:vgpr_32, 0, 1065353216, %8783.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133632B	  %8784.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6694:vgpr_32, 0, %6707:vgpr_32, 0, 1065353216, undef %8784.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133664B	  %8784.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6720:vgpr_32, 0, %6733:vgpr_32, 0, 1065353216, %8784.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133680B	  %8782.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6746:vgpr_32, 0, %6759:vgpr_32, 0, 1065353216, undef %8782.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133712B	  %8782.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6772:vgpr_32, 0, %6785:vgpr_32, 0, 1065353216, %8782.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133728B	  %8785.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6798:vgpr_32, 0, %6811:vgpr_32, 0, 1065353216, undef %8785.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133760B	  %8785.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6824:vgpr_32, 0, %6837:vgpr_32, 0, 1065353216, %8785.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133776B	  %8783.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6850:vgpr_32, 0, %6863:vgpr_32, 0, 1065353216, undef %8783.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133808B	  %8783.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6876:vgpr_32, 0, %6889:vgpr_32, 0, 1065353216, %8783.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133824B	  %8784.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6902:vgpr_32, 0, %6915:vgpr_32, 0, 1065353216, undef %8784.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133856B	  %8784.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6928:vgpr_32, 0, %6941:vgpr_32, 0, 1065353216, %8784.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133872B	  %8782.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6954:vgpr_32, 0, %6967:vgpr_32, 0, 1065353216, undef %8782.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133904B	  %8782.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6980:vgpr_32, 0, %6993:vgpr_32, 0, 1065353216, %8782.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133920B	  %8785.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7006:vgpr_32, 0, %7019:vgpr_32, 0, 1065353216, undef %8785.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133952B	  %8785.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7032:vgpr_32, 0, %7045:vgpr_32, 0, 1065353216, %8785.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
133968B	  %8783.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7058:vgpr_32, 0, %7071:vgpr_32, 0, 1065353216, undef %8783.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134000B	  %8783.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7084:vgpr_32, 0, %7097:vgpr_32, 0, 1065353216, %8783.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134016B	  %8784.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7110:vgpr_32, 0, %7123:vgpr_32, 0, 1065353216, undef %8784.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134048B	  %8784.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7136:vgpr_32, 0, %7149:vgpr_32, 0, 1065353216, %8784.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134064B	  %8782.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7162:vgpr_32, 0, %7175:vgpr_32, 0, 1065353216, undef %8782.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134096B	  %8782.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7188:vgpr_32, 0, %7201:vgpr_32, 0, 1065353216, %8782.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134112B	  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134128B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134144B	  %7267:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 4, %10393:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134160B	  %7269:vgpr_32 = V_AND_B32_e32 48, %10391:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134176B	  %7270:vgpr_32 = V_AND_B32_e32 1, %10369:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134192B	  %7272:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 13, %7270:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134208B	  %7273:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 8, %10369:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134224B	  %7275:vgpr_32 = V_AND_B32_e32 16384, %7273:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134240B	  %7277:vgpr_32 = disjoint V_LSHL_OR_B32_e64 %4447:vgpr_32, 9, %7272:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134256B	  %7278:vgpr_32 = V_BITOP3_B32_e64 %7267:vgpr_32, %7269:vgpr_32, %4449:vgpr_32, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134272B	  %7279:vgpr_32 = disjoint V_OR3_B32_e64 %7277:vgpr_32, %7275:vgpr_32, %7278:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134288B	  %7280:vgpr_32 = nuw V_ADD_U32_e32 0, %7279:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134368B	  DS_WRITE_B128_gfx9 %7280:vgpr_32, %8785:vreg_128_align2, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134448B	  DS_WRITE_B128_gfx9 %7280:vgpr_32, %8784:vreg_128_align2, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134464B	  %7286:vgpr_32 = nuw V_XAD_U32_e64 %7279:vgpr_32, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134544B	  DS_WRITE_B128_gfx9 %7286:vgpr_32, %8783:vreg_128_align2, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134624B	  DS_WRITE_B128_gfx9 %7286:vgpr_32, %8782:vreg_128_align2, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134640B	  ATOMIC_FENCE 5, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134656B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134672B	  ATOMIC_FENCE 4, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134688B	  %7293:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 5, %10369:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134704B	  %7295:vgpr_32 = V_AND_B32_e32 7168, %7293:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134720B	  %7296:vgpr_32 = exact V_LSHRREV_B32_e32 1, %1373:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134736B	  %7297:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 9, %4915:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134752B	  %7298:vgpr_32 = V_BITOP3_B32_e64 %7295:vgpr_32, %7296:vgpr_32, %4449:vgpr_32, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134768B	  %7300:vgpr_32 = nuw V_LSHL_ADD_U32_e64 %7270:vgpr_32, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134784B	  %7302:vgpr_32 = nuw V_ADD3_U32_e64 %7300:vgpr_32, %7297:vgpr_32, %7298:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134800B	  %7303:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134816B	  %7308:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134832B	  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
134848B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr12_sgpr13, %8788:vreg_64_align2, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
134864B	  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, %8786:vreg_64_align2, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
134880B	  %9860:vgpr_32 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134896B	  %7316:vgpr_32 = V_LSHRREV_B32_sdwa 0, %9860:vgpr_32, 0, %7308.sub0:vreg_128_align2, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134912B	  renamable $sgpr12 = S_MOV_B32 255
134928B	  %7319:vgpr_32 = V_BITOP3_B16_e64 0, %7308.sub0:vreg_128_align2, 0, %7316:vgpr_32, 0, killed $sgpr12, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134944B	  %7320:vgpr_32 = V_LSHLREV_B32_e32 16, %7319:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134960B	  undef %8781.sub0:vreg_64_align2 = V_AND_OR_B32_e64 %7303.sub0:vreg_128_align2, killed $sgpr4, %7320:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
134976B	  renamable $sgpr12 = S_MOV_B32 50464518
134992B	  undef %8780.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub0:vreg_128_align2, %7308.sub0:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135008B	  renamable $sgpr13 = S_MOV_B32 16778500
135024B	  undef %8779.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub1:vreg_128_align2, %7308.sub1:vreg_128_align2, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135040B	  undef %8778.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub1:vreg_128_align2, %7308.sub1:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135056B	  undef %8777.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub2:vreg_128_align2, %7308.sub2:vreg_128_align2, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135072B	  undef %8776.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub2:vreg_128_align2, %7308.sub2:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135088B	  undef %8775.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub3:vreg_128_align2, %7308.sub3:vreg_128_align2, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135104B	  undef %8774.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub3:vreg_128_align2, %7308.sub3:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135120B	  %7331:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135136B	  %7336:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
135152B	  %9093:vgpr_32 = V_MUL_LO_U32_e64 %10389:vgpr_32, $sgpr5, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
135168B	  %9139:vgpr_32 = V_MUL_LO_U32_e64 %10387.sub0:vreg_64_align2, $sgpr5, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135184B	  %7345:vgpr_32 = V_MUL_LO_U32_e64 $sgpr5, %10371.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135200B	  %7347:vgpr_32 = V_MUL_LO_U32_e64 $sgpr5, %10383.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135216B	  %7349:vgpr_32 = V_MUL_LO_U32_e64 $sgpr5, %10379.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135232B	  %7351:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr5, %10375.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135248B	  %9120:vgpr_32 = V_ADD_U32_e32 %9139:vgpr_32, %9093:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
135264B	  %7353:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7345:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135280B	  %7354:vgpr_32 = V_ADD_U32_e32 8, %7353:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135296B	  %7355:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7347:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135312B	  %7356:vgpr_32 = V_ADD_U32_e32 8, %7355:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135328B	  %7357:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7349:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135344B	  %7358:vgpr_32 = V_ADD_U32_e32 8, %7357:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135360B	  %7359:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7351:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135376B	  %7360:vgpr_32 = V_ADD_U32_e32 8, %7359:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
135520B	  renamable $sgpr21 = S_AND_B32 renamable $sgpr21, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
135568B	  renamable $sgpr22 = COPY renamable $sgpr18, debug-location !122; moe_op_gemm_a8w4.py:505:20
135584B	  renamable $sgpr23 = COPY killed renamable $sgpr19, debug-location !122; moe_op_gemm_a8w4.py:505:20
135600B	  %8781.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub0:vreg_128_align2, %7336.sub0:vreg_128_align2, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135616B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135664B	  %7375:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7353:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135680B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8781:vreg_64_align2, %7375:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135696B	  %8780.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub0:vreg_128_align2, %7336.sub0:vreg_128_align2, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135712B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135760B	  %7380:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7354:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135776B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8780:vreg_64_align2, %7380:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135792B	  %8779.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub1:vreg_128_align2, %7336.sub1:vreg_128_align2, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135808B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135856B	  %7385:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7355:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135872B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8779:vreg_64_align2, %7385:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135888B	  %8778.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub1:vreg_128_align2, %7336.sub1:vreg_128_align2, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135904B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
135952B	  %7390:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7356:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
135968B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8778:vreg_64_align2, %7390:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
135984B	  %8777.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub2:vreg_128_align2, %7336.sub2:vreg_128_align2, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136000B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136048B	  %7395:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7357:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136064B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8777:vreg_64_align2, %7395:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136080B	  %8776.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub2:vreg_128_align2, %7336.sub2:vreg_128_align2, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136096B	  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136144B	  %7400:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7358:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136160B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8776:vreg_64_align2, %7400:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136176B	  %8775.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub3:vreg_128_align2, %7336.sub3:vreg_128_align2, killed $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136192B	  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136240B	  %7405:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7359:vgpr_32, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136256B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8775:vreg_64_align2, %7405:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136272B	  %8774.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub3:vreg_128_align2, %7336.sub3:vreg_128_align2, killed $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136288B	  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
136336B	  %7410:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7360:vgpr_32, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
136352B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8774:vreg_64_align2, %7410:vgpr_32, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
136368B	  S_BRANCH %bb.1, debug-location !123; moe_op_gemm_a8w4.py:505:4

# End machine code for function _moe_gemm_a8w4.

