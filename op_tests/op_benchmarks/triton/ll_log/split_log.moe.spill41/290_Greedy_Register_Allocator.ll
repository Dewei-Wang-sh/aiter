# *** IR Dump After Greedy Register Allocator (greedy) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, TiedOpsRewritten, TracksDebugUserValues
Frame Objects:
  fi#0: size=4, align=4, at location [SP]
  fi#1: size=4, align=4, at location [SP]
  fi#2: size=4, align=4, at location [SP]
  fi#3: size=8, align=4, at location [SP]
  fi#4: size=4, align=4, at location [SP]
  fi#5: size=8, align=4, at location [SP]
  fi#6: size=4, align=4, at location [SP]
  fi#7: size=8, align=4, at location [SP]
  fi#8: size=8, align=4, at location [SP]
  fi#9: size=8, align=4, at location [SP]
  fi#10: size=8, align=4, at location [SP]
  fi#11: size=4, align=4, at location [SP]
  fi#12: size=4, align=4, at location [SP]
  fi#13: size=8, align=4, at location [SP]
  fi#14: size=8, align=4, at location [SP]
  fi#15: size=8, align=4, at location [SP]
  fi#16: size=8, align=4, at location [SP]
  fi#17: size=8, align=4, at location [SP]
  fi#18: size=16, align=4, at location [SP]
  fi#19: size=16, align=4, at location [SP]
  fi#20: size=16, align=4, at location [SP]
save/restore points:
save points are empty
restore points are empty
Function Live Ins: $vgpr0 in %999, $sgpr0_sgpr1 in %1000, $sgpr2_sgpr3 in %1001, $sgpr5 in %1003, $sgpr6_sgpr7 in %1004, $sgpr8 in %1005, $sgpr12_sgpr13 in %1008, $sgpr14 in %1009, $sgpr15 in %1010, $sgpr16 in %1011

0B	bb.0 (%ir-block.30):
	  successors: %bb.2(0x40000000), %bb.1(0x40000000); %bb.2(50.00%), %bb.1(50.00%)
	  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
96B	  renamable $sgpr24_sgpr25 = COPY $sgpr6_sgpr7
144B	  renamable $sgpr20_sgpr21 = COPY $sgpr2_sgpr3
176B	  %9993:vgpr_32(s32) = COPY $vgpr0
192B	  early-clobber renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
208B	  renamable $sgpr6_sgpr7 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
224B	  %1053:vgpr_32 = V_MOV_B32_e32 0, implicit $exec
240B	  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode, debug-location !8; moe_op_gemm_a8w4.py:190
256B	  %1055:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr6_sgpr7, %1053:vgpr_32, 0, 0, implicit $exec, debug-location !10 :: (load (s32) from %ir.22, addrspace 1); moe_op_gemm_a8w4.py:294:37
272B	  renamable $sgpr6 = V_READFIRSTLANE_B32 %1055:vgpr_32, implicit $exec, debug-location !10; moe_op_gemm_a8w4.py:294:37
288B	  %8688:vgpr_32 = V_SUB_U32_e32 $sgpr2, %1055:vgpr_32, implicit $exec, debug-location !11; moe_op_gemm_a8w4.py:294:29
304B	  renamable $sgpr2 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !12; moe_op_gemm_a8w4.py:302:38
320B	  renamable $vcc = V_CMP_GT_I32_e64 1, %8688:vgpr_32, implicit $exec, debug-location !13; moe_op_gemm_a8w4.py:303:19
336B	  S_CMP_LT_I32 renamable $sgpr16, renamable $sgpr2, implicit-def $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
352B	  renamable $sgpr10_sgpr11 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
368B	  renamable $sgpr10_sgpr11 = S_OR_B64 killed renamable $vcc, killed renamable $sgpr10_sgpr11, implicit-def dead $scc
384B	  renamable $vcc = S_AND_B64 $exec, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !15; moe_op_gemm_a8w4.py:303:25
416B	  S_CBRANCH_VCCNZ %bb.2, implicit $vcc, debug-location !15; moe_op_gemm_a8w4.py:303:25
432B	  S_BRANCH %bb.1, debug-location !15; moe_op_gemm_a8w4.py:303:25

448B	bb.1.common.ret:
	; predecessors: %bb.0, %bb.2, %bb.63

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
2848B	  %9970:vgpr_32 = V_AND_B32_e32 65535, %1169:vgpr_32, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
2896B	  %8711:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 2, %9970:vgpr_32, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
2912B	  undef %9966.sub0:vreg_64_align2 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr18_sgpr19, %8711:vgpr_32, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
2928B	  renamable $sgpr18_sgpr19 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
2944B	  renamable $sgpr10 = S_ASHR_I32 killed renamable $sgpr10, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
2960B	  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, killed renamable $sgpr7, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
2976B	  undef %8714.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 16, %1169:vgpr_32, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
3120B	  %9947:vgpr_32 = V_LSHRREV_B32_e32 4, %9993:vgpr_32(s32), implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4272B	  renamable $sgpr27 = S_MOV_B32 159744
4288B	  renamable $sgpr26 = S_MOV_B32 2147483646
4304B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
4320B	  %8714.sub1:vreg_64_align2 = V_ASHRREV_I32_e32 31, %8714.sub0:vreg_64_align2, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
4336B	  %9950:vgpr_32 = disjoint V_OR_B32_e32 32, %9947:vgpr_32, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4352B	  %9952:vgpr_32 = disjoint V_OR_B32_e32 64, %9947:vgpr_32, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4368B	  %9954:vgpr_32 = disjoint V_OR_B32_e32 96, %9947:vgpr_32, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4384B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4400B	  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4416B	  %9956:vreg_64_align2 = nsw V_LSHLREV_B64_e64 7, %8714:vreg_64_align2, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
4432B	  renamable $sgpr7 = S_XOR_B32 killed renamable $sgpr7, killed renamable $sgpr10, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4448B	  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr6, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4464B	  undef %9972.sub0:vreg_64_align2 = V_OR_B32_e32 %9956.sub0:vreg_64_align2, %9947:vgpr_32, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4480B	  %9958:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, %8711:vgpr_32, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
4496B	  undef %9984.sub0:vreg_64_align2 = V_OR_B32_e32 %9956.sub0:vreg_64_align2, %9950:vgpr_32, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4512B	  undef %9980.sub0:vreg_64_align2 = V_OR_B32_e32 %9956.sub0:vreg_64_align2, %9952:vgpr_32, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4528B	  undef %9976.sub0:vreg_64_align2 = V_OR_B32_e32 %9956.sub0:vreg_64_align2, %9954:vgpr_32, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4544B	  %8726:vgpr_32 = V_ASHRREV_I32_e32 31, %9956.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4560B	  renamable $sgpr9 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4576B	  renamable $sgpr10 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4592B	  %1233:vgpr_32 = V_SUB_U32_e32 0, %9972.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4608B	  %1262:vgpr_32 = V_SUB_U32_e32 0, %9984.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4624B	  %1275:vgpr_32 = V_SUB_U32_e32 0, %9980.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4640B	  %1288:vgpr_32 = V_SUB_U32_e32 0, %9976.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4656B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4672B	  %1234:vgpr_32 = V_MAX_I32_e32 %1233:vgpr_32, %9972.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4688B	  %1263:vgpr_32 = V_MAX_I32_e32 %1262:vgpr_32, %9984.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4704B	  %1276:vgpr_32 = V_MAX_I32_e32 %1275:vgpr_32, %9980.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4720B	  %1289:vgpr_32 = V_MAX_I32_e32 %1288:vgpr_32, %9976.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4768B	  renamable $sgpr18 = COPY renamable $sgpr26, debug-location !53; moe_op_gemm_a8w4.py:338:27
4784B	  renamable $sgpr19 = COPY renamable $sgpr27, debug-location !53; moe_op_gemm_a8w4.py:338:27
4800B	  %8661:vgpr_32 = V_SUB_U32_e32 0, %9966.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4816B	  %8662:vgpr_32 = V_MAX_I32_e32 %9966.sub0:vreg_64_align2, %8661:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4832B	  %1237:vgpr_32 = V_CVT_F32_U32_e32 %8662:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4848B	  renamable $sgpr9 = S_SUB_I32 renamable $sgpr4, renamable $sgpr3, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4864B	  S_CMP_GE_U32 renamable $sgpr4, renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4880B	  renamable $sgpr6 = S_CSELECT_B32 killed renamable $sgpr10, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4896B	  %1238:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1237:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4912B	  renamable $sgpr4 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr4, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4928B	  renamable $sgpr9 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4944B	  S_CMP_GE_U32 killed renamable $sgpr4, killed renamable $sgpr3, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4960B	  %1240:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1238:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4976B	  %1241:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1240:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4992B	  renamable $sgpr3 = S_CSELECT_B32 killed renamable $sgpr9, killed renamable $sgpr6, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
5008B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !53; moe_op_gemm_a8w4.py:338:27
5024B	  %8707:vgpr_32 = V_SUB_U32_e32 0, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5040B	  %8664:vgpr_32 = V_MUL_LO_U32_e64 %8707:vgpr_32, %1241:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5056B	  %8663:vgpr_32 = V_MUL_HI_U32_e64 %1241:vgpr_32, %8664:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5072B	  %8660:vgpr_32 = V_ADD_U32_e32 %1241:vgpr_32, %8663:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5088B	  %1250:vgpr_32 = V_MUL_HI_U32_e64 %1234:vgpr_32, %8660:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5104B	  %1264:vgpr_32 = V_MUL_HI_U32_e64 %1263:vgpr_32, %8660:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5120B	  %1277:vgpr_32 = V_MUL_HI_U32_e64 %1276:vgpr_32, %8660:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5136B	  %1290:vgpr_32 = V_MUL_HI_U32_e64 %1289:vgpr_32, %8660:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5152B	  %1251:vgpr_32 = V_MUL_LO_U32_e64 %1250:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5168B	  %1265:vgpr_32 = V_MUL_LO_U32_e64 %1264:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5184B	  %1278:vgpr_32 = V_MUL_LO_U32_e64 %1277:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5200B	  %1291:vgpr_32 = V_MUL_LO_U32_e64 %1290:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5216B	  %1252:vgpr_32 = V_SUB_U32_e32 %1234:vgpr_32, %1251:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5232B	  %1266:vgpr_32 = V_SUB_U32_e32 %1263:vgpr_32, %1265:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5248B	  %1279:vgpr_32 = V_SUB_U32_e32 %1276:vgpr_32, %1278:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5264B	  %1292:vgpr_32 = V_SUB_U32_e32 %1289:vgpr_32, %1291:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5280B	  %1254:vgpr_32 = V_SUB_U32_e32 %1252:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5296B	  %1268:vgpr_32 = V_SUB_U32_e32 %1266:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5312B	  %1281:vgpr_32 = V_SUB_U32_e32 %1279:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5328B	  %1294:vgpr_32 = V_SUB_U32_e32 %1292:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5344B	  renamable $vcc = V_CMP_GE_U32_e64 %1252:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5360B	  %1255:vgpr_32 = V_CNDMASK_B32_e64 0, %1252:vgpr_32, 0, %1254:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5376B	  renamable $vcc = V_CMP_GE_U32_e64 %1266:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5392B	  %1269:vgpr_32 = V_CNDMASK_B32_e64 0, %1266:vgpr_32, 0, %1268:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5408B	  renamable $vcc = V_CMP_GE_U32_e64 %1279:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5424B	  %1282:vgpr_32 = V_CNDMASK_B32_e64 0, %1279:vgpr_32, 0, %1281:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5440B	  renamable $vcc = V_CMP_GE_U32_e64 %1292:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5456B	  %1295:vgpr_32 = V_CNDMASK_B32_e64 0, %1292:vgpr_32, 0, %1294:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5472B	  %1257:vgpr_32 = V_SUB_U32_e32 %1255:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5488B	  %1271:vgpr_32 = V_SUB_U32_e32 %1269:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5504B	  %1284:vgpr_32 = V_SUB_U32_e32 %1282:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5520B	  %1297:vgpr_32 = V_SUB_U32_e32 %1295:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5536B	  renamable $vcc = V_CMP_GE_U32_e64 %1255:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5552B	  %1258:vgpr_32 = V_CNDMASK_B32_e64 0, %1255:vgpr_32, 0, %1257:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5568B	  renamable $vcc = V_CMP_GE_U32_e64 %1269:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5584B	  %1272:vgpr_32 = V_CNDMASK_B32_e64 0, %1269:vgpr_32, 0, %1271:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5600B	  renamable $vcc = V_CMP_GE_U32_e64 %1282:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5616B	  %1285:vgpr_32 = V_CNDMASK_B32_e64 0, %1282:vgpr_32, 0, %1284:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5632B	  renamable $vcc = V_CMP_GE_U32_e64 %1295:vgpr_32, %8662:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5648B	  %1298:vgpr_32 = V_CNDMASK_B32_e64 0, %1295:vgpr_32, 0, %1297:vgpr_32, killed $vcc, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5664B	  %1260:vgpr_32 = V_XOR_B32_e32 %1258:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5680B	  %1273:vgpr_32 = V_XOR_B32_e32 %1272:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5696B	  %1286:vgpr_32 = V_XOR_B32_e32 %1285:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5712B	  %1299:vgpr_32 = V_XOR_B32_e32 %1298:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5728B	  %1261:vgpr_32 = V_SUB_U32_e32 %1260:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5744B	  %1274:vgpr_32 = V_SUB_U32_e32 %1273:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5760B	  %1287:vgpr_32 = V_SUB_U32_e32 %1286:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5776B	  %1300:vgpr_32 = V_SUB_U32_e32 %1299:vgpr_32, %8726:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
5792B	  %1307:vgpr_32 = V_ADD_LSHL_U32_e64 %9958:vgpr_32, %1261:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5824B	  %1309:vgpr_32 = V_ADD_LSHL_U32_e64 %9958:vgpr_32, %1274:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5856B	  %1311:vgpr_32 = V_ADD_LSHL_U32_e64 %9958:vgpr_32, %1287:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5888B	  %1313:vgpr_32 = V_ADD_LSHL_U32_e64 %9958:vgpr_32, %1300:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5904B	  %1308:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1307:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5920B	  %1310:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1309:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5936B	  %1312:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1311:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5952B	  %1314:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1313:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5968B	  KILL %1311:vgpr_32
5984B	  KILL %1309:vgpr_32
6000B	  KILL %1307:vgpr_32
6016B	  KILL %1313:vgpr_32
6032B	  KILL killed renamable $sgpr16_sgpr17_sgpr18, renamable $sgpr19
6048B	  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
6320B	  %9995:vgpr_32 = V_AND_B32_e32 15, %9993:vgpr_32(s32), implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6560B	  %1359:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
6576B	  undef %9988.sub0:vreg_64_align2 = V_LSHLREV_B32_e32 4, %9995:vgpr_32, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6592B	  renamable $sgpr4 = S_ADD_I32 renamable $sgpr23, 255, implicit-def dead $scc, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
6608B	  renamable $sgpr3 = S_XOR_B32 killed renamable $sgpr3, renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
6624B	  renamable $sgpr34 = S_SUB_I32 killed renamable $sgpr3, killed renamable $sgpr7, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
6640B	  renamable $sgpr35 = S_ASHR_I32 renamable $sgpr34, 31, implicit-def dead $scc, debug-location !47; moe_op_gemm_a8w4.py:328:28
6656B	  S_CMPK_GT_I32 renamable $sgpr4, 255, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
6672B	  %1315:vgpr_32 = V_ASHRREV_I32_e32 31, %1308:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6688B	  %1321:vgpr_32 = V_ASHRREV_I32_e32 31, %1310:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6704B	  %1325:vgpr_32 = V_ASHRREV_I32_e32 31, %1312:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6720B	  %1329:vgpr_32 = V_ASHRREV_I32_e32 31, %1314:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6736B	  %1317:vgpr_32 = V_LSHRREV_B32_e32 29, %1315:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6752B	  %1322:vgpr_32 = V_LSHRREV_B32_e32 29, %1321:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6768B	  %1326:vgpr_32 = V_LSHRREV_B32_e32 29, %1325:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6784B	  %1330:vgpr_32 = V_LSHRREV_B32_e32 29, %1329:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6800B	  %1318:vgpr_32 = V_ADD_U32_e32 %1308:vgpr_32, %1317:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6816B	  %1323:vgpr_32 = V_ADD_U32_e32 %1310:vgpr_32, %1322:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6832B	  %1327:vgpr_32 = V_ADD_U32_e32 %1312:vgpr_32, %1326:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6848B	  %1331:vgpr_32 = V_ADD_U32_e32 %1314:vgpr_32, %1330:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6864B	  %1320:vgpr_32 = V_ASHRREV_I32_e32 3, %1318:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6880B	  %1324:vgpr_32 = V_ASHRREV_I32_e32 3, %1323:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6896B	  %1328:vgpr_32 = V_ASHRREV_I32_e32 3, %1327:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6912B	  %1332:vgpr_32 = V_ASHRREV_I32_e32 3, %1331:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
6928B	  %1337:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1320:vgpr_32, $sgpr8, %9988:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6944B	  %1340:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1324:vgpr_32, $sgpr8, %9988:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6960B	  %1343:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1328:vgpr_32, $sgpr8, %9988:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6976B	  %1346:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %1332:vgpr_32, killed $sgpr8, %9988:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6992B	  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
7008B	  renamable $sgpr25 = S_AND_B32 renamable $sgpr25, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
7024B	  %1358:vgpr_32 = V_CNDMASK_B32_e64 0, %1359:vgpr_32, 0, %1337.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7056B	  %1360:vgpr_32 = V_CNDMASK_B32_e64 0, %1359:vgpr_32, 0, %1340.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7088B	  %1362:vgpr_32 = V_CNDMASK_B32_e64 0, %1359:vgpr_32, 0, %1343.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7120B	  %1364:vgpr_32 = V_CNDMASK_B32_e64 0, %1359:vgpr_32, 0, %1346.sub0:vreg_64_align2, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7136B	  %36:vreg_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1358:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7152B	  %37:vreg_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1360:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7168B	  %38:vreg_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1362:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7184B	  %39:vreg_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1364:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7200B	  KILL %1364:vgpr_32
7216B	  KILL %1362:vgpr_32
7232B	  KILL %1360:vgpr_32
7248B	  KILL %1358:vgpr_32
7264B	  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
7280B	  undef %8642.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
7296B	  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
7312B	  %1371:vgpr_32 = V_LSHRREV_B32_e32 5, %9993:vgpr_32(s32), implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
7328B	  undef %9468.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr8, %1371:vgpr_32, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7344B	  %9468.sub1:vreg_64_align2 = COPY renamable $sgpr9, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7392B	  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7440B	  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7472B	  renamable $sgpr3 = COPY killed renamable $sgpr9, debug-location !67; moe_op_gemm_a8w4.py:362:77
7488B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7504B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7520B	  %9469:vreg_64_align2 = IMPLICIT_DEF
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
7728B	  %9448:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
7776B	  $exec = S_XOR_B64_term $exec, renamable $sgpr8_sgpr9, implicit-def $scc
7792B	  S_CBRANCH_EXECZ %bb.7, implicit $exec
7808B	  S_BRANCH %bb.5

7824B	bb.5 (%ir-block.366):
	; predecessors: %bb.4
	  successors: %bb.7(0x80000000); %bb.7(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F
7856B	  %1607:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9448:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7872B	  %1608:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %1607:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7888B	  %1609:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1608:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7904B	  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7920B	  %8655:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr10, %1609:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7936B	  %8654:vgpr_32 = V_MUL_HI_U32_e64 %1609:vgpr_32, %8655:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7952B	  %8653:vgpr_32 = V_ADD_U32_e32 %1609:vgpr_32, %8654:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7968B	  %1616:vgpr_32 = V_MUL_HI_U32_e64 %9468.sub0:vreg_64_align2, %8653:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7984B	  %1617:vgpr_32 = V_MUL_LO_U32_e64 %1616:vgpr_32, $sgpr22, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8000B	  %1618:vgpr_32 = V_SUB_U32_e32 %9468.sub0:vreg_64_align2, %1617:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8032B	  %1620:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1618:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8048B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1618:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8064B	  %1621:vgpr_32 = V_CNDMASK_B32_e64 0, %1618:vgpr_32, 0, %1620:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8096B	  %1623:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1621:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8112B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1621:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8128B	  undef %9469.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %1621:vgpr_32, 0, %1623:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
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
8352B	  %1390:vgpr_32 = V_CVT_F32_U32_e32 $sgpr10, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8368B	  %1392:vgpr_32 = V_CVT_F32_U32_e32 $sgpr11, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8384B	  %1394:vgpr_32 = nofpexcept V_FMAMK_F32 %1392:vgpr_32, 1333788672, %1390:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8400B	  %1395:vgpr_32 = nofpexcept V_RCP_F32_e32 %1394:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8416B	  %1397:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1395:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8432B	  %1399:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1397:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8448B	  %1400:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1399:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8464B	  %1402:vgpr_32 = nofpexcept V_FMAMK_F32 %1400:vgpr_32, -813694976, %1397:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8576B	  %1412:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1400:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8592B	  %1403:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1402:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8608B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr10, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8624B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr11, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
8640B	  renamable $sgpr16 = V_READFIRSTLANE_B32 %1412:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8656B	  renamable $sgpr17 = V_READFIRSTLANE_B32 %1403:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
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
9376B	  undef %8650.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9468.sub1:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9408B	  %8650.sub1:vreg_64_align2 = COPY %8650.sub0:vreg_64_align2, debug-location !67; moe_op_gemm_a8w4.py:362:77
9424B	  %1498:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9468:vreg_64_align2, 0, %8650:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9440B	  %1500:vgpr_32 = V_XOR_B32_e32 %1498.sub1:vreg_64_align2, %8650.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9456B	  %1503:vgpr_32 = V_XOR_B32_e32 %1498.sub0:vreg_64_align2, %8650.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9472B	  %8649:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1503:vgpr_32, $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9520B	  %8642.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %1503:vgpr_32, $sgpr17, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9568B	  %1513:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8642:vreg_64_align2, 0, %8649:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9584B	  %8645:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1500:vgpr_32, killed $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9600B	  %1520:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1500:vgpr_32, killed $sgpr17, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9616B	  dead %1527:vgpr_32 = V_ADD_CO_U32_e32 %1513.sub0:vreg_64_align2, %1520.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9632B	  %8642.sub0:vreg_64_align2 = V_ADDC_U32_e32 %1513.sub1:vreg_64_align2, %1520.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9648B	  %8645.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8645.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9728B	  %1536:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8642:vreg_64_align2, 0, %8645:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9744B	  %1538:vgpr_32 = V_MUL_LO_U32_e64 $sgpr11, %1536.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9760B	  %1540:vgpr_32 = V_MUL_LO_U32_e64 $sgpr10, %1536.sub1:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9776B	  %1541:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr10, %1536.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9792B	  %1544:vgpr_32 = V_ADD3_U32_e64 %1541.sub1:vreg_64_align2, %1540:vgpr_32, %1538:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9808B	  %1545:vgpr_32 = V_SUB_U32_e32 %1500:vgpr_32, %1544:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9840B	  %1551:vgpr_32 = COPY renamable $sgpr11, debug-location !67; moe_op_gemm_a8w4.py:362:77
9856B	  %1547:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %1503:vgpr_32, %1541.sub0:vreg_64_align2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9872B	  %1549:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %1545:vgpr_32, %1551:vgpr_32, $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9888B	  %1552:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, %1547:vgpr_32, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9904B	  %1554:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %1549:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9920B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr11, %1554:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9936B	  %1559:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9968B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr10, %1552:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9984B	  %1564:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10000B	  renamable $sgpr2_sgpr3 = V_CMP_EQ_U32_e64 $sgpr11, %1554:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10016B	  %1567:vgpr_32 = V_CNDMASK_B32_e64 0, %1559:vgpr_32, 0, %1564:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10048B	  %1573:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, %1552:vgpr_32, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10064B	  %1579:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %1500:vgpr_32, %1544:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10080B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr11, %1579:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10096B	  %1582:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10128B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr10, %1547:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10144B	  %1587:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10160B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr11, %1579:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10176B	  %1590:vgpr_32 = V_CNDMASK_B32_e64 0, %1582:vgpr_32, 0, %1587:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10192B	  renamable $vcc = V_CMP_NE_U32_e64 0, %1567:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10224B	  %1594:vgpr_32 = V_CNDMASK_B32_e64 0, %1552:vgpr_32, 0, %1573:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10240B	  renamable $vcc = V_CMP_NE_U32_e64 0, %1590:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10256B	  %1595:vgpr_32 = V_CNDMASK_B32_e64 0, %1547:vgpr_32, 0, %1594:vgpr_32, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10272B	  %1600:vgpr_32 = V_XOR_B32_e32 %1595:vgpr_32, %8650.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10288B	  undef %9469.sub0:vreg_64_align2, dead renamable $vcc = V_SUB_CO_U32_e64 %1600:vgpr_32, %8650.sub0:vreg_64_align2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10336B	  %9468:vreg_64_align2 = IMPLICIT_DEF
10352B	  S_BRANCH %bb.4, debug-location !67; moe_op_gemm_a8w4.py:362:77

10368B	bb.7 (%ir-block.373):
	; predecessors: %bb.4, %bb.5
	  successors: %bb.10(0x40000000), %bb.8(0x40000000); %bb.10(50.00%), %bb.8(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F
10384B	  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
10416B	  %9991:vgpr_32 = V_LSHLREV_B32_e32 3, %9993:vgpr_32(s32), implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10432B	  %50:vgpr_32 = V_AND_B32_e32 248, %9991:vgpr_32, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10448B	  %8712:vgpr_32 = V_MUL_LO_U32_e64 %9970:vgpr_32, $sgpr2, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
10464B	  %52:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr3, %9469.sub0:vreg_64_align2, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10480B	  %1631:vgpr_32 = V_ADD3_U32_e64 %8712:vgpr_32, %50:vgpr_32, %52:vgpr_32, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10496B	  renamable $sgpr31 = S_MOV_B32 159744
10512B	  renamable $sgpr30 = S_MOV_B32 2147483646
10528B	  renamable $sgpr29 = S_AND_B32 renamable $sgpr29, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
10608B	  %1643:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10624B	  %1642:vgpr_32 = V_CNDMASK_B32_e64 0, %1643:vgpr_32, 0, %1631:vgpr_32, $sgpr6_sgpr7, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10656B	  %55:vreg_64_align2 = BUFFER_LOAD_DWORDX2_OFFEN %1642:vgpr_32, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
10672B	  renamable $sgpr2 = S_MOV_B32 0
10688B	  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
10704B	  %9960:vgpr_32 = V_LSHRREV_B32_e32 3, %9993:vgpr_32(s32), implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
10720B	  undef %9471.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr18, %9960:vgpr_32, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10736B	  %9471.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10784B	  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10816B	  renamable $sgpr3 = COPY renamable $sgpr11, debug-location !75; moe_op_gemm_a8w4.py:377:35
10832B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10848B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10864B	  %9472:vreg_64_align2 = IMPLICIT_DEF
10896B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10912B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10928B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10944B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
10960B	  S_CBRANCH_EXECZ %bb.8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10976B	  S_BRANCH %bb.10, debug-location !75; moe_op_gemm_a8w4.py:377:35

10992B	bb.8.Flow348:
	; predecessors: %bb.7, %bb.10
	  successors: %bb.9(0x40000000), %bb.11(0x40000000); %bb.9(50.00%), %bb.11(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
11008B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
11056B	  %9447:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
11104B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
11120B	  S_CBRANCH_EXECZ %bb.11, implicit $exec
11136B	  S_BRANCH %bb.9

11152B	bb.9 (%ir-block.400):
	; predecessors: %bb.8
	  successors: %bb.11(0x80000000); %bb.11(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
11184B	  %1880:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9447:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11200B	  %1881:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %1880:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11216B	  %1882:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1881:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11232B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11248B	  %8638:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %1882:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11264B	  %8637:vgpr_32 = V_MUL_HI_U32_e64 %1882:vgpr_32, %8638:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11280B	  %8636:vgpr_32 = V_ADD_U32_e32 %1882:vgpr_32, %8637:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11296B	  %1889:vgpr_32 = V_MUL_HI_U32_e64 %9471.sub0:vreg_64_align2, %8636:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11312B	  %1890:vgpr_32 = V_MUL_LO_U32_e64 %1889:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11328B	  %1891:vgpr_32 = V_SUB_U32_e32 %9471.sub0:vreg_64_align2, %1890:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11360B	  %1893:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1891:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11376B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1891:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11392B	  %1894:vgpr_32 = V_CNDMASK_B32_e64 0, %1891:vgpr_32, 0, %1893:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11424B	  %1896:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %1894:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11440B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %1894:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11456B	  undef %9472.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %1894:vgpr_32, 0, %1896:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11472B	  %9472.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11552B	  S_BRANCH %bb.11, debug-location !75; moe_op_gemm_a8w4.py:377:35

11568B	bb.10 (%ir-block.405):
	; predecessors: %bb.7
	  successors: %bb.8(0x80000000); %bb.8(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
11584B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11616B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
11632B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11648B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11696B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11712B	  %1663:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11728B	  %1665:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11744B	  %1667:vgpr_32 = nofpexcept V_FMAMK_F32 %1665:vgpr_32, 1333788672, %1663:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11760B	  %1668:vgpr_32 = nofpexcept V_RCP_F32_e32 %1667:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11776B	  %1670:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1668:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11792B	  %1672:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1670:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11808B	  %1673:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1672:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11824B	  %1675:vgpr_32 = nofpexcept V_FMAMK_F32 %1673:vgpr_32, -813694976, %1670:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11936B	  %1685:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1673:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11952B	  %1676:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1675:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11968B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11984B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12000B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %1685:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12016B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %1676:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12032B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
12048B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12064B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12080B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12096B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12112B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12128B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12144B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12160B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
12176B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12192B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12208B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12224B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
12240B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
12256B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12272B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12288B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12304B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12320B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12336B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12352B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12368B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12384B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
12400B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12416B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12432B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12448B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12464B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12480B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
12496B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12512B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12528B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12544B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12560B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12576B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12592B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12608B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12624B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12640B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12656B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
12672B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12688B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12704B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12720B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12736B	  undef %8633.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9471.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12768B	  %8633.sub1:vreg_64_align2 = COPY %8633.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12784B	  %1771:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9471:vreg_64_align2, 0, %8633:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12800B	  %1773:vgpr_32 = V_XOR_B32_e32 %1771.sub1:vreg_64_align2, %8633.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12816B	  %1776:vgpr_32 = V_XOR_B32_e32 %1771.sub0:vreg_64_align2, %8633.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12832B	  %8632:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1776:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12880B	  undef %8625.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %1776:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12896B	  %8625.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12944B	  %1786:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8625:vreg_64_align2, 0, %8632:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12960B	  %8628:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1773:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12976B	  %1793:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %1773:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12992B	  dead %1800:vgpr_32 = V_ADD_CO_U32_e32 %1786.sub0:vreg_64_align2, %1793.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13008B	  %8625.sub0:vreg_64_align2 = V_ADDC_U32_e32 %1786.sub1:vreg_64_align2, %1793.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13024B	  %8628.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8628.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13104B	  %1809:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8625:vreg_64_align2, 0, %8628:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13120B	  %1811:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %1809.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13136B	  %1813:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %1809.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13152B	  %1814:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %1809.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13168B	  %1817:vgpr_32 = V_ADD3_U32_e64 %1814.sub1:vreg_64_align2, %1813:vgpr_32, %1811:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13184B	  %1818:vgpr_32 = V_SUB_U32_e32 %1773:vgpr_32, %1817:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13216B	  %1824:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
13232B	  %1820:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %1776:vgpr_32, %1814.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13248B	  %1822:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %1818:vgpr_32, %1824:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13264B	  %1825:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %1820:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13280B	  %1827:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %1822:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13296B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %1827:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13312B	  %1832:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13344B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %1825:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13360B	  %1837:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13376B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %1827:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13392B	  %1840:vgpr_32 = V_CNDMASK_B32_e64 0, %1832:vgpr_32, 0, %1837:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13424B	  %1843:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %1822:vgpr_32, %1824:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13440B	  %1846:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %1825:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13456B	  %1848:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %1843:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13472B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %1840:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13488B	  %1851:vgpr_32 = V_CNDMASK_B32_e64 0, %1827:vgpr_32, 0, %1848:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13504B	  %1852:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %1773:vgpr_32, %1817:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13520B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %1852:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13536B	  %1855:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13568B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %1820:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13584B	  %1860:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13600B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %1852:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13616B	  %1863:vgpr_32 = V_CNDMASK_B32_e64 0, %1855:vgpr_32, 0, %1860:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13632B	  renamable $vcc = V_CMP_NE_U32_e64 0, %1863:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13648B	  %1866:vgpr_32 = V_CNDMASK_B32_e64 0, %1852:vgpr_32, 0, %1851:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13664B	  %1867:vgpr_32 = V_CNDMASK_B32_e64 0, %1825:vgpr_32, 0, %1846:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13680B	  %1868:vgpr_32 = V_CNDMASK_B32_e64 0, %1820:vgpr_32, 0, %1867:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13696B	  %1871:vgpr_32 = V_XOR_B32_e32 %1866:vgpr_32, %8633.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13712B	  %1873:vgpr_32 = V_XOR_B32_e32 %1868:vgpr_32, %8633.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13728B	  undef %9472.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %1873:vgpr_32, %8633.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13744B	  %9472.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %1871:vgpr_32, %8633.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13824B	  S_BRANCH %bb.8, debug-location !75; moe_op_gemm_a8w4.py:377:35

13840B	bb.11 (%ir-block.407):
	; predecessors: %bb.8, %bb.9
	  successors: %bb.14(0x40000000), %bb.12(0x40000000); %bb.14(50.00%), %bb.12(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
13856B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
13888B	  undef %9474.sub0:vreg_64_align2 = V_OR3_B32_e64 %9960:vgpr_32, $sgpr18, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13904B	  %9474.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13952B	  renamable $sgpr10 = S_MOV_B32 0
14000B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14016B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14032B	  %9475:vreg_64_align2 = IMPLICIT_DEF
14064B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14080B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14096B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14112B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
14128B	  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14144B	  S_BRANCH %bb.14, debug-location !75; moe_op_gemm_a8w4.py:377:35

14160B	bb.12.Flow347:
	; predecessors: %bb.11, %bb.14
	  successors: %bb.13(0x40000000), %bb.15(0x40000000); %bb.13(50.00%), %bb.15(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
14176B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
14224B	  %9446:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
14272B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
14288B	  S_CBRANCH_EXECZ %bb.15, implicit $exec
14304B	  S_BRANCH %bb.13

14320B	bb.13 (%ir-block.422):
	; predecessors: %bb.12
	  successors: %bb.15(0x80000000); %bb.15(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
14352B	  %2138:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9446:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14368B	  %2139:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2138:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14384B	  %2140:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2139:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14400B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14416B	  %8621:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2140:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14432B	  %8620:vgpr_32 = V_MUL_HI_U32_e64 %2140:vgpr_32, %8621:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14448B	  %8619:vgpr_32 = V_ADD_U32_e32 %2140:vgpr_32, %8620:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14464B	  %2147:vgpr_32 = V_MUL_HI_U32_e64 %9474.sub0:vreg_64_align2, %8619:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14480B	  %2148:vgpr_32 = V_MUL_LO_U32_e64 %2147:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14496B	  %2149:vgpr_32 = V_SUB_U32_e32 %9474.sub0:vreg_64_align2, %2148:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14528B	  %2151:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2149:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14544B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2149:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14560B	  %2152:vgpr_32 = V_CNDMASK_B32_e64 0, %2149:vgpr_32, 0, %2151:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14592B	  %2154:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2152:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14608B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2152:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14624B	  undef %9475.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2152:vgpr_32, 0, %2154:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14640B	  %9475.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14720B	  S_BRANCH %bb.15, debug-location !75; moe_op_gemm_a8w4.py:377:35

14736B	bb.14 (%ir-block.427):
	; predecessors: %bb.11
	  successors: %bb.12(0x80000000); %bb.12(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
14752B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14784B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
14800B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14816B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14864B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14880B	  %1921:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14896B	  %1923:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14912B	  %1925:vgpr_32 = nofpexcept V_FMAMK_F32 %1923:vgpr_32, 1333788672, %1921:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14928B	  %1926:vgpr_32 = nofpexcept V_RCP_F32_e32 %1925:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14944B	  %1928:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1926:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14960B	  %1930:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1928:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14976B	  %1931:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1930:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14992B	  %1933:vgpr_32 = nofpexcept V_FMAMK_F32 %1931:vgpr_32, -813694976, %1928:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15104B	  %1943:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1931:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15120B	  %1934:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1933:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15136B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15152B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15168B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %1943:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15184B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %1934:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15200B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
15216B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15232B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15248B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15264B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15280B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15296B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15312B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15328B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
15344B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15360B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15376B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15392B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
15408B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
15424B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15440B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15456B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15472B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15488B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15504B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15520B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15536B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15552B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
15568B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15584B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15600B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15616B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15632B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15648B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
15664B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15680B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15696B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15712B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15728B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15744B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15760B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15776B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15792B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15808B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15824B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
15840B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15856B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15872B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15888B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15904B	  undef %8616.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9474.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15936B	  %8616.sub1:vreg_64_align2 = COPY %8616.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15952B	  %2029:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9474:vreg_64_align2, 0, %8616:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15968B	  %2031:vgpr_32 = V_XOR_B32_e32 %2029.sub1:vreg_64_align2, %8616.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15984B	  %2034:vgpr_32 = V_XOR_B32_e32 %2029.sub0:vreg_64_align2, %8616.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16000B	  %8615:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2034:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16048B	  undef %8608.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2034:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16064B	  %8608.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16112B	  %2044:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8608:vreg_64_align2, 0, %8615:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16128B	  %8611:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2031:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16144B	  %2051:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2031:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16160B	  dead %2058:vgpr_32 = V_ADD_CO_U32_e32 %2044.sub0:vreg_64_align2, %2051.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16176B	  %8608.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2044.sub1:vreg_64_align2, %2051.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16192B	  %8611.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8611.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16272B	  %2067:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8608:vreg_64_align2, 0, %8611:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16288B	  %2069:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2067.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16304B	  %2071:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2067.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16320B	  %2072:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2067.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16336B	  %2075:vgpr_32 = V_ADD3_U32_e64 %2072.sub1:vreg_64_align2, %2071:vgpr_32, %2069:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16352B	  %2076:vgpr_32 = V_SUB_U32_e32 %2031:vgpr_32, %2075:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16384B	  %2082:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
16400B	  %2078:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2034:vgpr_32, %2072.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16416B	  %2080:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2076:vgpr_32, %2082:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16432B	  %2083:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2078:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16448B	  %2085:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2080:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16464B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2085:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16480B	  %2090:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16512B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2083:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16528B	  %2095:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16544B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2085:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16560B	  %2098:vgpr_32 = V_CNDMASK_B32_e64 0, %2090:vgpr_32, 0, %2095:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16592B	  %2101:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2080:vgpr_32, %2082:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16608B	  %2104:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2083:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16624B	  %2106:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2101:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16640B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2098:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16656B	  %2109:vgpr_32 = V_CNDMASK_B32_e64 0, %2085:vgpr_32, 0, %2106:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16672B	  %2110:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2031:vgpr_32, %2075:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16688B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2110:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16704B	  %2113:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16736B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2078:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16752B	  %2118:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16768B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2110:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16784B	  %2121:vgpr_32 = V_CNDMASK_B32_e64 0, %2113:vgpr_32, 0, %2118:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16800B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2121:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16816B	  %2124:vgpr_32 = V_CNDMASK_B32_e64 0, %2110:vgpr_32, 0, %2109:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16832B	  %2125:vgpr_32 = V_CNDMASK_B32_e64 0, %2083:vgpr_32, 0, %2104:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16848B	  %2126:vgpr_32 = V_CNDMASK_B32_e64 0, %2078:vgpr_32, 0, %2125:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16864B	  %2129:vgpr_32 = V_XOR_B32_e32 %2124:vgpr_32, %8616.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16880B	  %2131:vgpr_32 = V_XOR_B32_e32 %2126:vgpr_32, %8616.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16896B	  undef %9475.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2131:vgpr_32, %8616.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16912B	  %9475.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2129:vgpr_32, %8616.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16976B	  %9474:vreg_64_align2 = IMPLICIT_DEF
16992B	  S_BRANCH %bb.12, debug-location !75; moe_op_gemm_a8w4.py:377:35

17008B	bb.15 (%ir-block.429):
	; predecessors: %bb.12, %bb.13
	  successors: %bb.18(0x40000000), %bb.16(0x40000000); %bb.18(50.00%), %bb.16(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17024B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
17056B	  undef %9477.sub0:vreg_64_align2 = V_OR_B32_e32 128, %9471.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17072B	  %9477.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17120B	  renamable $sgpr10 = S_MOV_B32 0
17168B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17184B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17200B	  %9478:vreg_64_align2 = IMPLICIT_DEF
17232B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17248B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17264B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17280B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
17296B	  S_CBRANCH_EXECZ %bb.16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17312B	  S_BRANCH %bb.18, debug-location !75; moe_op_gemm_a8w4.py:377:35

17328B	bb.16.Flow346:
	; predecessors: %bb.15, %bb.18
	  successors: %bb.17(0x40000000), %bb.19(0x40000000); %bb.17(50.00%), %bb.19(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17344B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
17392B	  %9445:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
17440B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
17456B	  S_CBRANCH_EXECZ %bb.19, implicit $exec
17472B	  S_BRANCH %bb.17

17488B	bb.17 (%ir-block.444):
	; predecessors: %bb.16
	  successors: %bb.19(0x80000000); %bb.19(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17520B	  %2396:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9445:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17536B	  %2397:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2396:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17552B	  %2398:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2397:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17568B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17584B	  %8604:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2398:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17600B	  %8603:vgpr_32 = V_MUL_HI_U32_e64 %2398:vgpr_32, %8604:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17616B	  %8602:vgpr_32 = V_ADD_U32_e32 %2398:vgpr_32, %8603:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17632B	  %2405:vgpr_32 = V_MUL_HI_U32_e64 %9477.sub0:vreg_64_align2, %8602:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17648B	  %2406:vgpr_32 = V_MUL_LO_U32_e64 %2405:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17664B	  %2407:vgpr_32 = V_SUB_U32_e32 %9477.sub0:vreg_64_align2, %2406:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17696B	  %2409:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2407:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17712B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2407:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17728B	  %2410:vgpr_32 = V_CNDMASK_B32_e64 0, %2407:vgpr_32, 0, %2409:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17760B	  %2412:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2410:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17776B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2410:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17792B	  undef %9478.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2410:vgpr_32, 0, %2412:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17808B	  %9478.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17888B	  S_BRANCH %bb.19, debug-location !75; moe_op_gemm_a8w4.py:377:35

17904B	bb.18 (%ir-block.449):
	; predecessors: %bb.15
	  successors: %bb.16(0x80000000); %bb.16(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
17920B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17952B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
17968B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17984B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18032B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18048B	  %2179:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18064B	  %2181:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18080B	  %2183:vgpr_32 = nofpexcept V_FMAMK_F32 %2181:vgpr_32, 1333788672, %2179:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18096B	  %2184:vgpr_32 = nofpexcept V_RCP_F32_e32 %2183:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18112B	  %2186:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2184:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18128B	  %2188:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2186:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18144B	  %2189:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2188:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18160B	  %2191:vgpr_32 = nofpexcept V_FMAMK_F32 %2189:vgpr_32, -813694976, %2186:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18272B	  %2201:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2189:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18288B	  %2192:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2191:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18304B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18320B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18336B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2201:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18352B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2192:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18368B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
18384B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18400B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18416B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18432B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18448B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18464B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18480B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18496B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
18512B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18528B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18544B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18560B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
18576B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
18592B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18608B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18624B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18640B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18656B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18672B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18688B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18704B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18720B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
18736B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18752B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18768B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18784B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18800B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18816B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
18832B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18848B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18864B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18880B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
18896B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18912B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18928B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18944B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18960B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18976B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18992B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
19008B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19024B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19040B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19056B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
19072B	  undef %8599.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9477.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19104B	  %8599.sub1:vreg_64_align2 = COPY %8599.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
19120B	  %2287:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9477:vreg_64_align2, 0, %8599:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19136B	  %2289:vgpr_32 = V_XOR_B32_e32 %2287.sub1:vreg_64_align2, %8599.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19152B	  %2292:vgpr_32 = V_XOR_B32_e32 %2287.sub0:vreg_64_align2, %8599.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19168B	  %8598:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2292:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19216B	  undef %8591.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2292:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19232B	  %8591.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19280B	  %2302:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8591:vreg_64_align2, 0, %8598:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19296B	  %8594:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2289:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19312B	  %2309:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2289:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19328B	  dead %2316:vgpr_32 = V_ADD_CO_U32_e32 %2302.sub0:vreg_64_align2, %2309.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19344B	  %8591.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2302.sub1:vreg_64_align2, %2309.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19360B	  %8594.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8594.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19440B	  %2325:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8591:vreg_64_align2, 0, %8594:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19456B	  %2327:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2325.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19472B	  %2329:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2325.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19488B	  %2330:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2325.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19504B	  %2333:vgpr_32 = V_ADD3_U32_e64 %2330.sub1:vreg_64_align2, %2329:vgpr_32, %2327:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19520B	  %2334:vgpr_32 = V_SUB_U32_e32 %2289:vgpr_32, %2333:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19552B	  %2340:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
19568B	  %2336:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2292:vgpr_32, %2330.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19584B	  %2338:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2334:vgpr_32, %2340:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19600B	  %2341:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2336:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19616B	  %2343:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2338:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19632B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2343:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19648B	  %2348:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19680B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2341:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19696B	  %2353:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19712B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2343:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19728B	  %2356:vgpr_32 = V_CNDMASK_B32_e64 0, %2348:vgpr_32, 0, %2353:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19760B	  %2359:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2338:vgpr_32, %2340:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19776B	  %2362:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2341:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19792B	  %2364:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2359:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19808B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2356:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19824B	  %2367:vgpr_32 = V_CNDMASK_B32_e64 0, %2343:vgpr_32, 0, %2364:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19840B	  %2368:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2289:vgpr_32, %2333:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19856B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2368:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19872B	  %2371:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19904B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2336:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19920B	  %2376:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19936B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2368:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19952B	  %2379:vgpr_32 = V_CNDMASK_B32_e64 0, %2371:vgpr_32, 0, %2376:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19968B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2379:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19984B	  %2382:vgpr_32 = V_CNDMASK_B32_e64 0, %2368:vgpr_32, 0, %2367:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20000B	  %2383:vgpr_32 = V_CNDMASK_B32_e64 0, %2341:vgpr_32, 0, %2362:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20016B	  %2384:vgpr_32 = V_CNDMASK_B32_e64 0, %2336:vgpr_32, 0, %2383:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20032B	  %2387:vgpr_32 = V_XOR_B32_e32 %2382:vgpr_32, %8599.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20048B	  %2389:vgpr_32 = V_XOR_B32_e32 %2384:vgpr_32, %8599.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20064B	  undef %9478.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2389:vgpr_32, %8599.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20080B	  %9478.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2387:vgpr_32, %8599.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20144B	  %9477:vreg_64_align2 = IMPLICIT_DEF
20160B	  S_BRANCH %bb.16, debug-location !75; moe_op_gemm_a8w4.py:377:35

20176B	bb.19 (%ir-block.451):
	; predecessors: %bb.16, %bb.17
	  successors: %bb.22(0x40000000), %bb.20(0x40000000); %bb.22(50.00%), %bb.20(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
20192B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
20224B	  undef %9480.sub0:vreg_64_align2 = V_OR_B32_e32 192, %9471.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20240B	  %9480.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20288B	  renamable $sgpr10 = S_MOV_B32 0
20336B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20352B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20368B	  %9481:vreg_64_align2 = IMPLICIT_DEF
20400B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20416B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20432B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20448B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
20464B	  S_CBRANCH_EXECZ %bb.20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20480B	  S_BRANCH %bb.22, debug-location !75; moe_op_gemm_a8w4.py:377:35

20496B	bb.20.Flow345:
	; predecessors: %bb.19, %bb.22
	  successors: %bb.21(0x40000000), %bb.23(0x40000000); %bb.21(50.00%), %bb.23(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
20512B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
20560B	  %9444:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
20608B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
20624B	  S_CBRANCH_EXECZ %bb.23, implicit $exec
20640B	  S_BRANCH %bb.21

20656B	bb.21 (%ir-block.466):
	; predecessors: %bb.20
	  successors: %bb.23(0x80000000); %bb.23(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
20688B	  %2654:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9444:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20704B	  %2655:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2654:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20720B	  %2656:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2655:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20736B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20752B	  %8587:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2656:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20768B	  %8586:vgpr_32 = V_MUL_HI_U32_e64 %2656:vgpr_32, %8587:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20784B	  %8585:vgpr_32 = V_ADD_U32_e32 %2656:vgpr_32, %8586:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20800B	  %2663:vgpr_32 = V_MUL_HI_U32_e64 %9480.sub0:vreg_64_align2, %8585:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20816B	  %2664:vgpr_32 = V_MUL_LO_U32_e64 %2663:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20832B	  %2665:vgpr_32 = V_SUB_U32_e32 %9480.sub0:vreg_64_align2, %2664:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20864B	  %2667:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2665:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20880B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2665:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20896B	  %2668:vgpr_32 = V_CNDMASK_B32_e64 0, %2665:vgpr_32, 0, %2667:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20928B	  %2670:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2668:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20944B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2668:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20960B	  undef %9481.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2668:vgpr_32, 0, %2670:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20976B	  %9481.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21056B	  S_BRANCH %bb.23, debug-location !75; moe_op_gemm_a8w4.py:377:35

21072B	bb.22 (%ir-block.471):
	; predecessors: %bb.19
	  successors: %bb.20(0x80000000); %bb.20(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
21088B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21120B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
21136B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21152B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21200B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21216B	  %2437:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21232B	  %2439:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21248B	  %2441:vgpr_32 = nofpexcept V_FMAMK_F32 %2439:vgpr_32, 1333788672, %2437:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21264B	  %2442:vgpr_32 = nofpexcept V_RCP_F32_e32 %2441:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21280B	  %2444:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2442:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21296B	  %2446:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2444:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21312B	  %2447:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2446:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21328B	  %2449:vgpr_32 = nofpexcept V_FMAMK_F32 %2447:vgpr_32, -813694976, %2444:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21440B	  %2459:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2447:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21456B	  %2450:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2449:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21472B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21488B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21504B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2459:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21520B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2450:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21536B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
21552B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21568B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21584B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21600B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21616B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21632B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21648B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21664B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
21680B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21696B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21712B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21728B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
21744B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
21760B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21776B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21792B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21808B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21824B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21840B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21856B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21872B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21888B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
21904B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21920B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21936B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
21952B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21968B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
21984B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
22000B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22016B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22032B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22048B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22064B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22080B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22096B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22112B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22128B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22144B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22160B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
22176B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22192B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22208B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22224B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
22240B	  undef %8582.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9480.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22272B	  %8582.sub1:vreg_64_align2 = COPY %8582.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
22288B	  %2545:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9480:vreg_64_align2, 0, %8582:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22304B	  %2547:vgpr_32 = V_XOR_B32_e32 %2545.sub1:vreg_64_align2, %8582.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22320B	  %2550:vgpr_32 = V_XOR_B32_e32 %2545.sub0:vreg_64_align2, %8582.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22336B	  %8581:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2550:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22384B	  undef %8574.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2550:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22400B	  %8574.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22448B	  %2560:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8574:vreg_64_align2, 0, %8581:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22464B	  %8577:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2547:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22480B	  %2567:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2547:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22496B	  dead %2574:vgpr_32 = V_ADD_CO_U32_e32 %2560.sub0:vreg_64_align2, %2567.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22512B	  %8574.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2560.sub1:vreg_64_align2, %2567.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22528B	  %8577.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8577.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22608B	  %2583:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8574:vreg_64_align2, 0, %8577:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22624B	  %2585:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2583.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22640B	  %2587:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2583.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22656B	  %2588:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2583.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22672B	  %2591:vgpr_32 = V_ADD3_U32_e64 %2588.sub1:vreg_64_align2, %2587:vgpr_32, %2585:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22688B	  %2592:vgpr_32 = V_SUB_U32_e32 %2547:vgpr_32, %2591:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22720B	  %2598:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
22736B	  %2594:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2550:vgpr_32, %2588.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22752B	  %2596:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2592:vgpr_32, %2598:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22768B	  %2599:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2594:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22784B	  %2601:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2596:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22800B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2601:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22816B	  %2606:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22848B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2599:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22864B	  %2611:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22880B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2601:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22896B	  %2614:vgpr_32 = V_CNDMASK_B32_e64 0, %2606:vgpr_32, 0, %2611:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22928B	  %2617:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2596:vgpr_32, %2598:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22944B	  %2620:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2599:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22960B	  %2622:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2617:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22976B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2614:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22992B	  %2625:vgpr_32 = V_CNDMASK_B32_e64 0, %2601:vgpr_32, 0, %2622:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23008B	  %2626:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2547:vgpr_32, %2591:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23024B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2626:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23040B	  %2629:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23072B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2594:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23088B	  %2634:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23104B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2626:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23120B	  %2637:vgpr_32 = V_CNDMASK_B32_e64 0, %2629:vgpr_32, 0, %2634:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23136B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2637:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23152B	  %2640:vgpr_32 = V_CNDMASK_B32_e64 0, %2626:vgpr_32, 0, %2625:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23168B	  %2641:vgpr_32 = V_CNDMASK_B32_e64 0, %2599:vgpr_32, 0, %2620:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23184B	  %2642:vgpr_32 = V_CNDMASK_B32_e64 0, %2594:vgpr_32, 0, %2641:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23200B	  %2645:vgpr_32 = V_XOR_B32_e32 %2640:vgpr_32, %8582.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23216B	  %2647:vgpr_32 = V_XOR_B32_e32 %2642:vgpr_32, %8582.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23232B	  undef %9481.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2647:vgpr_32, %8582.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23248B	  %9481.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2645:vgpr_32, %8582.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23312B	  %9480:vreg_64_align2 = IMPLICIT_DEF
23328B	  S_BRANCH %bb.20, debug-location !75; moe_op_gemm_a8w4.py:377:35

23344B	bb.23 (%ir-block.473):
	; predecessors: %bb.20, %bb.21
	  successors: %bb.26(0x40000000), %bb.24(0x40000000); %bb.26(50.00%), %bb.24(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
23360B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
23392B	  undef %9483.sub0:vreg_64_align2 = V_OR_B32_e32 256, %9471.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23408B	  %9483.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23456B	  renamable $sgpr10 = S_MOV_B32 0
23504B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23520B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23536B	  %9484:vreg_64_align2 = IMPLICIT_DEF
23568B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23584B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23600B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23616B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
23632B	  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23648B	  S_BRANCH %bb.26, debug-location !75; moe_op_gemm_a8w4.py:377:35

23664B	bb.24.Flow344:
	; predecessors: %bb.23, %bb.26
	  successors: %bb.25(0x40000000), %bb.27(0x40000000); %bb.25(50.00%), %bb.27(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
23680B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
23728B	  %9443:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
23776B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
23792B	  S_CBRANCH_EXECZ %bb.27, implicit $exec
23808B	  S_BRANCH %bb.25

23824B	bb.25 (%ir-block.488):
	; predecessors: %bb.24
	  successors: %bb.27(0x80000000); %bb.27(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
23856B	  %2912:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9443:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23872B	  %2913:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2912:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23888B	  %2914:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2913:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23904B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23920B	  %8570:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %2914:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23936B	  %8569:vgpr_32 = V_MUL_HI_U32_e64 %2914:vgpr_32, %8570:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23952B	  %8568:vgpr_32 = V_ADD_U32_e32 %2914:vgpr_32, %8569:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23968B	  %2921:vgpr_32 = V_MUL_HI_U32_e64 %9483.sub0:vreg_64_align2, %8568:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23984B	  %2922:vgpr_32 = V_MUL_LO_U32_e64 %2921:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24000B	  %2923:vgpr_32 = V_SUB_U32_e32 %9483.sub0:vreg_64_align2, %2922:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24032B	  %2925:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2923:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24048B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2923:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24064B	  %2926:vgpr_32 = V_CNDMASK_B32_e64 0, %2923:vgpr_32, 0, %2925:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24096B	  %2928:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %2926:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24112B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %2926:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24128B	  undef %9484.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2926:vgpr_32, 0, %2928:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24144B	  %9484.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24224B	  S_BRANCH %bb.27, debug-location !75; moe_op_gemm_a8w4.py:377:35

24240B	bb.26 (%ir-block.493):
	; predecessors: %bb.23
	  successors: %bb.24(0x80000000); %bb.24(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
24256B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24288B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
24304B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24320B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24368B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24384B	  %2695:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24400B	  %2697:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24416B	  %2699:vgpr_32 = nofpexcept V_FMAMK_F32 %2697:vgpr_32, 1333788672, %2695:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24432B	  %2700:vgpr_32 = nofpexcept V_RCP_F32_e32 %2699:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24448B	  %2702:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2700:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24464B	  %2704:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2702:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24480B	  %2705:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2704:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24496B	  %2707:vgpr_32 = nofpexcept V_FMAMK_F32 %2705:vgpr_32, -813694976, %2702:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24608B	  %2717:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2705:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24624B	  %2708:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2707:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24640B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24656B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24672B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2717:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24688B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2708:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24704B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
24720B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
24736B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
24752B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24768B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24784B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24800B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24816B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
24832B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
24848B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24864B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24880B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24896B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
24912B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
24928B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24944B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24960B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24976B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
24992B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25008B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25024B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25040B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25056B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
25072B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
25088B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25104B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
25120B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25136B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25152B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
25168B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25184B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25200B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25216B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25232B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25248B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25264B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25280B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25296B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25312B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25328B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
25344B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25360B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25376B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25392B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
25408B	  undef %8565.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9483.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25440B	  %8565.sub1:vreg_64_align2 = COPY %8565.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
25456B	  %2803:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9483:vreg_64_align2, 0, %8565:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25472B	  %2805:vgpr_32 = V_XOR_B32_e32 %2803.sub1:vreg_64_align2, %8565.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25488B	  %2808:vgpr_32 = V_XOR_B32_e32 %2803.sub0:vreg_64_align2, %8565.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25504B	  %8564:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2808:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25552B	  undef %8557.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2808:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25568B	  %8557.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25616B	  %2818:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8557:vreg_64_align2, 0, %8564:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25632B	  %8560:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2805:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25648B	  %2825:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %2805:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25664B	  dead %2832:vgpr_32 = V_ADD_CO_U32_e32 %2818.sub0:vreg_64_align2, %2825.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25680B	  %8557.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2818.sub1:vreg_64_align2, %2825.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25696B	  %8560.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8560.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25776B	  %2841:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8557:vreg_64_align2, 0, %8560:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25792B	  %2843:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %2841.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25808B	  %2845:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %2841.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25824B	  %2846:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %2841.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25840B	  %2849:vgpr_32 = V_ADD3_U32_e64 %2846.sub1:vreg_64_align2, %2845:vgpr_32, %2843:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25856B	  %2850:vgpr_32 = V_SUB_U32_e32 %2805:vgpr_32, %2849:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25888B	  %2856:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
25904B	  %2852:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %2808:vgpr_32, %2846.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25920B	  %2854:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2850:vgpr_32, %2856:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25936B	  %2857:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2852:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25952B	  %2859:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %2854:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25968B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %2859:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25984B	  %2864:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26016B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %2857:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26032B	  %2869:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26048B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %2859:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26064B	  %2872:vgpr_32 = V_CNDMASK_B32_e64 0, %2864:vgpr_32, 0, %2869:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26096B	  %2875:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %2854:vgpr_32, %2856:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26112B	  %2878:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %2857:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26128B	  %2880:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %2875:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26144B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %2872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26160B	  %2883:vgpr_32 = V_CNDMASK_B32_e64 0, %2859:vgpr_32, 0, %2880:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26176B	  %2884:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %2805:vgpr_32, %2849:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26192B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %2884:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26208B	  %2887:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26240B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %2852:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26256B	  %2892:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26272B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %2884:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26288B	  %2895:vgpr_32 = V_CNDMASK_B32_e64 0, %2887:vgpr_32, 0, %2892:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26304B	  renamable $vcc = V_CMP_NE_U32_e64 0, %2895:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26320B	  %2898:vgpr_32 = V_CNDMASK_B32_e64 0, %2884:vgpr_32, 0, %2883:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26336B	  %2899:vgpr_32 = V_CNDMASK_B32_e64 0, %2857:vgpr_32, 0, %2878:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26352B	  %2900:vgpr_32 = V_CNDMASK_B32_e64 0, %2852:vgpr_32, 0, %2899:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26368B	  %2903:vgpr_32 = V_XOR_B32_e32 %2898:vgpr_32, %8565.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26384B	  %2905:vgpr_32 = V_XOR_B32_e32 %2900:vgpr_32, %8565.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26400B	  undef %9484.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %2905:vgpr_32, %8565.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26416B	  %9484.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %2903:vgpr_32, %8565.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26480B	  %9483:vreg_64_align2 = IMPLICIT_DEF
26496B	  S_BRANCH %bb.24, debug-location !75; moe_op_gemm_a8w4.py:377:35

26512B	bb.27 (%ir-block.495):
	; predecessors: %bb.24, %bb.25
	  successors: %bb.30(0x40000000), %bb.28(0x40000000); %bb.30(50.00%), %bb.28(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
26528B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
26560B	  undef %9486.sub0:vreg_64_align2 = V_OR_B32_e32 320, %9471.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26576B	  %9486.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26624B	  renamable $sgpr10 = S_MOV_B32 0
26672B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26688B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26704B	  %9487:vreg_64_align2 = IMPLICIT_DEF
26736B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26752B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26768B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26784B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
26800B	  S_CBRANCH_EXECZ %bb.28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26816B	  S_BRANCH %bb.30, debug-location !75; moe_op_gemm_a8w4.py:377:35

26832B	bb.28.Flow343:
	; predecessors: %bb.27, %bb.30
	  successors: %bb.29(0x40000000), %bb.31(0x40000000); %bb.29(50.00%), %bb.31(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
26848B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
26896B	  %9442:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
26944B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
26960B	  S_CBRANCH_EXECZ %bb.31, implicit $exec
26976B	  S_BRANCH %bb.29

26992B	bb.29 (%ir-block.510):
	; predecessors: %bb.28
	  successors: %bb.31(0x80000000); %bb.31(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
27024B	  %3170:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9442:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27040B	  %3171:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3170:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27056B	  %3172:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3171:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27072B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27088B	  %8553:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %3172:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27104B	  %8552:vgpr_32 = V_MUL_HI_U32_e64 %3172:vgpr_32, %8553:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27120B	  %8551:vgpr_32 = V_ADD_U32_e32 %3172:vgpr_32, %8552:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27136B	  %3179:vgpr_32 = V_MUL_HI_U32_e64 %9486.sub0:vreg_64_align2, %8551:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27152B	  %3180:vgpr_32 = V_MUL_LO_U32_e64 %3179:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27168B	  %3181:vgpr_32 = V_SUB_U32_e32 %9486.sub0:vreg_64_align2, %3180:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27200B	  %3183:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3181:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27216B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3181:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27232B	  %3184:vgpr_32 = V_CNDMASK_B32_e64 0, %3181:vgpr_32, 0, %3183:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27264B	  %3186:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3184:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27280B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3184:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27296B	  undef %9487.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3184:vgpr_32, 0, %3186:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27312B	  %9487.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27392B	  S_BRANCH %bb.31, debug-location !75; moe_op_gemm_a8w4.py:377:35

27408B	bb.30 (%ir-block.515):
	; predecessors: %bb.27
	  successors: %bb.28(0x80000000); %bb.28(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
27424B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27456B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
27472B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27488B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27536B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27552B	  %2953:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27568B	  %2955:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27584B	  %2957:vgpr_32 = nofpexcept V_FMAMK_F32 %2955:vgpr_32, 1333788672, %2953:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27600B	  %2958:vgpr_32 = nofpexcept V_RCP_F32_e32 %2957:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27616B	  %2960:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2958:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27632B	  %2962:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2960:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27648B	  %2963:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2962:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27664B	  %2965:vgpr_32 = nofpexcept V_FMAMK_F32 %2963:vgpr_32, -813694976, %2960:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27776B	  %2975:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2963:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27792B	  %2966:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2965:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27808B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27824B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27840B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %2975:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27856B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %2966:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27872B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
27888B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
27904B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
27920B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27936B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27952B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
27968B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
27984B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28000B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
28016B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28032B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28048B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28064B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
28080B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
28096B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28112B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28128B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28144B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28160B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28176B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28192B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28208B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28224B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
28240B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28256B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28272B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28288B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28304B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28320B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
28336B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28352B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28368B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28384B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28400B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28416B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28432B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28448B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28464B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28480B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28496B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
28512B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28528B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28544B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28560B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28576B	  undef %8548.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9486.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28608B	  %8548.sub1:vreg_64_align2 = COPY %8548.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
28624B	  %3061:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9486:vreg_64_align2, 0, %8548:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28640B	  %3063:vgpr_32 = V_XOR_B32_e32 %3061.sub1:vreg_64_align2, %8548.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28656B	  %3066:vgpr_32 = V_XOR_B32_e32 %3061.sub0:vreg_64_align2, %8548.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28672B	  %8547:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3066:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28720B	  undef %8540.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3066:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28736B	  %8540.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28784B	  %3076:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8540:vreg_64_align2, 0, %8547:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28800B	  %8543:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3063:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28816B	  %3083:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3063:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28832B	  dead %3090:vgpr_32 = V_ADD_CO_U32_e32 %3076.sub0:vreg_64_align2, %3083.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28848B	  %8540.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3076.sub1:vreg_64_align2, %3083.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28864B	  %8543.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8543.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28944B	  %3099:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8540:vreg_64_align2, 0, %8543:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28960B	  %3101:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %3099.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28976B	  %3103:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %3099.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28992B	  %3104:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %3099.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29008B	  %3107:vgpr_32 = V_ADD3_U32_e64 %3104.sub1:vreg_64_align2, %3103:vgpr_32, %3101:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29024B	  %3108:vgpr_32 = V_SUB_U32_e32 %3063:vgpr_32, %3107:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29056B	  %3114:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
29072B	  %3110:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %3066:vgpr_32, %3104.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29088B	  %3112:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3108:vgpr_32, %3114:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29104B	  %3115:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3110:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29120B	  %3117:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %3112:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29136B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %3117:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29152B	  %3122:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29184B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %3115:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29200B	  %3127:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29216B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %3117:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29232B	  %3130:vgpr_32 = V_CNDMASK_B32_e64 0, %3122:vgpr_32, 0, %3127:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29264B	  %3133:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3112:vgpr_32, %3114:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29280B	  %3136:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3115:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29296B	  %3138:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %3133:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29312B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %3130:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29328B	  %3141:vgpr_32 = V_CNDMASK_B32_e64 0, %3117:vgpr_32, 0, %3138:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29344B	  %3142:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %3063:vgpr_32, %3107:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29360B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %3142:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29376B	  %3145:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29408B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %3110:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29424B	  %3150:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29440B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %3142:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29456B	  %3153:vgpr_32 = V_CNDMASK_B32_e64 0, %3145:vgpr_32, 0, %3150:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29472B	  renamable $vcc = V_CMP_NE_U32_e64 0, %3153:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29488B	  %3156:vgpr_32 = V_CNDMASK_B32_e64 0, %3142:vgpr_32, 0, %3141:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29504B	  %3157:vgpr_32 = V_CNDMASK_B32_e64 0, %3115:vgpr_32, 0, %3136:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29520B	  %3158:vgpr_32 = V_CNDMASK_B32_e64 0, %3110:vgpr_32, 0, %3157:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29536B	  %3161:vgpr_32 = V_XOR_B32_e32 %3156:vgpr_32, %8548.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29552B	  %3163:vgpr_32 = V_XOR_B32_e32 %3158:vgpr_32, %8548.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29568B	  undef %9487.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %3163:vgpr_32, %8548.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29584B	  %9487.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %3161:vgpr_32, %8548.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29648B	  %9486:vreg_64_align2 = IMPLICIT_DEF
29664B	  S_BRANCH %bb.28, debug-location !75; moe_op_gemm_a8w4.py:377:35

29680B	bb.31 (%ir-block.517):
	; predecessors: %bb.28, %bb.29
	  successors: %bb.34(0x40000000), %bb.32(0x40000000); %bb.34(50.00%), %bb.32(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
29696B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
29728B	  undef %9489.sub0:vreg_64_align2 = V_OR_B32_e32 384, %9471.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29744B	  %9489.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29792B	  renamable $sgpr10 = S_MOV_B32 0
29840B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29856B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29872B	  %9490:vreg_64_align2 = IMPLICIT_DEF
29904B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29920B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29936B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29952B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
29968B	  S_CBRANCH_EXECZ %bb.32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29984B	  S_BRANCH %bb.34, debug-location !75; moe_op_gemm_a8w4.py:377:35

30000B	bb.32.Flow342:
	; predecessors: %bb.31, %bb.34
	  successors: %bb.33(0x40000000), %bb.35(0x40000000); %bb.33(50.00%), %bb.35(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
30016B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
30064B	  %9441:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
30112B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
30128B	  S_CBRANCH_EXECZ %bb.35, implicit $exec
30144B	  S_BRANCH %bb.33

30160B	bb.33 (%ir-block.532):
	; predecessors: %bb.32
	  successors: %bb.35(0x80000000); %bb.35(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
30192B	  %3428:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9441:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30208B	  %3429:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3428:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30224B	  %3430:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3429:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30240B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30256B	  %8536:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %3430:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30272B	  %8535:vgpr_32 = V_MUL_HI_U32_e64 %3430:vgpr_32, %8536:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30288B	  %8534:vgpr_32 = V_ADD_U32_e32 %3430:vgpr_32, %8535:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30304B	  %3437:vgpr_32 = V_MUL_HI_U32_e64 %9489.sub0:vreg_64_align2, %8534:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30320B	  %3438:vgpr_32 = V_MUL_LO_U32_e64 %3437:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30336B	  %3439:vgpr_32 = V_SUB_U32_e32 %9489.sub0:vreg_64_align2, %3438:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30368B	  %3441:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3439:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30384B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3439:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30400B	  %3442:vgpr_32 = V_CNDMASK_B32_e64 0, %3439:vgpr_32, 0, %3441:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30432B	  %3444:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3442:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30448B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3442:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30464B	  undef %9490.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3442:vgpr_32, 0, %3444:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30480B	  %9490.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30560B	  S_BRANCH %bb.35, debug-location !75; moe_op_gemm_a8w4.py:377:35

30576B	bb.34 (%ir-block.537):
	; predecessors: %bb.31
	  successors: %bb.32(0x80000000); %bb.32(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
30592B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30624B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
30640B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30656B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30704B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30720B	  %3211:vgpr_32 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30736B	  %3213:vgpr_32 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30752B	  %3215:vgpr_32 = nofpexcept V_FMAMK_F32 %3213:vgpr_32, 1333788672, %3211:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30768B	  %3216:vgpr_32 = nofpexcept V_RCP_F32_e32 %3215:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30784B	  %3218:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %3216:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30800B	  %3220:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %3218:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30816B	  %3221:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %3220:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30832B	  %3223:vgpr_32 = nofpexcept V_FMAMK_F32 %3221:vgpr_32, -813694976, %3218:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30944B	  %3233:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3221:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30960B	  %3224:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3223:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30976B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30992B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31008B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %3233:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31024B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %3224:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31040B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
31056B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31072B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31088B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr38, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31104B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31120B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31136B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31152B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31168B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
31184B	  renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr40, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31200B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31216B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31232B	  renamable $sgpr41 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
31248B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr39, debug-location !75; moe_op_gemm_a8w4.py:377:35
31264B	  dead renamable $sgpr38 = S_ADD_U32 killed renamable $sgpr38, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31280B	  renamable $sgpr33 = S_ADDC_U32 killed renamable $sgpr33, killed renamable $sgpr41, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31296B	  renamable $sgpr38 = S_ADDC_U32 killed renamable $sgpr40, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31312B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31328B	  renamable $sgpr10 = S_ADD_U32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31344B	  renamable $sgpr33 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31360B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31376B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr33, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31392B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
31408B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31424B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr10, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31440B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31456B	  renamable $sgpr10 = S_ADD_I32 killed renamable $sgpr10, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31472B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31488B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
31504B	  renamable $sgpr33 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31520B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31536B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31552B	  renamable $sgpr40 = S_MUL_I32 renamable $sgpr9, renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31568B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31584B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr40, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31600B	  renamable $sgpr39 = S_ADDC_U32 0, killed renamable $sgpr39, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31616B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31632B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr39, killed renamable $sgpr33, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31648B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31664B	  renamable $sgpr10 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr10, debug-location !75; moe_op_gemm_a8w4.py:377:35
31680B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr10, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31696B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31712B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31728B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31744B	  undef %8531.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9489.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31776B	  %8531.sub1:vreg_64_align2 = COPY %8531.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
31792B	  %3319:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9489:vreg_64_align2, 0, %8531:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31808B	  %3321:vgpr_32 = V_XOR_B32_e32 %3319.sub1:vreg_64_align2, %8531.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31824B	  %3324:vgpr_32 = V_XOR_B32_e32 %3319.sub0:vreg_64_align2, %8531.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31840B	  %8530:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3324:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31888B	  undef %8523.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3324:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31904B	  %8523.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31952B	  %3334:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8523:vreg_64_align2, 0, %8530:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31968B	  %8526:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3321:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31984B	  %3341:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3321:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32000B	  dead %3348:vgpr_32 = V_ADD_CO_U32_e32 %3334.sub0:vreg_64_align2, %3341.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32016B	  %8523.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3334.sub1:vreg_64_align2, %3341.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32032B	  %8526.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8526.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32112B	  %3357:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8523:vreg_64_align2, 0, %8526:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32128B	  %3359:vgpr_32 = V_MUL_LO_U32_e64 $sgpr37, %3357.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32144B	  %3361:vgpr_32 = V_MUL_LO_U32_e64 $sgpr36, %3357.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32160B	  %3362:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, %3357.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32176B	  %3365:vgpr_32 = V_ADD3_U32_e64 %3362.sub1:vreg_64_align2, %3361:vgpr_32, %3359:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32192B	  %3366:vgpr_32 = V_SUB_U32_e32 %3321:vgpr_32, %3365:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32224B	  %3372:vgpr_32 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
32240B	  %3368:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %3324:vgpr_32, %3362.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32256B	  %3370:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3366:vgpr_32, %3372:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32272B	  %3373:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3368:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32288B	  %3375:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %3370:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32304B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, %3375:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32320B	  %3380:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32352B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, %3373:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32368B	  %3385:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32384B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, %3375:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32400B	  %3388:vgpr_32 = V_CNDMASK_B32_e64 0, %3380:vgpr_32, 0, %3385:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32432B	  %3391:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3370:vgpr_32, %3372:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32448B	  %3394:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, %3373:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32464B	  %3396:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %3391:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32480B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %3388:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32496B	  %3399:vgpr_32 = V_CNDMASK_B32_e64 0, %3375:vgpr_32, 0, %3396:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32512B	  %3400:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %3321:vgpr_32, %3365:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32528B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, %3400:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32544B	  %3403:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32576B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, %3368:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32592B	  %3408:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32608B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, %3400:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32624B	  %3411:vgpr_32 = V_CNDMASK_B32_e64 0, %3403:vgpr_32, 0, %3408:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32640B	  renamable $vcc = V_CMP_NE_U32_e64 0, %3411:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32656B	  %3414:vgpr_32 = V_CNDMASK_B32_e64 0, %3400:vgpr_32, 0, %3399:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32672B	  %3415:vgpr_32 = V_CNDMASK_B32_e64 0, %3373:vgpr_32, 0, %3394:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32688B	  %3416:vgpr_32 = V_CNDMASK_B32_e64 0, %3368:vgpr_32, 0, %3415:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32704B	  %3419:vgpr_32 = V_XOR_B32_e32 %3414:vgpr_32, %8531.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32720B	  %3421:vgpr_32 = V_XOR_B32_e32 %3416:vgpr_32, %8531.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32736B	  undef %9490.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %3421:vgpr_32, %8531.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32752B	  %9490.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %3419:vgpr_32, %8531.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32816B	  %9489:vreg_64_align2 = IMPLICIT_DEF
32832B	  S_BRANCH %bb.32, debug-location !75; moe_op_gemm_a8w4.py:377:35

32848B	bb.35 (%ir-block.539):
	; predecessors: %bb.32, %bb.33
	  successors: %bb.38(0x40000000), %bb.36(0x40000000); %bb.38(50.00%), %bb.36(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
32864B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
32896B	  undef %9492.sub0:vreg_64_align2 = V_OR_B32_e32 448, %9471.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
32912B	  %9492.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
32960B	  renamable $sgpr10 = S_MOV_B32 0
33008B	  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33024B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33040B	  %9493:vreg_64_align2 = IMPLICIT_DEF
33072B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33088B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33104B	  renamable $sgpr10_sgpr11 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33120B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
33136B	  S_CBRANCH_EXECZ %bb.36, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33152B	  S_BRANCH %bb.38, debug-location !75; moe_op_gemm_a8w4.py:377:35

33168B	bb.36.Flow341:
	; predecessors: %bb.35, %bb.38
	  successors: %bb.37(0x40000000), %bb.39(0x40000000); %bb.37(50.00%), %bb.39(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
33184B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
33264B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
33280B	  S_CBRANCH_EXECZ %bb.39, implicit $exec
33296B	  S_BRANCH %bb.37

33312B	bb.37 (%ir-block.554):
	; predecessors: %bb.36
	  successors: %bb.39(0x80000000); %bb.39(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
33344B	  %3685:vgpr_32 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33360B	  %3686:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %3685:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33376B	  %3687:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3686:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33392B	  %3688:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3687:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33408B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33424B	  %8519:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr8, %3688:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33440B	  %8518:vgpr_32 = V_MUL_HI_U32_e64 %3688:vgpr_32, %8519:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33456B	  %8517:vgpr_32 = V_ADD_U32_e32 %3688:vgpr_32, %8518:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33472B	  %3695:vgpr_32 = V_MUL_HI_U32_e64 %9492.sub0:vreg_64_align2, %8517:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33488B	  %3696:vgpr_32 = V_MUL_LO_U32_e64 %3695:vgpr_32, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33504B	  %3697:vgpr_32 = V_SUB_U32_e32 %9492.sub0:vreg_64_align2, %3696:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33536B	  %3699:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3697:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33552B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3697:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33568B	  %3700:vgpr_32 = V_CNDMASK_B32_e64 0, %3697:vgpr_32, 0, %3699:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33600B	  %3702:vgpr_32 = V_SUBREV_U32_e32 $sgpr22, %3700:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33616B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, %3700:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33632B	  undef %9493.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3700:vgpr_32, 0, %3702:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33648B	  %9493.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33728B	  S_BRANCH %bb.39, debug-location !75; moe_op_gemm_a8w4.py:377:35

33744B	bb.38 (%ir-block.559):
	; predecessors: %bb.35
	  successors: %bb.36(0x80000000); %bb.36(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
33760B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33792B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
33808B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33824B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33872B	  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33888B	  %3469:vgpr_32 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33904B	  %3471:vgpr_32 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33920B	  %3473:vgpr_32 = nofpexcept V_FMAMK_F32 %3471:vgpr_32, 1333788672, %3469:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33936B	  %3474:vgpr_32 = nofpexcept V_RCP_F32_e32 %3473:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33952B	  %3476:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %3474:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33968B	  %3478:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %3476:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33984B	  %3479:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %3478:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34000B	  %3481:vgpr_32 = nofpexcept V_FMAMK_F32 %3479:vgpr_32, -813694976, %3476:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34112B	  %3491:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3479:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34128B	  %3482:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3481:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34144B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34160B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34176B	  renamable $sgpr8 = V_READFIRSTLANE_B32 %3491:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34192B	  renamable $sgpr9 = V_READFIRSTLANE_B32 %3482:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34208B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
34224B	  renamable $sgpr36 = S_MUL_I32 renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34240B	  renamable $sgpr37 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34256B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr37, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34272B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr36, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34288B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34304B	  renamable $sgpr37 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34320B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34336B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
34352B	  renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr39, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34368B	  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34384B	  renamable $sgpr39 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34400B	  renamable $sgpr40 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
34416B	  renamable $sgpr38 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr38, debug-location !75; moe_op_gemm_a8w4.py:377:35
34432B	  dead renamable $sgpr37 = S_ADD_U32 killed renamable $sgpr37, killed renamable $sgpr38, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34448B	  renamable $sgpr36 = S_ADDC_U32 killed renamable $sgpr36, killed renamable $sgpr40, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34464B	  renamable $sgpr37 = S_ADDC_U32 killed renamable $sgpr39, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34480B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34496B	  renamable $sgpr33 = S_ADD_U32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34512B	  renamable $sgpr36 = S_ADDC_U32 0, killed renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34528B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34544B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr36, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34560B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr2, renamable $sgpr8, debug-location !75; moe_op_gemm_a8w4.py:377:35
34576B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34592B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr36, killed renamable $sgpr33, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34608B	  renamable $sgpr3 = S_MUL_I32 killed renamable $sgpr3, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34624B	  renamable $sgpr33 = S_ADD_I32 killed renamable $sgpr33, killed renamable $sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34640B	  renamable $sgpr3 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34656B	  renamable $sgpr2 = S_MUL_I32 killed renamable $sgpr2, renamable $sgpr9, debug-location !75; moe_op_gemm_a8w4.py:377:35
34672B	  renamable $sgpr36 = S_MUL_HI_U32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34688B	  renamable $sgpr37 = S_MUL_I32 renamable $sgpr8, renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34704B	  renamable $sgpr38 = S_MUL_HI_U32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34720B	  renamable $sgpr39 = S_MUL_I32 renamable $sgpr9, renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34736B	  renamable $sgpr2 = S_MUL_HI_U32 renamable $sgpr9, killed renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34752B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr39, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34768B	  renamable $sgpr38 = S_ADDC_U32 0, killed renamable $sgpr38, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34784B	  dead renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr37, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34800B	  renamable $sgpr2 = S_ADDC_U32 killed renamable $sgpr38, killed renamable $sgpr36, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34816B	  renamable $sgpr3 = S_ADDC_U32 killed renamable $sgpr3, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34832B	  renamable $sgpr33 = S_MUL_I32 renamable $sgpr8, killed renamable $sgpr33, debug-location !75; moe_op_gemm_a8w4.py:377:35
34848B	  renamable $sgpr2 = S_ADD_U32 killed renamable $sgpr2, killed renamable $sgpr33, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34864B	  renamable $sgpr3 = S_ADDC_U32 0, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34880B	  renamable $sgpr9 = S_ADD_U32 killed renamable $sgpr9, killed renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34896B	  renamable $sgpr8 = S_ADDC_U32 killed renamable $sgpr8, killed renamable $sgpr3, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34912B	  undef %8514.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9492.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34944B	  %8514.sub1:vreg_64_align2 = COPY %8514.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
34960B	  %3577:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9492:vreg_64_align2, 0, %8514:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34976B	  %3579:vgpr_32 = V_XOR_B32_e32 %3577.sub1:vreg_64_align2, %8514.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34992B	  %3582:vgpr_32 = V_XOR_B32_e32 %3577.sub0:vreg_64_align2, %8514.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35008B	  %8513:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3582:vgpr_32, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35056B	  undef %8506.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3582:vgpr_32, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35072B	  %8506.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35120B	  %3592:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8506:vreg_64_align2, 0, %8513:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35136B	  %8509:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3579:vgpr_32, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35152B	  %3599:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %3579:vgpr_32, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35168B	  dead %3606:vgpr_32 = V_ADD_CO_U32_e32 %3592.sub0:vreg_64_align2, %3599.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35184B	  %8506.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3592.sub1:vreg_64_align2, %3599.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35200B	  %8509.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8509.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35280B	  %3615:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8506:vreg_64_align2, 0, %8509:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35296B	  %3617:vgpr_32 = V_MUL_LO_U32_e64 $sgpr17, %3615.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35312B	  %3619:vgpr_32 = V_MUL_LO_U32_e64 $sgpr16, %3615.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35328B	  %3620:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr16, %3615.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35344B	  %3623:vgpr_32 = V_ADD3_U32_e64 %3620.sub1:vreg_64_align2, %3619:vgpr_32, %3617:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35360B	  %3624:vgpr_32 = V_SUB_U32_e32 %3579:vgpr_32, %3623:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35392B	  %3630:vgpr_32 = COPY renamable $sgpr17, debug-location !75; moe_op_gemm_a8w4.py:377:35
35408B	  %3626:vgpr_32, renamable $vcc = V_SUB_CO_U32_e64 %3582:vgpr_32, %3620.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35424B	  %3628:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3624:vgpr_32, %3630:vgpr_32, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35440B	  %3631:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, %3626:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35456B	  %3633:vgpr_32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, %3628:vgpr_32, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35472B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, %3633:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35488B	  %3638:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35520B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, %3631:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35536B	  %3643:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35552B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, %3633:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35568B	  %3646:vgpr_32 = V_CNDMASK_B32_e64 0, %3638:vgpr_32, 0, %3643:vgpr_32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35600B	  %3649:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 %3628:vgpr_32, %3630:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35616B	  %3652:vgpr_32, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, %3631:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35632B	  %3654:vgpr_32, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, %3649:vgpr_32, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35648B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, %3646:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35664B	  %3657:vgpr_32 = V_CNDMASK_B32_e64 0, %3633:vgpr_32, 0, %3654:vgpr_32, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35680B	  %3658:vgpr_32, dead renamable $vcc = V_SUBB_U32_e64 %3579:vgpr_32, %3623:vgpr_32, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35696B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr17, %3658:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35712B	  %3661:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35744B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr16, %3626:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35760B	  %3666:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35776B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr17, %3658:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35792B	  %3669:vgpr_32 = V_CNDMASK_B32_e64 0, %3661:vgpr_32, 0, %3666:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35808B	  renamable $vcc = V_CMP_NE_U32_e64 0, %3669:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35824B	  %3672:vgpr_32 = V_CNDMASK_B32_e64 0, %3658:vgpr_32, 0, %3657:vgpr_32, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35840B	  %3673:vgpr_32 = V_CNDMASK_B32_e64 0, %3631:vgpr_32, 0, %3652:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35856B	  %3674:vgpr_32 = V_CNDMASK_B32_e64 0, %3626:vgpr_32, 0, %3673:vgpr_32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35872B	  %3677:vgpr_32 = V_XOR_B32_e32 %3672:vgpr_32, %8514.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35888B	  %3679:vgpr_32 = V_XOR_B32_e32 %3674:vgpr_32, %8514.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35904B	  undef %9493.sub0:vreg_64_align2, renamable $vcc = V_SUB_CO_U32_e64 %3679:vgpr_32, %8514.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35920B	  %9493.sub1:vreg_64_align2, dead renamable $vcc = V_SUBB_U32_e64 %3677:vgpr_32, %8514.sub0:vreg_64_align2, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35984B	  %9492:vreg_64_align2 = IMPLICIT_DEF
36000B	  S_BRANCH %bb.36, debug-location !75; moe_op_gemm_a8w4.py:377:35

36016B	bb.39 (%ir-block.561):
	; predecessors: %bb.36, %bb.37
	  successors: %bb.40(0x40000000), %bb.41(0x40000000); %bb.40(50.00%), %bb.41(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36032B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
36064B	  %3708:vgpr_32 = V_LSHLREV_B32_e32 4, %9993:vgpr_32(s32), implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36080B	  undef %8503.sub0:vreg_64_align2 = V_AND_B32_e32 112, %3708:vgpr_32, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36096B	  %8503.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
36144B	  undef %8728.sub1:vreg_64_align2 = V_MUL_HI_I32_e64 %9970:vgpr_32, $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36160B	  %8728.sub0:vreg_64_align2 = V_MUL_LO_U32_e64 %9970:vgpr_32, killed $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36208B	  %8730:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %8728:vreg_64_align2, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
36224B	  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
36272B	  %3722:vgpr_32 = V_MUL_LO_U32_e64 %9472.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36288B	  %3724:vgpr_32 = V_MUL_LO_U32_e64 %9472.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36304B	  %8502:vreg_64_align2, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 %9472.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36320B	  %8502.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8502.sub1:vreg_64_align2, %3724:vgpr_32, %3722:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36368B	  %3731:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr6_sgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36384B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 1, %3731:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36400B	  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36416B	  undef %8486.sub0:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36432B	  %8486.sub1:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36448B	  %8486.sub2:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36464B	  %8486.sub3:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36480B	  S_CBRANCH_VCCNZ %bb.41, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36496B	  S_BRANCH %bb.40, debug-location !79; moe_op_gemm_a8w4.py:405:20

36512B	bb.40 (%ir-block.571):
	; predecessors: %bb.39
	  successors: %bb.41(0x80000000); %bb.41(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36528B	  %3734:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8502:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36544B	  %3735:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3734:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36560B	  %8486:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3735:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

36704B	bb.41 (%ir-block.575):
	; predecessors: %bb.39, %bb.40
	  successors: %bb.42(0x40000000), %bb.43(0x40000000); %bb.42(50.00%), %bb.43(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
36784B	  %3740:vgpr_32 = V_MUL_LO_U32_e64 %9475.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36800B	  %3743:vgpr_32 = V_MUL_LO_U32_e64 %9475.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36816B	  %8500:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9475.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36832B	  %8500.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8500.sub1:vreg_64_align2, %3743:vgpr_32, %3740:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36880B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36896B	  undef %8485.sub0:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36912B	  %8485.sub1:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36928B	  %8485.sub2:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36944B	  %8485.sub3:vreg_128_align2 = COPY %8503.sub1:vreg_64_align2
36960B	  S_CBRANCH_VCCNZ %bb.43, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36976B	  S_BRANCH %bb.42, debug-location !79; moe_op_gemm_a8w4.py:405:20

36992B	bb.42 (%ir-block.577):
	; predecessors: %bb.41
	  successors: %bb.43(0x80000000); %bb.43(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37008B	  %3753:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8500:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37024B	  %3754:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3753:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37040B	  %8485:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3754:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

37184B	bb.43 (%ir-block.581):
	; predecessors: %bb.41, %bb.42
	  successors: %bb.44(0x40000000), %bb.45(0x40000000); %bb.44(50.00%), %bb.45(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37264B	  %3759:vgpr_32 = V_MUL_LO_U32_e64 %9478.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37280B	  %3762:vgpr_32 = V_MUL_LO_U32_e64 %9478.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37296B	  %8498:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9478.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37312B	  %8498.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8498.sub1:vreg_64_align2, %3762:vgpr_32, %3759:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37360B	  undef %8483.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37376B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37392B	  undef %8484.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37408B	  %8484.sub1:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37424B	  %8484.sub2:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37440B	  %8484.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37456B	  S_CBRANCH_VCCNZ %bb.45, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37472B	  S_BRANCH %bb.44, debug-location !79; moe_op_gemm_a8w4.py:405:20

37488B	bb.44 (%ir-block.583):
	; predecessors: %bb.43
	  successors: %bb.45(0x80000000); %bb.45(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37504B	  %3772:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8498:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37520B	  %3773:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3772:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37536B	  %8484:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3773:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

37680B	bb.45 (%ir-block.587):
	; predecessors: %bb.43, %bb.44
	  successors: %bb.46(0x40000000), %bb.47(0x40000000); %bb.46(50.00%), %bb.47(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37760B	  %3778:vgpr_32 = V_MUL_LO_U32_e64 %9481.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37776B	  %3781:vgpr_32 = V_MUL_LO_U32_e64 %9481.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37792B	  %8496:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9481.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37808B	  %8496.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8496.sub1:vreg_64_align2, %3781:vgpr_32, %3778:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37856B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37888B	  %8483.sub1:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37904B	  %8483.sub2:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37920B	  %8483.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37936B	  S_CBRANCH_VCCNZ %bb.47, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37952B	  S_BRANCH %bb.46, debug-location !79; moe_op_gemm_a8w4.py:405:20

37968B	bb.46 (%ir-block.589):
	; predecessors: %bb.45
	  successors: %bb.47(0x80000000); %bb.47(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
37984B	  %3791:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8496:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38000B	  %3792:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3791:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38016B	  %8483:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3792:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

38160B	bb.47 (%ir-block.593):
	; predecessors: %bb.45, %bb.46
	  successors: %bb.48(0x40000000), %bb.49(0x40000000); %bb.48(50.00%), %bb.49(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38240B	  %3797:vgpr_32 = V_MUL_LO_U32_e64 %9484.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38256B	  %3800:vgpr_32 = V_MUL_LO_U32_e64 %9484.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38272B	  %8494:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9484.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38288B	  %8494.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8494.sub1:vreg_64_align2, %3800:vgpr_32, %3797:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38336B	  undef %8481.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38352B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38368B	  undef %8482.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38384B	  %8482.sub1:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38400B	  %8482.sub2:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38416B	  %8482.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38432B	  S_CBRANCH_VCCNZ %bb.49, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38448B	  S_BRANCH %bb.48, debug-location !79; moe_op_gemm_a8w4.py:405:20

38464B	bb.48 (%ir-block.595):
	; predecessors: %bb.47
	  successors: %bb.49(0x80000000); %bb.49(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38480B	  %3810:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8494:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38496B	  %3811:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3810:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38512B	  %8482:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3811:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

38656B	bb.49 (%ir-block.599):
	; predecessors: %bb.47, %bb.48
	  successors: %bb.50(0x40000000), %bb.51(0x40000000); %bb.50(50.00%), %bb.51(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38736B	  %3816:vgpr_32 = V_MUL_LO_U32_e64 %9487.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38752B	  %3819:vgpr_32 = V_MUL_LO_U32_e64 %9487.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38768B	  %8492:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9487.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38784B	  %8492.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8492.sub1:vreg_64_align2, %3819:vgpr_32, %3816:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38832B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38864B	  %8481.sub1:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38880B	  %8481.sub2:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38896B	  %8481.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
38912B	  S_CBRANCH_VCCNZ %bb.51, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38928B	  S_BRANCH %bb.50, debug-location !79; moe_op_gemm_a8w4.py:405:20

38944B	bb.50 (%ir-block.601):
	; predecessors: %bb.49
	  successors: %bb.51(0x80000000); %bb.51(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
38960B	  %3829:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8492:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38976B	  %3830:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3829:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38992B	  %8481:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3830:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

39136B	bb.51 (%ir-block.605):
	; predecessors: %bb.49, %bb.50
	  successors: %bb.52(0x40000000), %bb.53(0x40000000); %bb.52(50.00%), %bb.53(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39216B	  %3835:vgpr_32 = V_MUL_LO_U32_e64 %9490.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39232B	  %3838:vgpr_32 = V_MUL_LO_U32_e64 %9490.sub0:vreg_64_align2, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39248B	  %8490:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9490.sub0:vreg_64_align2, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39264B	  %8490.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8490.sub1:vreg_64_align2, %3838:vgpr_32, %3835:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39312B	  undef %8479.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39328B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39344B	  undef %8480.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39360B	  %8480.sub1:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39376B	  %8480.sub2:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39392B	  %8480.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39408B	  S_CBRANCH_VCCNZ %bb.53, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39424B	  S_BRANCH %bb.52, debug-location !79; moe_op_gemm_a8w4.py:405:20

39440B	bb.52 (%ir-block.607):
	; predecessors: %bb.51
	  successors: %bb.53(0x80000000); %bb.53(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39456B	  %3848:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8490:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39472B	  %3849:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3848:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39488B	  %8480:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3849:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

39632B	bb.53 (%ir-block.611):
	; predecessors: %bb.51, %bb.52
	  successors: %bb.54(0x40000000), %bb.55(0x40000000); %bb.54(50.00%), %bb.55(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39712B	  %3854:vgpr_32 = V_MUL_LO_U32_e64 %9493.sub1:vreg_64_align2, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39728B	  %3857:vgpr_32 = V_MUL_LO_U32_e64 %9493.sub0:vreg_64_align2, killed $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39744B	  %8488:vreg_64_align2, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 %9493.sub0:vreg_64_align2, killed $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39760B	  %8488.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8488.sub1:vreg_64_align2, %3857:vgpr_32, %3854:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39808B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39840B	  %8479.sub1:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39856B	  %8479.sub2:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39872B	  %8479.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
39888B	  S_CBRANCH_VCCNZ %bb.55, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39904B	  S_BRANCH %bb.54, debug-location !79; moe_op_gemm_a8w4.py:405:20

39920B	bb.54 (%ir-block.613):
	; predecessors: %bb.53
	  successors: %bb.55(0x80000000); %bb.55(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
39936B	  %3867:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8730:vreg_64_align2, 0, %8488:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39952B	  %3868:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3867:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39968B	  %8479:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3868:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

40112B	bb.55 (%ir-block.617):
	; predecessors: %bb.53, %bb.54
	  successors: %bb.57(0x40000000), %bb.56(0x40000000); %bb.57(50.00%), %bb.56(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
40176B	  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
40192B	  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
40208B	  renamable $sgpr6 = S_MOV_B32 240
40224B	  %192:vgpr_32 = V_BITOP3_B32_e64 %3708:vgpr_32, %9993:vgpr_32(s32), killed $sgpr6, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40240B	  %3875:vgpr_32 = V_ADD_U32_e32 0, %192:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40256B	  %3877:vgpr_32 = V_ADD_U32_e32 65536, %3875:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40272B	  DS_WRITE_B128_gfx9 %3877:vgpr_32, %36:vreg_128_align2, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
40288B	  DS_WRITE_B128_gfx9 %3877:vgpr_32, %37:vreg_128_align2, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
40304B	  DS_WRITE_B128_gfx9 %3877:vgpr_32, %38:vreg_128_align2, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
40320B	  DS_WRITE_B128_gfx9 %3877:vgpr_32, %39:vreg_128_align2, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
40336B	  renamable $sgpr6 = S_MOV_B32 112
40352B	  %193:vgpr_32 = V_BITOP3_B32_e64 %3708:vgpr_32, %9993:vgpr_32(s32), $sgpr6, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40368B	  %3879:vgpr_32 = nuw V_ADD_U32_e32 0, %193:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40448B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8486:vreg_128_align2, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
40528B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8485:vreg_128_align2, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
40608B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8484:vreg_128_align2, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
40688B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8483:vreg_128_align2, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
40768B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8482:vreg_128_align2, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
40848B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8481:vreg_128_align2, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
40928B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8480:vreg_128_align2, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
41024B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %8479:vreg_128_align2, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
41040B	  %3897:vgpr_32 = V_ADD_U32_e32 0, %9991:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41056B	  %3899:vgpr_32 = V_ADD_U32_e32 98304, %3897:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41072B	  DS_WRITE_B64_gfx9 %3899:vgpr_32, %55:vreg_64_align2, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
41088B	  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
41104B	  %9963:vgpr_32 = V_AND_B32_e32 48, %9993:vgpr_32(s32), implicit $exec
41120B	  %9439:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 6, %9993:vgpr_32(s32), implicit $exec
41136B	  %9440:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 2, %9993:vgpr_32(s32), implicit $exec
41152B	  S_CBRANCH_SCC0 %bb.57, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

41168B	bb.56:
	; predecessors: %bb.55
	  successors: %bb.58(0x80000000); %bb.58(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
41184B	  undef %8381.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
41216B	  %8381.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41232B	  %8381.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41248B	  %8381.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41264B	  undef %8382.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41280B	  %8382.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41296B	  %8382.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41312B	  %8382.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41328B	  undef %8383.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41344B	  %8383.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41360B	  %8383.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41376B	  %8383.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41392B	  undef %8384.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41408B	  %8384.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41424B	  %8384.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41440B	  %8384.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41456B	  undef %10004.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41472B	  %10004.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41488B	  %10004.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41504B	  %10004.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41520B	  undef %8386.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41536B	  %8386.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41552B	  %8386.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41568B	  %8386.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41584B	  undef %8387.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41600B	  %8387.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41616B	  %8387.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41632B	  %8387.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41648B	  undef %8388.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41664B	  %8388.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41680B	  %8388.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41696B	  %8388.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41712B	  undef %8389.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41728B	  %8389.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41744B	  %8389.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41760B	  %8389.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41776B	  undef %8390.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41792B	  %8390.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41808B	  %8390.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41824B	  %8390.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41840B	  undef %8391.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41856B	  %8391.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41872B	  %8391.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41888B	  %8391.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41904B	  undef %8392.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41920B	  %8392.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41936B	  %8392.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41952B	  %8392.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41968B	  undef %10007.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
41984B	  %10007.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42000B	  %10007.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42016B	  %10007.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42032B	  undef %10010.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42048B	  %10010.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42064B	  %10010.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42080B	  %10010.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42096B	  undef %10013.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42112B	  %10013.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42128B	  %10013.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42144B	  %10013.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42160B	  undef %10016.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42176B	  %10016.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42192B	  %10016.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42208B	  %10016.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42224B	  undef %8397.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42240B	  %8397.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42256B	  %8397.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42272B	  %8397.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42288B	  undef %8398.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42304B	  %8398.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42320B	  %8398.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42336B	  %8398.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42352B	  undef %8399.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42368B	  %8399.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42384B	  %8399.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42400B	  %8399.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42416B	  undef %8400.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42432B	  %8400.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42448B	  %8400.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42464B	  %8400.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42480B	  undef %9997.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42496B	  %9997.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42512B	  %9997.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42528B	  %9997.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42544B	  undef %10000.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42560B	  %10000.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42576B	  %10000.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42592B	  %10000.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42608B	  undef %8403.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42624B	  %8403.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42640B	  %8403.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42656B	  %8403.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42672B	  undef %8404.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42688B	  %8404.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42704B	  %8404.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42720B	  %8404.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42736B	  undef %8405.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42752B	  %8405.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42768B	  %8405.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42784B	  %8405.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42800B	  undef %8406.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42816B	  %8406.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42832B	  %8406.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42848B	  %8406.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42864B	  undef %8407.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42880B	  %8407.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42896B	  %8407.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42912B	  %8407.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42928B	  undef %8408.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42944B	  %8408.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42960B	  %8408.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42976B	  %8408.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
42992B	  undef %8409.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43008B	  %8409.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43024B	  %8409.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43040B	  %8409.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43056B	  undef %8410.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43072B	  %8410.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43088B	  %8410.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43104B	  %8410.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43120B	  undef %8411.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43136B	  %8411.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43152B	  %8411.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43168B	  %8411.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43184B	  undef %8412.sub3:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43200B	  %8412.sub2:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43216B	  %8412.sub1:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43232B	  %8412.sub0:vreg_128_align2 = COPY %8381.sub3:vreg_128_align2
43248B	  S_BRANCH %bb.58, debug-location !62; moe_op_gemm_a8w4.py:403:19

43264B	bb.57..lr.ph:
	; predecessors: %bb.55
	  successors: %bb.59(0x80000000); %bb.59(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr6, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
43272B	  SI_SPILL_AV32_SAVE %9993:vgpr_32(s32), %stack.11, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.11, addrspace 5)
43288B	  undef %9985.sub0:av_64_align2 = COPY %9984.sub0:vreg_64_align2
43296B	  SI_SPILL_AV64_SAVE %9985:av_64_align2, %stack.10, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.10, align 4, addrspace 5)
43304B	  undef %9981.sub0:av_64_align2 = COPY %9980.sub0:vreg_64_align2
43312B	  SI_SPILL_AV64_SAVE %9981:av_64_align2, %stack.9, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.9, align 4, addrspace 5)
43320B	  undef %9977.sub0:av_64_align2 = COPY %9976.sub0:vreg_64_align2
43328B	  SI_SPILL_AV64_SAVE %9977:av_64_align2, %stack.8, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.8, align 4, addrspace 5)
43336B	  undef %9973.sub0:av_64_align2 = COPY %9972.sub0:vreg_64_align2
43344B	  SI_SPILL_AV64_SAVE %9973:av_64_align2, %stack.7, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.7, align 4, addrspace 5)
43352B	  SI_SPILL_AV32_SAVE %9970:vgpr_32, %stack.6, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.6, addrspace 5)
43360B	  undef %9967.sub0:av_64_align2 = COPY %9966.sub0:vreg_64_align2
43368B	  SI_SPILL_AV64_SAVE %9967:av_64_align2, %stack.5, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.5, align 4, addrspace 5)
43384B	  SI_SPILL_AV32_SAVE %9958:vgpr_32, %stack.4, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.4, addrspace 5)
43392B	  SI_SPILL_AV64_SAVE %9956:vreg_64_align2, %stack.3, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.3, align 4, addrspace 5)
43400B	  SI_SPILL_AV32_SAVE %9954:vgpr_32, %stack.2, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.2, addrspace 5)
43408B	  SI_SPILL_AV32_SAVE %9952:vgpr_32, %stack.1, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.1, addrspace 5)
43416B	  SI_SPILL_AV32_SAVE %9950:vgpr_32, %stack.0, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.0, addrspace 5)
43432B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43440B	  renamable $sgpr7 = S_LSHR_B32 killed renamable $sgpr7, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43448B	  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43456B	  renamable $sgpr4 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43464B	  %3913:vgpr_32 = V_MUL_U32_U24_e32 272, %9995:vgpr_32, implicit $exec
43472B	  %196:vgpr_32 = V_XOR_B32_e32 %3913:vgpr_32, %9963:vgpr_32, implicit $exec
43480B	  %197:vgpr_32 = V_XOR_B32_e32 64, %196:vgpr_32, implicit $exec
43488B	  %198:vgpr_32 = V_XOR_B32_e32 128, %196:vgpr_32, implicit $exec
43496B	  %199:vgpr_32 = V_XOR_B32_e32 192, %196:vgpr_32, implicit $exec
43504B	  %3920:vgpr_32 = V_AND_B32_e32 28672, %9439:vgpr_32, implicit $exec
43508B	  SI_SPILL_AV32_SAVE %9995:vgpr_32, %stack.12, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.12, addrspace 5)
43512B	  %3922:vgpr_32 = disjoint V_LSHL_OR_B32_e64 %9995:vgpr_32, 7, %3920:vgpr_32, implicit $exec
43528B	  %3924:vgpr_32 = V_BITOP3_B32_e64 %9991:vgpr_32, %9963:vgpr_32, killed $sgpr6, 108, implicit $exec
43536B	  %200:vgpr_32 = disjoint V_OR_B32_e32 %3922:vgpr_32, %3924:vgpr_32, implicit $exec
43544B	  %201:vgpr_32 = V_BITOP3_B32_e64 %3922:vgpr_32, 64, %3924:vgpr_32, 54, implicit $exec
43552B	  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr4, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
43560B	  %3927:vgpr_32 = V_ADD_U32_e32 %8712:vgpr_32, %52:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43568B	  renamable $sgpr6 = S_MOV_B32 256
43576B	  %9659:vgpr_32 = V_ADD3_U32_e64 %3927:vgpr_32, %50:vgpr_32, killed $sgpr6, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43584B	  %3929:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8488:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43592B	  %3930:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3929:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43600B	  %3931:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3930:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43616B	  renamable $sgpr6_sgpr7 = S_MOV_B64_IMM_PSEUDO 128
43632B	  %204:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3931:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43648B	  %3933:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8490:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43664B	  %3934:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3933:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43680B	  %3935:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3934:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43696B	  %10018:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3935:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43704B	  SI_SPILL_AV64_SAVE %10018:vreg_64_align2, %stack.13, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.13, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43712B	  %3936:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8492:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43728B	  %3937:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3936:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43744B	  %3938:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3937:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43760B	  %10020:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3938:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43768B	  SI_SPILL_AV64_SAVE %10020:vreg_64_align2, %stack.14, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.14, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43776B	  %3939:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8494:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43792B	  %3940:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3939:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43808B	  %3941:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3940:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43824B	  %10022:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3941:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43832B	  SI_SPILL_AV64_SAVE %10022:vreg_64_align2, %stack.15, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.15, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43840B	  %3942:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8496:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43856B	  %3943:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3942:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43872B	  %3944:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3943:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43888B	  %10024:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3944:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43896B	  SI_SPILL_AV64_SAVE %10024:vreg_64_align2, %stack.16, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.16, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43904B	  %3945:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8498:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43920B	  %3946:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3945:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43936B	  %3947:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3946:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43952B	  %10026:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3947:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43960B	  SI_SPILL_AV64_SAVE %10026:vreg_64_align2, %stack.17, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.17, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43968B	  %3948:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8500:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43984B	  %3949:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3948:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44000B	  %3950:vreg_64_align2 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, %3949:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44016B	  %210:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3950:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44032B	  %3951:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8502:vreg_64_align2, 0, %8728:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44048B	  %3952:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3951:vreg_64_align2, 0, %8503:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44064B	  %3953:vreg_64_align2 = V_LSHL_ADD_U64_e64 killed $sgpr12_sgpr13, 0, %3952:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44080B	  %211:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3953:vreg_64_align2, 0, killed $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44096B	  %9657:vgpr_32 = V_ADD_U32_e32 256, %1346.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44112B	  %9656:vgpr_32 = V_ADD_U32_e32 256, %1343.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44128B	  %9655:vgpr_32 = V_ADD_U32_e32 256, %1340.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44144B	  %9654:vgpr_32 = V_ADD_U32_e32 256, %1337.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44160B	  renamable $sgpr4 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44176B	  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr4, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44192B	  undef %8412.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
44208B	  renamable $sgpr6_sgpr7 = S_MOV_B64 0
44288B	  renamable $sgpr12 = S_ADD_I32 0, 65536, implicit-def dead $scc
44304B	  %4021:vgpr_32 = V_ADD_U32_e32 $sgpr12, %197:vgpr_32, implicit $exec
44320B	  %4062:vgpr_32 = V_ADD_U32_e32 $sgpr12, %198:vgpr_32, implicit $exec
44336B	  %4103:vgpr_32 = V_ADD_U32_e32 $sgpr12, %199:vgpr_32, implicit $exec
44352B	  %4144:vgpr_32 = V_ADD_U32_e32 0, %200:vgpr_32, implicit $exec
44368B	  %4149:vgpr_32 = V_ADD_U32_e32 0, %201:vgpr_32, implicit $exec
44448B	  renamable $sgpr13 = S_ADD_I32 0, 98304, implicit-def dead $scc
44480B	  renamable $sgpr14 = S_MOV_B32 117769732
44496B	  %4185:vgpr_32 = V_MOV_B32_e32 127, implicit $exec
44624B	  %8412.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44640B	  %8412.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44656B	  %8412.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44672B	  undef %8411.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44688B	  %8411.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44704B	  %8411.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44720B	  %8411.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44736B	  undef %8410.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44752B	  %8410.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44768B	  %8410.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44784B	  %8410.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44800B	  undef %8409.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44816B	  %8409.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44832B	  %8409.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44848B	  %8409.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44864B	  undef %8408.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44880B	  %8408.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44896B	  %8408.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44912B	  %8408.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44928B	  undef %8407.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44944B	  %8407.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44960B	  %8407.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44976B	  %8407.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
44992B	  undef %8406.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45008B	  %8406.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45024B	  %8406.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45040B	  %8406.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45056B	  undef %8405.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45072B	  %8405.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45088B	  %8405.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45104B	  %8405.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45120B	  undef %8404.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45136B	  %8404.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45152B	  %8404.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45168B	  %8404.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45184B	  undef %8403.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45200B	  %8403.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45216B	  %8403.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45232B	  %8403.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45248B	  undef %10000.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45264B	  %10000.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45280B	  %10000.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45296B	  %10000.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45312B	  undef %9997.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45328B	  %9997.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45344B	  %9997.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45360B	  %9997.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45376B	  undef %8400.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45392B	  %8400.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45408B	  %8400.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45424B	  %8400.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45440B	  undef %8399.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45456B	  %8399.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45472B	  %8399.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45488B	  %8399.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45504B	  undef %8398.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45520B	  %8398.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45536B	  %8398.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45552B	  %8398.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45568B	  undef %8397.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45584B	  %8397.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45600B	  %8397.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45616B	  %8397.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45632B	  undef %10017.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45648B	  %10017.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45664B	  %10017.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45680B	  %10017.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45696B	  undef %10014.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45712B	  %10014.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45728B	  %10014.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45744B	  %10014.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45760B	  undef %10010.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45776B	  %10010.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45792B	  %10010.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45808B	  %10010.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45824B	  undef %10008.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45840B	  %10008.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45856B	  %10008.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45872B	  %10008.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45888B	  undef %8392.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45904B	  %8392.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45920B	  %8392.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45936B	  %8392.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45952B	  undef %8391.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45968B	  %8391.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
45984B	  %8391.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46000B	  %8391.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46016B	  undef %8390.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46032B	  %8390.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46048B	  %8390.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46064B	  %8390.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46080B	  undef %8389.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46096B	  %8389.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46112B	  %8389.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46128B	  %8389.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46144B	  undef %8388.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46160B	  %8388.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46176B	  %8388.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46192B	  %8388.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46208B	  undef %8387.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46224B	  %8387.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46240B	  %8387.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46256B	  %8387.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46272B	  undef %8386.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46288B	  %8386.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46304B	  %8386.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46320B	  %8386.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46336B	  undef %10004.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46352B	  %10004.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46368B	  %10004.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46384B	  %10004.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46400B	  undef %8384.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46416B	  %8384.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46432B	  %8384.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46448B	  %8384.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46464B	  undef %8383.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46480B	  %8383.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46496B	  %8383.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46512B	  %8383.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46528B	  undef %8382.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46544B	  %8382.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46560B	  %8382.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46576B	  %8382.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46592B	  undef %8381.sub0:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46608B	  %8381.sub1:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46624B	  %8381.sub2:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46640B	  %8381.sub3:vreg_128_align2 = COPY %8412.sub0:vreg_128_align2
46656B	  S_BRANCH %bb.59, debug-location !62; moe_op_gemm_a8w4.py:403:19

46672B	bb.58.Flow340:
	; predecessors: %bb.60, %bb.56
	  successors: %bb.61(0x80000000); %bb.61(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
46680B	  %10009:vreg_128_align2 = COPY %10010:vreg_128_align2
48736B	  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
48768B	  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
48784B	  %17:vgpr_32 = V_AND_B32_e32 496, %9993:vgpr_32(s32), implicit $exec
48816B	  %9972.sub1:vreg_64_align2 = COPY %9956.sub1:vreg_64_align2
48848B	  %9984.sub1:vreg_64_align2 = COPY %9956.sub1:vreg_64_align2
48880B	  %9980.sub1:vreg_64_align2 = COPY %9956.sub1:vreg_64_align2
48912B	  %9976.sub1:vreg_64_align2 = COPY %9956.sub1:vreg_64_align2
48928B	  %40:vgpr_32 = V_AND_B32_e32 480, %9993:vgpr_32(s32), implicit $exec
48944B	  S_BRANCH %bb.61

48960B	bb.59 (%ir-block.818):
	; predecessors: %bb.57, %bb.59
	  successors: %bb.60(0x04000000), %bb.59(0x7c000000); %bb.60(3.12%), %bb.59(96.88%)
	  liveins: $sgpr4, $sgpr5, $sgpr12, $sgpr13, $sgpr14, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF
51104B	  %3959:vreg_64_align2 = V_LSHL_ADD_U64_e64 %211:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51120B	  %3960:vreg_64_align2 = V_LSHL_ADD_U64_e64 %210:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51128B	  %10027:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.17, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.17, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51136B	  %3961:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10027:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51144B	  %10025:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.16, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.16, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51152B	  %3962:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10025:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51160B	  %10023:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.15, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.15, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51168B	  %3963:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10023:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51176B	  %10021:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.14, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.14, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51184B	  %3964:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10021:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51192B	  %10019:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.13, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.13, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51200B	  %3965:vreg_64_align2 = V_LSHL_ADD_U64_e64 %10019:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51216B	  %3966:vreg_64_align2 = V_LSHL_ADD_U64_e64 %204:vreg_64_align2, 0, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
51232B	  %10028:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %9654:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51240B	  SI_SPILL_AV128_SAVE %10028:av_128_align2, %stack.18, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.18, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51248B	  %10030:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %9655:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51256B	  SI_SPILL_AV128_SAVE %10030:av_128_align2, %stack.19, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51264B	  %10032:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %9656:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51272B	  SI_SPILL_AV128_SAVE %10032:av_128_align2, %stack.20, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51280B	  %3976:vreg_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %9657:vgpr_32, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51296B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
51312B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
51328B	  %4159:vreg_64_align2 = BUFFER_LOAD_DWORDX2_OFFEN %9659:vgpr_32, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
51344B	  %4377:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3959:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
51360B	  %4378:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3960:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
51376B	  %4379:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3961:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
51392B	  %4380:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3962:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
51408B	  %4381:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3963:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
51424B	  %4382:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3964:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
51440B	  %4383:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3965:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
51456B	  %4384:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3966:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
51472B	  %4145:vreg_128_align2 = DS_READ_B128_gfx9 %4144:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
51488B	  %4146:vreg_128_align2 = DS_READ_B128_gfx9 %4144:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
51504B	  %4147:vreg_128_align2 = DS_READ_B128_gfx9 %4144:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
51512B	  %9998:vreg_128_align2 = COPY %9997:vreg_128_align2
51520B	  %4148:vreg_128_align2 = DS_READ_B128_gfx9 %4144:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
51536B	  %3980:vgpr_32 = V_ADD_U32_e32 $sgpr12, %196:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
51552B	  %4162:vgpr_32 = V_ADD_U32_e32 $sgpr13, %9440:vgpr_32, implicit $exec
51600B	  %9436:vreg_64_align2 = DS_READ2ST64_B32_gfx9 %4162:vgpr_32, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
51616B	  undef %8478.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
51632B	  undef %8476.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
51648B	  %8478.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
51664B	  %8476.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
51680B	  renamable $sgpr6 = S_ADD_U32 renamable $sgpr6, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
51696B	  renamable $sgpr7 = S_ADDC_U32 renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
51712B	  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr6, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
51728B	  %9659:vgpr_32 = V_ADD_U32_e32 256, %9659:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51744B	  %9657:vgpr_32 = V_ADD_U32_e32 256, %9657:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51760B	  %9656:vgpr_32 = V_ADD_U32_e32 256, %9656:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51776B	  %9655:vgpr_32 = V_ADD_U32_e32 256, %9655:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51792B	  %9654:vgpr_32 = V_ADD_U32_e32 256, %9654:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51808B	  %4182:vgpr_32 = V_PERM_B32_e64 %9436.sub0:vreg_64_align2, %9436.sub0:vreg_64_align2, $sgpr14, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51824B	  %4183:vgpr_32 = V_PERM_B32_e64 %9436.sub1:vreg_64_align2, %9436.sub1:vreg_64_align2, $sgpr14, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51840B	  %4186:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8478:vreg_256_align2, %8412:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51856B	  %4198:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8478:vreg_256_align2, %8410:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51872B	  %4204:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8478:vreg_256_align2, %8409:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51888B	  %4222:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8476:vreg_256_align2, %8406:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51904B	  %4228:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8476:vreg_256_align2, %8405:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51920B	  %4192:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8478:vreg_256_align2, %8411:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51936B	  %4210:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8476:vreg_256_align2, %8408:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51952B	  undef %8474.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
51968B	  %8474.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
51984B	  %4216:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8476:vreg_256_align2, %8407:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52000B	  undef %8472.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
52016B	  %8472.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
52032B	  %4234:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8474:vreg_256_align2, %8404:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52048B	  %4240:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8474:vreg_256_align2, %8403:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52064B	  %4246:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8474:vreg_256_align2, %10000:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52080B	  %4252:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8474:vreg_256_align2, %9998:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52096B	  undef %8470.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
52112B	  %8470.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
52128B	  %4258:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8472:vreg_256_align2, %8400:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52144B	  %4264:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8472:vreg_256_align2, %8399:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52160B	  %4270:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8472:vreg_256_align2, %8398:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52176B	  %4276:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8472:vreg_256_align2, %8397:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52192B	  undef %8468.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
52208B	  %8468.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
52224B	  %4282:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8470:vreg_256_align2, %10017:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52240B	  %4288:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8470:vreg_256_align2, %10014:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52256B	  %4294:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8470:vreg_256_align2, %10010:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52264B	  %10005:vreg_128_align2 = COPY %10004:vreg_128_align2
52272B	  %4300:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8470:vreg_256_align2, %10008:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52288B	  undef %8466.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
52304B	  %8466.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
52320B	  %4306:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8468:vreg_256_align2, %8392:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52336B	  %4312:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8468:vreg_256_align2, %8391:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52352B	  %4318:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8468:vreg_256_align2, %8390:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52368B	  %4324:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8468:vreg_256_align2, %8389:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52384B	  undef %8464.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %3980:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
52400B	  %8464.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4021:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
52416B	  %4385:vgpr_32 = V_ADD_U32_e32 $sgpr12, %192:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
52432B	  %4330:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8466:vreg_256_align2, %8388:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52448B	  %4336:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8466:vreg_256_align2, %8387:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52464B	  %4342:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8466:vreg_256_align2, %8386:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52480B	  %4348:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8466:vreg_256_align2, %10005:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52496B	  %4150:vreg_128_align2 = DS_READ_B128_gfx9 %4149:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
52512B	  %4151:vreg_128_align2 = DS_READ_B128_gfx9 %4149:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
52528B	  %4354:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4145:vreg_128_align2, %8464:vreg_256_align2, %8384:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52544B	  %4152:vreg_128_align2 = DS_READ_B128_gfx9 %4149:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
52560B	  %4360:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4146:vreg_128_align2, %8464:vreg_256_align2, %8383:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52576B	  %4153:vreg_128_align2 = DS_READ_B128_gfx9 %4149:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
52592B	  %4366:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4147:vreg_128_align2, %8464:vreg_256_align2, %8382:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52600B	  %9990:vgpr_32 = COPY %9991:vgpr_32
52768B	  %4387:vgpr_32 = V_ADD_U32_e32 $sgpr13, %9990:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
53808B	  %4372:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4148:vreg_128_align2, %8464:vreg_256_align2, %8381:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53968B	  undef %8477.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
53984B	  %8477.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
54000B	  %8412:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8477:vreg_256_align2, %4186:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54016B	  %8411:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8477:vreg_256_align2, %4192:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54032B	  %8410:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8477:vreg_256_align2, %4198:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54048B	  %8409:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8477:vreg_256_align2, %4204:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54096B	  undef %8475.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
54112B	  %8475.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
54128B	  %8408:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8475:vreg_256_align2, %4210:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54144B	  %8407:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8475:vreg_256_align2, %4216:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54160B	  %8406:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8475:vreg_256_align2, %4222:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54176B	  %8405:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8475:vreg_256_align2, %4228:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54240B	  undef %8473.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
54256B	  %8473.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
54272B	  %8404:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8473:vreg_256_align2, %4234:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54288B	  %8403:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8473:vreg_256_align2, %4240:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54304B	  %10000:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8473:vreg_256_align2, %4246:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54320B	  %9997:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8473:vreg_256_align2, %4252:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55952B	  undef %8471.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
55968B	  %8471.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
55984B	  %8400:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8471:vreg_256_align2, %4258:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56000B	  %8399:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8471:vreg_256_align2, %4264:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56016B	  %8398:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8471:vreg_256_align2, %4270:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56032B	  %8397:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8471:vreg_256_align2, %4276:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56096B	  undef %8469.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
56112B	  %8469.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
56128B	  %10017:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8469:vreg_256_align2, %4282:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56144B	  %10014:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8469:vreg_256_align2, %4288:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56160B	  %10010:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8469:vreg_256_align2, %4294:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56176B	  %10008:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8469:vreg_256_align2, %4300:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56512B	  undef %8467.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
56528B	  %8467.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
56544B	  %8392:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8467:vreg_256_align2, %4306:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56560B	  %8391:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8467:vreg_256_align2, %4312:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56576B	  %8390:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8467:vreg_256_align2, %4318:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56592B	  %8389:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8467:vreg_256_align2, %4324:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56656B	  undef %8465.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
56672B	  %8465.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
56688B	  %10004:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8465:vreg_256_align2, %4348:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56704B	  %8386:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8465:vreg_256_align2, %4342:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56720B	  %8387:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8465:vreg_256_align2, %4336:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56736B	  %8388:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8465:vreg_256_align2, %4330:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
58336B	  undef %8463.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4062:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
58352B	  %8463.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4103:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
58368B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
58384B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
66800B	  %8384:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4150:vreg_128_align2, %8463:vreg_256_align2, %4354:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
66960B	  %8383:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4151:vreg_128_align2, %8463:vreg_256_align2, %4360:vreg_128_align2, 4, 0, %4182:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67120B	  %8382:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4152:vreg_128_align2, %8463:vreg_256_align2, %4366:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67936B	  %8381:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4153:vreg_128_align2, %8463:vreg_256_align2, %4372:vreg_128_align2, 4, 0, %4183:vgpr_32, %4185:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67944B	  %10029:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.18, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.18, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
67952B	  DS_WRITE_B128_gfx9 %4385:vgpr_32, %10029:av_128_align2, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
67960B	  %10031:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.19, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.19, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
67968B	  DS_WRITE_B128_gfx9 %4385:vgpr_32, %10031:av_128_align2, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
67976B	  %10033:av_128_align2 = SI_SPILL_AV128_RESTORE %stack.20, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.20, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
67984B	  DS_WRITE_B128_gfx9 %4385:vgpr_32, %10033:av_128_align2, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
68000B	  DS_WRITE_B128_gfx9 %4385:vgpr_32, %3976:vreg_128_align2, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
68016B	  DS_WRITE_B64_gfx9 %4387:vgpr_32, %4159:vreg_64_align2, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
68024B	  %9991:vgpr_32 = COPY %9990:vgpr_32
68032B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4377:vreg_128_align2, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
68048B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4378:vreg_128_align2, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
68064B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4379:vreg_128_align2, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
68080B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4380:vreg_128_align2, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
68096B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4381:vreg_128_align2, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
68112B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4382:vreg_128_align2, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
68128B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4383:vreg_128_align2, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
68144B	  DS_WRITE_B128_gfx9 %3879:vgpr_32, %4384:vreg_128_align2, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
70304B	  S_CBRANCH_SCC1 %bb.59, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
70320B	  S_BRANCH %bb.60, debug-location !62; moe_op_gemm_a8w4.py:403:19

70336B	bb.60.Flow:
	; predecessors: %bb.59
	  successors: %bb.58(0x80000000); %bb.58(100.00%)
	  liveins: $sgpr5, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
70340B	  %9993:vgpr_32(s32) = SI_SPILL_AV32_RESTORE %stack.11, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.11, addrspace 5)
70344B	  %9948:vgpr_32 = V_LSHRREV_B32_e32 4, %9993:vgpr_32(s32), implicit $exec
72392B	  %9947:vgpr_32 = COPY %9948:vgpr_32
72396B	  %9950:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.0, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.0, addrspace 5)
72404B	  %9952:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.1, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.1, addrspace 5)
72408B	  %9954:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.2, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.2, addrspace 5)
72416B	  %9956:vreg_64_align2 = SI_SPILL_AV64_RESTORE %stack.3, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.3, align 4, addrspace 5)
72420B	  %9958:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.4, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.4, addrspace 5)
72424B	  %9961:vgpr_32 = V_LSHRREV_B32_e32 3, %9993:vgpr_32(s32), implicit $exec
72428B	  %9960:vgpr_32 = COPY %9961:vgpr_32
72436B	  %9964:vgpr_32 = V_AND_B32_e32 48, %9993:vgpr_32(s32), implicit $exec
72444B	  %9963:vgpr_32 = COPY %9964:vgpr_32
72452B	  %9968:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.5, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.5, align 4, addrspace 5)
72460B	  undef %9966.sub0:vreg_64_align2 = COPY %9968.sub0:av_64_align2
72464B	  %9970:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.6, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.6, addrspace 5)
72468B	  %9974:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.7, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.7, align 4, addrspace 5)
72472B	  undef %9972.sub0:vreg_64_align2 = COPY %9974.sub0:av_64_align2
72480B	  %9978:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.8, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.8, align 4, addrspace 5)
72488B	  undef %9976.sub0:vreg_64_align2 = COPY %9978.sub0:av_64_align2
72496B	  %9982:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.9, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.9, align 4, addrspace 5)
72504B	  undef %9980.sub0:vreg_64_align2 = COPY %9982.sub0:av_64_align2
72512B	  %9986:av_64_align2 = SI_SPILL_AV64_RESTORE %stack.10, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.10, align 4, addrspace 5)
72520B	  undef %9984.sub0:vreg_64_align2 = COPY %9986.sub0:av_64_align2
72524B	  %9995:vgpr_32 = SI_SPILL_AV32_RESTORE %stack.12, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.12, addrspace 5)
72528B	  undef %9989.sub0:vreg_64_align2 = V_LSHLREV_B32_e32 4, %9995:vgpr_32, implicit $exec
72536B	  undef %9988.sub0:vreg_64_align2 = COPY %9989.sub0:vreg_64_align2
72540B	  %10007:vreg_128_align2 = COPY %10008:vreg_128_align2
72548B	  %10013:vreg_128_align2 = COPY %10014:vreg_128_align2
72552B	  %10016:vreg_128_align2 = COPY %10017:vreg_128_align2
72556B	  S_BRANCH %bb.58

72564B	bb.61.._crit_edge:
	; predecessors: %bb.58
	  successors: %bb.62(0x40000000), %bb.63(0x40000000); %bb.62(50.00%), %bb.63(50.00%)
	  liveins: $sgpr0, $sgpr5, $sgpr2_sgpr3, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
72572B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
72580B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
72588B	  %741:vgpr_32 = V_AND_B32_e32 14, %9993:vgpr_32(s32), implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72604B	  $vcc = S_AND_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
72612B	  %742:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 3, %741:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76624B	  S_CBRANCH_VCCNZ %bb.63, implicit $vcc, debug-location !85; moe_op_gemm_a8w4.py:421:46
76640B	  S_BRANCH %bb.62, debug-location !85; moe_op_gemm_a8w4.py:421:46

76656B	bb.62 (%ir-block.1360):
	; predecessors: %bb.61
	  successors: %bb.63(0x80000000); %bb.63(100.00%)
	  liveins: $sgpr0, $sgpr5, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
76672B	  %8429:vgpr_32 = V_LSHL_ADD_U32_e64 %9993:vgpr_32(s32), 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
76688B	  %4401:vgpr_32 = V_ADD_U32_e32 98304, %8429:vgpr_32, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
76704B	  %9437:vreg_64_align2 = DS_READ2ST64_B32_gfx9 %4401:vgpr_32, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
76720B	  %4406:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 7, %9995:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76736B	  %4410:vgpr_32 = V_AND_B32_e32 28672, %9439:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76752B	  %4411:vgpr_32 = V_XOR_B32_e32 %742:vgpr_32, %9963:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76768B	  %4412:vgpr_32 = disjoint V_OR3_B32_e64 %4406:vgpr_32, %4410:vgpr_32, %4411:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76784B	  %4414:vgpr_32 = nuw V_XAD_U32_e64 %4412:vgpr_32, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76848B	  %4419:vreg_128_align2 = DS_READ_B128_gfx9 %4414:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
76864B	  %4420:vgpr_32 = nuw V_ADD_U32_e32 0, %4412:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76928B	  %4424:vreg_128_align2 = DS_READ_B128_gfx9 %4420:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
76944B	  %4426:vgpr_32 = V_MUL_U32_U24_e32 272, %9995:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
76960B	  %4427:vgpr_32 = V_XOR_B32_e32 %4426:vgpr_32, %9963:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
76976B	  %4429:vgpr_32 = V_XOR_B32_e32 192, %4427:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
76992B	  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
77008B	  %4432:vgpr_32 = nuw V_ADD_U32_e32 $sgpr1, %4429:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
77312B	  %4516:vgpr_32 = nuw V_XAD_U32_e64 %4427:vgpr_32, 64, $sgpr1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
77440B	  undef %8428.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
77456B	  %4558:vgpr_32 = nuw V_ADD_U32_e32 $sgpr1, %4427:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
77584B	  %8428.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
77600B	  undef %8427.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
79664B	  renamable $sgpr2 = S_MOV_B32 117769732
79680B	  %4616:vgpr_32 = V_PERM_B32_e64 %9437.sub0:vreg_64_align2, %9437.sub0:vreg_64_align2, $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79776B	  %4619:vgpr_32 = V_MOV_B32_e32 127, implicit $exec
79792B	  %4620:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8428:vreg_256_align2, %8412:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79808B	  %4474:vgpr_32 = V_XOR_B32_e32 128, %4427:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
79824B	  %4475:vgpr_32 = nuw V_ADD_U32_e32 killed $sgpr1, %4474:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
79840B	  %8427.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
79856B	  %8412:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8427:vreg_256_align2, %4620:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79872B	  %4423:vreg_128_align2 = DS_READ_B128_gfx9 %4420:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
79952B	  %4626:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8428:vreg_256_align2, %8411:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79968B	  %4418:vreg_128_align2 = DS_READ_B128_gfx9 %4414:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
79984B	  %8411:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8427:vreg_256_align2, %4626:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80000B	  %4422:vreg_128_align2 = DS_READ_B128_gfx9 %4420:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
80016B	  %4617:vgpr_32 = V_PERM_B32_e64 %9437.sub1:vreg_64_align2, %9437.sub1:vreg_64_align2, killed $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80096B	  %4632:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8428:vreg_256_align2, %8410:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80112B	  %4417:vreg_128_align2 = DS_READ_B128_gfx9 %4414:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
80128B	  %8410:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8427:vreg_256_align2, %4632:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80144B	  %4421:vreg_128_align2 = DS_READ_B128_gfx9 %4420:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
80224B	  %4638:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8428:vreg_256_align2, %8409:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80240B	  %4416:vreg_128_align2 = DS_READ_B128_gfx9 %4414:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
80256B	  %8409:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8427:vreg_256_align2, %4638:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80272B	  undef %8426.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
80288B	  %8426.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
80368B	  %4644:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8426:vreg_256_align2, %8408:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80384B	  undef %8425.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
80400B	  %8425.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
80416B	  %8408:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8425:vreg_256_align2, %4644:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80496B	  %4650:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8426:vreg_256_align2, %8407:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80512B	  %8407:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8425:vreg_256_align2, %4650:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80584B	  %10001:vreg_128_align2 = COPY %10000:vreg_128_align2
80592B	  %4656:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8426:vreg_256_align2, %8406:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80608B	  %8406:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8425:vreg_256_align2, %4656:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80688B	  %4662:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8426:vreg_256_align2, %8405:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80704B	  %8405:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8425:vreg_256_align2, %4662:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80720B	  undef %8424.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
80736B	  %8424.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
80816B	  %4668:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8424:vreg_256_align2, %8404:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80832B	  undef %8423.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
80848B	  %8423.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
80864B	  %8404:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8423:vreg_256_align2, %4668:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80944B	  %4674:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8424:vreg_256_align2, %8403:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80960B	  %8403:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8423:vreg_256_align2, %4674:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81040B	  %4680:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8424:vreg_256_align2, %10001:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81056B	  %10002:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8423:vreg_256_align2, %4680:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81136B	  %4686:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8424:vreg_256_align2, %9997:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81152B	  %9997:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8423:vreg_256_align2, %4686:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81168B	  undef %8422.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
81184B	  %8422.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
81264B	  %4692:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8422:vreg_256_align2, %8400:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81280B	  undef %8421.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
81296B	  %8421.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
81312B	  %8400:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8421:vreg_256_align2, %4692:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81392B	  %4698:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8422:vreg_256_align2, %8399:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81408B	  %8399:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8421:vreg_256_align2, %4698:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81488B	  %4704:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8422:vreg_256_align2, %8398:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81504B	  %8398:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8421:vreg_256_align2, %4704:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81584B	  %4710:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8422:vreg_256_align2, %8397:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81600B	  %8397:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8421:vreg_256_align2, %4710:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81616B	  undef %8420.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
81632B	  %8420.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
81712B	  %4716:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8420:vreg_256_align2, %10016:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81728B	  undef %8419.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
81744B	  %8419.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
81760B	  %10016:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8419:vreg_256_align2, %4716:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81840B	  %4722:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8420:vreg_256_align2, %10013:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81856B	  %10013:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8419:vreg_256_align2, %4722:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81936B	  %4728:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8420:vreg_256_align2, %10009:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81952B	  %10009:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8419:vreg_256_align2, %4728:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82032B	  %4734:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8420:vreg_256_align2, %10007:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82048B	  %10007:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8419:vreg_256_align2, %4734:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82064B	  undef %8418.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
82080B	  %8418.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
82160B	  %4740:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8418:vreg_256_align2, %8392:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82176B	  undef %8417.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
82192B	  %8417.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
82208B	  %8392:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8417:vreg_256_align2, %4740:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82288B	  %4746:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8418:vreg_256_align2, %8391:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82304B	  %8391:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8417:vreg_256_align2, %4746:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82384B	  %4752:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8418:vreg_256_align2, %8390:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82400B	  %8390:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8417:vreg_256_align2, %4752:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82480B	  %4758:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8418:vreg_256_align2, %8389:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82496B	  %8389:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8417:vreg_256_align2, %4758:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82512B	  undef %8416.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
82528B	  %8416.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
82608B	  %4764:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8416:vreg_256_align2, %8388:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82624B	  undef %8415.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
82640B	  %8415.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
82656B	  %8388:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8415:vreg_256_align2, %4764:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82736B	  %4770:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8416:vreg_256_align2, %8387:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82752B	  %8387:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8415:vreg_256_align2, %4770:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82832B	  %4776:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8416:vreg_256_align2, %8386:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82848B	  %8386:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8415:vreg_256_align2, %4776:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82928B	  %4782:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8416:vreg_256_align2, %10004:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82944B	  %10004:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8415:vreg_256_align2, %4782:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82960B	  undef %8414.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4516:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
82976B	  %8414.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4558:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
83056B	  %4788:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4424:vreg_128_align2, %8414:vreg_256_align2, %8384:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83072B	  undef %8413.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4432:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
83088B	  %8413.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4475:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
83104B	  %8384:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4419:vreg_128_align2, %8413:vreg_256_align2, %4788:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83176B	  %10000:vreg_128_align2 = COPY %10002:vreg_128_align2
83184B	  %4794:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4423:vreg_128_align2, %8414:vreg_256_align2, %8383:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83200B	  %8383:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4418:vreg_128_align2, %8413:vreg_256_align2, %4794:vreg_128_align2, 4, 0, %4616:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83280B	  %4800:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4422:vreg_128_align2, %8414:vreg_256_align2, %8382:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83296B	  %8382:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4417:vreg_128_align2, %8413:vreg_256_align2, %4800:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83376B	  %4806:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4421:vreg_128_align2, %8414:vreg_256_align2, %8381:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83392B	  %8381:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4416:vreg_128_align2, %8413:vreg_256_align2, %4806:vreg_128_align2, 4, 0, %4617:vgpr_32, %4619:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46

87504B	bb.63.._crit_edge._crit_edge:
	; predecessors: %bb.61, %bb.62
	  successors: %bb.1(0x80000000); %bb.1(100.00%)
	  liveins: $sgpr0, $sgpr5, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F
89552B	  undef %8379.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr18, %9993:vgpr_32(s32), implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
89568B	  %8379.sub1:vreg_64_align2 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
89856B	  %8725:vgpr_32 = V_MUL_LO_U32_e64 %9970:vgpr_32, killed $sgpr0, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
89872B	  %8729:vgpr_32 = V_ADD_U32_e32 killed $sgpr18, %8725:vgpr_32, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
89904B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
89920B	  renamable $sgpr19 = S_MOV_B32 159744
89936B	  renamable $sgpr18 = S_MOV_B32 2147483646
90016B	  %4846:vgpr_32 = V_ADD_LSHL_U32_e64 %8729:vgpr_32, %9993:vgpr_32(s32), 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
90032B	  %4850:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
90048B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr22_sgpr23, %8379:vreg_64_align2, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
90064B	  %4849:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %4846:vgpr_32, killed $vcc, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
90080B	  %4852:av_32 = BUFFER_LOAD_DWORD_OFFEN %4849:vgpr_32, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
90096B	  %4828:vgpr_32 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
90112B	  %4829:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr8_sgpr9, %4828:vgpr_32, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
90128B	  %9966.sub1:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9966.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
90144B	  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
90160B	  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
90176B	  renamable $sgpr4 = S_MOV_B32 65535
90224B	  %4854:vgpr_32 = V_AND_B32_e32 96, %9991:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90240B	  %4857:vgpr_32 = V_AND_B32_e32 1932, %9440:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90256B	  %4859:vgpr_32 = V_AND_B32_e32 16, %9993:vgpr_32(s32), implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90368B	  %8378:vgpr_32 = V_LSHL_ADD_U32_e64 %17:vgpr_32, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90384B	  undef %8376.sub0:vreg_64_align2 = V_OR_B32_e32 $sgpr12, %9988.sub0:vreg_64_align2, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
90400B	  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
90416B	  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 %9972:vreg_64_align2, %9966:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90432B	  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 %9984:vreg_64_align2, %9966:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90448B	  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 %9980:vreg_64_align2, %9966:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90464B	  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 %9976:vreg_64_align2, %9966:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90480B	  %4861:vgpr_32 = nuw V_ADD_U32_e32 0, %4854:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90496B	  %4862:vgpr_32 = nuw V_ADD3_U32_e64 %4861:vgpr_32, %4857:vgpr_32, %4859:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90512B	  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
90528B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
90544B	  DS_WRITE_B32_gfx9 %4862:vgpr_32, %4852:av_32, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
90560B	  ATOMIC_FENCE 5, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
90576B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
90592B	  ATOMIC_FENCE 4, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
90608B	  %4865:vreg_128_align2 = DS_READ_B128_gfx9 %8378:vgpr_32, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
90624B	  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
90640B	  %4867:vreg_128_align2 = DS_READ_B128_gfx9 %8378:vgpr_32, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
90656B	  %4877:vreg_128_align2 = DS_READ_B128_gfx9 %8378:vgpr_32, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
90672B	  %4883:vreg_128_align2 = DS_READ_B128_gfx9 %8378:vgpr_32, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
90704B	  %4889:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8412.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90720B	  %4890:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8412.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90736B	  %4891:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8412.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90752B	  %4892:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8412.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90768B	  %4893:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8411.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90784B	  %4894:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8411.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90800B	  %4895:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8411.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90816B	  %4896:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8411.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90832B	  %4897:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8410.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90848B	  %4898:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8410.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90864B	  %4899:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8410.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90880B	  %4900:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8410.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90896B	  %4901:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8409.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90912B	  %4902:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8409.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90928B	  %4903:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8409.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90944B	  %4904:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8409.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90960B	  %4905:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8408.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90976B	  %4906:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8408.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90992B	  %4907:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8408.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91008B	  %4908:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8408.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91024B	  %4909:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8407.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91040B	  %4910:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8407.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91056B	  %4911:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8407.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91072B	  %4912:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8407.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91088B	  %4913:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8406.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91104B	  %4914:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8406.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91120B	  %4915:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8406.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91136B	  %4916:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8406.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91152B	  %4917:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8405.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91168B	  %4918:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8405.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91184B	  %4919:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8405.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91200B	  %4920:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8405.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91216B	  %4921:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8404.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91232B	  %4922:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8404.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91248B	  %4923:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8404.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91264B	  %4924:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8404.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91280B	  %4925:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8403.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91296B	  %4926:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8403.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91312B	  %4927:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8403.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91328B	  %4928:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8403.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91344B	  %4929:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10000.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91360B	  %4930:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10000.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91376B	  %4931:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10000.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91392B	  %4932:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10000.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91408B	  %4933:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %9997.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91424B	  %4934:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %9997.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91440B	  %4935:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %9997.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91456B	  %4936:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %9997.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91472B	  %4937:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8400.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91488B	  %4938:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8400.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91504B	  %4939:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8400.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91520B	  %4940:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8400.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91536B	  %4941:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8399.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91552B	  %4942:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8399.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91568B	  %4943:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8399.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91584B	  %4944:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8399.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91600B	  %4945:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8398.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91616B	  %4946:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8398.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91632B	  %4947:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8398.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91648B	  %4948:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8398.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91664B	  %4949:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8397.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91680B	  %4950:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8397.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91696B	  %4951:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8397.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91712B	  %4952:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8397.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91728B	  %4953:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10016.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91744B	  %4954:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10016.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91760B	  %4955:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10016.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91776B	  %4956:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10016.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91792B	  %4957:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10013.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91808B	  %4958:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10013.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91824B	  %4959:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10013.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91840B	  %4960:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10013.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91848B	  %10011:vreg_128_align2 = COPY %10009:vreg_128_align2
91856B	  %4961:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10011.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91872B	  %4962:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10011.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91888B	  %4963:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10011.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91904B	  %4964:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10011.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91920B	  %4965:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10007.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91936B	  %4966:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10007.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91952B	  %4967:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10007.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91968B	  %4968:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10007.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91984B	  %4969:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8392.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92000B	  %4970:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8392.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92016B	  %4971:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8392.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92032B	  %4972:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8392.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92048B	  %4973:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8391.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92064B	  %4974:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8391.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92080B	  %4975:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8391.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92096B	  %4976:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8391.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92112B	  %4977:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8390.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92128B	  %4978:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8390.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92144B	  %4979:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8390.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92160B	  %4980:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8390.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92176B	  %4981:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8389.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92192B	  %4982:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8389.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92208B	  %4983:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8389.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92224B	  %4984:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8389.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92240B	  %4985:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8388.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92256B	  %4986:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8388.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92272B	  %4987:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8388.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92288B	  %4988:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8388.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92304B	  %4989:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8387.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92320B	  %4990:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8387.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92336B	  %4991:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8387.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92352B	  %4992:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8387.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92368B	  %4993:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8386.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92384B	  %4994:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8386.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92400B	  %4995:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8386.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92416B	  %4996:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8386.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92432B	  %4997:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10004.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92448B	  %4998:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10004.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92464B	  %4999:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10004.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92480B	  %5000:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %10004.sub3:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92496B	  %5001:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8384.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92512B	  %5002:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8384.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92528B	  %5003:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8384.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4865.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92560B	  undef %4865.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8384.sub3:vreg_128_align2, %4829:vgpr_32, %4865.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92576B	  %5005:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8383.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92592B	  %5006:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8383.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92608B	  %5007:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8383.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4867.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92640B	  undef %4867.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8383.sub3:vreg_128_align2, %4829:vgpr_32, %4867.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92656B	  %5009:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8382.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92672B	  %5010:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8382.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92688B	  %5011:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8382.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4877.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92720B	  undef %4877.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8382.sub3:vreg_128_align2, %4829:vgpr_32, %4877.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92736B	  %5013:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8381.sub0:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92752B	  %5014:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8381.sub1:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92768B	  %5015:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8381.sub2:vreg_128_align2, 0, %4829:vgpr_32, 0, %4883.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92800B	  undef %4883.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8381.sub3:vreg_128_align2, %4829:vgpr_32, %4883.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92816B	  %5017:vgpr_32 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92832B	  %5018:vgpr_32 = nofpexcept V_MIN_F32_e32 %4889:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92848B	  %5019:vgpr_32 = nofpexcept V_MIN_F32_e32 %4891:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92864B	  %5020:vgpr_32 = nofpexcept V_MIN_F32_e32 %4893:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92880B	  %5021:vgpr_32 = nofpexcept V_MIN_F32_e32 %4895:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92896B	  %5022:vgpr_32 = nofpexcept V_MIN_F32_e32 %4897:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92912B	  %5023:vgpr_32 = nofpexcept V_MIN_F32_e32 %4899:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92928B	  %5024:vgpr_32 = nofpexcept V_MIN_F32_e32 %4901:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92944B	  %5025:vgpr_32 = nofpexcept V_MIN_F32_e32 %4903:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92960B	  %5026:vgpr_32 = nofpexcept V_MIN_F32_e32 %4905:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92976B	  %5027:vgpr_32 = nofpexcept V_MIN_F32_e32 %4907:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92992B	  %5028:vgpr_32 = nofpexcept V_MIN_F32_e32 %4909:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93008B	  %5029:vgpr_32 = nofpexcept V_MIN_F32_e32 %4911:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93024B	  %5030:vgpr_32 = nofpexcept V_MIN_F32_e32 %4913:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93040B	  %5031:vgpr_32 = nofpexcept V_MIN_F32_e32 %4915:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93056B	  %5032:vgpr_32 = nofpexcept V_MIN_F32_e32 %4917:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93072B	  %5033:vgpr_32 = nofpexcept V_MIN_F32_e32 %4919:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93088B	  %5034:vgpr_32 = nofpexcept V_MIN_F32_e32 %4921:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93104B	  %5035:vgpr_32 = nofpexcept V_MIN_F32_e32 %4923:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93120B	  %5036:vgpr_32 = nofpexcept V_MIN_F32_e32 %4925:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93136B	  %5037:vgpr_32 = nofpexcept V_MIN_F32_e32 %4927:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93152B	  %5038:vgpr_32 = nofpexcept V_MIN_F32_e32 %4929:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93168B	  %5039:vgpr_32 = nofpexcept V_MIN_F32_e32 %4931:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93184B	  %5040:vgpr_32 = nofpexcept V_MIN_F32_e32 %4933:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93200B	  %5041:vgpr_32 = nofpexcept V_MIN_F32_e32 %4935:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93216B	  %5042:vgpr_32 = nofpexcept V_MIN_F32_e32 %4937:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93232B	  %5043:vgpr_32 = nofpexcept V_MIN_F32_e32 %4939:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93248B	  %5044:vgpr_32 = nofpexcept V_MIN_F32_e32 %4941:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93264B	  %5045:vgpr_32 = nofpexcept V_MIN_F32_e32 %4943:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93280B	  %5046:vgpr_32 = nofpexcept V_MIN_F32_e32 %4945:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93296B	  %5047:vgpr_32 = nofpexcept V_MIN_F32_e32 %4947:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93312B	  %5048:vgpr_32 = nofpexcept V_MIN_F32_e32 %4949:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93328B	  %5049:vgpr_32 = nofpexcept V_MIN_F32_e32 %4951:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93344B	  %5050:vgpr_32 = nofpexcept V_MIN_F32_e32 %4953:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93360B	  %5051:vgpr_32 = nofpexcept V_MIN_F32_e32 %4955:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93376B	  %5052:vgpr_32 = nofpexcept V_MIN_F32_e32 %4957:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93392B	  %5053:vgpr_32 = nofpexcept V_MIN_F32_e32 %4959:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93408B	  %5054:vgpr_32 = nofpexcept V_MIN_F32_e32 %4961:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93424B	  %5055:vgpr_32 = nofpexcept V_MIN_F32_e32 %4963:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93440B	  %5056:vgpr_32 = nofpexcept V_MIN_F32_e32 %4965:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93456B	  %5057:vgpr_32 = nofpexcept V_MIN_F32_e32 %4967:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93472B	  %5058:vgpr_32 = nofpexcept V_MIN_F32_e32 %4969:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93488B	  %5059:vgpr_32 = nofpexcept V_MIN_F32_e32 %4971:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93504B	  %5060:vgpr_32 = nofpexcept V_MIN_F32_e32 %4973:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93520B	  %5061:vgpr_32 = nofpexcept V_MIN_F32_e32 %4975:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93536B	  %5062:vgpr_32 = nofpexcept V_MIN_F32_e32 %4977:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93552B	  %5063:vgpr_32 = nofpexcept V_MIN_F32_e32 %4979:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93568B	  %5064:vgpr_32 = nofpexcept V_MIN_F32_e32 %4981:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93584B	  %5065:vgpr_32 = nofpexcept V_MIN_F32_e32 %4983:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93600B	  %5066:vgpr_32 = nofpexcept V_MIN_F32_e32 %4985:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93616B	  %5067:vgpr_32 = nofpexcept V_MIN_F32_e32 %4987:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93632B	  %5068:vgpr_32 = nofpexcept V_MIN_F32_e32 %4989:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93648B	  %5069:vgpr_32 = nofpexcept V_MIN_F32_e32 %4991:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93664B	  %5070:vgpr_32 = nofpexcept V_MIN_F32_e32 %4993:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93680B	  %5071:vgpr_32 = nofpexcept V_MIN_F32_e32 %4995:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93696B	  %5072:vgpr_32 = nofpexcept V_MIN_F32_e32 %4997:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93712B	  %5073:vgpr_32 = nofpexcept V_MIN_F32_e32 %4999:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93728B	  %5074:vgpr_32 = nofpexcept V_MIN_F32_e32 %5001:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93744B	  %5075:vgpr_32 = nofpexcept V_MIN_F32_e32 %5003:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93760B	  %5076:vgpr_32 = nofpexcept V_MIN_F32_e32 %5005:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93776B	  %5077:vgpr_32 = nofpexcept V_MIN_F32_e32 %5007:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93792B	  %5078:vgpr_32 = nofpexcept V_MIN_F32_e32 %5009:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93808B	  %5079:vgpr_32 = nofpexcept V_MIN_F32_e32 %5011:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93824B	  %5080:vgpr_32 = nofpexcept V_MIN_F32_e32 %5013:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93840B	  %5081:vgpr_32 = nofpexcept V_MIN_F32_e32 %5015:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93856B	  %5082:vgpr_32 = nofpexcept V_MIN_F32_e32 %4890:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93872B	  %5083:vgpr_32 = nofpexcept V_MIN_F32_e32 %4892:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93888B	  %5084:vgpr_32 = nofpexcept V_MIN_F32_e32 %4894:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93904B	  %5085:vgpr_32 = nofpexcept V_MIN_F32_e32 %4896:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93920B	  %5086:vgpr_32 = nofpexcept V_MIN_F32_e32 %4898:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93936B	  %5087:vgpr_32 = nofpexcept V_MIN_F32_e32 %4900:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93952B	  %5088:vgpr_32 = nofpexcept V_MIN_F32_e32 %4902:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93968B	  %5089:vgpr_32 = nofpexcept V_MIN_F32_e32 %4904:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93984B	  %5090:vgpr_32 = nofpexcept V_MIN_F32_e32 %4906:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94000B	  %5091:vgpr_32 = nofpexcept V_MIN_F32_e32 %4908:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94016B	  %5092:vgpr_32 = nofpexcept V_MIN_F32_e32 %4910:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94032B	  %5093:vgpr_32 = nofpexcept V_MIN_F32_e32 %4912:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94048B	  %5094:vgpr_32 = nofpexcept V_MIN_F32_e32 %4914:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94064B	  %5095:vgpr_32 = nofpexcept V_MIN_F32_e32 %4916:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94080B	  %5096:vgpr_32 = nofpexcept V_MIN_F32_e32 %4918:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94096B	  %5097:vgpr_32 = nofpexcept V_MIN_F32_e32 %4920:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94112B	  %5098:vgpr_32 = nofpexcept V_MIN_F32_e32 %4922:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94128B	  %5099:vgpr_32 = nofpexcept V_MIN_F32_e32 %4924:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94144B	  %5100:vgpr_32 = nofpexcept V_MIN_F32_e32 %4926:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94160B	  %5101:vgpr_32 = nofpexcept V_MIN_F32_e32 %4928:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94176B	  %5102:vgpr_32 = nofpexcept V_MIN_F32_e32 %4930:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94192B	  %5103:vgpr_32 = nofpexcept V_MIN_F32_e32 %4932:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94208B	  %5104:vgpr_32 = nofpexcept V_MIN_F32_e32 %4934:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94224B	  %5105:vgpr_32 = nofpexcept V_MIN_F32_e32 %4936:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94240B	  %5106:vgpr_32 = nofpexcept V_MIN_F32_e32 %4938:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94256B	  %5107:vgpr_32 = nofpexcept V_MIN_F32_e32 %4940:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94272B	  %5108:vgpr_32 = nofpexcept V_MIN_F32_e32 %4942:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94288B	  %5109:vgpr_32 = nofpexcept V_MIN_F32_e32 %4944:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94304B	  %5110:vgpr_32 = nofpexcept V_MIN_F32_e32 %4946:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94320B	  %5111:vgpr_32 = nofpexcept V_MIN_F32_e32 %4948:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94336B	  %5112:vgpr_32 = nofpexcept V_MIN_F32_e32 %4950:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94352B	  %5113:vgpr_32 = nofpexcept V_MIN_F32_e32 %4952:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94368B	  %5114:vgpr_32 = nofpexcept V_MIN_F32_e32 %4954:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94384B	  %5115:vgpr_32 = nofpexcept V_MIN_F32_e32 %4956:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94400B	  %5116:vgpr_32 = nofpexcept V_MIN_F32_e32 %4958:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94416B	  %5117:vgpr_32 = nofpexcept V_MIN_F32_e32 %4960:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94432B	  %5118:vgpr_32 = nofpexcept V_MIN_F32_e32 %4962:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94448B	  %5119:vgpr_32 = nofpexcept V_MIN_F32_e32 %4964:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94464B	  %5120:vgpr_32 = nofpexcept V_MIN_F32_e32 %4966:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94480B	  %5121:vgpr_32 = nofpexcept V_MIN_F32_e32 %4968:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94496B	  %5122:vgpr_32 = nofpexcept V_MIN_F32_e32 %4970:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94512B	  %5123:vgpr_32 = nofpexcept V_MIN_F32_e32 %4972:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94528B	  %5124:vgpr_32 = nofpexcept V_MIN_F32_e32 %4974:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94544B	  %5125:vgpr_32 = nofpexcept V_MIN_F32_e32 %4976:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94560B	  %5126:vgpr_32 = nofpexcept V_MIN_F32_e32 %4978:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94576B	  %5127:vgpr_32 = nofpexcept V_MIN_F32_e32 %4980:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94592B	  %5128:vgpr_32 = nofpexcept V_MIN_F32_e32 %4982:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94608B	  %5129:vgpr_32 = nofpexcept V_MIN_F32_e32 %4984:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94624B	  %5130:vgpr_32 = nofpexcept V_MIN_F32_e32 %4986:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94640B	  %5131:vgpr_32 = nofpexcept V_MIN_F32_e32 %4988:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94656B	  %5132:vgpr_32 = nofpexcept V_MIN_F32_e32 %4990:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94672B	  %5133:vgpr_32 = nofpexcept V_MIN_F32_e32 %4992:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94688B	  %5134:vgpr_32 = nofpexcept V_MIN_F32_e32 %4994:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94704B	  %5135:vgpr_32 = nofpexcept V_MIN_F32_e32 %4996:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94720B	  %5136:vgpr_32 = nofpexcept V_MIN_F32_e32 %4998:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94736B	  %5137:vgpr_32 = nofpexcept V_MIN_F32_e32 %5000:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94752B	  %5138:vgpr_32 = nofpexcept V_MIN_F32_e32 %5002:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94768B	  %5139:vgpr_32 = nofpexcept V_MIN_F32_e32 %4865.sub3:vreg_128_align2, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94784B	  %5140:vgpr_32 = nofpexcept V_MIN_F32_e32 %5006:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94800B	  %5141:vgpr_32 = nofpexcept V_MIN_F32_e32 %4867.sub3:vreg_128_align2, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94816B	  %5142:vgpr_32 = nofpexcept V_MIN_F32_e32 %5010:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94832B	  %5143:vgpr_32 = nofpexcept V_MIN_F32_e32 %4877.sub3:vreg_128_align2, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94848B	  %5144:vgpr_32 = nofpexcept V_MIN_F32_e32 %5014:vgpr_32, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94864B	  %5145:vgpr_32 = nofpexcept V_MIN_F32_e32 %4883.sub3:vreg_128_align2, %5017:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94880B	  %5146:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5082:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94896B	  %5147:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5083:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94912B	  %5148:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5084:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94928B	  %5149:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5085:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94944B	  %5150:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5086:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94960B	  %5151:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5087:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94976B	  %5152:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5088:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94992B	  %5153:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5089:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95008B	  %5154:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5090:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95024B	  %5155:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5091:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95040B	  %5156:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5092:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95056B	  %5157:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5093:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95072B	  %5158:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5094:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95088B	  %5159:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5095:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95104B	  %5160:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5096:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95120B	  %5161:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5097:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95136B	  %5162:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5098:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95152B	  %5163:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5099:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95168B	  %5164:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5100:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95184B	  %5165:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5101:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95200B	  %5166:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5102:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95216B	  %5167:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5103:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95232B	  %5168:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5104:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95248B	  %5169:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5105:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95264B	  %5170:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5106:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95280B	  %5171:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5107:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95296B	  %5172:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5108:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95312B	  %5173:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5109:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95328B	  %5174:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5110:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95344B	  %5175:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5111:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95360B	  %5176:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5112:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95376B	  %5177:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5113:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95392B	  %5178:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5114:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95408B	  %5179:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5115:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95424B	  %5180:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5116:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95440B	  %5181:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5117:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95456B	  %5182:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5118:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95472B	  %5183:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5119:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95488B	  %5184:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5120:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95504B	  %5185:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5121:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95520B	  %5186:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5122:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95536B	  %5187:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5123:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95552B	  %5188:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5124:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95568B	  %5189:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5125:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95584B	  %5190:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5126:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95600B	  %5191:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5127:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95616B	  %5192:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5128:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95632B	  %5193:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5129:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95648B	  %5194:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5130:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95664B	  %5195:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5131:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95680B	  %5196:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5132:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95696B	  %5197:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5133:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95712B	  %5198:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5134:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95728B	  %5199:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5135:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95744B	  %5200:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5136:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95760B	  %5201:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5137:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95776B	  %5202:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5138:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95792B	  %5203:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5139:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95808B	  %5204:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5140:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95824B	  %5205:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5141:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95840B	  %5206:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5142:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95856B	  %5207:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5143:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95872B	  %5208:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5144:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95888B	  %5209:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5145:vgpr_32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95904B	  %5212:vgpr_32 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
95920B	  %5211:vgpr_32 = nofpexcept V_MUL_F32_e32 killed $sgpr14, %5212:vgpr_32, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
95936B	  %5213:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5018:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
95952B	  %5214:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5019:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
95968B	  %5215:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5020:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
95984B	  %5216:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5021:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96000B	  %5217:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5022:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96016B	  %5218:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5023:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96032B	  %5219:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5024:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96048B	  %5220:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5025:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96064B	  %5221:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5026:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96080B	  %5222:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5027:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96096B	  %5223:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5028:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96112B	  %5224:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5029:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96128B	  %5225:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5030:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96144B	  %5226:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5031:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96160B	  %5227:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5032:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96176B	  %5228:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5033:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96192B	  %5229:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5034:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96208B	  %5230:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5035:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96224B	  %5231:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5036:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96240B	  %5232:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5037:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96256B	  %5233:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5038:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96272B	  %5234:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5039:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96288B	  %5235:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5040:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96304B	  %5236:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5041:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96320B	  %5237:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5042:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96336B	  %5238:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5043:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96352B	  %5239:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5044:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96368B	  %5240:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5045:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96384B	  %5241:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5046:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96400B	  %5242:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5047:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96416B	  %5243:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5048:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96432B	  %5244:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5049:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96448B	  %5245:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5050:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96464B	  %5246:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5051:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96480B	  %5247:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5052:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96496B	  %5248:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5053:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96512B	  %5249:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5054:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96528B	  %5250:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5055:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96544B	  %5251:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5056:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96560B	  %5252:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5057:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96576B	  %5253:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5058:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96592B	  %5254:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5059:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96608B	  %5255:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5060:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96624B	  %5256:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5061:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96640B	  %5257:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5062:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96656B	  %5258:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5063:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96672B	  %5259:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5064:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96688B	  %5260:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5065:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96704B	  %5261:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5066:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96720B	  %5262:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5067:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96736B	  %5263:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5068:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96752B	  %5264:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5069:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96768B	  %5265:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5070:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96784B	  %5266:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5071:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96800B	  %5267:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5072:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96816B	  %5268:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96832B	  %5269:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5074:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96848B	  %5270:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5075:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96864B	  %5271:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5076:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96880B	  %5272:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5077:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96896B	  %5273:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5078:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96912B	  %5274:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5079:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96928B	  %5275:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5080:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96944B	  %5276:vgpr_32 = nofpexcept V_MUL_F32_e32 %5211:vgpr_32, %5081:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96960B	  %5277:vgpr_32 = nofpexcept V_EXP_F32_e32 %5213:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
96976B	  %5278:vgpr_32 = nofpexcept V_EXP_F32_e32 %5214:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
96992B	  %5279:vgpr_32 = nofpexcept V_EXP_F32_e32 %5215:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97008B	  %5280:vgpr_32 = nofpexcept V_EXP_F32_e32 %5216:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97024B	  %5281:vgpr_32 = nofpexcept V_EXP_F32_e32 %5217:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97040B	  %5282:vgpr_32 = nofpexcept V_EXP_F32_e32 %5218:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97056B	  %5283:vgpr_32 = nofpexcept V_EXP_F32_e32 %5219:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97072B	  %5284:vgpr_32 = nofpexcept V_EXP_F32_e32 %5220:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97088B	  %5285:vgpr_32 = nofpexcept V_EXP_F32_e32 %5221:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97104B	  %5286:vgpr_32 = nofpexcept V_EXP_F32_e32 %5222:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97120B	  %5287:vgpr_32 = nofpexcept V_EXP_F32_e32 %5223:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97136B	  %5288:vgpr_32 = nofpexcept V_EXP_F32_e32 %5224:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97152B	  %5289:vgpr_32 = nofpexcept V_EXP_F32_e32 %5225:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97168B	  %5290:vgpr_32 = nofpexcept V_EXP_F32_e32 %5226:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97184B	  %5291:vgpr_32 = nofpexcept V_EXP_F32_e32 %5227:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97200B	  %5292:vgpr_32 = nofpexcept V_EXP_F32_e32 %5228:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97216B	  %5293:vgpr_32 = nofpexcept V_EXP_F32_e32 %5229:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97232B	  %5294:vgpr_32 = nofpexcept V_EXP_F32_e32 %5230:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97248B	  %5295:vgpr_32 = nofpexcept V_EXP_F32_e32 %5231:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97264B	  %5296:vgpr_32 = nofpexcept V_EXP_F32_e32 %5232:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97280B	  %5297:vgpr_32 = nofpexcept V_EXP_F32_e32 %5233:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97296B	  %5298:vgpr_32 = nofpexcept V_EXP_F32_e32 %5234:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97312B	  %5299:vgpr_32 = nofpexcept V_EXP_F32_e32 %5235:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97328B	  %5300:vgpr_32 = nofpexcept V_EXP_F32_e32 %5236:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97344B	  %5301:vgpr_32 = nofpexcept V_EXP_F32_e32 %5237:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97360B	  %5302:vgpr_32 = nofpexcept V_EXP_F32_e32 %5238:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97376B	  %5303:vgpr_32 = nofpexcept V_EXP_F32_e32 %5239:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97392B	  %5304:vgpr_32 = nofpexcept V_EXP_F32_e32 %5240:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97408B	  %5305:vgpr_32 = nofpexcept V_EXP_F32_e32 %5241:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97424B	  %5306:vgpr_32 = nofpexcept V_EXP_F32_e32 %5242:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97440B	  %5307:vgpr_32 = nofpexcept V_EXP_F32_e32 %5243:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97456B	  %5308:vgpr_32 = nofpexcept V_EXP_F32_e32 %5244:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97472B	  %5309:vgpr_32 = nofpexcept V_EXP_F32_e32 %5245:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97488B	  %5310:vgpr_32 = nofpexcept V_EXP_F32_e32 %5246:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97504B	  %5311:vgpr_32 = nofpexcept V_EXP_F32_e32 %5247:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97520B	  %5312:vgpr_32 = nofpexcept V_EXP_F32_e32 %5248:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97536B	  %5313:vgpr_32 = nofpexcept V_EXP_F32_e32 %5249:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97552B	  %5314:vgpr_32 = nofpexcept V_EXP_F32_e32 %5250:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97568B	  %5315:vgpr_32 = nofpexcept V_EXP_F32_e32 %5251:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97584B	  %5316:vgpr_32 = nofpexcept V_EXP_F32_e32 %5252:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97600B	  %5317:vgpr_32 = nofpexcept V_EXP_F32_e32 %5253:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97616B	  %5318:vgpr_32 = nofpexcept V_EXP_F32_e32 %5254:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97632B	  %5319:vgpr_32 = nofpexcept V_EXP_F32_e32 %5255:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97648B	  %5320:vgpr_32 = nofpexcept V_EXP_F32_e32 %5256:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97664B	  %5321:vgpr_32 = nofpexcept V_EXP_F32_e32 %5257:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97680B	  %5322:vgpr_32 = nofpexcept V_EXP_F32_e32 %5258:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97696B	  %5323:vgpr_32 = nofpexcept V_EXP_F32_e32 %5259:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97712B	  %5324:vgpr_32 = nofpexcept V_EXP_F32_e32 %5260:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97728B	  %5325:vgpr_32 = nofpexcept V_EXP_F32_e32 %5261:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97744B	  %5326:vgpr_32 = nofpexcept V_EXP_F32_e32 %5262:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97760B	  %5327:vgpr_32 = nofpexcept V_EXP_F32_e32 %5263:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97776B	  %5328:vgpr_32 = nofpexcept V_EXP_F32_e32 %5264:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97792B	  %5329:vgpr_32 = nofpexcept V_EXP_F32_e32 %5265:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97808B	  %5330:vgpr_32 = nofpexcept V_EXP_F32_e32 %5266:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97824B	  %5331:vgpr_32 = nofpexcept V_EXP_F32_e32 %5267:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97840B	  %5332:vgpr_32 = nofpexcept V_EXP_F32_e32 %5268:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97856B	  %5333:vgpr_32 = nofpexcept V_EXP_F32_e32 %5269:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97872B	  %5334:vgpr_32 = nofpexcept V_EXP_F32_e32 %5270:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97888B	  %5335:vgpr_32 = nofpexcept V_EXP_F32_e32 %5271:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97904B	  %5336:vgpr_32 = nofpexcept V_EXP_F32_e32 %5272:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97920B	  %5337:vgpr_32 = nofpexcept V_EXP_F32_e32 %5273:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97936B	  %5338:vgpr_32 = nofpexcept V_EXP_F32_e32 %5274:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97952B	  %5339:vgpr_32 = nofpexcept V_EXP_F32_e32 %5275:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97968B	  %5340:vgpr_32 = nofpexcept V_EXP_F32_e32 %5276:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97984B	  %5342:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5277:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98000B	  %5343:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5278:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98016B	  %5344:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5279:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98032B	  %5345:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5280:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98048B	  %5346:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5281:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98064B	  %5347:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5282:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98080B	  %5348:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5283:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98096B	  %5349:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5284:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98112B	  %5350:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5285:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98128B	  %5351:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5286:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98144B	  %5352:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5287:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98160B	  %5353:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5288:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98176B	  %5354:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5289:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98192B	  %5355:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5290:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98208B	  %5356:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5291:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98224B	  %5357:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5292:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98240B	  %5358:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5293:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98256B	  %5359:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5294:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98272B	  %5360:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5295:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98288B	  %5361:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5296:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98304B	  %5362:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5297:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98320B	  %5363:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5298:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98336B	  %5364:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5299:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98352B	  %5365:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5300:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98368B	  %5366:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5301:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98384B	  %5367:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5302:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98400B	  %5368:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5303:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98416B	  %5369:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5304:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98432B	  %5370:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5305:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98448B	  %5371:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5306:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98464B	  %5372:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5307:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98480B	  %5373:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5308:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98496B	  %5374:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5309:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98512B	  %5375:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5310:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98528B	  %5376:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5311:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98544B	  %5377:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5312:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98560B	  %5378:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5313:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98576B	  %5379:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5314:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98592B	  %5380:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5315:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98608B	  %5381:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5316:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98624B	  %5382:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5317:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98640B	  %5383:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5318:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98656B	  %5384:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5319:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98672B	  %5385:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5320:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98688B	  %5386:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5321:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98704B	  %5387:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5322:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98720B	  %5388:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5323:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98736B	  %5389:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5324:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98752B	  %5390:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5325:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98768B	  %5391:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5326:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98784B	  %5392:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5327:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98800B	  %5393:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5328:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98816B	  %5394:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5329:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98832B	  %5395:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5330:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98848B	  %5396:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5331:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98864B	  %5397:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5332:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98880B	  %5398:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5333:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98896B	  %5399:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5334:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98912B	  %5400:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5335:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98928B	  %5401:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5336:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98944B	  %5402:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5337:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99008B	  %5406:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5342:vgpr_32, 0, %5342:vgpr_32, 0, %5018:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99024B	  %5410:vgpr_32 = nofpexcept V_RCP_F32_e32 %5406:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99040B	  %5403:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5338:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99056B	  %5404:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5339:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99072B	  %5405:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5340:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99088B	  %5409:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5406:vgpr_32, 0, %5410:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99120B	  %5410:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5409:vgpr_32, %5410:vgpr_32, %5410:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99136B	  %5411:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5018:vgpr_32, 0, %5342:vgpr_32, 0, %5018:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99152B	  %5415:vgpr_32 = nofpexcept V_MUL_F32_e32 %5411:vgpr_32, %5410:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99168B	  %5414:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5406:vgpr_32, 0, %5415:vgpr_32, 0, %5411:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99200B	  %5415:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5414:vgpr_32, %5410:vgpr_32, %5415:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99216B	  %5416:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5406:vgpr_32, 0, %5415:vgpr_32, 0, %5411:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99280B	  %5419:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5343:vgpr_32, 0, %5343:vgpr_32, 0, %5019:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99296B	  %5423:vgpr_32 = nofpexcept V_RCP_F32_e32 %5419:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99328B	  %5417:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5416:vgpr_32, 0, %5410:vgpr_32, 0, %5415:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99344B	  %6238:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5417:vgpr_32, 0, %5342:vgpr_32, 0, %5018:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99360B	  %5422:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5419:vgpr_32, 0, %5423:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99392B	  %5423:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5422:vgpr_32, %5423:vgpr_32, %5423:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99408B	  %5424:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5019:vgpr_32, 0, %5343:vgpr_32, 0, %5019:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99424B	  %5428:vgpr_32 = nofpexcept V_MUL_F32_e32 %5424:vgpr_32, %5423:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99440B	  %5427:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5419:vgpr_32, 0, %5428:vgpr_32, 0, %5424:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99472B	  %5428:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5427:vgpr_32, %5423:vgpr_32, %5428:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99488B	  %5429:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5419:vgpr_32, 0, %5428:vgpr_32, 0, %5424:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99552B	  %5432:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5344:vgpr_32, 0, %5344:vgpr_32, 0, %5020:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99568B	  %5436:vgpr_32 = nofpexcept V_RCP_F32_e32 %5432:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99600B	  %5430:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5429:vgpr_32, 0, %5423:vgpr_32, 0, %5428:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99616B	  %6239:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5430:vgpr_32, 0, %5343:vgpr_32, 0, %5019:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99632B	  %5435:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5432:vgpr_32, 0, %5436:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99664B	  %5436:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5435:vgpr_32, %5436:vgpr_32, %5436:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99680B	  %5437:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5020:vgpr_32, 0, %5344:vgpr_32, 0, %5020:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99696B	  %5441:vgpr_32 = nofpexcept V_MUL_F32_e32 %5437:vgpr_32, %5436:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99712B	  %5440:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5432:vgpr_32, 0, %5441:vgpr_32, 0, %5437:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99744B	  %5441:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5440:vgpr_32, %5436:vgpr_32, %5441:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99760B	  %5442:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5432:vgpr_32, 0, %5441:vgpr_32, 0, %5437:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99824B	  %5445:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5345:vgpr_32, 0, %5345:vgpr_32, 0, %5021:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99840B	  %5449:vgpr_32 = nofpexcept V_RCP_F32_e32 %5445:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99872B	  %5443:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5442:vgpr_32, 0, %5436:vgpr_32, 0, %5441:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99888B	  %6240:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5443:vgpr_32, 0, %5344:vgpr_32, 0, %5020:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99904B	  %5448:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5445:vgpr_32, 0, %5449:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99936B	  %5449:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5448:vgpr_32, %5449:vgpr_32, %5449:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99952B	  %5450:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5021:vgpr_32, 0, %5345:vgpr_32, 0, %5021:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99968B	  %5454:vgpr_32 = nofpexcept V_MUL_F32_e32 %5450:vgpr_32, %5449:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99984B	  %5453:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5445:vgpr_32, 0, %5454:vgpr_32, 0, %5450:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100016B	  %5454:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5453:vgpr_32, %5449:vgpr_32, %5454:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100032B	  %5455:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5445:vgpr_32, 0, %5454:vgpr_32, 0, %5450:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100096B	  %5458:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5346:vgpr_32, 0, %5346:vgpr_32, 0, %5022:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100112B	  %5462:vgpr_32 = nofpexcept V_RCP_F32_e32 %5458:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100144B	  %5456:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5455:vgpr_32, 0, %5449:vgpr_32, 0, %5454:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100160B	  %6241:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5456:vgpr_32, 0, %5345:vgpr_32, 0, %5021:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100176B	  %5461:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5458:vgpr_32, 0, %5462:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100208B	  %5462:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5461:vgpr_32, %5462:vgpr_32, %5462:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100224B	  %5463:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5022:vgpr_32, 0, %5346:vgpr_32, 0, %5022:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100240B	  %5467:vgpr_32 = nofpexcept V_MUL_F32_e32 %5463:vgpr_32, %5462:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100256B	  %5466:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5458:vgpr_32, 0, %5467:vgpr_32, 0, %5463:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100288B	  %5467:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5466:vgpr_32, %5462:vgpr_32, %5467:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100304B	  %5468:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5458:vgpr_32, 0, %5467:vgpr_32, 0, %5463:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100368B	  %5471:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5347:vgpr_32, 0, %5347:vgpr_32, 0, %5023:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100384B	  %5475:vgpr_32 = nofpexcept V_RCP_F32_e32 %5471:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100416B	  %5469:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5468:vgpr_32, 0, %5462:vgpr_32, 0, %5467:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100432B	  %6242:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5469:vgpr_32, 0, %5346:vgpr_32, 0, %5022:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100448B	  %5474:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5471:vgpr_32, 0, %5475:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100480B	  %5475:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5474:vgpr_32, %5475:vgpr_32, %5475:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100496B	  %5476:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5023:vgpr_32, 0, %5347:vgpr_32, 0, %5023:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100512B	  %5480:vgpr_32 = nofpexcept V_MUL_F32_e32 %5476:vgpr_32, %5475:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100528B	  %5479:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5471:vgpr_32, 0, %5480:vgpr_32, 0, %5476:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100560B	  %5480:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5479:vgpr_32, %5475:vgpr_32, %5480:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100576B	  %5481:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5471:vgpr_32, 0, %5480:vgpr_32, 0, %5476:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100640B	  %5484:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5348:vgpr_32, 0, %5348:vgpr_32, 0, %5024:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100656B	  %5488:vgpr_32 = nofpexcept V_RCP_F32_e32 %5484:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100688B	  %5482:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5481:vgpr_32, 0, %5475:vgpr_32, 0, %5480:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100704B	  %6243:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5482:vgpr_32, 0, %5347:vgpr_32, 0, %5023:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100720B	  %5487:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5484:vgpr_32, 0, %5488:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100752B	  %5488:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5487:vgpr_32, %5488:vgpr_32, %5488:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100768B	  %5489:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5024:vgpr_32, 0, %5348:vgpr_32, 0, %5024:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100784B	  %5493:vgpr_32 = nofpexcept V_MUL_F32_e32 %5489:vgpr_32, %5488:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100800B	  %5492:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5484:vgpr_32, 0, %5493:vgpr_32, 0, %5489:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100832B	  %5493:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5492:vgpr_32, %5488:vgpr_32, %5493:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100848B	  %5494:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5484:vgpr_32, 0, %5493:vgpr_32, 0, %5489:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100912B	  %5497:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5349:vgpr_32, 0, %5349:vgpr_32, 0, %5025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100928B	  %5501:vgpr_32 = nofpexcept V_RCP_F32_e32 %5497:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100960B	  %5495:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5494:vgpr_32, 0, %5488:vgpr_32, 0, %5493:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100976B	  %6244:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5495:vgpr_32, 0, %5348:vgpr_32, 0, %5024:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100992B	  %5500:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5497:vgpr_32, 0, %5501:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101024B	  %5501:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5500:vgpr_32, %5501:vgpr_32, %5501:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101040B	  %5502:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5025:vgpr_32, 0, %5349:vgpr_32, 0, %5025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101056B	  %5506:vgpr_32 = nofpexcept V_MUL_F32_e32 %5502:vgpr_32, %5501:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101072B	  %5505:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5497:vgpr_32, 0, %5506:vgpr_32, 0, %5502:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101104B	  %5506:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5505:vgpr_32, %5501:vgpr_32, %5506:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101120B	  %5507:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5497:vgpr_32, 0, %5506:vgpr_32, 0, %5502:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101184B	  %5510:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5350:vgpr_32, 0, %5350:vgpr_32, 0, %5026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101200B	  %5514:vgpr_32 = nofpexcept V_RCP_F32_e32 %5510:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101232B	  %5508:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5507:vgpr_32, 0, %5501:vgpr_32, 0, %5506:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101248B	  %6245:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5508:vgpr_32, 0, %5349:vgpr_32, 0, %5025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101264B	  %5513:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5510:vgpr_32, 0, %5514:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101296B	  %5514:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5513:vgpr_32, %5514:vgpr_32, %5514:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101312B	  %5515:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5026:vgpr_32, 0, %5350:vgpr_32, 0, %5026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101328B	  %5519:vgpr_32 = nofpexcept V_MUL_F32_e32 %5515:vgpr_32, %5514:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101344B	  %5518:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5510:vgpr_32, 0, %5519:vgpr_32, 0, %5515:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101376B	  %5519:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5518:vgpr_32, %5514:vgpr_32, %5519:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101392B	  %5520:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5510:vgpr_32, 0, %5519:vgpr_32, 0, %5515:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101456B	  %5523:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5351:vgpr_32, 0, %5351:vgpr_32, 0, %5027:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101472B	  %5527:vgpr_32 = nofpexcept V_RCP_F32_e32 %5523:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101504B	  %5521:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5520:vgpr_32, 0, %5514:vgpr_32, 0, %5519:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101520B	  %6246:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5521:vgpr_32, 0, %5350:vgpr_32, 0, %5026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101536B	  %5526:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5523:vgpr_32, 0, %5527:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101568B	  %5527:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5526:vgpr_32, %5527:vgpr_32, %5527:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101584B	  %5528:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5027:vgpr_32, 0, %5351:vgpr_32, 0, %5027:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101600B	  %5532:vgpr_32 = nofpexcept V_MUL_F32_e32 %5528:vgpr_32, %5527:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101616B	  %5531:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5523:vgpr_32, 0, %5532:vgpr_32, 0, %5528:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101648B	  %5532:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5531:vgpr_32, %5527:vgpr_32, %5532:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101664B	  %5533:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5523:vgpr_32, 0, %5532:vgpr_32, 0, %5528:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101728B	  %5536:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5352:vgpr_32, 0, %5352:vgpr_32, 0, %5028:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101744B	  %5540:vgpr_32 = nofpexcept V_RCP_F32_e32 %5536:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101776B	  %5534:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5533:vgpr_32, 0, %5527:vgpr_32, 0, %5532:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101792B	  %6247:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5534:vgpr_32, 0, %5351:vgpr_32, 0, %5027:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101808B	  %5539:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5536:vgpr_32, 0, %5540:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101840B	  %5540:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5539:vgpr_32, %5540:vgpr_32, %5540:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101856B	  %5541:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5028:vgpr_32, 0, %5352:vgpr_32, 0, %5028:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101872B	  %5545:vgpr_32 = nofpexcept V_MUL_F32_e32 %5541:vgpr_32, %5540:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101888B	  %5544:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5536:vgpr_32, 0, %5545:vgpr_32, 0, %5541:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101920B	  %5545:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5544:vgpr_32, %5540:vgpr_32, %5545:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101936B	  %5546:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5536:vgpr_32, 0, %5545:vgpr_32, 0, %5541:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102000B	  %5549:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5353:vgpr_32, 0, %5353:vgpr_32, 0, %5029:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102016B	  %5553:vgpr_32 = nofpexcept V_RCP_F32_e32 %5549:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102048B	  %5547:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5546:vgpr_32, 0, %5540:vgpr_32, 0, %5545:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102064B	  %6248:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5547:vgpr_32, 0, %5352:vgpr_32, 0, %5028:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102080B	  %5552:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5549:vgpr_32, 0, %5553:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102112B	  %5553:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5552:vgpr_32, %5553:vgpr_32, %5553:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102128B	  %5554:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5029:vgpr_32, 0, %5353:vgpr_32, 0, %5029:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102144B	  %5558:vgpr_32 = nofpexcept V_MUL_F32_e32 %5554:vgpr_32, %5553:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102160B	  %5557:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5549:vgpr_32, 0, %5558:vgpr_32, 0, %5554:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102192B	  %5558:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5557:vgpr_32, %5553:vgpr_32, %5558:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102208B	  %5559:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5549:vgpr_32, 0, %5558:vgpr_32, 0, %5554:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102272B	  %5562:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5354:vgpr_32, 0, %5354:vgpr_32, 0, %5030:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102288B	  %5566:vgpr_32 = nofpexcept V_RCP_F32_e32 %5562:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102320B	  %5560:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5559:vgpr_32, 0, %5553:vgpr_32, 0, %5558:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102336B	  %6249:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5560:vgpr_32, 0, %5353:vgpr_32, 0, %5029:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102352B	  %5565:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5562:vgpr_32, 0, %5566:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102384B	  %5566:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5565:vgpr_32, %5566:vgpr_32, %5566:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102400B	  %5567:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5030:vgpr_32, 0, %5354:vgpr_32, 0, %5030:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102416B	  %5571:vgpr_32 = nofpexcept V_MUL_F32_e32 %5567:vgpr_32, %5566:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102432B	  %5570:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5562:vgpr_32, 0, %5571:vgpr_32, 0, %5567:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102464B	  %5571:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5570:vgpr_32, %5566:vgpr_32, %5571:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102480B	  %5572:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5562:vgpr_32, 0, %5571:vgpr_32, 0, %5567:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102544B	  %5575:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5355:vgpr_32, 0, %5355:vgpr_32, 0, %5031:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102560B	  %5579:vgpr_32 = nofpexcept V_RCP_F32_e32 %5575:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102592B	  %5573:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5572:vgpr_32, 0, %5566:vgpr_32, 0, %5571:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102608B	  %6250:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5573:vgpr_32, 0, %5354:vgpr_32, 0, %5030:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102624B	  %5578:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5575:vgpr_32, 0, %5579:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102656B	  %5579:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5578:vgpr_32, %5579:vgpr_32, %5579:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102672B	  %5580:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5031:vgpr_32, 0, %5355:vgpr_32, 0, %5031:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102688B	  %5584:vgpr_32 = nofpexcept V_MUL_F32_e32 %5580:vgpr_32, %5579:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102704B	  %5583:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5575:vgpr_32, 0, %5584:vgpr_32, 0, %5580:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102736B	  %5584:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5583:vgpr_32, %5579:vgpr_32, %5584:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102752B	  %5585:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5575:vgpr_32, 0, %5584:vgpr_32, 0, %5580:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102816B	  %5588:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5356:vgpr_32, 0, %5356:vgpr_32, 0, %5032:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102832B	  %5592:vgpr_32 = nofpexcept V_RCP_F32_e32 %5588:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102864B	  %5586:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5585:vgpr_32, 0, %5579:vgpr_32, 0, %5584:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102880B	  %6251:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5586:vgpr_32, 0, %5355:vgpr_32, 0, %5031:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102896B	  %5591:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5588:vgpr_32, 0, %5592:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102928B	  %5592:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5591:vgpr_32, %5592:vgpr_32, %5592:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102944B	  %5593:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5032:vgpr_32, 0, %5356:vgpr_32, 0, %5032:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102960B	  %5597:vgpr_32 = nofpexcept V_MUL_F32_e32 %5593:vgpr_32, %5592:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102976B	  %5596:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5588:vgpr_32, 0, %5597:vgpr_32, 0, %5593:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103008B	  %5597:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5596:vgpr_32, %5592:vgpr_32, %5597:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103024B	  %5598:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5588:vgpr_32, 0, %5597:vgpr_32, 0, %5593:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103088B	  %5601:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5357:vgpr_32, 0, %5357:vgpr_32, 0, %5033:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103104B	  %5605:vgpr_32 = nofpexcept V_RCP_F32_e32 %5601:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103136B	  %5599:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5598:vgpr_32, 0, %5592:vgpr_32, 0, %5597:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103152B	  %6252:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5599:vgpr_32, 0, %5356:vgpr_32, 0, %5032:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103168B	  %5604:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5601:vgpr_32, 0, %5605:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103200B	  %5605:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5604:vgpr_32, %5605:vgpr_32, %5605:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103216B	  %5606:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5033:vgpr_32, 0, %5357:vgpr_32, 0, %5033:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103232B	  %5610:vgpr_32 = nofpexcept V_MUL_F32_e32 %5606:vgpr_32, %5605:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103248B	  %5609:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5601:vgpr_32, 0, %5610:vgpr_32, 0, %5606:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103280B	  %5610:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5609:vgpr_32, %5605:vgpr_32, %5610:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103296B	  %5611:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5601:vgpr_32, 0, %5610:vgpr_32, 0, %5606:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103360B	  %5614:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5358:vgpr_32, 0, %5358:vgpr_32, 0, %5034:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103376B	  %5618:vgpr_32 = nofpexcept V_RCP_F32_e32 %5614:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103408B	  %5612:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5611:vgpr_32, 0, %5605:vgpr_32, 0, %5610:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103424B	  %6253:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5612:vgpr_32, 0, %5357:vgpr_32, 0, %5033:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103440B	  %5617:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5614:vgpr_32, 0, %5618:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103472B	  %5618:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5617:vgpr_32, %5618:vgpr_32, %5618:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103488B	  %5619:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5034:vgpr_32, 0, %5358:vgpr_32, 0, %5034:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103504B	  %5623:vgpr_32 = nofpexcept V_MUL_F32_e32 %5619:vgpr_32, %5618:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103520B	  %5622:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5614:vgpr_32, 0, %5623:vgpr_32, 0, %5619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103552B	  %5623:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5622:vgpr_32, %5618:vgpr_32, %5623:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103568B	  %5624:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5614:vgpr_32, 0, %5623:vgpr_32, 0, %5619:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103632B	  %5627:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5359:vgpr_32, 0, %5359:vgpr_32, 0, %5035:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103648B	  %5631:vgpr_32 = nofpexcept V_RCP_F32_e32 %5627:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103680B	  %5625:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5624:vgpr_32, 0, %5618:vgpr_32, 0, %5623:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103696B	  %6254:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5625:vgpr_32, 0, %5358:vgpr_32, 0, %5034:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103712B	  %5630:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5627:vgpr_32, 0, %5631:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103744B	  %5631:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5630:vgpr_32, %5631:vgpr_32, %5631:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103760B	  %5632:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5035:vgpr_32, 0, %5359:vgpr_32, 0, %5035:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103776B	  %5636:vgpr_32 = nofpexcept V_MUL_F32_e32 %5632:vgpr_32, %5631:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103792B	  %5635:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5627:vgpr_32, 0, %5636:vgpr_32, 0, %5632:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103824B	  %5636:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5635:vgpr_32, %5631:vgpr_32, %5636:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103840B	  %5637:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5627:vgpr_32, 0, %5636:vgpr_32, 0, %5632:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103904B	  %5640:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5360:vgpr_32, 0, %5360:vgpr_32, 0, %5036:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103920B	  %5644:vgpr_32 = nofpexcept V_RCP_F32_e32 %5640:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103952B	  %5638:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5637:vgpr_32, 0, %5631:vgpr_32, 0, %5636:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103968B	  %6255:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5638:vgpr_32, 0, %5359:vgpr_32, 0, %5035:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103984B	  %5643:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5640:vgpr_32, 0, %5644:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104016B	  %5644:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5643:vgpr_32, %5644:vgpr_32, %5644:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104032B	  %5645:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5036:vgpr_32, 0, %5360:vgpr_32, 0, %5036:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104048B	  %5649:vgpr_32 = nofpexcept V_MUL_F32_e32 %5645:vgpr_32, %5644:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104064B	  %5648:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5640:vgpr_32, 0, %5649:vgpr_32, 0, %5645:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104096B	  %5649:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5648:vgpr_32, %5644:vgpr_32, %5649:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104112B	  %5650:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5640:vgpr_32, 0, %5649:vgpr_32, 0, %5645:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104176B	  %5653:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5361:vgpr_32, 0, %5361:vgpr_32, 0, %5037:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104192B	  %5657:vgpr_32 = nofpexcept V_RCP_F32_e32 %5653:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104224B	  %5651:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5650:vgpr_32, 0, %5644:vgpr_32, 0, %5649:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104240B	  %6256:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5651:vgpr_32, 0, %5360:vgpr_32, 0, %5036:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104256B	  %5656:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5653:vgpr_32, 0, %5657:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104288B	  %5657:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5656:vgpr_32, %5657:vgpr_32, %5657:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104304B	  %5658:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5037:vgpr_32, 0, %5361:vgpr_32, 0, %5037:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104320B	  %5662:vgpr_32 = nofpexcept V_MUL_F32_e32 %5658:vgpr_32, %5657:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104336B	  %5661:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5653:vgpr_32, 0, %5662:vgpr_32, 0, %5658:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104368B	  %5662:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5661:vgpr_32, %5657:vgpr_32, %5662:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104384B	  %5663:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5653:vgpr_32, 0, %5662:vgpr_32, 0, %5658:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104448B	  %5666:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5362:vgpr_32, 0, %5362:vgpr_32, 0, %5038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104464B	  %5670:vgpr_32 = nofpexcept V_RCP_F32_e32 %5666:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104496B	  %5664:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5663:vgpr_32, 0, %5657:vgpr_32, 0, %5662:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104512B	  %6257:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5664:vgpr_32, 0, %5361:vgpr_32, 0, %5037:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104528B	  %5669:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5666:vgpr_32, 0, %5670:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104560B	  %5670:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5669:vgpr_32, %5670:vgpr_32, %5670:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104576B	  %5671:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5038:vgpr_32, 0, %5362:vgpr_32, 0, %5038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104592B	  %5675:vgpr_32 = nofpexcept V_MUL_F32_e32 %5671:vgpr_32, %5670:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104608B	  %5674:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5666:vgpr_32, 0, %5675:vgpr_32, 0, %5671:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104640B	  %5675:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5674:vgpr_32, %5670:vgpr_32, %5675:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104656B	  %5676:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5666:vgpr_32, 0, %5675:vgpr_32, 0, %5671:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104720B	  %5679:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5363:vgpr_32, 0, %5363:vgpr_32, 0, %5039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104736B	  %5683:vgpr_32 = nofpexcept V_RCP_F32_e32 %5679:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104768B	  %5677:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5676:vgpr_32, 0, %5670:vgpr_32, 0, %5675:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104784B	  %6258:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5677:vgpr_32, 0, %5362:vgpr_32, 0, %5038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104800B	  %5682:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5679:vgpr_32, 0, %5683:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104832B	  %5683:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5682:vgpr_32, %5683:vgpr_32, %5683:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104848B	  %5684:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5039:vgpr_32, 0, %5363:vgpr_32, 0, %5039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104864B	  %5688:vgpr_32 = nofpexcept V_MUL_F32_e32 %5684:vgpr_32, %5683:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104880B	  %5687:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5679:vgpr_32, 0, %5688:vgpr_32, 0, %5684:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104912B	  %5688:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5687:vgpr_32, %5683:vgpr_32, %5688:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104928B	  %5689:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5679:vgpr_32, 0, %5688:vgpr_32, 0, %5684:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104992B	  %5692:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5364:vgpr_32, 0, %5364:vgpr_32, 0, %5040:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105008B	  %5696:vgpr_32 = nofpexcept V_RCP_F32_e32 %5692:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105040B	  %5690:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5689:vgpr_32, 0, %5683:vgpr_32, 0, %5688:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105056B	  %6259:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5690:vgpr_32, 0, %5363:vgpr_32, 0, %5039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105072B	  %5695:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5692:vgpr_32, 0, %5696:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105104B	  %5696:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5695:vgpr_32, %5696:vgpr_32, %5696:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105120B	  %5697:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5040:vgpr_32, 0, %5364:vgpr_32, 0, %5040:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105136B	  %5701:vgpr_32 = nofpexcept V_MUL_F32_e32 %5697:vgpr_32, %5696:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105152B	  %5700:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5692:vgpr_32, 0, %5701:vgpr_32, 0, %5697:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105184B	  %5701:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5700:vgpr_32, %5696:vgpr_32, %5701:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105200B	  %5702:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5692:vgpr_32, 0, %5701:vgpr_32, 0, %5697:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105264B	  %5705:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5365:vgpr_32, 0, %5365:vgpr_32, 0, %5041:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105280B	  %5709:vgpr_32 = nofpexcept V_RCP_F32_e32 %5705:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105312B	  %5703:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5702:vgpr_32, 0, %5696:vgpr_32, 0, %5701:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105328B	  %6260:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5703:vgpr_32, 0, %5364:vgpr_32, 0, %5040:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105344B	  %5708:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5705:vgpr_32, 0, %5709:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105376B	  %5709:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5708:vgpr_32, %5709:vgpr_32, %5709:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105392B	  %5710:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5041:vgpr_32, 0, %5365:vgpr_32, 0, %5041:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105408B	  %5714:vgpr_32 = nofpexcept V_MUL_F32_e32 %5710:vgpr_32, %5709:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105424B	  %5713:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5705:vgpr_32, 0, %5714:vgpr_32, 0, %5710:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105456B	  %5714:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5713:vgpr_32, %5709:vgpr_32, %5714:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105472B	  %5715:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5705:vgpr_32, 0, %5714:vgpr_32, 0, %5710:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105536B	  %5718:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5366:vgpr_32, 0, %5366:vgpr_32, 0, %5042:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105552B	  %5722:vgpr_32 = nofpexcept V_RCP_F32_e32 %5718:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105584B	  %5716:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5715:vgpr_32, 0, %5709:vgpr_32, 0, %5714:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105600B	  %6261:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5716:vgpr_32, 0, %5365:vgpr_32, 0, %5041:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105616B	  %5721:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5718:vgpr_32, 0, %5722:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105648B	  %5722:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5721:vgpr_32, %5722:vgpr_32, %5722:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105664B	  %5723:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5042:vgpr_32, 0, %5366:vgpr_32, 0, %5042:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105680B	  %5727:vgpr_32 = nofpexcept V_MUL_F32_e32 %5723:vgpr_32, %5722:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105696B	  %5726:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5718:vgpr_32, 0, %5727:vgpr_32, 0, %5723:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105728B	  %5727:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5726:vgpr_32, %5722:vgpr_32, %5727:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105744B	  %5728:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5718:vgpr_32, 0, %5727:vgpr_32, 0, %5723:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105808B	  %5731:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5367:vgpr_32, 0, %5367:vgpr_32, 0, %5043:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105824B	  %5735:vgpr_32 = nofpexcept V_RCP_F32_e32 %5731:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105856B	  %5729:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5728:vgpr_32, 0, %5722:vgpr_32, 0, %5727:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105872B	  %6262:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5729:vgpr_32, 0, %5366:vgpr_32, 0, %5042:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105888B	  %5734:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5731:vgpr_32, 0, %5735:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105920B	  %5735:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5734:vgpr_32, %5735:vgpr_32, %5735:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105936B	  %5736:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5043:vgpr_32, 0, %5367:vgpr_32, 0, %5043:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105952B	  %5740:vgpr_32 = nofpexcept V_MUL_F32_e32 %5736:vgpr_32, %5735:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105968B	  %5739:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5731:vgpr_32, 0, %5740:vgpr_32, 0, %5736:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106000B	  %5740:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5739:vgpr_32, %5735:vgpr_32, %5740:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106016B	  %5741:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5731:vgpr_32, 0, %5740:vgpr_32, 0, %5736:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106080B	  %5744:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5368:vgpr_32, 0, %5368:vgpr_32, 0, %5044:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106096B	  %5748:vgpr_32 = nofpexcept V_RCP_F32_e32 %5744:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106128B	  %5742:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5741:vgpr_32, 0, %5735:vgpr_32, 0, %5740:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106144B	  %6263:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5742:vgpr_32, 0, %5367:vgpr_32, 0, %5043:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106160B	  %5747:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5744:vgpr_32, 0, %5748:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106192B	  %5748:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5747:vgpr_32, %5748:vgpr_32, %5748:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106208B	  %5749:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5044:vgpr_32, 0, %5368:vgpr_32, 0, %5044:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106224B	  %5753:vgpr_32 = nofpexcept V_MUL_F32_e32 %5749:vgpr_32, %5748:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106240B	  %5752:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5744:vgpr_32, 0, %5753:vgpr_32, 0, %5749:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106272B	  %5753:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5752:vgpr_32, %5748:vgpr_32, %5753:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106288B	  %5754:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5744:vgpr_32, 0, %5753:vgpr_32, 0, %5749:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106352B	  %5757:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5369:vgpr_32, 0, %5369:vgpr_32, 0, %5045:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106368B	  %5761:vgpr_32 = nofpexcept V_RCP_F32_e32 %5757:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106400B	  %5755:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5754:vgpr_32, 0, %5748:vgpr_32, 0, %5753:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106416B	  %6264:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5755:vgpr_32, 0, %5368:vgpr_32, 0, %5044:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106432B	  %5760:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5757:vgpr_32, 0, %5761:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106464B	  %5761:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5760:vgpr_32, %5761:vgpr_32, %5761:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106480B	  %5762:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5045:vgpr_32, 0, %5369:vgpr_32, 0, %5045:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106496B	  %5766:vgpr_32 = nofpexcept V_MUL_F32_e32 %5762:vgpr_32, %5761:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106512B	  %5765:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5757:vgpr_32, 0, %5766:vgpr_32, 0, %5762:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106544B	  %5766:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5765:vgpr_32, %5761:vgpr_32, %5766:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106560B	  %5767:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5757:vgpr_32, 0, %5766:vgpr_32, 0, %5762:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106624B	  %5770:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5370:vgpr_32, 0, %5370:vgpr_32, 0, %5046:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106640B	  %5774:vgpr_32 = nofpexcept V_RCP_F32_e32 %5770:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106672B	  %5768:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5767:vgpr_32, 0, %5761:vgpr_32, 0, %5766:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106688B	  %6265:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5768:vgpr_32, 0, %5369:vgpr_32, 0, %5045:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106704B	  %5773:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5770:vgpr_32, 0, %5774:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106736B	  %5774:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5773:vgpr_32, %5774:vgpr_32, %5774:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106752B	  %5775:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5046:vgpr_32, 0, %5370:vgpr_32, 0, %5046:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106768B	  %5779:vgpr_32 = nofpexcept V_MUL_F32_e32 %5775:vgpr_32, %5774:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106784B	  %5778:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5770:vgpr_32, 0, %5779:vgpr_32, 0, %5775:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106816B	  %5779:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5778:vgpr_32, %5774:vgpr_32, %5779:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106832B	  %5780:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5770:vgpr_32, 0, %5779:vgpr_32, 0, %5775:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106896B	  %5783:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5371:vgpr_32, 0, %5371:vgpr_32, 0, %5047:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106912B	  %5787:vgpr_32 = nofpexcept V_RCP_F32_e32 %5783:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106944B	  %5781:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5780:vgpr_32, 0, %5774:vgpr_32, 0, %5779:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106960B	  %6266:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5781:vgpr_32, 0, %5370:vgpr_32, 0, %5046:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106976B	  %5786:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5783:vgpr_32, 0, %5787:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107008B	  %5787:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5786:vgpr_32, %5787:vgpr_32, %5787:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107024B	  %5788:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5047:vgpr_32, 0, %5371:vgpr_32, 0, %5047:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107040B	  %5792:vgpr_32 = nofpexcept V_MUL_F32_e32 %5788:vgpr_32, %5787:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107056B	  %5791:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5783:vgpr_32, 0, %5792:vgpr_32, 0, %5788:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107088B	  %5792:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5791:vgpr_32, %5787:vgpr_32, %5792:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107104B	  %5793:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5783:vgpr_32, 0, %5792:vgpr_32, 0, %5788:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107168B	  %5796:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5372:vgpr_32, 0, %5372:vgpr_32, 0, %5048:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107184B	  %5800:vgpr_32 = nofpexcept V_RCP_F32_e32 %5796:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107216B	  %5794:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5793:vgpr_32, 0, %5787:vgpr_32, 0, %5792:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107232B	  %6267:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5794:vgpr_32, 0, %5371:vgpr_32, 0, %5047:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107248B	  %5799:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5796:vgpr_32, 0, %5800:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107280B	  %5800:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5799:vgpr_32, %5800:vgpr_32, %5800:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107296B	  %5801:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5048:vgpr_32, 0, %5372:vgpr_32, 0, %5048:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107312B	  %5805:vgpr_32 = nofpexcept V_MUL_F32_e32 %5801:vgpr_32, %5800:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107328B	  %5804:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5796:vgpr_32, 0, %5805:vgpr_32, 0, %5801:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107360B	  %5805:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5804:vgpr_32, %5800:vgpr_32, %5805:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107376B	  %5806:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5796:vgpr_32, 0, %5805:vgpr_32, 0, %5801:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107440B	  %5809:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5373:vgpr_32, 0, %5373:vgpr_32, 0, %5049:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107456B	  %5813:vgpr_32 = nofpexcept V_RCP_F32_e32 %5809:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107488B	  %5807:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5806:vgpr_32, 0, %5800:vgpr_32, 0, %5805:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107504B	  %6268:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5807:vgpr_32, 0, %5372:vgpr_32, 0, %5048:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107520B	  %5812:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5809:vgpr_32, 0, %5813:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107552B	  %5813:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5812:vgpr_32, %5813:vgpr_32, %5813:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107568B	  %5814:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5049:vgpr_32, 0, %5373:vgpr_32, 0, %5049:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107584B	  %5818:vgpr_32 = nofpexcept V_MUL_F32_e32 %5814:vgpr_32, %5813:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107600B	  %5817:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5809:vgpr_32, 0, %5818:vgpr_32, 0, %5814:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107632B	  %5818:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5817:vgpr_32, %5813:vgpr_32, %5818:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107648B	  %5819:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5809:vgpr_32, 0, %5818:vgpr_32, 0, %5814:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107712B	  %5822:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5374:vgpr_32, 0, %5374:vgpr_32, 0, %5050:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107728B	  %5826:vgpr_32 = nofpexcept V_RCP_F32_e32 %5822:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107760B	  %5820:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5819:vgpr_32, 0, %5813:vgpr_32, 0, %5818:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107776B	  %6269:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5820:vgpr_32, 0, %5373:vgpr_32, 0, %5049:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107792B	  %5825:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5822:vgpr_32, 0, %5826:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107824B	  %5826:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5825:vgpr_32, %5826:vgpr_32, %5826:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107840B	  %5827:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5050:vgpr_32, 0, %5374:vgpr_32, 0, %5050:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107856B	  %5831:vgpr_32 = nofpexcept V_MUL_F32_e32 %5827:vgpr_32, %5826:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107872B	  %5830:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5822:vgpr_32, 0, %5831:vgpr_32, 0, %5827:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107904B	  %5831:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5830:vgpr_32, %5826:vgpr_32, %5831:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107920B	  %5832:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5822:vgpr_32, 0, %5831:vgpr_32, 0, %5827:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107984B	  %5835:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5375:vgpr_32, 0, %5375:vgpr_32, 0, %5051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108000B	  %5839:vgpr_32 = nofpexcept V_RCP_F32_e32 %5835:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108032B	  %5833:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5832:vgpr_32, 0, %5826:vgpr_32, 0, %5831:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108048B	  %6270:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5833:vgpr_32, 0, %5374:vgpr_32, 0, %5050:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108064B	  %5838:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5835:vgpr_32, 0, %5839:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108096B	  %5839:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5838:vgpr_32, %5839:vgpr_32, %5839:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108112B	  %5840:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5051:vgpr_32, 0, %5375:vgpr_32, 0, %5051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108128B	  %5844:vgpr_32 = nofpexcept V_MUL_F32_e32 %5840:vgpr_32, %5839:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108144B	  %5843:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5835:vgpr_32, 0, %5844:vgpr_32, 0, %5840:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108176B	  %5844:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5843:vgpr_32, %5839:vgpr_32, %5844:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108192B	  %5845:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5835:vgpr_32, 0, %5844:vgpr_32, 0, %5840:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108256B	  %5848:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5376:vgpr_32, 0, %5376:vgpr_32, 0, %5052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108272B	  %5852:vgpr_32 = nofpexcept V_RCP_F32_e32 %5848:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108304B	  %5846:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5845:vgpr_32, 0, %5839:vgpr_32, 0, %5844:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108320B	  %6271:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5846:vgpr_32, 0, %5375:vgpr_32, 0, %5051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108336B	  %5851:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5848:vgpr_32, 0, %5852:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108368B	  %5852:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5851:vgpr_32, %5852:vgpr_32, %5852:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108384B	  %5853:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5052:vgpr_32, 0, %5376:vgpr_32, 0, %5052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108400B	  %5857:vgpr_32 = nofpexcept V_MUL_F32_e32 %5853:vgpr_32, %5852:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108416B	  %5856:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5848:vgpr_32, 0, %5857:vgpr_32, 0, %5853:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108448B	  %5857:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5856:vgpr_32, %5852:vgpr_32, %5857:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108464B	  %5858:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5848:vgpr_32, 0, %5857:vgpr_32, 0, %5853:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108528B	  %5861:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5377:vgpr_32, 0, %5377:vgpr_32, 0, %5053:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108544B	  %5865:vgpr_32 = nofpexcept V_RCP_F32_e32 %5861:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108576B	  %5859:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5858:vgpr_32, 0, %5852:vgpr_32, 0, %5857:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108592B	  %6272:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5859:vgpr_32, 0, %5376:vgpr_32, 0, %5052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108608B	  %5864:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5861:vgpr_32, 0, %5865:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108640B	  %5865:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5864:vgpr_32, %5865:vgpr_32, %5865:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108656B	  %5866:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5053:vgpr_32, 0, %5377:vgpr_32, 0, %5053:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108672B	  %5870:vgpr_32 = nofpexcept V_MUL_F32_e32 %5866:vgpr_32, %5865:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108688B	  %5869:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5861:vgpr_32, 0, %5870:vgpr_32, 0, %5866:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108720B	  %5870:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5869:vgpr_32, %5865:vgpr_32, %5870:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108736B	  %5871:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5861:vgpr_32, 0, %5870:vgpr_32, 0, %5866:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108800B	  %5874:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5378:vgpr_32, 0, %5378:vgpr_32, 0, %5054:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108816B	  %5878:vgpr_32 = nofpexcept V_RCP_F32_e32 %5874:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108848B	  %5872:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5871:vgpr_32, 0, %5865:vgpr_32, 0, %5870:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108864B	  %6273:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5872:vgpr_32, 0, %5377:vgpr_32, 0, %5053:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108880B	  %5877:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5874:vgpr_32, 0, %5878:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108912B	  %5878:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5877:vgpr_32, %5878:vgpr_32, %5878:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108928B	  %5879:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5054:vgpr_32, 0, %5378:vgpr_32, 0, %5054:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108944B	  %5883:vgpr_32 = nofpexcept V_MUL_F32_e32 %5879:vgpr_32, %5878:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108960B	  %5882:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5874:vgpr_32, 0, %5883:vgpr_32, 0, %5879:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108992B	  %5883:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5882:vgpr_32, %5878:vgpr_32, %5883:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109008B	  %5884:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5874:vgpr_32, 0, %5883:vgpr_32, 0, %5879:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109072B	  %5887:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5379:vgpr_32, 0, %5379:vgpr_32, 0, %5055:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109088B	  %5891:vgpr_32 = nofpexcept V_RCP_F32_e32 %5887:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109120B	  %5885:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5884:vgpr_32, 0, %5878:vgpr_32, 0, %5883:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109136B	  %6274:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5885:vgpr_32, 0, %5378:vgpr_32, 0, %5054:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109152B	  %5890:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5887:vgpr_32, 0, %5891:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109184B	  %5891:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5890:vgpr_32, %5891:vgpr_32, %5891:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109200B	  %5892:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5055:vgpr_32, 0, %5379:vgpr_32, 0, %5055:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109216B	  %5896:vgpr_32 = nofpexcept V_MUL_F32_e32 %5892:vgpr_32, %5891:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109232B	  %5895:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5887:vgpr_32, 0, %5896:vgpr_32, 0, %5892:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109264B	  %5896:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5895:vgpr_32, %5891:vgpr_32, %5896:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109280B	  %5897:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5887:vgpr_32, 0, %5896:vgpr_32, 0, %5892:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109344B	  %5900:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5380:vgpr_32, 0, %5380:vgpr_32, 0, %5056:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109360B	  %5904:vgpr_32 = nofpexcept V_RCP_F32_e32 %5900:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109392B	  %5898:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5897:vgpr_32, 0, %5891:vgpr_32, 0, %5896:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109408B	  %6275:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5898:vgpr_32, 0, %5379:vgpr_32, 0, %5055:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109424B	  %5903:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5900:vgpr_32, 0, %5904:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109456B	  %5904:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5903:vgpr_32, %5904:vgpr_32, %5904:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109472B	  %5905:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5056:vgpr_32, 0, %5380:vgpr_32, 0, %5056:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109488B	  %5909:vgpr_32 = nofpexcept V_MUL_F32_e32 %5905:vgpr_32, %5904:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109504B	  %5908:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5900:vgpr_32, 0, %5909:vgpr_32, 0, %5905:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109536B	  %5909:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5908:vgpr_32, %5904:vgpr_32, %5909:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109552B	  %5910:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5900:vgpr_32, 0, %5909:vgpr_32, 0, %5905:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109616B	  %5913:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5381:vgpr_32, 0, %5381:vgpr_32, 0, %5057:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109632B	  %5917:vgpr_32 = nofpexcept V_RCP_F32_e32 %5913:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109664B	  %5911:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5910:vgpr_32, 0, %5904:vgpr_32, 0, %5909:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109680B	  %6276:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5911:vgpr_32, 0, %5380:vgpr_32, 0, %5056:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109696B	  %5916:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5913:vgpr_32, 0, %5917:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109728B	  %5917:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5916:vgpr_32, %5917:vgpr_32, %5917:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109744B	  %5918:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5057:vgpr_32, 0, %5381:vgpr_32, 0, %5057:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109760B	  %5922:vgpr_32 = nofpexcept V_MUL_F32_e32 %5918:vgpr_32, %5917:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109776B	  %5921:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5913:vgpr_32, 0, %5922:vgpr_32, 0, %5918:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109808B	  %5922:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5921:vgpr_32, %5917:vgpr_32, %5922:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109824B	  %5923:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5913:vgpr_32, 0, %5922:vgpr_32, 0, %5918:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109888B	  %5926:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5382:vgpr_32, 0, %5382:vgpr_32, 0, %5058:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109904B	  %5930:vgpr_32 = nofpexcept V_RCP_F32_e32 %5926:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109936B	  %5924:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5923:vgpr_32, 0, %5917:vgpr_32, 0, %5922:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109952B	  %6277:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5924:vgpr_32, 0, %5381:vgpr_32, 0, %5057:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109968B	  %5929:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5926:vgpr_32, 0, %5930:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110000B	  %5930:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5929:vgpr_32, %5930:vgpr_32, %5930:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110016B	  %5931:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5058:vgpr_32, 0, %5382:vgpr_32, 0, %5058:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110032B	  %5935:vgpr_32 = nofpexcept V_MUL_F32_e32 %5931:vgpr_32, %5930:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110048B	  %5934:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5926:vgpr_32, 0, %5935:vgpr_32, 0, %5931:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110080B	  %5935:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5934:vgpr_32, %5930:vgpr_32, %5935:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110096B	  %5936:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5926:vgpr_32, 0, %5935:vgpr_32, 0, %5931:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110160B	  %5939:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5383:vgpr_32, 0, %5383:vgpr_32, 0, %5059:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110176B	  %5943:vgpr_32 = nofpexcept V_RCP_F32_e32 %5939:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110208B	  %5937:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5936:vgpr_32, 0, %5930:vgpr_32, 0, %5935:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110224B	  %6278:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5937:vgpr_32, 0, %5382:vgpr_32, 0, %5058:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110240B	  %5942:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5939:vgpr_32, 0, %5943:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110272B	  %5943:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5942:vgpr_32, %5943:vgpr_32, %5943:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110288B	  %5944:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5059:vgpr_32, 0, %5383:vgpr_32, 0, %5059:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110304B	  %5948:vgpr_32 = nofpexcept V_MUL_F32_e32 %5944:vgpr_32, %5943:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110320B	  %5947:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5939:vgpr_32, 0, %5948:vgpr_32, 0, %5944:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110352B	  %5948:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5947:vgpr_32, %5943:vgpr_32, %5948:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110368B	  %5949:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5939:vgpr_32, 0, %5948:vgpr_32, 0, %5944:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110432B	  %5952:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5384:vgpr_32, 0, %5384:vgpr_32, 0, %5060:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110448B	  %5956:vgpr_32 = nofpexcept V_RCP_F32_e32 %5952:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110480B	  %5950:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5949:vgpr_32, 0, %5943:vgpr_32, 0, %5948:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110496B	  %6279:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5950:vgpr_32, 0, %5383:vgpr_32, 0, %5059:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110512B	  %5955:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5952:vgpr_32, 0, %5956:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110544B	  %5956:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5955:vgpr_32, %5956:vgpr_32, %5956:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110560B	  %5957:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5060:vgpr_32, 0, %5384:vgpr_32, 0, %5060:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110576B	  %5961:vgpr_32 = nofpexcept V_MUL_F32_e32 %5957:vgpr_32, %5956:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110592B	  %5960:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5952:vgpr_32, 0, %5961:vgpr_32, 0, %5957:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110624B	  %5961:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5960:vgpr_32, %5956:vgpr_32, %5961:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110640B	  %5962:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5952:vgpr_32, 0, %5961:vgpr_32, 0, %5957:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110704B	  %5965:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5385:vgpr_32, 0, %5385:vgpr_32, 0, %5061:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110720B	  %5969:vgpr_32 = nofpexcept V_RCP_F32_e32 %5965:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110752B	  %5963:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5962:vgpr_32, 0, %5956:vgpr_32, 0, %5961:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110768B	  %6280:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5963:vgpr_32, 0, %5384:vgpr_32, 0, %5060:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110784B	  %5968:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5965:vgpr_32, 0, %5969:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110816B	  %5969:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5968:vgpr_32, %5969:vgpr_32, %5969:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110832B	  %5970:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5061:vgpr_32, 0, %5385:vgpr_32, 0, %5061:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110848B	  %5974:vgpr_32 = nofpexcept V_MUL_F32_e32 %5970:vgpr_32, %5969:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110864B	  %5973:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5965:vgpr_32, 0, %5974:vgpr_32, 0, %5970:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110896B	  %5974:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5973:vgpr_32, %5969:vgpr_32, %5974:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110912B	  %5975:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5965:vgpr_32, 0, %5974:vgpr_32, 0, %5970:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110976B	  %5978:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5386:vgpr_32, 0, %5386:vgpr_32, 0, %5062:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110992B	  %5982:vgpr_32 = nofpexcept V_RCP_F32_e32 %5978:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111024B	  %5976:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5975:vgpr_32, 0, %5969:vgpr_32, 0, %5974:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111040B	  %6281:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5976:vgpr_32, 0, %5385:vgpr_32, 0, %5061:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111056B	  %5981:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5978:vgpr_32, 0, %5982:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111088B	  %5982:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5981:vgpr_32, %5982:vgpr_32, %5982:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111104B	  %5983:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5062:vgpr_32, 0, %5386:vgpr_32, 0, %5062:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111120B	  %5987:vgpr_32 = nofpexcept V_MUL_F32_e32 %5983:vgpr_32, %5982:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111136B	  %5986:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5978:vgpr_32, 0, %5987:vgpr_32, 0, %5983:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111168B	  %5987:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5986:vgpr_32, %5982:vgpr_32, %5987:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111184B	  %5988:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5978:vgpr_32, 0, %5987:vgpr_32, 0, %5983:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111248B	  %5991:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5387:vgpr_32, 0, %5387:vgpr_32, 0, %5063:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111264B	  %5995:vgpr_32 = nofpexcept V_RCP_F32_e32 %5991:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111296B	  %5989:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5988:vgpr_32, 0, %5982:vgpr_32, 0, %5987:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111312B	  %6282:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5989:vgpr_32, 0, %5386:vgpr_32, 0, %5062:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111328B	  %5994:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5991:vgpr_32, 0, %5995:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111360B	  %5995:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5994:vgpr_32, %5995:vgpr_32, %5995:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111376B	  %5996:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5063:vgpr_32, 0, %5387:vgpr_32, 0, %5063:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111392B	  %6000:vgpr_32 = nofpexcept V_MUL_F32_e32 %5996:vgpr_32, %5995:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111408B	  %5999:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5991:vgpr_32, 0, %6000:vgpr_32, 0, %5996:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111440B	  %6000:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5999:vgpr_32, %5995:vgpr_32, %6000:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111456B	  %6001:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5991:vgpr_32, 0, %6000:vgpr_32, 0, %5996:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111520B	  %6004:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5388:vgpr_32, 0, %5388:vgpr_32, 0, %5064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111536B	  %6008:vgpr_32 = nofpexcept V_RCP_F32_e32 %6004:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111568B	  %6002:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6001:vgpr_32, 0, %5995:vgpr_32, 0, %6000:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111584B	  %6283:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6002:vgpr_32, 0, %5387:vgpr_32, 0, %5063:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111600B	  %6007:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6004:vgpr_32, 0, %6008:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111632B	  %6008:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6007:vgpr_32, %6008:vgpr_32, %6008:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111648B	  %6009:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5064:vgpr_32, 0, %5388:vgpr_32, 0, %5064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111664B	  %6013:vgpr_32 = nofpexcept V_MUL_F32_e32 %6009:vgpr_32, %6008:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111680B	  %6012:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6004:vgpr_32, 0, %6013:vgpr_32, 0, %6009:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111712B	  %6013:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6012:vgpr_32, %6008:vgpr_32, %6013:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111728B	  %6014:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6004:vgpr_32, 0, %6013:vgpr_32, 0, %6009:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111792B	  %6017:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5389:vgpr_32, 0, %5389:vgpr_32, 0, %5065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111808B	  %6021:vgpr_32 = nofpexcept V_RCP_F32_e32 %6017:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111840B	  %6015:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6014:vgpr_32, 0, %6008:vgpr_32, 0, %6013:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111856B	  %6284:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6015:vgpr_32, 0, %5388:vgpr_32, 0, %5064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111872B	  %6020:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6017:vgpr_32, 0, %6021:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111904B	  %6021:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6020:vgpr_32, %6021:vgpr_32, %6021:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111920B	  %6022:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5065:vgpr_32, 0, %5389:vgpr_32, 0, %5065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111936B	  %6026:vgpr_32 = nofpexcept V_MUL_F32_e32 %6022:vgpr_32, %6021:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111952B	  %6025:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6017:vgpr_32, 0, %6026:vgpr_32, 0, %6022:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111984B	  %6026:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6025:vgpr_32, %6021:vgpr_32, %6026:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112000B	  %6027:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6017:vgpr_32, 0, %6026:vgpr_32, 0, %6022:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112064B	  %6030:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5390:vgpr_32, 0, %5390:vgpr_32, 0, %5066:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112080B	  %6034:vgpr_32 = nofpexcept V_RCP_F32_e32 %6030:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112112B	  %6028:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6027:vgpr_32, 0, %6021:vgpr_32, 0, %6026:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112128B	  %6285:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6028:vgpr_32, 0, %5389:vgpr_32, 0, %5065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112144B	  %6033:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6030:vgpr_32, 0, %6034:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112176B	  %6034:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6033:vgpr_32, %6034:vgpr_32, %6034:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112192B	  %6035:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5066:vgpr_32, 0, %5390:vgpr_32, 0, %5066:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112208B	  %6039:vgpr_32 = nofpexcept V_MUL_F32_e32 %6035:vgpr_32, %6034:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112224B	  %6038:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6030:vgpr_32, 0, %6039:vgpr_32, 0, %6035:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112256B	  %6039:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6038:vgpr_32, %6034:vgpr_32, %6039:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112272B	  %6040:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6030:vgpr_32, 0, %6039:vgpr_32, 0, %6035:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112336B	  %6043:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5391:vgpr_32, 0, %5391:vgpr_32, 0, %5067:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112352B	  %6047:vgpr_32 = nofpexcept V_RCP_F32_e32 %6043:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112384B	  %6041:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6040:vgpr_32, 0, %6034:vgpr_32, 0, %6039:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112400B	  %6286:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6041:vgpr_32, 0, %5390:vgpr_32, 0, %5066:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112416B	  %6046:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6043:vgpr_32, 0, %6047:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112448B	  %6047:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6046:vgpr_32, %6047:vgpr_32, %6047:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112464B	  %6048:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5067:vgpr_32, 0, %5391:vgpr_32, 0, %5067:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112480B	  %6052:vgpr_32 = nofpexcept V_MUL_F32_e32 %6048:vgpr_32, %6047:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112496B	  %6051:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6043:vgpr_32, 0, %6052:vgpr_32, 0, %6048:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112528B	  %6052:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6051:vgpr_32, %6047:vgpr_32, %6052:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112544B	  %6053:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6043:vgpr_32, 0, %6052:vgpr_32, 0, %6048:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112608B	  %6056:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5392:vgpr_32, 0, %5392:vgpr_32, 0, %5068:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112624B	  %6060:vgpr_32 = nofpexcept V_RCP_F32_e32 %6056:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112656B	  %6054:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6053:vgpr_32, 0, %6047:vgpr_32, 0, %6052:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112672B	  %6287:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6054:vgpr_32, 0, %5391:vgpr_32, 0, %5067:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112688B	  %6059:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6056:vgpr_32, 0, %6060:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112720B	  %6060:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6059:vgpr_32, %6060:vgpr_32, %6060:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112736B	  %6061:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5068:vgpr_32, 0, %5392:vgpr_32, 0, %5068:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112752B	  %6065:vgpr_32 = nofpexcept V_MUL_F32_e32 %6061:vgpr_32, %6060:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112768B	  %6064:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6056:vgpr_32, 0, %6065:vgpr_32, 0, %6061:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112800B	  %6065:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6064:vgpr_32, %6060:vgpr_32, %6065:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112816B	  %6066:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6056:vgpr_32, 0, %6065:vgpr_32, 0, %6061:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112880B	  %6069:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5393:vgpr_32, 0, %5393:vgpr_32, 0, %5069:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112896B	  %6073:vgpr_32 = nofpexcept V_RCP_F32_e32 %6069:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112928B	  %6067:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6066:vgpr_32, 0, %6060:vgpr_32, 0, %6065:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112944B	  %6288:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6067:vgpr_32, 0, %5392:vgpr_32, 0, %5068:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112960B	  %6072:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6069:vgpr_32, 0, %6073:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112992B	  %6073:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6072:vgpr_32, %6073:vgpr_32, %6073:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113008B	  %6074:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5069:vgpr_32, 0, %5393:vgpr_32, 0, %5069:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113024B	  %6078:vgpr_32 = nofpexcept V_MUL_F32_e32 %6074:vgpr_32, %6073:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113040B	  %6077:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6069:vgpr_32, 0, %6078:vgpr_32, 0, %6074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113072B	  %6078:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6077:vgpr_32, %6073:vgpr_32, %6078:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113088B	  %6079:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6069:vgpr_32, 0, %6078:vgpr_32, 0, %6074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113152B	  %6082:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5394:vgpr_32, 0, %5394:vgpr_32, 0, %5070:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113168B	  %6086:vgpr_32 = nofpexcept V_RCP_F32_e32 %6082:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113200B	  %6080:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6079:vgpr_32, 0, %6073:vgpr_32, 0, %6078:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113216B	  %6289:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6080:vgpr_32, 0, %5393:vgpr_32, 0, %5069:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113232B	  %6085:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6082:vgpr_32, 0, %6086:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113264B	  %6086:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6085:vgpr_32, %6086:vgpr_32, %6086:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113280B	  %6087:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5070:vgpr_32, 0, %5394:vgpr_32, 0, %5070:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113296B	  %6091:vgpr_32 = nofpexcept V_MUL_F32_e32 %6087:vgpr_32, %6086:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113312B	  %6090:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6082:vgpr_32, 0, %6091:vgpr_32, 0, %6087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113344B	  %6091:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6090:vgpr_32, %6086:vgpr_32, %6091:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113360B	  %6092:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6082:vgpr_32, 0, %6091:vgpr_32, 0, %6087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113424B	  %6095:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5395:vgpr_32, 0, %5395:vgpr_32, 0, %5071:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113440B	  %6099:vgpr_32 = nofpexcept V_RCP_F32_e32 %6095:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113472B	  %6093:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6092:vgpr_32, 0, %6086:vgpr_32, 0, %6091:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113488B	  %6290:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6093:vgpr_32, 0, %5394:vgpr_32, 0, %5070:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113504B	  %6098:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6095:vgpr_32, 0, %6099:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113536B	  %6099:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6098:vgpr_32, %6099:vgpr_32, %6099:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113552B	  %6100:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5071:vgpr_32, 0, %5395:vgpr_32, 0, %5071:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113568B	  %6104:vgpr_32 = nofpexcept V_MUL_F32_e32 %6100:vgpr_32, %6099:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113584B	  %6103:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6095:vgpr_32, 0, %6104:vgpr_32, 0, %6100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113616B	  %6104:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6103:vgpr_32, %6099:vgpr_32, %6104:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113632B	  %6105:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6095:vgpr_32, 0, %6104:vgpr_32, 0, %6100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113696B	  %6108:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5396:vgpr_32, 0, %5396:vgpr_32, 0, %5072:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113712B	  %6112:vgpr_32 = nofpexcept V_RCP_F32_e32 %6108:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113744B	  %6106:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6105:vgpr_32, 0, %6099:vgpr_32, 0, %6104:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113760B	  %6291:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6106:vgpr_32, 0, %5395:vgpr_32, 0, %5071:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113776B	  %6111:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6108:vgpr_32, 0, %6112:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113808B	  %6112:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6111:vgpr_32, %6112:vgpr_32, %6112:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113824B	  %6113:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5072:vgpr_32, 0, %5396:vgpr_32, 0, %5072:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113840B	  %6117:vgpr_32 = nofpexcept V_MUL_F32_e32 %6113:vgpr_32, %6112:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113856B	  %6116:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6108:vgpr_32, 0, %6117:vgpr_32, 0, %6113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113888B	  %6117:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6116:vgpr_32, %6112:vgpr_32, %6117:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113904B	  %6118:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6108:vgpr_32, 0, %6117:vgpr_32, 0, %6113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113968B	  %6121:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5397:vgpr_32, 0, %5397:vgpr_32, 0, %5073:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113984B	  %6125:vgpr_32 = nofpexcept V_RCP_F32_e32 %6121:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114016B	  %6119:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6118:vgpr_32, 0, %6112:vgpr_32, 0, %6117:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114032B	  %6292:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6119:vgpr_32, 0, %5396:vgpr_32, 0, %5072:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114048B	  %6124:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6121:vgpr_32, 0, %6125:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114080B	  %6125:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6124:vgpr_32, %6125:vgpr_32, %6125:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114096B	  %6126:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5073:vgpr_32, 0, %5397:vgpr_32, 0, %5073:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114112B	  %6130:vgpr_32 = nofpexcept V_MUL_F32_e32 %6126:vgpr_32, %6125:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114128B	  %6129:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6121:vgpr_32, 0, %6130:vgpr_32, 0, %6126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114160B	  %6130:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6129:vgpr_32, %6125:vgpr_32, %6130:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114176B	  %6131:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6121:vgpr_32, 0, %6130:vgpr_32, 0, %6126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114240B	  %6134:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5398:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114256B	  %6138:vgpr_32 = nofpexcept V_RCP_F32_e32 %6134:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114288B	  %6132:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6131:vgpr_32, 0, %6125:vgpr_32, 0, %6130:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114304B	  %6293:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6132:vgpr_32, 0, %5397:vgpr_32, 0, %5073:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114320B	  %6137:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6134:vgpr_32, 0, %6138:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114352B	  %6138:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6137:vgpr_32, %6138:vgpr_32, %6138:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114368B	  %6139:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5074:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114384B	  %6143:vgpr_32 = nofpexcept V_MUL_F32_e32 %6139:vgpr_32, %6138:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114400B	  %6142:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6134:vgpr_32, 0, %6143:vgpr_32, 0, %6139:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114432B	  %6143:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6142:vgpr_32, %6138:vgpr_32, %6143:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114448B	  %6144:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6134:vgpr_32, 0, %6143:vgpr_32, 0, %6139:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114512B	  %6147:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5399:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114528B	  %6151:vgpr_32 = nofpexcept V_RCP_F32_e32 %6147:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114560B	  %6145:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6144:vgpr_32, 0, %6138:vgpr_32, 0, %6143:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114576B	  %6294:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6145:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114592B	  %6150:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6147:vgpr_32, 0, %6151:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114624B	  %6151:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6150:vgpr_32, %6151:vgpr_32, %6151:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114640B	  %6152:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5075:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114656B	  %6156:vgpr_32 = nofpexcept V_MUL_F32_e32 %6152:vgpr_32, %6151:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114672B	  %6155:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6147:vgpr_32, 0, %6156:vgpr_32, 0, %6152:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114704B	  %6156:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6155:vgpr_32, %6151:vgpr_32, %6156:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114720B	  %6157:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6147:vgpr_32, 0, %6156:vgpr_32, 0, %6152:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114784B	  %6160:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5400:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114800B	  %6164:vgpr_32 = nofpexcept V_RCP_F32_e32 %6160:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114832B	  %6158:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6157:vgpr_32, 0, %6151:vgpr_32, 0, %6156:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114848B	  %6295:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6158:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114864B	  %6163:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6160:vgpr_32, 0, %6164:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114896B	  %6164:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6163:vgpr_32, %6164:vgpr_32, %6164:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114912B	  %6165:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5076:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114928B	  %6169:vgpr_32 = nofpexcept V_MUL_F32_e32 %6165:vgpr_32, %6164:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114944B	  %6168:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6160:vgpr_32, 0, %6169:vgpr_32, 0, %6165:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114976B	  %6169:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6168:vgpr_32, %6164:vgpr_32, %6169:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114992B	  %6170:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6160:vgpr_32, 0, %6169:vgpr_32, 0, %6165:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115056B	  %6173:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5401:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115072B	  %6177:vgpr_32 = nofpexcept V_RCP_F32_e32 %6173:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115104B	  %6171:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6170:vgpr_32, 0, %6164:vgpr_32, 0, %6169:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115120B	  %6296:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6171:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115136B	  %6176:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6173:vgpr_32, 0, %6177:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115168B	  %6177:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6176:vgpr_32, %6177:vgpr_32, %6177:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115184B	  %6178:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5077:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115200B	  %6182:vgpr_32 = nofpexcept V_MUL_F32_e32 %6178:vgpr_32, %6177:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115216B	  %6181:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6173:vgpr_32, 0, %6182:vgpr_32, 0, %6178:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115248B	  %6182:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6181:vgpr_32, %6177:vgpr_32, %6182:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115264B	  %6183:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6173:vgpr_32, 0, %6182:vgpr_32, 0, %6178:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115328B	  %6186:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5402:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115344B	  %6190:vgpr_32 = nofpexcept V_RCP_F32_e32 %6186:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115376B	  %6184:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6183:vgpr_32, 0, %6177:vgpr_32, 0, %6182:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115392B	  %6297:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6184:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115408B	  %6189:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6186:vgpr_32, 0, %6190:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115440B	  %6190:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6189:vgpr_32, %6190:vgpr_32, %6190:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115456B	  %6191:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5078:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115472B	  %6195:vgpr_32 = nofpexcept V_MUL_F32_e32 %6191:vgpr_32, %6190:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115488B	  %6194:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6186:vgpr_32, 0, %6195:vgpr_32, 0, %6191:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115520B	  %6195:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6194:vgpr_32, %6190:vgpr_32, %6195:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115536B	  %6196:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6186:vgpr_32, 0, %6195:vgpr_32, 0, %6191:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115600B	  %6199:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5403:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115616B	  %6203:vgpr_32 = nofpexcept V_RCP_F32_e32 %6199:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115648B	  %6197:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6196:vgpr_32, 0, %6190:vgpr_32, 0, %6195:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115664B	  %6298:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6197:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115680B	  %6202:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6199:vgpr_32, 0, %6203:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115712B	  %6203:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6202:vgpr_32, %6203:vgpr_32, %6203:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115728B	  %6204:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5079:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115744B	  %6208:vgpr_32 = nofpexcept V_MUL_F32_e32 %6204:vgpr_32, %6203:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115760B	  %6207:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6199:vgpr_32, 0, %6208:vgpr_32, 0, %6204:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115792B	  %6208:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6207:vgpr_32, %6203:vgpr_32, %6208:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115808B	  %6209:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6199:vgpr_32, 0, %6208:vgpr_32, 0, %6204:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115872B	  %6212:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5404:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115888B	  %6216:vgpr_32 = nofpexcept V_RCP_F32_e32 %6212:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115920B	  %6210:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6209:vgpr_32, 0, %6203:vgpr_32, 0, %6208:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115936B	  %6299:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6210:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115952B	  %6215:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6212:vgpr_32, 0, %6216:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115984B	  %6216:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6215:vgpr_32, %6216:vgpr_32, %6216:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116000B	  %6217:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5080:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116016B	  %6221:vgpr_32 = nofpexcept V_MUL_F32_e32 %6217:vgpr_32, %6216:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116032B	  %6220:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6212:vgpr_32, 0, %6221:vgpr_32, 0, %6217:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116064B	  %6221:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6220:vgpr_32, %6216:vgpr_32, %6221:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116080B	  %6222:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6212:vgpr_32, 0, %6221:vgpr_32, 0, %6217:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116144B	  %6225:vgpr_32, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, %5405:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116160B	  %6229:vgpr_32 = nofpexcept V_RCP_F32_e32 %6225:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118592B	  %6313:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, %4828:vgpr_32, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
118624B	  %6223:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6222:vgpr_32, 0, %6216:vgpr_32, 0, %6221:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118640B	  %6300:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6223:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118656B	  %6228:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6225:vgpr_32, 0, %6229:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118672B	  %6229:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6228:vgpr_32, %6229:vgpr_32, %6229:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118688B	  %6230:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %5081:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118704B	  %6234:vgpr_32 = nofpexcept V_MUL_F32_e32 %6230:vgpr_32, %6229:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118720B	  %6233:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6225:vgpr_32, 0, %6234:vgpr_32, 0, %6230:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118736B	  %6234:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6233:vgpr_32, %6229:vgpr_32, %6234:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118752B	  %6235:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6225:vgpr_32, 0, %6234:vgpr_32, 0, %6230:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118784B	  %6236:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6235:vgpr_32, 0, %6229:vgpr_32, 0, %6234:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118800B	  %6301:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6236:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118816B	  %6238:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6238:vgpr_32, %5146:vgpr_32, %6238:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118832B	  %6239:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6239:vgpr_32, %5147:vgpr_32, %6239:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118848B	  %6240:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6240:vgpr_32, %5148:vgpr_32, %6240:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118864B	  %6241:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6241:vgpr_32, %5149:vgpr_32, %6241:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118880B	  %6242:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6242:vgpr_32, %5150:vgpr_32, %6242:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118896B	  %6243:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6243:vgpr_32, %5151:vgpr_32, %6243:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118912B	  %6244:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6244:vgpr_32, %5152:vgpr_32, %6244:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118928B	  %6245:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6245:vgpr_32, %5153:vgpr_32, %6245:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118944B	  %6246:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6246:vgpr_32, %5154:vgpr_32, %6246:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118960B	  %6247:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6247:vgpr_32, %5155:vgpr_32, %6247:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118976B	  %6248:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6248:vgpr_32, %5156:vgpr_32, %6248:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118992B	  %6249:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6249:vgpr_32, %5157:vgpr_32, %6249:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119008B	  %6250:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6250:vgpr_32, %5158:vgpr_32, %6250:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119024B	  %6251:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6251:vgpr_32, %5159:vgpr_32, %6251:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119040B	  %6252:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6252:vgpr_32, %5160:vgpr_32, %6252:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119056B	  %6253:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6253:vgpr_32, %5161:vgpr_32, %6253:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119072B	  %6254:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6254:vgpr_32, %5162:vgpr_32, %6254:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119088B	  %6255:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6255:vgpr_32, %5163:vgpr_32, %6255:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119104B	  %6256:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6256:vgpr_32, %5164:vgpr_32, %6256:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119120B	  %6257:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6257:vgpr_32, %5165:vgpr_32, %6257:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119136B	  %6258:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6258:vgpr_32, %5166:vgpr_32, %6258:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119152B	  %6259:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6259:vgpr_32, %5167:vgpr_32, %6259:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119168B	  %6260:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6260:vgpr_32, %5168:vgpr_32, %6260:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119184B	  %6261:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6261:vgpr_32, %5169:vgpr_32, %6261:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119200B	  %6262:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6262:vgpr_32, %5170:vgpr_32, %6262:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119216B	  %6263:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6263:vgpr_32, %5171:vgpr_32, %6263:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119232B	  %6264:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6264:vgpr_32, %5172:vgpr_32, %6264:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119248B	  %6265:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6265:vgpr_32, %5173:vgpr_32, %6265:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119264B	  %6266:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6266:vgpr_32, %5174:vgpr_32, %6266:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119280B	  %6267:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6267:vgpr_32, %5175:vgpr_32, %6267:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119296B	  %6268:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6268:vgpr_32, %5176:vgpr_32, %6268:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119312B	  %6269:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6269:vgpr_32, %5177:vgpr_32, %6269:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119328B	  %6270:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6270:vgpr_32, %5178:vgpr_32, %6270:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119344B	  %6271:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6271:vgpr_32, %5179:vgpr_32, %6271:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119360B	  %6272:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6272:vgpr_32, %5180:vgpr_32, %6272:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119376B	  %6273:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6273:vgpr_32, %5181:vgpr_32, %6273:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119392B	  %6274:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6274:vgpr_32, %5182:vgpr_32, %6274:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119408B	  %6275:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6275:vgpr_32, %5183:vgpr_32, %6275:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119424B	  %6276:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6276:vgpr_32, %5184:vgpr_32, %6276:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119440B	  %6277:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6277:vgpr_32, %5185:vgpr_32, %6277:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119456B	  %6278:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6278:vgpr_32, %5186:vgpr_32, %6278:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119472B	  %6279:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6279:vgpr_32, %5187:vgpr_32, %6279:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119488B	  %6280:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6280:vgpr_32, %5188:vgpr_32, %6280:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119504B	  %6281:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6281:vgpr_32, %5189:vgpr_32, %6281:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119520B	  %6282:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6282:vgpr_32, %5190:vgpr_32, %6282:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119536B	  %6283:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6283:vgpr_32, %5191:vgpr_32, %6283:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119552B	  %6284:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6284:vgpr_32, %5192:vgpr_32, %6284:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119568B	  %6285:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6285:vgpr_32, %5193:vgpr_32, %6285:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119584B	  %6286:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6286:vgpr_32, %5194:vgpr_32, %6286:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119600B	  %6287:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6287:vgpr_32, %5195:vgpr_32, %6287:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119616B	  %6288:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6288:vgpr_32, %5196:vgpr_32, %6288:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119632B	  %6289:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6289:vgpr_32, %5197:vgpr_32, %6289:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119648B	  %6290:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6290:vgpr_32, %5198:vgpr_32, %6290:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119664B	  %6291:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6291:vgpr_32, %5199:vgpr_32, %6291:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119680B	  %6292:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6292:vgpr_32, %5200:vgpr_32, %6292:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119696B	  %6293:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6293:vgpr_32, %5201:vgpr_32, %6293:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119712B	  %6294:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6294:vgpr_32, %5202:vgpr_32, %6294:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119728B	  %6295:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6295:vgpr_32, %5203:vgpr_32, %6295:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119744B	  %6296:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6296:vgpr_32, %5204:vgpr_32, %6296:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119760B	  %6297:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6297:vgpr_32, %5205:vgpr_32, %6297:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119776B	  %6298:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6298:vgpr_32, %5206:vgpr_32, %6298:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119792B	  %6299:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6299:vgpr_32, %5207:vgpr_32, %6299:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119808B	  %6300:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6300:vgpr_32, %5208:vgpr_32, %6300:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119824B	  %6301:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6301:vgpr_32, %5209:vgpr_32, %6301:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119840B	  %6314:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6238:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119856B	  %6318:vgpr_32 = nofpexcept V_RCP_F32_e32 %6314:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119872B	  %8376.sub1:vreg_64_align2 = COPY killed renamable $sgpr13, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
119888B	  undef %8374.sub0:vreg_64_align2 = V_OR_B32_e32 8, %8376.sub0:vreg_64_align2, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
119904B	  %8374.sub1:vreg_64_align2 = COPY %8376.sub1:vreg_64_align2, debug-location !110; moe_op_gemm_a8w4.py:482:41
119920B	  %6317:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6314:vgpr_32, 0, %6318:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119952B	  %6318:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6317:vgpr_32, %6318:vgpr_32, %6318:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119968B	  %6319:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6238:vgpr_32, 0, %6313:vgpr_32, 0, %6238:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119984B	  %6323:vgpr_32 = nofpexcept V_MUL_F32_e32 %6319:vgpr_32, %6318:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120000B	  %6322:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6314:vgpr_32, 0, %6323:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120032B	  %6323:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6322:vgpr_32, %6318:vgpr_32, %6323:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120048B	  %6324:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6314:vgpr_32, 0, %6323:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120112B	  %6327:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6239:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120128B	  %6331:vgpr_32 = nofpexcept V_RCP_F32_e32 %6327:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120160B	  %6325:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6324:vgpr_32, 0, %6318:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120176B	  %6326:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6325:vgpr_32, 0, %6313:vgpr_32, 0, %6238:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120192B	  %6330:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6327:vgpr_32, 0, %6331:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120224B	  %6331:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6330:vgpr_32, %6331:vgpr_32, %6331:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120240B	  %6332:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6239:vgpr_32, 0, %6313:vgpr_32, 0, %6239:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120256B	  %6336:vgpr_32 = nofpexcept V_MUL_F32_e32 %6332:vgpr_32, %6331:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120272B	  %6335:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6327:vgpr_32, 0, %6336:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120304B	  %6336:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6335:vgpr_32, %6331:vgpr_32, %6336:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120320B	  %6337:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6327:vgpr_32, 0, %6336:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120384B	  %6340:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6240:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120400B	  %6344:vgpr_32 = nofpexcept V_RCP_F32_e32 %6340:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120432B	  %6338:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6337:vgpr_32, 0, %6331:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120448B	  %6339:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6338:vgpr_32, 0, %6313:vgpr_32, 0, %6239:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120464B	  %6343:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6340:vgpr_32, 0, %6344:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120496B	  %6344:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6343:vgpr_32, %6344:vgpr_32, %6344:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120512B	  %6345:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6240:vgpr_32, 0, %6313:vgpr_32, 0, %6240:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120528B	  %6349:vgpr_32 = nofpexcept V_MUL_F32_e32 %6345:vgpr_32, %6344:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120544B	  %6348:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6340:vgpr_32, 0, %6349:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120576B	  %6349:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6348:vgpr_32, %6344:vgpr_32, %6349:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120592B	  %6350:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6340:vgpr_32, 0, %6349:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120656B	  %6353:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6241:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120672B	  %6357:vgpr_32 = nofpexcept V_RCP_F32_e32 %6353:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120704B	  %6351:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6350:vgpr_32, 0, %6344:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120720B	  %6352:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6351:vgpr_32, 0, %6313:vgpr_32, 0, %6240:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120736B	  %6356:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6353:vgpr_32, 0, %6357:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120768B	  %6357:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6356:vgpr_32, %6357:vgpr_32, %6357:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120784B	  %6358:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6241:vgpr_32, 0, %6313:vgpr_32, 0, %6241:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120800B	  %6362:vgpr_32 = nofpexcept V_MUL_F32_e32 %6358:vgpr_32, %6357:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120816B	  %6361:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6353:vgpr_32, 0, %6362:vgpr_32, 0, %6358:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120848B	  %6362:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6361:vgpr_32, %6357:vgpr_32, %6362:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120864B	  %6363:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6353:vgpr_32, 0, %6362:vgpr_32, 0, %6358:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120928B	  %6366:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6242:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120944B	  %6370:vgpr_32 = nofpexcept V_RCP_F32_e32 %6366:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120976B	  %6364:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6363:vgpr_32, 0, %6357:vgpr_32, 0, %6362:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120992B	  %6365:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6364:vgpr_32, 0, %6313:vgpr_32, 0, %6241:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121008B	  %6369:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6366:vgpr_32, 0, %6370:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121040B	  %6370:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6369:vgpr_32, %6370:vgpr_32, %6370:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121056B	  %6371:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6242:vgpr_32, 0, %6313:vgpr_32, 0, %6242:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121072B	  %6375:vgpr_32 = nofpexcept V_MUL_F32_e32 %6371:vgpr_32, %6370:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121088B	  %6374:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6366:vgpr_32, 0, %6375:vgpr_32, 0, %6371:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121120B	  %6375:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6374:vgpr_32, %6370:vgpr_32, %6375:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121136B	  %6376:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6366:vgpr_32, 0, %6375:vgpr_32, 0, %6371:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121200B	  %6379:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6243:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121216B	  %6383:vgpr_32 = nofpexcept V_RCP_F32_e32 %6379:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121248B	  %6377:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6376:vgpr_32, 0, %6370:vgpr_32, 0, %6375:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121264B	  %6378:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6377:vgpr_32, 0, %6313:vgpr_32, 0, %6242:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121280B	  %6382:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6379:vgpr_32, 0, %6383:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121312B	  %6383:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6382:vgpr_32, %6383:vgpr_32, %6383:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121328B	  %6384:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6243:vgpr_32, 0, %6313:vgpr_32, 0, %6243:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121344B	  %6388:vgpr_32 = nofpexcept V_MUL_F32_e32 %6384:vgpr_32, %6383:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121360B	  %6387:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6379:vgpr_32, 0, %6388:vgpr_32, 0, %6384:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121392B	  %6388:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6387:vgpr_32, %6383:vgpr_32, %6388:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121408B	  %6389:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6379:vgpr_32, 0, %6388:vgpr_32, 0, %6384:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121472B	  %6392:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6244:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121488B	  %6396:vgpr_32 = nofpexcept V_RCP_F32_e32 %6392:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121520B	  %6390:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6389:vgpr_32, 0, %6383:vgpr_32, 0, %6388:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121536B	  %6391:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6390:vgpr_32, 0, %6313:vgpr_32, 0, %6243:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121552B	  %6395:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6392:vgpr_32, 0, %6396:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121584B	  %6396:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6395:vgpr_32, %6396:vgpr_32, %6396:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121600B	  %6397:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6244:vgpr_32, 0, %6313:vgpr_32, 0, %6244:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121616B	  %6401:vgpr_32 = nofpexcept V_MUL_F32_e32 %6397:vgpr_32, %6396:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121632B	  %6400:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6392:vgpr_32, 0, %6401:vgpr_32, 0, %6397:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121664B	  %6401:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6400:vgpr_32, %6396:vgpr_32, %6401:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121680B	  %6402:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6392:vgpr_32, 0, %6401:vgpr_32, 0, %6397:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121744B	  %6405:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6245:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121760B	  %6409:vgpr_32 = nofpexcept V_RCP_F32_e32 %6405:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121792B	  %6403:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6402:vgpr_32, 0, %6396:vgpr_32, 0, %6401:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121808B	  %6404:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6403:vgpr_32, 0, %6313:vgpr_32, 0, %6244:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121824B	  %6408:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6405:vgpr_32, 0, %6409:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121856B	  %6409:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6408:vgpr_32, %6409:vgpr_32, %6409:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121872B	  %6410:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6245:vgpr_32, 0, %6313:vgpr_32, 0, %6245:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121888B	  %6414:vgpr_32 = nofpexcept V_MUL_F32_e32 %6410:vgpr_32, %6409:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121904B	  %6413:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6405:vgpr_32, 0, %6414:vgpr_32, 0, %6410:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121936B	  %6414:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6413:vgpr_32, %6409:vgpr_32, %6414:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121952B	  %6415:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6405:vgpr_32, 0, %6414:vgpr_32, 0, %6410:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122016B	  %6418:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6246:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122032B	  %6422:vgpr_32 = nofpexcept V_RCP_F32_e32 %6418:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122064B	  %6416:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6415:vgpr_32, 0, %6409:vgpr_32, 0, %6414:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122080B	  %6417:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6416:vgpr_32, 0, %6313:vgpr_32, 0, %6245:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122096B	  %6421:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6418:vgpr_32, 0, %6422:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122128B	  %6422:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6421:vgpr_32, %6422:vgpr_32, %6422:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122144B	  %6423:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6246:vgpr_32, 0, %6313:vgpr_32, 0, %6246:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122160B	  %6427:vgpr_32 = nofpexcept V_MUL_F32_e32 %6423:vgpr_32, %6422:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122176B	  %6426:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6418:vgpr_32, 0, %6427:vgpr_32, 0, %6423:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122208B	  %6427:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6426:vgpr_32, %6422:vgpr_32, %6427:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122224B	  %6428:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6418:vgpr_32, 0, %6427:vgpr_32, 0, %6423:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122288B	  %6431:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122304B	  %6435:vgpr_32 = nofpexcept V_RCP_F32_e32 %6431:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122336B	  %6429:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6428:vgpr_32, 0, %6422:vgpr_32, 0, %6427:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122352B	  %6430:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6429:vgpr_32, 0, %6313:vgpr_32, 0, %6246:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122368B	  %6434:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6431:vgpr_32, 0, %6435:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122400B	  %6435:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6434:vgpr_32, %6435:vgpr_32, %6435:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122416B	  %6436:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6247:vgpr_32, 0, %6313:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122432B	  %6440:vgpr_32 = nofpexcept V_MUL_F32_e32 %6436:vgpr_32, %6435:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122448B	  %6439:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6431:vgpr_32, 0, %6440:vgpr_32, 0, %6436:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122480B	  %6440:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6439:vgpr_32, %6435:vgpr_32, %6440:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122496B	  %6441:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6431:vgpr_32, 0, %6440:vgpr_32, 0, %6436:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122560B	  %6444:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6248:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122576B	  %6448:vgpr_32 = nofpexcept V_RCP_F32_e32 %6444:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122608B	  %6442:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6441:vgpr_32, 0, %6435:vgpr_32, 0, %6440:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122624B	  %6443:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6442:vgpr_32, 0, %6313:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122640B	  %6447:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6444:vgpr_32, 0, %6448:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122672B	  %6448:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6447:vgpr_32, %6448:vgpr_32, %6448:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122688B	  %6449:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6248:vgpr_32, 0, %6313:vgpr_32, 0, %6248:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122704B	  %6453:vgpr_32 = nofpexcept V_MUL_F32_e32 %6449:vgpr_32, %6448:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122720B	  %6452:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6444:vgpr_32, 0, %6453:vgpr_32, 0, %6449:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122752B	  %6453:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6452:vgpr_32, %6448:vgpr_32, %6453:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122768B	  %6454:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6444:vgpr_32, 0, %6453:vgpr_32, 0, %6449:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122832B	  %6457:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6249:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122848B	  %6461:vgpr_32 = nofpexcept V_RCP_F32_e32 %6457:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122880B	  %6455:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6454:vgpr_32, 0, %6448:vgpr_32, 0, %6453:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122896B	  %6456:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6455:vgpr_32, 0, %6313:vgpr_32, 0, %6248:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122912B	  %6460:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6457:vgpr_32, 0, %6461:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122944B	  %6461:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6460:vgpr_32, %6461:vgpr_32, %6461:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122960B	  %6462:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6249:vgpr_32, 0, %6313:vgpr_32, 0, %6249:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122976B	  %6466:vgpr_32 = nofpexcept V_MUL_F32_e32 %6462:vgpr_32, %6461:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122992B	  %6465:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6457:vgpr_32, 0, %6466:vgpr_32, 0, %6462:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123024B	  %6466:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6465:vgpr_32, %6461:vgpr_32, %6466:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123040B	  %6467:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6457:vgpr_32, 0, %6466:vgpr_32, 0, %6462:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123104B	  %6470:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6250:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123120B	  %6474:vgpr_32 = nofpexcept V_RCP_F32_e32 %6470:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123152B	  %6468:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6467:vgpr_32, 0, %6461:vgpr_32, 0, %6466:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123168B	  %6469:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6468:vgpr_32, 0, %6313:vgpr_32, 0, %6249:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123184B	  %6473:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6470:vgpr_32, 0, %6474:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123216B	  %6474:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6473:vgpr_32, %6474:vgpr_32, %6474:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123232B	  %6475:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6250:vgpr_32, 0, %6313:vgpr_32, 0, %6250:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123248B	  %6479:vgpr_32 = nofpexcept V_MUL_F32_e32 %6475:vgpr_32, %6474:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123264B	  %6478:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6470:vgpr_32, 0, %6479:vgpr_32, 0, %6475:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123296B	  %6479:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6478:vgpr_32, %6474:vgpr_32, %6479:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123312B	  %6480:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6470:vgpr_32, 0, %6479:vgpr_32, 0, %6475:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123376B	  %6483:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6251:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123392B	  %6487:vgpr_32 = nofpexcept V_RCP_F32_e32 %6483:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123424B	  %6481:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6480:vgpr_32, 0, %6474:vgpr_32, 0, %6479:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123440B	  %6482:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6481:vgpr_32, 0, %6313:vgpr_32, 0, %6250:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123456B	  %6486:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6483:vgpr_32, 0, %6487:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123488B	  %6487:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6486:vgpr_32, %6487:vgpr_32, %6487:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123504B	  %6488:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6251:vgpr_32, 0, %6313:vgpr_32, 0, %6251:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123520B	  %6492:vgpr_32 = nofpexcept V_MUL_F32_e32 %6488:vgpr_32, %6487:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123536B	  %6491:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6483:vgpr_32, 0, %6492:vgpr_32, 0, %6488:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123568B	  %6492:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6491:vgpr_32, %6487:vgpr_32, %6492:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123584B	  %6493:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6483:vgpr_32, 0, %6492:vgpr_32, 0, %6488:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123648B	  %6496:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6252:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123664B	  %6500:vgpr_32 = nofpexcept V_RCP_F32_e32 %6496:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123696B	  %6494:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6493:vgpr_32, 0, %6487:vgpr_32, 0, %6492:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123712B	  %6495:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6494:vgpr_32, 0, %6313:vgpr_32, 0, %6251:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123728B	  %6499:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6496:vgpr_32, 0, %6500:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123760B	  %6500:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6499:vgpr_32, %6500:vgpr_32, %6500:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123776B	  %6501:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6252:vgpr_32, 0, %6313:vgpr_32, 0, %6252:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123792B	  %6505:vgpr_32 = nofpexcept V_MUL_F32_e32 %6501:vgpr_32, %6500:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123808B	  %6504:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6496:vgpr_32, 0, %6505:vgpr_32, 0, %6501:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123840B	  %6505:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6504:vgpr_32, %6500:vgpr_32, %6505:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123856B	  %6506:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6496:vgpr_32, 0, %6505:vgpr_32, 0, %6501:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123920B	  %6509:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6253:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123936B	  %6513:vgpr_32 = nofpexcept V_RCP_F32_e32 %6509:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123968B	  %6507:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6506:vgpr_32, 0, %6500:vgpr_32, 0, %6505:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123984B	  %6508:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6507:vgpr_32, 0, %6313:vgpr_32, 0, %6252:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124000B	  %6512:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6509:vgpr_32, 0, %6513:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124032B	  %6513:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6512:vgpr_32, %6513:vgpr_32, %6513:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124048B	  %6514:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6253:vgpr_32, 0, %6313:vgpr_32, 0, %6253:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124064B	  %6518:vgpr_32 = nofpexcept V_MUL_F32_e32 %6514:vgpr_32, %6513:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124080B	  %6517:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6509:vgpr_32, 0, %6518:vgpr_32, 0, %6514:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124112B	  %6518:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6517:vgpr_32, %6513:vgpr_32, %6518:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124128B	  %6519:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6509:vgpr_32, 0, %6518:vgpr_32, 0, %6514:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124192B	  %6522:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6254:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124208B	  %6526:vgpr_32 = nofpexcept V_RCP_F32_e32 %6522:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124240B	  %6520:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6519:vgpr_32, 0, %6513:vgpr_32, 0, %6518:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124256B	  %6521:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6520:vgpr_32, 0, %6313:vgpr_32, 0, %6253:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124272B	  %6525:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6522:vgpr_32, 0, %6526:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124304B	  %6526:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6525:vgpr_32, %6526:vgpr_32, %6526:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124320B	  %6527:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6254:vgpr_32, 0, %6313:vgpr_32, 0, %6254:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124336B	  %6531:vgpr_32 = nofpexcept V_MUL_F32_e32 %6527:vgpr_32, %6526:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124352B	  %6530:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6522:vgpr_32, 0, %6531:vgpr_32, 0, %6527:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124384B	  %6531:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6530:vgpr_32, %6526:vgpr_32, %6531:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124400B	  %6532:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6522:vgpr_32, 0, %6531:vgpr_32, 0, %6527:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124464B	  %6535:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6255:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124480B	  %6539:vgpr_32 = nofpexcept V_RCP_F32_e32 %6535:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124512B	  %6533:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6532:vgpr_32, 0, %6526:vgpr_32, 0, %6531:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124528B	  %6534:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6533:vgpr_32, 0, %6313:vgpr_32, 0, %6254:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124544B	  %6538:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6535:vgpr_32, 0, %6539:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124576B	  %6539:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6538:vgpr_32, %6539:vgpr_32, %6539:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124592B	  %6540:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6255:vgpr_32, 0, %6313:vgpr_32, 0, %6255:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124608B	  %6544:vgpr_32 = nofpexcept V_MUL_F32_e32 %6540:vgpr_32, %6539:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124624B	  %6543:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6535:vgpr_32, 0, %6544:vgpr_32, 0, %6540:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124656B	  %6544:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6543:vgpr_32, %6539:vgpr_32, %6544:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124672B	  %6545:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6535:vgpr_32, 0, %6544:vgpr_32, 0, %6540:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124736B	  %6548:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6256:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124752B	  %6552:vgpr_32 = nofpexcept V_RCP_F32_e32 %6548:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124784B	  %6546:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6545:vgpr_32, 0, %6539:vgpr_32, 0, %6544:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124800B	  %6547:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6546:vgpr_32, 0, %6313:vgpr_32, 0, %6255:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124816B	  %6551:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6548:vgpr_32, 0, %6552:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124848B	  %6552:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6551:vgpr_32, %6552:vgpr_32, %6552:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124864B	  %6553:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6256:vgpr_32, 0, %6313:vgpr_32, 0, %6256:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124880B	  %6557:vgpr_32 = nofpexcept V_MUL_F32_e32 %6553:vgpr_32, %6552:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124896B	  %6556:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6548:vgpr_32, 0, %6557:vgpr_32, 0, %6553:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124928B	  %6557:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6556:vgpr_32, %6552:vgpr_32, %6557:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124944B	  %6558:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6548:vgpr_32, 0, %6557:vgpr_32, 0, %6553:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125008B	  %6561:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6257:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125024B	  %6565:vgpr_32 = nofpexcept V_RCP_F32_e32 %6561:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125056B	  %6559:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6558:vgpr_32, 0, %6552:vgpr_32, 0, %6557:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125072B	  %6560:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6559:vgpr_32, 0, %6313:vgpr_32, 0, %6256:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125088B	  %6564:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6561:vgpr_32, 0, %6565:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125120B	  %6565:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6564:vgpr_32, %6565:vgpr_32, %6565:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125136B	  %6566:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6257:vgpr_32, 0, %6313:vgpr_32, 0, %6257:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125152B	  %6570:vgpr_32 = nofpexcept V_MUL_F32_e32 %6566:vgpr_32, %6565:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125168B	  %6569:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6561:vgpr_32, 0, %6570:vgpr_32, 0, %6566:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125200B	  %6570:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6569:vgpr_32, %6565:vgpr_32, %6570:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125216B	  %6571:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6561:vgpr_32, 0, %6570:vgpr_32, 0, %6566:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125280B	  %6574:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6258:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125296B	  %6578:vgpr_32 = nofpexcept V_RCP_F32_e32 %6574:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125328B	  %6572:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6571:vgpr_32, 0, %6565:vgpr_32, 0, %6570:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125344B	  %6573:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6572:vgpr_32, 0, %6313:vgpr_32, 0, %6257:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125360B	  %6577:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6574:vgpr_32, 0, %6578:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125392B	  %6578:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6577:vgpr_32, %6578:vgpr_32, %6578:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125408B	  %6579:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6258:vgpr_32, 0, %6313:vgpr_32, 0, %6258:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125424B	  %6583:vgpr_32 = nofpexcept V_MUL_F32_e32 %6579:vgpr_32, %6578:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125440B	  %6582:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6574:vgpr_32, 0, %6583:vgpr_32, 0, %6579:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125472B	  %6583:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6582:vgpr_32, %6578:vgpr_32, %6583:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125488B	  %6584:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6574:vgpr_32, 0, %6583:vgpr_32, 0, %6579:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125552B	  %6587:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6259:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125568B	  %6591:vgpr_32 = nofpexcept V_RCP_F32_e32 %6587:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125600B	  %6585:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6584:vgpr_32, 0, %6578:vgpr_32, 0, %6583:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125616B	  %6586:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6585:vgpr_32, 0, %6313:vgpr_32, 0, %6258:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125632B	  %6590:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6587:vgpr_32, 0, %6591:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125664B	  %6591:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6590:vgpr_32, %6591:vgpr_32, %6591:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125680B	  %6592:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6259:vgpr_32, 0, %6313:vgpr_32, 0, %6259:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125696B	  %6596:vgpr_32 = nofpexcept V_MUL_F32_e32 %6592:vgpr_32, %6591:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125712B	  %6595:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6587:vgpr_32, 0, %6596:vgpr_32, 0, %6592:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125744B	  %6596:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6595:vgpr_32, %6591:vgpr_32, %6596:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125760B	  %6597:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6587:vgpr_32, 0, %6596:vgpr_32, 0, %6592:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125824B	  %6600:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125840B	  %6604:vgpr_32 = nofpexcept V_RCP_F32_e32 %6600:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125872B	  %6598:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6597:vgpr_32, 0, %6591:vgpr_32, 0, %6596:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125888B	  %6599:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6598:vgpr_32, 0, %6313:vgpr_32, 0, %6259:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125904B	  %6603:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6600:vgpr_32, 0, %6604:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125936B	  %6604:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6603:vgpr_32, %6604:vgpr_32, %6604:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125952B	  %6605:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6260:vgpr_32, 0, %6313:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125968B	  %6609:vgpr_32 = nofpexcept V_MUL_F32_e32 %6605:vgpr_32, %6604:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125984B	  %6608:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6600:vgpr_32, 0, %6609:vgpr_32, 0, %6605:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126016B	  %6609:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6608:vgpr_32, %6604:vgpr_32, %6609:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126032B	  %6610:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6600:vgpr_32, 0, %6609:vgpr_32, 0, %6605:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126096B	  %6613:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6261:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126112B	  %6617:vgpr_32 = nofpexcept V_RCP_F32_e32 %6613:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126144B	  %6611:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6610:vgpr_32, 0, %6604:vgpr_32, 0, %6609:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126160B	  %6612:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6611:vgpr_32, 0, %6313:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126176B	  %6616:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6613:vgpr_32, 0, %6617:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126208B	  %6617:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6616:vgpr_32, %6617:vgpr_32, %6617:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126224B	  %6618:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6261:vgpr_32, 0, %6313:vgpr_32, 0, %6261:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126240B	  %6622:vgpr_32 = nofpexcept V_MUL_F32_e32 %6618:vgpr_32, %6617:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126256B	  %6621:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6613:vgpr_32, 0, %6622:vgpr_32, 0, %6618:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126288B	  %6622:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6621:vgpr_32, %6617:vgpr_32, %6622:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126304B	  %6623:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6613:vgpr_32, 0, %6622:vgpr_32, 0, %6618:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126368B	  %6626:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6262:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126384B	  %6630:vgpr_32 = nofpexcept V_RCP_F32_e32 %6626:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126416B	  %6624:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6623:vgpr_32, 0, %6617:vgpr_32, 0, %6622:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126432B	  %6625:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6624:vgpr_32, 0, %6313:vgpr_32, 0, %6261:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126448B	  %6629:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6626:vgpr_32, 0, %6630:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126480B	  %6630:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6629:vgpr_32, %6630:vgpr_32, %6630:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126496B	  %6631:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6262:vgpr_32, 0, %6313:vgpr_32, 0, %6262:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126512B	  %6635:vgpr_32 = nofpexcept V_MUL_F32_e32 %6631:vgpr_32, %6630:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126528B	  %6634:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6626:vgpr_32, 0, %6635:vgpr_32, 0, %6631:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126560B	  %6635:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6634:vgpr_32, %6630:vgpr_32, %6635:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126576B	  %6636:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6626:vgpr_32, 0, %6635:vgpr_32, 0, %6631:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126640B	  %6639:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6263:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126656B	  %6643:vgpr_32 = nofpexcept V_RCP_F32_e32 %6639:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126688B	  %6637:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6636:vgpr_32, 0, %6630:vgpr_32, 0, %6635:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126704B	  %6638:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6637:vgpr_32, 0, %6313:vgpr_32, 0, %6262:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126720B	  %6642:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6639:vgpr_32, 0, %6643:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126752B	  %6643:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6642:vgpr_32, %6643:vgpr_32, %6643:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126768B	  %6644:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6263:vgpr_32, 0, %6313:vgpr_32, 0, %6263:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126784B	  %6648:vgpr_32 = nofpexcept V_MUL_F32_e32 %6644:vgpr_32, %6643:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126800B	  %6647:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6639:vgpr_32, 0, %6648:vgpr_32, 0, %6644:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126832B	  %6648:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6647:vgpr_32, %6643:vgpr_32, %6648:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126848B	  %6649:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6639:vgpr_32, 0, %6648:vgpr_32, 0, %6644:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126912B	  %6652:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6264:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126928B	  %6656:vgpr_32 = nofpexcept V_RCP_F32_e32 %6652:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126960B	  %6650:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6649:vgpr_32, 0, %6643:vgpr_32, 0, %6648:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126976B	  %6651:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6650:vgpr_32, 0, %6313:vgpr_32, 0, %6263:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126992B	  %6655:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6652:vgpr_32, 0, %6656:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127024B	  %6656:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6655:vgpr_32, %6656:vgpr_32, %6656:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127040B	  %6657:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6264:vgpr_32, 0, %6313:vgpr_32, 0, %6264:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127056B	  %6661:vgpr_32 = nofpexcept V_MUL_F32_e32 %6657:vgpr_32, %6656:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127072B	  %6660:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6652:vgpr_32, 0, %6661:vgpr_32, 0, %6657:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127104B	  %6661:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6660:vgpr_32, %6656:vgpr_32, %6661:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127120B	  %6662:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6652:vgpr_32, 0, %6661:vgpr_32, 0, %6657:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127184B	  %6665:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6265:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127200B	  %6669:vgpr_32 = nofpexcept V_RCP_F32_e32 %6665:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127232B	  %6663:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6662:vgpr_32, 0, %6656:vgpr_32, 0, %6661:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127248B	  %6664:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6663:vgpr_32, 0, %6313:vgpr_32, 0, %6264:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127264B	  %6668:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6665:vgpr_32, 0, %6669:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127296B	  %6669:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6668:vgpr_32, %6669:vgpr_32, %6669:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127312B	  %6670:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6265:vgpr_32, 0, %6313:vgpr_32, 0, %6265:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127328B	  %6674:vgpr_32 = nofpexcept V_MUL_F32_e32 %6670:vgpr_32, %6669:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127344B	  %6673:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6665:vgpr_32, 0, %6674:vgpr_32, 0, %6670:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127376B	  %6674:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6673:vgpr_32, %6669:vgpr_32, %6674:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127392B	  %6675:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6665:vgpr_32, 0, %6674:vgpr_32, 0, %6670:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127456B	  %6678:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6266:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127472B	  %6682:vgpr_32 = nofpexcept V_RCP_F32_e32 %6678:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127504B	  %6676:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6675:vgpr_32, 0, %6669:vgpr_32, 0, %6674:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127520B	  %6677:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6676:vgpr_32, 0, %6313:vgpr_32, 0, %6265:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127536B	  %6681:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6678:vgpr_32, 0, %6682:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127568B	  %6682:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6681:vgpr_32, %6682:vgpr_32, %6682:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127584B	  %6683:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6266:vgpr_32, 0, %6313:vgpr_32, 0, %6266:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127600B	  %6687:vgpr_32 = nofpexcept V_MUL_F32_e32 %6683:vgpr_32, %6682:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127616B	  %6686:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6678:vgpr_32, 0, %6687:vgpr_32, 0, %6683:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127648B	  %6687:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6686:vgpr_32, %6682:vgpr_32, %6687:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127664B	  %6688:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6678:vgpr_32, 0, %6687:vgpr_32, 0, %6683:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127728B	  %6691:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6267:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127744B	  %6695:vgpr_32 = nofpexcept V_RCP_F32_e32 %6691:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127776B	  %6689:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6688:vgpr_32, 0, %6682:vgpr_32, 0, %6687:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127792B	  %6690:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6689:vgpr_32, 0, %6313:vgpr_32, 0, %6266:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127808B	  %6694:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6691:vgpr_32, 0, %6695:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127840B	  %6695:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6694:vgpr_32, %6695:vgpr_32, %6695:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127856B	  %6696:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6267:vgpr_32, 0, %6313:vgpr_32, 0, %6267:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127872B	  %6700:vgpr_32 = nofpexcept V_MUL_F32_e32 %6696:vgpr_32, %6695:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127888B	  %6699:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6691:vgpr_32, 0, %6700:vgpr_32, 0, %6696:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127920B	  %6700:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6699:vgpr_32, %6695:vgpr_32, %6700:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127936B	  %6701:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6691:vgpr_32, 0, %6700:vgpr_32, 0, %6696:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128000B	  %6704:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6268:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128016B	  %6708:vgpr_32 = nofpexcept V_RCP_F32_e32 %6704:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128048B	  %6702:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6701:vgpr_32, 0, %6695:vgpr_32, 0, %6700:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128064B	  %6703:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6702:vgpr_32, 0, %6313:vgpr_32, 0, %6267:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128080B	  %6707:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6704:vgpr_32, 0, %6708:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128112B	  %6708:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6707:vgpr_32, %6708:vgpr_32, %6708:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128128B	  %6709:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6268:vgpr_32, 0, %6313:vgpr_32, 0, %6268:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128144B	  %6713:vgpr_32 = nofpexcept V_MUL_F32_e32 %6709:vgpr_32, %6708:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128160B	  %6712:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6704:vgpr_32, 0, %6713:vgpr_32, 0, %6709:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128192B	  %6713:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6712:vgpr_32, %6708:vgpr_32, %6713:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128208B	  %6714:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6704:vgpr_32, 0, %6713:vgpr_32, 0, %6709:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128272B	  %6717:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6269:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128288B	  %6721:vgpr_32 = nofpexcept V_RCP_F32_e32 %6717:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128320B	  %6715:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6714:vgpr_32, 0, %6708:vgpr_32, 0, %6713:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128336B	  %6716:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6715:vgpr_32, 0, %6313:vgpr_32, 0, %6268:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128352B	  %6720:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6717:vgpr_32, 0, %6721:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128384B	  %6721:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6720:vgpr_32, %6721:vgpr_32, %6721:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128400B	  %6722:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6269:vgpr_32, 0, %6313:vgpr_32, 0, %6269:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128416B	  %6726:vgpr_32 = nofpexcept V_MUL_F32_e32 %6722:vgpr_32, %6721:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128432B	  %6725:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6717:vgpr_32, 0, %6726:vgpr_32, 0, %6722:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128464B	  %6726:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6725:vgpr_32, %6721:vgpr_32, %6726:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128480B	  %6727:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6717:vgpr_32, 0, %6726:vgpr_32, 0, %6722:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128544B	  %6730:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6270:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128560B	  %6734:vgpr_32 = nofpexcept V_RCP_F32_e32 %6730:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128592B	  %6728:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6727:vgpr_32, 0, %6721:vgpr_32, 0, %6726:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128608B	  %6729:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6728:vgpr_32, 0, %6313:vgpr_32, 0, %6269:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128624B	  %6733:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6730:vgpr_32, 0, %6734:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128656B	  %6734:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6733:vgpr_32, %6734:vgpr_32, %6734:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128672B	  %6735:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6270:vgpr_32, 0, %6313:vgpr_32, 0, %6270:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128688B	  %6739:vgpr_32 = nofpexcept V_MUL_F32_e32 %6735:vgpr_32, %6734:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128704B	  %6738:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6730:vgpr_32, 0, %6739:vgpr_32, 0, %6735:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128736B	  %6739:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6738:vgpr_32, %6734:vgpr_32, %6739:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128752B	  %6740:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6730:vgpr_32, 0, %6739:vgpr_32, 0, %6735:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128816B	  %6743:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6271:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128832B	  %6747:vgpr_32 = nofpexcept V_RCP_F32_e32 %6743:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128864B	  %6741:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6740:vgpr_32, 0, %6734:vgpr_32, 0, %6739:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128880B	  %6742:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6741:vgpr_32, 0, %6313:vgpr_32, 0, %6270:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128896B	  %6746:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6743:vgpr_32, 0, %6747:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128928B	  %6747:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6746:vgpr_32, %6747:vgpr_32, %6747:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128944B	  %6748:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6271:vgpr_32, 0, %6313:vgpr_32, 0, %6271:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128960B	  %6752:vgpr_32 = nofpexcept V_MUL_F32_e32 %6748:vgpr_32, %6747:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128976B	  %6751:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6743:vgpr_32, 0, %6752:vgpr_32, 0, %6748:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129008B	  %6752:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6751:vgpr_32, %6747:vgpr_32, %6752:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129024B	  %6753:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6743:vgpr_32, 0, %6752:vgpr_32, 0, %6748:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129088B	  %6756:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6272:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129104B	  %6760:vgpr_32 = nofpexcept V_RCP_F32_e32 %6756:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129136B	  %6754:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6753:vgpr_32, 0, %6747:vgpr_32, 0, %6752:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129152B	  %6755:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6754:vgpr_32, 0, %6313:vgpr_32, 0, %6271:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129168B	  %6759:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6756:vgpr_32, 0, %6760:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129200B	  %6760:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6759:vgpr_32, %6760:vgpr_32, %6760:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129216B	  %6761:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6272:vgpr_32, 0, %6313:vgpr_32, 0, %6272:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129232B	  %6765:vgpr_32 = nofpexcept V_MUL_F32_e32 %6761:vgpr_32, %6760:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129248B	  %6764:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6756:vgpr_32, 0, %6765:vgpr_32, 0, %6761:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129280B	  %6765:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6764:vgpr_32, %6760:vgpr_32, %6765:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129296B	  %6766:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6756:vgpr_32, 0, %6765:vgpr_32, 0, %6761:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129360B	  %6769:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129376B	  %6773:vgpr_32 = nofpexcept V_RCP_F32_e32 %6769:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129408B	  %6767:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6766:vgpr_32, 0, %6760:vgpr_32, 0, %6765:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129424B	  %6768:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6767:vgpr_32, 0, %6313:vgpr_32, 0, %6272:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129440B	  %6772:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6769:vgpr_32, 0, %6773:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129472B	  %6773:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6772:vgpr_32, %6773:vgpr_32, %6773:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129488B	  %6774:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6273:vgpr_32, 0, %6313:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129504B	  %6778:vgpr_32 = nofpexcept V_MUL_F32_e32 %6774:vgpr_32, %6773:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129520B	  %6777:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6769:vgpr_32, 0, %6778:vgpr_32, 0, %6774:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129552B	  %6778:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6777:vgpr_32, %6773:vgpr_32, %6778:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129568B	  %6779:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6769:vgpr_32, 0, %6778:vgpr_32, 0, %6774:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129632B	  %6782:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6274:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129648B	  %6786:vgpr_32 = nofpexcept V_RCP_F32_e32 %6782:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129680B	  %6780:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6779:vgpr_32, 0, %6773:vgpr_32, 0, %6778:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129696B	  %6781:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6780:vgpr_32, 0, %6313:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129712B	  %6785:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6782:vgpr_32, 0, %6786:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129744B	  %6786:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6785:vgpr_32, %6786:vgpr_32, %6786:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129760B	  %6787:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6274:vgpr_32, 0, %6313:vgpr_32, 0, %6274:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129776B	  %6791:vgpr_32 = nofpexcept V_MUL_F32_e32 %6787:vgpr_32, %6786:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129792B	  %6790:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6782:vgpr_32, 0, %6791:vgpr_32, 0, %6787:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129824B	  %6791:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6790:vgpr_32, %6786:vgpr_32, %6791:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129840B	  %6792:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6782:vgpr_32, 0, %6791:vgpr_32, 0, %6787:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129904B	  %6795:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6275:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129920B	  %6799:vgpr_32 = nofpexcept V_RCP_F32_e32 %6795:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129952B	  %6793:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6792:vgpr_32, 0, %6786:vgpr_32, 0, %6791:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129968B	  %6794:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6793:vgpr_32, 0, %6313:vgpr_32, 0, %6274:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129984B	  %6798:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6795:vgpr_32, 0, %6799:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130016B	  %6799:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6798:vgpr_32, %6799:vgpr_32, %6799:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130032B	  %6800:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6275:vgpr_32, 0, %6313:vgpr_32, 0, %6275:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130048B	  %6804:vgpr_32 = nofpexcept V_MUL_F32_e32 %6800:vgpr_32, %6799:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130064B	  %6803:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6795:vgpr_32, 0, %6804:vgpr_32, 0, %6800:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130096B	  %6804:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6803:vgpr_32, %6799:vgpr_32, %6804:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130112B	  %6805:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6795:vgpr_32, 0, %6804:vgpr_32, 0, %6800:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130176B	  %6808:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6276:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130192B	  %6812:vgpr_32 = nofpexcept V_RCP_F32_e32 %6808:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130224B	  %6806:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6805:vgpr_32, 0, %6799:vgpr_32, 0, %6804:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130240B	  %6807:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6806:vgpr_32, 0, %6313:vgpr_32, 0, %6275:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130256B	  %6811:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6808:vgpr_32, 0, %6812:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130288B	  %6812:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6811:vgpr_32, %6812:vgpr_32, %6812:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130304B	  %6813:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6276:vgpr_32, 0, %6313:vgpr_32, 0, %6276:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130320B	  %6817:vgpr_32 = nofpexcept V_MUL_F32_e32 %6813:vgpr_32, %6812:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130336B	  %6816:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6808:vgpr_32, 0, %6817:vgpr_32, 0, %6813:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130368B	  %6817:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6816:vgpr_32, %6812:vgpr_32, %6817:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130384B	  %6818:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6808:vgpr_32, 0, %6817:vgpr_32, 0, %6813:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130448B	  %6821:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6277:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130464B	  %6825:vgpr_32 = nofpexcept V_RCP_F32_e32 %6821:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130496B	  %6819:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6818:vgpr_32, 0, %6812:vgpr_32, 0, %6817:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130512B	  %6820:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6819:vgpr_32, 0, %6313:vgpr_32, 0, %6276:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130528B	  %6824:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6821:vgpr_32, 0, %6825:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130560B	  %6825:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6824:vgpr_32, %6825:vgpr_32, %6825:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130576B	  %6826:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6277:vgpr_32, 0, %6313:vgpr_32, 0, %6277:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130592B	  %6830:vgpr_32 = nofpexcept V_MUL_F32_e32 %6826:vgpr_32, %6825:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130608B	  %6829:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6821:vgpr_32, 0, %6830:vgpr_32, 0, %6826:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130640B	  %6830:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6829:vgpr_32, %6825:vgpr_32, %6830:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130656B	  %6831:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6821:vgpr_32, 0, %6830:vgpr_32, 0, %6826:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130720B	  %6834:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6278:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130736B	  %6838:vgpr_32 = nofpexcept V_RCP_F32_e32 %6834:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130768B	  %6832:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6831:vgpr_32, 0, %6825:vgpr_32, 0, %6830:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130784B	  %6833:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6832:vgpr_32, 0, %6313:vgpr_32, 0, %6277:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130800B	  %6837:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6834:vgpr_32, 0, %6838:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130832B	  %6838:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6837:vgpr_32, %6838:vgpr_32, %6838:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130848B	  %6839:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6278:vgpr_32, 0, %6313:vgpr_32, 0, %6278:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130864B	  %6843:vgpr_32 = nofpexcept V_MUL_F32_e32 %6839:vgpr_32, %6838:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130880B	  %6842:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6834:vgpr_32, 0, %6843:vgpr_32, 0, %6839:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130912B	  %6843:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6842:vgpr_32, %6838:vgpr_32, %6843:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130928B	  %6844:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6834:vgpr_32, 0, %6843:vgpr_32, 0, %6839:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130992B	  %6847:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6279:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131008B	  %6851:vgpr_32 = nofpexcept V_RCP_F32_e32 %6847:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131040B	  %6845:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6844:vgpr_32, 0, %6838:vgpr_32, 0, %6843:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131056B	  %6846:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6845:vgpr_32, 0, %6313:vgpr_32, 0, %6278:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131072B	  %6850:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6847:vgpr_32, 0, %6851:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131104B	  %6851:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6850:vgpr_32, %6851:vgpr_32, %6851:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131120B	  %6852:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6279:vgpr_32, 0, %6313:vgpr_32, 0, %6279:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131136B	  %6856:vgpr_32 = nofpexcept V_MUL_F32_e32 %6852:vgpr_32, %6851:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131152B	  %6855:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6847:vgpr_32, 0, %6856:vgpr_32, 0, %6852:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131184B	  %6856:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6855:vgpr_32, %6851:vgpr_32, %6856:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131200B	  %6857:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6847:vgpr_32, 0, %6856:vgpr_32, 0, %6852:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131264B	  %6860:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6280:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131280B	  %6864:vgpr_32 = nofpexcept V_RCP_F32_e32 %6860:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131312B	  %6858:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6857:vgpr_32, 0, %6851:vgpr_32, 0, %6856:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131328B	  %6859:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6858:vgpr_32, 0, %6313:vgpr_32, 0, %6279:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131344B	  %6863:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6860:vgpr_32, 0, %6864:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131376B	  %6864:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6863:vgpr_32, %6864:vgpr_32, %6864:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131392B	  %6865:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6280:vgpr_32, 0, %6313:vgpr_32, 0, %6280:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131408B	  %6869:vgpr_32 = nofpexcept V_MUL_F32_e32 %6865:vgpr_32, %6864:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131424B	  %6868:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6860:vgpr_32, 0, %6869:vgpr_32, 0, %6865:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131456B	  %6869:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6868:vgpr_32, %6864:vgpr_32, %6869:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131472B	  %6870:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6860:vgpr_32, 0, %6869:vgpr_32, 0, %6865:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131536B	  %6873:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6281:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131552B	  %6877:vgpr_32 = nofpexcept V_RCP_F32_e32 %6873:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131584B	  %6871:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6870:vgpr_32, 0, %6864:vgpr_32, 0, %6869:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131600B	  %6872:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6871:vgpr_32, 0, %6313:vgpr_32, 0, %6280:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131616B	  %6876:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6873:vgpr_32, 0, %6877:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131648B	  %6877:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6876:vgpr_32, %6877:vgpr_32, %6877:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131664B	  %6878:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6281:vgpr_32, 0, %6313:vgpr_32, 0, %6281:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131680B	  %6882:vgpr_32 = nofpexcept V_MUL_F32_e32 %6878:vgpr_32, %6877:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131696B	  %6881:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6873:vgpr_32, 0, %6882:vgpr_32, 0, %6878:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131728B	  %6882:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6881:vgpr_32, %6877:vgpr_32, %6882:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131744B	  %6883:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6873:vgpr_32, 0, %6882:vgpr_32, 0, %6878:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131808B	  %6886:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6282:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131824B	  %6890:vgpr_32 = nofpexcept V_RCP_F32_e32 %6886:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131856B	  %6884:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6883:vgpr_32, 0, %6877:vgpr_32, 0, %6882:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131872B	  %6885:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6884:vgpr_32, 0, %6313:vgpr_32, 0, %6281:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131888B	  %6889:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6886:vgpr_32, 0, %6890:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131920B	  %6890:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6889:vgpr_32, %6890:vgpr_32, %6890:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131936B	  %6891:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6282:vgpr_32, 0, %6313:vgpr_32, 0, %6282:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131952B	  %6895:vgpr_32 = nofpexcept V_MUL_F32_e32 %6891:vgpr_32, %6890:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131968B	  %6894:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6886:vgpr_32, 0, %6895:vgpr_32, 0, %6891:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132000B	  %6895:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6894:vgpr_32, %6890:vgpr_32, %6895:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132016B	  %6896:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6886:vgpr_32, 0, %6895:vgpr_32, 0, %6891:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132080B	  %6899:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6283:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132096B	  %6903:vgpr_32 = nofpexcept V_RCP_F32_e32 %6899:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132128B	  %6897:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6896:vgpr_32, 0, %6890:vgpr_32, 0, %6895:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132144B	  %6898:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6897:vgpr_32, 0, %6313:vgpr_32, 0, %6282:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132160B	  %6902:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6899:vgpr_32, 0, %6903:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132192B	  %6903:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6902:vgpr_32, %6903:vgpr_32, %6903:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132208B	  %6904:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6283:vgpr_32, 0, %6313:vgpr_32, 0, %6283:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132224B	  %6908:vgpr_32 = nofpexcept V_MUL_F32_e32 %6904:vgpr_32, %6903:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132240B	  %6907:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6899:vgpr_32, 0, %6908:vgpr_32, 0, %6904:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132272B	  %6908:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6907:vgpr_32, %6903:vgpr_32, %6908:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132288B	  %6909:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6899:vgpr_32, 0, %6908:vgpr_32, 0, %6904:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132352B	  %6912:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6284:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132368B	  %6916:vgpr_32 = nofpexcept V_RCP_F32_e32 %6912:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132400B	  %6910:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6909:vgpr_32, 0, %6903:vgpr_32, 0, %6908:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132416B	  %6911:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6910:vgpr_32, 0, %6313:vgpr_32, 0, %6283:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132432B	  %6915:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6912:vgpr_32, 0, %6916:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132464B	  %6916:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6915:vgpr_32, %6916:vgpr_32, %6916:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132480B	  %6917:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6284:vgpr_32, 0, %6313:vgpr_32, 0, %6284:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132496B	  %6921:vgpr_32 = nofpexcept V_MUL_F32_e32 %6917:vgpr_32, %6916:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132512B	  %6920:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6912:vgpr_32, 0, %6921:vgpr_32, 0, %6917:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132544B	  %6921:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6920:vgpr_32, %6916:vgpr_32, %6921:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132560B	  %6922:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6912:vgpr_32, 0, %6921:vgpr_32, 0, %6917:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132624B	  %6925:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6285:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132640B	  %6929:vgpr_32 = nofpexcept V_RCP_F32_e32 %6925:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132672B	  %6923:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6922:vgpr_32, 0, %6916:vgpr_32, 0, %6921:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132688B	  %6924:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6923:vgpr_32, 0, %6313:vgpr_32, 0, %6284:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132704B	  %6928:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6925:vgpr_32, 0, %6929:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132736B	  %6929:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6928:vgpr_32, %6929:vgpr_32, %6929:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132752B	  %6930:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6285:vgpr_32, 0, %6313:vgpr_32, 0, %6285:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132768B	  %6934:vgpr_32 = nofpexcept V_MUL_F32_e32 %6930:vgpr_32, %6929:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132784B	  %6933:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6925:vgpr_32, 0, %6934:vgpr_32, 0, %6930:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132816B	  %6934:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6933:vgpr_32, %6929:vgpr_32, %6934:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132832B	  %6935:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6925:vgpr_32, 0, %6934:vgpr_32, 0, %6930:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132896B	  %6938:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132912B	  %6942:vgpr_32 = nofpexcept V_RCP_F32_e32 %6938:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132944B	  %6936:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6935:vgpr_32, 0, %6929:vgpr_32, 0, %6934:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132960B	  %6937:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6936:vgpr_32, 0, %6313:vgpr_32, 0, %6285:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132976B	  %6941:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6938:vgpr_32, 0, %6942:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133008B	  %6942:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6941:vgpr_32, %6942:vgpr_32, %6942:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133024B	  %6943:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6286:vgpr_32, 0, %6313:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133040B	  %6947:vgpr_32 = nofpexcept V_MUL_F32_e32 %6943:vgpr_32, %6942:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133056B	  %6946:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6938:vgpr_32, 0, %6947:vgpr_32, 0, %6943:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133088B	  %6947:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6946:vgpr_32, %6942:vgpr_32, %6947:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133104B	  %6948:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6938:vgpr_32, 0, %6947:vgpr_32, 0, %6943:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133168B	  %6951:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6287:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133184B	  %6955:vgpr_32 = nofpexcept V_RCP_F32_e32 %6951:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133216B	  %6949:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6948:vgpr_32, 0, %6942:vgpr_32, 0, %6947:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133232B	  %6950:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6949:vgpr_32, 0, %6313:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133248B	  %6954:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6951:vgpr_32, 0, %6955:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133280B	  %6955:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6954:vgpr_32, %6955:vgpr_32, %6955:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133296B	  %6956:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6287:vgpr_32, 0, %6313:vgpr_32, 0, %6287:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133312B	  %6960:vgpr_32 = nofpexcept V_MUL_F32_e32 %6956:vgpr_32, %6955:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133328B	  %6959:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6951:vgpr_32, 0, %6960:vgpr_32, 0, %6956:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133360B	  %6960:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6959:vgpr_32, %6955:vgpr_32, %6960:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133376B	  %6961:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6951:vgpr_32, 0, %6960:vgpr_32, 0, %6956:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133440B	  %6964:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6288:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133456B	  %6968:vgpr_32 = nofpexcept V_RCP_F32_e32 %6964:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133488B	  %6962:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6961:vgpr_32, 0, %6955:vgpr_32, 0, %6960:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133504B	  %6963:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6962:vgpr_32, 0, %6313:vgpr_32, 0, %6287:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133520B	  %6967:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6964:vgpr_32, 0, %6968:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133552B	  %6968:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6967:vgpr_32, %6968:vgpr_32, %6968:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133568B	  %6969:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6288:vgpr_32, 0, %6313:vgpr_32, 0, %6288:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133584B	  %6973:vgpr_32 = nofpexcept V_MUL_F32_e32 %6969:vgpr_32, %6968:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133600B	  %6972:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6964:vgpr_32, 0, %6973:vgpr_32, 0, %6969:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133632B	  %6973:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6972:vgpr_32, %6968:vgpr_32, %6973:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133648B	  %6974:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6964:vgpr_32, 0, %6973:vgpr_32, 0, %6969:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133712B	  %6977:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6289:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133728B	  %6981:vgpr_32 = nofpexcept V_RCP_F32_e32 %6977:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133760B	  %6975:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6974:vgpr_32, 0, %6968:vgpr_32, 0, %6973:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133776B	  %6976:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6975:vgpr_32, 0, %6313:vgpr_32, 0, %6288:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133792B	  %6980:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6977:vgpr_32, 0, %6981:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133824B	  %6981:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6980:vgpr_32, %6981:vgpr_32, %6981:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133840B	  %6982:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6289:vgpr_32, 0, %6313:vgpr_32, 0, %6289:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133856B	  %6986:vgpr_32 = nofpexcept V_MUL_F32_e32 %6982:vgpr_32, %6981:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133872B	  %6985:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6977:vgpr_32, 0, %6986:vgpr_32, 0, %6982:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133904B	  %6986:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6985:vgpr_32, %6981:vgpr_32, %6986:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133920B	  %6987:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6977:vgpr_32, 0, %6986:vgpr_32, 0, %6982:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133984B	  %6990:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6290:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134000B	  %6994:vgpr_32 = nofpexcept V_RCP_F32_e32 %6990:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134032B	  %6988:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6987:vgpr_32, 0, %6981:vgpr_32, 0, %6986:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134048B	  %6989:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6988:vgpr_32, 0, %6313:vgpr_32, 0, %6289:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134064B	  %6993:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6990:vgpr_32, 0, %6994:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134096B	  %6994:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6993:vgpr_32, %6994:vgpr_32, %6994:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134112B	  %6995:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6290:vgpr_32, 0, %6313:vgpr_32, 0, %6290:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134128B	  %6999:vgpr_32 = nofpexcept V_MUL_F32_e32 %6995:vgpr_32, %6994:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134144B	  %6998:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6990:vgpr_32, 0, %6999:vgpr_32, 0, %6995:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134176B	  %6999:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6998:vgpr_32, %6994:vgpr_32, %6999:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134192B	  %7000:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6990:vgpr_32, 0, %6999:vgpr_32, 0, %6995:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134256B	  %7003:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6291:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134272B	  %7007:vgpr_32 = nofpexcept V_RCP_F32_e32 %7003:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134304B	  %7001:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7000:vgpr_32, 0, %6994:vgpr_32, 0, %6999:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134320B	  %7002:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7001:vgpr_32, 0, %6313:vgpr_32, 0, %6290:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134336B	  %7006:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7003:vgpr_32, 0, %7007:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134368B	  %7007:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7006:vgpr_32, %7007:vgpr_32, %7007:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134384B	  %7008:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6291:vgpr_32, 0, %6313:vgpr_32, 0, %6291:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134400B	  %7012:vgpr_32 = nofpexcept V_MUL_F32_e32 %7008:vgpr_32, %7007:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134416B	  %7011:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7003:vgpr_32, 0, %7012:vgpr_32, 0, %7008:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134448B	  %7012:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7011:vgpr_32, %7007:vgpr_32, %7012:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134464B	  %7013:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7003:vgpr_32, 0, %7012:vgpr_32, 0, %7008:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134528B	  %7016:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6292:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134544B	  %7020:vgpr_32 = nofpexcept V_RCP_F32_e32 %7016:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134576B	  %7014:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7013:vgpr_32, 0, %7007:vgpr_32, 0, %7012:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134592B	  %7015:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7014:vgpr_32, 0, %6313:vgpr_32, 0, %6291:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134608B	  %7019:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7016:vgpr_32, 0, %7020:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134640B	  %7020:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7019:vgpr_32, %7020:vgpr_32, %7020:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134656B	  %7021:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6292:vgpr_32, 0, %6313:vgpr_32, 0, %6292:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134672B	  %7025:vgpr_32 = nofpexcept V_MUL_F32_e32 %7021:vgpr_32, %7020:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134688B	  %7024:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7016:vgpr_32, 0, %7025:vgpr_32, 0, %7021:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134720B	  %7025:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7024:vgpr_32, %7020:vgpr_32, %7025:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134736B	  %7026:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7016:vgpr_32, 0, %7025:vgpr_32, 0, %7021:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134800B	  %7029:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6293:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134816B	  %7033:vgpr_32 = nofpexcept V_RCP_F32_e32 %7029:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134848B	  %7027:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7026:vgpr_32, 0, %7020:vgpr_32, 0, %7025:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134864B	  %7028:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7027:vgpr_32, 0, %6313:vgpr_32, 0, %6292:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134880B	  %7032:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7029:vgpr_32, 0, %7033:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134912B	  %7033:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7032:vgpr_32, %7033:vgpr_32, %7033:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134928B	  %7034:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6293:vgpr_32, 0, %6313:vgpr_32, 0, %6293:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134944B	  %7038:vgpr_32 = nofpexcept V_MUL_F32_e32 %7034:vgpr_32, %7033:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134960B	  %7037:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7029:vgpr_32, 0, %7038:vgpr_32, 0, %7034:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134992B	  %7038:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7037:vgpr_32, %7033:vgpr_32, %7038:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135008B	  %7039:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7029:vgpr_32, 0, %7038:vgpr_32, 0, %7034:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135072B	  %7042:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135088B	  %7046:vgpr_32 = nofpexcept V_RCP_F32_e32 %7042:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135120B	  %7040:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7039:vgpr_32, 0, %7033:vgpr_32, 0, %7038:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135136B	  %7041:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7040:vgpr_32, 0, %6313:vgpr_32, 0, %6293:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135152B	  %7045:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7042:vgpr_32, 0, %7046:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135184B	  %7046:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7045:vgpr_32, %7046:vgpr_32, %7046:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135200B	  %7047:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6294:vgpr_32, 0, %6313:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135216B	  %7051:vgpr_32 = nofpexcept V_MUL_F32_e32 %7047:vgpr_32, %7046:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135232B	  %7050:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7042:vgpr_32, 0, %7051:vgpr_32, 0, %7047:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135264B	  %7051:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7050:vgpr_32, %7046:vgpr_32, %7051:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135280B	  %7052:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7042:vgpr_32, 0, %7051:vgpr_32, 0, %7047:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135344B	  %7055:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135360B	  %7059:vgpr_32 = nofpexcept V_RCP_F32_e32 %7055:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135392B	  %7053:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7052:vgpr_32, 0, %7046:vgpr_32, 0, %7051:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135408B	  %7054:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7053:vgpr_32, 0, %6313:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135424B	  %7058:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7055:vgpr_32, 0, %7059:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135456B	  %7059:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7058:vgpr_32, %7059:vgpr_32, %7059:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135472B	  %7060:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6295:vgpr_32, 0, %6313:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135488B	  %7064:vgpr_32 = nofpexcept V_MUL_F32_e32 %7060:vgpr_32, %7059:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135504B	  %7063:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7055:vgpr_32, 0, %7064:vgpr_32, 0, %7060:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135536B	  %7064:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7063:vgpr_32, %7059:vgpr_32, %7064:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135552B	  %7065:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7055:vgpr_32, 0, %7064:vgpr_32, 0, %7060:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135616B	  %7068:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135632B	  %7072:vgpr_32 = nofpexcept V_RCP_F32_e32 %7068:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135664B	  %7066:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7065:vgpr_32, 0, %7059:vgpr_32, 0, %7064:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135680B	  %7067:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7066:vgpr_32, 0, %6313:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135696B	  %7071:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7068:vgpr_32, 0, %7072:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135728B	  %7072:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7071:vgpr_32, %7072:vgpr_32, %7072:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135744B	  %7073:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6296:vgpr_32, 0, %6313:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135760B	  %7077:vgpr_32 = nofpexcept V_MUL_F32_e32 %7073:vgpr_32, %7072:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135776B	  %7076:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7068:vgpr_32, 0, %7077:vgpr_32, 0, %7073:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135808B	  %7077:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7076:vgpr_32, %7072:vgpr_32, %7077:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135824B	  %7078:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7068:vgpr_32, 0, %7077:vgpr_32, 0, %7073:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135888B	  %7081:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135904B	  %7085:vgpr_32 = nofpexcept V_RCP_F32_e32 %7081:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135936B	  %7079:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7078:vgpr_32, 0, %7072:vgpr_32, 0, %7077:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135952B	  %7080:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7079:vgpr_32, 0, %6313:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135968B	  %7084:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7081:vgpr_32, 0, %7085:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136000B	  %7085:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7084:vgpr_32, %7085:vgpr_32, %7085:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136016B	  %7086:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6297:vgpr_32, 0, %6313:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136032B	  %7090:vgpr_32 = nofpexcept V_MUL_F32_e32 %7086:vgpr_32, %7085:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136048B	  %7089:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7081:vgpr_32, 0, %7090:vgpr_32, 0, %7086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136080B	  %7090:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7089:vgpr_32, %7085:vgpr_32, %7090:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136096B	  %7091:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7081:vgpr_32, 0, %7090:vgpr_32, 0, %7086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136160B	  %7094:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136176B	  %7098:vgpr_32 = nofpexcept V_RCP_F32_e32 %7094:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136208B	  %7092:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7091:vgpr_32, 0, %7085:vgpr_32, 0, %7090:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136224B	  %7093:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7092:vgpr_32, 0, %6313:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136240B	  %7097:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7094:vgpr_32, 0, %7098:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136272B	  %7098:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7097:vgpr_32, %7098:vgpr_32, %7098:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136288B	  %7099:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6298:vgpr_32, 0, %6313:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136304B	  %7103:vgpr_32 = nofpexcept V_MUL_F32_e32 %7099:vgpr_32, %7098:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136320B	  %7102:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7094:vgpr_32, 0, %7103:vgpr_32, 0, %7099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136352B	  %7103:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7102:vgpr_32, %7098:vgpr_32, %7103:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136368B	  %7104:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7094:vgpr_32, 0, %7103:vgpr_32, 0, %7099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136432B	  %7107:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136448B	  %7111:vgpr_32 = nofpexcept V_RCP_F32_e32 %7107:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136480B	  %7105:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7104:vgpr_32, 0, %7098:vgpr_32, 0, %7103:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136496B	  %7106:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7105:vgpr_32, 0, %6313:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136512B	  %7110:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7107:vgpr_32, 0, %7111:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136544B	  %7111:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7110:vgpr_32, %7111:vgpr_32, %7111:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136560B	  %7112:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6299:vgpr_32, 0, %6313:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136576B	  %7116:vgpr_32 = nofpexcept V_MUL_F32_e32 %7112:vgpr_32, %7111:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136592B	  %7115:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7107:vgpr_32, 0, %7116:vgpr_32, 0, %7112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136624B	  %7116:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7115:vgpr_32, %7111:vgpr_32, %7116:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136640B	  %7117:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7107:vgpr_32, 0, %7116:vgpr_32, 0, %7112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136704B	  %7120:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136720B	  %7124:vgpr_32 = nofpexcept V_RCP_F32_e32 %7120:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136752B	  %7118:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7117:vgpr_32, 0, %7111:vgpr_32, 0, %7116:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136768B	  %7119:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7118:vgpr_32, 0, %6313:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136784B	  %7123:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7120:vgpr_32, 0, %7124:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136816B	  %7124:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7123:vgpr_32, %7124:vgpr_32, %7124:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136832B	  %7125:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6300:vgpr_32, 0, %6313:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136848B	  %7129:vgpr_32 = nofpexcept V_MUL_F32_e32 %7125:vgpr_32, %7124:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136864B	  %7128:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7120:vgpr_32, 0, %7129:vgpr_32, 0, %7125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136896B	  %7129:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7128:vgpr_32, %7124:vgpr_32, %7129:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136912B	  %7130:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7120:vgpr_32, 0, %7129:vgpr_32, 0, %7125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136976B	  %7133:vgpr_32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6313:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136992B	  %7137:vgpr_32 = nofpexcept V_RCP_F32_e32 %7133:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137024B	  %7131:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7130:vgpr_32, 0, %7124:vgpr_32, 0, %7129:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137040B	  %7132:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7131:vgpr_32, 0, %6313:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137056B	  %7136:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7133:vgpr_32, 0, %7137:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137088B	  %7137:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7136:vgpr_32, %7137:vgpr_32, %7137:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137104B	  %7138:vgpr_32, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, %6301:vgpr_32, 0, %6313:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137120B	  %7142:vgpr_32 = nofpexcept V_MUL_F32_e32 %7138:vgpr_32, %7137:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137136B	  %7141:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7133:vgpr_32, 0, %7142:vgpr_32, 0, %7138:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137168B	  %7142:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7141:vgpr_32, %7137:vgpr_32, %7142:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137184B	  %7143:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7133:vgpr_32, 0, %7142:vgpr_32, 0, %7138:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137216B	  %7144:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7143:vgpr_32, 0, %7137:vgpr_32, 0, %7142:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137232B	  %7145:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7144:vgpr_32, 0, %6313:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137248B	  undef %8373.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6326:vgpr_32, 0, %6339:vgpr_32, 0, 1065353216, undef %8373.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137280B	  undef %8373.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6352:vgpr_32, 0, %6365:vgpr_32, 0, 1065353216, %8373.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137296B	  undef %8371.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6378:vgpr_32, 0, %6391:vgpr_32, 0, 1065353216, undef %8371.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137328B	  undef %8371.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6404:vgpr_32, 0, %6417:vgpr_32, 0, 1065353216, %8371.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137344B	  undef %8372.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6430:vgpr_32, 0, %6443:vgpr_32, 0, 1065353216, undef %8372.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137376B	  undef %8372.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6456:vgpr_32, 0, %6469:vgpr_32, 0, 1065353216, %8372.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137392B	  undef %8370.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6482:vgpr_32, 0, %6495:vgpr_32, 0, 1065353216, undef %8370.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137424B	  undef %8370.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6508:vgpr_32, 0, %6521:vgpr_32, 0, 1065353216, %8370.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137440B	  %8373.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6534:vgpr_32, 0, %6547:vgpr_32, 0, 1065353216, undef %8373.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137472B	  %8373.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6560:vgpr_32, 0, %6573:vgpr_32, 0, 1065353216, %8373.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137488B	  %8371.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6586:vgpr_32, 0, %6599:vgpr_32, 0, 1065353216, undef %8371.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137520B	  %8371.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6612:vgpr_32, 0, %6625:vgpr_32, 0, 1065353216, %8371.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137536B	  %8372.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6638:vgpr_32, 0, %6651:vgpr_32, 0, 1065353216, undef %8372.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137568B	  %8372.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6664:vgpr_32, 0, %6677:vgpr_32, 0, 1065353216, %8372.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137584B	  %8370.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6690:vgpr_32, 0, %6703:vgpr_32, 0, 1065353216, undef %8370.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137616B	  %8370.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6716:vgpr_32, 0, %6729:vgpr_32, 0, 1065353216, %8370.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137632B	  %8373.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6742:vgpr_32, 0, %6755:vgpr_32, 0, 1065353216, undef %8373.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137664B	  %8373.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6768:vgpr_32, 0, %6781:vgpr_32, 0, 1065353216, %8373.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137680B	  %8371.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6794:vgpr_32, 0, %6807:vgpr_32, 0, 1065353216, undef %8371.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137712B	  %8371.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6820:vgpr_32, 0, %6833:vgpr_32, 0, 1065353216, %8371.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137728B	  %8372.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6846:vgpr_32, 0, %6859:vgpr_32, 0, 1065353216, undef %8372.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137760B	  %8372.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6872:vgpr_32, 0, %6885:vgpr_32, 0, 1065353216, %8372.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137776B	  %8370.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6898:vgpr_32, 0, %6911:vgpr_32, 0, 1065353216, undef %8370.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137808B	  %8370.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6924:vgpr_32, 0, %6937:vgpr_32, 0, 1065353216, %8370.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137824B	  %8373.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6950:vgpr_32, 0, %6963:vgpr_32, 0, 1065353216, undef %8373.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137856B	  %8373.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6976:vgpr_32, 0, %6989:vgpr_32, 0, 1065353216, %8373.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137872B	  %8371.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7002:vgpr_32, 0, %7015:vgpr_32, 0, 1065353216, undef %8371.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137904B	  %8371.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7028:vgpr_32, 0, %7041:vgpr_32, 0, 1065353216, %8371.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137920B	  %8372.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7054:vgpr_32, 0, %7067:vgpr_32, 0, 1065353216, undef %8372.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137952B	  %8372.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7080:vgpr_32, 0, %7093:vgpr_32, 0, 1065353216, %8372.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137968B	  %8370.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7106:vgpr_32, 0, %7119:vgpr_32, 0, 1065353216, undef %8370.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138000B	  %8370.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7132:vgpr_32, 0, %7145:vgpr_32, 0, 1065353216, %8370.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138016B	  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138032B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138048B	  %7211:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 4, %9963:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138064B	  %7213:vgpr_32 = V_AND_B32_e32 48, %9960:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138080B	  %7214:vgpr_32 = V_AND_B32_e32 1, %9993:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138096B	  %7216:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 13, %7214:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138112B	  %7217:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 8, %9993:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138128B	  %7219:vgpr_32 = V_AND_B32_e32 16384, %7217:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138144B	  %7221:vgpr_32 = disjoint V_LSHL_OR_B32_e64 %741:vgpr_32, 9, %7216:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138160B	  %7222:vgpr_32 = V_BITOP3_B32_e64 %7211:vgpr_32, %7213:vgpr_32, %742:vgpr_32, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138176B	  %7223:vgpr_32 = disjoint V_OR3_B32_e64 %7221:vgpr_32, %7219:vgpr_32, %7222:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138192B	  %7224:vgpr_32 = nuw V_ADD_U32_e32 0, %7223:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138272B	  DS_WRITE_B128_gfx9 %7224:vgpr_32, %8373:vreg_128_align2, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138352B	  DS_WRITE_B128_gfx9 %7224:vgpr_32, %8372:vreg_128_align2, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138368B	  %7230:vgpr_32 = nuw V_XAD_U32_e64 %7223:vgpr_32, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138448B	  DS_WRITE_B128_gfx9 %7230:vgpr_32, %8371:vreg_128_align2, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138528B	  DS_WRITE_B128_gfx9 %7230:vgpr_32, %8370:vreg_128_align2, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138544B	  ATOMIC_FENCE 5, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138560B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138576B	  ATOMIC_FENCE 4, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138592B	  %7237:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 5, %9993:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138608B	  %7239:vgpr_32 = V_AND_B32_e32 7168, %7237:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138624B	  %7240:vgpr_32 = exact V_LSHRREV_B32_e32 1, %40:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138640B	  %7241:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 9, %4859:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138656B	  %7242:vgpr_32 = V_BITOP3_B32_e64 %7239:vgpr_32, %7240:vgpr_32, %742:vgpr_32, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138672B	  %7244:vgpr_32 = nuw V_LSHL_ADD_U32_e64 %7214:vgpr_32, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138688B	  %7246:vgpr_32 = nuw V_ADD3_U32_e64 %7244:vgpr_32, %7241:vgpr_32, %7242:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138704B	  %7247:vreg_128_align2 = DS_READ_B128_gfx9 %7246:vgpr_32, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138720B	  %7252:vreg_128_align2 = DS_READ_B128_gfx9 %7246:vgpr_32, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138736B	  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
138752B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr12_sgpr13, %8376:vreg_64_align2, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
138768B	  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, %8374:vreg_64_align2, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
138784B	  %9438:vgpr_32 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138800B	  %7260:vgpr_32 = V_LSHRREV_B32_sdwa 0, %9438:vgpr_32, 0, %7252.sub0:vreg_128_align2, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138816B	  renamable $sgpr12 = S_MOV_B32 255
138832B	  %7263:vgpr_32 = V_BITOP3_B16_e64 0, %7252.sub0:vreg_128_align2, 0, %7260:vgpr_32, 0, killed $sgpr12, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138848B	  %7264:vgpr_32 = V_LSHLREV_B32_e32 16, %7263:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138864B	  undef %8369.sub0:vreg_64_align2 = V_AND_OR_B32_e64 %7247.sub0:vreg_128_align2, killed $sgpr4, %7264:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138880B	  renamable $sgpr12 = S_MOV_B32 50464518
138896B	  undef %8368.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub0:vreg_128_align2, %7252.sub0:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138912B	  renamable $sgpr13 = S_MOV_B32 16778500
138928B	  undef %8367.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub1:vreg_128_align2, %7252.sub1:vreg_128_align2, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138944B	  undef %8366.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub1:vreg_128_align2, %7252.sub1:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138960B	  undef %8365.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub2:vreg_128_align2, %7252.sub2:vreg_128_align2, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138976B	  undef %8364.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub2:vreg_128_align2, %7252.sub2:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138992B	  undef %8363.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub3:vreg_128_align2, %7252.sub3:vreg_128_align2, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139008B	  undef %8362.sub0:vreg_64_align2 = V_PERM_B32_e64 %7247.sub3:vreg_128_align2, %7252.sub3:vreg_128_align2, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139024B	  %7275:vreg_128_align2 = DS_READ_B128_gfx9 %7246:vgpr_32, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139040B	  %7280:vreg_128_align2 = DS_READ_B128_gfx9 %7246:vgpr_32, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139056B	  %8681:vgpr_32 = V_MUL_LO_U32_e64 %9958:vgpr_32, $sgpr5, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
139072B	  %8727:vgpr_32 = V_MUL_LO_U32_e64 %9956.sub0:vreg_64_align2, $sgpr5, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139088B	  %7289:vgpr_32 = V_MUL_LO_U32_e64 $sgpr5, %9947:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139104B	  %7291:vgpr_32 = V_MUL_LO_U32_e64 $sgpr5, %9950:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139120B	  %7293:vgpr_32 = V_MUL_LO_U32_e64 $sgpr5, %9952:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139136B	  %7295:vgpr_32 = V_MUL_LO_U32_e64 killed $sgpr5, %9954:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139152B	  %8708:vgpr_32 = V_ADD_U32_e32 %8727:vgpr_32, %8681:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139168B	  %7297:vgpr_32 = V_ADD3_U32_e64 %8708:vgpr_32, %7289:vgpr_32, %8376.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139184B	  %7298:vgpr_32 = V_ADD_U32_e32 8, %7297:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139200B	  %7299:vgpr_32 = V_ADD3_U32_e64 %8708:vgpr_32, %7291:vgpr_32, %8376.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139216B	  %7300:vgpr_32 = V_ADD_U32_e32 8, %7299:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139232B	  %7301:vgpr_32 = V_ADD3_U32_e64 %8708:vgpr_32, %7293:vgpr_32, %8376.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139248B	  %7302:vgpr_32 = V_ADD_U32_e32 8, %7301:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139264B	  %7303:vgpr_32 = V_ADD3_U32_e64 %8708:vgpr_32, %7295:vgpr_32, %8376.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139280B	  %7304:vgpr_32 = V_ADD_U32_e32 8, %7303:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139424B	  renamable $sgpr21 = S_AND_B32 renamable $sgpr21, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
139472B	  renamable $sgpr22 = COPY renamable $sgpr18, debug-location !122; moe_op_gemm_a8w4.py:505:20
139488B	  renamable $sgpr23 = COPY killed renamable $sgpr19, debug-location !122; moe_op_gemm_a8w4.py:505:20
139504B	  %8369.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub0:vreg_128_align2, %7280.sub0:vreg_128_align2, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139520B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139568B	  %7319:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7297:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139584B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8369:vreg_64_align2, %7319:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139600B	  %8368.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub0:vreg_128_align2, %7280.sub0:vreg_128_align2, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139616B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139664B	  %7324:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7298:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139680B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8368:vreg_64_align2, %7324:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139696B	  %8367.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub1:vreg_128_align2, %7280.sub1:vreg_128_align2, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139712B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139760B	  %7329:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7299:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139776B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8367:vreg_64_align2, %7329:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139792B	  %8366.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub1:vreg_128_align2, %7280.sub1:vreg_128_align2, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139808B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139856B	  %7334:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7300:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139872B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8366:vreg_64_align2, %7334:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139888B	  %8365.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub2:vreg_128_align2, %7280.sub2:vreg_128_align2, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139904B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139952B	  %7339:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7301:vgpr_32, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139968B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8365:vreg_64_align2, %7339:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139984B	  %8364.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub2:vreg_128_align2, %7280.sub2:vreg_128_align2, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140000B	  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
140048B	  %7344:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7302:vgpr_32, killed $sgpr2_sgpr3, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140064B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8364:vreg_64_align2, %7344:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
140080B	  %8363.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub3:vreg_128_align2, %7280.sub3:vreg_128_align2, killed $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140096B	  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
140144B	  %7349:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7303:vgpr_32, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140160B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8363:vreg_64_align2, %7349:vgpr_32, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
140176B	  %8362.sub1:vreg_64_align2 = V_PERM_B32_e64 %7275.sub3:vreg_128_align2, %7280.sub3:vreg_128_align2, killed $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140192B	  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
140240B	  %7354:vgpr_32 = V_CNDMASK_B32_e64 0, %4850:vgpr_32, 0, %7304:vgpr_32, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140256B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8362:vreg_64_align2, %7354:vgpr_32, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
140272B	  S_BRANCH %bb.1, debug-location !123; moe_op_gemm_a8w4.py:505:4

# End machine code for function _moe_gemm_a8w4.

