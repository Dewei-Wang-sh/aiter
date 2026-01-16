# *** IR Dump After Stack Slot Coloring (stack-slot-coloring) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, NoVRegs, TiedOpsRewritten, TracksDebugUserValues
Frame Objects:
  fi#0: size=16, align=4, at location [SP]
  fi#1: size=16, align=4, at location [SP]
  fi#2: size=16, align=4, at location [SP]
  fi#3: size=8, align=4, at location [SP]
  fi#4: size=8, align=4, at location [SP]
  fi#5: size=8, align=4, at location [SP]
  fi#6: size=8, align=4, at location [SP]
  fi#7: size=8, align=4, at location [SP]
  fi#8: size=4, align=4, at location [SP]
  fi#9: size=4, align=4, at location [SP]
  fi#10: size=4, align=4, at location [SP]
  fi#11: size=8, align=4, at location [SP]
  fi#12: size=4, align=4, at location [SP]
  fi#13: size=8, align=4, at location [SP]
  fi#14: size=4, align=4, at location [SP]
  fi#15: size=8, align=4, at location [SP]
  fi#16: size=8, align=4, at location [SP]
  fi#17: size=8, align=4, at location [SP]
  fi#18: size=8, align=4, at location [SP]
  fi#19: size=4, align=4, at location [SP]
  fi#20: size=4, align=4, at location [SP]
save/restore points:
save points are empty
restore points are empty
Function Live Ins: $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr5, $sgpr6_sgpr7, $sgpr8, $sgpr12_sgpr13, $sgpr14, $sgpr15, $sgpr16

0B	bb.0 (%ir-block.30):
	  successors: %bb.2(0x40000000), %bb.1(0x40000000); %bb.2(50.00%), %bb.1(50.00%)
	  liveins: $sgpr5, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13
96B	  renamable $sgpr24_sgpr25 = COPY $sgpr6_sgpr7
144B	  renamable $sgpr20_sgpr21 = COPY $sgpr2_sgpr3
176B	  renamable $vgpr240 = COPY $vgpr0
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
	; predecessors: %bb.0, %bb.2, %bb.63

464B	  S_ENDPGM 0, debug-location !16; moe_op_gemm_a8w4.py:0

480B	bb.2 (%ir-block.39):
	; predecessors: %bb.0
	  successors: %bb.3(0x50000000), %bb.1(0x30000000); %bb.3(62.50%), %bb.1(37.50%)
	  liveins: $sgpr2, $sgpr5, $sgpr6, $sgpr8, $sgpr14, $sgpr15, $sgpr16, $vgpr1, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000C, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
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
	  liveins: $sgpr3, $sgpr4, $sgpr5, $sgpr6, $sgpr7, $sgpr8, $sgpr9, $sgpr10, $sgpr14, $sgpr15, $vgpr1, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x0000000000000003, $sgpr12_sgpr13, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x000000000000000F
2464B	  early-clobber renamable $sgpr16_sgpr17_sgpr18_sgpr19 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
2848B	  renamable $vgpr151 = V_AND_B32_e32 65535, $vgpr1, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
2896B	  renamable $vgpr2 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr151, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
2912B	  renamable $vgpr160 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr18_sgpr19, renamable $vgpr2, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
2928B	  renamable $sgpr18_sgpr19 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
2944B	  renamable $sgpr10 = S_ASHR_I32 killed renamable $sgpr10, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
2960B	  renamable $sgpr9 = S_MUL_I32 killed renamable $sgpr9, killed renamable $sgpr7, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
2976B	  renamable $vgpr0 = V_ASHRREV_I32_e32 16, killed $vgpr1, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
3120B	  renamable $vgpr230 = V_LSHRREV_B32_e32 4, $vgpr240, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4272B	  renamable $sgpr27 = S_MOV_B32 159744
4288B	  renamable $sgpr26 = S_MOV_B32 2147483646
4304B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
4320B	  renamable $vgpr1 = V_ASHRREV_I32_e32 31, $vgpr0, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
4336B	  renamable $vgpr231 = disjoint V_OR_B32_e32 32, $vgpr230, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4352B	  renamable $vgpr232 = disjoint V_OR_B32_e32 64, $vgpr230, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4368B	  renamable $vgpr233 = disjoint V_OR_B32_e32 96, $vgpr230, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4384B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4400B	  renamable $sgpr4 = S_ABS_I32 killed renamable $sgpr4, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4416B	  renamable $vgpr234_vgpr235 = nsw V_LSHLREV_B64_e64 7, killed $vgpr0_vgpr1, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
4432B	  renamable $sgpr7 = S_XOR_B32 killed renamable $sgpr7, killed renamable $sgpr10, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4448B	  renamable $sgpr6 = S_MUL_HI_U32 renamable $sgpr4, killed renamable $sgpr6, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4464B	  renamable $vgpr162 = V_OR_B32_e32 $vgpr234, $vgpr230, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4480B	  renamable $vgpr237 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr18_sgpr19, killed renamable $vgpr2, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
4496B	  renamable $vgpr168 = V_OR_B32_e32 $vgpr234, $vgpr231, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4512B	  renamable $vgpr166 = V_OR_B32_e32 $vgpr234, $vgpr232, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4528B	  renamable $vgpr164 = V_OR_B32_e32 $vgpr234, $vgpr233, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4544B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr234, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4560B	  renamable $sgpr9 = S_MUL_I32 renamable $sgpr6, renamable $sgpr3, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4576B	  renamable $sgpr10 = S_ADD_I32 renamable $sgpr6, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4592B	  renamable $vgpr1 = V_SUB_U32_e32 0, $vgpr162, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4608B	  renamable $vgpr2 = V_SUB_U32_e32 0, $vgpr168, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4624B	  renamable $vgpr3 = V_SUB_U32_e32 0, $vgpr166, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4640B	  renamable $vgpr4 = V_SUB_U32_e32 0, $vgpr164, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4656B	  renamable $sgpr4 = S_SUB_I32 killed renamable $sgpr4, killed renamable $sgpr9, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4672B	  renamable $vgpr1 = V_MAX_I32_e32 killed $vgpr1, $vgpr162, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4688B	  renamable $vgpr2 = V_MAX_I32_e32 killed $vgpr2, $vgpr168, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4704B	  renamable $vgpr3 = V_MAX_I32_e32 killed $vgpr3, $vgpr166, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4720B	  renamable $vgpr4 = V_MAX_I32_e32 killed $vgpr4, $vgpr164, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4768B	  renamable $sgpr18 = COPY renamable $sgpr26, debug-location !53; moe_op_gemm_a8w4.py:338:27
4784B	  renamable $sgpr19 = COPY renamable $sgpr27, debug-location !53; moe_op_gemm_a8w4.py:338:27
4800B	  renamable $vgpr5 = V_SUB_U32_e32 0, $vgpr160, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4816B	  renamable $vgpr5 = V_MAX_I32_e32 $vgpr160, killed $vgpr5, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
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
5792B	  renamable $vgpr1 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr1, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5824B	  renamable $vgpr2 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr2, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5856B	  renamable $vgpr3 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr3, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5888B	  renamable $vgpr0 = V_ADD_LSHL_U32_e64 $vgpr237, killed $vgpr0, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
5904B	  renamable $vgpr4 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr1, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5920B	  renamable $vgpr5 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr2, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5936B	  renamable $vgpr6 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr3, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5952B	  renamable $vgpr7 = BUFFER_LOAD_DWORD_OFFEN renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
5968B	  KILL killed renamable $vgpr3
5984B	  KILL killed renamable $vgpr2
6000B	  KILL killed renamable $vgpr1
6016B	  KILL killed renamable $vgpr0
6032B	  KILL killed renamable $sgpr16_sgpr17_sgpr18, renamable $sgpr19
6048B	  early-clobber renamable $sgpr22_sgpr23 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
6320B	  renamable $vgpr92 = V_AND_B32_e32 15, $vgpr240, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
6560B	  renamable $vgpr0 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
6576B	  renamable $vgpr170 = V_LSHLREV_B32_e32 4, $vgpr92, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
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
6928B	  renamable $vgpr50_vgpr51, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr1, $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6944B	  renamable $vgpr52_vgpr53, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr2, $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6960B	  renamable $vgpr54_vgpr55, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr3, $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6976B	  renamable $vgpr56_vgpr57, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr4, killed $sgpr8, $vgpr170_vgpr171, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
6992B	  renamable $sgpr6_sgpr7 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
7008B	  renamable $sgpr25 = S_AND_B32 renamable $sgpr25, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
7024B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr50, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7056B	  renamable $vgpr18 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr52, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7088B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, $vgpr0, 0, $vgpr54, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7120B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, $vgpr56, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
7136B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr1, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7152B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr18, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7168B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr19, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7184B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr0, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
7200B	  KILL killed renamable $vgpr0
7216B	  KILL killed renamable $vgpr19
7232B	  KILL killed renamable $vgpr18
7248B	  KILL killed renamable $vgpr1
7264B	  renamable $sgpr28_sgpr29 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
7280B	  renamable $vgpr21 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
7296B	  renamable $sgpr8_sgpr9 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
7312B	  renamable $vgpr0 = V_LSHRREV_B32_e32 5, $vgpr240, implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
7328B	  renamable $vgpr18 = V_OR_B32_e32 $sgpr8, killed $vgpr0, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7344B	  renamable $vgpr19 = COPY renamable $sgpr9, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
7392B	  renamable $sgpr23 = S_ASHR_I32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7440B	  renamable $sgpr8_sgpr9 = S_OR_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7472B	  renamable $sgpr3 = COPY killed renamable $sgpr9, debug-location !67; moe_op_gemm_a8w4.py:362:77
7488B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7504B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7520B	  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
7552B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7568B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7584B	  renamable $sgpr8_sgpr9 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7600B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !67; moe_op_gemm_a8w4.py:362:77
7616B	  S_CBRANCH_EXECZ %bb.4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7632B	  S_BRANCH %bb.6, debug-location !67; moe_op_gemm_a8w4.py:362:77

7648B	bb.4.Flow349:
	; predecessors: %bb.3, %bb.6
	  successors: %bb.5(0x40000000), %bb.7(0x40000000); %bb.5(50.00%), %bb.7(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x0000000000000003, $vgpr22_vgpr23:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
7664B	  renamable $sgpr8_sgpr9 = S_OR_SAVEEXEC_B64 killed renamable $sgpr8_sgpr9, implicit-def $exec, implicit-def $scc, implicit $exec
7712B	  renamable $sgpr2_sgpr3 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
7728B	  renamable $vgpr19 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
7776B	  $exec = S_XOR_B64_term $exec, renamable $sgpr8_sgpr9, implicit-def $scc
7792B	  S_CBRANCH_EXECZ %bb.7, implicit $exec
7808B	  S_BRANCH %bb.5

7824B	bb.5 (%ir-block.366):
	; predecessors: %bb.4
	  successors: %bb.7(0x80000000); %bb.7(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr19, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
7856B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr19, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7872B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7888B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7904B	  renamable $sgpr10 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
7920B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr10, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7936B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7952B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7968B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr18, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7984B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8000B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr18, killed $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8032B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8048B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8064B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8096B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8112B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8128B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
8192B	  S_BRANCH %bb.7, debug-location !67; moe_op_gemm_a8w4.py:362:77

8208B	bb.6 (%ir-block.371):
	; predecessors: %bb.3
	  successors: %bb.4(0x80000000); %bb.4(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x000000000000000C, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
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
9376B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9408B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !67; moe_op_gemm_a8w4.py:362:77
9424B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $vgpr0_vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9440B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr19, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9456B	  renamable $vgpr26 = V_XOR_B32_e32 killed $vgpr18, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9472B	  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr26, $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9520B	  renamable $vgpr20 = V_MUL_HI_U32_e64 $vgpr26, $sgpr17, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9568B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr20_vgpr21, 0, killed $vgpr18_vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9584B	  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr16, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9600B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr17, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9616B	  dead renamable $vgpr18 = V_ADD_CO_U32_e32 $vgpr18, $vgpr24, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9632B	  renamable $vgpr20 = V_ADDC_U32_e32 killed $vgpr19, killed $vgpr25, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9648B	  renamable $vgpr23 = V_ADDC_U32_e32 0, $vgpr23, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9728B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, killed $vgpr22_vgpr23, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9744B	  renamable $vgpr20 = V_MUL_LO_U32_e64 $sgpr11, $vgpr18, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9760B	  renamable $vgpr21 = V_MUL_LO_U32_e64 $sgpr10, $vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9776B	  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr10, killed $vgpr18, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9792B	  renamable $vgpr19 = V_ADD3_U32_e64 $vgpr19, killed $vgpr21, killed $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9808B	  renamable $vgpr20 = V_SUB_U32_e32 $vgpr1, $vgpr19, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9840B	  renamable $vgpr21 = COPY renamable $sgpr11, debug-location !67; moe_op_gemm_a8w4.py:362:77
9856B	  renamable $vgpr18, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr26, killed $vgpr18, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9872B	  renamable $vgpr20, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr20, killed $vgpr21, $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9888B	  renamable $vgpr21, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr18, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9904B	  renamable $vgpr20, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr20, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9920B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr11, $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9936B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9968B	  renamable $sgpr2_sgpr3 = V_CMP_LE_U32_e64 $sgpr10, $vgpr21, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
9984B	  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10000B	  renamable $sgpr2_sgpr3 = V_CMP_EQ_U32_e64 $sgpr11, killed $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10016B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, killed $vgpr22, 0, killed $vgpr23, killed $sgpr2_sgpr3, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10048B	  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr10, $vgpr21, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10064B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr19, killed $vcc, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10080B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr11, $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10096B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10128B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr10, $vgpr18, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10144B	  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10160B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr11, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10176B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr19, 0, killed $vgpr23, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10192B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr20, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10224B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr22, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10240B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr1, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10256B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr18, 0, killed $vgpr19, killed $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10272B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10288B	  renamable $vgpr22, dead renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr1, killed $vgpr0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
10336B	  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
10352B	  S_BRANCH %bb.4, debug-location !67; moe_op_gemm_a8w4.py:362:77

10368B	bb.7 (%ir-block.373):
	; predecessors: %bb.4, %bb.5
	  successors: %bb.10(0x40000000), %bb.8(0x40000000); %bb.10(50.00%), %bb.8(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr240, $sgpr0_sgpr1, $sgpr2_sgpr3:0x000000000000000F, $sgpr6_sgpr7, $sgpr8_sgpr9, $sgpr12_sgpr13, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x000000000000000F, $vgpr22_vgpr23:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
10384B	  $exec = S_OR_B64 $exec, killed renamable $sgpr8_sgpr9, implicit-def $scc
10416B	  renamable $vgpr255 = V_LSHLREV_B32_e32 3, $vgpr240, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10432B	  renamable $vgpr51 = V_AND_B32_e32 248, $vgpr255, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
10448B	  renamable $vgpr53 = V_MUL_LO_U32_e64 $vgpr151, $sgpr2, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
10464B	  renamable $vgpr55 = V_MUL_LO_U32_e64 killed $sgpr3, killed $vgpr22, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10480B	  renamable $vgpr0 = V_ADD3_U32_e64 $vgpr53, $vgpr51, $vgpr55, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
10496B	  renamable $sgpr31 = S_MOV_B32 159744
10512B	  renamable $sgpr30 = S_MOV_B32 2147483646
10528B	  renamable $sgpr29 = S_AND_B32 renamable $sgpr29, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
10608B	  renamable $vgpr1 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10624B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr0, $sgpr6_sgpr7, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
10656B	  renamable $vgpr58_vgpr59 = BUFFER_LOAD_DWORDX2_OFFEN killed renamable $vgpr0, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
10672B	  renamable $sgpr2 = S_MOV_B32 0
10688B	  renamable $sgpr18_sgpr19 = nsw S_LSHL_B64 renamable $sgpr34_sgpr35, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
10704B	  renamable $vgpr238 = V_LSHRREV_B32_e32 3, $vgpr240, implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
10720B	  renamable $vgpr20 = V_OR_B32_e32 $sgpr18, $vgpr238, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10736B	  renamable $vgpr21 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
10784B	  renamable $sgpr10_sgpr11 = S_OR_B64 renamable $sgpr18_sgpr19, renamable $sgpr22_sgpr23, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10816B	  renamable $sgpr3 = COPY renamable $sgpr11, debug-location !75; moe_op_gemm_a8w4.py:377:35
10832B	  S_CMP_LG_U64 killed renamable $sgpr2_sgpr3, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10848B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10864B	  renamable $vgpr18_vgpr19 = IMPLICIT_DEF
10896B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10912B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10928B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
10944B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
10960B	  S_CBRANCH_EXECZ %bb.8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10976B	  S_BRANCH %bb.10, debug-location !75; moe_op_gemm_a8w4.py:377:35

10992B	bb.8.Flow348:
	; predecessors: %bb.7, %bb.10
	  successors: %bb.9(0x40000000), %bb.11(0x40000000); %bb.9(50.00%), %bb.11(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
11008B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
11056B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
11104B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
11120B	  S_CBRANCH_EXECZ %bb.11, implicit $exec
11136B	  S_BRANCH %bb.9

11152B	bb.9 (%ir-block.400):
	; predecessors: %bb.8
	  successors: %bb.11(0x80000000); %bb.11(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
11184B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11200B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11216B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11232B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11248B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11264B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11280B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11296B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11312B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11328B	  renamable $vgpr0 = V_SUB_U32_e32 $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11360B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11376B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11392B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11424B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11440B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11456B	  renamable $vgpr18 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11472B	  renamable $vgpr19 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11552B	  S_BRANCH %bb.11, debug-location !75; moe_op_gemm_a8w4.py:377:35

11568B	bb.10 (%ir-block.405):
	; predecessors: %bb.7
	  successors: %bb.8(0x80000000); %bb.8(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr20_vgpr21:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
11584B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11616B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
11632B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11648B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11696B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11712B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11728B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11744B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11760B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11776B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11792B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11808B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11824B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11936B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11952B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11968B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11984B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12000B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12016B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
12736B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12768B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
12784B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr20_vgpr21, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12800B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr19, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12816B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr18, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12832B	  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12880B	  renamable $vgpr22 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12896B	  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12944B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 $vgpr22_vgpr23, 0, killed $vgpr18_vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12960B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12976B	  renamable $vgpr26_vgpr27, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12992B	  dead renamable $vgpr18 = V_ADD_CO_U32_e32 $vgpr18, $vgpr26, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13008B	  renamable $vgpr22 = V_ADDC_U32_e32 killed $vgpr19, killed $vgpr27, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13024B	  renamable $vgpr25 = V_ADDC_U32_e32 0, $vgpr25, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13104B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr22_vgpr23, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13120B	  renamable $vgpr22 = V_MUL_LO_U32_e64 $sgpr37, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13136B	  renamable $vgpr23 = V_MUL_LO_U32_e64 $sgpr36, $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13152B	  renamable $vgpr18_vgpr19, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr18, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13168B	  renamable $vgpr19 = V_ADD3_U32_e64 $vgpr19, killed $vgpr23, killed $vgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13184B	  renamable $vgpr22 = V_SUB_U32_e32 $vgpr1, $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13216B	  renamable $vgpr23 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
13232B	  renamable $vgpr18, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr18, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13248B	  renamable $vgpr21, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr22, $vgpr23, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13264B	  renamable $vgpr22, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr18, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13280B	  renamable $vgpr24, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr21, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13296B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13312B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13344B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13360B	  renamable $vgpr26 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13376B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13392B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr26, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13424B	  renamable $vgpr21, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr21, killed $vgpr23, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13440B	  renamable $vgpr23, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr22, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13456B	  renamable $vgpr21, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr21, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13472B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13488B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr24, 0, killed $vgpr21, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13504B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr19, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13520B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13536B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13568B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr18, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13584B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13600B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13616B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, killed $vgpr19, 0, killed $vgpr24, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13632B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr19, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13648B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr21, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13664B	  renamable $vgpr19 = V_CNDMASK_B32_e64 0, killed $vgpr22, 0, killed $vgpr23, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13680B	  renamable $vgpr18 = V_CNDMASK_B32_e64 0, killed $vgpr18, 0, killed $vgpr19, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13696B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13712B	  renamable $vgpr18 = V_XOR_B32_e32 killed $vgpr18, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13728B	  renamable $vgpr18, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr18, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13744B	  renamable $vgpr19, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13824B	  S_BRANCH %bb.8, debug-location !75; moe_op_gemm_a8w4.py:377:35

13840B	bb.11 (%ir-block.407):
	; predecessors: %bb.8, %bb.9
	  successors: %bb.14(0x40000000), %bb.12(0x40000000); %bb.14(50.00%), %bb.12(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
13856B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
13888B	  renamable $vgpr24 = V_OR3_B32_e64 $vgpr238, $sgpr18, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13904B	  renamable $vgpr25 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13952B	  renamable $sgpr10 = S_MOV_B32 0
14000B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14016B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14032B	  renamable $vgpr22_vgpr23 = IMPLICIT_DEF
14064B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14080B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14096B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14112B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
14128B	  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14144B	  S_BRANCH %bb.14, debug-location !75; moe_op_gemm_a8w4.py:377:35

14160B	bb.12.Flow347:
	; predecessors: %bb.11, %bb.14
	  successors: %bb.13(0x40000000), %bb.15(0x40000000); %bb.13(50.00%), %bb.15(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
14176B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
14224B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
14272B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
14288B	  S_CBRANCH_EXECZ %bb.15, implicit $exec
14304B	  S_BRANCH %bb.13

14320B	bb.13 (%ir-block.422):
	; predecessors: %bb.12
	  successors: %bb.15(0x80000000); %bb.15(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
14352B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14368B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14384B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14400B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14416B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14432B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14448B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14464B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14480B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14496B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14528B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14544B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14560B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14592B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14608B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14624B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14640B	  renamable $vgpr23 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14720B	  S_BRANCH %bb.15, debug-location !75; moe_op_gemm_a8w4.py:377:35

14736B	bb.14 (%ir-block.427):
	; predecessors: %bb.11
	  successors: %bb.12(0x80000000); %bb.12(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr24_vgpr25:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
14752B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14784B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
14800B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14816B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14864B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14880B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14896B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14912B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14928B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14944B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14960B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14976B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14992B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15104B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15120B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15136B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15152B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15168B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15184B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
15904B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15936B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
15952B	  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15968B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr23, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15984B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16000B	  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16048B	  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16064B	  renamable $vgpr25 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16112B	  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 $vgpr24_vgpr25, 0, killed $vgpr22_vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16128B	  renamable $vgpr26_vgpr27, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16144B	  renamable $vgpr28_vgpr29, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16160B	  dead renamable $vgpr22 = V_ADD_CO_U32_e32 $vgpr22, $vgpr28, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16176B	  renamable $vgpr24 = V_ADDC_U32_e32 killed $vgpr23, killed $vgpr29, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16192B	  renamable $vgpr27 = V_ADDC_U32_e32 0, $vgpr27, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16272B	  renamable $vgpr22_vgpr23 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, killed $vgpr26_vgpr27, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16288B	  renamable $vgpr24 = V_MUL_LO_U32_e64 $sgpr37, $vgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16304B	  renamable $vgpr25 = V_MUL_LO_U32_e64 $sgpr36, $vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16320B	  renamable $vgpr22_vgpr23, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr22, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16336B	  renamable $vgpr23 = V_ADD3_U32_e64 $vgpr23, killed $vgpr25, killed $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16352B	  renamable $vgpr24 = V_SUB_U32_e32 $vgpr1, $vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16384B	  renamable $vgpr25 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
16400B	  renamable $vgpr21, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr22, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16416B	  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, $vgpr25, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16432B	  renamable $vgpr24, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16448B	  renamable $vgpr26, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr22, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16464B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16480B	  renamable $vgpr27 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16512B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16528B	  renamable $vgpr28 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16544B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16560B	  renamable $vgpr27 = V_CNDMASK_B32_e64 0, killed $vgpr27, 0, killed $vgpr28, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16592B	  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr22, killed $vgpr25, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16608B	  renamable $vgpr25, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16624B	  renamable $vgpr22, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr22, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16640B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr27, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16656B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr26, 0, killed $vgpr22, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16672B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr23, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16688B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16704B	  renamable $vgpr23 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16736B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16752B	  renamable $vgpr26 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16768B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16784B	  renamable $vgpr23 = V_CNDMASK_B32_e64 0, killed $vgpr23, 0, killed $vgpr26, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16800B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr23, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16816B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr22, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16832B	  renamable $vgpr22 = V_CNDMASK_B32_e64 0, killed $vgpr24, 0, killed $vgpr25, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16848B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr22, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16864B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16880B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16896B	  renamable $vgpr22, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16912B	  renamable $vgpr23, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16976B	  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
16992B	  S_BRANCH %bb.12, debug-location !75; moe_op_gemm_a8w4.py:377:35

17008B	bb.15 (%ir-block.429):
	; predecessors: %bb.12, %bb.13
	  successors: %bb.18(0x40000000), %bb.16(0x40000000); %bb.18(50.00%), %bb.16(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
17024B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
17056B	  renamable $vgpr24 = V_OR_B32_e32 128, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17072B	  renamable $vgpr25 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17120B	  renamable $sgpr10 = S_MOV_B32 0
17168B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17184B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17200B	  renamable $vgpr26_vgpr27 = IMPLICIT_DEF
17232B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17248B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17264B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17280B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
17296B	  S_CBRANCH_EXECZ %bb.16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17312B	  S_BRANCH %bb.18, debug-location !75; moe_op_gemm_a8w4.py:377:35

17328B	bb.16.Flow346:
	; predecessors: %bb.15, %bb.18
	  successors: %bb.17(0x40000000), %bb.19(0x40000000); %bb.17(50.00%), %bb.19(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
17344B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
17392B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
17440B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
17456B	  S_CBRANCH_EXECZ %bb.19, implicit $exec
17472B	  S_BRANCH %bb.17

17488B	bb.17 (%ir-block.444):
	; predecessors: %bb.16
	  successors: %bb.19(0x80000000); %bb.19(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
17520B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17536B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17552B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17568B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17584B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17600B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17616B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17632B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17648B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17664B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17696B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17712B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17728B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17760B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17776B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17792B	  renamable $vgpr26 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17808B	  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17888B	  S_BRANCH %bb.19, debug-location !75; moe_op_gemm_a8w4.py:377:35

17904B	bb.18 (%ir-block.449):
	; predecessors: %bb.15
	  successors: %bb.16(0x80000000); %bb.16(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
17920B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17952B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
17968B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17984B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18032B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18048B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18064B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18080B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18096B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18112B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18128B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18144B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18160B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18272B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18288B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18304B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18320B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18336B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18352B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
19072B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19104B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
19120B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19136B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19152B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19168B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19216B	  renamable $vgpr26 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19232B	  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19280B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr26_vgpr27, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19296B	  renamable $vgpr28_vgpr29, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19312B	  renamable $vgpr30_vgpr31, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19328B	  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr30, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19344B	  renamable $vgpr26 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr31, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19360B	  renamable $vgpr29 = V_ADDC_U32_e32 0, $vgpr29, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19440B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr26_vgpr27, 0, killed $vgpr28_vgpr29, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19456B	  renamable $vgpr26 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19472B	  renamable $vgpr27 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19488B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19504B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr27, killed $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19520B	  renamable $vgpr26 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19552B	  renamable $vgpr27 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
19568B	  renamable $vgpr21, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19584B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr26, $vgpr27, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19600B	  renamable $vgpr26, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19616B	  renamable $vgpr28, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19632B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19648B	  renamable $vgpr29 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19680B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr26, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19696B	  renamable $vgpr30 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19712B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19728B	  renamable $vgpr29 = V_CNDMASK_B32_e64 0, killed $vgpr29, 0, killed $vgpr30, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19760B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr27, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19776B	  renamable $vgpr27, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr26, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19792B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19808B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr29, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19824B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr28, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19840B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr25, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19856B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19872B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19904B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19920B	  renamable $vgpr28 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19936B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19952B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr28, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19968B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19984B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr24, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20000B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr26, 0, killed $vgpr27, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20016B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20032B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20048B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20064B	  renamable $vgpr26, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20080B	  renamable $vgpr27, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20144B	  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
20160B	  S_BRANCH %bb.16, debug-location !75; moe_op_gemm_a8w4.py:377:35

20176B	bb.19 (%ir-block.451):
	; predecessors: %bb.16, %bb.17
	  successors: %bb.22(0x40000000), %bb.20(0x40000000); %bb.22(50.00%), %bb.20(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
20192B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
20224B	  renamable $vgpr24 = V_OR_B32_e32 192, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20240B	  renamable $vgpr25 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
20288B	  renamable $sgpr10 = S_MOV_B32 0
20336B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20352B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20368B	  renamable $vgpr28_vgpr29 = IMPLICIT_DEF
20400B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20416B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20432B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20448B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
20464B	  S_CBRANCH_EXECZ %bb.20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20480B	  S_BRANCH %bb.22, debug-location !75; moe_op_gemm_a8w4.py:377:35

20496B	bb.20.Flow345:
	; predecessors: %bb.19, %bb.22
	  successors: %bb.21(0x40000000), %bb.23(0x40000000); %bb.21(50.00%), %bb.23(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
20512B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
20560B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
20608B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
20624B	  S_CBRANCH_EXECZ %bb.23, implicit $exec
20640B	  S_BRANCH %bb.21

20656B	bb.21 (%ir-block.466):
	; predecessors: %bb.20
	  successors: %bb.23(0x80000000); %bb.23(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
20688B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20704B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20720B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20736B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20752B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20768B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20784B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20800B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20816B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20832B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20864B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20880B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20896B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20928B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20944B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20960B	  renamable $vgpr28 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20976B	  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21056B	  S_BRANCH %bb.23, debug-location !75; moe_op_gemm_a8w4.py:377:35

21072B	bb.22 (%ir-block.471):
	; predecessors: %bb.19
	  successors: %bb.20(0x80000000); %bb.20(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
21088B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21120B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
21136B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21152B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21200B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21216B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21232B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21248B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21264B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21280B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21296B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21312B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21328B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21440B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21456B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21472B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21488B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21504B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21520B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
22240B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22272B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
22288B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22304B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22320B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22336B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22384B	  renamable $vgpr28 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22400B	  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22448B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr28_vgpr29, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22464B	  renamable $vgpr30_vgpr31, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22480B	  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22496B	  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr32, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22512B	  renamable $vgpr28 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr33, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22528B	  renamable $vgpr31 = V_ADDC_U32_e32 0, $vgpr31, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22608B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr28_vgpr29, 0, killed $vgpr30_vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22624B	  renamable $vgpr28 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22640B	  renamable $vgpr29 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22656B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22672B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr29, killed $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22688B	  renamable $vgpr28 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22720B	  renamable $vgpr29 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
22736B	  renamable $vgpr21, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22752B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr28, $vgpr29, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22768B	  renamable $vgpr28, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22784B	  renamable $vgpr30, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22800B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22816B	  renamable $vgpr31 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22848B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22864B	  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22880B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22896B	  renamable $vgpr31 = V_CNDMASK_B32_e64 0, killed $vgpr31, 0, killed $vgpr32, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22928B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr29, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22944B	  renamable $vgpr29, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr28, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22960B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22976B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22992B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23008B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr25, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23024B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23040B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23072B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23088B	  renamable $vgpr30 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23104B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23120B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr30, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23136B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23152B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr24, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23168B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr28, 0, killed $vgpr29, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23184B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23200B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23216B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23232B	  renamable $vgpr28, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23248B	  renamable $vgpr29, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23312B	  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
23328B	  S_BRANCH %bb.20, debug-location !75; moe_op_gemm_a8w4.py:377:35

23344B	bb.23 (%ir-block.473):
	; predecessors: %bb.20, %bb.21
	  successors: %bb.26(0x40000000), %bb.24(0x40000000); %bb.26(50.00%), %bb.24(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
23360B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
23392B	  renamable $vgpr24 = V_OR_B32_e32 256, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23408B	  renamable $vgpr25 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
23456B	  renamable $sgpr10 = S_MOV_B32 0
23504B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23520B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23536B	  renamable $vgpr34_vgpr35 = IMPLICIT_DEF
23568B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23584B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23600B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23616B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
23632B	  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23648B	  S_BRANCH %bb.26, debug-location !75; moe_op_gemm_a8w4.py:377:35

23664B	bb.24.Flow344:
	; predecessors: %bb.23, %bb.26
	  successors: %bb.25(0x40000000), %bb.27(0x40000000); %bb.25(50.00%), %bb.27(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
23680B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
23728B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
23776B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
23792B	  S_CBRANCH_EXECZ %bb.27, implicit $exec
23808B	  S_BRANCH %bb.25

23824B	bb.25 (%ir-block.488):
	; predecessors: %bb.24
	  successors: %bb.27(0x80000000); %bb.27(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
23856B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23872B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23888B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23904B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23920B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23936B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23952B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23968B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23984B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24000B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24032B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24048B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24064B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24096B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24112B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24128B	  renamable $vgpr34 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24144B	  renamable $vgpr35 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24224B	  S_BRANCH %bb.27, debug-location !75; moe_op_gemm_a8w4.py:377:35

24240B	bb.26 (%ir-block.493):
	; predecessors: %bb.23
	  successors: %bb.24(0x80000000); %bb.24(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
24256B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24288B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
24304B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24320B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24368B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24384B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24400B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24416B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24432B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24448B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24464B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24480B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24496B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24608B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24624B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24640B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24656B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24672B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24688B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
25408B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25440B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
25456B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25472B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25488B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25504B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25552B	  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25568B	  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25616B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25632B	  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25648B	  renamable $vgpr34_vgpr35, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25664B	  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr34, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25680B	  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr35, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25696B	  renamable $vgpr33 = V_ADDC_U32_e32 0, $vgpr33, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25776B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25792B	  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25808B	  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25824B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25840B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr31, killed $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25856B	  renamable $vgpr30 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25888B	  renamable $vgpr31 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
25904B	  renamable $vgpr21, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25920B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25936B	  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25952B	  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25968B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25984B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26016B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26032B	  renamable $vgpr34 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26048B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26064B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr34, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26096B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr31, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26112B	  renamable $vgpr31, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26128B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26144B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26160B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26176B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr25, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26192B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26208B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26240B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26256B	  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26272B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26288B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26304B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26320B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr24, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26336B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr31, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26352B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26368B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26384B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26400B	  renamable $vgpr34, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26416B	  renamable $vgpr35, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26480B	  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
26496B	  S_BRANCH %bb.24, debug-location !75; moe_op_gemm_a8w4.py:377:35

26512B	bb.27 (%ir-block.495):
	; predecessors: %bb.24, %bb.25
	  successors: %bb.30(0x40000000), %bb.28(0x40000000); %bb.30(50.00%), %bb.28(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
26528B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
26560B	  renamable $vgpr24 = V_OR_B32_e32 320, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26576B	  renamable $vgpr25 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
26624B	  renamable $sgpr10 = S_MOV_B32 0
26672B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26688B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26704B	  renamable $vgpr36_vgpr37 = IMPLICIT_DEF
26736B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26752B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26768B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26784B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
26800B	  S_CBRANCH_EXECZ %bb.28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26816B	  S_BRANCH %bb.30, debug-location !75; moe_op_gemm_a8w4.py:377:35

26832B	bb.28.Flow343:
	; predecessors: %bb.27, %bb.30
	  successors: %bb.29(0x40000000), %bb.31(0x40000000); %bb.29(50.00%), %bb.31(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
26848B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
26896B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
26944B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
26960B	  S_CBRANCH_EXECZ %bb.31, implicit $exec
26976B	  S_BRANCH %bb.29

26992B	bb.29 (%ir-block.510):
	; predecessors: %bb.28
	  successors: %bb.31(0x80000000); %bb.31(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
27024B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27040B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27056B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27072B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27088B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27104B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27120B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27136B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27152B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27168B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27200B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27216B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27232B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27264B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27280B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27296B	  renamable $vgpr36 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27312B	  renamable $vgpr37 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27392B	  S_BRANCH %bb.31, debug-location !75; moe_op_gemm_a8w4.py:377:35

27408B	bb.30 (%ir-block.515):
	; predecessors: %bb.27
	  successors: %bb.28(0x80000000); %bb.28(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
27424B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27456B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
27472B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27488B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27536B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27552B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27568B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27584B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27600B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27616B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27632B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27648B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27664B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27776B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27792B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27808B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27824B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27840B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27856B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
28576B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28608B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
28624B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28640B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28656B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28672B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28720B	  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28736B	  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28784B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28800B	  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28816B	  renamable $vgpr36_vgpr37, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28832B	  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr36, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28848B	  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr37, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28864B	  renamable $vgpr33 = V_ADDC_U32_e32 0, $vgpr33, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28944B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28960B	  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28976B	  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28992B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29008B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr31, killed $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29024B	  renamable $vgpr30 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29056B	  renamable $vgpr31 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
29072B	  renamable $vgpr21, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29088B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29104B	  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29120B	  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29136B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29152B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29184B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29200B	  renamable $vgpr36 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29216B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29232B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr36, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29264B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr31, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29280B	  renamable $vgpr31, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29296B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29312B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29328B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29344B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr25, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29360B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29376B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29408B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29424B	  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29440B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29456B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29472B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29488B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr24, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29504B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr31, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29520B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29536B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29552B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29568B	  renamable $vgpr36, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29584B	  renamable $vgpr37, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29648B	  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
29664B	  S_BRANCH %bb.28, debug-location !75; moe_op_gemm_a8w4.py:377:35

29680B	bb.31 (%ir-block.517):
	; predecessors: %bb.28, %bb.29
	  successors: %bb.34(0x40000000), %bb.32(0x40000000); %bb.34(50.00%), %bb.32(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
29696B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
29728B	  renamable $vgpr24 = V_OR_B32_e32 384, $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29744B	  renamable $vgpr25 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
29792B	  renamable $sgpr10 = S_MOV_B32 0
29840B	  S_CMP_LG_U64 renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29856B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29872B	  renamable $vgpr42_vgpr43 = IMPLICIT_DEF
29904B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29920B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29936B	  renamable $sgpr16_sgpr17 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29952B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
29968B	  S_CBRANCH_EXECZ %bb.32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29984B	  S_BRANCH %bb.34, debug-location !75; moe_op_gemm_a8w4.py:377:35

30000B	bb.32.Flow342:
	; predecessors: %bb.31, %bb.34
	  successors: %bb.33(0x40000000), %bb.35(0x40000000); %bb.33(50.00%), %bb.35(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
30016B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr16_sgpr17, implicit-def $exec, implicit-def $scc, implicit $exec
30064B	  renamable $vgpr21 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec
30112B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
30128B	  S_CBRANCH_EXECZ %bb.35, implicit $exec
30144B	  S_BRANCH %bb.33

30160B	bb.33 (%ir-block.532):
	; predecessors: %bb.32
	  successors: %bb.35(0x80000000); %bb.35(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr21, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x0000000000000003, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
30192B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr21, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30208B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30224B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30240B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30256B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30272B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30288B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30304B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30320B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30336B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr24, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30368B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30384B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30400B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30432B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30448B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30464B	  renamable $vgpr42 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30480B	  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30560B	  S_BRANCH %bb.35, debug-location !75; moe_op_gemm_a8w4.py:377:35

30576B	bb.34 (%ir-block.537):
	; predecessors: %bb.31
	  successors: %bb.32(0x80000000); %bb.32(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr16_sgpr17, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr24_vgpr25:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
30592B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30624B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
30640B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30656B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30704B	  renamable $sgpr36_sgpr37 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30720B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr36, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30736B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr37, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30752B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30768B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30784B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30800B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30816B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30832B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30944B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30960B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30976B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr36, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30992B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr37, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
31008B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31024B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
31744B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31776B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
31792B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31808B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr25, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31824B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr24, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31840B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr21, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31888B	  renamable $vgpr30 = V_MUL_HI_U32_e64 $vgpr21, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31904B	  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31952B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 $vgpr30_vgpr31, 0, killed $vgpr24_vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31968B	  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31984B	  renamable $vgpr38_vgpr39, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32000B	  dead renamable $vgpr24 = V_ADD_CO_U32_e32 $vgpr24, $vgpr38, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32016B	  renamable $vgpr30 = V_ADDC_U32_e32 killed $vgpr25, killed $vgpr39, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32032B	  renamable $vgpr33 = V_ADDC_U32_e32 0, $vgpr33, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32112B	  renamable $vgpr24_vgpr25 = V_LSHL_ADD_U64_e64 killed $vgpr30_vgpr31, 0, killed $vgpr32_vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32128B	  renamable $vgpr30 = V_MUL_LO_U32_e64 $sgpr37, $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32144B	  renamable $vgpr31 = V_MUL_LO_U32_e64 $sgpr36, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32160B	  renamable $vgpr24_vgpr25, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr36, killed $vgpr24, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32176B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr25, killed $vgpr31, killed $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32192B	  renamable $vgpr30 = V_SUB_U32_e32 $vgpr1, $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32224B	  renamable $vgpr31 = COPY renamable $sgpr37, debug-location !75; moe_op_gemm_a8w4.py:377:35
32240B	  renamable $vgpr21, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, killed $vgpr24, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32256B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr30, $vgpr31, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32272B	  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr21, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32288B	  renamable $vgpr32, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32304B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32320B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32352B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr36, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32368B	  renamable $vgpr38 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32384B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr37, $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32400B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, killed $vgpr33, 0, killed $vgpr38, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32432B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr31, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32448B	  renamable $vgpr31, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr36, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32464B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32480B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr33, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32496B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32512B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr25, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32528B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32544B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32576B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr36, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32592B	  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32608B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr37, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32624B	  renamable $vgpr25 = V_CNDMASK_B32_e64 0, killed $vgpr25, 0, killed $vgpr32, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32640B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr25, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32656B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr24, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32672B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr31, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32688B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr24, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32704B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32720B	  renamable $vgpr21 = V_XOR_B32_e32 killed $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32736B	  renamable $vgpr42, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr21, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32752B	  renamable $vgpr43, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
32816B	  renamable $vgpr24_vgpr25 = IMPLICIT_DEF
32832B	  S_BRANCH %bb.32, debug-location !75; moe_op_gemm_a8w4.py:377:35

32848B	bb.35 (%ir-block.539):
	; predecessors: %bb.32, %bb.33
	  successors: %bb.38(0x40000000), %bb.36(0x40000000); %bb.38(50.00%), %bb.36(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr10_sgpr11:0x000000000000000C, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
32864B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
32896B	  renamable $vgpr20 = V_OR_B32_e32 448, killed $vgpr20, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
32912B	  renamable $vgpr21 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
32960B	  renamable $sgpr10 = S_MOV_B32 0
33008B	  S_CMP_LG_U64 killed renamable $sgpr10_sgpr11, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33024B	  renamable $sgpr2_sgpr3 = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33040B	  renamable $vgpr44_vgpr45 = IMPLICIT_DEF
33072B	  renamable $sgpr8_sgpr9 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33088B	  renamable $sgpr2_sgpr3 = S_AND_B64 renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33104B	  renamable $sgpr10_sgpr11 = S_XOR_B64 renamable $sgpr2_sgpr3, killed renamable $sgpr8_sgpr9, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33120B	  $exec = S_MOV_B64_term killed renamable $sgpr2_sgpr3, debug-location !75; moe_op_gemm_a8w4.py:377:35
33136B	  S_CBRANCH_EXECZ %bb.36, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33152B	  S_BRANCH %bb.38, debug-location !75; moe_op_gemm_a8w4.py:377:35

33168B	bb.36.Flow341:
	; predecessors: %bb.35, %bb.38
	  successors: %bb.37(0x40000000), %bb.39(0x40000000); %bb.37(50.00%), %bb.39(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
33184B	  renamable $sgpr2_sgpr3 = S_OR_SAVEEXEC_B64 killed renamable $sgpr10_sgpr11, implicit-def $exec, implicit-def $scc, implicit $exec
33264B	  $exec = S_XOR_B64_term $exec, renamable $sgpr2_sgpr3, implicit-def $scc
33280B	  S_CBRANCH_EXECZ %bb.39, implicit $exec
33296B	  S_BRANCH %bb.37

33312B	bb.37 (%ir-block.554):
	; predecessors: %bb.36
	  successors: %bb.39(0x80000000); %bb.39(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x0000000000000003, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
33344B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr22, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33360B	  renamable $vgpr0 = nofpexcept V_RCP_IFLAG_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33376B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1333788670, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33392B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33408B	  renamable $sgpr8 = S_SUB_I32 0, renamable $sgpr22, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33424B	  renamable $vgpr1 = V_MUL_LO_U32_e64 killed $sgpr8, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33440B	  renamable $vgpr1 = V_MUL_HI_U32_e64 $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33456B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr0, killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33472B	  renamable $vgpr0 = V_MUL_HI_U32_e64 $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33488B	  renamable $vgpr0 = V_MUL_LO_U32_e64 killed $vgpr0, $sgpr22, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33504B	  renamable $vgpr0 = V_SUB_U32_e32 killed $vgpr20, killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33536B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33552B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33568B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33600B	  renamable $vgpr1 = V_SUBREV_U32_e32 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33616B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr22, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33632B	  renamable $vgpr44 = V_CNDMASK_B32_e64 0, killed $vgpr0, 0, killed $vgpr1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33648B	  renamable $vgpr45 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33728B	  S_BRANCH %bb.39, debug-location !75; moe_op_gemm_a8w4.py:377:35

33744B	bb.38 (%ir-block.559):
	; predecessors: %bb.35
	  successors: %bb.36(0x80000000); %bb.36(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr6_sgpr7, $sgpr10_sgpr11, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr20_vgpr21:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
33760B	  renamable $sgpr2 = S_ASHR_I32 renamable $sgpr23, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33792B	  renamable $sgpr3 = COPY renamable $sgpr2, debug-location !75; moe_op_gemm_a8w4.py:377:35
33808B	  renamable $sgpr8 = S_ADD_U32 renamable $sgpr22, renamable $sgpr2, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33824B	  renamable $sgpr9 = S_ADDC_U32 renamable $sgpr23, renamable $sgpr2, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33872B	  renamable $sgpr16_sgpr17 = S_XOR_B64 killed renamable $sgpr8_sgpr9, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
33888B	  renamable $vgpr0 = V_CVT_F32_U32_e32 $sgpr16, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33904B	  renamable $vgpr1 = V_CVT_F32_U32_e32 $sgpr17, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33920B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 killed $vgpr1, 1333788672, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33936B	  renamable $vgpr0 = nofpexcept V_RCP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33952B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 1602224124, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33968B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 796917760, $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
33984B	  renamable $vgpr1 = nofpexcept V_TRUNC_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34000B	  renamable $vgpr0 = nofpexcept V_FMAMK_F32 $vgpr1, -813694976, killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34112B	  renamable $vgpr1 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr1, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34128B	  renamable $vgpr0 = nofpexcept V_CVT_U32_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34144B	  renamable $sgpr2 = S_SUB_U32 0, renamable $sgpr16, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34160B	  renamable $sgpr3 = S_SUBB_U32 0, renamable $sgpr17, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
34176B	  renamable $sgpr8 = V_READFIRSTLANE_B32 killed $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34192B	  renamable $sgpr9 = V_READFIRSTLANE_B32 killed $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
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
34912B	  renamable $vgpr0 = V_ASHRREV_I32_e32 31, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34944B	  renamable $vgpr1 = COPY renamable $vgpr0, debug-location !75; moe_op_gemm_a8w4.py:377:35
34960B	  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, $vgpr0_vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34976B	  renamable $vgpr1 = V_XOR_B32_e32 $vgpr21, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
34992B	  renamable $vgpr38 = V_XOR_B32_e32 killed $vgpr20, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35008B	  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr38, $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35056B	  renamable $vgpr24 = V_MUL_HI_U32_e64 $vgpr38, $sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35072B	  renamable $vgpr25 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35120B	  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 $vgpr24_vgpr25, 0, killed $vgpr20_vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35136B	  renamable $vgpr30_vgpr31, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr8, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35152B	  renamable $vgpr32_vgpr33, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $vgpr1, killed $sgpr9, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35168B	  dead renamable $vgpr20 = V_ADD_CO_U32_e32 $vgpr20, $vgpr32, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35184B	  renamable $vgpr24 = V_ADDC_U32_e32 killed $vgpr21, killed $vgpr33, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35200B	  renamable $vgpr31 = V_ADDC_U32_e32 0, $vgpr31, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35280B	  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr24_vgpr25, 0, killed $vgpr30_vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35296B	  renamable $vgpr24 = V_MUL_LO_U32_e64 $sgpr17, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35312B	  renamable $vgpr25 = V_MUL_LO_U32_e64 $sgpr16, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35328B	  renamable $vgpr20_vgpr21, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 $sgpr16, killed $vgpr20, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35344B	  renamable $vgpr21 = V_ADD3_U32_e64 $vgpr21, killed $vgpr25, killed $vgpr24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35360B	  renamable $vgpr24 = V_SUB_U32_e32 $vgpr1, $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35392B	  renamable $vgpr25 = COPY renamable $sgpr17, debug-location !75; moe_op_gemm_a8w4.py:377:35
35408B	  renamable $vgpr20, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr38, killed $vgpr20, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35424B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, $vgpr25, $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35440B	  renamable $vgpr30, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr20, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35456B	  renamable $vgpr31, dead renamable $sgpr8_sgpr9 = V_SUBBREV_U32_e64 0, $vgpr24, $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35472B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr17, $vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35488B	  renamable $vgpr32 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35520B	  renamable $sgpr8_sgpr9 = V_CMP_LE_U32_e64 $sgpr16, $vgpr30, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35536B	  renamable $vgpr33 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35552B	  renamable $sgpr8_sgpr9 = V_CMP_EQ_U32_e64 $sgpr17, $vgpr31, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35568B	  renamable $vgpr32 = V_CNDMASK_B32_e64 0, killed $vgpr32, 0, killed $vgpr33, killed $sgpr8_sgpr9, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35600B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBB_U32_e64 killed $vgpr24, killed $vgpr25, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35616B	  renamable $vgpr25, renamable $sgpr2_sgpr3 = V_SUBREV_CO_U32_e64 $sgpr16, $vgpr30, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35632B	  renamable $vgpr24, dead renamable $sgpr2_sgpr3 = V_SUBBREV_U32_e64 0, killed $vgpr24, killed $sgpr2_sgpr3, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35648B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 0, killed $vgpr32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35664B	  renamable $vgpr24 = V_CNDMASK_B32_e64 0, killed $vgpr31, 0, killed $vgpr24, $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35680B	  renamable $vgpr1, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr21, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35696B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr17, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35712B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35744B	  renamable $vcc = V_CMP_LE_U32_e64 $sgpr16, $vgpr20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35760B	  renamable $vgpr31 = V_CNDMASK_B32_e64 0, 0, 0, -1, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35776B	  renamable $vcc = V_CMP_EQ_U32_e64 killed $sgpr17, $vgpr1, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35792B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr21, 0, killed $vgpr31, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35808B	  renamable $vcc = V_CMP_NE_U32_e64 0, killed $vgpr21, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35824B	  renamable $vgpr1 = V_CNDMASK_B32_e64 0, killed $vgpr1, 0, killed $vgpr24, $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35840B	  renamable $vgpr21 = V_CNDMASK_B32_e64 0, killed $vgpr30, 0, killed $vgpr25, killed $sgpr2_sgpr3, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35856B	  renamable $vgpr20 = V_CNDMASK_B32_e64 0, killed $vgpr20, 0, killed $vgpr21, killed $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35872B	  renamable $vgpr1 = V_XOR_B32_e32 killed $vgpr1, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35888B	  renamable $vgpr20 = V_XOR_B32_e32 killed $vgpr20, $vgpr0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35904B	  renamable $vgpr44, renamable $vcc = V_SUB_CO_U32_e64 killed $vgpr20, $vgpr0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35920B	  renamable $vgpr45, dead renamable $vcc = V_SUBB_U32_e64 killed $vgpr1, killed $vgpr0, killed $vcc, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
35984B	  renamable $vgpr20_vgpr21 = IMPLICIT_DEF
36000B	  S_BRANCH %bb.36, debug-location !75; moe_op_gemm_a8w4.py:377:35

36016B	bb.39 (%ir-block.561):
	; predecessors: %bb.36, %bb.37
	  successors: %bb.40(0x40000000), %bb.41(0x40000000); %bb.40(50.00%), %bb.41(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr14, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr18_vgpr19:0x000000000000000F, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
36032B	  $exec = S_OR_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def $scc
36064B	  renamable $vgpr57 = V_LSHLREV_B32_e32 4, $vgpr240, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36080B	  renamable $vgpr60 = V_AND_B32_e32 112, $vgpr57, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
36096B	  renamable $vgpr61 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
36144B	  renamable $vgpr63 = V_MUL_HI_I32_e64 $vgpr151, $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36160B	  renamable $vgpr62 = V_MUL_LO_U32_e64 $vgpr151, killed $sgpr14, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
36208B	  renamable $vgpr72_vgpr73 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, $vgpr62_vgpr63, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
36224B	  renamable $sgpr8 = S_ASHR_I32 renamable $sgpr15, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
36272B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr19, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36288B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr18, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36304B	  renamable $vgpr64_vgpr65, dead renamable $sgpr2_sgpr3 = V_MAD_U64_U32_e64 killed $vgpr18, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36320B	  renamable $vgpr65 = V_ADD3_U32_e64 $vgpr65, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36368B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, 0, 0, 1, $sgpr6_sgpr7, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36384B	  renamable $sgpr2_sgpr3 = V_CMP_NE_U32_e64 1, killed $vgpr0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36400B	  $vcc = S_ANDN2_B64 $exec, killed renamable $sgpr6_sgpr7, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36416B	  renamable $vgpr18 = COPY renamable $vgpr61
36432B	  renamable $vgpr19 = COPY renamable $vgpr61
36448B	  renamable $vgpr20 = COPY renamable $vgpr61
36464B	  renamable $vgpr21 = COPY renamable $vgpr61
36480B	  S_CBRANCH_VCCNZ %bb.41, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36496B	  S_BRANCH %bb.40, debug-location !79; moe_op_gemm_a8w4.py:405:20

36512B	bb.40 (%ir-block.571):
	; predecessors: %bb.39
	  successors: %bb.41(0x80000000); %bb.41(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17
36528B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr64_vgpr65, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36544B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
36560B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

36704B	bb.41 (%ir-block.575):
	; predecessors: %bb.39, %bb.40
	  successors: %bb.42(0x40000000), %bb.43(0x40000000); %bb.42(50.00%), %bb.43(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr22_vgpr23:0x000000000000000F, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF
36784B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr23, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36800B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr22, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36816B	  renamable $vgpr66_vgpr67, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr22, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36832B	  renamable $vgpr67 = V_ADD3_U32_e64 $vgpr67, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
36880B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36896B	  renamable $vgpr22 = COPY renamable $vgpr61
36912B	  renamable $vgpr23 = COPY renamable $vgpr61
36928B	  renamable $vgpr24 = COPY renamable $vgpr61
36944B	  renamable $vgpr25 = COPY renamable $vgpr61
36960B	  S_CBRANCH_VCCNZ %bb.43, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
36976B	  S_BRANCH %bb.42, debug-location !79; moe_op_gemm_a8w4.py:405:20

36992B	bb.42 (%ir-block.577):
	; predecessors: %bb.41
	  successors: %bb.43(0x80000000); %bb.43(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF
37008B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr66_vgpr67, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37024B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37040B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

37184B	bb.43 (%ir-block.581):
	; predecessors: %bb.41, %bb.42
	  successors: %bb.44(0x40000000), %bb.45(0x40000000); %bb.44(50.00%), %bb.45(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr26_vgpr27:0x000000000000000F, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF
37264B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr27, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37280B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr26, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37296B	  renamable $vgpr68_vgpr69, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr26, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37312B	  renamable $vgpr69 = V_ADD3_U32_e64 $vgpr69, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37360B	  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
37376B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37392B	  renamable $vgpr30 = V_MOV_B32_e32 0, implicit $exec
37408B	  renamable $vgpr31 = V_MOV_B32_e32 0, implicit $exec
37424B	  renamable $vgpr32 = V_MOV_B32_e32 0, implicit $exec
37440B	  renamable $vgpr33 = V_MOV_B32_e32 0, implicit $exec
37456B	  S_CBRANCH_VCCNZ %bb.45, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37472B	  S_BRANCH %bb.44, debug-location !79; moe_op_gemm_a8w4.py:405:20

37488B	bb.44 (%ir-block.583):
	; predecessors: %bb.43
	  successors: %bb.45(0x80000000); %bb.45(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x0000000000000003
37504B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr68_vgpr69, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37520B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
37536B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

37680B	bb.45 (%ir-block.587):
	; predecessors: %bb.43, %bb.44
	  successors: %bb.46(0x40000000), %bb.47(0x40000000); %bb.46(50.00%), %bb.47(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr28_vgpr29:0x000000000000000F, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x0000000000000003, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
37760B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr29, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37776B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr28, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37792B	  renamable $vgpr70_vgpr71, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr28, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37808B	  renamable $vgpr71 = V_ADD3_U32_e64 $vgpr71, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
37856B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37888B	  renamable $vgpr27 = V_MOV_B32_e32 0, implicit $exec
37904B	  renamable $vgpr28 = V_MOV_B32_e32 0, implicit $exec
37920B	  renamable $vgpr29 = V_MOV_B32_e32 0, implicit $exec
37936B	  S_CBRANCH_VCCNZ %bb.47, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
37952B	  S_BRANCH %bb.46, debug-location !79; moe_op_gemm_a8w4.py:405:20

37968B	bb.46 (%ir-block.589):
	; predecessors: %bb.45
	  successors: %bb.47(0x80000000); %bb.47(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
37984B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr70_vgpr71, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38000B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38016B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

38160B	bb.47 (%ir-block.593):
	; predecessors: %bb.45, %bb.46
	  successors: %bb.48(0x40000000), %bb.49(0x40000000); %bb.48(50.00%), %bb.49(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr34_vgpr35:0x000000000000000F, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF
38240B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr35, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38256B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr34, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38272B	  renamable $vgpr74_vgpr75, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr34, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38288B	  renamable $vgpr75 = V_ADD3_U32_e64 $vgpr75, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38336B	  renamable $vgpr34 = V_MOV_B32_e32 0, implicit $exec
38352B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38368B	  renamable $vgpr38 = V_MOV_B32_e32 0, implicit $exec
38384B	  renamable $vgpr39 = V_MOV_B32_e32 0, implicit $exec
38400B	  renamable $vgpr40 = V_MOV_B32_e32 0, implicit $exec
38416B	  renamable $vgpr41 = V_MOV_B32_e32 0, implicit $exec
38432B	  S_CBRANCH_VCCNZ %bb.49, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38448B	  S_BRANCH %bb.48, debug-location !79; moe_op_gemm_a8w4.py:405:20

38464B	bb.48 (%ir-block.595):
	; predecessors: %bb.47
	  successors: %bb.49(0x80000000); %bb.49(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x0000000000000003
38480B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr74_vgpr75, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38496B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38512B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

38656B	bb.49 (%ir-block.599):
	; predecessors: %bb.47, %bb.48
	  successors: %bb.50(0x40000000), %bb.51(0x40000000); %bb.50(50.00%), %bb.51(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr36_vgpr37:0x000000000000000F, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x0000000000000003, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
38736B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr37, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38752B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr36, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38768B	  renamable $vgpr76_vgpr77, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr36, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38784B	  renamable $vgpr77 = V_ADD3_U32_e64 $vgpr77, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
38832B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38864B	  renamable $vgpr35 = V_MOV_B32_e32 0, implicit $exec
38880B	  renamable $vgpr36 = V_MOV_B32_e32 0, implicit $exec
38896B	  renamable $vgpr37 = V_MOV_B32_e32 0, implicit $exec
38912B	  S_CBRANCH_VCCNZ %bb.51, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
38928B	  S_BRANCH %bb.50, debug-location !79; moe_op_gemm_a8w4.py:405:20

38944B	bb.50 (%ir-block.601):
	; predecessors: %bb.49
	  successors: %bb.51(0x80000000); %bb.51(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
38960B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr76_vgpr77, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38976B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
38992B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

39136B	bb.51 (%ir-block.605):
	; predecessors: %bb.49, %bb.50
	  successors: %bb.52(0x40000000), %bb.53(0x40000000); %bb.52(50.00%), %bb.53(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr42_vgpr43:0x000000000000000F, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF
39216B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr43, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39232B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr42, $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39248B	  renamable $vgpr78_vgpr79, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr42, $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39264B	  renamable $vgpr79 = V_ADD3_U32_e64 $vgpr79, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39312B	  renamable $vgpr42 = V_MOV_B32_e32 0, implicit $exec
39328B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39344B	  renamable $vgpr46 = V_MOV_B32_e32 0, implicit $exec
39360B	  renamable $vgpr47 = V_MOV_B32_e32 0, implicit $exec
39376B	  renamable $vgpr48 = V_MOV_B32_e32 0, implicit $exec
39392B	  renamable $vgpr49 = V_MOV_B32_e32 0, implicit $exec
39408B	  S_CBRANCH_VCCNZ %bb.53, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39424B	  S_BRANCH %bb.52, debug-location !79; moe_op_gemm_a8w4.py:405:20

39440B	bb.52 (%ir-block.607):
	; predecessors: %bb.51
	  successors: %bb.53(0x80000000); %bb.53(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x0000000000000003
39456B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr72_vgpr73, 0, $vgpr78_vgpr79, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39472B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39488B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

39632B	bb.53 (%ir-block.611):
	; predecessors: %bb.51, %bb.52
	  successors: %bb.54(0x40000000), %bb.55(0x40000000); %bb.54(50.00%), %bb.55(50.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr8, $sgpr15, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr44_vgpr45:0x000000000000000F, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x0000000000000003, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
39712B	  renamable $vgpr0 = V_MUL_LO_U32_e64 $vgpr45, $sgpr15, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39728B	  renamable $vgpr1 = V_MUL_LO_U32_e64 $vgpr44, killed $sgpr8, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39744B	  renamable $vgpr80_vgpr81, dead renamable $sgpr6_sgpr7 = V_MAD_U64_U32_e64 killed $vgpr44, killed $sgpr15, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39760B	  renamable $vgpr81 = V_ADD3_U32_e64 $vgpr81, killed $vgpr1, killed $vgpr0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
39808B	  $vcc = S_AND_B64 $exec, renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39840B	  renamable $vgpr43 = V_MOV_B32_e32 0, implicit $exec
39856B	  renamable $vgpr44 = V_MOV_B32_e32 0, implicit $exec
39872B	  renamable $vgpr45 = V_MOV_B32_e32 0, implicit $exec
39888B	  S_CBRANCH_VCCNZ %bb.55, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20
39904B	  S_BRANCH %bb.54, debug-location !79; moe_op_gemm_a8w4.py:405:20

39920B	bb.54 (%ir-block.613):
	; predecessors: %bb.53
	  successors: %bb.55(0x80000000); %bb.55(100.00%)
	  liveins: $sgpr4, $sgpr5, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr72_vgpr73, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr80_vgpr81:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
39936B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr72_vgpr73, 0, $vgpr80_vgpr81, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39952B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
39968B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

40112B	bb.55 (%ir-block.617):
	; predecessors: %bb.53, %bb.54
	  successors: %bb.57(0x40000000), %bb.56(0x40000000); %bb.57(50.00%), %bb.56(50.00%)
	  liveins: $sgpr4, $sgpr5, $vgpr51, $vgpr53, $vgpr55, $vgpr57, $vgpr92, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr237, $vgpr238, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr58_vgpr59, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr80_vgpr81:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr2_vgpr3_vgpr4_vgpr5, $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr10_vgpr11_vgpr12_vgpr13, $vgpr14_vgpr15_vgpr16_vgpr17, $vgpr18_vgpr19_vgpr20_vgpr21:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr30_vgpr31_vgpr32_vgpr33:0x00000000000000FF, $vgpr34_vgpr35_vgpr36_vgpr37:0x00000000000000FF, $vgpr38_vgpr39_vgpr40_vgpr41:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF
40176B	  early-clobber renamable $sgpr8_sgpr9_sgpr10_sgpr11 = S_LOAD_DWORDX4_IMM_ec renamable $sgpr0_sgpr1, 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
40192B	  renamable $sgpr16_sgpr17 = S_LOAD_DWORDX2_IMM renamable $sgpr0_sgpr1, 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
40208B	  renamable $sgpr6 = S_MOV_B32 240
40224B	  renamable $vgpr207 = V_BITOP3_B32_e64 $vgpr57, $vgpr240, killed $sgpr6, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40240B	  renamable $vgpr0 = V_ADD_U32_e32 0, $vgpr207, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40256B	  renamable $vgpr0 = V_ADD_U32_e32 65536, killed $vgpr0, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
40272B	  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr2_vgpr3_vgpr4_vgpr5, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
40288B	  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr6_vgpr7_vgpr8_vgpr9, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
40304B	  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr10_vgpr11_vgpr12_vgpr13, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
40320B	  DS_WRITE_B128_gfx9 killed renamable $vgpr0, killed renamable $vgpr14_vgpr15_vgpr16_vgpr17, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
40336B	  renamable $sgpr6 = S_MOV_B32 112
40352B	  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr57, $vgpr240, $sgpr6, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40368B	  renamable $vgpr209 = nuw V_ADD_U32_e32 0, killed $vgpr0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
40448B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr18_vgpr19_vgpr20_vgpr21, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
40528B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr22_vgpr23_vgpr24_vgpr25, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
40608B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr30_vgpr31_vgpr32_vgpr33, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
40688B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr26_vgpr27_vgpr28_vgpr29, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
40768B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr38_vgpr39_vgpr40_vgpr41, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
40848B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr34_vgpr35_vgpr36_vgpr37, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
40928B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr46_vgpr47_vgpr48_vgpr49, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
41024B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr42_vgpr43_vgpr44_vgpr45, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
41040B	  renamable $vgpr0 = V_ADD_U32_e32 0, $vgpr255, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41056B	  renamable $vgpr0 = V_ADD_U32_e32 98304, killed $vgpr0, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
41072B	  DS_WRITE_B64_gfx9 killed renamable $vgpr0, killed renamable $vgpr58_vgpr59, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
41088B	  S_CMPK_LT_I32 renamable $sgpr4, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
41104B	  renamable $vgpr239 = V_AND_B32_e32 48, $vgpr240, implicit $exec
41120B	  renamable $vgpr174 = nuw nsw V_LSHLREV_B32_e32 6, $vgpr240, implicit $exec
41136B	  renamable $vgpr236 = nuw nsw V_LSHLREV_B32_e32 2, $vgpr240, implicit $exec
41152B	  S_CBRANCH_SCC0 %bb.57, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

41168B	bb.56:
	; predecessors: %bb.55
	  successors: %bb.58(0x80000000); %bb.58(100.00%)
	  liveins: $sgpr5, $vgpr92, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F
41184B	  renamable $vgpr85 = V_MOV_B32_e32 0, implicit $exec
41216B	  renamable $vgpr84 = COPY renamable $vgpr85
41232B	  renamable $vgpr83 = COPY renamable $vgpr85
41248B	  renamable $vgpr82 = COPY renamable $vgpr85
41264B	  renamable $vgpr81 = COPY renamable $vgpr85
41280B	  renamable $vgpr80 = COPY renamable $vgpr85
41296B	  renamable $vgpr79 = COPY renamable $vgpr85
41312B	  renamable $vgpr78 = COPY renamable $vgpr85
41328B	  renamable $vgpr129 = COPY renamable $vgpr85
41344B	  renamable $vgpr128 = COPY renamable $vgpr85
41360B	  renamable $vgpr127 = COPY renamable $vgpr85
41376B	  renamable $vgpr126 = COPY renamable $vgpr85
41392B	  renamable $vgpr125 = COPY renamable $vgpr85
41408B	  renamable $vgpr124 = COPY renamable $vgpr85
41424B	  renamable $vgpr123 = COPY renamable $vgpr85
41440B	  renamable $vgpr122 = COPY renamable $vgpr85
41456B	  renamable $vgpr213 = COPY renamable $vgpr85
41472B	  renamable $vgpr212 = COPY renamable $vgpr85
41488B	  renamable $vgpr211 = COPY renamable $vgpr85
41504B	  renamable $vgpr210 = COPY renamable $vgpr85
41520B	  renamable $vgpr65 = COPY renamable $vgpr85
41536B	  renamable $vgpr64 = COPY renamable $vgpr85
41552B	  renamable $vgpr63 = COPY renamable $vgpr85
41568B	  renamable $vgpr62 = COPY renamable $vgpr85
41584B	  renamable $vgpr69 = COPY renamable $vgpr85
41600B	  renamable $vgpr68 = COPY renamable $vgpr85
41616B	  renamable $vgpr67 = COPY renamable $vgpr85
41632B	  renamable $vgpr66 = COPY renamable $vgpr85
41648B	  renamable $vgpr61 = COPY renamable $vgpr85
41664B	  renamable $vgpr60 = COPY renamable $vgpr85
41680B	  renamable $vgpr59 = COPY renamable $vgpr85
41696B	  renamable $vgpr58 = COPY renamable $vgpr85
41712B	  renamable $vgpr77 = COPY renamable $vgpr85
41728B	  renamable $vgpr76 = COPY renamable $vgpr85
41744B	  renamable $vgpr75 = COPY renamable $vgpr85
41760B	  renamable $vgpr74 = COPY renamable $vgpr85
41776B	  renamable $vgpr89 = COPY renamable $vgpr85
41792B	  renamable $vgpr88 = COPY renamable $vgpr85
41808B	  renamable $vgpr87 = COPY renamable $vgpr85
41824B	  renamable $vgpr86 = COPY renamable $vgpr85
41840B	  renamable $vgpr97 = COPY renamable $vgpr85
41856B	  renamable $vgpr96 = COPY renamable $vgpr85
41872B	  renamable $vgpr95 = COPY renamable $vgpr85
41888B	  renamable $vgpr94 = COPY renamable $vgpr85
41904B	  renamable $vgpr113 = COPY renamable $vgpr85
41920B	  renamable $vgpr112 = COPY renamable $vgpr85
41936B	  renamable $vgpr111 = COPY renamable $vgpr85
41952B	  renamable $vgpr110 = COPY renamable $vgpr85
41968B	  renamable $vgpr179 = COPY renamable $vgpr85
41984B	  renamable $vgpr178 = COPY renamable $vgpr85
42000B	  renamable $vgpr177 = COPY renamable $vgpr85
42016B	  renamable $vgpr176 = COPY renamable $vgpr85
42032B	  renamable $vgpr133 = COPY renamable $vgpr85
42048B	  renamable $vgpr132 = COPY renamable $vgpr85
42064B	  renamable $vgpr131 = COPY renamable $vgpr85
42080B	  renamable $vgpr130 = COPY renamable $vgpr85
42096B	  renamable $vgpr187 = COPY renamable $vgpr85
42112B	  renamable $vgpr186 = COPY renamable $vgpr85
42128B	  renamable $vgpr185 = COPY renamable $vgpr85
42144B	  renamable $vgpr184 = COPY renamable $vgpr85
42160B	  renamable $vgpr25 = COPY renamable $vgpr85
42176B	  renamable $vgpr24 = COPY renamable $vgpr85
42192B	  renamable $vgpr23 = COPY renamable $vgpr85
42208B	  renamable $vgpr22 = COPY renamable $vgpr85
42224B	  renamable $vgpr17 = COPY renamable $vgpr85
42240B	  renamable $vgpr16 = COPY renamable $vgpr85
42256B	  renamable $vgpr15 = COPY renamable $vgpr85
42272B	  renamable $vgpr14 = COPY renamable $vgpr85
42288B	  renamable $vgpr109 = COPY renamable $vgpr85
42304B	  renamable $vgpr108 = COPY renamable $vgpr85
42320B	  renamable $vgpr107 = COPY renamable $vgpr85
42336B	  renamable $vgpr106 = COPY renamable $vgpr85
42352B	  renamable $vgpr117 = COPY renamable $vgpr85
42368B	  renamable $vgpr116 = COPY renamable $vgpr85
42384B	  renamable $vgpr115 = COPY renamable $vgpr85
42400B	  renamable $vgpr114 = COPY renamable $vgpr85
42416B	  renamable $vgpr121 = COPY renamable $vgpr85
42432B	  renamable $vgpr120 = COPY renamable $vgpr85
42448B	  renamable $vgpr119 = COPY renamable $vgpr85
42464B	  renamable $vgpr118 = COPY renamable $vgpr85
42480B	  renamable $vgpr205 = COPY renamable $vgpr85
42496B	  renamable $vgpr204 = COPY renamable $vgpr85
42512B	  renamable $vgpr203 = COPY renamable $vgpr85
42528B	  renamable $vgpr202 = COPY renamable $vgpr85
42544B	  renamable $vgpr105 = COPY renamable $vgpr85
42560B	  renamable $vgpr104 = COPY renamable $vgpr85
42576B	  renamable $vgpr103 = COPY renamable $vgpr85
42592B	  renamable $vgpr102 = COPY renamable $vgpr85
42608B	  renamable $vgpr101 = COPY renamable $vgpr85
42624B	  renamable $vgpr100 = COPY renamable $vgpr85
42640B	  renamable $vgpr99 = COPY renamable $vgpr85
42656B	  renamable $vgpr98 = COPY renamable $vgpr85
42672B	  renamable $vgpr13 = COPY renamable $vgpr85
42688B	  renamable $vgpr12 = COPY renamable $vgpr85
42704B	  renamable $vgpr11 = COPY renamable $vgpr85
42720B	  renamable $vgpr10 = COPY renamable $vgpr85
42736B	  renamable $vgpr229 = COPY renamable $vgpr85
42752B	  renamable $vgpr228 = COPY renamable $vgpr85
42768B	  renamable $vgpr227 = COPY renamable $vgpr85
42784B	  renamable $vgpr226 = COPY renamable $vgpr85
42800B	  renamable $vgpr225 = COPY renamable $vgpr85
42816B	  renamable $vgpr224 = COPY renamable $vgpr85
42832B	  renamable $vgpr223 = COPY renamable $vgpr85
42848B	  renamable $vgpr222 = COPY renamable $vgpr85
42864B	  renamable $vgpr73 = COPY renamable $vgpr85
42880B	  renamable $vgpr72 = COPY renamable $vgpr85
42896B	  renamable $vgpr71 = COPY renamable $vgpr85
42912B	  renamable $vgpr70 = COPY renamable $vgpr85
42928B	  renamable $vgpr45 = COPY renamable $vgpr85
42944B	  renamable $vgpr44 = COPY renamable $vgpr85
42960B	  renamable $vgpr43 = COPY renamable $vgpr85
42976B	  renamable $vgpr42 = COPY renamable $vgpr85
42992B	  renamable $vgpr49 = COPY renamable $vgpr85
43008B	  renamable $vgpr48 = COPY renamable $vgpr85
43024B	  renamable $vgpr47 = COPY renamable $vgpr85
43040B	  renamable $vgpr46 = COPY renamable $vgpr85
43056B	  renamable $vgpr57 = COPY renamable $vgpr85
43072B	  renamable $vgpr56 = COPY renamable $vgpr85
43088B	  renamable $vgpr55 = COPY renamable $vgpr85
43104B	  renamable $vgpr54 = COPY renamable $vgpr85
43120B	  renamable $vgpr53 = COPY renamable $vgpr85
43136B	  renamable $vgpr52 = COPY renamable $vgpr85
43152B	  renamable $vgpr51 = COPY renamable $vgpr85
43168B	  renamable $vgpr50 = COPY renamable $vgpr85
43184B	  renamable $vgpr29 = COPY renamable $vgpr85
43200B	  renamable $vgpr28 = COPY renamable $vgpr85
43216B	  renamable $vgpr27 = COPY renamable $vgpr85
43232B	  renamable $vgpr26 = COPY renamable $vgpr85
43248B	  S_BRANCH %bb.58, debug-location !62; moe_op_gemm_a8w4.py:403:19

43264B	bb.57..lr.ph:
	; predecessors: %bb.55
	  successors: %bb.59(0x80000000); %bb.59(100.00%)
	  liveins: $sgpr4, $sgpr5, $sgpr6, $vgpr51, $vgpr53, $vgpr55, $vgpr92, $vgpr151, $vgpr174, $vgpr207, $vgpr209, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr239, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr12_sgpr13, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr50_vgpr51:0x0000000000000003, $vgpr52_vgpr53:0x0000000000000003, $vgpr54_vgpr55:0x0000000000000003, $vgpr56_vgpr57:0x0000000000000003, $vgpr60_vgpr61:0x000000000000000F, $vgpr62_vgpr63:0x000000000000000F, $vgpr64_vgpr65:0x000000000000000F, $vgpr66_vgpr67:0x000000000000000F, $vgpr68_vgpr69:0x000000000000000F, $vgpr70_vgpr71:0x000000000000000F, $vgpr74_vgpr75:0x000000000000000F, $vgpr76_vgpr77:0x000000000000000F, $vgpr78_vgpr79:0x000000000000000F, $vgpr80_vgpr81:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F
43272B	  SI_SPILL_AV32_SAVE killed $vgpr240, %stack.19, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.19, addrspace 5)
43296B	  SI_SPILL_AV64_SAVE $vgpr168_vgpr169, %stack.18, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.18, align 4, addrspace 5)
43312B	  SI_SPILL_AV64_SAVE $vgpr166_vgpr167, %stack.17, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.17, align 4, addrspace 5)
43328B	  SI_SPILL_AV64_SAVE $vgpr164_vgpr165, %stack.16, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.16, align 4, addrspace 5)
43344B	  SI_SPILL_AV64_SAVE $vgpr162_vgpr163, %stack.15, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.15, align 4, addrspace 5)
43352B	  SI_SPILL_AV32_SAVE killed $vgpr151, %stack.14, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.14, addrspace 5)
43368B	  SI_SPILL_AV64_SAVE $vgpr160_vgpr161, %stack.13, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.13, align 4, addrspace 5)
43384B	  SI_SPILL_AV32_SAVE killed $vgpr237, %stack.12, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.12, addrspace 5)
43392B	  SI_SPILL_AV64_SAVE killed $vgpr234_vgpr235, %stack.11, $sgpr32, 0, implicit $exec :: (store (s64) into %stack.11, align 4, addrspace 5)
43400B	  SI_SPILL_AV32_SAVE killed $vgpr233, %stack.10, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.10, addrspace 5)
43408B	  SI_SPILL_AV32_SAVE killed $vgpr232, %stack.9, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.9, addrspace 5)
43416B	  SI_SPILL_AV32_SAVE killed $vgpr231, %stack.8, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.8, addrspace 5)
43432B	  renamable $sgpr7 = S_ASHR_I32 renamable $sgpr4, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43440B	  renamable $sgpr7 = S_LSHR_B32 killed renamable $sgpr7, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43448B	  renamable $sgpr4 = S_ADD_I32 killed renamable $sgpr4, killed renamable $sgpr7, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43456B	  renamable $sgpr4 = S_ASHR_I32 killed renamable $sgpr4, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
43464B	  renamable $vgpr0 = V_MUL_U32_U24_e32 272, $vgpr92, implicit $exec
43472B	  renamable $vgpr208 = V_XOR_B32_e32 killed $vgpr0, $vgpr239, implicit $exec
43480B	  renamable $vgpr2 = V_XOR_B32_e32 64, $vgpr208, implicit $exec
43488B	  renamable $vgpr3 = V_XOR_B32_e32 128, $vgpr208, implicit $exec
43496B	  renamable $vgpr4 = V_XOR_B32_e32 192, $vgpr208, implicit $exec
43504B	  renamable $vgpr0 = V_AND_B32_e32 28672, $vgpr174, implicit $exec
43508B	  SI_SPILL_AV32_SAVE $vgpr92, %stack.20, $sgpr32, 0, implicit $exec :: (store (s32) into %stack.20, addrspace 5)
43512B	  renamable $vgpr0 = disjoint V_LSHL_OR_B32_e64 killed $vgpr92, 7, killed $vgpr0, implicit $exec
43528B	  renamable $vgpr1 = V_BITOP3_B32_e64 $vgpr255, killed $vgpr239, killed $sgpr6, 108, implicit $exec
43536B	  renamable $vgpr5 = disjoint V_OR_B32_e32 $vgpr0, $vgpr1, implicit $exec
43544B	  renamable $vgpr6 = V_BITOP3_B32_e64 killed $vgpr0, 64, killed $vgpr1, 54, implicit $exec
43552B	  renamable $sgpr4 = S_MAX_I32 killed renamable $sgpr4, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
43560B	  renamable $vgpr0 = V_ADD_U32_e32 killed $vgpr53, killed $vgpr55, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43568B	  renamable $sgpr6 = S_MOV_B32 256
43576B	  renamable $vgpr206 = V_ADD3_U32_e64 killed $vgpr0, killed $vgpr51, killed $sgpr6, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43584B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr80_vgpr81, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43592B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43600B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43616B	  renamable $sgpr6_sgpr7 = S_MOV_B64_IMM_PSEUDO 128
43632B	  renamable $vgpr180_vgpr181 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43648B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr78_vgpr79, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43664B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43680B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43696B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43704B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.3, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.3, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43712B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr76_vgpr77, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43728B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43744B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43760B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43768B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.4, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.4, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43776B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr74_vgpr75, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43792B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43808B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43824B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43832B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.5, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.5, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43840B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr70_vgpr71, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43856B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43872B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43888B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43896B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.6, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.6, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43904B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr68_vgpr69, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43920B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43936B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43952B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43960B	  SI_SPILL_AV64_SAVE killed $vgpr0_vgpr1, %stack.7, $sgpr32, 0, implicit $exec, debug-location !62 :: (store (s64) into %stack.7, align 4, addrspace 5); moe_op_gemm_a8w4.py:403:19
43968B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr66_vgpr67, 0, $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
43984B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44000B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44016B	  renamable $vgpr234_vgpr235 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44032B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr64_vgpr65, 0, killed $vgpr62_vgpr63, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44048B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $vgpr60_vgpr61, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44064B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 killed $sgpr12_sgpr13, 0, killed $vgpr0_vgpr1, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44080B	  renamable $vgpr230_vgpr231 = V_LSHL_ADD_U64_e64 killed $vgpr0_vgpr1, 0, killed $sgpr6_sgpr7, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44096B	  renamable $vgpr243 = V_ADD_U32_e32 256, killed $vgpr56, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44112B	  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr54, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44128B	  renamable $vgpr245 = V_ADD_U32_e32 256, killed $vgpr52, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44144B	  renamable $vgpr246 = V_ADD_U32_e32 256, killed $vgpr50, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
44160B	  renamable $sgpr4 = S_LSHL_B32 killed renamable $sgpr4, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44176B	  renamable $sgpr4 = S_ADD_U32 killed renamable $sgpr4, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
44192B	  renamable $vgpr26 = V_MOV_B32_e32 0, implicit $exec
44208B	  renamable $sgpr6_sgpr7 = S_MOV_B64 0
44288B	  renamable $sgpr12 = S_ADD_I32 0, 65536, implicit-def dead $scc
44304B	  renamable $vgpr247 = V_ADD_U32_e32 $sgpr12, killed $vgpr2, implicit $exec
44320B	  renamable $vgpr248 = V_ADD_U32_e32 $sgpr12, killed $vgpr3, implicit $exec
44336B	  renamable $vgpr249 = V_ADD_U32_e32 $sgpr12, killed $vgpr4, implicit $exec
44352B	  renamable $vgpr250 = V_ADD_U32_e32 0, killed $vgpr5, implicit $exec
44368B	  renamable $vgpr251 = V_ADD_U32_e32 0, killed $vgpr6, implicit $exec
44448B	  renamable $sgpr13 = S_ADD_I32 0, 98304, implicit-def dead $scc
44480B	  renamable $sgpr14 = S_MOV_B32 117769732
44496B	  renamable $vgpr252 = V_MOV_B32_e32 127, implicit $exec
44624B	  renamable $vgpr27 = COPY renamable $vgpr26
44640B	  renamable $vgpr28 = COPY renamable $vgpr26
44656B	  renamable $vgpr29 = COPY renamable $vgpr26
44672B	  renamable $vgpr50 = COPY renamable $vgpr26
44688B	  renamable $vgpr51 = COPY renamable $vgpr26
44704B	  renamable $vgpr52 = COPY renamable $vgpr26
44720B	  renamable $vgpr53 = COPY renamable $vgpr26
44736B	  renamable $vgpr54 = COPY renamable $vgpr26
44752B	  renamable $vgpr55 = COPY renamable $vgpr26
44768B	  renamable $vgpr56 = COPY renamable $vgpr26
44784B	  renamable $vgpr57 = COPY renamable $vgpr26
44800B	  renamable $vgpr46 = COPY renamable $vgpr26
44816B	  renamable $vgpr47 = COPY renamable $vgpr26
44832B	  renamable $vgpr48 = COPY renamable $vgpr26
44848B	  renamable $vgpr49 = COPY renamable $vgpr26
44864B	  renamable $vgpr42 = COPY renamable $vgpr26
44880B	  renamable $vgpr43 = COPY renamable $vgpr26
44896B	  renamable $vgpr44 = COPY renamable $vgpr26
44912B	  renamable $vgpr45 = COPY renamable $vgpr26
44928B	  renamable $vgpr70 = COPY renamable $vgpr26
44944B	  renamable $vgpr71 = COPY renamable $vgpr26
44960B	  renamable $vgpr72 = COPY renamable $vgpr26
44976B	  renamable $vgpr73 = COPY renamable $vgpr26
44992B	  renamable $vgpr222 = COPY renamable $vgpr26
45008B	  renamable $vgpr223 = COPY renamable $vgpr26
45024B	  renamable $vgpr224 = COPY renamable $vgpr26
45040B	  renamable $vgpr225 = COPY renamable $vgpr26
45056B	  renamable $vgpr226 = COPY renamable $vgpr26
45072B	  renamable $vgpr227 = COPY renamable $vgpr26
45088B	  renamable $vgpr228 = COPY renamable $vgpr26
45104B	  renamable $vgpr229 = COPY renamable $vgpr26
45120B	  renamable $vgpr10 = COPY renamable $vgpr26
45136B	  renamable $vgpr11 = COPY renamable $vgpr26
45152B	  renamable $vgpr12 = COPY renamable $vgpr26
45168B	  renamable $vgpr13 = COPY renamable $vgpr26
45184B	  renamable $vgpr98 = COPY renamable $vgpr26
45200B	  renamable $vgpr99 = COPY renamable $vgpr26
45216B	  renamable $vgpr100 = COPY renamable $vgpr26
45232B	  renamable $vgpr101 = COPY renamable $vgpr26
45248B	  renamable $vgpr102 = COPY renamable $vgpr26
45264B	  renamable $vgpr103 = COPY renamable $vgpr26
45280B	  renamable $vgpr104 = COPY renamable $vgpr26
45296B	  renamable $vgpr105 = COPY renamable $vgpr26
45312B	  renamable $vgpr202 = COPY renamable $vgpr26
45328B	  renamable $vgpr203 = COPY renamable $vgpr26
45344B	  renamable $vgpr204 = COPY renamable $vgpr26
45360B	  renamable $vgpr205 = COPY renamable $vgpr26
45376B	  renamable $vgpr118 = COPY renamable $vgpr26
45392B	  renamable $vgpr119 = COPY renamable $vgpr26
45408B	  renamable $vgpr120 = COPY renamable $vgpr26
45424B	  renamable $vgpr121 = COPY renamable $vgpr26
45440B	  renamable $vgpr114 = COPY renamable $vgpr26
45456B	  renamable $vgpr115 = COPY renamable $vgpr26
45472B	  renamable $vgpr116 = COPY renamable $vgpr26
45488B	  renamable $vgpr117 = COPY renamable $vgpr26
45504B	  renamable $vgpr106 = COPY renamable $vgpr26
45520B	  renamable $vgpr107 = COPY renamable $vgpr26
45536B	  renamable $vgpr108 = COPY renamable $vgpr26
45552B	  renamable $vgpr109 = COPY renamable $vgpr26
45568B	  renamable $vgpr14 = COPY renamable $vgpr26
45584B	  renamable $vgpr15 = COPY renamable $vgpr26
45600B	  renamable $vgpr16 = COPY renamable $vgpr26
45616B	  renamable $vgpr17 = COPY renamable $vgpr26
45632B	  renamable $vgpr142 = COPY renamable $vgpr26
45648B	  renamable $vgpr143 = COPY renamable $vgpr26
45664B	  renamable $vgpr144 = COPY renamable $vgpr26
45680B	  renamable $vgpr145 = COPY renamable $vgpr26
45696B	  renamable $vgpr22 = COPY renamable $vgpr26
45712B	  renamable $vgpr23 = COPY renamable $vgpr26
45728B	  renamable $vgpr24 = COPY renamable $vgpr26
45744B	  renamable $vgpr25 = COPY renamable $vgpr26
45760B	  renamable $vgpr130 = COPY renamable $vgpr26
45776B	  renamable $vgpr131 = COPY renamable $vgpr26
45792B	  renamable $vgpr132 = COPY renamable $vgpr26
45808B	  renamable $vgpr133 = COPY renamable $vgpr26
45824B	  renamable $vgpr176 = COPY renamable $vgpr26
45840B	  renamable $vgpr177 = COPY renamable $vgpr26
45856B	  renamable $vgpr178 = COPY renamable $vgpr26
45872B	  renamable $vgpr179 = COPY renamable $vgpr26
45888B	  renamable $vgpr110 = COPY renamable $vgpr26
45904B	  renamable $vgpr111 = COPY renamable $vgpr26
45920B	  renamable $vgpr112 = COPY renamable $vgpr26
45936B	  renamable $vgpr113 = COPY renamable $vgpr26
45952B	  renamable $vgpr94 = COPY renamable $vgpr26
45968B	  renamable $vgpr95 = COPY renamable $vgpr26
45984B	  renamable $vgpr96 = COPY renamable $vgpr26
46000B	  renamable $vgpr97 = COPY renamable $vgpr26
46016B	  renamable $vgpr86 = COPY renamable $vgpr26
46032B	  renamable $vgpr87 = COPY renamable $vgpr26
46048B	  renamable $vgpr88 = COPY renamable $vgpr26
46064B	  renamable $vgpr89 = COPY renamable $vgpr26
46080B	  renamable $vgpr74 = COPY renamable $vgpr26
46096B	  renamable $vgpr75 = COPY renamable $vgpr26
46112B	  renamable $vgpr76 = COPY renamable $vgpr26
46128B	  renamable $vgpr77 = COPY renamable $vgpr26
46144B	  renamable $vgpr58 = COPY renamable $vgpr26
46160B	  renamable $vgpr59 = COPY renamable $vgpr26
46176B	  renamable $vgpr60 = COPY renamable $vgpr26
46192B	  renamable $vgpr61 = COPY renamable $vgpr26
46208B	  renamable $vgpr66 = COPY renamable $vgpr26
46224B	  renamable $vgpr67 = COPY renamable $vgpr26
46240B	  renamable $vgpr68 = COPY renamable $vgpr26
46256B	  renamable $vgpr69 = COPY renamable $vgpr26
46272B	  renamable $vgpr62 = COPY renamable $vgpr26
46288B	  renamable $vgpr63 = COPY renamable $vgpr26
46304B	  renamable $vgpr64 = COPY renamable $vgpr26
46320B	  renamable $vgpr65 = COPY renamable $vgpr26
46336B	  renamable $vgpr210 = COPY renamable $vgpr26
46352B	  renamable $vgpr211 = COPY renamable $vgpr26
46368B	  renamable $vgpr212 = COPY renamable $vgpr26
46384B	  renamable $vgpr213 = COPY renamable $vgpr26
46400B	  renamable $vgpr122 = COPY renamable $vgpr26
46416B	  renamable $vgpr123 = COPY renamable $vgpr26
46432B	  renamable $vgpr124 = COPY renamable $vgpr26
46448B	  renamable $vgpr125 = COPY renamable $vgpr26
46464B	  renamable $vgpr126 = COPY renamable $vgpr26
46480B	  renamable $vgpr127 = COPY renamable $vgpr26
46496B	  renamable $vgpr128 = COPY renamable $vgpr26
46512B	  renamable $vgpr129 = COPY renamable $vgpr26
46528B	  renamable $vgpr78 = COPY renamable $vgpr26
46544B	  renamable $vgpr79 = COPY renamable $vgpr26
46560B	  renamable $vgpr80 = COPY renamable $vgpr26
46576B	  renamable $vgpr81 = COPY renamable $vgpr26
46592B	  renamable $vgpr82 = COPY renamable $vgpr26
46608B	  renamable $vgpr83 = COPY renamable $vgpr26
46624B	  renamable $vgpr84 = COPY renamable $vgpr26
46640B	  renamable $vgpr85 = COPY renamable $vgpr26
46656B	  S_BRANCH %bb.59, debug-location !62; moe_op_gemm_a8w4.py:403:19

46672B	bb.58.Flow340:
	; predecessors: %bb.60, %bb.56
	  successors: %bb.61(0x80000000); %bb.61(100.00%)
	  liveins: $sgpr5, $vgpr92, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x0000000000000003, $vgpr164_vgpr165:0x0000000000000003, $vgpr166_vgpr167:0x0000000000000003, $vgpr168_vgpr169:0x0000000000000003, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x000000000000000F, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
46680B	  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = COPY killed renamable $vgpr130_vgpr131_vgpr132_vgpr133
48736B	  early-clobber renamable $sgpr14_sgpr15 = S_LOAD_DWORDX2_IMM_ec renamable $sgpr0_sgpr1, 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
48768B	  renamable $sgpr0 = S_LOAD_DWORD_IMM killed renamable $sgpr0_sgpr1, 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
48784B	  renamable $vgpr138 = V_AND_B32_e32 496, $vgpr240, implicit $exec
48816B	  renamable $vgpr163 = COPY renamable $vgpr235
48848B	  renamable $vgpr169 = COPY renamable $vgpr235
48880B	  renamable $vgpr167 = COPY renamable $vgpr235
48912B	  renamable $vgpr165 = COPY renamable $vgpr235
48928B	  renamable $vgpr148 = V_AND_B32_e32 480, $vgpr240, implicit $exec
48944B	  S_BRANCH %bb.61

48960B	bb.59 (%ir-block.818):
	; predecessors: %bb.57, %bb.59
	  successors: %bb.60(0x04000000), %bb.59(0x7c000000); %bb.60(3.12%), %bb.59(96.88%)
	  liveins: $sgpr4, $sgpr5, $sgpr12, $sgpr13, $sgpr14, $vgpr174, $vgpr206, $vgpr207, $vgpr208, $vgpr209, $vgpr236, $vgpr243, $vgpr244, $vgpr245, $vgpr246, $vgpr247, $vgpr248, $vgpr249, $vgpr250, $vgpr251, $vgpr252, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr6_sgpr7:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $sgpr24_sgpr25_sgpr26_sgpr27:0x00000000000000FF, $sgpr28_sgpr29_sgpr30_sgpr31:0x00000000000000FF, $vgpr180_vgpr181, $vgpr230_vgpr231, $vgpr234_vgpr235, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
51104B	  renamable $vgpr0_vgpr1 = V_LSHL_ADD_U64_e64 $vgpr230_vgpr231, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51120B	  renamable $vgpr2_vgpr3 = V_LSHL_ADD_U64_e64 $vgpr234_vgpr235, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51128B	  renamable $vgpr4_vgpr5 = SI_SPILL_AV64_RESTORE %stack.7, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.7, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51136B	  renamable $vgpr4_vgpr5 = V_LSHL_ADD_U64_e64 killed $vgpr4_vgpr5, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51144B	  renamable $vgpr6_vgpr7 = SI_SPILL_AV64_RESTORE %stack.6, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.6, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51152B	  renamable $vgpr6_vgpr7 = V_LSHL_ADD_U64_e64 killed $vgpr6_vgpr7, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51160B	  renamable $vgpr8_vgpr9 = SI_SPILL_AV64_RESTORE %stack.5, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.5, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51168B	  renamable $vgpr8_vgpr9 = V_LSHL_ADD_U64_e64 killed $vgpr8_vgpr9, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51176B	  renamable $vgpr18_vgpr19 = SI_SPILL_AV64_RESTORE %stack.4, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.4, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51184B	  renamable $vgpr18_vgpr19 = V_LSHL_ADD_U64_e64 killed $vgpr18_vgpr19, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51192B	  renamable $vgpr20_vgpr21 = SI_SPILL_AV64_RESTORE %stack.3, $sgpr32, 0, implicit $exec, debug-location !82 :: (load (s64) from %stack.3, align 4, addrspace 5); moe_op_gemm_a8w4.py:429:17
51200B	  renamable $vgpr20_vgpr21 = V_LSHL_ADD_U64_e64 killed $vgpr20_vgpr21, 0, $sgpr6_sgpr7, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
51216B	  renamable $vgpr30_vgpr31 = V_LSHL_ADD_U64_e64 $vgpr180_vgpr181, 0, $sgpr6_sgpr7, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
51232B	  renamable $vgpr32_vgpr33_vgpr34_vgpr35 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr246, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51240B	  SI_SPILL_AV128_SAVE killed $vgpr32_vgpr33_vgpr34_vgpr35, %stack.0, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.0, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51248B	  renamable $vgpr32_vgpr33_vgpr34_vgpr35 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr245, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51256B	  SI_SPILL_AV128_SAVE killed $vgpr32_vgpr33_vgpr34_vgpr35, %stack.1, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.1, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51264B	  renamable $vgpr32_vgpr33_vgpr34_vgpr35 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr244, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51272B	  SI_SPILL_AV128_SAVE killed $vgpr32_vgpr33_vgpr34_vgpr35, %stack.2, $sgpr32, 0, implicit $exec, debug-location !63 :: (store (s128) into %stack.2, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
51280B	  renamable $vgpr146_vgpr147_vgpr148_vgpr149 = BUFFER_LOAD_DWORDX4_OFFEN renamable $vgpr243, renamable $sgpr24_sgpr25_sgpr26_sgpr27, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
51296B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
51312B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
51328B	  renamable $vgpr232_vgpr233 = BUFFER_LOAD_DWORDX2_OFFEN renamable $vgpr206, renamable $sgpr28_sgpr29_sgpr30_sgpr31, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
51344B	  renamable $vgpr150_vgpr151_vgpr152_vgpr153 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr0_vgpr1, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
51360B	  renamable $vgpr154_vgpr155_vgpr156_vgpr157 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr2_vgpr3, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
51376B	  renamable $vgpr158_vgpr159_vgpr160_vgpr161 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr4_vgpr5, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
51392B	  renamable $vgpr162_vgpr163_vgpr164_vgpr165 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
51408B	  renamable $vgpr166_vgpr167_vgpr168_vgpr169 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr8_vgpr9, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
51424B	  renamable $vgpr170_vgpr171_vgpr172_vgpr173 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr18_vgpr19, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
51440B	  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr20_vgpr21, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
51456B	  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = GLOBAL_LOAD_DWORDX4 killed renamable $vgpr30_vgpr31, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
51472B	  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = DS_READ_B128_gfx9 renamable $vgpr250, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
51488B	  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr250, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
51504B	  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr250, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
51512B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = COPY killed renamable $vgpr202_vgpr203_vgpr204_vgpr205
51520B	  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = DS_READ_B128_gfx9 renamable $vgpr250, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
51536B	  renamable $vgpr4 = V_ADD_U32_e32 $sgpr12, $vgpr208, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
51552B	  renamable $vgpr0 = V_ADD_U32_e32 $sgpr13, $vgpr236, implicit $exec
51600B	  renamable $vgpr0_vgpr1 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr0, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
51616B	  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = DS_READ_B128_gfx9 renamable $vgpr4, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
51632B	  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = DS_READ_B128_gfx9 renamable $vgpr4, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
51648B	  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = DS_READ_B128_gfx9 renamable $vgpr247, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
51664B	  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = DS_READ_B128_gfx9 renamable $vgpr247, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
51680B	  renamable $sgpr6 = S_ADD_U32 renamable $sgpr6, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
51696B	  renamable $sgpr7 = S_ADDC_U32 renamable $sgpr7, 0, implicit-def dead $scc, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
51712B	  S_CMP_LG_U32 renamable $sgpr4, renamable $sgpr6, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
51728B	  renamable $vgpr206 = V_ADD_U32_e32 256, killed $vgpr206, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51744B	  renamable $vgpr243 = V_ADD_U32_e32 256, killed $vgpr243, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51760B	  renamable $vgpr244 = V_ADD_U32_e32 256, killed $vgpr244, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51776B	  renamable $vgpr245 = V_ADD_U32_e32 256, killed $vgpr245, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51792B	  renamable $vgpr246 = V_ADD_U32_e32 256, killed $vgpr246, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
51808B	  renamable $vgpr237 = V_PERM_B32_e64 $vgpr0, $vgpr0, $sgpr14, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51824B	  renamable $vgpr253 = V_PERM_B32_e64 killed $vgpr1, $vgpr1, $sgpr14, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51840B	  renamable $vgpr238_vgpr239_vgpr240_vgpr241 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51856B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51872B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51888B	  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51904B	  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51920B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, killed $vgpr182_vgpr183_vgpr184_vgpr185_vgpr186_vgpr187_vgpr188_vgpr189, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51936B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
51952B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr4, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
51968B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr247, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
51984B	  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, killed $vgpr190_vgpr191_vgpr192_vgpr193_vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52000B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 renamable $vgpr4, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
52016B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr247, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
52032B	  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52048B	  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52064B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52080B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr26_vgpr27_vgpr28_vgpr29_vgpr30_vgpr31_vgpr32_vgpr33, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52096B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr4, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
52112B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr247, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
52128B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52144B	  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52160B	  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52176B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr34_vgpr35_vgpr36_vgpr37_vgpr38_vgpr39_vgpr40_vgpr41, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52192B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr4, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
52208B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = DS_READ_B128_gfx9 renamable $vgpr247, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
52224B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr142_vgpr143_vgpr144_vgpr145, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52240B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52256B	  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52264B	  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = COPY killed renamable $vgpr210_vgpr211_vgpr212_vgpr213
52272B	  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr6_vgpr7_vgpr8_vgpr9_vgpr10_vgpr11_vgpr12_vgpr13, killed $vgpr176_vgpr177_vgpr178_vgpr179, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52288B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = DS_READ_B128_gfx9 renamable $vgpr4, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
52304B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = DS_READ_B128_gfx9 renamable $vgpr247, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
52320B	  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52336B	  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52352B	  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52368B	  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr14_vgpr15_vgpr16_vgpr17_vgpr18_vgpr19_vgpr20_vgpr21, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52384B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 killed renamable $vgpr4, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
52400B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr247, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
52416B	  renamable $vgpr254 = V_ADD_U32_e32 $sgpr12, $vgpr207, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
52432B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52448B	  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52464B	  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52480B	  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr22_vgpr23_vgpr24_vgpr25_vgpr26_vgpr27_vgpr28_vgpr29, killed $vgpr182_vgpr183_vgpr184_vgpr185, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52496B	  renamable $vgpr194_vgpr195_vgpr196_vgpr197 = DS_READ_B128_gfx9 renamable $vgpr251, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
52512B	  renamable $vgpr190_vgpr191_vgpr192_vgpr193 = DS_READ_B128_gfx9 renamable $vgpr251, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
52528B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr198_vgpr199_vgpr200_vgpr201, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr237, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52544B	  renamable $vgpr186_vgpr187_vgpr188_vgpr189 = DS_READ_B128_gfx9 renamable $vgpr251, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
52560B	  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr214_vgpr215_vgpr216_vgpr217, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr237, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52576B	  renamable $vgpr182_vgpr183_vgpr184_vgpr185 = DS_READ_B128_gfx9 renamable $vgpr251, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
52592B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr218_vgpr219_vgpr220_vgpr221, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr253, $vgpr252, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
52768B	  renamable $vgpr242 = V_ADD_U32_e32 $sgpr13, $vgpr255, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
53808B	  renamable $vgpr198_vgpr199_vgpr200_vgpr201 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr202_vgpr203_vgpr204_vgpr205, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr253, $vgpr252, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
53968B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr248, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
53984B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr249, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
54000B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr238_vgpr239_vgpr240_vgpr241, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54016B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54032B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54048B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54096B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = DS_READ_B128_gfx9 renamable $vgpr248, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
54112B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = DS_READ_B128_gfx9 renamable $vgpr249, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
54128B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54144B	  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54160B	  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54176B	  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr10_vgpr11_vgpr12_vgpr13_vgpr14_vgpr15_vgpr16_vgpr17, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54240B	  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr248, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
54256B	  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = DS_READ_B128_gfx9 renamable $vgpr249, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
54272B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr90_vgpr91_vgpr92_vgpr93, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54288B	  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54304B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54320B	  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr30_vgpr31_vgpr32_vgpr33, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55952B	  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = DS_READ_B128_gfx9 renamable $vgpr248, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
55968B	  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = DS_READ_B128_gfx9 renamable $vgpr249, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
55984B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56000B	  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56016B	  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56032B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr78_vgpr79_vgpr80_vgpr81_vgpr82_vgpr83_vgpr84_vgpr85, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56096B	  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr248, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
56112B	  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr249, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
56128B	  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr38_vgpr39_vgpr40_vgpr41, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56144B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56160B	  renamable $vgpr130_vgpr131_vgpr132_vgpr133 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr130_vgpr131_vgpr132_vgpr133, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56176B	  renamable $vgpr176_vgpr177_vgpr178_vgpr179 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr210_vgpr211_vgpr212_vgpr213, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56512B	  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr248, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
56528B	  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr249, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
56544B	  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56560B	  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56576B	  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56592B	  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56656B	  renamable $vgpr214_vgpr215_vgpr216_vgpr217 = DS_READ_B128_gfx9 renamable $vgpr248, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
56672B	  renamable $vgpr218_vgpr219_vgpr220_vgpr221 = DS_READ_B128_gfx9 renamable $vgpr249, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
56688B	  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr182_vgpr183_vgpr184_vgpr185, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56704B	  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56720B	  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
56736B	  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr194_vgpr195_vgpr196_vgpr197, killed $vgpr214_vgpr215_vgpr216_vgpr217_vgpr218_vgpr219_vgpr220_vgpr221, killed $vgpr6_vgpr7_vgpr8_vgpr9, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
58336B	  renamable $vgpr2_vgpr3_vgpr4_vgpr5 = DS_READ_B128_gfx9 renamable $vgpr248, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
58352B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr249, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
58368B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
58384B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
66800B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr194_vgpr195_vgpr196_vgpr197, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr237, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
66960B	  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr190_vgpr191_vgpr192_vgpr193, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, killed $vgpr237, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67120B	  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr186_vgpr187_vgpr188_vgpr189, $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr253, $vgpr252, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67936B	  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr182_vgpr183_vgpr184_vgpr185, killed $vgpr2_vgpr3_vgpr4_vgpr5_vgpr6_vgpr7_vgpr8_vgpr9, killed $vgpr198_vgpr199_vgpr200_vgpr201, 4, 0, killed $vgpr253, $vgpr252, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67944B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = SI_SPILL_AV128_RESTORE %stack.0, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.0, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
67952B	  DS_WRITE_B128_gfx9 renamable $vgpr254, killed renamable $vgpr0_vgpr1_vgpr2_vgpr3, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
67960B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = SI_SPILL_AV128_RESTORE %stack.1, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.1, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
67968B	  DS_WRITE_B128_gfx9 renamable $vgpr254, killed renamable $vgpr0_vgpr1_vgpr2_vgpr3, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
67976B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = SI_SPILL_AV128_RESTORE %stack.2, $sgpr32, 0, implicit $exec, debug-location !63 :: (load (s128) from %stack.2, align 4, addrspace 5); moe_op_gemm_a8w4.py:404:20
67984B	  DS_WRITE_B128_gfx9 renamable $vgpr254, killed renamable $vgpr0_vgpr1_vgpr2_vgpr3, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
68000B	  DS_WRITE_B128_gfx9 killed renamable $vgpr254, killed renamable $vgpr146_vgpr147_vgpr148_vgpr149, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
68016B	  DS_WRITE_B64_gfx9 killed renamable $vgpr242, killed renamable $vgpr232_vgpr233, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
68032B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr150_vgpr151_vgpr152_vgpr153, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
68048B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr154_vgpr155_vgpr156_vgpr157, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
68064B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr158_vgpr159_vgpr160_vgpr161, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
68080B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr162_vgpr163_vgpr164_vgpr165, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
68096B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr166_vgpr167_vgpr168_vgpr169, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
68112B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr170_vgpr171_vgpr172_vgpr173, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
68128B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr134_vgpr135_vgpr136_vgpr137, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
68144B	  DS_WRITE_B128_gfx9 renamable $vgpr209, killed renamable $vgpr138_vgpr139_vgpr140_vgpr141, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
70304B	  S_CBRANCH_SCC1 %bb.59, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
70320B	  S_BRANCH %bb.60, debug-location !62; moe_op_gemm_a8w4.py:403:19

70336B	bb.60.Flow:
	; predecessors: %bb.59
	  successors: %bb.58(0x80000000); %bb.58(100.00%)
	  liveins: $sgpr5, $vgpr174, $vgpr236, $vgpr255, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr130_vgpr131_vgpr132_vgpr133:0x00000000000000FF, $vgpr142_vgpr143_vgpr144_vgpr145:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
70340B	  renamable $vgpr240 = SI_SPILL_AV32_RESTORE %stack.19, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.19, addrspace 5)
70344B	  renamable $vgpr230 = V_LSHRREV_B32_e32 4, $vgpr240, implicit $exec
72396B	  renamable $vgpr231 = SI_SPILL_AV32_RESTORE %stack.8, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.8, addrspace 5)
72404B	  renamable $vgpr232 = SI_SPILL_AV32_RESTORE %stack.9, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.9, addrspace 5)
72408B	  renamable $vgpr233 = SI_SPILL_AV32_RESTORE %stack.10, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.10, addrspace 5)
72416B	  renamable $vgpr234_vgpr235 = SI_SPILL_AV64_RESTORE %stack.11, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.11, align 4, addrspace 5)
72420B	  renamable $vgpr237 = SI_SPILL_AV32_RESTORE %stack.12, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.12, addrspace 5)
72424B	  renamable $vgpr238 = V_LSHRREV_B32_e32 3, $vgpr240, implicit $exec
72436B	  renamable $vgpr239 = V_AND_B32_e32 48, $vgpr240, implicit $exec
72452B	  renamable $vgpr160_vgpr161 = SI_SPILL_AV64_RESTORE %stack.13, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.13, align 4, addrspace 5)
72464B	  renamable $vgpr151 = SI_SPILL_AV32_RESTORE %stack.14, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.14, addrspace 5)
72468B	  renamable $vgpr162_vgpr163 = SI_SPILL_AV64_RESTORE %stack.15, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.15, align 4, addrspace 5)
72480B	  renamable $vgpr164_vgpr165 = SI_SPILL_AV64_RESTORE %stack.16, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.16, align 4, addrspace 5)
72496B	  renamable $vgpr166_vgpr167 = SI_SPILL_AV64_RESTORE %stack.17, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.17, align 4, addrspace 5)
72512B	  renamable $vgpr168_vgpr169 = SI_SPILL_AV64_RESTORE %stack.18, $sgpr32, 0, implicit $exec :: (load (s64) from %stack.18, align 4, addrspace 5)
72524B	  renamable $vgpr92 = SI_SPILL_AV32_RESTORE %stack.20, $sgpr32, 0, implicit $exec :: (load (s32) from %stack.20, addrspace 5)
72528B	  renamable $vgpr170 = V_LSHLREV_B32_e32 4, $vgpr92, implicit $exec
72548B	  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = COPY killed renamable $vgpr22_vgpr23_vgpr24_vgpr25
72552B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = COPY killed renamable $vgpr142_vgpr143_vgpr144_vgpr145
72556B	  S_BRANCH %bb.58

72564B	bb.61.._crit_edge:
	; predecessors: %bb.58
	  successors: %bb.62(0x40000000), %bb.63(0x40000000); %bb.62(50.00%), %bb.63(50.00%)
	  liveins: $sgpr0, $sgpr5, $vgpr92, $vgpr138, $vgpr148, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr2_sgpr3, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x000000000000000F, $vgpr164_vgpr165:0x000000000000000F, $vgpr166_vgpr167:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr180_vgpr181_vgpr182_vgpr183:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
72572B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
72580B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
72588B	  renamable $vgpr150 = V_AND_B32_e32 14, $vgpr240, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
72604B	  $vcc = S_AND_B64 $exec, killed renamable $sgpr2_sgpr3, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
72612B	  renamable $vgpr149 = nuw nsw V_LSHLREV_B32_e32 3, $vgpr150, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76624B	  S_CBRANCH_VCCNZ %bb.63, implicit $vcc, debug-location !85; moe_op_gemm_a8w4.py:421:46
76640B	  S_BRANCH %bb.62, debug-location !85; moe_op_gemm_a8w4.py:421:46

76656B	bb.62 (%ir-block.1360):
	; predecessors: %bb.61
	  successors: %bb.63(0x80000000); %bb.63(100.00%)
	  liveins: $sgpr0, $sgpr5, $vgpr92, $vgpr138, $vgpr148, $vgpr149, $vgpr150, $vgpr151, $vgpr174, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x000000000000000F, $vgpr164_vgpr165:0x000000000000000F, $vgpr166_vgpr167:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr180_vgpr181_vgpr182_vgpr183:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
76672B	  renamable $vgpr0 = V_LSHL_ADD_U32_e64 $vgpr240, 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
76688B	  renamable $vgpr0 = V_ADD_U32_e32 98304, killed $vgpr0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
76704B	  renamable $vgpr4_vgpr5 = DS_READ2ST64_B32_gfx9 killed renamable $vgpr0, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
76720B	  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 7, $vgpr92, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76736B	  renamable $vgpr1 = V_AND_B32_e32 28672, killed $vgpr174, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76752B	  renamable $vgpr2 = V_XOR_B32_e32 $vgpr149, $vgpr239, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76768B	  renamable $vgpr0 = disjoint V_OR3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr2, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76784B	  renamable $vgpr90 = nuw V_XAD_U32_e64 $vgpr0, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76848B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 renamable $vgpr90, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
76864B	  renamable $vgpr91 = nuw V_ADD_U32_e32 0, killed $vgpr0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
76928B	  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = DS_READ_B128_gfx9 renamable $vgpr91, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
76944B	  renamable $vgpr0 = V_MUL_U32_U24_e32 272, killed $vgpr92, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
76960B	  renamable $vgpr18 = V_XOR_B32_e32 killed $vgpr0, $vgpr239, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
76976B	  renamable $vgpr0 = V_XOR_B32_e32 192, $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
76992B	  renamable $sgpr1 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
77008B	  renamable $vgpr130 = nuw V_ADD_U32_e32 $sgpr1, killed $vgpr0, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
77312B	  renamable $vgpr131 = nuw V_XAD_U32_e64 $vgpr18, 64, $sgpr1, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
77440B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
77456B	  renamable $vgpr132 = nuw V_ADD_U32_e32 $sgpr1, $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
77584B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
77600B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
79664B	  renamable $sgpr2 = S_MOV_B32 117769732
79680B	  renamable $vgpr4 = V_PERM_B32_e64 $vgpr4, $vgpr4, $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79776B	  renamable $vgpr133 = V_MOV_B32_e32 127, implicit $exec
79792B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr26_vgpr27_vgpr28_vgpr29, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79808B	  renamable $vgpr18 = V_XOR_B32_e32 128, killed $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
79824B	  renamable $vgpr139 = nuw V_ADD_U32_e32 killed $sgpr1, killed $vgpr18, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
79840B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
79856B	  renamable $vgpr26_vgpr27_vgpr28_vgpr29 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79872B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = DS_READ_B128_gfx9 renamable $vgpr91, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
79952B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr50_vgpr51_vgpr52_vgpr53, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
79968B	  renamable $vgpr30_vgpr31_vgpr32_vgpr33 = DS_READ_B128_gfx9 renamable $vgpr90, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
79984B	  renamable $vgpr50_vgpr51_vgpr52_vgpr53 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr18_vgpr19_vgpr20_vgpr21, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80000B	  renamable $vgpr18_vgpr19_vgpr20_vgpr21 = DS_READ_B128_gfx9 renamable $vgpr91, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
80016B	  renamable $vgpr5 = V_PERM_B32_e64 killed $vgpr5, $vgpr5, killed $sgpr2, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80096B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr54_vgpr55_vgpr56_vgpr57, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80112B	  renamable $vgpr38_vgpr39_vgpr40_vgpr41 = DS_READ_B128_gfx9 renamable $vgpr90, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
80128B	  renamable $vgpr54_vgpr55_vgpr56_vgpr57 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr34_vgpr35_vgpr36_vgpr37, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80144B	  renamable $vgpr34_vgpr35_vgpr36_vgpr37 = DS_READ_B128_gfx9 killed renamable $vgpr91, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
80224B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80240B	  renamable $vgpr90_vgpr91_vgpr92_vgpr93 = DS_READ_B128_gfx9 killed renamable $vgpr90, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
80256B	  renamable $vgpr46_vgpr47_vgpr48_vgpr49 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr46_vgpr47_vgpr48_vgpr49, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80272B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
80288B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
80368B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80384B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
80400B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
80416B	  renamable $vgpr42_vgpr43_vgpr44_vgpr45 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr42_vgpr43_vgpr44_vgpr45, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80496B	  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80512B	  renamable $vgpr70_vgpr71_vgpr72_vgpr73 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr70_vgpr71_vgpr72_vgpr73, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80584B	  renamable $vgpr172_vgpr173_vgpr174_vgpr175 = COPY killed renamable $vgpr102_vgpr103_vgpr104_vgpr105
80592B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr222_vgpr223_vgpr224_vgpr225, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80608B	  renamable $vgpr222_vgpr223_vgpr224_vgpr225 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80688B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr226_vgpr227_vgpr228_vgpr229, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80704B	  renamable $vgpr226_vgpr227_vgpr228_vgpr229 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80720B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
80736B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
80816B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80832B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
80848B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
80864B	  renamable $vgpr10_vgpr11_vgpr12_vgpr13 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr10_vgpr11_vgpr12_vgpr13, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80944B	  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
80960B	  renamable $vgpr98_vgpr99_vgpr100_vgpr101 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr98_vgpr99_vgpr100_vgpr101, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81040B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr172_vgpr173_vgpr174_vgpr175, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81056B	  renamable $vgpr172_vgpr173_vgpr174_vgpr175 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81136B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr202_vgpr203_vgpr204_vgpr205, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81152B	  renamable $vgpr202_vgpr203_vgpr204_vgpr205 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81168B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
81184B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
81264B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr118_vgpr119_vgpr120_vgpr121, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81280B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
81296B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
81312B	  renamable $vgpr118_vgpr119_vgpr120_vgpr121 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81392B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr114_vgpr115_vgpr116_vgpr117, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81408B	  renamable $vgpr114_vgpr115_vgpr116_vgpr117 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81488B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr106_vgpr107_vgpr108_vgpr109, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81504B	  renamable $vgpr106_vgpr107_vgpr108_vgpr109 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81584B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81600B	  renamable $vgpr14_vgpr15_vgpr16_vgpr17 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr14_vgpr15_vgpr16_vgpr17, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81616B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
81632B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
81712B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81728B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
81744B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
81760B	  renamable $vgpr22_vgpr23_vgpr24_vgpr25 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr22_vgpr23_vgpr24_vgpr25, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81840B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr184_vgpr185_vgpr186_vgpr187, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81856B	  renamable $vgpr184_vgpr185_vgpr186_vgpr187 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81936B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr180_vgpr181_vgpr182_vgpr183, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
81952B	  renamable $vgpr180_vgpr181_vgpr182_vgpr183 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82032B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr176_vgpr177_vgpr178_vgpr179, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82048B	  renamable $vgpr176_vgpr177_vgpr178_vgpr179 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82064B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
82080B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
82160B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr110_vgpr111_vgpr112_vgpr113, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82176B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
82192B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
82208B	  renamable $vgpr110_vgpr111_vgpr112_vgpr113 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82288B	  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82304B	  renamable $vgpr94_vgpr95_vgpr96_vgpr97 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr94_vgpr95_vgpr96_vgpr97, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82384B	  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82400B	  renamable $vgpr86_vgpr87_vgpr88_vgpr89 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr86_vgpr87_vgpr88_vgpr89, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82480B	  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82496B	  renamable $vgpr74_vgpr75_vgpr76_vgpr77 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr74_vgpr75_vgpr76_vgpr77, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82512B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 renamable $vgpr131, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
82528B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 renamable $vgpr132, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
82608B	  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82624B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 renamable $vgpr130, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
82640B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 renamable $vgpr139, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
82656B	  renamable $vgpr58_vgpr59_vgpr60_vgpr61 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr58_vgpr59_vgpr60_vgpr61, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82736B	  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82752B	  renamable $vgpr66_vgpr67_vgpr68_vgpr69 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr66_vgpr67_vgpr68_vgpr69, 4, 0, $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82832B	  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82848B	  renamable $vgpr62_vgpr63_vgpr64_vgpr65 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr62_vgpr63_vgpr64_vgpr65, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82928B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr210_vgpr211_vgpr212_vgpr213, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82944B	  renamable $vgpr210_vgpr211_vgpr212_vgpr213 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr5, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
82960B	  renamable $vgpr144_vgpr145_vgpr146_vgpr147 = DS_READ_B128_gfx9 killed renamable $vgpr131, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
82976B	  renamable $vgpr140_vgpr141_vgpr142_vgpr143 = DS_READ_B128_gfx9 killed renamable $vgpr132, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
83056B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr134_vgpr135_vgpr136_vgpr137, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr122_vgpr123_vgpr124_vgpr125, 4, 0, $vgpr4, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83072B	  renamable $vgpr156_vgpr157_vgpr158_vgpr159 = DS_READ_B128_gfx9 killed renamable $vgpr130, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
83088B	  renamable $vgpr152_vgpr153_vgpr154_vgpr155 = DS_READ_B128_gfx9 killed renamable $vgpr139, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
83104B	  renamable $vgpr122_vgpr123_vgpr124_vgpr125 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr6_vgpr7_vgpr8_vgpr9, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr102_vgpr103_vgpr104_vgpr105, 4, 0, $vgpr4, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83176B	  renamable $vgpr102_vgpr103_vgpr104_vgpr105 = COPY killed renamable $vgpr172_vgpr173_vgpr174_vgpr175
83184B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr0_vgpr1_vgpr2_vgpr3, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr126_vgpr127_vgpr128_vgpr129, 4, 0, $vgpr4, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83200B	  renamable $vgpr126_vgpr127_vgpr128_vgpr129 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr30_vgpr31_vgpr32_vgpr33, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, killed $vgpr4, $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83280B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr18_vgpr19_vgpr20_vgpr21, $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr78_vgpr79_vgpr80_vgpr81, 4, 0, $vgpr5, $vgpr133, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83296B	  renamable $vgpr78_vgpr79_vgpr80_vgpr81 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr38_vgpr39_vgpr40_vgpr41, $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, $vgpr5, $vgpr133, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83376B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr34_vgpr35_vgpr36_vgpr37, killed $vgpr140_vgpr141_vgpr142_vgpr143_vgpr144_vgpr145_vgpr146_vgpr147, killed $vgpr82_vgpr83_vgpr84_vgpr85, 4, 0, $vgpr5, $vgpr133, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
83392B	  renamable $vgpr82_vgpr83_vgpr84_vgpr85 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 killed $vgpr90_vgpr91_vgpr92_vgpr93, killed $vgpr152_vgpr153_vgpr154_vgpr155_vgpr156_vgpr157_vgpr158_vgpr159, killed $vgpr0_vgpr1_vgpr2_vgpr3, 4, 0, killed $vgpr5, killed $vgpr133, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46

87504B	bb.63.._crit_edge._crit_edge:
	; predecessors: %bb.61, %bb.62
	  successors: %bb.1(0x80000000); %bb.1(100.00%)
	  liveins: $sgpr0, $sgpr5, $vgpr138, $vgpr148, $vgpr149, $vgpr150, $vgpr151, $vgpr230, $vgpr231, $vgpr232, $vgpr233, $vgpr236, $vgpr237, $vgpr238, $vgpr239, $vgpr240, $vgpr255, $sgpr14_sgpr15:0x000000000000000F, $sgpr18_sgpr19:0x000000000000000F, $sgpr22_sgpr23:0x000000000000000F, $sgpr34_sgpr35:0x000000000000000F, $sgpr8_sgpr9_sgpr10_sgpr11:0x00000000000000FF, $sgpr16_sgpr17_sgpr18_sgpr19:0x000000000000000F, $sgpr20_sgpr21_sgpr22_sgpr23:0x000000000000000F, $vgpr160_vgpr161:0x0000000000000003, $vgpr162_vgpr163:0x000000000000000F, $vgpr164_vgpr165:0x000000000000000F, $vgpr166_vgpr167:0x000000000000000F, $vgpr168_vgpr169:0x000000000000000F, $vgpr170_vgpr171:0x0000000000000003, $vgpr234_vgpr235:0x0000000000000003, $vgpr10_vgpr11_vgpr12_vgpr13:0x00000000000000FF, $vgpr14_vgpr15_vgpr16_vgpr17:0x00000000000000FF, $vgpr22_vgpr23_vgpr24_vgpr25:0x00000000000000FF, $vgpr26_vgpr27_vgpr28_vgpr29:0x00000000000000FF, $vgpr42_vgpr43_vgpr44_vgpr45:0x00000000000000FF, $vgpr46_vgpr47_vgpr48_vgpr49:0x00000000000000FF, $vgpr50_vgpr51_vgpr52_vgpr53:0x00000000000000FF, $vgpr54_vgpr55_vgpr56_vgpr57:0x00000000000000FF, $vgpr58_vgpr59_vgpr60_vgpr61:0x00000000000000FF, $vgpr62_vgpr63_vgpr64_vgpr65:0x00000000000000FF, $vgpr66_vgpr67_vgpr68_vgpr69:0x00000000000000FF, $vgpr70_vgpr71_vgpr72_vgpr73:0x00000000000000FF, $vgpr74_vgpr75_vgpr76_vgpr77:0x00000000000000FF, $vgpr78_vgpr79_vgpr80_vgpr81:0x00000000000000FF, $vgpr82_vgpr83_vgpr84_vgpr85:0x00000000000000FF, $vgpr86_vgpr87_vgpr88_vgpr89:0x00000000000000FF, $vgpr94_vgpr95_vgpr96_vgpr97:0x00000000000000FF, $vgpr98_vgpr99_vgpr100_vgpr101:0x00000000000000FF, $vgpr102_vgpr103_vgpr104_vgpr105:0x00000000000000FF, $vgpr106_vgpr107_vgpr108_vgpr109:0x00000000000000FF, $vgpr110_vgpr111_vgpr112_vgpr113:0x00000000000000FF, $vgpr114_vgpr115_vgpr116_vgpr117:0x00000000000000FF, $vgpr118_vgpr119_vgpr120_vgpr121:0x00000000000000FF, $vgpr122_vgpr123_vgpr124_vgpr125:0x00000000000000FF, $vgpr126_vgpr127_vgpr128_vgpr129:0x00000000000000FF, $vgpr176_vgpr177_vgpr178_vgpr179:0x00000000000000FF, $vgpr180_vgpr181_vgpr182_vgpr183:0x00000000000000FF, $vgpr184_vgpr185_vgpr186_vgpr187:0x00000000000000FF, $vgpr202_vgpr203_vgpr204_vgpr205:0x00000000000000FF, $vgpr210_vgpr211_vgpr212_vgpr213:0x00000000000000FF, $vgpr222_vgpr223_vgpr224_vgpr225:0x00000000000000FF, $vgpr226_vgpr227_vgpr228_vgpr229:0x00000000000000FF
89552B	  renamable $vgpr0 = V_OR_B32_e32 $sgpr18, $vgpr240, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
89568B	  renamable $vgpr1 = COPY renamable $sgpr19, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
89856B	  renamable $vgpr2 = V_MUL_LO_U32_e64 killed $vgpr151, killed $sgpr0, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
89872B	  renamable $vgpr2 = V_ADD_U32_e32 killed $sgpr18, killed $vgpr2, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
89904B	  renamable $sgpr17 = S_AND_B32 renamable $sgpr17, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
89920B	  renamable $sgpr19 = S_MOV_B32 159744
89936B	  renamable $sgpr18 = S_MOV_B32 2147483646
90016B	  renamable $vgpr2 = V_ADD_LSHL_U32_e64 killed $vgpr2, $vgpr240, 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
90032B	  renamable $vgpr151 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
90048B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr22_sgpr23, killed $vgpr0_vgpr1, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
90064B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr2, killed $vcc, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
90080B	  renamable $vgpr4 = BUFFER_LOAD_DWORD_OFFEN killed renamable $vgpr0, renamable $sgpr16_sgpr17_sgpr18_sgpr19, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
90096B	  renamable $vgpr147 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
90112B	  renamable $vgpr0 = GLOBAL_LOAD_DWORD_SADDR renamable $sgpr8_sgpr9, renamable $vgpr147, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
90128B	  renamable $vgpr161 = V_ASHRREV_I32_e32 31, $vgpr160, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
90144B	  renamable $sgpr12_sgpr13 = nsw S_LSHL_B64 killed renamable $sgpr34_sgpr35, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
90160B	  renamable $sgpr0 = S_LSHR_B32 renamable $sgpr22, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
90176B	  renamable $sgpr4 = S_MOV_B32 65535
90224B	  renamable $vgpr1 = V_AND_B32_e32 96, killed $vgpr255, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90240B	  renamable $vgpr2 = V_AND_B32_e32 1932, killed $vgpr236, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90256B	  renamable $vgpr152 = V_AND_B32_e32 16, $vgpr240, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90368B	  renamable $vgpr3 = V_LSHL_ADD_U32_e64 killed $vgpr138, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90384B	  renamable $vgpr146 = V_OR_B32_e32 $sgpr12, killed $vgpr170, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
90400B	  renamable $sgpr12 = S_ADD_I32 killed renamable $sgpr22, killed renamable $sgpr0, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
90416B	  renamable $sgpr6_sgpr7 = V_CMP_LT_I64_e64 killed $vgpr162_vgpr163, $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90432B	  renamable $sgpr8_sgpr9 = V_CMP_LT_I64_e64 killed $vgpr168_vgpr169, $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90448B	  renamable $sgpr2_sgpr3 = V_CMP_LT_I64_e64 killed $vgpr166_vgpr167, $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90464B	  renamable $sgpr0_sgpr1 = V_CMP_LT_I64_e64 killed $vgpr164_vgpr165, killed $vgpr160_vgpr161, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
90480B	  renamable $vgpr1 = nuw V_ADD_U32_e32 0, killed $vgpr1, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90496B	  renamable $vgpr1 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr2, $vgpr152, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90512B	  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
90528B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
90544B	  DS_WRITE_B32_gfx9 killed renamable $vgpr1, killed renamable $vgpr4, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
90560B	  ATOMIC_FENCE 5, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
90576B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
90592B	  ATOMIC_FENCE 4, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
90608B	  renamable $vgpr138_vgpr139_vgpr140_vgpr141 = DS_READ_B128_gfx9 renamable $vgpr3, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
90624B	  renamable $sgpr12 = S_ASHR_I32 killed renamable $sgpr12, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
90640B	  renamable $vgpr142_vgpr143_vgpr144_vgpr145 = DS_READ_B128_gfx9 renamable $vgpr3, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
90656B	  renamable $vgpr134_vgpr135_vgpr136_vgpr137 = DS_READ_B128_gfx9 renamable $vgpr3, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
90672B	  renamable $vgpr6_vgpr7_vgpr8_vgpr9 = DS_READ_B128_gfx9 killed renamable $vgpr3, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
90704B	  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 0, $vgpr26, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90720B	  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 0, $vgpr27, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90736B	  renamable $vgpr2 = nofpexcept V_FMA_F32_e64 0, $vgpr28, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90752B	  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 0, killed $vgpr29, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90768B	  renamable $vgpr3 = nofpexcept V_FMA_F32_e64 0, $vgpr50, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90784B	  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 0, $vgpr51, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90800B	  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 0, $vgpr52, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90816B	  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 0, killed $vgpr53, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90832B	  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 0, $vgpr54, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90848B	  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 0, $vgpr55, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90864B	  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 0, $vgpr56, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90880B	  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 0, killed $vgpr57, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90896B	  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 0, $vgpr46, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90912B	  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 0, $vgpr47, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90928B	  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 0, $vgpr48, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90944B	  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 0, killed $vgpr49, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90960B	  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 0, $vgpr42, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90976B	  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 0, $vgpr43, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
90992B	  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 0, $vgpr44, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91008B	  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 0, killed $vgpr45, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91024B	  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 0, $vgpr70, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91040B	  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 0, $vgpr71, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91056B	  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 0, $vgpr72, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91072B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 0, killed $vgpr73, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91088B	  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 0, $vgpr222, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91104B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 0, $vgpr223, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91120B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 0, $vgpr224, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91136B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 0, killed $vgpr225, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91152B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 0, $vgpr226, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91168B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 0, $vgpr227, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91184B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 0, $vgpr228, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91200B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 0, killed $vgpr229, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91216B	  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 0, $vgpr10, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91232B	  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 0, $vgpr11, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91248B	  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 0, $vgpr12, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91264B	  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 0, killed $vgpr13, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91280B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 0, $vgpr98, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91296B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 0, $vgpr99, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91312B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 0, $vgpr100, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91328B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 0, killed $vgpr101, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91344B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 0, $vgpr102, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91360B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 0, $vgpr103, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91376B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 0, $vgpr104, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91392B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 0, killed $vgpr105, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91408B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 0, $vgpr202, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91424B	  renamable $vgpr130 = nofpexcept V_FMA_F32_e64 0, $vgpr203, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91440B	  renamable $vgpr70 = nofpexcept V_FMA_F32_e64 0, $vgpr204, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91456B	  renamable $vgpr131 = nofpexcept V_FMA_F32_e64 0, killed $vgpr205, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91472B	  renamable $vgpr71 = nofpexcept V_FMA_F32_e64 0, $vgpr118, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91488B	  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 0, $vgpr119, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91504B	  renamable $vgpr72 = nofpexcept V_FMA_F32_e64 0, $vgpr120, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91520B	  renamable $vgpr133 = nofpexcept V_FMA_F32_e64 0, killed $vgpr121, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91536B	  renamable $vgpr73 = nofpexcept V_FMA_F32_e64 0, $vgpr114, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91552B	  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 0, $vgpr115, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91568B	  renamable $vgpr101 = nofpexcept V_FMA_F32_e64 0, $vgpr116, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91584B	  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 0, killed $vgpr117, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91600B	  renamable $vgpr102 = nofpexcept V_FMA_F32_e64 0, $vgpr106, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91616B	  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 0, $vgpr107, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91632B	  renamable $vgpr103 = nofpexcept V_FMA_F32_e64 0, $vgpr108, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91648B	  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 0, killed $vgpr109, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91664B	  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 0, $vgpr14, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91680B	  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 0, $vgpr15, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91696B	  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 0, $vgpr16, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91712B	  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 0, killed $vgpr17, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91728B	  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 0, $vgpr22, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91744B	  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 0, $vgpr23, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91760B	  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 0, $vgpr24, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91776B	  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 0, killed $vgpr25, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91792B	  renamable $vgpr108 = nofpexcept V_FMA_F32_e64 0, $vgpr184, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91808B	  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 0, $vgpr185, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91824B	  renamable $vgpr109 = nofpexcept V_FMA_F32_e64 0, $vgpr186, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91840B	  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 0, killed $vgpr187, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91856B	  renamable $vgpr114 = nofpexcept V_FMA_F32_e64 0, $vgpr180, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91872B	  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 0, $vgpr181, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91888B	  renamable $vgpr115 = nofpexcept V_FMA_F32_e64 0, $vgpr182, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91904B	  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 0, killed $vgpr183, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91920B	  renamable $vgpr116 = nofpexcept V_FMA_F32_e64 0, $vgpr176, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91936B	  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 0, $vgpr177, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91952B	  renamable $vgpr117 = nofpexcept V_FMA_F32_e64 0, $vgpr178, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91968B	  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 0, killed $vgpr179, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
91984B	  renamable $vgpr118 = nofpexcept V_FMA_F32_e64 0, $vgpr110, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92000B	  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 0, $vgpr111, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92016B	  renamable $vgpr119 = nofpexcept V_FMA_F32_e64 0, $vgpr112, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92032B	  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 0, killed $vgpr113, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92048B	  renamable $vgpr120 = nofpexcept V_FMA_F32_e64 0, $vgpr94, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92064B	  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 0, $vgpr95, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92080B	  renamable $vgpr121 = nofpexcept V_FMA_F32_e64 0, $vgpr96, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92096B	  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 0, killed $vgpr97, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92112B	  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 0, $vgpr86, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92128B	  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 0, $vgpr87, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92144B	  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 0, $vgpr88, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92160B	  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 0, killed $vgpr89, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92176B	  renamable $vgpr74 = nofpexcept V_FMA_F32_e64 0, $vgpr74, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92192B	  renamable $vgpr75 = nofpexcept V_FMA_F32_e64 0, $vgpr75, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92208B	  renamable $vgpr76 = nofpexcept V_FMA_F32_e64 0, $vgpr76, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92224B	  renamable $vgpr77 = nofpexcept V_FMA_F32_e64 0, killed $vgpr77, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92240B	  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 0, $vgpr58, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92256B	  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 0, $vgpr59, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92272B	  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 0, $vgpr60, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92288B	  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 0, killed $vgpr61, 0, $vgpr0, 0, $vgpr141, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92304B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 0, $vgpr66, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92320B	  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 0, $vgpr67, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92336B	  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 0, $vgpr68, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92352B	  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 0, killed $vgpr69, 0, $vgpr0, 0, $vgpr145, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92368B	  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 0, $vgpr62, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92384B	  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 0, $vgpr63, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92400B	  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 0, $vgpr64, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92416B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 0, killed $vgpr65, 0, $vgpr0, 0, $vgpr137, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92432B	  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 0, $vgpr210, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92448B	  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 0, $vgpr211, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92464B	  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 0, $vgpr212, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92480B	  renamable $vgpr174 = nofpexcept V_FMA_F32_e64 0, killed $vgpr213, 0, $vgpr0, 0, $vgpr9, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92496B	  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 0, $vgpr122, 0, $vgpr0, 0, $vgpr138, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92512B	  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 0, $vgpr123, 0, $vgpr0, 0, $vgpr139, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92528B	  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 0, $vgpr124, 0, $vgpr0, 0, $vgpr140, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92560B	  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, $vgpr0, $vgpr141(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92576B	  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 0, $vgpr126, 0, $vgpr0, 0, $vgpr142, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92592B	  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 0, $vgpr127, 0, $vgpr0, 0, $vgpr143, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92608B	  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 0, $vgpr128, 0, $vgpr0, 0, $vgpr144, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92640B	  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, $vgpr0, $vgpr145(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92656B	  renamable $vgpr78 = nofpexcept V_FMA_F32_e64 0, $vgpr78, 0, $vgpr0, 0, $vgpr134, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92672B	  renamable $vgpr79 = nofpexcept V_FMA_F32_e64 0, $vgpr79, 0, $vgpr0, 0, $vgpr135, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92688B	  renamable $vgpr80 = nofpexcept V_FMA_F32_e64 0, $vgpr80, 0, $vgpr0, 0, $vgpr136, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92720B	  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, $vgpr0, $vgpr137(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92736B	  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 0, $vgpr82, 0, $vgpr0, 0, $vgpr6, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92752B	  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 0, $vgpr83, 0, $vgpr0, 0, $vgpr7, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92768B	  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 0, $vgpr84, 0, $vgpr0, 0, $vgpr8, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92800B	  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr0, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
92816B	  renamable $vgpr0 = nofpexcept V_MAX_F32_e64 0, $sgpr15, 0, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92832B	  renamable $vgpr1 = nofpexcept V_MIN_F32_e32 killed $vgpr1, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92848B	  renamable $vgpr175 = nofpexcept V_MIN_F32_e32 killed $vgpr2, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92864B	  renamable $vgpr176 = nofpexcept V_MIN_F32_e32 killed $vgpr3, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92880B	  renamable $vgpr177 = nofpexcept V_MIN_F32_e32 killed $vgpr19, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92896B	  renamable $vgpr178 = nofpexcept V_MIN_F32_e32 killed $vgpr21, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92912B	  renamable $vgpr179 = nofpexcept V_MIN_F32_e32 killed $vgpr27, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92928B	  renamable $vgpr180 = nofpexcept V_MIN_F32_e32 killed $vgpr29, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92944B	  renamable $vgpr81 = nofpexcept V_MIN_F32_e32 killed $vgpr31, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92960B	  renamable $vgpr82 = nofpexcept V_MIN_F32_e32 killed $vgpr33, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92976B	  renamable $vgpr83 = nofpexcept V_MIN_F32_e32 killed $vgpr35, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
92992B	  renamable $vgpr84 = nofpexcept V_MIN_F32_e32 killed $vgpr37, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93008B	  renamable $vgpr85 = nofpexcept V_MIN_F32_e32 killed $vgpr39, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93024B	  renamable $vgpr86 = nofpexcept V_MIN_F32_e32 killed $vgpr41, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93040B	  renamable $vgpr87 = nofpexcept V_MIN_F32_e32 killed $vgpr43, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93056B	  renamable $vgpr88 = nofpexcept V_MIN_F32_e32 killed $vgpr45, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93072B	  renamable $vgpr89 = nofpexcept V_MIN_F32_e32 killed $vgpr47, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93088B	  renamable $vgpr90 = nofpexcept V_MIN_F32_e32 killed $vgpr10, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93104B	  renamable $vgpr91 = nofpexcept V_MIN_F32_e32 killed $vgpr12, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93120B	  renamable $vgpr92 = nofpexcept V_MIN_F32_e32 killed $vgpr49, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93136B	  renamable $vgpr93 = nofpexcept V_MIN_F32_e32 killed $vgpr51, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93152B	  renamable $vgpr94 = nofpexcept V_MIN_F32_e32 killed $vgpr53, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93168B	  renamable $vgpr95 = nofpexcept V_MIN_F32_e32 killed $vgpr55, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93184B	  renamable $vgpr96 = nofpexcept V_MIN_F32_e32 killed $vgpr57, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93200B	  renamable $vgpr97 = nofpexcept V_MIN_F32_e32 killed $vgpr70, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93216B	  renamable $vgpr98 = nofpexcept V_MIN_F32_e32 killed $vgpr71, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93232B	  renamable $vgpr99 = nofpexcept V_MIN_F32_e32 killed $vgpr72, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93248B	  renamable $vgpr100 = nofpexcept V_MIN_F32_e32 killed $vgpr73, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93264B	  renamable $vgpr101 = nofpexcept V_MIN_F32_e32 killed $vgpr101, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93280B	  renamable $vgpr102 = nofpexcept V_MIN_F32_e32 killed $vgpr102, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93296B	  renamable $vgpr103 = nofpexcept V_MIN_F32_e32 killed $vgpr103, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93312B	  renamable $vgpr104 = nofpexcept V_MIN_F32_e32 killed $vgpr14, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93328B	  renamable $vgpr105 = nofpexcept V_MIN_F32_e32 killed $vgpr16, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93344B	  renamable $vgpr106 = nofpexcept V_MIN_F32_e32 killed $vgpr22, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93360B	  renamable $vgpr107 = nofpexcept V_MIN_F32_e32 killed $vgpr24, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93376B	  renamable $vgpr108 = nofpexcept V_MIN_F32_e32 killed $vgpr108, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93392B	  renamable $vgpr109 = nofpexcept V_MIN_F32_e32 killed $vgpr109, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93408B	  renamable $vgpr110 = nofpexcept V_MIN_F32_e32 killed $vgpr114, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93424B	  renamable $vgpr111 = nofpexcept V_MIN_F32_e32 killed $vgpr115, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93440B	  renamable $vgpr112 = nofpexcept V_MIN_F32_e32 killed $vgpr116, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93456B	  renamable $vgpr113 = nofpexcept V_MIN_F32_e32 killed $vgpr117, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93472B	  renamable $vgpr114 = nofpexcept V_MIN_F32_e32 killed $vgpr118, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93488B	  renamable $vgpr115 = nofpexcept V_MIN_F32_e32 killed $vgpr119, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93504B	  renamable $vgpr116 = nofpexcept V_MIN_F32_e32 killed $vgpr120, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93520B	  renamable $vgpr117 = nofpexcept V_MIN_F32_e32 killed $vgpr121, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93536B	  renamable $vgpr118 = nofpexcept V_MIN_F32_e32 killed $vgpr167, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93552B	  renamable $vgpr119 = nofpexcept V_MIN_F32_e32 killed $vgpr169, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93568B	  renamable $vgpr120 = nofpexcept V_MIN_F32_e32 killed $vgpr74, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93584B	  renamable $vgpr121 = nofpexcept V_MIN_F32_e32 killed $vgpr76, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93600B	  renamable $vgpr122 = nofpexcept V_MIN_F32_e32 killed $vgpr58, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93616B	  renamable $vgpr123 = nofpexcept V_MIN_F32_e32 killed $vgpr60, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93632B	  renamable $vgpr124 = nofpexcept V_MIN_F32_e32 killed $vgpr66, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93648B	  renamable $vgpr125 = nofpexcept V_MIN_F32_e32 killed $vgpr68, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93664B	  renamable $vgpr126 = nofpexcept V_MIN_F32_e32 killed $vgpr62, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93680B	  renamable $vgpr127 = nofpexcept V_MIN_F32_e32 killed $vgpr64, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93696B	  renamable $vgpr128 = nofpexcept V_MIN_F32_e32 killed $vgpr69, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93712B	  renamable $vgpr129 = nofpexcept V_MIN_F32_e32 killed $vgpr173, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93728B	  renamable $vgpr73 = nofpexcept V_MIN_F32_e32 killed $vgpr138, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93744B	  renamable $vgpr72 = nofpexcept V_MIN_F32_e32 killed $vgpr140, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93760B	  renamable $vgpr71 = nofpexcept V_MIN_F32_e32 killed $vgpr142, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93776B	  renamable $vgpr70 = nofpexcept V_MIN_F32_e32 killed $vgpr144, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93792B	  renamable $vgpr69 = nofpexcept V_MIN_F32_e32 killed $vgpr78, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93808B	  renamable $vgpr68 = nofpexcept V_MIN_F32_e32 killed $vgpr80, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93824B	  renamable $vgpr3 = nofpexcept V_MIN_F32_e32 killed $vgpr6, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93840B	  renamable $vgpr2 = nofpexcept V_MIN_F32_e32 killed $vgpr8, $vgpr0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93856B	  renamable $vgpr4 = nofpexcept V_MIN_F32_e32 killed $vgpr4, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93872B	  renamable $vgpr5 = nofpexcept V_MIN_F32_e32 killed $vgpr5, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93888B	  renamable $vgpr6 = nofpexcept V_MIN_F32_e32 killed $vgpr18, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93904B	  renamable $vgpr8 = nofpexcept V_MIN_F32_e32 killed $vgpr20, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93920B	  renamable $vgpr10 = nofpexcept V_MIN_F32_e32 killed $vgpr26, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93936B	  renamable $vgpr12 = nofpexcept V_MIN_F32_e32 killed $vgpr28, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93952B	  renamable $vgpr14 = nofpexcept V_MIN_F32_e32 killed $vgpr30, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93968B	  renamable $vgpr16 = nofpexcept V_MIN_F32_e32 killed $vgpr32, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
93984B	  renamable $vgpr18 = nofpexcept V_MIN_F32_e32 killed $vgpr34, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94000B	  renamable $vgpr19 = nofpexcept V_MIN_F32_e32 killed $vgpr36, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94016B	  renamable $vgpr20 = nofpexcept V_MIN_F32_e32 killed $vgpr38, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94032B	  renamable $vgpr21 = nofpexcept V_MIN_F32_e32 killed $vgpr40, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94048B	  renamable $vgpr22 = nofpexcept V_MIN_F32_e32 killed $vgpr42, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94064B	  renamable $vgpr24 = nofpexcept V_MIN_F32_e32 killed $vgpr44, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94080B	  renamable $vgpr26 = nofpexcept V_MIN_F32_e32 killed $vgpr46, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94096B	  renamable $vgpr27 = nofpexcept V_MIN_F32_e32 killed $vgpr48, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94112B	  renamable $vgpr28 = nofpexcept V_MIN_F32_e32 killed $vgpr11, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94128B	  renamable $vgpr29 = nofpexcept V_MIN_F32_e32 killed $vgpr13, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94144B	  renamable $vgpr30 = nofpexcept V_MIN_F32_e32 killed $vgpr50, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94160B	  renamable $vgpr31 = nofpexcept V_MIN_F32_e32 killed $vgpr52, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94176B	  renamable $vgpr32 = nofpexcept V_MIN_F32_e32 killed $vgpr54, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94192B	  renamable $vgpr33 = nofpexcept V_MIN_F32_e32 killed $vgpr56, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94208B	  renamable $vgpr34 = nofpexcept V_MIN_F32_e32 killed $vgpr130, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94224B	  renamable $vgpr35 = nofpexcept V_MIN_F32_e32 killed $vgpr131, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94240B	  renamable $vgpr36 = nofpexcept V_MIN_F32_e32 killed $vgpr132, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94256B	  renamable $vgpr37 = nofpexcept V_MIN_F32_e32 killed $vgpr133, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94272B	  renamable $vgpr38 = nofpexcept V_MIN_F32_e32 killed $vgpr153, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94288B	  renamable $vgpr39 = nofpexcept V_MIN_F32_e32 killed $vgpr154, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94304B	  renamable $vgpr40 = nofpexcept V_MIN_F32_e32 killed $vgpr155, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94320B	  renamable $vgpr41 = nofpexcept V_MIN_F32_e32 killed $vgpr156, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94336B	  renamable $vgpr42 = nofpexcept V_MIN_F32_e32 killed $vgpr15, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94352B	  renamable $vgpr43 = nofpexcept V_MIN_F32_e32 killed $vgpr17, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94368B	  renamable $vgpr44 = nofpexcept V_MIN_F32_e32 killed $vgpr23, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94384B	  renamable $vgpr45 = nofpexcept V_MIN_F32_e32 killed $vgpr25, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94400B	  renamable $vgpr46 = nofpexcept V_MIN_F32_e32 killed $vgpr157, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94416B	  renamable $vgpr47 = nofpexcept V_MIN_F32_e32 killed $vgpr158, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94432B	  renamable $vgpr48 = nofpexcept V_MIN_F32_e32 killed $vgpr159, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94448B	  renamable $vgpr49 = nofpexcept V_MIN_F32_e32 killed $vgpr160, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94464B	  renamable $vgpr50 = nofpexcept V_MIN_F32_e32 killed $vgpr161, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94480B	  renamable $vgpr51 = nofpexcept V_MIN_F32_e32 killed $vgpr162, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94496B	  renamable $vgpr52 = nofpexcept V_MIN_F32_e32 killed $vgpr163, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94512B	  renamable $vgpr53 = nofpexcept V_MIN_F32_e32 killed $vgpr164, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94528B	  renamable $vgpr54 = nofpexcept V_MIN_F32_e32 killed $vgpr165, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94544B	  renamable $vgpr55 = nofpexcept V_MIN_F32_e32 killed $vgpr166, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94560B	  renamable $vgpr56 = nofpexcept V_MIN_F32_e32 killed $vgpr168, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94576B	  renamable $vgpr57 = nofpexcept V_MIN_F32_e32 killed $vgpr170, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94592B	  renamable $vgpr58 = nofpexcept V_MIN_F32_e32 killed $vgpr75, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94608B	  renamable $vgpr60 = nofpexcept V_MIN_F32_e32 killed $vgpr77, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94624B	  renamable $vgpr59 = nofpexcept V_MIN_F32_e32 killed $vgpr59, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94640B	  renamable $vgpr61 = nofpexcept V_MIN_F32_e32 killed $vgpr61, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94656B	  renamable $vgpr62 = nofpexcept V_MIN_F32_e32 killed $vgpr67, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94672B	  renamable $vgpr64 = nofpexcept V_MIN_F32_e32 killed $vgpr171, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94688B	  renamable $vgpr63 = nofpexcept V_MIN_F32_e32 killed $vgpr63, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94704B	  renamable $vgpr65 = nofpexcept V_MIN_F32_e32 killed $vgpr65, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94720B	  renamable $vgpr66 = nofpexcept V_MIN_F32_e32 killed $vgpr172, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94736B	  renamable $vgpr67 = nofpexcept V_MIN_F32_e32 killed $vgpr174, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94752B	  renamable $vgpr74 = nofpexcept V_MIN_F32_e32 killed $vgpr139, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94768B	  renamable $vgpr75 = nofpexcept V_MIN_F32_e32 killed $vgpr141, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94784B	  renamable $vgpr76 = nofpexcept V_MIN_F32_e32 killed $vgpr143, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94800B	  renamable $vgpr77 = nofpexcept V_MIN_F32_e32 killed $vgpr145, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94816B	  renamable $vgpr78 = nofpexcept V_MIN_F32_e32 killed $vgpr79, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94832B	  renamable $vgpr79 = nofpexcept V_MIN_F32_e32 killed $vgpr137, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94848B	  renamable $vgpr80 = nofpexcept V_MIN_F32_e32 killed $vgpr7, $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94864B	  renamable $vgpr0 = nofpexcept V_MIN_F32_e32 killed $vgpr9, killed $vgpr0, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94880B	  renamable $vgpr4 = nofpexcept V_MAX_F32_e64 0, killed $vgpr4, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94896B	  renamable $vgpr5 = nofpexcept V_MAX_F32_e64 0, killed $vgpr5, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94912B	  renamable $vgpr6 = nofpexcept V_MAX_F32_e64 0, killed $vgpr6, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94928B	  renamable $vgpr7 = nofpexcept V_MAX_F32_e64 0, killed $vgpr8, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94944B	  renamable $vgpr8 = nofpexcept V_MAX_F32_e64 0, killed $vgpr10, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94960B	  renamable $vgpr9 = nofpexcept V_MAX_F32_e64 0, killed $vgpr12, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94976B	  renamable $vgpr10 = nofpexcept V_MAX_F32_e64 0, killed $vgpr14, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
94992B	  renamable $vgpr11 = nofpexcept V_MAX_F32_e64 0, killed $vgpr16, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95008B	  renamable $vgpr12 = nofpexcept V_MAX_F32_e64 0, killed $vgpr18, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95024B	  renamable $vgpr13 = nofpexcept V_MAX_F32_e64 0, killed $vgpr19, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95040B	  renamable $vgpr14 = nofpexcept V_MAX_F32_e64 0, killed $vgpr20, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95056B	  renamable $vgpr15 = nofpexcept V_MAX_F32_e64 0, killed $vgpr21, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95072B	  renamable $vgpr16 = nofpexcept V_MAX_F32_e64 0, killed $vgpr22, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95088B	  renamable $vgpr17 = nofpexcept V_MAX_F32_e64 0, killed $vgpr24, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95104B	  renamable $vgpr18 = nofpexcept V_MAX_F32_e64 0, killed $vgpr26, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95120B	  renamable $vgpr19 = nofpexcept V_MAX_F32_e64 0, killed $vgpr27, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95136B	  renamable $vgpr20 = nofpexcept V_MAX_F32_e64 0, killed $vgpr28, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95152B	  renamable $vgpr21 = nofpexcept V_MAX_F32_e64 0, killed $vgpr29, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95168B	  renamable $vgpr22 = nofpexcept V_MAX_F32_e64 0, killed $vgpr30, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95184B	  renamable $vgpr23 = nofpexcept V_MAX_F32_e64 0, killed $vgpr31, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95200B	  renamable $vgpr24 = nofpexcept V_MAX_F32_e64 0, killed $vgpr32, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95216B	  renamable $vgpr25 = nofpexcept V_MAX_F32_e64 0, killed $vgpr33, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95232B	  renamable $vgpr26 = nofpexcept V_MAX_F32_e64 0, killed $vgpr34, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95248B	  renamable $vgpr27 = nofpexcept V_MAX_F32_e64 0, killed $vgpr35, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95264B	  renamable $vgpr28 = nofpexcept V_MAX_F32_e64 0, killed $vgpr36, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95280B	  renamable $vgpr29 = nofpexcept V_MAX_F32_e64 0, killed $vgpr37, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95296B	  renamable $vgpr30 = nofpexcept V_MAX_F32_e64 0, killed $vgpr38, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95312B	  renamable $vgpr31 = nofpexcept V_MAX_F32_e64 0, killed $vgpr39, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95328B	  renamable $vgpr32 = nofpexcept V_MAX_F32_e64 0, killed $vgpr40, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95344B	  renamable $vgpr33 = nofpexcept V_MAX_F32_e64 0, killed $vgpr41, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95360B	  renamable $vgpr34 = nofpexcept V_MAX_F32_e64 0, killed $vgpr42, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95376B	  renamable $vgpr35 = nofpexcept V_MAX_F32_e64 0, killed $vgpr43, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95392B	  renamable $vgpr36 = nofpexcept V_MAX_F32_e64 0, killed $vgpr44, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95408B	  renamable $vgpr37 = nofpexcept V_MAX_F32_e64 0, killed $vgpr45, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95424B	  renamable $vgpr38 = nofpexcept V_MAX_F32_e64 0, killed $vgpr46, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95440B	  renamable $vgpr39 = nofpexcept V_MAX_F32_e64 0, killed $vgpr47, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95456B	  renamable $vgpr40 = nofpexcept V_MAX_F32_e64 0, killed $vgpr48, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95472B	  renamable $vgpr41 = nofpexcept V_MAX_F32_e64 0, killed $vgpr49, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95488B	  renamable $vgpr42 = nofpexcept V_MAX_F32_e64 0, killed $vgpr50, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95504B	  renamable $vgpr43 = nofpexcept V_MAX_F32_e64 0, killed $vgpr51, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95520B	  renamable $vgpr44 = nofpexcept V_MAX_F32_e64 0, killed $vgpr52, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95536B	  renamable $vgpr45 = nofpexcept V_MAX_F32_e64 0, killed $vgpr53, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95552B	  renamable $vgpr46 = nofpexcept V_MAX_F32_e64 0, killed $vgpr54, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95568B	  renamable $vgpr47 = nofpexcept V_MAX_F32_e64 0, killed $vgpr55, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95584B	  renamable $vgpr48 = nofpexcept V_MAX_F32_e64 0, killed $vgpr56, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95600B	  renamable $vgpr49 = nofpexcept V_MAX_F32_e64 0, killed $vgpr57, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95616B	  renamable $vgpr50 = nofpexcept V_MAX_F32_e64 0, killed $vgpr58, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95632B	  renamable $vgpr51 = nofpexcept V_MAX_F32_e64 0, killed $vgpr60, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95648B	  renamable $vgpr52 = nofpexcept V_MAX_F32_e64 0, killed $vgpr59, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95664B	  renamable $vgpr53 = nofpexcept V_MAX_F32_e64 0, killed $vgpr61, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95680B	  renamable $vgpr54 = nofpexcept V_MAX_F32_e64 0, killed $vgpr62, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95696B	  renamable $vgpr55 = nofpexcept V_MAX_F32_e64 0, killed $vgpr64, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95712B	  renamable $vgpr56 = nofpexcept V_MAX_F32_e64 0, killed $vgpr63, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95728B	  renamable $vgpr57 = nofpexcept V_MAX_F32_e64 0, killed $vgpr65, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95744B	  renamable $vgpr58 = nofpexcept V_MAX_F32_e64 0, killed $vgpr66, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95760B	  renamable $vgpr59 = nofpexcept V_MAX_F32_e64 0, killed $vgpr67, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95776B	  renamable $vgpr60 = nofpexcept V_MAX_F32_e64 0, killed $vgpr74, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95792B	  renamable $vgpr61 = nofpexcept V_MAX_F32_e64 0, killed $vgpr75, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95808B	  renamable $vgpr62 = nofpexcept V_MAX_F32_e64 0, killed $vgpr76, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95824B	  renamable $vgpr63 = nofpexcept V_MAX_F32_e64 0, killed $vgpr77, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95840B	  renamable $vgpr64 = nofpexcept V_MAX_F32_e64 0, killed $vgpr78, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95856B	  renamable $vgpr65 = nofpexcept V_MAX_F32_e64 0, killed $vgpr79, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95872B	  renamable $vgpr66 = nofpexcept V_MAX_F32_e64 0, killed $vgpr80, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95888B	  renamable $vgpr67 = nofpexcept V_MAX_F32_e64 0, killed $vgpr0, 1, $sgpr15, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
95904B	  renamable $vgpr0 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
95920B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $sgpr14, killed $vgpr0, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
95936B	  renamable $vgpr74 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr1, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
95952B	  renamable $vgpr75 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
95968B	  renamable $vgpr76 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
95984B	  renamable $vgpr77 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr177, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96000B	  renamable $vgpr78 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr178, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96016B	  renamable $vgpr79 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr179, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96032B	  renamable $vgpr80 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr180, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96048B	  renamable $vgpr130 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr81, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96064B	  renamable $vgpr131 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr82, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96080B	  renamable $vgpr132 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr83, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96096B	  renamable $vgpr133 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr84, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96112B	  renamable $vgpr134 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr85, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96128B	  renamable $vgpr135 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr86, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96144B	  renamable $vgpr136 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr87, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96160B	  renamable $vgpr137 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr88, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96176B	  renamable $vgpr138 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr89, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96192B	  renamable $vgpr139 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr90, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96208B	  renamable $vgpr140 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr91, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96224B	  renamable $vgpr141 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr92, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96240B	  renamable $vgpr142 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr93, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96256B	  renamable $vgpr143 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr94, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96272B	  renamable $vgpr144 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr95, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96288B	  renamable $vgpr145 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr96, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96304B	  renamable $vgpr153 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr97, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96320B	  renamable $vgpr154 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr98, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96336B	  renamable $vgpr155 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr99, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96352B	  renamable $vgpr156 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr100, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96368B	  renamable $vgpr157 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr101, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96384B	  renamable $vgpr158 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr102, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96400B	  renamable $vgpr159 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr103, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96416B	  renamable $vgpr160 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr104, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96432B	  renamable $vgpr161 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr105, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96448B	  renamable $vgpr162 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr106, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96464B	  renamable $vgpr163 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr107, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96480B	  renamable $vgpr164 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr108, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96496B	  renamable $vgpr165 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr109, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96512B	  renamable $vgpr166 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr110, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96528B	  renamable $vgpr167 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr111, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96544B	  renamable $vgpr168 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr112, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96560B	  renamable $vgpr169 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr113, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96576B	  renamable $vgpr170 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr114, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96592B	  renamable $vgpr171 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr115, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96608B	  renamable $vgpr172 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr116, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96624B	  renamable $vgpr173 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr117, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96640B	  renamable $vgpr174 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr118, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96656B	  renamable $vgpr181 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr119, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96672B	  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr120, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96688B	  renamable $vgpr183 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr121, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96704B	  renamable $vgpr184 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr122, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96720B	  renamable $vgpr185 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr123, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96736B	  renamable $vgpr186 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr124, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96752B	  renamable $vgpr187 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr125, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96768B	  renamable $vgpr188 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr126, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96784B	  renamable $vgpr189 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr127, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96800B	  renamable $vgpr190 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr128, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96816B	  renamable $vgpr191 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr129, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96832B	  renamable $vgpr192 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr73, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96848B	  renamable $vgpr193 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr72, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96864B	  renamable $vgpr194 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr71, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96880B	  renamable $vgpr195 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr70, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96896B	  renamable $vgpr196 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr69, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96912B	  renamable $vgpr197 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr68, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96928B	  renamable $vgpr198 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr3, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96944B	  renamable $vgpr0 = nofpexcept V_MUL_F32_e32 killed $vgpr0, $vgpr2, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
96960B	  renamable $vgpr74 = nofpexcept V_EXP_F32_e32 killed $vgpr74, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
96976B	  renamable $vgpr75 = nofpexcept V_EXP_F32_e32 killed $vgpr75, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
96992B	  renamable $vgpr76 = nofpexcept V_EXP_F32_e32 killed $vgpr76, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97008B	  renamable $vgpr77 = nofpexcept V_EXP_F32_e32 killed $vgpr77, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97024B	  renamable $vgpr78 = nofpexcept V_EXP_F32_e32 killed $vgpr78, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97040B	  renamable $vgpr79 = nofpexcept V_EXP_F32_e32 killed $vgpr79, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97056B	  renamable $vgpr80 = nofpexcept V_EXP_F32_e32 killed $vgpr80, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97072B	  renamable $vgpr130 = nofpexcept V_EXP_F32_e32 killed $vgpr130, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97088B	  renamable $vgpr131 = nofpexcept V_EXP_F32_e32 killed $vgpr131, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97104B	  renamable $vgpr132 = nofpexcept V_EXP_F32_e32 killed $vgpr132, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97120B	  renamable $vgpr133 = nofpexcept V_EXP_F32_e32 killed $vgpr133, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97136B	  renamable $vgpr134 = nofpexcept V_EXP_F32_e32 killed $vgpr134, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97152B	  renamable $vgpr135 = nofpexcept V_EXP_F32_e32 killed $vgpr135, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97168B	  renamable $vgpr136 = nofpexcept V_EXP_F32_e32 killed $vgpr136, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97184B	  renamable $vgpr137 = nofpexcept V_EXP_F32_e32 killed $vgpr137, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97200B	  renamable $vgpr138 = nofpexcept V_EXP_F32_e32 killed $vgpr138, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97216B	  renamable $vgpr139 = nofpexcept V_EXP_F32_e32 killed $vgpr139, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97232B	  renamable $vgpr140 = nofpexcept V_EXP_F32_e32 killed $vgpr140, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97248B	  renamable $vgpr141 = nofpexcept V_EXP_F32_e32 killed $vgpr141, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97264B	  renamable $vgpr142 = nofpexcept V_EXP_F32_e32 killed $vgpr142, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97280B	  renamable $vgpr143 = nofpexcept V_EXP_F32_e32 killed $vgpr143, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97296B	  renamable $vgpr144 = nofpexcept V_EXP_F32_e32 killed $vgpr144, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97312B	  renamable $vgpr145 = nofpexcept V_EXP_F32_e32 killed $vgpr145, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97328B	  renamable $vgpr153 = nofpexcept V_EXP_F32_e32 killed $vgpr153, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97344B	  renamable $vgpr154 = nofpexcept V_EXP_F32_e32 killed $vgpr154, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97360B	  renamable $vgpr155 = nofpexcept V_EXP_F32_e32 killed $vgpr155, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97376B	  renamable $vgpr156 = nofpexcept V_EXP_F32_e32 killed $vgpr156, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97392B	  renamable $vgpr157 = nofpexcept V_EXP_F32_e32 killed $vgpr157, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97408B	  renamable $vgpr158 = nofpexcept V_EXP_F32_e32 killed $vgpr158, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97424B	  renamable $vgpr159 = nofpexcept V_EXP_F32_e32 killed $vgpr159, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97440B	  renamable $vgpr160 = nofpexcept V_EXP_F32_e32 killed $vgpr160, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97456B	  renamable $vgpr161 = nofpexcept V_EXP_F32_e32 killed $vgpr161, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97472B	  renamable $vgpr162 = nofpexcept V_EXP_F32_e32 killed $vgpr162, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97488B	  renamable $vgpr163 = nofpexcept V_EXP_F32_e32 killed $vgpr163, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97504B	  renamable $vgpr164 = nofpexcept V_EXP_F32_e32 killed $vgpr164, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97520B	  renamable $vgpr165 = nofpexcept V_EXP_F32_e32 killed $vgpr165, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97536B	  renamable $vgpr199 = nofpexcept V_EXP_F32_e32 killed $vgpr166, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97552B	  renamable $vgpr200 = nofpexcept V_EXP_F32_e32 killed $vgpr167, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97568B	  renamable $vgpr201 = nofpexcept V_EXP_F32_e32 killed $vgpr168, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97584B	  renamable $vgpr202 = nofpexcept V_EXP_F32_e32 killed $vgpr169, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97600B	  renamable $vgpr203 = nofpexcept V_EXP_F32_e32 killed $vgpr170, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97616B	  renamable $vgpr204 = nofpexcept V_EXP_F32_e32 killed $vgpr171, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97632B	  renamable $vgpr205 = nofpexcept V_EXP_F32_e32 killed $vgpr172, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97648B	  renamable $vgpr206 = nofpexcept V_EXP_F32_e32 killed $vgpr173, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97664B	  renamable $vgpr174 = nofpexcept V_EXP_F32_e32 killed $vgpr174, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97680B	  renamable $vgpr181 = nofpexcept V_EXP_F32_e32 killed $vgpr181, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97696B	  renamable $vgpr182 = nofpexcept V_EXP_F32_e32 killed $vgpr182, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97712B	  renamable $vgpr183 = nofpexcept V_EXP_F32_e32 killed $vgpr183, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97728B	  renamable $vgpr184 = nofpexcept V_EXP_F32_e32 killed $vgpr184, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97744B	  renamable $vgpr185 = nofpexcept V_EXP_F32_e32 killed $vgpr185, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97760B	  renamable $vgpr186 = nofpexcept V_EXP_F32_e32 killed $vgpr186, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97776B	  renamable $vgpr187 = nofpexcept V_EXP_F32_e32 killed $vgpr187, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97792B	  renamable $vgpr188 = nofpexcept V_EXP_F32_e32 killed $vgpr188, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97808B	  renamable $vgpr189 = nofpexcept V_EXP_F32_e32 killed $vgpr189, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97824B	  renamable $vgpr190 = nofpexcept V_EXP_F32_e32 killed $vgpr190, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97840B	  renamable $vgpr191 = nofpexcept V_EXP_F32_e32 killed $vgpr191, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97856B	  renamable $vgpr192 = nofpexcept V_EXP_F32_e32 killed $vgpr192, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97872B	  renamable $vgpr193 = nofpexcept V_EXP_F32_e32 killed $vgpr193, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97888B	  renamable $vgpr194 = nofpexcept V_EXP_F32_e32 killed $vgpr194, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97904B	  renamable $vgpr195 = nofpexcept V_EXP_F32_e32 killed $vgpr195, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97920B	  renamable $vgpr196 = nofpexcept V_EXP_F32_e32 killed $vgpr196, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97936B	  renamable $vgpr197 = nofpexcept V_EXP_F32_e32 killed $vgpr197, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97952B	  renamable $vgpr198 = nofpexcept V_EXP_F32_e32 killed $vgpr198, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97968B	  renamable $vgpr0 = nofpexcept V_EXP_F32_e32 killed $vgpr0, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
97984B	  renamable $vgpr74 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr74, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98000B	  renamable $vgpr75 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr75, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98016B	  renamable $vgpr76 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr76, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98032B	  renamable $vgpr77 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr77, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98048B	  renamable $vgpr78 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr78, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98064B	  renamable $vgpr79 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr79, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98080B	  renamable $vgpr80 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr80, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98096B	  renamable $vgpr207 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr130, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98112B	  renamable $vgpr208 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr131, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98128B	  renamable $vgpr209 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr132, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98144B	  renamable $vgpr210 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr133, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98160B	  renamable $vgpr211 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr134, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98176B	  renamable $vgpr212 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr135, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98192B	  renamable $vgpr213 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr136, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98208B	  renamable $vgpr214 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr137, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98224B	  renamable $vgpr215 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr138, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98240B	  renamable $vgpr216 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr139, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98256B	  renamable $vgpr217 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr140, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98272B	  renamable $vgpr218 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr141, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98288B	  renamable $vgpr219 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr142, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98304B	  renamable $vgpr220 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr143, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98320B	  renamable $vgpr221 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr144, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98336B	  renamable $vgpr222 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr145, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98352B	  renamable $vgpr223 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr153, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98368B	  renamable $vgpr224 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr154, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98384B	  renamable $vgpr225 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr155, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98400B	  renamable $vgpr226 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr156, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98416B	  renamable $vgpr173 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr157, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98432B	  renamable $vgpr172 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr158, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98448B	  renamable $vgpr171 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr159, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98464B	  renamable $vgpr170 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr160, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98480B	  renamable $vgpr169 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr161, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98496B	  renamable $vgpr168 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr162, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98512B	  renamable $vgpr167 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr163, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98528B	  renamable $vgpr166 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr164, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98544B	  renamable $vgpr165 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr165, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98560B	  renamable $vgpr164 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr199, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98576B	  renamable $vgpr163 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr200, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98592B	  renamable $vgpr162 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr201, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98608B	  renamable $vgpr161 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr202, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98624B	  renamable $vgpr160 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr203, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98640B	  renamable $vgpr159 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr204, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98656B	  renamable $vgpr158 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr205, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98672B	  renamable $vgpr157 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr206, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98688B	  renamable $vgpr156 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr174, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98704B	  renamable $vgpr155 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr181, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98720B	  renamable $vgpr154 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr182, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98736B	  renamable $vgpr153 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr183, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98752B	  renamable $vgpr145 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr184, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98768B	  renamable $vgpr144 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr185, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98784B	  renamable $vgpr143 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr186, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98800B	  renamable $vgpr142 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr187, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98816B	  renamable $vgpr141 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr188, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98832B	  renamable $vgpr140 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr189, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98848B	  renamable $vgpr139 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr190, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98864B	  renamable $vgpr138 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr191, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98880B	  renamable $vgpr137 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr192, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98896B	  renamable $vgpr136 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr193, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98912B	  renamable $vgpr135 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr194, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98928B	  renamable $vgpr134 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr195, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
98944B	  renamable $vgpr133 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr196, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99008B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr74, 0, $vgpr74, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99024B	  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99040B	  renamable $vgpr132 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr197, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99056B	  renamable $vgpr131 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr198, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99072B	  renamable $vgpr130 = nofpexcept V_ADD_F32_e32 1065353216, killed $vgpr0, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
99088B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99120B	  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99136B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr1, 0, $vgpr74, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99152B	  renamable $vgpr182 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99168B	  renamable $vgpr183 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr182, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99200B	  renamable $vgpr182 = nofpexcept V_FMAC_F32_e32 killed $vgpr183, $vgpr181, killed $vgpr182(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99216B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr182, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99280B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr75, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99296B	  renamable $vgpr183 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99328B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr182, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99344B	  renamable $vgpr74 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr74, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99360B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr183, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99392B	  renamable $vgpr183 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr183, $vgpr183(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99408B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr175, 0, $vgpr75, 0, $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99424B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr183, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99440B	  renamable $vgpr181 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99472B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr181, $vgpr183, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99488B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99552B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr76, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99568B	  renamable $vgpr181 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99600B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr183, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99616B	  renamable $vgpr75 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr75, 0, killed $vgpr175, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99632B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr181, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99664B	  renamable $vgpr181 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr181, $vgpr181(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99680B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr176, 0, $vgpr76, 0, $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99696B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr181, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99712B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99744B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr181, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99760B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99824B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr77, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99840B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99872B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr181, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99888B	  renamable $vgpr76 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr76, 0, killed $vgpr176, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99904B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99936B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99952B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr177, 0, $vgpr77, 0, $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99968B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99984B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100016B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100032B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100096B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr78, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100112B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100144B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100160B	  renamable $vgpr77 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr77, 0, killed $vgpr177, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100176B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100208B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100224B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr178, 0, $vgpr78, 0, $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100240B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100256B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100288B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100304B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100368B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr79, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100384B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100416B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100432B	  renamable $vgpr78 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr78, 0, killed $vgpr178, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100448B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100480B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100496B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr179, 0, $vgpr79, 0, $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100512B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100528B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100560B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100576B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100640B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr80, 0, $vgpr180, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100656B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100688B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100704B	  renamable $vgpr79 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr79, 0, killed $vgpr179, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100720B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100752B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100768B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr180, 0, $vgpr80, 0, $vgpr180, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100784B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100800B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100832B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100848B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100912B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr207, 0, $vgpr207, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100928B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100960B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100976B	  renamable $vgpr80 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr80, 0, killed $vgpr180, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
100992B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101024B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101040B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr207, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101056B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101072B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101104B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101120B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101184B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr208, 0, $vgpr208, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101200B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101232B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101248B	  renamable $vgpr81 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr207, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101264B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101296B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101312B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr208, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101328B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101344B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101376B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101392B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101456B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr209, 0, $vgpr209, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101472B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101504B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101520B	  renamable $vgpr82 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr208, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101536B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101568B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101584B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr209, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101600B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101616B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101648B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101664B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101728B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr210, 0, $vgpr210, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101744B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101776B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101792B	  renamable $vgpr83 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr209, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101808B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101840B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101856B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr210, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101872B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101888B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101920B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
101936B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102000B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr211, 0, $vgpr211, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102016B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102048B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102064B	  renamable $vgpr84 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr210, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102080B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102112B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102128B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr211, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102144B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102160B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102192B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102208B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102272B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr212, 0, $vgpr212, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102288B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102320B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102336B	  renamable $vgpr85 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr211, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102352B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102384B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102400B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr212, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102416B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102432B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102464B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102480B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102544B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr213, 0, $vgpr213, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102560B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102592B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102608B	  renamable $vgpr86 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr212, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102624B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102656B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102672B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr213, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102688B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102704B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102736B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102752B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102816B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr214, 0, $vgpr214, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102832B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102864B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102880B	  renamable $vgpr87 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr213, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102896B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102928B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102944B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr214, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102960B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102976B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103008B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103024B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103088B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr215, 0, $vgpr215, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103104B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103136B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103152B	  renamable $vgpr88 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr214, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103168B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103200B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103216B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr215, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103232B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103248B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103280B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103296B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103360B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr216, 0, $vgpr216, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103376B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103408B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103424B	  renamable $vgpr89 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr215, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103440B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103472B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103488B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr216, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103504B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103520B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103552B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103568B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103632B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr217, 0, $vgpr217, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103648B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103680B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103696B	  renamable $vgpr90 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr216, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103712B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103744B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103760B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr217, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103776B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103792B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103824B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103840B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103904B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr218, 0, $vgpr218, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103920B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103952B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103968B	  renamable $vgpr91 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr217, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
103984B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104016B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104032B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr218, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104048B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104064B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104096B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104112B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104176B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr219, 0, $vgpr219, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104192B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104224B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104240B	  renamable $vgpr92 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr218, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104256B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104288B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104304B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr219, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104320B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104336B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104368B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104384B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104448B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr220, 0, $vgpr220, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104464B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104496B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104512B	  renamable $vgpr93 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr219, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104528B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104560B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104576B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr220, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104592B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104608B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104640B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104656B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104720B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr221, 0, $vgpr221, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104736B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104768B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104784B	  renamable $vgpr94 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr220, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104800B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104832B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104848B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr221, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104864B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104880B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104912B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104928B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
104992B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr222, 0, $vgpr222, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105008B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105040B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105056B	  renamable $vgpr95 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr221, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105072B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105104B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105120B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr222, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105136B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105152B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105184B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105200B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105264B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr223, 0, $vgpr223, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105280B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105312B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105328B	  renamable $vgpr96 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr222, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105344B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105376B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105392B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr223, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105408B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105424B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105456B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105472B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105536B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr224, 0, $vgpr224, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105552B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105584B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105600B	  renamable $vgpr97 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr223, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105616B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105648B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105664B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr224, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105680B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105696B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105728B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105744B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105808B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr225, 0, $vgpr225, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105824B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105856B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105872B	  renamable $vgpr98 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr224, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105888B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105920B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105936B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr225, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105952B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
105968B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106000B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106016B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106080B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr226, 0, $vgpr226, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106096B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106128B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106144B	  renamable $vgpr99 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr225, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106160B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106192B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106208B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr226, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106224B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106240B	  renamable $vgpr175 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106272B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr175, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106288B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106352B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr173, 0, $vgpr173, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106368B	  renamable $vgpr175 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106400B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106416B	  renamable $vgpr100 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr226, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106432B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr175, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106464B	  renamable $vgpr175 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr175, $vgpr175(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106480B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr173, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106496B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr175, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106512B	  renamable $vgpr176 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106544B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr176, $vgpr175, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106560B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106624B	  renamable $vgpr174, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr172, 0, $vgpr172, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106640B	  renamable $vgpr176 = nofpexcept V_RCP_F32_e32 $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106672B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr175, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106688B	  renamable $vgpr101 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106704B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr176, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106736B	  renamable $vgpr176 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr176, $vgpr176(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106752B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr172, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106768B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr176, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106784B	  renamable $vgpr173 = nofpexcept V_FMA_F32_e64 1, $vgpr174, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106816B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr173, $vgpr176, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106832B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr174, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106896B	  renamable $vgpr173, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr171, 0, $vgpr171, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106912B	  renamable $vgpr174 = nofpexcept V_RCP_F32_e32 $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106944B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr176, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106960B	  renamable $vgpr102 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
106976B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr174, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107008B	  renamable $vgpr174 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr174, $vgpr174(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107024B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr171, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107040B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr174, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107056B	  renamable $vgpr172 = nofpexcept V_FMA_F32_e64 1, $vgpr173, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107088B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr172, $vgpr174, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107104B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr173, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107168B	  renamable $vgpr172, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr170, 0, $vgpr170, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107184B	  renamable $vgpr173 = nofpexcept V_RCP_F32_e32 $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107216B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr174, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107232B	  renamable $vgpr103 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107248B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr173, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107280B	  renamable $vgpr173 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr173, $vgpr173(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107296B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr170, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107312B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr173, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107328B	  renamable $vgpr171 = nofpexcept V_FMA_F32_e64 1, $vgpr172, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107360B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr171, $vgpr173, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107376B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr172, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107440B	  renamable $vgpr171, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr169, 0, $vgpr169, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107456B	  renamable $vgpr172 = nofpexcept V_RCP_F32_e32 $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107488B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr173, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107504B	  renamable $vgpr104 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107520B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr172, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107552B	  renamable $vgpr172 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr172, $vgpr172(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107568B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr169, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107584B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr172, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107600B	  renamable $vgpr170 = nofpexcept V_FMA_F32_e64 1, $vgpr171, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107632B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr170, $vgpr172, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107648B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr171, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107712B	  renamable $vgpr170, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr168, 0, $vgpr168, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107728B	  renamable $vgpr171 = nofpexcept V_RCP_F32_e32 $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107760B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr172, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107776B	  renamable $vgpr105 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107792B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr171, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107824B	  renamable $vgpr171 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr171, $vgpr171(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107840B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr168, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107856B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr171, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107872B	  renamable $vgpr169 = nofpexcept V_FMA_F32_e64 1, $vgpr170, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107904B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr169, $vgpr171, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107920B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr170, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
107984B	  renamable $vgpr169, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr167, 0, $vgpr167, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108000B	  renamable $vgpr170 = nofpexcept V_RCP_F32_e32 $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108032B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr171, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108048B	  renamable $vgpr106 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108064B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr170, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108096B	  renamable $vgpr170 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr170, $vgpr170(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108112B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr167, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108128B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr170, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108144B	  renamable $vgpr168 = nofpexcept V_FMA_F32_e64 1, $vgpr169, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108176B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr168, $vgpr170, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108192B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr169, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108256B	  renamable $vgpr168, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr166, 0, $vgpr166, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108272B	  renamable $vgpr169 = nofpexcept V_RCP_F32_e32 $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108304B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr170, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108320B	  renamable $vgpr107 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108336B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr169, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108368B	  renamable $vgpr169 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr169, $vgpr169(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108384B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr166, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108400B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr169, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108416B	  renamable $vgpr167 = nofpexcept V_FMA_F32_e64 1, $vgpr168, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108448B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr167, $vgpr169, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108464B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr168, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108528B	  renamable $vgpr167, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr165, 0, $vgpr165, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108544B	  renamable $vgpr168 = nofpexcept V_RCP_F32_e32 $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108576B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr169, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108592B	  renamable $vgpr108 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108608B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr168, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108640B	  renamable $vgpr168 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr168, $vgpr168(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108656B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr165, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108672B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr168, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108688B	  renamable $vgpr166 = nofpexcept V_FMA_F32_e64 1, $vgpr167, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108720B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr166, $vgpr168, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108736B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr167, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108800B	  renamable $vgpr166, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr164, 0, $vgpr164, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108816B	  renamable $vgpr167 = nofpexcept V_RCP_F32_e32 $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108848B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr168, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108864B	  renamable $vgpr109 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108880B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr167, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108912B	  renamable $vgpr167 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr167, $vgpr167(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108928B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr164, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108944B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr167, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108960B	  renamable $vgpr165 = nofpexcept V_FMA_F32_e64 1, $vgpr166, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
108992B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr165, $vgpr167, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109008B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr166, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109072B	  renamable $vgpr165, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr163, 0, $vgpr163, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109088B	  renamable $vgpr166 = nofpexcept V_RCP_F32_e32 $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109120B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr167, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109136B	  renamable $vgpr110 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109152B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr166, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109184B	  renamable $vgpr166 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr166, $vgpr166(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109200B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr163, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109216B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr166, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109232B	  renamable $vgpr164 = nofpexcept V_FMA_F32_e64 1, $vgpr165, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109264B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr164, $vgpr166, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109280B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr165, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109344B	  renamable $vgpr164, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr162, 0, $vgpr162, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109360B	  renamable $vgpr165 = nofpexcept V_RCP_F32_e32 $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109392B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr166, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109408B	  renamable $vgpr111 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109424B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr165, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109456B	  renamable $vgpr165 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr165, $vgpr165(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109472B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr162, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109488B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr165, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109504B	  renamable $vgpr163 = nofpexcept V_FMA_F32_e64 1, $vgpr164, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109536B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr163, $vgpr165, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109552B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr164, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109616B	  renamable $vgpr163, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr161, 0, $vgpr161, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109632B	  renamable $vgpr164 = nofpexcept V_RCP_F32_e32 $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109664B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr165, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109680B	  renamable $vgpr112 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109696B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr164, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109728B	  renamable $vgpr164 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr164, $vgpr164(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109744B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr161, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109760B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr164, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109776B	  renamable $vgpr162 = nofpexcept V_FMA_F32_e64 1, $vgpr163, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109808B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr162, $vgpr164, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109824B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr163, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109888B	  renamable $vgpr162, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr160, 0, $vgpr160, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109904B	  renamable $vgpr163 = nofpexcept V_RCP_F32_e32 $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109936B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr164, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109952B	  renamable $vgpr113 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
109968B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr163, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110000B	  renamable $vgpr163 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr163, $vgpr163(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110016B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr160, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110032B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr163, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110048B	  renamable $vgpr161 = nofpexcept V_FMA_F32_e64 1, $vgpr162, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110080B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr161, $vgpr163, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110096B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr162, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110160B	  renamable $vgpr161, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr159, 0, $vgpr159, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110176B	  renamable $vgpr162 = nofpexcept V_RCP_F32_e32 $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110208B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr163, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110224B	  renamable $vgpr114 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110240B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr162, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110272B	  renamable $vgpr162 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr162, $vgpr162(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110288B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr159, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110304B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr162, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110320B	  renamable $vgpr160 = nofpexcept V_FMA_F32_e64 1, $vgpr161, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110352B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr160, $vgpr162, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110368B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr161, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110432B	  renamable $vgpr160, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr158, 0, $vgpr158, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110448B	  renamable $vgpr161 = nofpexcept V_RCP_F32_e32 $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110480B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr162, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110496B	  renamable $vgpr115 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110512B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr161, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110544B	  renamable $vgpr161 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr161, $vgpr161(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110560B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr158, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110576B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr161, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110592B	  renamable $vgpr159 = nofpexcept V_FMA_F32_e64 1, $vgpr160, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110624B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr159, $vgpr161, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110640B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr160, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110704B	  renamable $vgpr159, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr157, 0, $vgpr157, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110720B	  renamable $vgpr160 = nofpexcept V_RCP_F32_e32 $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110752B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr161, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110768B	  renamable $vgpr116 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110784B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr160, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110816B	  renamable $vgpr160 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr160, $vgpr160(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110832B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr157, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110848B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr160, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110864B	  renamable $vgpr158 = nofpexcept V_FMA_F32_e64 1, $vgpr159, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110896B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr158, $vgpr160, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110912B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr159, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110976B	  renamable $vgpr158, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr156, 0, $vgpr156, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
110992B	  renamable $vgpr159 = nofpexcept V_RCP_F32_e32 $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111024B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr160, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111040B	  renamable $vgpr117 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111056B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr159, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111088B	  renamable $vgpr159 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr159, $vgpr159(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111104B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr156, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111120B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr159, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111136B	  renamable $vgpr157 = nofpexcept V_FMA_F32_e64 1, $vgpr158, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111168B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr157, $vgpr159, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111184B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr158, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111248B	  renamable $vgpr157, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr155, 0, $vgpr155, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111264B	  renamable $vgpr158 = nofpexcept V_RCP_F32_e32 $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111296B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr159, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111312B	  renamable $vgpr118 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111328B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr158, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111360B	  renamable $vgpr158 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr158, $vgpr158(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111376B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr155, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111392B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr158, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111408B	  renamable $vgpr156 = nofpexcept V_FMA_F32_e64 1, $vgpr157, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111440B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr156, $vgpr158, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111456B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr157, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111520B	  renamable $vgpr156, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr154, 0, $vgpr154, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111536B	  renamable $vgpr157 = nofpexcept V_RCP_F32_e32 $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111568B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr158, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111584B	  renamable $vgpr119 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111600B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr157, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111632B	  renamable $vgpr157 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr157, $vgpr157(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111648B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr154, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111664B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr157, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111680B	  renamable $vgpr155 = nofpexcept V_FMA_F32_e64 1, $vgpr156, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111712B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr155, $vgpr157, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111728B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr156, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111792B	  renamable $vgpr155, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr153, 0, $vgpr153, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111808B	  renamable $vgpr156 = nofpexcept V_RCP_F32_e32 $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111840B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr157, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111856B	  renamable $vgpr120 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111872B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr156, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111904B	  renamable $vgpr156 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr156, $vgpr156(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111920B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr153, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111936B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr156, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111952B	  renamable $vgpr154 = nofpexcept V_FMA_F32_e64 1, $vgpr155, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
111984B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr154, $vgpr156, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112000B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr155, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112064B	  renamable $vgpr154, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr145, 0, $vgpr145, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112080B	  renamable $vgpr155 = nofpexcept V_RCP_F32_e32 $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112112B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr156, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112128B	  renamable $vgpr121 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112144B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr155, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112176B	  renamable $vgpr155 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr155, $vgpr155(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112192B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr145, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112208B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr155, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112224B	  renamable $vgpr153 = nofpexcept V_FMA_F32_e64 1, $vgpr154, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112256B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr153, $vgpr155, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112272B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr154, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112336B	  renamable $vgpr153, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr144, 0, $vgpr144, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112352B	  renamable $vgpr154 = nofpexcept V_RCP_F32_e32 $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112384B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr155, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112400B	  renamable $vgpr122 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112416B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr154, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112448B	  renamable $vgpr154 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr154, $vgpr154(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112464B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr144, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112480B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr154, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112496B	  renamable $vgpr145 = nofpexcept V_FMA_F32_e64 1, $vgpr153, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112528B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr145, $vgpr154, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112544B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr153, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112608B	  renamable $vgpr145, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr143, 0, $vgpr143, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112624B	  renamable $vgpr153 = nofpexcept V_RCP_F32_e32 $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112656B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr154, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112672B	  renamable $vgpr123 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112688B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr153, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112720B	  renamable $vgpr153 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr153, $vgpr153(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112736B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr143, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112752B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr153, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112768B	  renamable $vgpr144 = nofpexcept V_FMA_F32_e64 1, $vgpr145, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112800B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr144, $vgpr153, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112816B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr145, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112880B	  renamable $vgpr144, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr142, 0, $vgpr142, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112896B	  renamable $vgpr145 = nofpexcept V_RCP_F32_e32 $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112928B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr153, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112944B	  renamable $vgpr124 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112960B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr145, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
112992B	  renamable $vgpr145 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr145, $vgpr145(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113008B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr142, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113024B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr145, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113040B	  renamable $vgpr143 = nofpexcept V_FMA_F32_e64 1, $vgpr144, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113072B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr143, $vgpr145, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113088B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr144, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113152B	  renamable $vgpr143, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr141, 0, $vgpr141, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113168B	  renamable $vgpr144 = nofpexcept V_RCP_F32_e32 $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113200B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr145, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113216B	  renamable $vgpr125 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113232B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr144, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113264B	  renamable $vgpr144 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr144, $vgpr144(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113280B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr141, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113296B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr144, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113312B	  renamable $vgpr142 = nofpexcept V_FMA_F32_e64 1, $vgpr143, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113344B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr142, $vgpr144, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113360B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr143, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113424B	  renamable $vgpr142, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr140, 0, $vgpr140, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113440B	  renamable $vgpr143 = nofpexcept V_RCP_F32_e32 $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113472B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr144, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113488B	  renamable $vgpr126 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113504B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr143, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113536B	  renamable $vgpr143 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr143, $vgpr143(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113552B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr140, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113568B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr143, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113584B	  renamable $vgpr141 = nofpexcept V_FMA_F32_e64 1, $vgpr142, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113616B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr141, $vgpr143, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113632B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr142, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113696B	  renamable $vgpr141, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr139, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113712B	  renamable $vgpr142 = nofpexcept V_RCP_F32_e32 $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113744B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr143, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113760B	  renamable $vgpr127 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr140, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113776B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr142, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113808B	  renamable $vgpr142 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr142, $vgpr142(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113824B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr139, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113840B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr142, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113856B	  renamable $vgpr140 = nofpexcept V_FMA_F32_e64 1, $vgpr141, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113888B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr140, $vgpr142, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113904B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr141, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113968B	  renamable $vgpr140, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr138, 0, $vgpr138, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
113984B	  renamable $vgpr141 = nofpexcept V_RCP_F32_e32 $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114016B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr142, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114032B	  renamable $vgpr128 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr139, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114048B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr141, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114080B	  renamable $vgpr141 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr141, $vgpr141(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114096B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr138, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114112B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr141, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114128B	  renamable $vgpr139 = nofpexcept V_FMA_F32_e64 1, $vgpr140, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114160B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr139, $vgpr141, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114176B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr140, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114240B	  renamable $vgpr139, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr137, 0, $vgpr137, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114256B	  renamable $vgpr140 = nofpexcept V_RCP_F32_e32 $vgpr139, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114288B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr141, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114304B	  renamable $vgpr129 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr138, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114320B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr139, 0, $vgpr140, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114352B	  renamable $vgpr140 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr140, $vgpr140(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114368B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr73, 0, $vgpr137, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114384B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr140, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114400B	  renamable $vgpr138 = nofpexcept V_FMA_F32_e64 1, $vgpr139, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114432B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr138, $vgpr140, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114448B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr139, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114512B	  renamable $vgpr138, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr136, 0, $vgpr136, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114528B	  renamable $vgpr139 = nofpexcept V_RCP_F32_e32 $vgpr138, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114560B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr140, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114576B	  renamable $vgpr73 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr137, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114592B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr138, 0, $vgpr139, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114624B	  renamable $vgpr139 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr139, $vgpr139(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114640B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr72, 0, $vgpr136, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114656B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr139, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114672B	  renamable $vgpr137 = nofpexcept V_FMA_F32_e64 1, $vgpr138, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114704B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr137, $vgpr139, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114720B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr138, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114784B	  renamable $vgpr137, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr135, 0, $vgpr135, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114800B	  renamable $vgpr138 = nofpexcept V_RCP_F32_e32 $vgpr137, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114832B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr139, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114848B	  renamable $vgpr72 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr136, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114864B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr137, 0, $vgpr138, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114896B	  renamable $vgpr138 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr138, $vgpr138(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114912B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr71, 0, $vgpr135, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114928B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr138, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114944B	  renamable $vgpr136 = nofpexcept V_FMA_F32_e64 1, $vgpr137, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114976B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr136, $vgpr138, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
114992B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr137, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115056B	  renamable $vgpr136, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr134, 0, $vgpr134, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115072B	  renamable $vgpr137 = nofpexcept V_RCP_F32_e32 $vgpr136, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115104B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr138, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115120B	  renamable $vgpr71 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr135, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115136B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr136, 0, $vgpr137, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115168B	  renamable $vgpr137 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr137, $vgpr137(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115184B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr70, 0, $vgpr134, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115200B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr137, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115216B	  renamable $vgpr135 = nofpexcept V_FMA_F32_e64 1, $vgpr136, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115248B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr135, $vgpr137, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115264B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr136, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115328B	  renamable $vgpr135, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr133, 0, $vgpr133, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115344B	  renamable $vgpr136 = nofpexcept V_RCP_F32_e32 $vgpr135, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115376B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr137, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115392B	  renamable $vgpr70 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr134, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115408B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr135, 0, $vgpr136, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115440B	  renamable $vgpr136 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr136, $vgpr136(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115456B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr69, 0, $vgpr133, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115472B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr136, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115488B	  renamable $vgpr134 = nofpexcept V_FMA_F32_e64 1, $vgpr135, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115520B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr134, $vgpr136, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115536B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr135, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115600B	  renamable $vgpr134, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115616B	  renamable $vgpr135 = nofpexcept V_RCP_F32_e32 $vgpr134, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115648B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr136, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115664B	  renamable $vgpr69 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr133, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115680B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr135, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115712B	  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr135, $vgpr135(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115728B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr68, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115744B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr135, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115760B	  renamable $vgpr133 = nofpexcept V_FMA_F32_e64 1, $vgpr134, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115792B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr133, $vgpr135, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115808B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr134, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115872B	  renamable $vgpr133, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr131, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115888B	  renamable $vgpr134 = nofpexcept V_RCP_F32_e32 $vgpr133, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115920B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr135, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115936B	  renamable $vgpr68 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr132, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115952B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr134, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
115984B	  renamable $vgpr134 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr134, $vgpr134(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116000B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr3, 0, $vgpr131, 0, $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116016B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr134, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116032B	  renamable $vgpr132 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116064B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr132, $vgpr134, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116080B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr133, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116144B	  renamable $vgpr133, dead renamable $sgpr14_sgpr15 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr130, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
116160B	  renamable $vgpr135 = nofpexcept V_RCP_F32_e32 $vgpr133, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118592B	  renamable $vgpr132 = GLOBAL_LOAD_DWORD_SADDR killed renamable $sgpr10_sgpr11, killed renamable $vgpr147, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
118624B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr134, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118640B	  renamable $vgpr131 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr131, 0, killed $vgpr3, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118656B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr135, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118672B	  renamable $vgpr135 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr135, $vgpr135(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118688B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr2, 0, $vgpr130, 0, $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118704B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr135, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118720B	  renamable $vgpr3 = nofpexcept V_FMA_F32_e64 1, $vgpr133, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118736B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr3, $vgpr135, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118752B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr133, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118784B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr135, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118800B	  renamable $vgpr130 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, killed $vgpr130, 0, killed $vgpr2, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
118816B	  renamable $vgpr74 = nofpexcept V_FMAC_F32_e32 killed $vgpr74, killed $vgpr4, $vgpr74(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118832B	  renamable $vgpr75 = nofpexcept V_FMAC_F32_e32 killed $vgpr75, killed $vgpr5, $vgpr75(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118848B	  renamable $vgpr76 = nofpexcept V_FMAC_F32_e32 killed $vgpr76, killed $vgpr6, $vgpr76(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118864B	  renamable $vgpr77 = nofpexcept V_FMAC_F32_e32 killed $vgpr77, killed $vgpr7, $vgpr77(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118880B	  renamable $vgpr78 = nofpexcept V_FMAC_F32_e32 killed $vgpr78, killed $vgpr8, $vgpr78(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118896B	  renamable $vgpr79 = nofpexcept V_FMAC_F32_e32 killed $vgpr79, killed $vgpr9, $vgpr79(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118912B	  renamable $vgpr80 = nofpexcept V_FMAC_F32_e32 killed $vgpr80, killed $vgpr10, $vgpr80(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118928B	  renamable $vgpr81 = nofpexcept V_FMAC_F32_e32 killed $vgpr81, killed $vgpr11, $vgpr81(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118944B	  renamable $vgpr82 = nofpexcept V_FMAC_F32_e32 killed $vgpr82, killed $vgpr12, $vgpr82(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118960B	  renamable $vgpr83 = nofpexcept V_FMAC_F32_e32 killed $vgpr83, killed $vgpr13, $vgpr83(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118976B	  renamable $vgpr84 = nofpexcept V_FMAC_F32_e32 killed $vgpr84, killed $vgpr14, $vgpr84(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
118992B	  renamable $vgpr85 = nofpexcept V_FMAC_F32_e32 killed $vgpr85, killed $vgpr15, $vgpr85(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119008B	  renamable $vgpr86 = nofpexcept V_FMAC_F32_e32 killed $vgpr86, killed $vgpr16, $vgpr86(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119024B	  renamable $vgpr87 = nofpexcept V_FMAC_F32_e32 killed $vgpr87, killed $vgpr17, $vgpr87(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119040B	  renamable $vgpr88 = nofpexcept V_FMAC_F32_e32 killed $vgpr88, killed $vgpr18, $vgpr88(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119056B	  renamable $vgpr89 = nofpexcept V_FMAC_F32_e32 killed $vgpr89, killed $vgpr19, $vgpr89(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119072B	  renamable $vgpr90 = nofpexcept V_FMAC_F32_e32 killed $vgpr90, killed $vgpr20, $vgpr90(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119088B	  renamable $vgpr91 = nofpexcept V_FMAC_F32_e32 killed $vgpr91, killed $vgpr21, $vgpr91(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119104B	  renamable $vgpr92 = nofpexcept V_FMAC_F32_e32 killed $vgpr92, killed $vgpr22, $vgpr92(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119120B	  renamable $vgpr93 = nofpexcept V_FMAC_F32_e32 killed $vgpr93, killed $vgpr23, $vgpr93(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119136B	  renamable $vgpr94 = nofpexcept V_FMAC_F32_e32 killed $vgpr94, killed $vgpr24, $vgpr94(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119152B	  renamable $vgpr95 = nofpexcept V_FMAC_F32_e32 killed $vgpr95, killed $vgpr25, $vgpr95(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119168B	  renamable $vgpr96 = nofpexcept V_FMAC_F32_e32 killed $vgpr96, killed $vgpr26, $vgpr96(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119184B	  renamable $vgpr97 = nofpexcept V_FMAC_F32_e32 killed $vgpr97, killed $vgpr27, $vgpr97(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119200B	  renamable $vgpr98 = nofpexcept V_FMAC_F32_e32 killed $vgpr98, killed $vgpr28, $vgpr98(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119216B	  renamable $vgpr99 = nofpexcept V_FMAC_F32_e32 killed $vgpr99, killed $vgpr29, $vgpr99(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119232B	  renamable $vgpr100 = nofpexcept V_FMAC_F32_e32 killed $vgpr100, killed $vgpr30, $vgpr100(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119248B	  renamable $vgpr101 = nofpexcept V_FMAC_F32_e32 killed $vgpr101, killed $vgpr31, $vgpr101(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119264B	  renamable $vgpr102 = nofpexcept V_FMAC_F32_e32 killed $vgpr102, killed $vgpr32, $vgpr102(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119280B	  renamable $vgpr103 = nofpexcept V_FMAC_F32_e32 killed $vgpr103, killed $vgpr33, $vgpr103(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119296B	  renamable $vgpr104 = nofpexcept V_FMAC_F32_e32 killed $vgpr104, killed $vgpr34, $vgpr104(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119312B	  renamable $vgpr105 = nofpexcept V_FMAC_F32_e32 killed $vgpr105, killed $vgpr35, $vgpr105(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119328B	  renamable $vgpr106 = nofpexcept V_FMAC_F32_e32 killed $vgpr106, killed $vgpr36, $vgpr106(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119344B	  renamable $vgpr107 = nofpexcept V_FMAC_F32_e32 killed $vgpr107, killed $vgpr37, $vgpr107(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119360B	  renamable $vgpr108 = nofpexcept V_FMAC_F32_e32 killed $vgpr108, killed $vgpr38, $vgpr108(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119376B	  renamable $vgpr109 = nofpexcept V_FMAC_F32_e32 killed $vgpr109, killed $vgpr39, $vgpr109(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119392B	  renamable $vgpr110 = nofpexcept V_FMAC_F32_e32 killed $vgpr110, killed $vgpr40, $vgpr110(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119408B	  renamable $vgpr111 = nofpexcept V_FMAC_F32_e32 killed $vgpr111, killed $vgpr41, $vgpr111(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119424B	  renamable $vgpr112 = nofpexcept V_FMAC_F32_e32 killed $vgpr112, killed $vgpr42, $vgpr112(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119440B	  renamable $vgpr113 = nofpexcept V_FMAC_F32_e32 killed $vgpr113, killed $vgpr43, $vgpr113(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119456B	  renamable $vgpr114 = nofpexcept V_FMAC_F32_e32 killed $vgpr114, killed $vgpr44, $vgpr114(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119472B	  renamable $vgpr115 = nofpexcept V_FMAC_F32_e32 killed $vgpr115, killed $vgpr45, $vgpr115(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119488B	  renamable $vgpr116 = nofpexcept V_FMAC_F32_e32 killed $vgpr116, killed $vgpr46, $vgpr116(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119504B	  renamable $vgpr117 = nofpexcept V_FMAC_F32_e32 killed $vgpr117, killed $vgpr47, $vgpr117(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119520B	  renamable $vgpr118 = nofpexcept V_FMAC_F32_e32 killed $vgpr118, killed $vgpr48, $vgpr118(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119536B	  renamable $vgpr119 = nofpexcept V_FMAC_F32_e32 killed $vgpr119, killed $vgpr49, $vgpr119(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119552B	  renamable $vgpr120 = nofpexcept V_FMAC_F32_e32 killed $vgpr120, killed $vgpr50, $vgpr120(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119568B	  renamable $vgpr121 = nofpexcept V_FMAC_F32_e32 killed $vgpr121, killed $vgpr51, $vgpr121(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119584B	  renamable $vgpr122 = nofpexcept V_FMAC_F32_e32 killed $vgpr122, killed $vgpr52, $vgpr122(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119600B	  renamable $vgpr123 = nofpexcept V_FMAC_F32_e32 killed $vgpr123, killed $vgpr53, $vgpr123(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119616B	  renamable $vgpr124 = nofpexcept V_FMAC_F32_e32 killed $vgpr124, killed $vgpr54, $vgpr124(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119632B	  renamable $vgpr125 = nofpexcept V_FMAC_F32_e32 killed $vgpr125, killed $vgpr55, $vgpr125(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119648B	  renamable $vgpr126 = nofpexcept V_FMAC_F32_e32 killed $vgpr126, killed $vgpr56, $vgpr126(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119664B	  renamable $vgpr127 = nofpexcept V_FMAC_F32_e32 killed $vgpr127, killed $vgpr57, $vgpr127(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119680B	  renamable $vgpr128 = nofpexcept V_FMAC_F32_e32 killed $vgpr128, killed $vgpr58, $vgpr128(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119696B	  renamable $vgpr129 = nofpexcept V_FMAC_F32_e32 killed $vgpr129, killed $vgpr59, $vgpr129(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119712B	  renamable $vgpr73 = nofpexcept V_FMAC_F32_e32 killed $vgpr73, killed $vgpr60, $vgpr73(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119728B	  renamable $vgpr72 = nofpexcept V_FMAC_F32_e32 killed $vgpr72, killed $vgpr61, $vgpr72(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119744B	  renamable $vgpr71 = nofpexcept V_FMAC_F32_e32 killed $vgpr71, killed $vgpr62, $vgpr71(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119760B	  renamable $vgpr70 = nofpexcept V_FMAC_F32_e32 killed $vgpr70, killed $vgpr63, $vgpr70(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119776B	  renamable $vgpr69 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, killed $vgpr64, $vgpr69(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119792B	  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, killed $vgpr65, $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119808B	  renamable $vgpr131 = nofpexcept V_FMAC_F32_e32 killed $vgpr131, killed $vgpr66, $vgpr131(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119824B	  renamable $vgpr130 = nofpexcept V_FMAC_F32_e32 killed $vgpr130, killed $vgpr67, $vgpr130(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
119840B	  renamable $vgpr0, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119856B	  renamable $vgpr1 = nofpexcept V_RCP_F32_e32 $vgpr0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119872B	  renamable $vgpr147 = COPY killed renamable $sgpr13, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
119888B	  renamable $vgpr2 = V_OR_B32_e32 8, $vgpr146, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
119904B	  renamable $vgpr3 = COPY renamable $vgpr147, debug-location !110; moe_op_gemm_a8w4.py:482:41
119920B	  renamable $vgpr4 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr1, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119952B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr4, killed $vgpr1, $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119968B	  renamable $vgpr4, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr74, 0, $vgpr132, 0, $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
119984B	  renamable $vgpr5 = nofpexcept V_MUL_F32_e32 $vgpr4, $vgpr1, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120000B	  renamable $vgpr6 = nofpexcept V_FMA_F32_e64 1, $vgpr0, 0, $vgpr5, 0, $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120032B	  renamable $vgpr5 = nofpexcept V_FMAC_F32_e32 killed $vgpr6, $vgpr1, killed $vgpr5(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120048B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr0, 0, $vgpr5, 0, killed $vgpr4, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120112B	  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120128B	  renamable $vgpr7 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120160B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr1, 0, killed $vgpr5, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120176B	  renamable $vgpr4 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr74, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120192B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr7, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120224B	  renamable $vgpr7 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr7, $vgpr7(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120240B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr75, 0, $vgpr132, 0, $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120256B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120272B	  renamable $vgpr5 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120304B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr5, $vgpr7, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120320B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120384B	  renamable $vgpr6, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120400B	  renamable $vgpr8 = nofpexcept V_RCP_F32_e32 $vgpr6, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120432B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr7, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120448B	  renamable $vgpr5 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr75, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120464B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr8, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120496B	  renamable $vgpr8 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr8, $vgpr8(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120512B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr76, 0, $vgpr132, 0, $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120528B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120544B	  renamable $vgpr7 = nofpexcept V_FMA_F32_e64 1, $vgpr6, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120576B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr7, $vgpr8, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120592B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr6, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120656B	  renamable $vgpr7, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120672B	  renamable $vgpr9 = nofpexcept V_RCP_F32_e32 $vgpr7, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120704B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr8, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120720B	  renamable $vgpr6 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr76, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120736B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr9, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120768B	  renamable $vgpr9 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr9, $vgpr9(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120784B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr77, 0, $vgpr132, 0, $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120800B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120816B	  renamable $vgpr8 = nofpexcept V_FMA_F32_e64 1, $vgpr7, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120848B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr8, $vgpr9, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120864B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr7, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120928B	  renamable $vgpr8, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120944B	  renamable $vgpr10 = nofpexcept V_RCP_F32_e32 $vgpr8, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120976B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr9, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
120992B	  renamable $vgpr7 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr77, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121008B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr10, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121040B	  renamable $vgpr10 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr10, $vgpr10(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121056B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr78, 0, $vgpr132, 0, $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121072B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121088B	  renamable $vgpr9 = nofpexcept V_FMA_F32_e64 1, $vgpr8, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121120B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr9, $vgpr10, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121136B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr8, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121200B	  renamable $vgpr9, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121216B	  renamable $vgpr11 = nofpexcept V_RCP_F32_e32 $vgpr9, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121248B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr10, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121264B	  renamable $vgpr8 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr78, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121280B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr11, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121312B	  renamable $vgpr11 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr11, $vgpr11(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121328B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr79, 0, $vgpr132, 0, $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121344B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121360B	  renamable $vgpr10 = nofpexcept V_FMA_F32_e64 1, $vgpr9, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121392B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr10, $vgpr11, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121408B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr9, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121472B	  renamable $vgpr10, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121488B	  renamable $vgpr12 = nofpexcept V_RCP_F32_e32 $vgpr10, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121520B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr11, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121536B	  renamable $vgpr9 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr79, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121552B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr12, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121584B	  renamable $vgpr12 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr12, $vgpr12(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121600B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr80, 0, $vgpr132, 0, $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121616B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121632B	  renamable $vgpr11 = nofpexcept V_FMA_F32_e64 1, $vgpr10, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121664B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr11, $vgpr12, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121680B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr10, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121744B	  renamable $vgpr11, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121760B	  renamable $vgpr13 = nofpexcept V_RCP_F32_e32 $vgpr11, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121792B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr12, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121808B	  renamable $vgpr10 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr80, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121824B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr13, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121856B	  renamable $vgpr13 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr13, $vgpr13(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121872B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr81, 0, $vgpr132, 0, $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121888B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121904B	  renamable $vgpr12 = nofpexcept V_FMA_F32_e64 1, $vgpr11, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121936B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr12, $vgpr13, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
121952B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr11, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122016B	  renamable $vgpr12, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122032B	  renamable $vgpr14 = nofpexcept V_RCP_F32_e32 $vgpr12, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122064B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr13, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122080B	  renamable $vgpr11 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr81, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122096B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr14, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122128B	  renamable $vgpr14 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr14, $vgpr14(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122144B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr82, 0, $vgpr132, 0, $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122160B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122176B	  renamable $vgpr13 = nofpexcept V_FMA_F32_e64 1, $vgpr12, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122208B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr13, $vgpr14, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122224B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr12, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122288B	  renamable $vgpr13, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122304B	  renamable $vgpr15 = nofpexcept V_RCP_F32_e32 $vgpr13, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122336B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr14, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122352B	  renamable $vgpr12 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr82, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122368B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr15, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122400B	  renamable $vgpr15 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr15, $vgpr15(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122416B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr83, 0, $vgpr132, 0, $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122432B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122448B	  renamable $vgpr14 = nofpexcept V_FMA_F32_e64 1, $vgpr13, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122480B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr14, $vgpr15, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122496B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr13, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122560B	  renamable $vgpr14, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122576B	  renamable $vgpr16 = nofpexcept V_RCP_F32_e32 $vgpr14, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122608B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr15, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122624B	  renamable $vgpr13 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr83, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122640B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr16, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122672B	  renamable $vgpr16 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr16, $vgpr16(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122688B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr84, 0, $vgpr132, 0, $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122704B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122720B	  renamable $vgpr15 = nofpexcept V_FMA_F32_e64 1, $vgpr14, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122752B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr15, $vgpr16, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122768B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr14, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122832B	  renamable $vgpr15, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122848B	  renamable $vgpr17 = nofpexcept V_RCP_F32_e32 $vgpr15, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122880B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr16, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122896B	  renamable $vgpr14 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr84, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122912B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr17, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122944B	  renamable $vgpr17 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr17, $vgpr17(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122960B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr85, 0, $vgpr132, 0, $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122976B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
122992B	  renamable $vgpr16 = nofpexcept V_FMA_F32_e64 1, $vgpr15, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123024B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr16, $vgpr17, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123040B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr15, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123104B	  renamable $vgpr16, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123120B	  renamable $vgpr18 = nofpexcept V_RCP_F32_e32 $vgpr16, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123152B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr17, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123168B	  renamable $vgpr15 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr85, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123184B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr18, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123216B	  renamable $vgpr18 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr18, $vgpr18(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123232B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr86, 0, $vgpr132, 0, $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123248B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123264B	  renamable $vgpr17 = nofpexcept V_FMA_F32_e64 1, $vgpr16, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123296B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr17, $vgpr18, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123312B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr16, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123376B	  renamable $vgpr17, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123392B	  renamable $vgpr19 = nofpexcept V_RCP_F32_e32 $vgpr17, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123424B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr18, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123440B	  renamable $vgpr16 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr86, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123456B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr19, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123488B	  renamable $vgpr19 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr19, $vgpr19(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123504B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr87, 0, $vgpr132, 0, $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123520B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123536B	  renamable $vgpr18 = nofpexcept V_FMA_F32_e64 1, $vgpr17, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123568B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr18, $vgpr19, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123584B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr17, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123648B	  renamable $vgpr18, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123664B	  renamable $vgpr20 = nofpexcept V_RCP_F32_e32 $vgpr18, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123696B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr19, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123712B	  renamable $vgpr17 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr87, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123728B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr20, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123760B	  renamable $vgpr20 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr20, $vgpr20(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123776B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr88, 0, $vgpr132, 0, $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123792B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123808B	  renamable $vgpr19 = nofpexcept V_FMA_F32_e64 1, $vgpr18, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123840B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr19, $vgpr20, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123856B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr18, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123920B	  renamable $vgpr19, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123936B	  renamable $vgpr21 = nofpexcept V_RCP_F32_e32 $vgpr19, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123968B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr20, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
123984B	  renamable $vgpr18 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr88, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124000B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr21, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124032B	  renamable $vgpr21 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr21, $vgpr21(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124048B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr89, 0, $vgpr132, 0, $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124064B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124080B	  renamable $vgpr20 = nofpexcept V_FMA_F32_e64 1, $vgpr19, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124112B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr20, $vgpr21, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124128B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr19, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124192B	  renamable $vgpr20, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124208B	  renamable $vgpr22 = nofpexcept V_RCP_F32_e32 $vgpr20, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124240B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr21, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124256B	  renamable $vgpr19 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr89, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124272B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr22, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124304B	  renamable $vgpr22 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr22, $vgpr22(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124320B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr90, 0, $vgpr132, 0, $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124336B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124352B	  renamable $vgpr21 = nofpexcept V_FMA_F32_e64 1, $vgpr20, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124384B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr21, $vgpr22, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124400B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr20, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124464B	  renamable $vgpr21, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124480B	  renamable $vgpr23 = nofpexcept V_RCP_F32_e32 $vgpr21, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124512B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr22, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124528B	  renamable $vgpr20 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr90, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124544B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr23, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124576B	  renamable $vgpr23 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr23, $vgpr23(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124592B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr91, 0, $vgpr132, 0, $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124608B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124624B	  renamable $vgpr22 = nofpexcept V_FMA_F32_e64 1, $vgpr21, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124656B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr22, $vgpr23, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124672B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr21, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124736B	  renamable $vgpr22, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124752B	  renamable $vgpr24 = nofpexcept V_RCP_F32_e32 $vgpr22, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124784B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr23, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124800B	  renamable $vgpr21 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr91, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124816B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr24, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124848B	  renamable $vgpr24 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr24, $vgpr24(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124864B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr92, 0, $vgpr132, 0, $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124880B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124896B	  renamable $vgpr23 = nofpexcept V_FMA_F32_e64 1, $vgpr22, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124928B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr23, $vgpr24, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
124944B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr22, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125008B	  renamable $vgpr23, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125024B	  renamable $vgpr25 = nofpexcept V_RCP_F32_e32 $vgpr23, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125056B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr24, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125072B	  renamable $vgpr22 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr92, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125088B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr25, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125120B	  renamable $vgpr25 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr25, $vgpr25(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125136B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr93, 0, $vgpr132, 0, $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125152B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125168B	  renamable $vgpr24 = nofpexcept V_FMA_F32_e64 1, $vgpr23, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125200B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr24, $vgpr25, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125216B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr23, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125280B	  renamable $vgpr24, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125296B	  renamable $vgpr26 = nofpexcept V_RCP_F32_e32 $vgpr24, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125328B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr25, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125344B	  renamable $vgpr23 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr93, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125360B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr26, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125392B	  renamable $vgpr26 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr26, $vgpr26(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125408B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr94, 0, $vgpr132, 0, $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125424B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125440B	  renamable $vgpr25 = nofpexcept V_FMA_F32_e64 1, $vgpr24, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125472B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr25, $vgpr26, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125488B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr24, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125552B	  renamable $vgpr25, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125568B	  renamable $vgpr27 = nofpexcept V_RCP_F32_e32 $vgpr25, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125600B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr26, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125616B	  renamable $vgpr24 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr94, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125632B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr27, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125664B	  renamable $vgpr27 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr27, $vgpr27(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125680B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr95, 0, $vgpr132, 0, $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125696B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125712B	  renamable $vgpr26 = nofpexcept V_FMA_F32_e64 1, $vgpr25, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125744B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr26, $vgpr27, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125760B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr25, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125824B	  renamable $vgpr26, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125840B	  renamable $vgpr28 = nofpexcept V_RCP_F32_e32 $vgpr26, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125872B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr27, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125888B	  renamable $vgpr25 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr95, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125904B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr28, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125936B	  renamable $vgpr28 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr28, $vgpr28(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125952B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr96, 0, $vgpr132, 0, $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125968B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
125984B	  renamable $vgpr27 = nofpexcept V_FMA_F32_e64 1, $vgpr26, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126016B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr27, $vgpr28, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126032B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr26, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126096B	  renamable $vgpr27, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126112B	  renamable $vgpr29 = nofpexcept V_RCP_F32_e32 $vgpr27, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126144B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr28, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126160B	  renamable $vgpr26 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr96, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126176B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr29, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126208B	  renamable $vgpr29 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr29, $vgpr29(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126224B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr97, 0, $vgpr132, 0, $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126240B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126256B	  renamable $vgpr28 = nofpexcept V_FMA_F32_e64 1, $vgpr27, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126288B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr28, $vgpr29, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126304B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr27, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126368B	  renamable $vgpr28, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126384B	  renamable $vgpr30 = nofpexcept V_RCP_F32_e32 $vgpr28, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126416B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr29, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126432B	  renamable $vgpr27 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr97, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126448B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr30, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126480B	  renamable $vgpr30 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr30, $vgpr30(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126496B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr98, 0, $vgpr132, 0, $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126512B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126528B	  renamable $vgpr29 = nofpexcept V_FMA_F32_e64 1, $vgpr28, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126560B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr29, $vgpr30, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126576B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr28, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126640B	  renamable $vgpr29, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126656B	  renamable $vgpr31 = nofpexcept V_RCP_F32_e32 $vgpr29, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126688B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr30, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126704B	  renamable $vgpr28 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr98, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126720B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr31, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126752B	  renamable $vgpr31 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr31, $vgpr31(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126768B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr99, 0, $vgpr132, 0, $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126784B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126800B	  renamable $vgpr30 = nofpexcept V_FMA_F32_e64 1, $vgpr29, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126832B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr30, $vgpr31, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126848B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr29, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126912B	  renamable $vgpr30, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126928B	  renamable $vgpr32 = nofpexcept V_RCP_F32_e32 $vgpr30, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126960B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr31, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126976B	  renamable $vgpr29 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr99, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
126992B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127024B	  renamable $vgpr32 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr32, $vgpr32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127040B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr100, 0, $vgpr132, 0, $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127056B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127072B	  renamable $vgpr31 = nofpexcept V_FMA_F32_e64 1, $vgpr30, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127104B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr31, $vgpr32, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127120B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr30, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127184B	  renamable $vgpr31, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127200B	  renamable $vgpr33 = nofpexcept V_RCP_F32_e32 $vgpr31, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127232B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr32, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127248B	  renamable $vgpr30 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr100, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127264B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr33, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127296B	  renamable $vgpr33 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr33, $vgpr33(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127312B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr101, 0, $vgpr132, 0, $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127328B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127344B	  renamable $vgpr32 = nofpexcept V_FMA_F32_e64 1, $vgpr31, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127376B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr32, $vgpr33, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127392B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr31, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127456B	  renamable $vgpr32, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127472B	  renamable $vgpr34 = nofpexcept V_RCP_F32_e32 $vgpr32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127504B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr33, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127520B	  renamable $vgpr31 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr101, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127536B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr34, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127568B	  renamable $vgpr34 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr34, $vgpr34(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127584B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr102, 0, $vgpr132, 0, $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127600B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127616B	  renamable $vgpr33 = nofpexcept V_FMA_F32_e64 1, $vgpr32, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127648B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr33, $vgpr34, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127664B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr32, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127728B	  renamable $vgpr33, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127744B	  renamable $vgpr35 = nofpexcept V_RCP_F32_e32 $vgpr33, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127776B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr34, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127792B	  renamable $vgpr32 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr102, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127808B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr35, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127840B	  renamable $vgpr35 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr35, $vgpr35(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127856B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr103, 0, $vgpr132, 0, $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127872B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127888B	  renamable $vgpr34 = nofpexcept V_FMA_F32_e64 1, $vgpr33, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127920B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr34, $vgpr35, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
127936B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr33, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128000B	  renamable $vgpr34, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128016B	  renamable $vgpr36 = nofpexcept V_RCP_F32_e32 $vgpr34, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128048B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr35, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128064B	  renamable $vgpr33 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr103, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128080B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr36, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128112B	  renamable $vgpr36 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr36, $vgpr36(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128128B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr104, 0, $vgpr132, 0, $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128144B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128160B	  renamable $vgpr35 = nofpexcept V_FMA_F32_e64 1, $vgpr34, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128192B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr35, $vgpr36, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128208B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr34, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128272B	  renamable $vgpr35, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128288B	  renamable $vgpr37 = nofpexcept V_RCP_F32_e32 $vgpr35, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128320B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr36, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128336B	  renamable $vgpr34 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr104, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128352B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr37, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128384B	  renamable $vgpr37 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr37, $vgpr37(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128400B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr105, 0, $vgpr132, 0, $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128416B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128432B	  renamable $vgpr36 = nofpexcept V_FMA_F32_e64 1, $vgpr35, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128464B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr36, $vgpr37, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128480B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr35, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128544B	  renamable $vgpr36, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128560B	  renamable $vgpr38 = nofpexcept V_RCP_F32_e32 $vgpr36, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128592B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr37, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128608B	  renamable $vgpr35 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr105, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128624B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr38, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128656B	  renamable $vgpr38 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr38, $vgpr38(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128672B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr106, 0, $vgpr132, 0, $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128688B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128704B	  renamable $vgpr37 = nofpexcept V_FMA_F32_e64 1, $vgpr36, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128736B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr37, $vgpr38, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128752B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr36, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128816B	  renamable $vgpr37, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128832B	  renamable $vgpr39 = nofpexcept V_RCP_F32_e32 $vgpr37, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128864B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr38, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128880B	  renamable $vgpr36 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr106, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128896B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr39, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128928B	  renamable $vgpr39 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr39, $vgpr39(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128944B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr107, 0, $vgpr132, 0, $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128960B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
128976B	  renamable $vgpr38 = nofpexcept V_FMA_F32_e64 1, $vgpr37, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129008B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr38, $vgpr39, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129024B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr37, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129088B	  renamable $vgpr38, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129104B	  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr38, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129136B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr39, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129152B	  renamable $vgpr37 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr107, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129168B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129200B	  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129216B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr108, 0, $vgpr132, 0, $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129232B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129248B	  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, $vgpr38, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129280B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr39, $vgpr40, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129296B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr38, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129360B	  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129376B	  renamable $vgpr41 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129408B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr40, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129424B	  renamable $vgpr38 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr108, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129440B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129472B	  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr0, killed $vgpr41, $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129488B	  renamable $vgpr0, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr109, 0, $vgpr132, 0, $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129504B	  renamable $vgpr1 = nofpexcept V_MUL_F32_e32 $vgpr0, $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129520B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr1, 0, $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129552B	  renamable $vgpr1 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, $vgpr41, killed $vgpr1(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129568B	  renamable $vgpr0 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr1, 0, killed $vgpr0, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129632B	  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129648B	  renamable $vgpr40 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129680B	  renamable $vgpr0 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr0, 0, killed $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129696B	  renamable $vgpr0 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr0, 0, $vgpr132, 0, killed $vgpr109, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129712B	  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr40, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129744B	  renamable $vgpr40 = nofpexcept V_FMAC_F32_e32 killed $vgpr1, killed $vgpr40, $vgpr40(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129760B	  renamable $vgpr1, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr110, 0, $vgpr132, 0, $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129776B	  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr1, $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129792B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129824B	  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, $vgpr40, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129840B	  renamable $vgpr1 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr1, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129904B	  renamable $vgpr39, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129920B	  renamable $vgpr42 = nofpexcept V_RCP_F32_e32 $vgpr39, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129952B	  renamable $vgpr1 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr1, 0, killed $vgpr40, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129968B	  renamable $vgpr1 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr1, 0, $vgpr132, 0, killed $vgpr110, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
129984B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr42, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130016B	  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr40, killed $vgpr42, $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130032B	  renamable $vgpr40, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr111, 0, $vgpr132, 0, $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130048B	  renamable $vgpr41 = nofpexcept V_MUL_F32_e32 $vgpr40, $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130064B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr39, 0, $vgpr41, 0, $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130096B	  renamable $vgpr41 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, $vgpr42, killed $vgpr41(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130112B	  renamable $vgpr39 = nofpexcept V_FMA_F32_e64 1, killed $vgpr39, 0, $vgpr41, 0, killed $vgpr40, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130176B	  renamable $vgpr40, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130192B	  renamable $vgpr43 = nofpexcept V_RCP_F32_e32 $vgpr40, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130224B	  renamable $vgpr39 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr39, 0, killed $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130240B	  renamable $vgpr39 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr39, 0, $vgpr132, 0, killed $vgpr111, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130256B	  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr43, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130288B	  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr41, killed $vgpr43, $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130304B	  renamable $vgpr41, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr112, 0, $vgpr132, 0, $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130320B	  renamable $vgpr42 = nofpexcept V_MUL_F32_e32 $vgpr41, $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130336B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr40, 0, $vgpr42, 0, $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130368B	  renamable $vgpr42 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, $vgpr43, killed $vgpr42(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130384B	  renamable $vgpr40 = nofpexcept V_FMA_F32_e64 1, killed $vgpr40, 0, $vgpr42, 0, killed $vgpr41, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130448B	  renamable $vgpr41, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130464B	  renamable $vgpr44 = nofpexcept V_RCP_F32_e32 $vgpr41, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130496B	  renamable $vgpr40 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr40, 0, killed $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130512B	  renamable $vgpr40 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr40, 0, $vgpr132, 0, killed $vgpr112, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130528B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr44, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130560B	  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr42, killed $vgpr44, $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130576B	  renamable $vgpr42, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr113, 0, $vgpr132, 0, $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130592B	  renamable $vgpr43 = nofpexcept V_MUL_F32_e32 $vgpr42, $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130608B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr41, 0, $vgpr43, 0, $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130640B	  renamable $vgpr43 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, $vgpr44, killed $vgpr43(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130656B	  renamable $vgpr41 = nofpexcept V_FMA_F32_e64 1, killed $vgpr41, 0, $vgpr43, 0, killed $vgpr42, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130720B	  renamable $vgpr42, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130736B	  renamable $vgpr45 = nofpexcept V_RCP_F32_e32 $vgpr42, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130768B	  renamable $vgpr41 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr41, 0, killed $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130784B	  renamable $vgpr41 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr41, 0, $vgpr132, 0, killed $vgpr113, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130800B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr45, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130832B	  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr43, killed $vgpr45, $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130848B	  renamable $vgpr43, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr114, 0, $vgpr132, 0, $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130864B	  renamable $vgpr44 = nofpexcept V_MUL_F32_e32 $vgpr43, $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130880B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr42, 0, $vgpr44, 0, $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130912B	  renamable $vgpr44 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, $vgpr45, killed $vgpr44(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130928B	  renamable $vgpr42 = nofpexcept V_FMA_F32_e64 1, killed $vgpr42, 0, $vgpr44, 0, killed $vgpr43, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
130992B	  renamable $vgpr43, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131008B	  renamable $vgpr46 = nofpexcept V_RCP_F32_e32 $vgpr43, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131040B	  renamable $vgpr42 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr42, 0, killed $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131056B	  renamable $vgpr42 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr42, 0, $vgpr132, 0, killed $vgpr114, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131072B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr46, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131104B	  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr44, killed $vgpr46, $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131120B	  renamable $vgpr44, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr115, 0, $vgpr132, 0, $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131136B	  renamable $vgpr45 = nofpexcept V_MUL_F32_e32 $vgpr44, $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131152B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr43, 0, $vgpr45, 0, $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131184B	  renamable $vgpr45 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, $vgpr46, killed $vgpr45(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131200B	  renamable $vgpr43 = nofpexcept V_FMA_F32_e64 1, killed $vgpr43, 0, $vgpr45, 0, killed $vgpr44, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131264B	  renamable $vgpr44, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131280B	  renamable $vgpr47 = nofpexcept V_RCP_F32_e32 $vgpr44, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131312B	  renamable $vgpr43 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr43, 0, killed $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131328B	  renamable $vgpr43 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr43, 0, $vgpr132, 0, killed $vgpr115, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131344B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr47, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131376B	  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr45, killed $vgpr47, $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131392B	  renamable $vgpr45, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr116, 0, $vgpr132, 0, $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131408B	  renamable $vgpr46 = nofpexcept V_MUL_F32_e32 $vgpr45, $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131424B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr44, 0, $vgpr46, 0, $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131456B	  renamable $vgpr46 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, $vgpr47, killed $vgpr46(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131472B	  renamable $vgpr44 = nofpexcept V_FMA_F32_e64 1, killed $vgpr44, 0, $vgpr46, 0, killed $vgpr45, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131536B	  renamable $vgpr45, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131552B	  renamable $vgpr48 = nofpexcept V_RCP_F32_e32 $vgpr45, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131584B	  renamable $vgpr44 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr44, 0, killed $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131600B	  renamable $vgpr44 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr44, 0, $vgpr132, 0, killed $vgpr116, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131616B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr48, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131648B	  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr46, killed $vgpr48, $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131664B	  renamable $vgpr46, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr117, 0, $vgpr132, 0, $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131680B	  renamable $vgpr47 = nofpexcept V_MUL_F32_e32 $vgpr46, $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131696B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr45, 0, $vgpr47, 0, $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131728B	  renamable $vgpr47 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, $vgpr48, killed $vgpr47(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131744B	  renamable $vgpr45 = nofpexcept V_FMA_F32_e64 1, killed $vgpr45, 0, $vgpr47, 0, killed $vgpr46, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131808B	  renamable $vgpr46, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131824B	  renamable $vgpr49 = nofpexcept V_RCP_F32_e32 $vgpr46, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131856B	  renamable $vgpr45 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr45, 0, killed $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131872B	  renamable $vgpr45 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr45, 0, $vgpr132, 0, killed $vgpr117, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131888B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr49, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131920B	  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr47, killed $vgpr49, $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131936B	  renamable $vgpr47, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr118, 0, $vgpr132, 0, $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131952B	  renamable $vgpr48 = nofpexcept V_MUL_F32_e32 $vgpr47, $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
131968B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr46, 0, $vgpr48, 0, $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132000B	  renamable $vgpr48 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, $vgpr49, killed $vgpr48(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132016B	  renamable $vgpr46 = nofpexcept V_FMA_F32_e64 1, killed $vgpr46, 0, $vgpr48, 0, killed $vgpr47, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132080B	  renamable $vgpr47, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132096B	  renamable $vgpr50 = nofpexcept V_RCP_F32_e32 $vgpr47, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132128B	  renamable $vgpr46 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr46, 0, killed $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132144B	  renamable $vgpr46 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr46, 0, $vgpr132, 0, killed $vgpr118, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132160B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr50, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132192B	  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr48, killed $vgpr50, $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132208B	  renamable $vgpr48, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr119, 0, $vgpr132, 0, $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132224B	  renamable $vgpr49 = nofpexcept V_MUL_F32_e32 $vgpr48, $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132240B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr47, 0, $vgpr49, 0, $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132272B	  renamable $vgpr49 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, $vgpr50, killed $vgpr49(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132288B	  renamable $vgpr47 = nofpexcept V_FMA_F32_e64 1, killed $vgpr47, 0, $vgpr49, 0, killed $vgpr48, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132352B	  renamable $vgpr48, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132368B	  renamable $vgpr51 = nofpexcept V_RCP_F32_e32 $vgpr48, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132400B	  renamable $vgpr47 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr47, 0, killed $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132416B	  renamable $vgpr47 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr47, 0, $vgpr132, 0, killed $vgpr119, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132432B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr51, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132464B	  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr49, killed $vgpr51, $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132480B	  renamable $vgpr49, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr120, 0, $vgpr132, 0, $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132496B	  renamable $vgpr50 = nofpexcept V_MUL_F32_e32 $vgpr49, $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132512B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr48, 0, $vgpr50, 0, $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132544B	  renamable $vgpr50 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, $vgpr51, killed $vgpr50(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132560B	  renamable $vgpr48 = nofpexcept V_FMA_F32_e64 1, killed $vgpr48, 0, $vgpr50, 0, killed $vgpr49, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132624B	  renamable $vgpr49, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132640B	  renamable $vgpr52 = nofpexcept V_RCP_F32_e32 $vgpr49, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132672B	  renamable $vgpr48 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr48, 0, killed $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132688B	  renamable $vgpr48 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr48, 0, $vgpr132, 0, killed $vgpr120, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132704B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr52, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132736B	  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr50, killed $vgpr52, $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132752B	  renamable $vgpr50, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr121, 0, $vgpr132, 0, $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132768B	  renamable $vgpr51 = nofpexcept V_MUL_F32_e32 $vgpr50, $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132784B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr49, 0, $vgpr51, 0, $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132816B	  renamable $vgpr51 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, $vgpr52, killed $vgpr51(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132832B	  renamable $vgpr49 = nofpexcept V_FMA_F32_e64 1, killed $vgpr49, 0, $vgpr51, 0, killed $vgpr50, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132896B	  renamable $vgpr50, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132912B	  renamable $vgpr53 = nofpexcept V_RCP_F32_e32 $vgpr50, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132944B	  renamable $vgpr49 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr49, 0, killed $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132960B	  renamable $vgpr49 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr49, 0, $vgpr132, 0, killed $vgpr121, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
132976B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr53, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133008B	  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr51, killed $vgpr53, $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133024B	  renamable $vgpr51, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr122, 0, $vgpr132, 0, $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133040B	  renamable $vgpr52 = nofpexcept V_MUL_F32_e32 $vgpr51, $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133056B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr50, 0, $vgpr52, 0, $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133088B	  renamable $vgpr52 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, $vgpr53, killed $vgpr52(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133104B	  renamable $vgpr50 = nofpexcept V_FMA_F32_e64 1, killed $vgpr50, 0, $vgpr52, 0, killed $vgpr51, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133168B	  renamable $vgpr51, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133184B	  renamable $vgpr54 = nofpexcept V_RCP_F32_e32 $vgpr51, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133216B	  renamable $vgpr50 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr50, 0, killed $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133232B	  renamable $vgpr50 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr50, 0, $vgpr132, 0, killed $vgpr122, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133248B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr54, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133280B	  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr52, killed $vgpr54, $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133296B	  renamable $vgpr52, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr123, 0, $vgpr132, 0, $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133312B	  renamable $vgpr53 = nofpexcept V_MUL_F32_e32 $vgpr52, $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133328B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr51, 0, $vgpr53, 0, $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133360B	  renamable $vgpr53 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, $vgpr54, killed $vgpr53(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133376B	  renamable $vgpr51 = nofpexcept V_FMA_F32_e64 1, killed $vgpr51, 0, $vgpr53, 0, killed $vgpr52, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133440B	  renamable $vgpr52, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133456B	  renamable $vgpr55 = nofpexcept V_RCP_F32_e32 $vgpr52, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133488B	  renamable $vgpr51 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr51, 0, killed $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133504B	  renamable $vgpr51 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr51, 0, $vgpr132, 0, killed $vgpr123, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133520B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr55, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133552B	  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr53, killed $vgpr55, $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133568B	  renamable $vgpr53, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr124, 0, $vgpr132, 0, $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133584B	  renamable $vgpr54 = nofpexcept V_MUL_F32_e32 $vgpr53, $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133600B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr52, 0, $vgpr54, 0, $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133632B	  renamable $vgpr54 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, $vgpr55, killed $vgpr54(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133648B	  renamable $vgpr52 = nofpexcept V_FMA_F32_e64 1, killed $vgpr52, 0, $vgpr54, 0, killed $vgpr53, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133712B	  renamable $vgpr53, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133728B	  renamable $vgpr56 = nofpexcept V_RCP_F32_e32 $vgpr53, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133760B	  renamable $vgpr52 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr52, 0, killed $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133776B	  renamable $vgpr52 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr52, 0, $vgpr132, 0, killed $vgpr124, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133792B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr56, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133824B	  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr54, killed $vgpr56, $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133840B	  renamable $vgpr54, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr125, 0, $vgpr132, 0, $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133856B	  renamable $vgpr55 = nofpexcept V_MUL_F32_e32 $vgpr54, $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133872B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr53, 0, $vgpr55, 0, $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133904B	  renamable $vgpr55 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, $vgpr56, killed $vgpr55(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133920B	  renamable $vgpr53 = nofpexcept V_FMA_F32_e64 1, killed $vgpr53, 0, $vgpr55, 0, killed $vgpr54, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
133984B	  renamable $vgpr54, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134000B	  renamable $vgpr57 = nofpexcept V_RCP_F32_e32 $vgpr54, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134032B	  renamable $vgpr53 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr53, 0, killed $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134048B	  renamable $vgpr53 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr53, 0, $vgpr132, 0, killed $vgpr125, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134064B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr57, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134096B	  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr55, killed $vgpr57, $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134112B	  renamable $vgpr55, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr126, 0, $vgpr132, 0, $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134128B	  renamable $vgpr56 = nofpexcept V_MUL_F32_e32 $vgpr55, $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134144B	  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, $vgpr54, 0, $vgpr56, 0, $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134176B	  renamable $vgpr56 = nofpexcept V_FMAC_F32_e32 killed $vgpr58, $vgpr57, killed $vgpr56(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134192B	  renamable $vgpr54 = nofpexcept V_FMA_F32_e64 1, killed $vgpr54, 0, $vgpr56, 0, killed $vgpr55, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134256B	  renamable $vgpr55, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134272B	  renamable $vgpr58 = nofpexcept V_RCP_F32_e32 $vgpr55, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134304B	  renamable $vgpr54 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr54, 0, killed $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134320B	  renamable $vgpr54 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr54, 0, $vgpr132, 0, killed $vgpr126, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134336B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr58, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134368B	  renamable $vgpr58 = nofpexcept V_FMAC_F32_e32 killed $vgpr56, killed $vgpr58, $vgpr58(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134384B	  renamable $vgpr56, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr127, 0, $vgpr132, 0, $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134400B	  renamable $vgpr57 = nofpexcept V_MUL_F32_e32 $vgpr56, $vgpr58, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134416B	  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, $vgpr55, 0, $vgpr57, 0, $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134448B	  renamable $vgpr57 = nofpexcept V_FMAC_F32_e32 killed $vgpr59, $vgpr58, killed $vgpr57(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134464B	  renamable $vgpr55 = nofpexcept V_FMA_F32_e64 1, killed $vgpr55, 0, $vgpr57, 0, killed $vgpr56, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134528B	  renamable $vgpr56, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134544B	  renamable $vgpr59 = nofpexcept V_RCP_F32_e32 $vgpr56, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134576B	  renamable $vgpr55 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr55, 0, killed $vgpr58, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134592B	  renamable $vgpr55 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr55, 0, $vgpr132, 0, killed $vgpr127, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134608B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr59, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134640B	  renamable $vgpr59 = nofpexcept V_FMAC_F32_e32 killed $vgpr57, killed $vgpr59, $vgpr59(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134656B	  renamable $vgpr57, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr128, 0, $vgpr132, 0, $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134672B	  renamable $vgpr58 = nofpexcept V_MUL_F32_e32 $vgpr57, $vgpr59, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134688B	  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, $vgpr56, 0, $vgpr58, 0, $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134720B	  renamable $vgpr58 = nofpexcept V_FMAC_F32_e32 killed $vgpr60, $vgpr59, killed $vgpr58(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134736B	  renamable $vgpr56 = nofpexcept V_FMA_F32_e64 1, killed $vgpr56, 0, $vgpr58, 0, killed $vgpr57, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134800B	  renamable $vgpr57, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134816B	  renamable $vgpr60 = nofpexcept V_RCP_F32_e32 $vgpr57, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134848B	  renamable $vgpr56 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr56, 0, killed $vgpr59, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134864B	  renamable $vgpr56 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr56, 0, $vgpr132, 0, killed $vgpr128, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134880B	  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr60, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134912B	  renamable $vgpr60 = nofpexcept V_FMAC_F32_e32 killed $vgpr58, killed $vgpr60, $vgpr60(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134928B	  renamable $vgpr58, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr129, 0, $vgpr132, 0, $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134944B	  renamable $vgpr59 = nofpexcept V_MUL_F32_e32 $vgpr58, $vgpr60, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134960B	  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, $vgpr57, 0, $vgpr59, 0, $vgpr58, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
134992B	  renamable $vgpr59 = nofpexcept V_FMAC_F32_e32 killed $vgpr61, $vgpr60, killed $vgpr59(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135008B	  renamable $vgpr57 = nofpexcept V_FMA_F32_e64 1, killed $vgpr57, 0, $vgpr59, 0, killed $vgpr58, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135072B	  renamable $vgpr58, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135088B	  renamable $vgpr61 = nofpexcept V_RCP_F32_e32 $vgpr58, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135120B	  renamable $vgpr57 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr57, 0, killed $vgpr60, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135136B	  renamable $vgpr57 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr57, 0, $vgpr132, 0, killed $vgpr129, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135152B	  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, $vgpr58, 0, $vgpr61, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135184B	  renamable $vgpr61 = nofpexcept V_FMAC_F32_e32 killed $vgpr59, killed $vgpr61, $vgpr61(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135200B	  renamable $vgpr59, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr73, 0, $vgpr132, 0, $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135216B	  renamable $vgpr60 = nofpexcept V_MUL_F32_e32 $vgpr59, $vgpr61, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135232B	  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, $vgpr58, 0, $vgpr60, 0, $vgpr59, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135264B	  renamable $vgpr60 = nofpexcept V_FMAC_F32_e32 killed $vgpr62, $vgpr61, killed $vgpr60(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135280B	  renamable $vgpr58 = nofpexcept V_FMA_F32_e64 1, killed $vgpr58, 0, $vgpr60, 0, killed $vgpr59, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135344B	  renamable $vgpr59, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135360B	  renamable $vgpr62 = nofpexcept V_RCP_F32_e32 $vgpr59, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135392B	  renamable $vgpr58 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr58, 0, killed $vgpr61, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135408B	  renamable $vgpr58 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr58, 0, $vgpr132, 0, killed $vgpr73, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135424B	  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, $vgpr59, 0, $vgpr62, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135456B	  renamable $vgpr62 = nofpexcept V_FMAC_F32_e32 killed $vgpr60, killed $vgpr62, $vgpr62(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135472B	  renamable $vgpr60, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr72, 0, $vgpr132, 0, $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135488B	  renamable $vgpr61 = nofpexcept V_MUL_F32_e32 $vgpr60, $vgpr62, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135504B	  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, $vgpr59, 0, $vgpr61, 0, $vgpr60, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135536B	  renamable $vgpr61 = nofpexcept V_FMAC_F32_e32 killed $vgpr63, $vgpr62, killed $vgpr61(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135552B	  renamable $vgpr59 = nofpexcept V_FMA_F32_e64 1, killed $vgpr59, 0, $vgpr61, 0, killed $vgpr60, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135616B	  renamable $vgpr60, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135632B	  renamable $vgpr63 = nofpexcept V_RCP_F32_e32 $vgpr60, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135664B	  renamable $vgpr59 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr59, 0, killed $vgpr62, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135680B	  renamable $vgpr59 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr59, 0, $vgpr132, 0, killed $vgpr72, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135696B	  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, $vgpr60, 0, $vgpr63, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135728B	  renamable $vgpr63 = nofpexcept V_FMAC_F32_e32 killed $vgpr61, killed $vgpr63, $vgpr63(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135744B	  renamable $vgpr61, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr71, 0, $vgpr132, 0, $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135760B	  renamable $vgpr62 = nofpexcept V_MUL_F32_e32 $vgpr61, $vgpr63, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135776B	  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, $vgpr60, 0, $vgpr62, 0, $vgpr61, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135808B	  renamable $vgpr62 = nofpexcept V_FMAC_F32_e32 killed $vgpr64, $vgpr63, killed $vgpr62(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135824B	  renamable $vgpr60 = nofpexcept V_FMA_F32_e64 1, killed $vgpr60, 0, $vgpr62, 0, killed $vgpr61, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135888B	  renamable $vgpr61, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135904B	  renamable $vgpr64 = nofpexcept V_RCP_F32_e32 $vgpr61, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135936B	  renamable $vgpr60 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr60, 0, killed $vgpr63, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135952B	  renamable $vgpr60 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr60, 0, $vgpr132, 0, killed $vgpr71, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
135968B	  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, $vgpr61, 0, $vgpr64, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136000B	  renamable $vgpr64 = nofpexcept V_FMAC_F32_e32 killed $vgpr62, killed $vgpr64, $vgpr64(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136016B	  renamable $vgpr62, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr70, 0, $vgpr132, 0, $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136032B	  renamable $vgpr63 = nofpexcept V_MUL_F32_e32 $vgpr62, $vgpr64, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136048B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr61, 0, $vgpr63, 0, $vgpr62, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136080B	  renamable $vgpr63 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, $vgpr64, killed $vgpr63(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136096B	  renamable $vgpr61 = nofpexcept V_FMA_F32_e64 1, killed $vgpr61, 0, $vgpr63, 0, killed $vgpr62, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136160B	  renamable $vgpr62, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136176B	  renamable $vgpr65 = nofpexcept V_RCP_F32_e32 $vgpr62, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136208B	  renamable $vgpr61 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr61, 0, killed $vgpr64, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136224B	  renamable $vgpr61 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr61, 0, $vgpr132, 0, killed $vgpr70, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136240B	  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, $vgpr62, 0, $vgpr65, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136272B	  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr63, killed $vgpr65, $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136288B	  renamable $vgpr63, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr69, 0, $vgpr132, 0, $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136304B	  renamable $vgpr64 = nofpexcept V_MUL_F32_e32 $vgpr63, $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136320B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr62, 0, $vgpr64, 0, $vgpr63, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136352B	  renamable $vgpr64 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, $vgpr65, killed $vgpr64(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136368B	  renamable $vgpr62 = nofpexcept V_FMA_F32_e64 1, killed $vgpr62, 0, $vgpr64, 0, killed $vgpr63, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136432B	  renamable $vgpr63, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136448B	  renamable $vgpr66 = nofpexcept V_RCP_F32_e32 $vgpr63, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136480B	  renamable $vgpr62 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr62, 0, killed $vgpr65, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136496B	  renamable $vgpr62 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr62, 0, $vgpr132, 0, killed $vgpr69, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136512B	  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, $vgpr63, 0, $vgpr66, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136544B	  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr64, killed $vgpr66, $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136560B	  renamable $vgpr64, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr68, 0, $vgpr132, 0, $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136576B	  renamable $vgpr65 = nofpexcept V_MUL_F32_e32 $vgpr64, $vgpr66, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136592B	  renamable $vgpr67 = nofpexcept V_FMA_F32_e64 1, $vgpr63, 0, $vgpr65, 0, $vgpr64, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136624B	  renamable $vgpr65 = nofpexcept V_FMAC_F32_e32 killed $vgpr67, $vgpr66, killed $vgpr65(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136640B	  renamable $vgpr63 = nofpexcept V_FMA_F32_e64 1, killed $vgpr63, 0, $vgpr65, 0, killed $vgpr64, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136704B	  renamable $vgpr64, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136720B	  renamable $vgpr67 = nofpexcept V_RCP_F32_e32 $vgpr64, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136752B	  renamable $vgpr63 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr63, 0, killed $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136768B	  renamable $vgpr63 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr63, 0, $vgpr132, 0, killed $vgpr68, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136784B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, $vgpr64, 0, $vgpr67, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136816B	  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr65, killed $vgpr67, $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136832B	  renamable $vgpr65, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr131, 0, $vgpr132, 0, $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136848B	  renamable $vgpr66 = nofpexcept V_MUL_F32_e32 $vgpr65, $vgpr67, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136864B	  renamable $vgpr68 = nofpexcept V_FMA_F32_e64 1, $vgpr64, 0, $vgpr66, 0, $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136896B	  renamable $vgpr66 = nofpexcept V_FMAC_F32_e32 killed $vgpr68, $vgpr67, killed $vgpr66(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136912B	  renamable $vgpr64 = nofpexcept V_FMA_F32_e64 1, killed $vgpr64, 0, $vgpr66, 0, killed $vgpr65, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136976B	  renamable $vgpr65, dead renamable $sgpr10_sgpr11 = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr132, 0, $vgpr132, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
136992B	  renamable $vgpr68 = nofpexcept V_RCP_F32_e32 $vgpr65, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137024B	  renamable $vgpr64 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr64, 0, killed $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137040B	  renamable $vgpr64 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr64, 0, $vgpr132, 0, killed $vgpr131, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137056B	  renamable $vgpr66 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr68, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137088B	  renamable $vgpr68 = nofpexcept V_FMAC_F32_e32 killed $vgpr66, killed $vgpr68, $vgpr68(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137104B	  renamable $vgpr66, renamable $vcc = nofpexcept V_DIV_SCALE_F32_e64 0, $vgpr130, 0, $vgpr132, 0, $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137120B	  renamable $vgpr67 = nofpexcept V_MUL_F32_e32 $vgpr66, $vgpr68, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137136B	  renamable $vgpr69 = nofpexcept V_FMA_F32_e64 1, $vgpr65, 0, $vgpr67, 0, $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137168B	  renamable $vgpr67 = nofpexcept V_FMAC_F32_e32 killed $vgpr69, $vgpr68, killed $vgpr67(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137184B	  renamable $vgpr65 = nofpexcept V_FMA_F32_e64 1, killed $vgpr65, 0, $vgpr67, 0, killed $vgpr66, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137216B	  renamable $vgpr65 = nofpexcept V_DIV_FMAS_F32_e64 0, killed $vgpr65, 0, killed $vgpr68, 0, killed $vgpr67, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137232B	  renamable $vgpr65 = nofpexcept V_DIV_FIXUP_F32_e64 0, killed $vgpr65, 0, killed $vgpr132, 0, killed $vgpr130, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
137248B	  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr4, 0, killed $vgpr5, 0, 1065353216, undef $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137280B	  renamable $vgpr4 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr6, 0, killed $vgpr7, 0, 1065353216, $vgpr4(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137296B	  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr8, 0, killed $vgpr9, 0, 1065353216, undef $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137328B	  renamable $vgpr8 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr10, 0, killed $vgpr11, 0, 1065353216, $vgpr8(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137344B	  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr12, 0, killed $vgpr13, 0, 1065353216, undef $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137376B	  renamable $vgpr12 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr14, 0, killed $vgpr15, 0, 1065353216, $vgpr12(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137392B	  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr16, 0, killed $vgpr17, 0, 1065353216, undef $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137424B	  renamable $vgpr16 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr18, 0, killed $vgpr19, 0, 1065353216, $vgpr16(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137440B	  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr20, 0, killed $vgpr21, 0, 1065353216, undef $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137472B	  renamable $vgpr5 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr22, 0, killed $vgpr23, 0, 1065353216, $vgpr5(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137488B	  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr24, 0, killed $vgpr25, 0, 1065353216, undef $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137520B	  renamable $vgpr9 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr26, 0, killed $vgpr27, 0, 1065353216, $vgpr9(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137536B	  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr28, 0, killed $vgpr29, 0, 1065353216, undef $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137568B	  renamable $vgpr13 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr30, 0, killed $vgpr31, 0, 1065353216, $vgpr13(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137584B	  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr32, 0, killed $vgpr33, 0, 1065353216, undef $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137616B	  renamable $vgpr17 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr34, 0, killed $vgpr35, 0, 1065353216, $vgpr17(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137632B	  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr36, 0, killed $vgpr37, 0, 1065353216, undef $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137664B	  renamable $vgpr6 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr38, 0, killed $vgpr0, 0, 1065353216, $vgpr6(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137680B	  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr1, 0, killed $vgpr39, 0, 1065353216, undef $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137712B	  renamable $vgpr10 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr40, 0, killed $vgpr41, 0, 1065353216, $vgpr10(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137728B	  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr42, 0, killed $vgpr43, 0, 1065353216, undef $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137760B	  renamable $vgpr14 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr44, 0, killed $vgpr45, 0, 1065353216, $vgpr14(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137776B	  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr46, 0, killed $vgpr47, 0, 1065353216, undef $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137808B	  renamable $vgpr18 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr48, 0, killed $vgpr49, 0, 1065353216, $vgpr18(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137824B	  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr50, 0, killed $vgpr51, 0, 1065353216, undef $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137856B	  renamable $vgpr7 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr52, 0, killed $vgpr53, 0, 1065353216, $vgpr7(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137872B	  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr54, 0, killed $vgpr55, 0, 1065353216, undef $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137904B	  renamable $vgpr11 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr56, 0, killed $vgpr57, 0, 1065353216, $vgpr11(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137920B	  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr58, 0, killed $vgpr59, 0, 1065353216, undef $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137952B	  renamable $vgpr15 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr60, 0, killed $vgpr61, 0, 1065353216, $vgpr15(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
137968B	  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, killed $vgpr62, 0, killed $vgpr63, 0, 1065353216, undef $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138000B	  renamable $vgpr19 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, killed $vgpr64, 0, killed $vgpr65, 0, 1065353216, $vgpr19(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138016B	  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138032B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138048B	  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 4, killed $vgpr239, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138064B	  renamable $vgpr1 = V_AND_B32_e32 48, killed $vgpr238, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138080B	  renamable $vgpr20 = V_AND_B32_e32 1, $vgpr240, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138096B	  renamable $vgpr21 = nuw nsw V_LSHLREV_B32_e32 13, $vgpr20, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138112B	  renamable $vgpr22 = nuw nsw V_LSHLREV_B32_e32 8, $vgpr240, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138128B	  renamable $vgpr22 = V_AND_B32_e32 16384, killed $vgpr22, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138144B	  renamable $vgpr21 = disjoint V_LSHL_OR_B32_e64 killed $vgpr150, 9, killed $vgpr21, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138160B	  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, $vgpr149, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138176B	  renamable $vgpr0 = disjoint V_OR3_B32_e64 killed $vgpr21, killed $vgpr22, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138192B	  renamable $vgpr1 = nuw V_ADD_U32_e32 0, $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138272B	  DS_WRITE_B128_gfx9 renamable $vgpr1, killed renamable $vgpr4_vgpr5_vgpr6_vgpr7, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138352B	  DS_WRITE_B128_gfx9 killed renamable $vgpr1, killed renamable $vgpr12_vgpr13_vgpr14_vgpr15, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138368B	  renamable $vgpr0 = nuw V_XAD_U32_e64 killed $vgpr0, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138448B	  DS_WRITE_B128_gfx9 renamable $vgpr0, killed renamable $vgpr8_vgpr9_vgpr10_vgpr11, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138528B	  DS_WRITE_B128_gfx9 killed renamable $vgpr0, killed renamable $vgpr16_vgpr17_vgpr18_vgpr19, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138544B	  ATOMIC_FENCE 5, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138560B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138576B	  ATOMIC_FENCE 4, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138592B	  renamable $vgpr0 = nuw nsw V_LSHLREV_B32_e32 5, killed $vgpr240, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138608B	  renamable $vgpr0 = V_AND_B32_e32 7168, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138624B	  renamable $vgpr1 = exact V_LSHRREV_B32_e32 1, killed $vgpr148, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138640B	  renamable $vgpr4 = nuw nsw V_LSHLREV_B32_e32 9, killed $vgpr152, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138656B	  renamable $vgpr0 = V_BITOP3_B32_e64 killed $vgpr0, killed $vgpr1, killed $vgpr149, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138672B	  renamable $vgpr1 = nuw V_LSHL_ADD_U32_e64 killed $vgpr20, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138688B	  renamable $vgpr13 = nuw V_ADD3_U32_e64 killed $vgpr1, killed $vgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138704B	  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 renamable $vgpr13, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138720B	  renamable $vgpr8_vgpr9_vgpr10_vgpr11 = DS_READ_B128_gfx9 renamable $vgpr13, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138736B	  renamable $sgpr13 = S_ASHR_I32 renamable $sgpr12, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
138752B	  renamable $vcc = V_CMP_GT_I64_e64 $sgpr12_sgpr13, $vgpr146_vgpr147, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
138768B	  renamable $sgpr10_sgpr11 = V_CMP_GT_I64_e64 killed $sgpr12_sgpr13, killed $vgpr2_vgpr3, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
138784B	  renamable $vgpr0 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138800B	  renamable $vgpr0 = V_LSHRREV_B32_sdwa 0, killed $vgpr0, 0, $vgpr8, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138816B	  renamable $sgpr12 = S_MOV_B32 255
138832B	  renamable $vgpr0 = V_BITOP3_B16_e64 0, $vgpr8, 0, killed $vgpr0, 0, killed $sgpr12, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138848B	  renamable $vgpr0 = V_LSHLREV_B32_e32 16, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138864B	  renamable $vgpr12 = V_AND_OR_B32_e64 $vgpr4, killed $sgpr4, killed $vgpr0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138880B	  renamable $sgpr12 = S_MOV_B32 50464518
138896B	  renamable $vgpr8 = V_PERM_B32_e64 $vgpr4, $vgpr8, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138912B	  renamable $sgpr13 = S_MOV_B32 16778500
138928B	  renamable $vgpr14 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138944B	  renamable $vgpr16 = V_PERM_B32_e64 $vgpr5, $vgpr9, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138960B	  renamable $vgpr18 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138976B	  renamable $vgpr10 = V_PERM_B32_e64 $vgpr6, $vgpr10, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
138992B	  renamable $vgpr20 = V_PERM_B32_e64 $vgpr7, $vgpr11, $sgpr13, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139008B	  renamable $vgpr22 = V_PERM_B32_e64 killed $vgpr7, killed $vgpr11, $sgpr12, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139024B	  renamable $vgpr0_vgpr1_vgpr2_vgpr3 = DS_READ_B128_gfx9 renamable $vgpr13, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139040B	  renamable $vgpr4_vgpr5_vgpr6_vgpr7 = DS_READ_B128_gfx9 killed renamable $vgpr13, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
139056B	  renamable $vgpr9 = V_MUL_LO_U32_e64 killed $vgpr237, $sgpr5, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
139072B	  renamable $vgpr11 = V_MUL_LO_U32_e64 killed $vgpr234, $sgpr5, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139088B	  renamable $vgpr13 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr230, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139104B	  renamable $vgpr15 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr231, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139120B	  renamable $vgpr17 = V_MUL_LO_U32_e64 $sgpr5, killed $vgpr232, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139136B	  renamable $vgpr19 = V_MUL_LO_U32_e64 killed $sgpr5, killed $vgpr233, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139152B	  renamable $vgpr9 = V_ADD_U32_e32 killed $vgpr11, killed $vgpr9, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
139168B	  renamable $vgpr11 = V_ADD3_U32_e64 $vgpr9, killed $vgpr13, $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139184B	  renamable $vgpr21 = V_ADD_U32_e32 8, $vgpr11, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139200B	  renamable $vgpr23 = V_ADD3_U32_e64 $vgpr9, killed $vgpr15, $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139216B	  renamable $vgpr24 = V_ADD_U32_e32 8, $vgpr23, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139232B	  renamable $vgpr25 = V_ADD3_U32_e64 $vgpr9, killed $vgpr17, $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139248B	  renamable $vgpr26 = V_ADD_U32_e32 8, $vgpr25, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139264B	  renamable $vgpr27 = V_ADD3_U32_e64 killed $vgpr9, killed $vgpr19, killed $vgpr146, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139280B	  renamable $vgpr28 = V_ADD_U32_e32 8, $vgpr27, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
139424B	  renamable $sgpr21 = S_AND_B32 renamable $sgpr21, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
139472B	  renamable $sgpr22 = COPY renamable $sgpr18, debug-location !122; moe_op_gemm_a8w4.py:505:20
139488B	  renamable $sgpr23 = COPY killed renamable $sgpr19, debug-location !122; moe_op_gemm_a8w4.py:505:20
139504B	  renamable $vgpr13 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139520B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr6_sgpr7, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139568B	  renamable $vgpr9 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr11, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139584B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr12_vgpr13, killed renamable $vgpr9, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139600B	  renamable $vgpr9 = V_PERM_B32_e64 $vgpr0, $vgpr4, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139616B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr6_sgpr7, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139664B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr21, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139680B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr8_vgpr9, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139696B	  renamable $vgpr15 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139712B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr8_sgpr9, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139760B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr23, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139776B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr14_vgpr15, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139792B	  renamable $vgpr17 = V_PERM_B32_e64 $vgpr1, $vgpr5, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139808B	  renamable $sgpr4_sgpr5 = S_AND_B64 killed renamable $sgpr8_sgpr9, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139856B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr24, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139872B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr16_vgpr17, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139888B	  renamable $vgpr19 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139904B	  renamable $sgpr4_sgpr5 = S_AND_B64 renamable $sgpr2_sgpr3, renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
139952B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr25, killed $sgpr4_sgpr5, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
139968B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr18_vgpr19, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
139984B	  renamable $vgpr11 = V_PERM_B32_e64 $vgpr2, $vgpr6, $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140000B	  renamable $sgpr2_sgpr3 = S_AND_B64 killed renamable $sgpr2_sgpr3, renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
140048B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr26, killed $sgpr2_sgpr3, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140064B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr10_vgpr11, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
140080B	  renamable $vgpr21 = V_PERM_B32_e64 $vgpr3, $vgpr7, killed $sgpr13, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140096B	  renamable $vcc = S_AND_B64 renamable $sgpr0_sgpr1, killed renamable $vcc, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
140144B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, $vgpr151, 0, killed $vgpr27, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140160B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr20_vgpr21, killed renamable $vgpr0, renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
140176B	  renamable $vgpr23 = V_PERM_B32_e64 killed $vgpr3, killed $vgpr7, killed $sgpr12, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140192B	  renamable $vcc = S_AND_B64 killed renamable $sgpr0_sgpr1, killed renamable $sgpr10_sgpr11, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
140240B	  renamable $vgpr0 = V_CNDMASK_B32_e64 0, killed $vgpr151, 0, killed $vgpr28, killed $vcc, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
140256B	  BUFFER_STORE_DWORDX2_OFFEN_exact killed renamable $vgpr22_vgpr23, killed renamable $vgpr0, killed renamable $sgpr20_sgpr21_sgpr22_sgpr23, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
140272B	  S_BRANCH %bb.1, debug-location !123; moe_op_gemm_a8w4.py:505:4

# End machine code for function _moe_gemm_a8w4.

