# *** IR Dump After Machine Instruction Scheduler (machine-scheduler) ***:
# Machine code for function _moe_gemm_a8w4: NoPHIs, TracksLiveness, TiedOpsRewritten
Function Live Ins: $vgpr0 in %999, $sgpr0_sgpr1 in %1000, $sgpr2_sgpr3 in %1001, $sgpr5 in %1003, $sgpr6_sgpr7 in %1004, $sgpr8 in %1005, $sgpr12_sgpr13 in %1008, $sgpr14 in %1009, $sgpr15 in %1010, $sgpr16 in %1011

0B	bb.0 (%ir-block.30):
	  successors: %bb.2(0x40000000), %bb.1(0x40000000); %bb.2(50.00%), %bb.1(50.00%)
	  liveins: $vgpr0, $sgpr0_sgpr1, $sgpr2_sgpr3, $sgpr5, $sgpr6_sgpr7, $sgpr8, $sgpr12_sgpr13, $sgpr14, $sgpr15, $sgpr16
16B	  %1011:sgpr_32 = COPY $sgpr16
32B	  %10366:sreg_32_xexec_hi_and_sreg_32_xm0 = COPY $sgpr15
48B	  %1009:sreg_32 = COPY $sgpr14
64B	  %1008:sreg_64 = COPY $sgpr12_sgpr13
80B	  %1005:sreg_32 = COPY $sgpr8
96B	  undef %1359.sub0_sub1:sgpr_128 = COPY $sgpr6_sgpr7
112B	  %1003:sreg_32 = COPY $sgpr5
120B	  %1000:sgpr_64(p4) = COPY $sgpr0_sgpr1
128B	  undef %7372.sub0_sub1:sgpr_128 = COPY $sgpr2_sgpr3
160B	  %999:vgpr_32(s32) = COPY $vgpr0
176B	  early-clobber %9852:sreg_64_xexec = S_LOAD_DWORDX2_IMM_ec %1000:sgpr_64(p4), 152, 0 :: (dereferenceable invariant load (s64), addrspace 4)
192B	  %1052:sreg_64_xexec_xnull = S_LOAD_DWORDX2_IMM %1000:sgpr_64(p4), 136, 0 :: (dereferenceable invariant load (s64), addrspace 4)
208B	  %1053:vgpr_32 = V_MOV_B32_e32 0, implicit $exec
224B	  S_SETREG_IMM32_B32 1, 1473, implicit-def dead $mode, implicit $mode, debug-location !8; moe_op_gemm_a8w4.py:190
240B	  %1055:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR %1052:sreg_64_xexec_xnull, %1053:vgpr_32, 0, 0, implicit $exec, debug-location !10 :: (load (s32) from %ir.22, addrspace 1); moe_op_gemm_a8w4.py:294:37
256B	  %1:sreg_32_xm0 = V_READFIRSTLANE_B32 %1055:vgpr_32, implicit $exec, debug-location !10; moe_op_gemm_a8w4.py:294:37
272B	  %9100:vgpr_32 = V_SUB_U32_e32 %9852.sub0:sreg_64_xexec, %1055:vgpr_32, implicit $exec, debug-location !11; moe_op_gemm_a8w4.py:294:29
288B	  %2:sreg_32 = S_MUL_I32 %1:sreg_32_xm0, %9852.sub1:sreg_64_xexec, debug-location !12; moe_op_gemm_a8w4.py:302:38
304B	  %9128:sreg_64_xexec = V_CMP_GT_I32_e64 1, %9100:vgpr_32, implicit $exec, debug-location !13; moe_op_gemm_a8w4.py:303:19
320B	  S_CMP_LT_I32 %1011:sgpr_32, %2:sreg_32, implicit-def $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
336B	  %9143:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !14; moe_op_gemm_a8w4.py:303:32
352B	  %1061:sreg_64 = S_OR_B64 %9128:sreg_64_xexec, %9143:sreg_64_xexec, implicit-def dead $scc
368B	  %1062:sreg_64 = S_AND_B64 $exec, %1061:sreg_64, implicit-def dead $scc, debug-location !15; moe_op_gemm_a8w4.py:303:25
384B	  $vcc = COPY %1062:sreg_64, debug-location !15; moe_op_gemm_a8w4.py:303:25
400B	  S_CBRANCH_VCCNZ %bb.2, implicit $vcc, debug-location !15; moe_op_gemm_a8w4.py:303:25
416B	  S_BRANCH %bb.1, debug-location !15; moe_op_gemm_a8w4.py:303:25

432B	bb.1.common.ret:
	; predecessors: %bb.0, %bb.2, %bb.71

448B	  S_ENDPGM 0, debug-location !16; moe_op_gemm_a8w4.py:0

464B	bb.2 (%ir-block.39):
	; predecessors: %bb.0
	  successors: %bb.3(0x50000000), %bb.1(0x30000000); %bb.3(62.50%), %bb.1(37.50%)

496B	  %1064:sreg_32 = S_ASHR_I32 %2:sreg_32, 31, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
512B	  %1066:sreg_32 = S_LSHR_B32 %1064:sreg_32, 29, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
528B	  %1067:sreg_32 = S_ADD_I32 %2:sreg_32, %1066:sreg_32, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
544B	  %1069:sreg_32 = S_ASHR_I32 %1067:sreg_32, 3, implicit-def dead $scc, debug-location !17; moe_op_gemm_a8w4.py:73:36 @[ moe_op_gemm_a8w4.py:309:61 ]
560B	  %1071:sreg_32 = S_AND_B32 %1067:sreg_32, -8, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
576B	  %1072:sreg_32 = S_SUB_I32 %2:sreg_32, %1071:sreg_32, implicit-def dead $scc, debug-location !20; moe_op_gemm_a8w4.py:74:37 @[ moe_op_gemm_a8w4.py:309:61 ]
592B	  %1073:sreg_32 = S_ASHR_I32 %1011:sgpr_32, 31, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
608B	  %1074:sreg_32 = S_LSHR_B32 %1073:sreg_32, 29, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
624B	  %1075:sreg_32 = S_ADD_I32 %1011:sgpr_32, %1074:sreg_32, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
640B	  %1076:sreg_32 = S_ASHR_I32 %1075:sreg_32, 3, implicit-def dead $scc, debug-location !21; moe_op_gemm_a8w4.py:78:23 @[ moe_op_gemm_a8w4.py:309:61 ]
784B	  %1085:sreg_32 = S_ABS_I32 %2:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
800B	  %1086:vgpr_32 = V_CVT_F32_U32_e32 %1085:sreg_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
808B	  %1077:sreg_32 = S_AND_B32 %1075:sreg_32, -8, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
816B	  %1078:sreg_32 = S_SUB_I32 %1011:sgpr_32, %1077:sreg_32, implicit-def dead $scc, debug-location !22; moe_op_gemm_a8w4.py:77:18 @[ moe_op_gemm_a8w4.py:309:61 ]
824B	  %1079:sreg_32 = nsw S_MUL_I32 %1069:sreg_32, %1078:sreg_32, debug-location !23; moe_op_gemm_a8w4.py:81:22 @[ moe_op_gemm_a8w4.py:309:61 ]
832B	  %1087:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1086:vgpr_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
840B	  %1080:sreg_32 = S_MIN_I32 %1078:sreg_32, %1072:sreg_32, implicit-def dead $scc, debug-location !24; moe_op_gemm_a8w4.py:81:50 @[ moe_op_gemm_a8w4.py:309:61 ]
848B	  %1081:sreg_32 = nsw S_ADD_I32 %1080:sreg_32, %1076:sreg_32, implicit-def dead $scc, debug-location !25; moe_op_gemm_a8w4.py:81:39 @[ moe_op_gemm_a8w4.py:309:61 ]
856B	  %1082:sreg_32 = S_ADD_I32 %1081:sreg_32, %1079:sreg_32, implicit-def dead $scc, debug-location !26; moe_op_gemm_a8w4.py:81:70 @[ moe_op_gemm_a8w4.py:309:61 ]
864B	  %1089:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1087:vgpr_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
872B	  %1090:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1089:vgpr_32, implicit $mode, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
880B	  %1083:sreg_32 = S_ASHR_I32 %1082:sreg_32, 31, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
888B	  %1084:sreg_32 = S_ABS_I32 %1082:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
904B	  %1092:sreg_32 = S_SUB_I32 0, %1085:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
912B	  %1094:sreg_32_xm0 = V_READFIRSTLANE_B32 %1090:vgpr_32, implicit $exec, debug-location !27; moe_op_gemm_a8w4.py:311:26
920B	  %1093:sreg_32 = S_MUL_I32 %1092:sreg_32, %1094:sreg_32_xm0, debug-location !27; moe_op_gemm_a8w4.py:311:26
928B	  %1095:sreg_32 = S_MUL_HI_U32 %1094:sreg_32_xm0, %1093:sreg_32, debug-location !27; moe_op_gemm_a8w4.py:311:26
944B	  %1097:sreg_32 = S_ADD_I32 %1094:sreg_32_xm0, %1095:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
960B	  %1099:sreg_32 = S_MUL_HI_U32 %1084:sreg_32, %1097:sreg_32, debug-location !27; moe_op_gemm_a8w4.py:311:26
976B	  %1100:sreg_32 = S_MUL_I32 %1099:sreg_32, %1085:sreg_32, debug-location !27; moe_op_gemm_a8w4.py:311:26
992B	  %1101:sreg_32 = S_SUB_I32 %1084:sreg_32, %1100:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1008B	  %1102:sreg_32 = S_SUB_I32 %1101:sreg_32, %1085:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1024B	  S_CMP_GE_U32 %1101:sreg_32, %1085:sreg_32, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1040B	  %1103:sreg_32 = S_CSELECT_B32 %1102:sreg_32, %1101:sreg_32, implicit $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1056B	  %1104:sreg_32 = S_SUB_I32 %1103:sreg_32, %1085:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1072B	  S_CMP_GE_U32 %1103:sreg_32, %1085:sreg_32, implicit-def $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1088B	  %1105:sreg_32 = S_CSELECT_B32 %1104:sreg_32, %1103:sreg_32, implicit $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1136B	  %4:sreg_32 = S_LSHL_B32 %9852.sub1:sreg_64_xexec, 2, implicit-def dead $scc, debug-location !28; pid_preprocessing.py:72:42 @[ moe_op_gemm_a8w4.py:314:56 ]
1184B	  %1111:sreg_32 = S_ABS_I32 %4:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1200B	  %1112:vgpr_32 = V_CVT_F32_U32_e32 %1111:sreg_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1216B	  %1113:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1112:vgpr_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1220B	  %1106:sreg_32 = S_XOR_B32 %1105:sreg_32, %1083:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1224B	  %1107:sreg_32 = S_SUB_I32 %1106:sreg_32, %1083:sreg_32, implicit-def dead $scc, debug-location !27; moe_op_gemm_a8w4.py:311:26
1232B	  %1114:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1113:vgpr_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1248B	  %1115:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1114:vgpr_32, implicit $mode, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1252B	  %1109:sreg_32 = S_XOR_B32 %1107:sreg_32, %4:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1256B	  %1110:sreg_32 = S_ASHR_I32 %1109:sreg_32, 31, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1264B	  %1116:sreg_32 = S_SUB_I32 0, %1111:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1280B	  %1118:sreg_32_xm0 = V_READFIRSTLANE_B32 %1115:vgpr_32, implicit $exec, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1296B	  %1117:sreg_32 = S_MUL_I32 %1116:sreg_32, %1118:sreg_32_xm0, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1312B	  %1119:sreg_32 = S_MUL_HI_U32 %1118:sreg_32_xm0, %1117:sreg_32, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1328B	  %1121:sreg_32 = S_ADD_I32 %1118:sreg_32_xm0, %1119:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1344B	  %1123:sreg_32 = S_ABS_I32 %1107:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1360B	  %1124:sreg_32 = S_MUL_HI_U32 %1123:sreg_32, %1121:sreg_32, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1376B	  %1125:sreg_32 = S_MUL_I32 %1124:sreg_32, %1111:sreg_32, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1392B	  %1126:sreg_32 = S_SUB_I32 %1123:sreg_32, %1125:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1408B	  %1128:sreg_32 = S_ADD_I32 %1124:sreg_32, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1424B	  %1129:sreg_32 = S_SUB_I32 %1126:sreg_32, %1111:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1440B	  S_CMP_GE_U32 %1126:sreg_32, %1111:sreg_32, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1456B	  %1130:sreg_32 = S_CSELECT_B32 %1128:sreg_32, %1124:sreg_32, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1472B	  %1131:sreg_32 = S_CSELECT_B32 %1129:sreg_32, %1126:sreg_32, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1488B	  %1132:sreg_32 = S_ADD_I32 %1130:sreg_32, 1, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1504B	  S_CMP_GE_U32 %1131:sreg_32, %1111:sreg_32, implicit-def $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1520B	  %1133:sreg_32 = S_CSELECT_B32 %1132:sreg_32, %1130:sreg_32, implicit $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1536B	  %1134:sreg_32 = S_XOR_B32 %1133:sreg_32, %1110:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1552B	  %5:sreg_32 = S_SUB_I32 %1134:sreg_32, %1110:sreg_32, implicit-def dead $scc, debug-location !32; pid_preprocessing.py:73:26 @[ moe_op_gemm_a8w4.py:314:56 ]
1568B	  %1135:sreg_32 = S_LSHL_B32 %5:sreg_32, 2, implicit-def dead $scc, debug-location !33; pid_preprocessing.py:74:33 @[ moe_op_gemm_a8w4.py:314:56 ]
1584B	  %1136:sreg_32 = S_SUB_I32 %1:sreg_32_xm0, %1135:sreg_32, implicit-def dead $scc, debug-location !34; pid_preprocessing.py:75:39 @[ moe_op_gemm_a8w4.py:314:56 ]
1600B	  %1138:sreg_32 = S_MIN_I32 %1136:sreg_32, 4, implicit-def dead $scc, debug-location !35; pid_preprocessing.py:75:52 @[ moe_op_gemm_a8w4.py:314:56 ]
1632B	  %7:sreg_32 = S_ABS_I32 %1138:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1648B	  %1140:vgpr_32 = V_CVT_F32_U32_e32 %7:sreg_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1664B	  %1141:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1140:vgpr_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1680B	  %1142:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1141:vgpr_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1696B	  %1143:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1142:vgpr_32, implicit $mode, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1700B	  %1037:sreg_64_xexec = S_LOAD_DWORDX2_IMM %1000:sgpr_64(p4), 144, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
1704B	  %1139:sreg_32 = S_ASHR_I32 %1107:sreg_32, 31, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1712B	  %1144:sreg_32 = S_SUB_I32 0, %7:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1728B	  %1146:sreg_32_xm0 = V_READFIRSTLANE_B32 %1143:vgpr_32, implicit $exec, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1744B	  %1145:sreg_32 = S_MUL_I32 %1144:sreg_32, %1146:sreg_32_xm0, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1760B	  %1147:sreg_32 = S_MUL_HI_U32 %1146:sreg_32_xm0, %1145:sreg_32, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1776B	  %1149:sreg_32 = S_ADD_I32 %1146:sreg_32_xm0, %1147:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1792B	  %1153:sreg_32 = S_MUL_HI_U32 %1123:sreg_32, %1149:sreg_32, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1808B	  %1154:sreg_32 = S_MUL_I32 %1153:sreg_32, %7:sreg_32, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1824B	  %1155:sreg_32 = S_SUB_I32 %1123:sreg_32, %1154:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1840B	  %1156:sreg_32 = S_SUB_I32 %1155:sreg_32, %7:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1856B	  S_CMP_GE_U32 %1155:sreg_32, %7:sreg_32, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1872B	  %1157:sreg_32 = S_CSELECT_B32 %1156:sreg_32, %1155:sreg_32, implicit $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1888B	  %1158:sreg_32 = S_SUB_I32 %1157:sreg_32, %7:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1904B	  S_CMP_GE_U32 %1157:sreg_32, %7:sreg_32, implicit-def $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1920B	  %1159:sreg_32 = S_CSELECT_B32 %1158:sreg_32, %1157:sreg_32, implicit $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1936B	  %1160:sreg_32 = S_XOR_B32 %1159:sreg_32, %1139:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1952B	  %1161:sreg_32 = S_SUB_I32 %1160:sreg_32, %1139:sreg_32, implicit-def dead $scc, debug-location !36; pid_preprocessing.py:77:37 @[ moe_op_gemm_a8w4.py:314:56 ]
1968B	  undef %1165.sub0:sreg_64 = S_ADD_I32 %1135:sreg_32, %1161:sreg_32, implicit-def dead $scc, debug-location !37; pid_preprocessing.py:77:31 @[ moe_op_gemm_a8w4.py:314:56 ]
1984B	  %1165.sub1:sreg_64 = S_ASHR_I32 %1165.sub0:sreg_64, 31, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2032B	  %1166:sreg_64 = S_LSHL_B64 %1165:sreg_64, 2, implicit-def dead $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2048B	  undef %1167.sub0:sreg_64_xexec_xnull = S_ADD_U32 %1037.sub0:sreg_64_xexec, %1166.sub0:sreg_64, implicit-def $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2064B	  %1167.sub1:sreg_64_xexec_xnull = S_ADDC_U32 %1037.sub1:sreg_64_xexec, %1166.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !38; moe_op_gemm_a8w4.py:319:24
2112B	  %1169:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR %1167:sreg_64_xexec_xnull, %1053:vgpr_32, 0, 0, implicit $exec, debug-location !38 :: (load (s32) from %ir.162, addrspace 1); moe_op_gemm_a8w4.py:319:24
2128B	  %9099:sreg_64_xexec = V_CMP_EQ_U32_e64 -1, %1169:vgpr_32, implicit $exec, debug-location !39; moe_op_gemm_a8w4.py:320:20
2144B	  $vcc = S_AND_B64 $exec, %9099:sreg_64_xexec, implicit-def dead $scc, debug-location !39; moe_op_gemm_a8w4.py:320:20
2152B	  undef %1383.sub0:sreg_64 = S_MOV_B32 0
2160B	  S_CBRANCH_VCCNZ %bb.1, implicit $vcc, debug-location !39; moe_op_gemm_a8w4.py:320:20

2176B	bb.3 (%ir-block.166):
	; predecessors: %bb.2
	  successors: %bb.6(0x40000000), %bb.4(0x40000000); %bb.6(50.00%), %bb.4(50.00%)

2208B	  early-clobber %1307:sgpr_128 = S_LOAD_DWORDX4_IMM_ec %1000:sgpr_64(p4), 112, 0 :: (dereferenceable invariant load (s128), addrspace 4)
2592B	  %9094:vgpr_32 = V_AND_B32_e32 65535, %1169:vgpr_32, implicit $exec, debug-location !42; moe_op_gemm_a8w4.py:322:26
2640B	  %9123:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 2, %9094:vgpr_32, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
2656B	  undef %9097.sub0:vreg_64_align2 = GLOBAL_LOAD_DWORD_SADDR %1307.sub2_sub3:sgpr_128, %9123:vgpr_32, 0, 0, implicit $exec, debug-location !44 :: (load (s32) from %ir.192, addrspace 1); moe_op_gemm_a8w4.py:324:16
2660B	  %1038:sreg_64_xexec_xnull = S_LOAD_DWORDX2_IMM %1000:sgpr_64(p4), 128, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
2664B	  %6:sreg_32 = S_ASHR_I32 %1138:sreg_32, 31, implicit-def dead $scc, debug-location !DILocation(line: 0, scope: !29, inlinedAt: !31); pid_preprocessing.py:0 @[ moe_op_gemm_a8w4.py:314:56 ]
2672B	  %1173:sreg_32 = S_MUL_I32 %5:sreg_32, %4:sreg_32, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
2680B	  undef %9126.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 16, %1169:vgpr_32, implicit $exec, debug-location !43; moe_op_gemm_a8w4.py:323:28
2800B	  undef %9091.sub0:vreg_64_align2 = V_LSHRREV_B32_e32 4, %999:vgpr_32(s32), implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
3952B	  %1359.sub3:sgpr_128 = S_MOV_B32 159744
3968B	  %1359.sub2:sgpr_128 = S_MOV_B32 2147483646
3976B	  %1174:sreg_32 = S_SUB_I32 %1107:sreg_32, %1173:sreg_32, implicit-def dead $scc, debug-location !40; pid_preprocessing.py:78:23 @[ moe_op_gemm_a8w4.py:314:56 ]
3984B	  %9126.sub1:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9126.sub0:vreg_64_align2, implicit $exec, debug-location !46; moe_op_gemm_a8w4.py:326:60
3992B	  undef %9089.sub0:vreg_64_align2 = disjoint V_OR_B32_e32 32, %9091.sub0:vreg_64_align2, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4000B	  undef %9087.sub0:vreg_64_align2 = disjoint V_OR_B32_e32 64, %9091.sub0:vreg_64_align2, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4008B	  undef %9085.sub0:vreg_64_align2 = disjoint V_OR_B32_e32 96, %9091.sub0:vreg_64_align2, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
4016B	  %1176:sreg_32 = S_ASHR_I32 %1174:sreg_32, 31, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4024B	  %1178:sreg_32 = S_ABS_I32 %1174:sreg_32, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4032B	  %9129:vreg_64_align2 = nsw V_LSHLREV_B64_e64 7, %9126:vreg_64_align2, implicit $exec, debug-location !48; moe_op_gemm_a8w4.py:331:25
4040B	  %1177:sreg_32 = S_XOR_B32 %1176:sreg_32, %6:sreg_32, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4048B	  %1180:sreg_32 = S_MUL_HI_U32 %1178:sreg_32, %1149:sreg_32, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4056B	  undef %9083.sub0:vreg_64_align2 = V_OR_B32_e32 %9129.sub0:vreg_64_align2, %9091.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4064B	  %1201:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR %1038:sreg_64_xexec_xnull, %9123:vgpr_32, 0, 0, implicit $exec, debug-location !45 :: (load (s32) from %ir.195, addrspace 1); moe_op_gemm_a8w4.py:325:22
4072B	  undef %9081.sub0:vreg_64_align2 = V_OR_B32_e32 %9129.sub0:vreg_64_align2, %9089.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4080B	  undef %9079.sub0:vreg_64_align2 = V_OR_B32_e32 %9129.sub0:vreg_64_align2, %9087.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4088B	  undef %9077.sub0:vreg_64_align2 = V_OR_B32_e32 %9129.sub0:vreg_64_align2, %9085.sub0:vreg_64_align2, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
4096B	  %9138:vgpr_32 = V_ASHRREV_I32_e32 31, %9129.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4104B	  %1181:sreg_32 = S_MUL_I32 %1180:sreg_32, %7:sreg_32, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4112B	  %1184:sreg_32 = S_ADD_I32 %1180:sreg_32, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4120B	  %1234:vgpr_32 = V_SUB_U32_e32 0, %9083.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4128B	  %1263:vgpr_32 = V_SUB_U32_e32 0, %9081.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4136B	  %1276:vgpr_32 = V_SUB_U32_e32 0, %9079.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4144B	  %1289:vgpr_32 = V_SUB_U32_e32 0, %9077.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4152B	  %1182:sreg_32 = S_SUB_I32 %1178:sreg_32, %1181:sreg_32, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4160B	  %1235:vgpr_32 = V_MAX_I32_e32 %1234:vgpr_32, %9083.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4168B	  %1264:vgpr_32 = V_MAX_I32_e32 %1263:vgpr_32, %9081.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4176B	  %1277:vgpr_32 = V_MAX_I32_e32 %1276:vgpr_32, %9079.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4184B	  %1290:vgpr_32 = V_MAX_I32_e32 %1289:vgpr_32, %9077.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4208B	  %1307.sub2:sgpr_128 = COPY %1359.sub2:sgpr_128, debug-location !53; moe_op_gemm_a8w4.py:338:27
4216B	  %1307.sub3:sgpr_128 = COPY %1359.sub3:sgpr_128, debug-location !53; moe_op_gemm_a8w4.py:338:27
4224B	  %9073:vgpr_32 = V_SUB_U32_e32 0, %9097.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4232B	  %9074:vgpr_32 = V_MAX_I32_e32 %9097.sub0:vreg_64_align2, %9073:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4240B	  %1238:vgpr_32 = V_CVT_F32_U32_e32 %9074:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4248B	  %1185:sreg_32 = S_SUB_I32 %1182:sreg_32, %7:sreg_32, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4256B	  S_CMP_GE_U32 %1182:sreg_32, %7:sreg_32, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4264B	  %1186:sreg_32 = S_CSELECT_B32 %1184:sreg_32, %1180:sreg_32, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4272B	  %1239:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %1238:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4280B	  %1187:sreg_32 = S_CSELECT_B32 %1185:sreg_32, %1182:sreg_32, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4288B	  %1188:sreg_32 = S_ADD_I32 %1186:sreg_32, 1, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4296B	  S_CMP_GE_U32 %1187:sreg_32, %7:sreg_32, implicit-def $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4304B	  %1241:vgpr_32 = nnan ninf nsz arcp contract afn reassoc nofpexcept V_MUL_F32_e32 1333788670, %1239:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4312B	  %1242:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1241:vgpr_32, implicit $mode, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4320B	  %1189:sreg_32 = S_CSELECT_B32 %1188:sreg_32, %1186:sreg_32, implicit $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
4328B	  %1307.sub1:sgpr_128 = S_AND_B32 %1307.sub1:sgpr_128, 65535, implicit-def dead $scc, debug-location !53; moe_op_gemm_a8w4.py:338:27
4336B	  %9119:vgpr_32 = V_SUB_U32_e32 0, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4344B	  %9076:vgpr_32 = V_MUL_LO_U32_e64 %9119:vgpr_32, %1242:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4352B	  %9075:vgpr_32 = V_MUL_HI_U32_e64 %1242:vgpr_32, %9076:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4360B	  %9072:vgpr_32 = V_ADD_U32_e32 %1242:vgpr_32, %9075:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4368B	  %1251:vgpr_32 = V_MUL_HI_U32_e64 %1235:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4376B	  %1265:vgpr_32 = V_MUL_HI_U32_e64 %1264:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4384B	  %1278:vgpr_32 = V_MUL_HI_U32_e64 %1277:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4392B	  %1291:vgpr_32 = V_MUL_HI_U32_e64 %1290:vgpr_32, %9072:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4400B	  %1252:vgpr_32 = V_MUL_LO_U32_e64 %1251:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4408B	  %1266:vgpr_32 = V_MUL_LO_U32_e64 %1265:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4416B	  %1279:vgpr_32 = V_MUL_LO_U32_e64 %1278:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4424B	  %1292:vgpr_32 = V_MUL_LO_U32_e64 %1291:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4432B	  %1253:vgpr_32 = V_SUB_U32_e32 %1235:vgpr_32, %1252:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4440B	  %1267:vgpr_32 = V_SUB_U32_e32 %1264:vgpr_32, %1266:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4448B	  %1280:vgpr_32 = V_SUB_U32_e32 %1277:vgpr_32, %1279:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4456B	  %1293:vgpr_32 = V_SUB_U32_e32 %1290:vgpr_32, %1292:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4464B	  %1255:vgpr_32 = V_SUB_U32_e32 %1253:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4472B	  %1269:vgpr_32 = V_SUB_U32_e32 %1267:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4480B	  %1282:vgpr_32 = V_SUB_U32_e32 %1280:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4488B	  %1295:vgpr_32 = V_SUB_U32_e32 %1293:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4496B	  %1254:sreg_64_xexec = V_CMP_GE_U32_e64 %1253:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4504B	  %1256:vgpr_32 = V_CNDMASK_B32_e64 0, %1253:vgpr_32, 0, %1255:vgpr_32, %1254:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4512B	  %1268:sreg_64_xexec = V_CMP_GE_U32_e64 %1267:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4520B	  %1270:vgpr_32 = V_CNDMASK_B32_e64 0, %1267:vgpr_32, 0, %1269:vgpr_32, %1268:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4528B	  %1281:sreg_64_xexec = V_CMP_GE_U32_e64 %1280:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4536B	  %1283:vgpr_32 = V_CNDMASK_B32_e64 0, %1280:vgpr_32, 0, %1282:vgpr_32, %1281:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4544B	  %1294:sreg_64_xexec = V_CMP_GE_U32_e64 %1293:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4552B	  %1296:vgpr_32 = V_CNDMASK_B32_e64 0, %1293:vgpr_32, 0, %1295:vgpr_32, %1294:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4560B	  %1258:vgpr_32 = V_SUB_U32_e32 %1256:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4568B	  %1272:vgpr_32 = V_SUB_U32_e32 %1270:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4576B	  %1285:vgpr_32 = V_SUB_U32_e32 %1283:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4584B	  %1298:vgpr_32 = V_SUB_U32_e32 %1296:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4592B	  %1257:sreg_64_xexec = V_CMP_GE_U32_e64 %1256:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4600B	  %1259:vgpr_32 = V_CNDMASK_B32_e64 0, %1256:vgpr_32, 0, %1258:vgpr_32, %1257:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4608B	  %1271:sreg_64_xexec = V_CMP_GE_U32_e64 %1270:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4616B	  %1273:vgpr_32 = V_CNDMASK_B32_e64 0, %1270:vgpr_32, 0, %1272:vgpr_32, %1271:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4624B	  %1284:sreg_64_xexec = V_CMP_GE_U32_e64 %1283:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4632B	  %1286:vgpr_32 = V_CNDMASK_B32_e64 0, %1283:vgpr_32, 0, %1285:vgpr_32, %1284:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4640B	  %1297:sreg_64_xexec = V_CMP_GE_U32_e64 %1296:vgpr_32, %9074:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4648B	  %1299:vgpr_32 = V_CNDMASK_B32_e64 0, %1296:vgpr_32, 0, %1298:vgpr_32, %1297:sreg_64_xexec, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4656B	  %1261:vgpr_32 = V_XOR_B32_e32 %1259:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4664B	  %1274:vgpr_32 = V_XOR_B32_e32 %1273:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4672B	  %1287:vgpr_32 = V_XOR_B32_e32 %1286:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4680B	  %1300:vgpr_32 = V_XOR_B32_e32 %1299:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4688B	  %1262:vgpr_32 = V_SUB_U32_e32 %1261:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4696B	  %1275:vgpr_32 = V_SUB_U32_e32 %1274:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4704B	  %1288:vgpr_32 = V_SUB_U32_e32 %1287:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4712B	  %1301:vgpr_32 = V_SUB_U32_e32 %1300:vgpr_32, %9138:vgpr_32, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
4720B	  %1308:vgpr_32 = V_ADD_LSHL_U32_e64 %1201:vgpr_32, %1262:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
4736B	  %1310:vgpr_32 = V_ADD_LSHL_U32_e64 %1201:vgpr_32, %1275:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
4752B	  %1312:vgpr_32 = V_ADD_LSHL_U32_e64 %1201:vgpr_32, %1288:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
4768B	  %1314:vgpr_32 = V_ADD_LSHL_U32_e64 %1201:vgpr_32, %1301:vgpr_32, 2, implicit $exec, debug-location !53; moe_op_gemm_a8w4.py:338:27
4776B	  %1309:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1308:vgpr_32, %1307:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
4784B	  %1311:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1310:vgpr_32, %1307:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
4792B	  %1313:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1312:vgpr_32, %1307:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
4800B	  %1315:vgpr_32 = BUFFER_LOAD_DWORD_OFFEN %1314:vgpr_32, %1307:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !53 :: (dereferenceable load (s32) from %ir.316, align 1, addrspace 8); moe_op_gemm_a8w4.py:338:27
4808B	  early-clobber %1380:sreg_64_xexec = S_LOAD_DWORDX2_IMM_ec %1000:sgpr_64(p4), 100, 0 :: (dereferenceable invariant load (s64), align 4, addrspace 4)
4944B	  %1335:vgpr_32 = V_AND_B32_e32 15, %999:vgpr_32(s32), implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
5064B	  %1362:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
5072B	  undef %9070.sub0:vreg_64_align2 = V_LSHLREV_B32_e32 4, %1335:vgpr_32, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
5080B	  %32:sreg_32 = S_ADD_I32 %1380.sub1:sreg_64_xexec, 255, implicit-def dead $scc, debug-location !58; standard.py:43:17 @[ moe_op_gemm_a8w4.py:397:28 ]
5088B	  %1190:sreg_32 = S_XOR_B32 %1189:sreg_32, %1177:sreg_32, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
5096B	  undef %1208.sub0:sreg_64 = S_SUB_I32 %1190:sreg_32, %1177:sreg_32, implicit-def dead $scc, debug-location !41; pid_preprocessing.py:78:44 @[ moe_op_gemm_a8w4.py:314:56 ]
5104B	  %1208.sub1:sreg_64 = S_ASHR_I32 %1208.sub0:sreg_64, 31, implicit-def dead $scc, debug-location !47; moe_op_gemm_a8w4.py:328:28
5112B	  S_CMPK_GT_I32 %32:sreg_32, 255, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
5120B	  %1316:vgpr_32 = V_ASHRREV_I32_e32 31, %1309:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5128B	  %1322:vgpr_32 = V_ASHRREV_I32_e32 31, %1311:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5136B	  %1326:vgpr_32 = V_ASHRREV_I32_e32 31, %1313:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5144B	  %1330:vgpr_32 = V_ASHRREV_I32_e32 31, %1315:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5152B	  %1318:vgpr_32 = V_LSHRREV_B32_e32 29, %1316:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5160B	  %1323:vgpr_32 = V_LSHRREV_B32_e32 29, %1322:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5168B	  %1327:vgpr_32 = V_LSHRREV_B32_e32 29, %1326:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5176B	  %1331:vgpr_32 = V_LSHRREV_B32_e32 29, %1330:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5184B	  %1319:vgpr_32 = V_ADD_U32_e32 %1309:vgpr_32, %1318:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5192B	  %1324:vgpr_32 = V_ADD_U32_e32 %1311:vgpr_32, %1323:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5200B	  %1328:vgpr_32 = V_ADD_U32_e32 %1313:vgpr_32, %1327:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5208B	  %1332:vgpr_32 = V_ADD_U32_e32 %1315:vgpr_32, %1331:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5216B	  %1321:vgpr_32 = V_ASHRREV_I32_e32 3, %1319:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5224B	  %1325:vgpr_32 = V_ASHRREV_I32_e32 3, %1324:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5232B	  %1329:vgpr_32 = V_ASHRREV_I32_e32 3, %1328:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5240B	  %1333:vgpr_32 = V_ASHRREV_I32_e32 3, %1332:vgpr_32, implicit $exec, debug-location !54; moe_op_gemm_a8w4.py:338:53
5248B	  %1340:vreg_64_align2, dead %1341:sreg_64 = V_MAD_U64_U32_e64 %1321:vgpr_32, %1005:sreg_32, %9070:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
5256B	  %1343:vreg_64_align2, dead %1344:sreg_64 = V_MAD_U64_U32_e64 %1325:vgpr_32, %1005:sreg_32, %9070:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
5264B	  %1346:vreg_64_align2, dead %1347:sreg_64 = V_MAD_U64_U32_e64 %1329:vgpr_32, %1005:sreg_32, %9070:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
5272B	  %1349:vreg_64_align2, dead %1350:sreg_64 = V_MAD_U64_U32_e64 %1333:vgpr_32, %1005:sreg_32, %9070:vreg_64_align2, 0, implicit $exec, debug-location !57; moe_op_gemm_a8w4.py:343:10
5280B	  %9144:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
5288B	  %1359.sub1:sgpr_128 = S_AND_B32 %1359.sub1:sgpr_128, 65535, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
5296B	  %1361:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1340.sub0:vreg_64_align2, %9144:sreg_64_xexec, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
5312B	  %1363:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1343.sub0:vreg_64_align2, %9144:sreg_64_xexec, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
5328B	  %1365:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1346.sub0:vreg_64_align2, %9144:sreg_64_xexec, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
5344B	  %1367:vgpr_32 = V_CNDMASK_B32_e64 0, %1362:vgpr_32, 0, %1349.sub0:vreg_64_align2, %9144:sreg_64_xexec, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
5352B	  %36:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1361:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
5360B	  %37:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1363:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
5368B	  %38:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1365:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
5376B	  %39:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %1367:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
5384B	  undef %1648.sub0_sub1:sgpr_128 = S_LOAD_DWORDX2_IMM %1000:sgpr_64(p4), 56, 0 :: (dereferenceable invariant load (s64), addrspace 4)
5392B	  undef %9054.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !44; moe_op_gemm_a8w4.py:324:16
5400B	  %1369:sreg_64 = nsw S_LSHL_B64 %1208:sreg_64, 4, implicit-def dead $scc, debug-location !64; moe_op_gemm_a8w4.py:362:30
5408B	  %1375:vgpr_32 = V_LSHRREV_B32_e32 5, %999:vgpr_32(s32), implicit $exec, debug-location !65; moe_op_gemm_a8w4.py:362:59
5416B	  undef %9890.sub0:vreg_64_align2 = V_OR_B32_e32 %1369.sub0:sreg_64, %1375:vgpr_32, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
5424B	  %9890.sub1:vreg_64_align2 = COPY %1369.sub1:sreg_64, implicit $exec, debug-location !66; moe_op_gemm_a8w4.py:362:46
5448B	  %1380.sub1:sreg_64_xexec = S_ASHR_I32 %1380.sub0:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5472B	  %1381:sreg_64 = S_OR_B64 %1369:sreg_64, %1380:sreg_64_xexec, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5488B	  %1383.sub1:sreg_64 = COPY %1381.sub1:sreg_64, debug-location !67; moe_op_gemm_a8w4.py:362:77
5496B	  S_CMP_LG_U64 %1383:sreg_64, 0, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5504B	  %9145:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5512B	  %9891:vreg_64_align2 = IMPLICIT_DEF
5528B	  %10338:sreg_64 = COPY $exec, implicit-def $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5536B	  %10339:sreg_64 = S_AND_B64 %10338:sreg_64, %9145:sreg_64_xexec, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5544B	  %43:sreg_64 = S_XOR_B64 %10339:sreg_64, %10338:sreg_64, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5552B	  $exec = S_MOV_B64_term %10339:sreg_64, debug-location !67; moe_op_gemm_a8w4.py:362:77
5560B	  S_CBRANCH_EXECZ %bb.4, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5568B	  S_BRANCH %bb.6, debug-location !67; moe_op_gemm_a8w4.py:362:77

5576B	bb.4.Flow349:
	; predecessors: %bb.3, %bb.6
	  successors: %bb.5(0x40000000), %bb.7(0x40000000); %bb.5(50.00%), %bb.7(50.00%)

5584B	  %10340:sreg_64 = S_OR_SAVEEXEC_B64 %43:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
5608B	  %9855:sreg_64_xexec = S_LOAD_DWORDX2_IMM %1000:sgpr_64(p4), 64, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
5616B	  %9870:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
5632B	  %45:sreg_64 = S_AND_B64 $exec, %10340:sreg_64, implicit-def $scc
5640B	  $exec = S_XOR_B64_term $exec, %45:sreg_64, implicit-def $scc
5648B	  S_CBRANCH_EXECZ %bb.7, implicit $exec
5656B	  S_BRANCH %bb.5

5664B	bb.5 (%ir-block.366):
	; predecessors: %bb.4
	  successors: %bb.7(0x80000000); %bb.7(100.00%)

5680B	  %1612:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9870:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5688B	  %1613:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %1612:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5696B	  %1614:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1613:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5700B	  %1610:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5704B	  %9067:vgpr_32 = V_MUL_LO_U32_e64 %1610:sreg_32, %1614:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5712B	  %9066:vgpr_32 = V_MUL_HI_U32_e64 %1614:vgpr_32, %9067:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5720B	  %9065:vgpr_32 = V_ADD_U32_e32 %1614:vgpr_32, %9066:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5728B	  %1621:vgpr_32 = V_MUL_HI_U32_e64 %9890.sub0:vreg_64_align2, %9065:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5736B	  %1622:vgpr_32 = V_MUL_LO_U32_e64 %1621:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5744B	  %1623:vgpr_32 = V_SUB_U32_e32 %9890.sub0:vreg_64_align2, %1622:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5760B	  %1625:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %1623:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5764B	  %1624:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %1623:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5768B	  %1626:vgpr_32 = V_CNDMASK_B32_e64 0, %1623:vgpr_32, 0, %1625:vgpr_32, %1624:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5784B	  %1628:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %1626:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5788B	  %1627:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %1626:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5792B	  undef %9891.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %1626:vgpr_32, 0, %1628:vgpr_32, %1627:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5824B	  S_BRANCH %bb.7, debug-location !67; moe_op_gemm_a8w4.py:362:77

5832B	bb.6 (%ir-block.371):
	; predecessors: %bb.3
	  successors: %bb.4(0x80000000); %bb.4(100.00%)

5840B	  undef %1390.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5856B	  %1390.sub1:sreg_64 = COPY %1390.sub0:sreg_64, debug-location !67; moe_op_gemm_a8w4.py:362:77
5864B	  undef %1391.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %1390.sub0:sreg_64, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5872B	  %1391.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %1390.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5896B	  %1392:sreg_64 = S_XOR_B64 %1391:sreg_64, %1390:sreg_64, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
5904B	  %1394:vgpr_32 = V_CVT_F32_U32_e32 %1392.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5912B	  %1396:vgpr_32 = V_CVT_F32_U32_e32 %1392.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5920B	  %1398:vgpr_32 = nofpexcept V_FMAMK_F32 %1396:vgpr_32, 1333788672, %1394:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5928B	  %1399:vgpr_32 = nofpexcept V_RCP_F32_e32 %1398:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5936B	  %1401:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1399:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5944B	  %1403:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1401:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5952B	  %1404:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1403:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
5960B	  %1406:vgpr_32 = nofpexcept V_FMAMK_F32 %1404:vgpr_32, -813694976, %1401:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6048B	  %1416:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1404:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6056B	  %1407:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1406:vgpr_32, implicit $mode, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6064B	  %9432:sreg_32 = S_SUB_U32 0, %1392.sub0:sreg_64, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6072B	  %9433:sreg_32 = S_SUBB_U32 0, %1392.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6080B	  %1418:sreg_32_xm0 = V_READFIRSTLANE_B32 %1416:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6088B	  %1412:sreg_32_xm0 = V_READFIRSTLANE_B32 %1407:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6096B	  %1417:sreg_32 = S_MUL_I32 %9432:sreg_32, %1418:sreg_32_xm0, debug-location !67; moe_op_gemm_a8w4.py:362:77
6104B	  %1411:sreg_32 = S_MUL_I32 %9433:sreg_32, %1412:sreg_32_xm0, debug-location !67; moe_op_gemm_a8w4.py:362:77
6112B	  %1414:sreg_32 = S_MUL_HI_U32 %9432:sreg_32, %1412:sreg_32_xm0, debug-location !67; moe_op_gemm_a8w4.py:362:77
6120B	  %1419:sreg_32 = S_ADD_I32 %1414:sreg_32, %1417:sreg_32, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6128B	  %1420:sreg_32 = S_ADD_I32 %1419:sreg_32, %1411:sreg_32, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6136B	  %1421:sreg_32 = S_MUL_HI_U32 %1412:sreg_32_xm0, %1420:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6144B	  %1423:sreg_32 = S_MUL_I32 %1412:sreg_32_xm0, %1420:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6160B	  %1426:sreg_32 = S_MUL_I32 %9432:sreg_32, %1412:sreg_32_xm0, debug-location !67; moe_op_gemm_a8w4.py:362:77
6176B	  %1428:sreg_32 = S_MUL_HI_U32 %1412:sreg_32_xm0, %1426:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6192B	  %9438:sreg_32 = S_ADD_U32 %1428:sreg_32, %1423:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6208B	  %9439:sreg_32 = S_ADDC_U32 0, %1421:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6224B	  %1435:sreg_32 = S_MUL_HI_U32 %1418:sreg_32_xm0, %1420:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6240B	  %1437:sreg_32 = S_MUL_HI_U32 %1418:sreg_32_xm0, %1426:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6256B	  %1439:sreg_32 = S_MUL_I32 %1418:sreg_32_xm0, %1426:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6272B	  dead %1445:sreg_32 = S_ADD_U32 %9438:sreg_32, %1439:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6288B	  %1446:sreg_32 = S_ADDC_U32 %9439:sreg_32, %1437:sreg_32, implicit-def $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6304B	  %1447:sreg_32 = S_ADDC_U32 %1435:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6320B	  %1448:sreg_32 = S_MUL_I32 %1418:sreg_32_xm0, %1420:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6336B	  %9444:sreg_32 = S_ADD_U32 %1446:sreg_32, %1448:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6352B	  %9445:sreg_32 = S_ADDC_U32 0, %1447:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6368B	  %1456:sreg_32 = S_ADD_U32 %1412:sreg_32_xm0, %9444:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6384B	  %1460:sreg_32 = S_ADDC_U32 %1418:sreg_32_xm0, %9445:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6400B	  %1463:sreg_32 = S_MUL_I32 %9432:sreg_32, %1460:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6416B	  %1464:sreg_32 = S_MUL_HI_U32 %9432:sreg_32, %1456:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6432B	  %1465:sreg_32 = S_ADD_I32 %1464:sreg_32, %1463:sreg_32, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6448B	  %1466:sreg_32 = S_MUL_I32 %9433:sreg_32, %1456:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6464B	  %1467:sreg_32 = S_ADD_I32 %1465:sreg_32, %1466:sreg_32, implicit-def dead $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6480B	  %1468:sreg_32 = S_MUL_HI_U32 %1460:sreg_32, %1467:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6496B	  %1469:sreg_32 = S_MUL_I32 %9432:sreg_32, %1456:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6512B	  %1470:sreg_32 = S_MUL_HI_U32 %1460:sreg_32, %1469:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6528B	  %1471:sreg_32 = S_MUL_I32 %1460:sreg_32, %1469:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6544B	  %1475:sreg_32 = S_MUL_HI_U32 %1456:sreg_32, %1467:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6560B	  %1476:sreg_32 = S_MUL_I32 %1456:sreg_32, %1467:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6576B	  %1478:sreg_32 = S_MUL_HI_U32 %1456:sreg_32, %1469:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6592B	  %9451:sreg_32 = S_ADD_U32 %1478:sreg_32, %1476:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6608B	  %9452:sreg_32 = S_ADDC_U32 0, %1475:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6624B	  dead %1483:sreg_32 = S_ADD_U32 %9451:sreg_32, %1471:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6640B	  %1484:sreg_32 = S_ADDC_U32 %9452:sreg_32, %1470:sreg_32, implicit-def $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6656B	  %1485:sreg_32 = S_ADDC_U32 %1468:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6672B	  %1486:sreg_32 = S_MUL_I32 %1460:sreg_32, %1467:sreg_32, debug-location !67; moe_op_gemm_a8w4.py:362:77
6688B	  %9457:sreg_32 = S_ADD_U32 %1484:sreg_32, %1486:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6704B	  %9458:sreg_32 = S_ADDC_U32 0, %1485:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6720B	  %1493:sreg_32 = S_ADD_U32 %1456:sreg_32, %9457:sreg_32, implicit-def $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6736B	  %1496:sreg_32 = S_ADDC_U32 %1460:sreg_32, %9458:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !67; moe_op_gemm_a8w4.py:362:77
6752B	  undef %9062.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9890.sub1:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6784B	  %9062.sub1:vreg_64_align2 = COPY %9062.sub0:vreg_64_align2, debug-location !67; moe_op_gemm_a8w4.py:362:77
6800B	  %1502:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9890:vreg_64_align2, 0, %9062:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6816B	  %1504:vgpr_32 = V_XOR_B32_e32 %1502.sub1:vreg_64_align2, %9062.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6832B	  %1507:vgpr_32 = V_XOR_B32_e32 %1502.sub0:vreg_64_align2, %9062.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6848B	  %9061:vreg_64_align2, dead %1511:sreg_64 = V_MAD_U64_U32_e64 %1507:vgpr_32, %1496:sreg_32, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6896B	  %9054.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %1507:vgpr_32, %1493:sreg_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6944B	  %1517:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9054:vreg_64_align2, 0, %9061:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6960B	  %9057:vreg_64_align2, dead %1522:sreg_64 = V_MAD_U64_U32_e64 %1504:vgpr_32, %1496:sreg_32, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6976B	  %1524:vreg_64_align2, dead %1525:sreg_64 = V_MAD_U64_U32_e64 %1504:vgpr_32, %1493:sreg_32, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
6992B	  dead %1531:vgpr_32 = V_ADD_CO_U32_e32 %1517.sub0:vreg_64_align2, %1524.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7008B	  %9054.sub0:vreg_64_align2 = V_ADDC_U32_e32 %1517.sub1:vreg_64_align2, %1524.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7024B	  %9057.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9057.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7104B	  %1540:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9054:vreg_64_align2, 0, %9057:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7120B	  %1542:vgpr_32 = V_MUL_LO_U32_e64 %1392.sub1:sreg_64, %1540.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7136B	  %1544:vgpr_32 = V_MUL_LO_U32_e64 %1392.sub0:sreg_64, %1540.sub1:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7152B	  %1545:vreg_64_align2, dead %1546:sreg_64 = V_MAD_U64_U32_e64 %1392.sub0:sreg_64, %1540.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7168B	  %1548:vgpr_32 = V_ADD3_U32_e64 %1545.sub1:vreg_64_align2, %1544:vgpr_32, %1542:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7184B	  %1549:vgpr_32 = V_SUB_U32_e32 %1504:vgpr_32, %1548:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7216B	  %1555:vgpr_32 = COPY %1392.sub1:sreg_64, debug-location !67; moe_op_gemm_a8w4.py:362:77
7224B	  %1551:vgpr_32, %1552:sreg_64_xexec = V_SUB_CO_U32_e64 %1507:vgpr_32, %1545.sub0:vreg_64_align2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7232B	  %1553:vgpr_32, dead %1554:sreg_64 = V_SUBB_U32_e64 %1549:vgpr_32, %1555:vgpr_32, %1552:sreg_64_xexec, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7248B	  %1556:vgpr_32, %1557:sreg_64_xexec = V_SUBREV_CO_U32_e64 %1392.sub0:sreg_64, %1551:vgpr_32, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7264B	  %1558:vgpr_32, dead %1559:sreg_64 = V_SUBBREV_U32_e64 0, %1553:vgpr_32, %1557:sreg_64_xexec, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7280B	  %1561:sreg_64_xexec = V_CMP_LE_U32_e64 %1392.sub1:sreg_64, %1558:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7296B	  %1563:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1561:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7328B	  %1567:sreg_64_xexec = V_CMP_LE_U32_e64 %1392.sub0:sreg_64, %1556:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7344B	  %1568:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1567:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7352B	  %1566:sreg_64_xexec = V_CMP_EQ_U32_e64 %1392.sub1:sreg_64, %1558:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7360B	  %1571:vgpr_32 = V_CNDMASK_B32_e64 0, %1563:vgpr_32, 0, %1568:vgpr_32, %1566:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7392B	  %1577:vgpr_32, dead %1578:sreg_64_xexec = V_SUBREV_CO_U32_e64 %1392.sub0:sreg_64, %1556:vgpr_32, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7408B	  %1583:vgpr_32, dead %1584:sreg_64 = V_SUBB_U32_e64 %1504:vgpr_32, %1548:vgpr_32, %1552:sreg_64_xexec, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7424B	  %1585:sreg_64_xexec = V_CMP_LE_U32_e64 %1392.sub1:sreg_64, %1583:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7440B	  %1586:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1585:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7472B	  %1590:sreg_64_xexec = V_CMP_LE_U32_e64 %1392.sub0:sreg_64, %1551:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7488B	  %1591:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1590:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7496B	  %1589:sreg_64_xexec = V_CMP_EQ_U32_e64 %1392.sub1:sreg_64, %1583:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7504B	  %1594:vgpr_32 = V_CNDMASK_B32_e64 0, %1586:vgpr_32, 0, %1591:vgpr_32, %1589:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7512B	  %1573:sreg_64_xexec = V_CMP_NE_U32_e64 0, %1571:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7536B	  %1598:vgpr_32 = V_CNDMASK_B32_e64 0, %1556:vgpr_32, 0, %1577:vgpr_32, %1573:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7544B	  %1596:sreg_64_xexec = V_CMP_NE_U32_e64 0, %1594:vgpr_32, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7552B	  %1599:vgpr_32 = V_CNDMASK_B32_e64 0, %1551:vgpr_32, 0, %1598:vgpr_32, %1596:sreg_64_xexec, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7568B	  %1604:vgpr_32 = V_XOR_B32_e32 %1599:vgpr_32, %9062.sub0:vreg_64_align2, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7584B	  undef %9891.sub0:vreg_64_align2, dead %9466:sreg_64_xexec = V_SUB_CO_U32_e64 %1604:vgpr_32, %9062.sub0:vreg_64_align2, 0, implicit $exec, debug-location !67; moe_op_gemm_a8w4.py:362:77
7648B	  %9890:vreg_64_align2 = IMPLICIT_DEF
7664B	  S_BRANCH %bb.4, debug-location !67; moe_op_gemm_a8w4.py:362:77

7680B	bb.7 (%ir-block.373):
	; predecessors: %bb.4, %bb.5
	  successors: %bb.10(0x40000000), %bb.8(0x40000000); %bb.10(50.00%), %bb.8(50.00%)

7696B	  $exec = S_OR_B64 $exec, %45:sreg_64, implicit-def $scc
7728B	  %1634:vgpr_32 = V_LSHLREV_B32_e32 3, %999:vgpr_32(s32), implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
7744B	  %1636:vgpr_32 = V_AND_B32_e32 248, %1634:vgpr_32, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
7760B	  %9124:vgpr_32 = V_MUL_LO_U32_e64 %9094:vgpr_32, %9855.sub0:sreg_64_xexec, implicit $exec, debug-location !68; moe_op_gemm_a8w4.py:352:26
7776B	  %1638:vgpr_32 = V_MUL_LO_U32_e64 %9855.sub1:sreg_64_xexec, %9891.sub0:vreg_64_align2, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
7792B	  %1639:vgpr_32 = V_ADD3_U32_e64 %9124:vgpr_32, %1636:vgpr_32, %1638:vgpr_32, implicit $exec, debug-location !70; moe_op_gemm_a8w4.py:371:10
7808B	  %1648.sub3:sgpr_128 = S_MOV_B32 159744
7824B	  %1648.sub2:sgpr_128 = S_MOV_B32 2147483646
7840B	  %1648.sub1:sgpr_128 = S_AND_B32 %1648.sub1:sgpr_128, 65535, implicit-def dead $scc, debug-location !71; moe_op_gemm_a8w4.py:413:24
7920B	  %1651:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
7936B	  %1650:vgpr_32 = V_CNDMASK_B32_e64 0, %1651:vgpr_32, 0, %1639:vgpr_32, %9144:sreg_64_xexec, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
7968B	  %55:av_64_align2 = BUFFER_LOAD_DWORDX2_OFFEN %1650:vgpr_32, %1648:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
7976B	  undef %1661.sub0:sreg_64 = S_MOV_B32 0
7984B	  %56:sreg_64 = nsw S_LSHL_B64 %1208:sreg_64, 9, implicit-def dead $scc, debug-location !72; moe_op_gemm_a8w4.py:375:23
8000B	  %1656:vgpr_32 = V_LSHRREV_B32_e32 3, %999:vgpr_32(s32), implicit $exec, debug-location !73; moe_op_gemm_a8w4.py:375:55
8016B	  undef %9893.sub0:vreg_64_align2 = V_OR_B32_e32 %56.sub0:sreg_64, %1656:vgpr_32, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
8032B	  %9893.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
8080B	  %3474:sreg_64 = S_OR_B64 %56:sreg_64, %1380:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8112B	  %1661.sub1:sreg_64 = COPY %3474.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
8128B	  S_CMP_LG_U64 %1661:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8144B	  %9146:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8160B	  %9894:vreg_64_align2 = IMPLICIT_DEF
8192B	  %10341:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8208B	  %10342:sreg_64 = S_AND_B64 %10341:sreg_64, %9146:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8224B	  %60:sreg_64 = S_XOR_B64 %10342:sreg_64, %10341:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8240B	  $exec = S_MOV_B64_term %10342:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
8256B	  S_CBRANCH_EXECZ %bb.8, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8272B	  S_BRANCH %bb.10, debug-location !75; moe_op_gemm_a8w4.py:377:35

8288B	bb.8.Flow348:
	; predecessors: %bb.7, %bb.10
	  successors: %bb.9(0x40000000), %bb.11(0x40000000); %bb.9(50.00%), %bb.11(50.00%)

8304B	  %10343:sreg_64 = S_OR_SAVEEXEC_B64 %60:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
8352B	  %9869:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
8384B	  %62:sreg_64 = S_AND_B64 $exec, %10343:sreg_64, implicit-def $scc
8400B	  $exec = S_XOR_B64_term $exec, %62:sreg_64, implicit-def $scc
8416B	  S_CBRANCH_EXECZ %bb.11, implicit $exec
8432B	  S_BRANCH %bb.9

8448B	bb.9 (%ir-block.400):
	; predecessors: %bb.8
	  successors: %bb.11(0x80000000); %bb.11(100.00%)

8480B	  %1890:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9869:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8496B	  %1891:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %1890:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8512B	  %1892:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1891:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8520B	  %1888:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8528B	  %9050:vgpr_32 = V_MUL_LO_U32_e64 %1888:sreg_32, %1892:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8544B	  %9049:vgpr_32 = V_MUL_HI_U32_e64 %1892:vgpr_32, %9050:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8560B	  %9048:vgpr_32 = V_ADD_U32_e32 %1892:vgpr_32, %9049:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8576B	  %1899:vgpr_32 = V_MUL_HI_U32_e64 %9893.sub0:vreg_64_align2, %9048:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8592B	  %1900:vgpr_32 = V_MUL_LO_U32_e64 %1899:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8608B	  %1901:vgpr_32 = V_SUB_U32_e32 %9893.sub0:vreg_64_align2, %1900:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8640B	  %1903:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %1901:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8648B	  %1902:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %1901:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8656B	  %1904:vgpr_32 = V_CNDMASK_B32_e64 0, %1901:vgpr_32, 0, %1903:vgpr_32, %1902:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8688B	  %1906:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %1904:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8696B	  %1905:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %1904:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8704B	  undef %9894.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %1904:vgpr_32, 0, %1906:vgpr_32, %1905:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8720B	  %9894.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8800B	  S_BRANCH %bb.11, debug-location !75; moe_op_gemm_a8w4.py:377:35

8816B	bb.10 (%ir-block.405):
	; predecessors: %bb.7
	  successors: %bb.8(0x80000000); %bb.8(100.00%)

8832B	  undef %1668.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8864B	  %1668.sub1:sreg_64 = COPY %1668.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
8880B	  undef %1669.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %1668.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8896B	  %1669.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %1668.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8944B	  %1670:sreg_64 = S_XOR_B64 %1669:sreg_64, %1668:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
8960B	  %1672:vgpr_32 = V_CVT_F32_U32_e32 %1670.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8976B	  %1674:vgpr_32 = V_CVT_F32_U32_e32 %1670.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
8992B	  %1676:vgpr_32 = nofpexcept V_FMAMK_F32 %1674:vgpr_32, 1333788672, %1672:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9008B	  %1677:vgpr_32 = nofpexcept V_RCP_F32_e32 %1676:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9024B	  %1679:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1677:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9040B	  %1681:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1679:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9056B	  %1682:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1681:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9072B	  %1684:vgpr_32 = nofpexcept V_FMAMK_F32 %1682:vgpr_32, -813694976, %1679:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9184B	  %1694:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1682:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9192B	  %1685:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1684:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9200B	  %9478:sreg_32 = S_SUB_U32 0, %1670.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9208B	  %9479:sreg_32 = S_SUBB_U32 0, %1670.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9216B	  %1696:sreg_32_xm0 = V_READFIRSTLANE_B32 %1694:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9224B	  %1690:sreg_32_xm0 = V_READFIRSTLANE_B32 %1685:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9232B	  %1695:sreg_32 = S_MUL_I32 %9478:sreg_32, %1696:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
9240B	  %1689:sreg_32 = S_MUL_I32 %9479:sreg_32, %1690:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
9248B	  %1692:sreg_32 = S_MUL_HI_U32 %9478:sreg_32, %1690:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
9256B	  %1697:sreg_32 = S_ADD_I32 %1692:sreg_32, %1695:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9264B	  %1698:sreg_32 = S_ADD_I32 %1697:sreg_32, %1689:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9272B	  %1699:sreg_32 = S_MUL_HI_U32 %1690:sreg_32_xm0, %1698:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9280B	  %1701:sreg_32 = S_MUL_I32 %1690:sreg_32_xm0, %1698:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9296B	  %1704:sreg_32 = S_MUL_I32 %9478:sreg_32, %1690:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
9312B	  %1706:sreg_32 = S_MUL_HI_U32 %1690:sreg_32_xm0, %1704:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9328B	  %9484:sreg_32 = S_ADD_U32 %1706:sreg_32, %1701:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9344B	  %9485:sreg_32 = S_ADDC_U32 0, %1699:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9360B	  %1713:sreg_32 = S_MUL_HI_U32 %1696:sreg_32_xm0, %1698:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9376B	  %1715:sreg_32 = S_MUL_HI_U32 %1696:sreg_32_xm0, %1704:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9392B	  %1717:sreg_32 = S_MUL_I32 %1696:sreg_32_xm0, %1704:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9408B	  dead %1723:sreg_32 = S_ADD_U32 %9484:sreg_32, %1717:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9424B	  %1724:sreg_32 = S_ADDC_U32 %9485:sreg_32, %1715:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9440B	  %1725:sreg_32 = S_ADDC_U32 %1713:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9456B	  %1726:sreg_32 = S_MUL_I32 %1696:sreg_32_xm0, %1698:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9472B	  %9490:sreg_32 = S_ADD_U32 %1724:sreg_32, %1726:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9488B	  %9491:sreg_32 = S_ADDC_U32 0, %1725:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9504B	  %1734:sreg_32 = S_ADD_U32 %1690:sreg_32_xm0, %9490:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9520B	  %1738:sreg_32 = S_ADDC_U32 %1696:sreg_32_xm0, %9491:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9536B	  %1741:sreg_32 = S_MUL_I32 %9478:sreg_32, %1738:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9552B	  %1742:sreg_32 = S_MUL_HI_U32 %9478:sreg_32, %1734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9568B	  %1743:sreg_32 = S_ADD_I32 %1742:sreg_32, %1741:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9584B	  %1744:sreg_32 = S_MUL_I32 %9479:sreg_32, %1734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9600B	  %1745:sreg_32 = S_ADD_I32 %1743:sreg_32, %1744:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9616B	  %1746:sreg_32 = S_MUL_HI_U32 %1738:sreg_32, %1745:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9632B	  %1747:sreg_32 = S_MUL_I32 %9478:sreg_32, %1734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9648B	  %1748:sreg_32 = S_MUL_HI_U32 %1738:sreg_32, %1747:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9664B	  %1749:sreg_32 = S_MUL_I32 %1738:sreg_32, %1747:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9680B	  %1753:sreg_32 = S_MUL_HI_U32 %1734:sreg_32, %1745:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9696B	  %1754:sreg_32 = S_MUL_I32 %1734:sreg_32, %1745:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9712B	  %1756:sreg_32 = S_MUL_HI_U32 %1734:sreg_32, %1747:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9728B	  %9497:sreg_32 = S_ADD_U32 %1756:sreg_32, %1754:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9744B	  %9498:sreg_32 = S_ADDC_U32 0, %1753:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9760B	  dead %1761:sreg_32 = S_ADD_U32 %9497:sreg_32, %1749:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9776B	  %1762:sreg_32 = S_ADDC_U32 %9498:sreg_32, %1748:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9792B	  %1763:sreg_32 = S_ADDC_U32 %1746:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9808B	  %1764:sreg_32 = S_MUL_I32 %1738:sreg_32, %1745:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
9824B	  %9503:sreg_32 = S_ADD_U32 %1762:sreg_32, %1764:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9840B	  %9504:sreg_32 = S_ADDC_U32 0, %1763:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9856B	  %1771:sreg_32 = S_ADD_U32 %1734:sreg_32, %9503:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9872B	  %1774:sreg_32 = S_ADDC_U32 %1738:sreg_32, %9504:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
9888B	  undef %9045.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9893.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9920B	  %9045.sub1:vreg_64_align2 = COPY %9045.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
9936B	  %1780:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9893:vreg_64_align2, 0, %9045:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9952B	  %1782:vgpr_32 = V_XOR_B32_e32 %1780.sub1:vreg_64_align2, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9968B	  %1785:vgpr_32 = V_XOR_B32_e32 %1780.sub0:vreg_64_align2, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
9984B	  %9044:vreg_64_align2, dead %1789:sreg_64 = V_MAD_U64_U32_e64 %1785:vgpr_32, %1774:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10032B	  undef %9037.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %1785:vgpr_32, %1771:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10048B	  %9037.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10096B	  %1795:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9037:vreg_64_align2, 0, %9044:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10112B	  %9040:vreg_64_align2, dead %1800:sreg_64 = V_MAD_U64_U32_e64 %1782:vgpr_32, %1774:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10128B	  %1802:vreg_64_align2, dead %1803:sreg_64 = V_MAD_U64_U32_e64 %1782:vgpr_32, %1771:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10144B	  dead %1809:vgpr_32 = V_ADD_CO_U32_e32 %1795.sub0:vreg_64_align2, %1802.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10160B	  %9037.sub0:vreg_64_align2 = V_ADDC_U32_e32 %1795.sub1:vreg_64_align2, %1802.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10176B	  %9040.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9040.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10256B	  %1818:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9037:vreg_64_align2, 0, %9040:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10272B	  %1820:vgpr_32 = V_MUL_LO_U32_e64 %1670.sub1:sreg_64, %1818.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10288B	  %1822:vgpr_32 = V_MUL_LO_U32_e64 %1670.sub0:sreg_64, %1818.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10304B	  %1823:vreg_64_align2, dead %1824:sreg_64 = V_MAD_U64_U32_e64 %1670.sub0:sreg_64, %1818.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10320B	  %1826:vgpr_32 = V_ADD3_U32_e64 %1823.sub1:vreg_64_align2, %1822:vgpr_32, %1820:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10336B	  %1827:vgpr_32 = V_SUB_U32_e32 %1782:vgpr_32, %1826:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10368B	  %1833:vgpr_32 = COPY %1670.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
10376B	  %1829:vgpr_32, %1830:sreg_64_xexec = V_SUB_CO_U32_e64 %1785:vgpr_32, %1823.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10384B	  %1831:vgpr_32, dead %1832:sreg_64 = V_SUBB_U32_e64 %1827:vgpr_32, %1833:vgpr_32, %1830:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10400B	  %1834:vgpr_32, %1835:sreg_64_xexec = V_SUBREV_CO_U32_e64 %1670.sub0:sreg_64, %1829:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10416B	  %1836:vgpr_32, dead %1837:sreg_64 = V_SUBBREV_U32_e64 0, %1831:vgpr_32, %1835:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10432B	  %1839:sreg_64_xexec = V_CMP_LE_U32_e64 %1670.sub1:sreg_64, %1836:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10448B	  %1841:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1839:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10480B	  %1845:sreg_64_xexec = V_CMP_LE_U32_e64 %1670.sub0:sreg_64, %1834:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10496B	  %1846:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1845:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10504B	  %1844:sreg_64_xexec = V_CMP_EQ_U32_e64 %1670.sub1:sreg_64, %1836:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10512B	  %1849:vgpr_32 = V_CNDMASK_B32_e64 0, %1841:vgpr_32, 0, %1846:vgpr_32, %1844:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10544B	  %1852:vgpr_32, dead %1853:sreg_64 = V_SUBB_U32_e64 %1831:vgpr_32, %1833:vgpr_32, %1835:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10560B	  %1855:vgpr_32, %1856:sreg_64_xexec = V_SUBREV_CO_U32_e64 %1670.sub0:sreg_64, %1834:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10576B	  %1857:vgpr_32, dead %1858:sreg_64 = V_SUBBREV_U32_e64 0, %1852:vgpr_32, %1856:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10584B	  %1851:sreg_64_xexec = V_CMP_NE_U32_e64 0, %1849:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10592B	  %1860:vgpr_32 = V_CNDMASK_B32_e64 0, %1836:vgpr_32, 0, %1857:vgpr_32, %1851:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10608B	  %1861:vgpr_32, dead %1862:sreg_64 = V_SUBB_U32_e64 %1782:vgpr_32, %1826:vgpr_32, %1830:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10624B	  %1863:sreg_64_xexec = V_CMP_LE_U32_e64 %1670.sub1:sreg_64, %1861:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10640B	  %1864:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1863:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10672B	  %1868:sreg_64_xexec = V_CMP_LE_U32_e64 %1670.sub0:sreg_64, %1829:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10688B	  %1869:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %1868:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10696B	  %1867:sreg_64_xexec = V_CMP_EQ_U32_e64 %1670.sub1:sreg_64, %1861:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10704B	  %1872:vgpr_32 = V_CNDMASK_B32_e64 0, %1864:vgpr_32, 0, %1869:vgpr_32, %1867:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10720B	  %1874:sreg_64_xexec = V_CMP_NE_U32_e64 0, %1872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10736B	  %1875:vgpr_32 = V_CNDMASK_B32_e64 0, %1861:vgpr_32, 0, %1860:vgpr_32, %1874:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10752B	  %1876:vgpr_32 = V_CNDMASK_B32_e64 0, %1834:vgpr_32, 0, %1855:vgpr_32, %1851:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10768B	  %1877:vgpr_32 = V_CNDMASK_B32_e64 0, %1829:vgpr_32, 0, %1876:vgpr_32, %1874:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10784B	  %1880:vgpr_32 = V_XOR_B32_e32 %1875:vgpr_32, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10800B	  %1882:vgpr_32 = V_XOR_B32_e32 %1877:vgpr_32, %9045.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10816B	  undef %9894.sub0:vreg_64_align2, %9512:sreg_64_xexec = V_SUB_CO_U32_e64 %1882:vgpr_32, %9045.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10832B	  %9894.sub1:vreg_64_align2, dead %9513:sreg_64_xexec = V_SUBB_U32_e64 %1880:vgpr_32, %9045.sub0:vreg_64_align2, %9512:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
10928B	  S_BRANCH %bb.8, debug-location !75; moe_op_gemm_a8w4.py:377:35

10944B	bb.11 (%ir-block.407):
	; predecessors: %bb.8, %bb.9
	  successors: %bb.14(0x40000000), %bb.12(0x40000000); %bb.14(50.00%), %bb.12(50.00%)

10960B	  $exec = S_OR_B64 $exec, %62:sreg_64, implicit-def $scc
10992B	  undef %9896.sub0:vreg_64_align2 = V_OR3_B32_e64 %1656:vgpr_32, %56.sub0:sreg_64, 64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
11008B	  %9896.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
11056B	  %3474.sub0:sreg_64 = S_MOV_B32 0
11104B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11120B	  %9147:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11136B	  %9897:vreg_64_align2 = IMPLICIT_DEF
11168B	  %10344:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11184B	  %10345:sreg_64 = S_AND_B64 %10344:sreg_64, %9147:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11200B	  %67:sreg_64 = S_XOR_B64 %10345:sreg_64, %10344:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11216B	  $exec = S_MOV_B64_term %10345:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
11232B	  S_CBRANCH_EXECZ %bb.12, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11248B	  S_BRANCH %bb.14, debug-location !75; moe_op_gemm_a8w4.py:377:35

11264B	bb.12.Flow347:
	; predecessors: %bb.11, %bb.14
	  successors: %bb.13(0x40000000), %bb.15(0x40000000); %bb.13(50.00%), %bb.15(50.00%)

11280B	  %10346:sreg_64 = S_OR_SAVEEXEC_B64 %67:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
11328B	  %9868:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
11360B	  %69:sreg_64 = S_AND_B64 $exec, %10346:sreg_64, implicit-def $scc
11376B	  $exec = S_XOR_B64_term $exec, %69:sreg_64, implicit-def $scc
11392B	  S_CBRANCH_EXECZ %bb.15, implicit $exec
11408B	  S_BRANCH %bb.13

11424B	bb.13 (%ir-block.422):
	; predecessors: %bb.12
	  successors: %bb.15(0x80000000); %bb.15(100.00%)

11456B	  %2149:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9868:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11472B	  %2150:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2149:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11488B	  %2151:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2150:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11496B	  %2147:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11504B	  %9033:vgpr_32 = V_MUL_LO_U32_e64 %2147:sreg_32, %2151:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11520B	  %9032:vgpr_32 = V_MUL_HI_U32_e64 %2151:vgpr_32, %9033:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11536B	  %9031:vgpr_32 = V_ADD_U32_e32 %2151:vgpr_32, %9032:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11552B	  %2158:vgpr_32 = V_MUL_HI_U32_e64 %9896.sub0:vreg_64_align2, %9031:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11568B	  %2159:vgpr_32 = V_MUL_LO_U32_e64 %2158:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11584B	  %2160:vgpr_32 = V_SUB_U32_e32 %9896.sub0:vreg_64_align2, %2159:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11616B	  %2162:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2160:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11624B	  %2161:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2160:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11632B	  %2163:vgpr_32 = V_CNDMASK_B32_e64 0, %2160:vgpr_32, 0, %2162:vgpr_32, %2161:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11664B	  %2165:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2163:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11672B	  %2164:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2163:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11680B	  undef %9897.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2163:vgpr_32, 0, %2165:vgpr_32, %2164:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11696B	  %9897.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11776B	  S_BRANCH %bb.15, debug-location !75; moe_op_gemm_a8w4.py:377:35

11792B	bb.14 (%ir-block.427):
	; predecessors: %bb.11
	  successors: %bb.12(0x80000000); %bb.12(100.00%)

11808B	  undef %1927.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11840B	  %1927.sub1:sreg_64 = COPY %1927.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
11856B	  undef %1928.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %1927.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11872B	  %1928.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %1927.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11920B	  %1929:sreg_64 = S_XOR_B64 %1928:sreg_64, %1927:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
11936B	  %1931:vgpr_32 = V_CVT_F32_U32_e32 %1929.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11952B	  %1933:vgpr_32 = V_CVT_F32_U32_e32 %1929.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11968B	  %1935:vgpr_32 = nofpexcept V_FMAMK_F32 %1933:vgpr_32, 1333788672, %1931:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
11984B	  %1936:vgpr_32 = nofpexcept V_RCP_F32_e32 %1935:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12000B	  %1938:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %1936:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12016B	  %1940:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %1938:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12032B	  %1941:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %1940:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12048B	  %1943:vgpr_32 = nofpexcept V_FMAMK_F32 %1941:vgpr_32, -813694976, %1938:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12160B	  %1953:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1941:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12168B	  %1944:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %1943:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12176B	  %9524:sreg_32 = S_SUB_U32 0, %1929.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12184B	  %9525:sreg_32 = S_SUBB_U32 0, %1929.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12192B	  %1955:sreg_32_xm0 = V_READFIRSTLANE_B32 %1953:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12200B	  %1949:sreg_32_xm0 = V_READFIRSTLANE_B32 %1944:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12208B	  %1954:sreg_32 = S_MUL_I32 %9524:sreg_32, %1955:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
12216B	  %1948:sreg_32 = S_MUL_I32 %9525:sreg_32, %1949:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
12224B	  %1951:sreg_32 = S_MUL_HI_U32 %9524:sreg_32, %1949:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
12232B	  %1956:sreg_32 = S_ADD_I32 %1951:sreg_32, %1954:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12240B	  %1957:sreg_32 = S_ADD_I32 %1956:sreg_32, %1948:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12248B	  %1958:sreg_32 = S_MUL_HI_U32 %1949:sreg_32_xm0, %1957:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12256B	  %1960:sreg_32 = S_MUL_I32 %1949:sreg_32_xm0, %1957:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12272B	  %1963:sreg_32 = S_MUL_I32 %9524:sreg_32, %1949:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
12288B	  %1965:sreg_32 = S_MUL_HI_U32 %1949:sreg_32_xm0, %1963:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12304B	  %9530:sreg_32 = S_ADD_U32 %1965:sreg_32, %1960:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12320B	  %9531:sreg_32 = S_ADDC_U32 0, %1958:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12336B	  %1972:sreg_32 = S_MUL_HI_U32 %1955:sreg_32_xm0, %1957:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12352B	  %1974:sreg_32 = S_MUL_HI_U32 %1955:sreg_32_xm0, %1963:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12368B	  %1976:sreg_32 = S_MUL_I32 %1955:sreg_32_xm0, %1963:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12384B	  dead %1982:sreg_32 = S_ADD_U32 %9530:sreg_32, %1976:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12400B	  %1983:sreg_32 = S_ADDC_U32 %9531:sreg_32, %1974:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12416B	  %1984:sreg_32 = S_ADDC_U32 %1972:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12432B	  %1985:sreg_32 = S_MUL_I32 %1955:sreg_32_xm0, %1957:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12448B	  %9536:sreg_32 = S_ADD_U32 %1983:sreg_32, %1985:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12464B	  %9537:sreg_32 = S_ADDC_U32 0, %1984:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12480B	  %1993:sreg_32 = S_ADD_U32 %1949:sreg_32_xm0, %9536:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12496B	  %1997:sreg_32 = S_ADDC_U32 %1955:sreg_32_xm0, %9537:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12512B	  %2000:sreg_32 = S_MUL_I32 %9524:sreg_32, %1997:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12528B	  %2001:sreg_32 = S_MUL_HI_U32 %9524:sreg_32, %1993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12544B	  %2002:sreg_32 = S_ADD_I32 %2001:sreg_32, %2000:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12560B	  %2003:sreg_32 = S_MUL_I32 %9525:sreg_32, %1993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12576B	  %2004:sreg_32 = S_ADD_I32 %2002:sreg_32, %2003:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12592B	  %2005:sreg_32 = S_MUL_HI_U32 %1997:sreg_32, %2004:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12608B	  %2006:sreg_32 = S_MUL_I32 %9524:sreg_32, %1993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12624B	  %2007:sreg_32 = S_MUL_HI_U32 %1997:sreg_32, %2006:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12640B	  %2008:sreg_32 = S_MUL_I32 %1997:sreg_32, %2006:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12656B	  %2012:sreg_32 = S_MUL_HI_U32 %1993:sreg_32, %2004:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12672B	  %2013:sreg_32 = S_MUL_I32 %1993:sreg_32, %2004:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12688B	  %2015:sreg_32 = S_MUL_HI_U32 %1993:sreg_32, %2006:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12704B	  %9543:sreg_32 = S_ADD_U32 %2015:sreg_32, %2013:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12720B	  %9544:sreg_32 = S_ADDC_U32 0, %2012:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12736B	  dead %2020:sreg_32 = S_ADD_U32 %9543:sreg_32, %2008:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12752B	  %2021:sreg_32 = S_ADDC_U32 %9544:sreg_32, %2007:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12768B	  %2022:sreg_32 = S_ADDC_U32 %2005:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12784B	  %2023:sreg_32 = S_MUL_I32 %1997:sreg_32, %2004:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
12800B	  %9549:sreg_32 = S_ADD_U32 %2021:sreg_32, %2023:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12816B	  %9550:sreg_32 = S_ADDC_U32 0, %2022:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12832B	  %2030:sreg_32 = S_ADD_U32 %1993:sreg_32, %9549:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12848B	  %2033:sreg_32 = S_ADDC_U32 %1997:sreg_32, %9550:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
12864B	  undef %9028.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9896.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12896B	  %9028.sub1:vreg_64_align2 = COPY %9028.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
12912B	  %2039:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9896:vreg_64_align2, 0, %9028:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12928B	  %2041:vgpr_32 = V_XOR_B32_e32 %2039.sub1:vreg_64_align2, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12944B	  %2044:vgpr_32 = V_XOR_B32_e32 %2039.sub0:vreg_64_align2, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
12960B	  %9027:vreg_64_align2, dead %2048:sreg_64 = V_MAD_U64_U32_e64 %2044:vgpr_32, %2033:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13008B	  undef %9020.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2044:vgpr_32, %2030:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13024B	  %9020.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13072B	  %2054:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9020:vreg_64_align2, 0, %9027:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13088B	  %9023:vreg_64_align2, dead %2059:sreg_64 = V_MAD_U64_U32_e64 %2041:vgpr_32, %2033:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13104B	  %2061:vreg_64_align2, dead %2062:sreg_64 = V_MAD_U64_U32_e64 %2041:vgpr_32, %2030:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13120B	  dead %2068:vgpr_32 = V_ADD_CO_U32_e32 %2054.sub0:vreg_64_align2, %2061.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13136B	  %9020.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2054.sub1:vreg_64_align2, %2061.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13152B	  %9023.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9023.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13232B	  %2077:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9020:vreg_64_align2, 0, %9023:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13248B	  %2079:vgpr_32 = V_MUL_LO_U32_e64 %1929.sub1:sreg_64, %2077.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13264B	  %2081:vgpr_32 = V_MUL_LO_U32_e64 %1929.sub0:sreg_64, %2077.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13280B	  %2082:vreg_64_align2, dead %2083:sreg_64 = V_MAD_U64_U32_e64 %1929.sub0:sreg_64, %2077.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13296B	  %2085:vgpr_32 = V_ADD3_U32_e64 %2082.sub1:vreg_64_align2, %2081:vgpr_32, %2079:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13312B	  %2086:vgpr_32 = V_SUB_U32_e32 %2041:vgpr_32, %2085:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13344B	  %2092:vgpr_32 = COPY %1929.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
13352B	  %2088:vgpr_32, %2089:sreg_64_xexec = V_SUB_CO_U32_e64 %2044:vgpr_32, %2082.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13360B	  %2090:vgpr_32, dead %2091:sreg_64 = V_SUBB_U32_e64 %2086:vgpr_32, %2092:vgpr_32, %2089:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13376B	  %2093:vgpr_32, %2094:sreg_64_xexec = V_SUBREV_CO_U32_e64 %1929.sub0:sreg_64, %2088:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13392B	  %2095:vgpr_32, dead %2096:sreg_64 = V_SUBBREV_U32_e64 0, %2090:vgpr_32, %2094:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13408B	  %2098:sreg_64_xexec = V_CMP_LE_U32_e64 %1929.sub1:sreg_64, %2095:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13424B	  %2100:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2098:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13456B	  %2104:sreg_64_xexec = V_CMP_LE_U32_e64 %1929.sub0:sreg_64, %2093:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13472B	  %2105:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2104:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13480B	  %2103:sreg_64_xexec = V_CMP_EQ_U32_e64 %1929.sub1:sreg_64, %2095:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13488B	  %2108:vgpr_32 = V_CNDMASK_B32_e64 0, %2100:vgpr_32, 0, %2105:vgpr_32, %2103:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13520B	  %2111:vgpr_32, dead %2112:sreg_64 = V_SUBB_U32_e64 %2090:vgpr_32, %2092:vgpr_32, %2094:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13536B	  %2114:vgpr_32, %2115:sreg_64_xexec = V_SUBREV_CO_U32_e64 %1929.sub0:sreg_64, %2093:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13552B	  %2116:vgpr_32, dead %2117:sreg_64 = V_SUBBREV_U32_e64 0, %2111:vgpr_32, %2115:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13560B	  %2110:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2108:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13568B	  %2119:vgpr_32 = V_CNDMASK_B32_e64 0, %2095:vgpr_32, 0, %2116:vgpr_32, %2110:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13584B	  %2120:vgpr_32, dead %2121:sreg_64 = V_SUBB_U32_e64 %2041:vgpr_32, %2085:vgpr_32, %2089:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13600B	  %2122:sreg_64_xexec = V_CMP_LE_U32_e64 %1929.sub1:sreg_64, %2120:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13616B	  %2123:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2122:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13648B	  %2127:sreg_64_xexec = V_CMP_LE_U32_e64 %1929.sub0:sreg_64, %2088:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13664B	  %2128:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2127:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13672B	  %2126:sreg_64_xexec = V_CMP_EQ_U32_e64 %1929.sub1:sreg_64, %2120:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13680B	  %2131:vgpr_32 = V_CNDMASK_B32_e64 0, %2123:vgpr_32, 0, %2128:vgpr_32, %2126:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13696B	  %2133:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2131:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13712B	  %2134:vgpr_32 = V_CNDMASK_B32_e64 0, %2120:vgpr_32, 0, %2119:vgpr_32, %2133:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13728B	  %2135:vgpr_32 = V_CNDMASK_B32_e64 0, %2093:vgpr_32, 0, %2114:vgpr_32, %2110:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13744B	  %2136:vgpr_32 = V_CNDMASK_B32_e64 0, %2088:vgpr_32, 0, %2135:vgpr_32, %2133:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13760B	  %2139:vgpr_32 = V_XOR_B32_e32 %2134:vgpr_32, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13776B	  %2141:vgpr_32 = V_XOR_B32_e32 %2136:vgpr_32, %9028.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13792B	  undef %9897.sub0:vreg_64_align2, %9558:sreg_64_xexec = V_SUB_CO_U32_e64 %2141:vgpr_32, %9028.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13808B	  %9897.sub1:vreg_64_align2, dead %9559:sreg_64_xexec = V_SUBB_U32_e64 %2139:vgpr_32, %9028.sub0:vreg_64_align2, %9558:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
13888B	  %9896:vreg_64_align2 = IMPLICIT_DEF
13904B	  S_BRANCH %bb.12, debug-location !75; moe_op_gemm_a8w4.py:377:35

13920B	bb.15 (%ir-block.429):
	; predecessors: %bb.12, %bb.13
	  successors: %bb.18(0x40000000), %bb.16(0x40000000); %bb.18(50.00%), %bb.16(50.00%)

13936B	  $exec = S_OR_B64 $exec, %69:sreg_64, implicit-def $scc
13968B	  undef %9899.sub0:vreg_64_align2 = V_OR_B32_e32 128, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
13984B	  %9899.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
14032B	  %3474.sub0:sreg_64 = S_MOV_B32 0
14080B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14096B	  %9148:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14112B	  %9900:vreg_64_align2 = IMPLICIT_DEF
14144B	  %10347:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14160B	  %10348:sreg_64 = S_AND_B64 %10347:sreg_64, %9148:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14176B	  %74:sreg_64 = S_XOR_B64 %10348:sreg_64, %10347:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14192B	  $exec = S_MOV_B64_term %10348:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
14208B	  S_CBRANCH_EXECZ %bb.16, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14224B	  S_BRANCH %bb.18, debug-location !75; moe_op_gemm_a8w4.py:377:35

14240B	bb.16.Flow346:
	; predecessors: %bb.15, %bb.18
	  successors: %bb.17(0x40000000), %bb.19(0x40000000); %bb.17(50.00%), %bb.19(50.00%)

14256B	  %10349:sreg_64 = S_OR_SAVEEXEC_B64 %74:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
14304B	  %9867:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
14336B	  %76:sreg_64 = S_AND_B64 $exec, %10349:sreg_64, implicit-def $scc
14352B	  $exec = S_XOR_B64_term $exec, %76:sreg_64, implicit-def $scc
14368B	  S_CBRANCH_EXECZ %bb.19, implicit $exec
14384B	  S_BRANCH %bb.17

14400B	bb.17 (%ir-block.444):
	; predecessors: %bb.16
	  successors: %bb.19(0x80000000); %bb.19(100.00%)

14432B	  %2408:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9867:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14448B	  %2409:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2408:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14464B	  %2410:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2409:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14472B	  %2406:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14480B	  %9016:vgpr_32 = V_MUL_LO_U32_e64 %2406:sreg_32, %2410:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14496B	  %9015:vgpr_32 = V_MUL_HI_U32_e64 %2410:vgpr_32, %9016:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14512B	  %9014:vgpr_32 = V_ADD_U32_e32 %2410:vgpr_32, %9015:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14528B	  %2417:vgpr_32 = V_MUL_HI_U32_e64 %9899.sub0:vreg_64_align2, %9014:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14544B	  %2418:vgpr_32 = V_MUL_LO_U32_e64 %2417:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14560B	  %2419:vgpr_32 = V_SUB_U32_e32 %9899.sub0:vreg_64_align2, %2418:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14592B	  %2421:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2419:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14600B	  %2420:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2419:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14608B	  %2422:vgpr_32 = V_CNDMASK_B32_e64 0, %2419:vgpr_32, 0, %2421:vgpr_32, %2420:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14640B	  %2424:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2422:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14648B	  %2423:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2422:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14656B	  undef %9900.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2422:vgpr_32, 0, %2424:vgpr_32, %2423:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14672B	  %9900.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14752B	  S_BRANCH %bb.19, debug-location !75; moe_op_gemm_a8w4.py:377:35

14768B	bb.18 (%ir-block.449):
	; predecessors: %bb.15
	  successors: %bb.16(0x80000000); %bb.16(100.00%)

14784B	  undef %2186.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14816B	  %2186.sub1:sreg_64 = COPY %2186.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
14832B	  undef %2187.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %2186.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14848B	  %2187.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %2186.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14896B	  %2188:sreg_64 = S_XOR_B64 %2187:sreg_64, %2186:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
14912B	  %2190:vgpr_32 = V_CVT_F32_U32_e32 %2188.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14928B	  %2192:vgpr_32 = V_CVT_F32_U32_e32 %2188.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14944B	  %2194:vgpr_32 = nofpexcept V_FMAMK_F32 %2192:vgpr_32, 1333788672, %2190:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14960B	  %2195:vgpr_32 = nofpexcept V_RCP_F32_e32 %2194:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14976B	  %2197:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2195:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
14992B	  %2199:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2197:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15008B	  %2200:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2199:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15024B	  %2202:vgpr_32 = nofpexcept V_FMAMK_F32 %2200:vgpr_32, -813694976, %2197:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15136B	  %2212:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2200:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15144B	  %2203:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2202:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15152B	  %9570:sreg_32 = S_SUB_U32 0, %2188.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15160B	  %9571:sreg_32 = S_SUBB_U32 0, %2188.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15168B	  %2214:sreg_32_xm0 = V_READFIRSTLANE_B32 %2212:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15176B	  %2208:sreg_32_xm0 = V_READFIRSTLANE_B32 %2203:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15184B	  %2213:sreg_32 = S_MUL_I32 %9570:sreg_32, %2214:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
15192B	  %2207:sreg_32 = S_MUL_I32 %9571:sreg_32, %2208:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
15200B	  %2210:sreg_32 = S_MUL_HI_U32 %9570:sreg_32, %2208:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
15208B	  %2215:sreg_32 = S_ADD_I32 %2210:sreg_32, %2213:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15216B	  %2216:sreg_32 = S_ADD_I32 %2215:sreg_32, %2207:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15224B	  %2217:sreg_32 = S_MUL_HI_U32 %2208:sreg_32_xm0, %2216:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15232B	  %2219:sreg_32 = S_MUL_I32 %2208:sreg_32_xm0, %2216:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15248B	  %2222:sreg_32 = S_MUL_I32 %9570:sreg_32, %2208:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
15264B	  %2224:sreg_32 = S_MUL_HI_U32 %2208:sreg_32_xm0, %2222:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15280B	  %9576:sreg_32 = S_ADD_U32 %2224:sreg_32, %2219:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15296B	  %9577:sreg_32 = S_ADDC_U32 0, %2217:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15312B	  %2231:sreg_32 = S_MUL_HI_U32 %2214:sreg_32_xm0, %2216:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15328B	  %2233:sreg_32 = S_MUL_HI_U32 %2214:sreg_32_xm0, %2222:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15344B	  %2235:sreg_32 = S_MUL_I32 %2214:sreg_32_xm0, %2222:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15360B	  dead %2241:sreg_32 = S_ADD_U32 %9576:sreg_32, %2235:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15376B	  %2242:sreg_32 = S_ADDC_U32 %9577:sreg_32, %2233:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15392B	  %2243:sreg_32 = S_ADDC_U32 %2231:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15408B	  %2244:sreg_32 = S_MUL_I32 %2214:sreg_32_xm0, %2216:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15424B	  %9582:sreg_32 = S_ADD_U32 %2242:sreg_32, %2244:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15440B	  %9583:sreg_32 = S_ADDC_U32 0, %2243:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15456B	  %2252:sreg_32 = S_ADD_U32 %2208:sreg_32_xm0, %9582:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15472B	  %2256:sreg_32 = S_ADDC_U32 %2214:sreg_32_xm0, %9583:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15488B	  %2259:sreg_32 = S_MUL_I32 %9570:sreg_32, %2256:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15504B	  %2260:sreg_32 = S_MUL_HI_U32 %9570:sreg_32, %2252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15520B	  %2261:sreg_32 = S_ADD_I32 %2260:sreg_32, %2259:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15536B	  %2262:sreg_32 = S_MUL_I32 %9571:sreg_32, %2252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15552B	  %2263:sreg_32 = S_ADD_I32 %2261:sreg_32, %2262:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15568B	  %2264:sreg_32 = S_MUL_HI_U32 %2256:sreg_32, %2263:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15584B	  %2265:sreg_32 = S_MUL_I32 %9570:sreg_32, %2252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15600B	  %2266:sreg_32 = S_MUL_HI_U32 %2256:sreg_32, %2265:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15616B	  %2267:sreg_32 = S_MUL_I32 %2256:sreg_32, %2265:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15632B	  %2271:sreg_32 = S_MUL_HI_U32 %2252:sreg_32, %2263:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15648B	  %2272:sreg_32 = S_MUL_I32 %2252:sreg_32, %2263:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15664B	  %2274:sreg_32 = S_MUL_HI_U32 %2252:sreg_32, %2265:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15680B	  %9589:sreg_32 = S_ADD_U32 %2274:sreg_32, %2272:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15696B	  %9590:sreg_32 = S_ADDC_U32 0, %2271:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15712B	  dead %2279:sreg_32 = S_ADD_U32 %9589:sreg_32, %2267:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15728B	  %2280:sreg_32 = S_ADDC_U32 %9590:sreg_32, %2266:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15744B	  %2281:sreg_32 = S_ADDC_U32 %2264:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15760B	  %2282:sreg_32 = S_MUL_I32 %2256:sreg_32, %2263:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
15776B	  %9595:sreg_32 = S_ADD_U32 %2280:sreg_32, %2282:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15792B	  %9596:sreg_32 = S_ADDC_U32 0, %2281:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15808B	  %2289:sreg_32 = S_ADD_U32 %2252:sreg_32, %9595:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15824B	  %2292:sreg_32 = S_ADDC_U32 %2256:sreg_32, %9596:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
15840B	  undef %9011.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9899.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15872B	  %9011.sub1:vreg_64_align2 = COPY %9011.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
15888B	  %2298:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9899:vreg_64_align2, 0, %9011:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15904B	  %2300:vgpr_32 = V_XOR_B32_e32 %2298.sub1:vreg_64_align2, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15920B	  %2303:vgpr_32 = V_XOR_B32_e32 %2298.sub0:vreg_64_align2, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15936B	  %9010:vreg_64_align2, dead %2307:sreg_64 = V_MAD_U64_U32_e64 %2303:vgpr_32, %2292:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
15984B	  undef %9003.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2303:vgpr_32, %2289:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16000B	  %9003.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16048B	  %2313:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9003:vreg_64_align2, 0, %9010:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16064B	  %9006:vreg_64_align2, dead %2318:sreg_64 = V_MAD_U64_U32_e64 %2300:vgpr_32, %2292:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16080B	  %2320:vreg_64_align2, dead %2321:sreg_64 = V_MAD_U64_U32_e64 %2300:vgpr_32, %2289:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16096B	  dead %2327:vgpr_32 = V_ADD_CO_U32_e32 %2313.sub0:vreg_64_align2, %2320.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16112B	  %9003.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2313.sub1:vreg_64_align2, %2320.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16128B	  %9006.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %9006.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16208B	  %2336:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9003:vreg_64_align2, 0, %9006:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16224B	  %2338:vgpr_32 = V_MUL_LO_U32_e64 %2188.sub1:sreg_64, %2336.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16240B	  %2340:vgpr_32 = V_MUL_LO_U32_e64 %2188.sub0:sreg_64, %2336.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16256B	  %2341:vreg_64_align2, dead %2342:sreg_64 = V_MAD_U64_U32_e64 %2188.sub0:sreg_64, %2336.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16272B	  %2344:vgpr_32 = V_ADD3_U32_e64 %2341.sub1:vreg_64_align2, %2340:vgpr_32, %2338:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16288B	  %2345:vgpr_32 = V_SUB_U32_e32 %2300:vgpr_32, %2344:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16320B	  %2351:vgpr_32 = COPY %2188.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
16328B	  %2347:vgpr_32, %2348:sreg_64_xexec = V_SUB_CO_U32_e64 %2303:vgpr_32, %2341.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16336B	  %2349:vgpr_32, dead %2350:sreg_64 = V_SUBB_U32_e64 %2345:vgpr_32, %2351:vgpr_32, %2348:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16352B	  %2352:vgpr_32, %2353:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2188.sub0:sreg_64, %2347:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16368B	  %2354:vgpr_32, dead %2355:sreg_64 = V_SUBBREV_U32_e64 0, %2349:vgpr_32, %2353:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16384B	  %2357:sreg_64_xexec = V_CMP_LE_U32_e64 %2188.sub1:sreg_64, %2354:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16400B	  %2359:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2357:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16432B	  %2363:sreg_64_xexec = V_CMP_LE_U32_e64 %2188.sub0:sreg_64, %2352:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16448B	  %2364:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2363:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16456B	  %2362:sreg_64_xexec = V_CMP_EQ_U32_e64 %2188.sub1:sreg_64, %2354:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16464B	  %2367:vgpr_32 = V_CNDMASK_B32_e64 0, %2359:vgpr_32, 0, %2364:vgpr_32, %2362:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16496B	  %2370:vgpr_32, dead %2371:sreg_64 = V_SUBB_U32_e64 %2349:vgpr_32, %2351:vgpr_32, %2353:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16512B	  %2373:vgpr_32, %2374:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2188.sub0:sreg_64, %2352:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16528B	  %2375:vgpr_32, dead %2376:sreg_64 = V_SUBBREV_U32_e64 0, %2370:vgpr_32, %2374:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16536B	  %2369:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2367:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16544B	  %2378:vgpr_32 = V_CNDMASK_B32_e64 0, %2354:vgpr_32, 0, %2375:vgpr_32, %2369:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16560B	  %2379:vgpr_32, dead %2380:sreg_64 = V_SUBB_U32_e64 %2300:vgpr_32, %2344:vgpr_32, %2348:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16576B	  %2381:sreg_64_xexec = V_CMP_LE_U32_e64 %2188.sub1:sreg_64, %2379:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16592B	  %2382:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2381:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16624B	  %2386:sreg_64_xexec = V_CMP_LE_U32_e64 %2188.sub0:sreg_64, %2347:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16640B	  %2387:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2386:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16648B	  %2385:sreg_64_xexec = V_CMP_EQ_U32_e64 %2188.sub1:sreg_64, %2379:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16656B	  %2390:vgpr_32 = V_CNDMASK_B32_e64 0, %2382:vgpr_32, 0, %2387:vgpr_32, %2385:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16672B	  %2392:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2390:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16688B	  %2393:vgpr_32 = V_CNDMASK_B32_e64 0, %2379:vgpr_32, 0, %2378:vgpr_32, %2392:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16704B	  %2394:vgpr_32 = V_CNDMASK_B32_e64 0, %2352:vgpr_32, 0, %2373:vgpr_32, %2369:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16720B	  %2395:vgpr_32 = V_CNDMASK_B32_e64 0, %2347:vgpr_32, 0, %2394:vgpr_32, %2392:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16736B	  %2398:vgpr_32 = V_XOR_B32_e32 %2393:vgpr_32, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16752B	  %2400:vgpr_32 = V_XOR_B32_e32 %2395:vgpr_32, %9011.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16768B	  undef %9900.sub0:vreg_64_align2, %9604:sreg_64_xexec = V_SUB_CO_U32_e64 %2400:vgpr_32, %9011.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16784B	  %9900.sub1:vreg_64_align2, dead %9605:sreg_64_xexec = V_SUBB_U32_e64 %2398:vgpr_32, %9011.sub0:vreg_64_align2, %9604:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
16864B	  %9899:vreg_64_align2 = IMPLICIT_DEF
16880B	  S_BRANCH %bb.16, debug-location !75; moe_op_gemm_a8w4.py:377:35

16896B	bb.19 (%ir-block.451):
	; predecessors: %bb.16, %bb.17
	  successors: %bb.22(0x40000000), %bb.20(0x40000000); %bb.22(50.00%), %bb.20(50.00%)

16912B	  $exec = S_OR_B64 $exec, %76:sreg_64, implicit-def $scc
16944B	  undef %9902.sub0:vreg_64_align2 = V_OR_B32_e32 192, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
16960B	  %9902.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
17008B	  %3474.sub0:sreg_64 = S_MOV_B32 0
17056B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17072B	  %9149:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17088B	  %9903:vreg_64_align2 = IMPLICIT_DEF
17120B	  %10350:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17136B	  %10351:sreg_64 = S_AND_B64 %10350:sreg_64, %9149:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17152B	  %81:sreg_64 = S_XOR_B64 %10351:sreg_64, %10350:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17168B	  $exec = S_MOV_B64_term %10351:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
17184B	  S_CBRANCH_EXECZ %bb.20, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17200B	  S_BRANCH %bb.22, debug-location !75; moe_op_gemm_a8w4.py:377:35

17216B	bb.20.Flow345:
	; predecessors: %bb.19, %bb.22
	  successors: %bb.21(0x40000000), %bb.23(0x40000000); %bb.21(50.00%), %bb.23(50.00%)

17232B	  %10352:sreg_64 = S_OR_SAVEEXEC_B64 %81:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
17280B	  %9866:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
17312B	  %83:sreg_64 = S_AND_B64 $exec, %10352:sreg_64, implicit-def $scc
17328B	  $exec = S_XOR_B64_term $exec, %83:sreg_64, implicit-def $scc
17344B	  S_CBRANCH_EXECZ %bb.23, implicit $exec
17360B	  S_BRANCH %bb.21

17376B	bb.21 (%ir-block.466):
	; predecessors: %bb.20
	  successors: %bb.23(0x80000000); %bb.23(100.00%)

17408B	  %2667:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9866:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17424B	  %2668:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2667:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17440B	  %2669:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2668:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17448B	  %2665:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17456B	  %8999:vgpr_32 = V_MUL_LO_U32_e64 %2665:sreg_32, %2669:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17472B	  %8998:vgpr_32 = V_MUL_HI_U32_e64 %2669:vgpr_32, %8999:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17488B	  %8997:vgpr_32 = V_ADD_U32_e32 %2669:vgpr_32, %8998:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17504B	  %2676:vgpr_32 = V_MUL_HI_U32_e64 %9902.sub0:vreg_64_align2, %8997:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17520B	  %2677:vgpr_32 = V_MUL_LO_U32_e64 %2676:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17536B	  %2678:vgpr_32 = V_SUB_U32_e32 %9902.sub0:vreg_64_align2, %2677:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17568B	  %2680:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2678:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17576B	  %2679:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2678:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17584B	  %2681:vgpr_32 = V_CNDMASK_B32_e64 0, %2678:vgpr_32, 0, %2680:vgpr_32, %2679:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17616B	  %2683:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2681:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17624B	  %2682:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2681:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17632B	  undef %9903.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2681:vgpr_32, 0, %2683:vgpr_32, %2682:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17648B	  %9903.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17728B	  S_BRANCH %bb.23, debug-location !75; moe_op_gemm_a8w4.py:377:35

17744B	bb.22 (%ir-block.471):
	; predecessors: %bb.19
	  successors: %bb.20(0x80000000); %bb.20(100.00%)

17760B	  undef %2445.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17792B	  %2445.sub1:sreg_64 = COPY %2445.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
17808B	  undef %2446.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %2445.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17824B	  %2446.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %2445.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17872B	  %2447:sreg_64 = S_XOR_B64 %2446:sreg_64, %2445:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
17888B	  %2449:vgpr_32 = V_CVT_F32_U32_e32 %2447.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17904B	  %2451:vgpr_32 = V_CVT_F32_U32_e32 %2447.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17920B	  %2453:vgpr_32 = nofpexcept V_FMAMK_F32 %2451:vgpr_32, 1333788672, %2449:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17936B	  %2454:vgpr_32 = nofpexcept V_RCP_F32_e32 %2453:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17952B	  %2456:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2454:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17968B	  %2458:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2456:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
17984B	  %2459:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2458:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18000B	  %2461:vgpr_32 = nofpexcept V_FMAMK_F32 %2459:vgpr_32, -813694976, %2456:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18112B	  %2471:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2459:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18120B	  %2462:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2461:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18128B	  %9616:sreg_32 = S_SUB_U32 0, %2447.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18136B	  %9617:sreg_32 = S_SUBB_U32 0, %2447.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18144B	  %2473:sreg_32_xm0 = V_READFIRSTLANE_B32 %2471:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18152B	  %2467:sreg_32_xm0 = V_READFIRSTLANE_B32 %2462:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18160B	  %2472:sreg_32 = S_MUL_I32 %9616:sreg_32, %2473:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
18168B	  %2466:sreg_32 = S_MUL_I32 %9617:sreg_32, %2467:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
18176B	  %2469:sreg_32 = S_MUL_HI_U32 %9616:sreg_32, %2467:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
18184B	  %2474:sreg_32 = S_ADD_I32 %2469:sreg_32, %2472:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18192B	  %2475:sreg_32 = S_ADD_I32 %2474:sreg_32, %2466:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18200B	  %2476:sreg_32 = S_MUL_HI_U32 %2467:sreg_32_xm0, %2475:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18208B	  %2478:sreg_32 = S_MUL_I32 %2467:sreg_32_xm0, %2475:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18224B	  %2481:sreg_32 = S_MUL_I32 %9616:sreg_32, %2467:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
18240B	  %2483:sreg_32 = S_MUL_HI_U32 %2467:sreg_32_xm0, %2481:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18256B	  %9622:sreg_32 = S_ADD_U32 %2483:sreg_32, %2478:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18272B	  %9623:sreg_32 = S_ADDC_U32 0, %2476:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18288B	  %2490:sreg_32 = S_MUL_HI_U32 %2473:sreg_32_xm0, %2475:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18304B	  %2492:sreg_32 = S_MUL_HI_U32 %2473:sreg_32_xm0, %2481:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18320B	  %2494:sreg_32 = S_MUL_I32 %2473:sreg_32_xm0, %2481:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18336B	  dead %2500:sreg_32 = S_ADD_U32 %9622:sreg_32, %2494:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18352B	  %2501:sreg_32 = S_ADDC_U32 %9623:sreg_32, %2492:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18368B	  %2502:sreg_32 = S_ADDC_U32 %2490:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18384B	  %2503:sreg_32 = S_MUL_I32 %2473:sreg_32_xm0, %2475:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18400B	  %9628:sreg_32 = S_ADD_U32 %2501:sreg_32, %2503:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18416B	  %9629:sreg_32 = S_ADDC_U32 0, %2502:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18432B	  %2511:sreg_32 = S_ADD_U32 %2467:sreg_32_xm0, %9628:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18448B	  %2515:sreg_32 = S_ADDC_U32 %2473:sreg_32_xm0, %9629:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18464B	  %2518:sreg_32 = S_MUL_I32 %9616:sreg_32, %2515:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18480B	  %2519:sreg_32 = S_MUL_HI_U32 %9616:sreg_32, %2511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18496B	  %2520:sreg_32 = S_ADD_I32 %2519:sreg_32, %2518:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18512B	  %2521:sreg_32 = S_MUL_I32 %9617:sreg_32, %2511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18528B	  %2522:sreg_32 = S_ADD_I32 %2520:sreg_32, %2521:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18544B	  %2523:sreg_32 = S_MUL_HI_U32 %2515:sreg_32, %2522:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18560B	  %2524:sreg_32 = S_MUL_I32 %9616:sreg_32, %2511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18576B	  %2525:sreg_32 = S_MUL_HI_U32 %2515:sreg_32, %2524:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18592B	  %2526:sreg_32 = S_MUL_I32 %2515:sreg_32, %2524:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18608B	  %2530:sreg_32 = S_MUL_HI_U32 %2511:sreg_32, %2522:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18624B	  %2531:sreg_32 = S_MUL_I32 %2511:sreg_32, %2522:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18640B	  %2533:sreg_32 = S_MUL_HI_U32 %2511:sreg_32, %2524:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18656B	  %9635:sreg_32 = S_ADD_U32 %2533:sreg_32, %2531:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18672B	  %9636:sreg_32 = S_ADDC_U32 0, %2530:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18688B	  dead %2538:sreg_32 = S_ADD_U32 %9635:sreg_32, %2526:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18704B	  %2539:sreg_32 = S_ADDC_U32 %9636:sreg_32, %2525:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18720B	  %2540:sreg_32 = S_ADDC_U32 %2523:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18736B	  %2541:sreg_32 = S_MUL_I32 %2515:sreg_32, %2522:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
18752B	  %9641:sreg_32 = S_ADD_U32 %2539:sreg_32, %2541:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18768B	  %9642:sreg_32 = S_ADDC_U32 0, %2540:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18784B	  %2548:sreg_32 = S_ADD_U32 %2511:sreg_32, %9641:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18800B	  %2551:sreg_32 = S_ADDC_U32 %2515:sreg_32, %9642:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
18816B	  undef %8994.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9902.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18848B	  %8994.sub1:vreg_64_align2 = COPY %8994.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
18864B	  %2557:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9902:vreg_64_align2, 0, %8994:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18880B	  %2559:vgpr_32 = V_XOR_B32_e32 %2557.sub1:vreg_64_align2, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18896B	  %2562:vgpr_32 = V_XOR_B32_e32 %2557.sub0:vreg_64_align2, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18912B	  %8993:vreg_64_align2, dead %2566:sreg_64 = V_MAD_U64_U32_e64 %2562:vgpr_32, %2551:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18960B	  undef %8986.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2562:vgpr_32, %2548:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
18976B	  %8986.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19024B	  %2572:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8986:vreg_64_align2, 0, %8993:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19040B	  %8989:vreg_64_align2, dead %2577:sreg_64 = V_MAD_U64_U32_e64 %2559:vgpr_32, %2551:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19056B	  %2579:vreg_64_align2, dead %2580:sreg_64 = V_MAD_U64_U32_e64 %2559:vgpr_32, %2548:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19072B	  dead %2586:vgpr_32 = V_ADD_CO_U32_e32 %2572.sub0:vreg_64_align2, %2579.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19088B	  %8986.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2572.sub1:vreg_64_align2, %2579.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19104B	  %8989.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8989.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19184B	  %2595:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8986:vreg_64_align2, 0, %8989:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19200B	  %2597:vgpr_32 = V_MUL_LO_U32_e64 %2447.sub1:sreg_64, %2595.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19216B	  %2599:vgpr_32 = V_MUL_LO_U32_e64 %2447.sub0:sreg_64, %2595.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19232B	  %2600:vreg_64_align2, dead %2601:sreg_64 = V_MAD_U64_U32_e64 %2447.sub0:sreg_64, %2595.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19248B	  %2603:vgpr_32 = V_ADD3_U32_e64 %2600.sub1:vreg_64_align2, %2599:vgpr_32, %2597:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19264B	  %2604:vgpr_32 = V_SUB_U32_e32 %2559:vgpr_32, %2603:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19296B	  %2610:vgpr_32 = COPY %2447.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
19304B	  %2606:vgpr_32, %2607:sreg_64_xexec = V_SUB_CO_U32_e64 %2562:vgpr_32, %2600.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19312B	  %2608:vgpr_32, dead %2609:sreg_64 = V_SUBB_U32_e64 %2604:vgpr_32, %2610:vgpr_32, %2607:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19328B	  %2611:vgpr_32, %2612:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2447.sub0:sreg_64, %2606:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19344B	  %2613:vgpr_32, dead %2614:sreg_64 = V_SUBBREV_U32_e64 0, %2608:vgpr_32, %2612:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19360B	  %2616:sreg_64_xexec = V_CMP_LE_U32_e64 %2447.sub1:sreg_64, %2613:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19376B	  %2618:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2616:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19408B	  %2622:sreg_64_xexec = V_CMP_LE_U32_e64 %2447.sub0:sreg_64, %2611:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19424B	  %2623:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2622:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19432B	  %2621:sreg_64_xexec = V_CMP_EQ_U32_e64 %2447.sub1:sreg_64, %2613:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19440B	  %2626:vgpr_32 = V_CNDMASK_B32_e64 0, %2618:vgpr_32, 0, %2623:vgpr_32, %2621:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19472B	  %2629:vgpr_32, dead %2630:sreg_64 = V_SUBB_U32_e64 %2608:vgpr_32, %2610:vgpr_32, %2612:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19488B	  %2632:vgpr_32, %2633:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2447.sub0:sreg_64, %2611:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19504B	  %2634:vgpr_32, dead %2635:sreg_64 = V_SUBBREV_U32_e64 0, %2629:vgpr_32, %2633:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19512B	  %2628:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2626:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19520B	  %2637:vgpr_32 = V_CNDMASK_B32_e64 0, %2613:vgpr_32, 0, %2634:vgpr_32, %2628:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19536B	  %2638:vgpr_32, dead %2639:sreg_64 = V_SUBB_U32_e64 %2559:vgpr_32, %2603:vgpr_32, %2607:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19552B	  %2640:sreg_64_xexec = V_CMP_LE_U32_e64 %2447.sub1:sreg_64, %2638:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19568B	  %2641:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2640:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19600B	  %2645:sreg_64_xexec = V_CMP_LE_U32_e64 %2447.sub0:sreg_64, %2606:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19616B	  %2646:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2645:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19624B	  %2644:sreg_64_xexec = V_CMP_EQ_U32_e64 %2447.sub1:sreg_64, %2638:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19632B	  %2649:vgpr_32 = V_CNDMASK_B32_e64 0, %2641:vgpr_32, 0, %2646:vgpr_32, %2644:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19648B	  %2651:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2649:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19664B	  %2652:vgpr_32 = V_CNDMASK_B32_e64 0, %2638:vgpr_32, 0, %2637:vgpr_32, %2651:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19680B	  %2653:vgpr_32 = V_CNDMASK_B32_e64 0, %2611:vgpr_32, 0, %2632:vgpr_32, %2628:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19696B	  %2654:vgpr_32 = V_CNDMASK_B32_e64 0, %2606:vgpr_32, 0, %2653:vgpr_32, %2651:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19712B	  %2657:vgpr_32 = V_XOR_B32_e32 %2652:vgpr_32, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19728B	  %2659:vgpr_32 = V_XOR_B32_e32 %2654:vgpr_32, %8994.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19744B	  undef %9903.sub0:vreg_64_align2, %9650:sreg_64_xexec = V_SUB_CO_U32_e64 %2659:vgpr_32, %8994.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19760B	  %9903.sub1:vreg_64_align2, dead %9651:sreg_64_xexec = V_SUBB_U32_e64 %2657:vgpr_32, %8994.sub0:vreg_64_align2, %9650:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
19840B	  %9902:vreg_64_align2 = IMPLICIT_DEF
19856B	  S_BRANCH %bb.20, debug-location !75; moe_op_gemm_a8w4.py:377:35

19872B	bb.23 (%ir-block.473):
	; predecessors: %bb.20, %bb.21
	  successors: %bb.26(0x40000000), %bb.24(0x40000000); %bb.26(50.00%), %bb.24(50.00%)

19888B	  $exec = S_OR_B64 $exec, %83:sreg_64, implicit-def $scc
19920B	  undef %9905.sub0:vreg_64_align2 = V_OR_B32_e32 256, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
19936B	  %9905.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
19984B	  %3474.sub0:sreg_64 = S_MOV_B32 0
20032B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20048B	  %9150:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20064B	  %9906:vreg_64_align2 = IMPLICIT_DEF
20096B	  %10353:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20112B	  %10354:sreg_64 = S_AND_B64 %10353:sreg_64, %9150:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20128B	  %88:sreg_64 = S_XOR_B64 %10354:sreg_64, %10353:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20144B	  $exec = S_MOV_B64_term %10354:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
20160B	  S_CBRANCH_EXECZ %bb.24, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20176B	  S_BRANCH %bb.26, debug-location !75; moe_op_gemm_a8w4.py:377:35

20192B	bb.24.Flow344:
	; predecessors: %bb.23, %bb.26
	  successors: %bb.25(0x40000000), %bb.27(0x40000000); %bb.25(50.00%), %bb.27(50.00%)

20208B	  %10355:sreg_64 = S_OR_SAVEEXEC_B64 %88:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
20256B	  %9865:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
20288B	  %90:sreg_64 = S_AND_B64 $exec, %10355:sreg_64, implicit-def $scc
20304B	  $exec = S_XOR_B64_term $exec, %90:sreg_64, implicit-def $scc
20320B	  S_CBRANCH_EXECZ %bb.27, implicit $exec
20336B	  S_BRANCH %bb.25

20352B	bb.25 (%ir-block.488):
	; predecessors: %bb.24
	  successors: %bb.27(0x80000000); %bb.27(100.00%)

20384B	  %2926:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9865:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20400B	  %2927:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %2926:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20416B	  %2928:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2927:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20424B	  %2924:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20432B	  %8982:vgpr_32 = V_MUL_LO_U32_e64 %2924:sreg_32, %2928:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20448B	  %8981:vgpr_32 = V_MUL_HI_U32_e64 %2928:vgpr_32, %8982:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20464B	  %8980:vgpr_32 = V_ADD_U32_e32 %2928:vgpr_32, %8981:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20480B	  %2935:vgpr_32 = V_MUL_HI_U32_e64 %9905.sub0:vreg_64_align2, %8980:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20496B	  %2936:vgpr_32 = V_MUL_LO_U32_e64 %2935:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20512B	  %2937:vgpr_32 = V_SUB_U32_e32 %9905.sub0:vreg_64_align2, %2936:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20544B	  %2939:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2937:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20552B	  %2938:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2937:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20560B	  %2940:vgpr_32 = V_CNDMASK_B32_e64 0, %2937:vgpr_32, 0, %2939:vgpr_32, %2938:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20592B	  %2942:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %2940:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20600B	  %2941:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %2940:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20608B	  undef %9906.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %2940:vgpr_32, 0, %2942:vgpr_32, %2941:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20624B	  %9906.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20704B	  S_BRANCH %bb.27, debug-location !75; moe_op_gemm_a8w4.py:377:35

20720B	bb.26 (%ir-block.493):
	; predecessors: %bb.23
	  successors: %bb.24(0x80000000); %bb.24(100.00%)

20736B	  undef %2704.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20768B	  %2704.sub1:sreg_64 = COPY %2704.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
20784B	  undef %2705.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %2704.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20800B	  %2705.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %2704.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20848B	  %2706:sreg_64 = S_XOR_B64 %2705:sreg_64, %2704:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
20864B	  %2708:vgpr_32 = V_CVT_F32_U32_e32 %2706.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20880B	  %2710:vgpr_32 = V_CVT_F32_U32_e32 %2706.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20896B	  %2712:vgpr_32 = nofpexcept V_FMAMK_F32 %2710:vgpr_32, 1333788672, %2708:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20912B	  %2713:vgpr_32 = nofpexcept V_RCP_F32_e32 %2712:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20928B	  %2715:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2713:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20944B	  %2717:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2715:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20960B	  %2718:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2717:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
20976B	  %2720:vgpr_32 = nofpexcept V_FMAMK_F32 %2718:vgpr_32, -813694976, %2715:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21088B	  %2730:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2718:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21096B	  %2721:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2720:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21104B	  %9662:sreg_32 = S_SUB_U32 0, %2706.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21112B	  %9663:sreg_32 = S_SUBB_U32 0, %2706.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21120B	  %2732:sreg_32_xm0 = V_READFIRSTLANE_B32 %2730:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21128B	  %2726:sreg_32_xm0 = V_READFIRSTLANE_B32 %2721:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21136B	  %2731:sreg_32 = S_MUL_I32 %9662:sreg_32, %2732:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
21144B	  %2725:sreg_32 = S_MUL_I32 %9663:sreg_32, %2726:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
21152B	  %2728:sreg_32 = S_MUL_HI_U32 %9662:sreg_32, %2726:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
21160B	  %2733:sreg_32 = S_ADD_I32 %2728:sreg_32, %2731:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21168B	  %2734:sreg_32 = S_ADD_I32 %2733:sreg_32, %2725:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21176B	  %2735:sreg_32 = S_MUL_HI_U32 %2726:sreg_32_xm0, %2734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21184B	  %2737:sreg_32 = S_MUL_I32 %2726:sreg_32_xm0, %2734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21200B	  %2740:sreg_32 = S_MUL_I32 %9662:sreg_32, %2726:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
21216B	  %2742:sreg_32 = S_MUL_HI_U32 %2726:sreg_32_xm0, %2740:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21232B	  %9668:sreg_32 = S_ADD_U32 %2742:sreg_32, %2737:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21248B	  %9669:sreg_32 = S_ADDC_U32 0, %2735:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21264B	  %2749:sreg_32 = S_MUL_HI_U32 %2732:sreg_32_xm0, %2734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21280B	  %2751:sreg_32 = S_MUL_HI_U32 %2732:sreg_32_xm0, %2740:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21296B	  %2753:sreg_32 = S_MUL_I32 %2732:sreg_32_xm0, %2740:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21312B	  dead %2759:sreg_32 = S_ADD_U32 %9668:sreg_32, %2753:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21328B	  %2760:sreg_32 = S_ADDC_U32 %9669:sreg_32, %2751:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21344B	  %2761:sreg_32 = S_ADDC_U32 %2749:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21360B	  %2762:sreg_32 = S_MUL_I32 %2732:sreg_32_xm0, %2734:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21376B	  %9674:sreg_32 = S_ADD_U32 %2760:sreg_32, %2762:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21392B	  %9675:sreg_32 = S_ADDC_U32 0, %2761:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21408B	  %2770:sreg_32 = S_ADD_U32 %2726:sreg_32_xm0, %9674:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21424B	  %2774:sreg_32 = S_ADDC_U32 %2732:sreg_32_xm0, %9675:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21440B	  %2777:sreg_32 = S_MUL_I32 %9662:sreg_32, %2774:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21456B	  %2778:sreg_32 = S_MUL_HI_U32 %9662:sreg_32, %2770:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21472B	  %2779:sreg_32 = S_ADD_I32 %2778:sreg_32, %2777:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21488B	  %2780:sreg_32 = S_MUL_I32 %9663:sreg_32, %2770:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21504B	  %2781:sreg_32 = S_ADD_I32 %2779:sreg_32, %2780:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21520B	  %2782:sreg_32 = S_MUL_HI_U32 %2774:sreg_32, %2781:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21536B	  %2783:sreg_32 = S_MUL_I32 %9662:sreg_32, %2770:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21552B	  %2784:sreg_32 = S_MUL_HI_U32 %2774:sreg_32, %2783:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21568B	  %2785:sreg_32 = S_MUL_I32 %2774:sreg_32, %2783:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21584B	  %2789:sreg_32 = S_MUL_HI_U32 %2770:sreg_32, %2781:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21600B	  %2790:sreg_32 = S_MUL_I32 %2770:sreg_32, %2781:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21616B	  %2792:sreg_32 = S_MUL_HI_U32 %2770:sreg_32, %2783:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21632B	  %9681:sreg_32 = S_ADD_U32 %2792:sreg_32, %2790:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21648B	  %9682:sreg_32 = S_ADDC_U32 0, %2789:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21664B	  dead %2797:sreg_32 = S_ADD_U32 %9681:sreg_32, %2785:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21680B	  %2798:sreg_32 = S_ADDC_U32 %9682:sreg_32, %2784:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21696B	  %2799:sreg_32 = S_ADDC_U32 %2782:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21712B	  %2800:sreg_32 = S_MUL_I32 %2774:sreg_32, %2781:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
21728B	  %9687:sreg_32 = S_ADD_U32 %2798:sreg_32, %2800:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21744B	  %9688:sreg_32 = S_ADDC_U32 0, %2799:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21760B	  %2807:sreg_32 = S_ADD_U32 %2770:sreg_32, %9687:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21776B	  %2810:sreg_32 = S_ADDC_U32 %2774:sreg_32, %9688:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
21792B	  undef %8977.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9905.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21824B	  %8977.sub1:vreg_64_align2 = COPY %8977.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
21840B	  %2816:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9905:vreg_64_align2, 0, %8977:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21856B	  %2818:vgpr_32 = V_XOR_B32_e32 %2816.sub1:vreg_64_align2, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21872B	  %2821:vgpr_32 = V_XOR_B32_e32 %2816.sub0:vreg_64_align2, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21888B	  %8976:vreg_64_align2, dead %2825:sreg_64 = V_MAD_U64_U32_e64 %2821:vgpr_32, %2810:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21936B	  undef %8969.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %2821:vgpr_32, %2807:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
21952B	  %8969.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22000B	  %2831:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8969:vreg_64_align2, 0, %8976:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22016B	  %8972:vreg_64_align2, dead %2836:sreg_64 = V_MAD_U64_U32_e64 %2818:vgpr_32, %2810:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22032B	  %2838:vreg_64_align2, dead %2839:sreg_64 = V_MAD_U64_U32_e64 %2818:vgpr_32, %2807:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22048B	  dead %2845:vgpr_32 = V_ADD_CO_U32_e32 %2831.sub0:vreg_64_align2, %2838.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22064B	  %8969.sub0:vreg_64_align2 = V_ADDC_U32_e32 %2831.sub1:vreg_64_align2, %2838.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22080B	  %8972.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8972.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22160B	  %2854:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8969:vreg_64_align2, 0, %8972:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22176B	  %2856:vgpr_32 = V_MUL_LO_U32_e64 %2706.sub1:sreg_64, %2854.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22192B	  %2858:vgpr_32 = V_MUL_LO_U32_e64 %2706.sub0:sreg_64, %2854.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22208B	  %2859:vreg_64_align2, dead %2860:sreg_64 = V_MAD_U64_U32_e64 %2706.sub0:sreg_64, %2854.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22224B	  %2862:vgpr_32 = V_ADD3_U32_e64 %2859.sub1:vreg_64_align2, %2858:vgpr_32, %2856:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22240B	  %2863:vgpr_32 = V_SUB_U32_e32 %2818:vgpr_32, %2862:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22272B	  %2869:vgpr_32 = COPY %2706.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
22280B	  %2865:vgpr_32, %2866:sreg_64_xexec = V_SUB_CO_U32_e64 %2821:vgpr_32, %2859.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22288B	  %2867:vgpr_32, dead %2868:sreg_64 = V_SUBB_U32_e64 %2863:vgpr_32, %2869:vgpr_32, %2866:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22304B	  %2870:vgpr_32, %2871:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2706.sub0:sreg_64, %2865:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22320B	  %2872:vgpr_32, dead %2873:sreg_64 = V_SUBBREV_U32_e64 0, %2867:vgpr_32, %2871:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22336B	  %2875:sreg_64_xexec = V_CMP_LE_U32_e64 %2706.sub1:sreg_64, %2872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22352B	  %2877:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2875:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22384B	  %2881:sreg_64_xexec = V_CMP_LE_U32_e64 %2706.sub0:sreg_64, %2870:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22400B	  %2882:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2881:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22408B	  %2880:sreg_64_xexec = V_CMP_EQ_U32_e64 %2706.sub1:sreg_64, %2872:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22416B	  %2885:vgpr_32 = V_CNDMASK_B32_e64 0, %2877:vgpr_32, 0, %2882:vgpr_32, %2880:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22448B	  %2888:vgpr_32, dead %2889:sreg_64 = V_SUBB_U32_e64 %2867:vgpr_32, %2869:vgpr_32, %2871:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22464B	  %2891:vgpr_32, %2892:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2706.sub0:sreg_64, %2870:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22480B	  %2893:vgpr_32, dead %2894:sreg_64 = V_SUBBREV_U32_e64 0, %2888:vgpr_32, %2892:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22488B	  %2887:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2885:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22496B	  %2896:vgpr_32 = V_CNDMASK_B32_e64 0, %2872:vgpr_32, 0, %2893:vgpr_32, %2887:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22512B	  %2897:vgpr_32, dead %2898:sreg_64 = V_SUBB_U32_e64 %2818:vgpr_32, %2862:vgpr_32, %2866:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22528B	  %2899:sreg_64_xexec = V_CMP_LE_U32_e64 %2706.sub1:sreg_64, %2897:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22544B	  %2900:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2899:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22576B	  %2904:sreg_64_xexec = V_CMP_LE_U32_e64 %2706.sub0:sreg_64, %2865:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22592B	  %2905:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %2904:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22600B	  %2903:sreg_64_xexec = V_CMP_EQ_U32_e64 %2706.sub1:sreg_64, %2897:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22608B	  %2908:vgpr_32 = V_CNDMASK_B32_e64 0, %2900:vgpr_32, 0, %2905:vgpr_32, %2903:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22624B	  %2910:sreg_64_xexec = V_CMP_NE_U32_e64 0, %2908:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22640B	  %2911:vgpr_32 = V_CNDMASK_B32_e64 0, %2897:vgpr_32, 0, %2896:vgpr_32, %2910:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22656B	  %2912:vgpr_32 = V_CNDMASK_B32_e64 0, %2870:vgpr_32, 0, %2891:vgpr_32, %2887:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22672B	  %2913:vgpr_32 = V_CNDMASK_B32_e64 0, %2865:vgpr_32, 0, %2912:vgpr_32, %2910:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22688B	  %2916:vgpr_32 = V_XOR_B32_e32 %2911:vgpr_32, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22704B	  %2918:vgpr_32 = V_XOR_B32_e32 %2913:vgpr_32, %8977.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22720B	  undef %9906.sub0:vreg_64_align2, %9696:sreg_64_xexec = V_SUB_CO_U32_e64 %2918:vgpr_32, %8977.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22736B	  %9906.sub1:vreg_64_align2, dead %9697:sreg_64_xexec = V_SUBB_U32_e64 %2916:vgpr_32, %8977.sub0:vreg_64_align2, %9696:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
22816B	  %9905:vreg_64_align2 = IMPLICIT_DEF
22832B	  S_BRANCH %bb.24, debug-location !75; moe_op_gemm_a8w4.py:377:35

22848B	bb.27 (%ir-block.495):
	; predecessors: %bb.24, %bb.25
	  successors: %bb.30(0x40000000), %bb.28(0x40000000); %bb.30(50.00%), %bb.28(50.00%)

22864B	  $exec = S_OR_B64 $exec, %90:sreg_64, implicit-def $scc
22896B	  undef %9908.sub0:vreg_64_align2 = V_OR_B32_e32 320, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
22912B	  %9908.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
22960B	  %3474.sub0:sreg_64 = S_MOV_B32 0
23008B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23024B	  %9151:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23040B	  %9909:vreg_64_align2 = IMPLICIT_DEF
23072B	  %10356:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23088B	  %10357:sreg_64 = S_AND_B64 %10356:sreg_64, %9151:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23104B	  %95:sreg_64 = S_XOR_B64 %10357:sreg_64, %10356:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23120B	  $exec = S_MOV_B64_term %10357:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
23136B	  S_CBRANCH_EXECZ %bb.28, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23152B	  S_BRANCH %bb.30, debug-location !75; moe_op_gemm_a8w4.py:377:35

23168B	bb.28.Flow343:
	; predecessors: %bb.27, %bb.30
	  successors: %bb.29(0x40000000), %bb.31(0x40000000); %bb.29(50.00%), %bb.31(50.00%)

23184B	  %10358:sreg_64 = S_OR_SAVEEXEC_B64 %95:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
23232B	  %9864:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
23264B	  %97:sreg_64 = S_AND_B64 $exec, %10358:sreg_64, implicit-def $scc
23280B	  $exec = S_XOR_B64_term $exec, %97:sreg_64, implicit-def $scc
23296B	  S_CBRANCH_EXECZ %bb.31, implicit $exec
23312B	  S_BRANCH %bb.29

23328B	bb.29 (%ir-block.510):
	; predecessors: %bb.28
	  successors: %bb.31(0x80000000); %bb.31(100.00%)

23360B	  %3185:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9864:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23376B	  %3186:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3185:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23392B	  %3187:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3186:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23400B	  %3183:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23408B	  %8965:vgpr_32 = V_MUL_LO_U32_e64 %3183:sreg_32, %3187:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23424B	  %8964:vgpr_32 = V_MUL_HI_U32_e64 %3187:vgpr_32, %8965:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23440B	  %8963:vgpr_32 = V_ADD_U32_e32 %3187:vgpr_32, %8964:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23456B	  %3194:vgpr_32 = V_MUL_HI_U32_e64 %9908.sub0:vreg_64_align2, %8963:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23472B	  %3195:vgpr_32 = V_MUL_LO_U32_e64 %3194:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23488B	  %3196:vgpr_32 = V_SUB_U32_e32 %9908.sub0:vreg_64_align2, %3195:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23520B	  %3198:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %3196:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23528B	  %3197:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %3196:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23536B	  %3199:vgpr_32 = V_CNDMASK_B32_e64 0, %3196:vgpr_32, 0, %3198:vgpr_32, %3197:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23568B	  %3201:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %3199:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23576B	  %3200:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %3199:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23584B	  undef %9909.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3199:vgpr_32, 0, %3201:vgpr_32, %3200:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23600B	  %9909.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23680B	  S_BRANCH %bb.31, debug-location !75; moe_op_gemm_a8w4.py:377:35

23696B	bb.30 (%ir-block.515):
	; predecessors: %bb.27
	  successors: %bb.28(0x80000000); %bb.28(100.00%)

23712B	  undef %2963.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23744B	  %2963.sub1:sreg_64 = COPY %2963.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
23760B	  undef %2964.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %2963.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23776B	  %2964.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %2963.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23824B	  %2965:sreg_64 = S_XOR_B64 %2964:sreg_64, %2963:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
23840B	  %2967:vgpr_32 = V_CVT_F32_U32_e32 %2965.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23856B	  %2969:vgpr_32 = V_CVT_F32_U32_e32 %2965.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23872B	  %2971:vgpr_32 = nofpexcept V_FMAMK_F32 %2969:vgpr_32, 1333788672, %2967:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23888B	  %2972:vgpr_32 = nofpexcept V_RCP_F32_e32 %2971:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23904B	  %2974:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %2972:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23920B	  %2976:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %2974:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23936B	  %2977:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %2976:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
23952B	  %2979:vgpr_32 = nofpexcept V_FMAMK_F32 %2977:vgpr_32, -813694976, %2974:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24064B	  %2989:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2977:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24072B	  %2980:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %2979:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24080B	  %9708:sreg_32 = S_SUB_U32 0, %2965.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24088B	  %9709:sreg_32 = S_SUBB_U32 0, %2965.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24096B	  %2991:sreg_32_xm0 = V_READFIRSTLANE_B32 %2989:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24104B	  %2985:sreg_32_xm0 = V_READFIRSTLANE_B32 %2980:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24112B	  %2990:sreg_32 = S_MUL_I32 %9708:sreg_32, %2991:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
24120B	  %2984:sreg_32 = S_MUL_I32 %9709:sreg_32, %2985:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
24128B	  %2987:sreg_32 = S_MUL_HI_U32 %9708:sreg_32, %2985:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
24136B	  %2992:sreg_32 = S_ADD_I32 %2987:sreg_32, %2990:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24144B	  %2993:sreg_32 = S_ADD_I32 %2992:sreg_32, %2984:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24152B	  %2994:sreg_32 = S_MUL_HI_U32 %2985:sreg_32_xm0, %2993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24160B	  %2996:sreg_32 = S_MUL_I32 %2985:sreg_32_xm0, %2993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24176B	  %2999:sreg_32 = S_MUL_I32 %9708:sreg_32, %2985:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
24192B	  %3001:sreg_32 = S_MUL_HI_U32 %2985:sreg_32_xm0, %2999:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24208B	  %9714:sreg_32 = S_ADD_U32 %3001:sreg_32, %2996:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24224B	  %9715:sreg_32 = S_ADDC_U32 0, %2994:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24240B	  %3008:sreg_32 = S_MUL_HI_U32 %2991:sreg_32_xm0, %2993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24256B	  %3010:sreg_32 = S_MUL_HI_U32 %2991:sreg_32_xm0, %2999:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24272B	  %3012:sreg_32 = S_MUL_I32 %2991:sreg_32_xm0, %2999:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24288B	  dead %3018:sreg_32 = S_ADD_U32 %9714:sreg_32, %3012:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24304B	  %3019:sreg_32 = S_ADDC_U32 %9715:sreg_32, %3010:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24320B	  %3020:sreg_32 = S_ADDC_U32 %3008:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24336B	  %3021:sreg_32 = S_MUL_I32 %2991:sreg_32_xm0, %2993:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24352B	  %9720:sreg_32 = S_ADD_U32 %3019:sreg_32, %3021:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24368B	  %9721:sreg_32 = S_ADDC_U32 0, %3020:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24384B	  %3029:sreg_32 = S_ADD_U32 %2985:sreg_32_xm0, %9720:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24400B	  %3033:sreg_32 = S_ADDC_U32 %2991:sreg_32_xm0, %9721:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24416B	  %3036:sreg_32 = S_MUL_I32 %9708:sreg_32, %3033:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24432B	  %3037:sreg_32 = S_MUL_HI_U32 %9708:sreg_32, %3029:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24448B	  %3038:sreg_32 = S_ADD_I32 %3037:sreg_32, %3036:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24464B	  %3039:sreg_32 = S_MUL_I32 %9709:sreg_32, %3029:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24480B	  %3040:sreg_32 = S_ADD_I32 %3038:sreg_32, %3039:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24496B	  %3041:sreg_32 = S_MUL_HI_U32 %3033:sreg_32, %3040:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24512B	  %3042:sreg_32 = S_MUL_I32 %9708:sreg_32, %3029:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24528B	  %3043:sreg_32 = S_MUL_HI_U32 %3033:sreg_32, %3042:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24544B	  %3044:sreg_32 = S_MUL_I32 %3033:sreg_32, %3042:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24560B	  %3048:sreg_32 = S_MUL_HI_U32 %3029:sreg_32, %3040:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24576B	  %3049:sreg_32 = S_MUL_I32 %3029:sreg_32, %3040:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24592B	  %3051:sreg_32 = S_MUL_HI_U32 %3029:sreg_32, %3042:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24608B	  %9727:sreg_32 = S_ADD_U32 %3051:sreg_32, %3049:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24624B	  %9728:sreg_32 = S_ADDC_U32 0, %3048:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24640B	  dead %3056:sreg_32 = S_ADD_U32 %9727:sreg_32, %3044:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24656B	  %3057:sreg_32 = S_ADDC_U32 %9728:sreg_32, %3043:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24672B	  %3058:sreg_32 = S_ADDC_U32 %3041:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24688B	  %3059:sreg_32 = S_MUL_I32 %3033:sreg_32, %3040:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
24704B	  %9733:sreg_32 = S_ADD_U32 %3057:sreg_32, %3059:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24720B	  %9734:sreg_32 = S_ADDC_U32 0, %3058:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24736B	  %3066:sreg_32 = S_ADD_U32 %3029:sreg_32, %9733:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24752B	  %3069:sreg_32 = S_ADDC_U32 %3033:sreg_32, %9734:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
24768B	  undef %8960.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9908.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24800B	  %8960.sub1:vreg_64_align2 = COPY %8960.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
24816B	  %3075:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9908:vreg_64_align2, 0, %8960:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24832B	  %3077:vgpr_32 = V_XOR_B32_e32 %3075.sub1:vreg_64_align2, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24848B	  %3080:vgpr_32 = V_XOR_B32_e32 %3075.sub0:vreg_64_align2, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24864B	  %8959:vreg_64_align2, dead %3084:sreg_64 = V_MAD_U64_U32_e64 %3080:vgpr_32, %3069:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24912B	  undef %8952.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3080:vgpr_32, %3066:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24928B	  %8952.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24976B	  %3090:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8952:vreg_64_align2, 0, %8959:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
24992B	  %8955:vreg_64_align2, dead %3095:sreg_64 = V_MAD_U64_U32_e64 %3077:vgpr_32, %3069:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25008B	  %3097:vreg_64_align2, dead %3098:sreg_64 = V_MAD_U64_U32_e64 %3077:vgpr_32, %3066:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25024B	  dead %3104:vgpr_32 = V_ADD_CO_U32_e32 %3090.sub0:vreg_64_align2, %3097.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25040B	  %8952.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3090.sub1:vreg_64_align2, %3097.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25056B	  %8955.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8955.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25136B	  %3113:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8952:vreg_64_align2, 0, %8955:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25152B	  %3115:vgpr_32 = V_MUL_LO_U32_e64 %2965.sub1:sreg_64, %3113.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25168B	  %3117:vgpr_32 = V_MUL_LO_U32_e64 %2965.sub0:sreg_64, %3113.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25184B	  %3118:vreg_64_align2, dead %3119:sreg_64 = V_MAD_U64_U32_e64 %2965.sub0:sreg_64, %3113.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25200B	  %3121:vgpr_32 = V_ADD3_U32_e64 %3118.sub1:vreg_64_align2, %3117:vgpr_32, %3115:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25216B	  %3122:vgpr_32 = V_SUB_U32_e32 %3077:vgpr_32, %3121:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25248B	  %3128:vgpr_32 = COPY %2965.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
25256B	  %3124:vgpr_32, %3125:sreg_64_xexec = V_SUB_CO_U32_e64 %3080:vgpr_32, %3118.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25264B	  %3126:vgpr_32, dead %3127:sreg_64 = V_SUBB_U32_e64 %3122:vgpr_32, %3128:vgpr_32, %3125:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25280B	  %3129:vgpr_32, %3130:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2965.sub0:sreg_64, %3124:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25296B	  %3131:vgpr_32, dead %3132:sreg_64 = V_SUBBREV_U32_e64 0, %3126:vgpr_32, %3130:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25312B	  %3134:sreg_64_xexec = V_CMP_LE_U32_e64 %2965.sub1:sreg_64, %3131:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25328B	  %3136:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3134:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25360B	  %3140:sreg_64_xexec = V_CMP_LE_U32_e64 %2965.sub0:sreg_64, %3129:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25376B	  %3141:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3140:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25384B	  %3139:sreg_64_xexec = V_CMP_EQ_U32_e64 %2965.sub1:sreg_64, %3131:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25392B	  %3144:vgpr_32 = V_CNDMASK_B32_e64 0, %3136:vgpr_32, 0, %3141:vgpr_32, %3139:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25424B	  %3147:vgpr_32, dead %3148:sreg_64 = V_SUBB_U32_e64 %3126:vgpr_32, %3128:vgpr_32, %3130:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25440B	  %3150:vgpr_32, %3151:sreg_64_xexec = V_SUBREV_CO_U32_e64 %2965.sub0:sreg_64, %3129:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25456B	  %3152:vgpr_32, dead %3153:sreg_64 = V_SUBBREV_U32_e64 0, %3147:vgpr_32, %3151:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25464B	  %3146:sreg_64_xexec = V_CMP_NE_U32_e64 0, %3144:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25472B	  %3155:vgpr_32 = V_CNDMASK_B32_e64 0, %3131:vgpr_32, 0, %3152:vgpr_32, %3146:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25488B	  %3156:vgpr_32, dead %3157:sreg_64 = V_SUBB_U32_e64 %3077:vgpr_32, %3121:vgpr_32, %3125:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25504B	  %3158:sreg_64_xexec = V_CMP_LE_U32_e64 %2965.sub1:sreg_64, %3156:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25520B	  %3159:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3158:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25552B	  %3163:sreg_64_xexec = V_CMP_LE_U32_e64 %2965.sub0:sreg_64, %3124:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25568B	  %3164:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3163:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25576B	  %3162:sreg_64_xexec = V_CMP_EQ_U32_e64 %2965.sub1:sreg_64, %3156:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25584B	  %3167:vgpr_32 = V_CNDMASK_B32_e64 0, %3159:vgpr_32, 0, %3164:vgpr_32, %3162:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25600B	  %3169:sreg_64_xexec = V_CMP_NE_U32_e64 0, %3167:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25616B	  %3170:vgpr_32 = V_CNDMASK_B32_e64 0, %3156:vgpr_32, 0, %3155:vgpr_32, %3169:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25632B	  %3171:vgpr_32 = V_CNDMASK_B32_e64 0, %3129:vgpr_32, 0, %3150:vgpr_32, %3146:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25648B	  %3172:vgpr_32 = V_CNDMASK_B32_e64 0, %3124:vgpr_32, 0, %3171:vgpr_32, %3169:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25664B	  %3175:vgpr_32 = V_XOR_B32_e32 %3170:vgpr_32, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25680B	  %3177:vgpr_32 = V_XOR_B32_e32 %3172:vgpr_32, %8960.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25696B	  undef %9909.sub0:vreg_64_align2, %9742:sreg_64_xexec = V_SUB_CO_U32_e64 %3177:vgpr_32, %8960.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25712B	  %9909.sub1:vreg_64_align2, dead %9743:sreg_64_xexec = V_SUBB_U32_e64 %3175:vgpr_32, %8960.sub0:vreg_64_align2, %9742:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
25792B	  %9908:vreg_64_align2 = IMPLICIT_DEF
25808B	  S_BRANCH %bb.28, debug-location !75; moe_op_gemm_a8w4.py:377:35

25824B	bb.31 (%ir-block.517):
	; predecessors: %bb.28, %bb.29
	  successors: %bb.34(0x40000000), %bb.32(0x40000000); %bb.34(50.00%), %bb.32(50.00%)

25840B	  $exec = S_OR_B64 $exec, %97:sreg_64, implicit-def $scc
25872B	  undef %9911.sub0:vreg_64_align2 = V_OR_B32_e32 384, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
25888B	  %9911.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
25936B	  %3474.sub0:sreg_64 = S_MOV_B32 0
25984B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26000B	  %9152:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26016B	  %9912:vreg_64_align2 = IMPLICIT_DEF
26048B	  %10359:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26064B	  %10360:sreg_64 = S_AND_B64 %10359:sreg_64, %9152:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26080B	  %102:sreg_64 = S_XOR_B64 %10360:sreg_64, %10359:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26096B	  $exec = S_MOV_B64_term %10360:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
26112B	  S_CBRANCH_EXECZ %bb.32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26128B	  S_BRANCH %bb.34, debug-location !75; moe_op_gemm_a8w4.py:377:35

26144B	bb.32.Flow342:
	; predecessors: %bb.31, %bb.34
	  successors: %bb.33(0x40000000), %bb.35(0x40000000); %bb.33(50.00%), %bb.35(50.00%)

26160B	  %10361:sreg_64 = S_OR_SAVEEXEC_B64 %102:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
26208B	  %9863:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec
26240B	  %104:sreg_64 = S_AND_B64 $exec, %10361:sreg_64, implicit-def $scc
26256B	  $exec = S_XOR_B64_term $exec, %104:sreg_64, implicit-def $scc
26272B	  S_CBRANCH_EXECZ %bb.35, implicit $exec
26288B	  S_BRANCH %bb.33

26304B	bb.33 (%ir-block.532):
	; predecessors: %bb.32
	  successors: %bb.35(0x80000000); %bb.35(100.00%)

26336B	  %3444:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %9863:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26352B	  %3445:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3444:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26368B	  %3446:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3445:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26376B	  %3442:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26384B	  %8948:vgpr_32 = V_MUL_LO_U32_e64 %3442:sreg_32, %3446:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26400B	  %8947:vgpr_32 = V_MUL_HI_U32_e64 %3446:vgpr_32, %8948:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26416B	  %8946:vgpr_32 = V_ADD_U32_e32 %3446:vgpr_32, %8947:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26432B	  %3453:vgpr_32 = V_MUL_HI_U32_e64 %9911.sub0:vreg_64_align2, %8946:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26448B	  %3454:vgpr_32 = V_MUL_LO_U32_e64 %3453:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26464B	  %3455:vgpr_32 = V_SUB_U32_e32 %9911.sub0:vreg_64_align2, %3454:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26496B	  %3457:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %3455:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26504B	  %3456:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %3455:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26512B	  %3458:vgpr_32 = V_CNDMASK_B32_e64 0, %3455:vgpr_32, 0, %3457:vgpr_32, %3456:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26544B	  %3460:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %3458:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26552B	  %3459:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %3458:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26560B	  undef %9912.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3458:vgpr_32, 0, %3460:vgpr_32, %3459:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26576B	  %9912.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26656B	  S_BRANCH %bb.35, debug-location !75; moe_op_gemm_a8w4.py:377:35

26672B	bb.34 (%ir-block.537):
	; predecessors: %bb.31
	  successors: %bb.32(0x80000000); %bb.32(100.00%)

26688B	  undef %3222.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26720B	  %3222.sub1:sreg_64 = COPY %3222.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
26736B	  undef %3223.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %3222.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26752B	  %3223.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %3222.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26800B	  %3224:sreg_64 = S_XOR_B64 %3223:sreg_64, %3222:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
26816B	  %3226:vgpr_32 = V_CVT_F32_U32_e32 %3224.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26832B	  %3228:vgpr_32 = V_CVT_F32_U32_e32 %3224.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26848B	  %3230:vgpr_32 = nofpexcept V_FMAMK_F32 %3228:vgpr_32, 1333788672, %3226:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26864B	  %3231:vgpr_32 = nofpexcept V_RCP_F32_e32 %3230:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26880B	  %3233:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %3231:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26896B	  %3235:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %3233:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26912B	  %3236:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %3235:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
26928B	  %3238:vgpr_32 = nofpexcept V_FMAMK_F32 %3236:vgpr_32, -813694976, %3233:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27040B	  %3248:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3236:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27048B	  %3239:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3238:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27056B	  %9754:sreg_32 = S_SUB_U32 0, %3224.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27064B	  %9755:sreg_32 = S_SUBB_U32 0, %3224.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27072B	  %3250:sreg_32_xm0 = V_READFIRSTLANE_B32 %3248:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27080B	  %3244:sreg_32_xm0 = V_READFIRSTLANE_B32 %3239:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27088B	  %3249:sreg_32 = S_MUL_I32 %9754:sreg_32, %3250:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
27096B	  %3243:sreg_32 = S_MUL_I32 %9755:sreg_32, %3244:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
27104B	  %3246:sreg_32 = S_MUL_HI_U32 %9754:sreg_32, %3244:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
27112B	  %3251:sreg_32 = S_ADD_I32 %3246:sreg_32, %3249:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27120B	  %3252:sreg_32 = S_ADD_I32 %3251:sreg_32, %3243:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27128B	  %3253:sreg_32 = S_MUL_HI_U32 %3244:sreg_32_xm0, %3252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27136B	  %3255:sreg_32 = S_MUL_I32 %3244:sreg_32_xm0, %3252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27152B	  %3258:sreg_32 = S_MUL_I32 %9754:sreg_32, %3244:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
27168B	  %3260:sreg_32 = S_MUL_HI_U32 %3244:sreg_32_xm0, %3258:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27184B	  %9760:sreg_32 = S_ADD_U32 %3260:sreg_32, %3255:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27200B	  %9761:sreg_32 = S_ADDC_U32 0, %3253:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27216B	  %3267:sreg_32 = S_MUL_HI_U32 %3250:sreg_32_xm0, %3252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27232B	  %3269:sreg_32 = S_MUL_HI_U32 %3250:sreg_32_xm0, %3258:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27248B	  %3271:sreg_32 = S_MUL_I32 %3250:sreg_32_xm0, %3258:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27264B	  dead %3277:sreg_32 = S_ADD_U32 %9760:sreg_32, %3271:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27280B	  %3278:sreg_32 = S_ADDC_U32 %9761:sreg_32, %3269:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27296B	  %3279:sreg_32 = S_ADDC_U32 %3267:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27312B	  %3280:sreg_32 = S_MUL_I32 %3250:sreg_32_xm0, %3252:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27328B	  %9766:sreg_32 = S_ADD_U32 %3278:sreg_32, %3280:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27344B	  %9767:sreg_32 = S_ADDC_U32 0, %3279:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27360B	  %3288:sreg_32 = S_ADD_U32 %3244:sreg_32_xm0, %9766:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27376B	  %3292:sreg_32 = S_ADDC_U32 %3250:sreg_32_xm0, %9767:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27392B	  %3295:sreg_32 = S_MUL_I32 %9754:sreg_32, %3292:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27408B	  %3296:sreg_32 = S_MUL_HI_U32 %9754:sreg_32, %3288:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27424B	  %3297:sreg_32 = S_ADD_I32 %3296:sreg_32, %3295:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27440B	  %3298:sreg_32 = S_MUL_I32 %9755:sreg_32, %3288:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27456B	  %3299:sreg_32 = S_ADD_I32 %3297:sreg_32, %3298:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27472B	  %3300:sreg_32 = S_MUL_HI_U32 %3292:sreg_32, %3299:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27488B	  %3301:sreg_32 = S_MUL_I32 %9754:sreg_32, %3288:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27504B	  %3302:sreg_32 = S_MUL_HI_U32 %3292:sreg_32, %3301:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27520B	  %3303:sreg_32 = S_MUL_I32 %3292:sreg_32, %3301:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27536B	  %3307:sreg_32 = S_MUL_HI_U32 %3288:sreg_32, %3299:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27552B	  %3308:sreg_32 = S_MUL_I32 %3288:sreg_32, %3299:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27568B	  %3310:sreg_32 = S_MUL_HI_U32 %3288:sreg_32, %3301:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27584B	  %9773:sreg_32 = S_ADD_U32 %3310:sreg_32, %3308:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27600B	  %9774:sreg_32 = S_ADDC_U32 0, %3307:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27616B	  dead %3315:sreg_32 = S_ADD_U32 %9773:sreg_32, %3303:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27632B	  %3316:sreg_32 = S_ADDC_U32 %9774:sreg_32, %3302:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27648B	  %3317:sreg_32 = S_ADDC_U32 %3300:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27664B	  %3318:sreg_32 = S_MUL_I32 %3292:sreg_32, %3299:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
27680B	  %9779:sreg_32 = S_ADD_U32 %3316:sreg_32, %3318:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27696B	  %9780:sreg_32 = S_ADDC_U32 0, %3317:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27712B	  %3325:sreg_32 = S_ADD_U32 %3288:sreg_32, %9779:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27728B	  %3328:sreg_32 = S_ADDC_U32 %3292:sreg_32, %9780:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
27744B	  undef %8943.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9911.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27776B	  %8943.sub1:vreg_64_align2 = COPY %8943.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
27792B	  %3334:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9911:vreg_64_align2, 0, %8943:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27808B	  %3336:vgpr_32 = V_XOR_B32_e32 %3334.sub1:vreg_64_align2, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27824B	  %3339:vgpr_32 = V_XOR_B32_e32 %3334.sub0:vreg_64_align2, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27840B	  %8942:vreg_64_align2, dead %3343:sreg_64 = V_MAD_U64_U32_e64 %3339:vgpr_32, %3328:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27888B	  undef %8935.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3339:vgpr_32, %3325:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27904B	  %8935.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27952B	  %3349:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8935:vreg_64_align2, 0, %8942:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27968B	  %8938:vreg_64_align2, dead %3354:sreg_64 = V_MAD_U64_U32_e64 %3336:vgpr_32, %3328:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
27984B	  %3356:vreg_64_align2, dead %3357:sreg_64 = V_MAD_U64_U32_e64 %3336:vgpr_32, %3325:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28000B	  dead %3363:vgpr_32 = V_ADD_CO_U32_e32 %3349.sub0:vreg_64_align2, %3356.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28016B	  %8935.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3349.sub1:vreg_64_align2, %3356.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28032B	  %8938.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8938.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28112B	  %3372:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8935:vreg_64_align2, 0, %8938:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28128B	  %3374:vgpr_32 = V_MUL_LO_U32_e64 %3224.sub1:sreg_64, %3372.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28144B	  %3376:vgpr_32 = V_MUL_LO_U32_e64 %3224.sub0:sreg_64, %3372.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28160B	  %3377:vreg_64_align2, dead %3378:sreg_64 = V_MAD_U64_U32_e64 %3224.sub0:sreg_64, %3372.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28176B	  %3380:vgpr_32 = V_ADD3_U32_e64 %3377.sub1:vreg_64_align2, %3376:vgpr_32, %3374:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28192B	  %3381:vgpr_32 = V_SUB_U32_e32 %3336:vgpr_32, %3380:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28224B	  %3387:vgpr_32 = COPY %3224.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
28232B	  %3383:vgpr_32, %3384:sreg_64_xexec = V_SUB_CO_U32_e64 %3339:vgpr_32, %3377.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28240B	  %3385:vgpr_32, dead %3386:sreg_64 = V_SUBB_U32_e64 %3381:vgpr_32, %3387:vgpr_32, %3384:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28256B	  %3388:vgpr_32, %3389:sreg_64_xexec = V_SUBREV_CO_U32_e64 %3224.sub0:sreg_64, %3383:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28272B	  %3390:vgpr_32, dead %3391:sreg_64 = V_SUBBREV_U32_e64 0, %3385:vgpr_32, %3389:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28288B	  %3393:sreg_64_xexec = V_CMP_LE_U32_e64 %3224.sub1:sreg_64, %3390:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28304B	  %3395:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3393:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28336B	  %3399:sreg_64_xexec = V_CMP_LE_U32_e64 %3224.sub0:sreg_64, %3388:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28352B	  %3400:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3399:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28360B	  %3398:sreg_64_xexec = V_CMP_EQ_U32_e64 %3224.sub1:sreg_64, %3390:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28368B	  %3403:vgpr_32 = V_CNDMASK_B32_e64 0, %3395:vgpr_32, 0, %3400:vgpr_32, %3398:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28400B	  %3406:vgpr_32, dead %3407:sreg_64 = V_SUBB_U32_e64 %3385:vgpr_32, %3387:vgpr_32, %3389:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28416B	  %3409:vgpr_32, %3410:sreg_64_xexec = V_SUBREV_CO_U32_e64 %3224.sub0:sreg_64, %3388:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28432B	  %3411:vgpr_32, dead %3412:sreg_64 = V_SUBBREV_U32_e64 0, %3406:vgpr_32, %3410:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28440B	  %3405:sreg_64_xexec = V_CMP_NE_U32_e64 0, %3403:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28448B	  %3414:vgpr_32 = V_CNDMASK_B32_e64 0, %3390:vgpr_32, 0, %3411:vgpr_32, %3405:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28464B	  %3415:vgpr_32, dead %3416:sreg_64 = V_SUBB_U32_e64 %3336:vgpr_32, %3380:vgpr_32, %3384:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28480B	  %3417:sreg_64_xexec = V_CMP_LE_U32_e64 %3224.sub1:sreg_64, %3415:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28496B	  %3418:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3417:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28528B	  %3422:sreg_64_xexec = V_CMP_LE_U32_e64 %3224.sub0:sreg_64, %3383:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28544B	  %3423:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3422:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28552B	  %3421:sreg_64_xexec = V_CMP_EQ_U32_e64 %3224.sub1:sreg_64, %3415:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28560B	  %3426:vgpr_32 = V_CNDMASK_B32_e64 0, %3418:vgpr_32, 0, %3423:vgpr_32, %3421:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28576B	  %3428:sreg_64_xexec = V_CMP_NE_U32_e64 0, %3426:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28592B	  %3429:vgpr_32 = V_CNDMASK_B32_e64 0, %3415:vgpr_32, 0, %3414:vgpr_32, %3428:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28608B	  %3430:vgpr_32 = V_CNDMASK_B32_e64 0, %3388:vgpr_32, 0, %3409:vgpr_32, %3405:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28624B	  %3431:vgpr_32 = V_CNDMASK_B32_e64 0, %3383:vgpr_32, 0, %3430:vgpr_32, %3428:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28640B	  %3434:vgpr_32 = V_XOR_B32_e32 %3429:vgpr_32, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28656B	  %3436:vgpr_32 = V_XOR_B32_e32 %3431:vgpr_32, %8943.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28672B	  undef %9912.sub0:vreg_64_align2, %9788:sreg_64_xexec = V_SUB_CO_U32_e64 %3436:vgpr_32, %8943.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28688B	  %9912.sub1:vreg_64_align2, dead %9789:sreg_64_xexec = V_SUBB_U32_e64 %3434:vgpr_32, %8943.sub0:vreg_64_align2, %9788:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
28768B	  %9911:vreg_64_align2 = IMPLICIT_DEF
28784B	  S_BRANCH %bb.32, debug-location !75; moe_op_gemm_a8w4.py:377:35

28800B	bb.35 (%ir-block.539):
	; predecessors: %bb.32, %bb.33
	  successors: %bb.38(0x40000000), %bb.36(0x40000000); %bb.38(50.00%), %bb.36(50.00%)

28816B	  $exec = S_OR_B64 $exec, %104:sreg_64, implicit-def $scc
28848B	  undef %9914.sub0:vreg_64_align2 = V_OR_B32_e32 448, %9893.sub0:vreg_64_align2, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
28864B	  %9914.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
28912B	  %3474.sub0:sreg_64 = S_MOV_B32 0
28960B	  S_CMP_LG_U64 %3474:sreg_64, 0, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28976B	  %9153:sreg_64_xexec = S_CSELECT_B64 -1, 0, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
28992B	  %9915:vreg_64_align2 = IMPLICIT_DEF
29024B	  %10362:sreg_64 = COPY $exec, implicit-def $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29040B	  %10363:sreg_64 = S_AND_B64 %10362:sreg_64, %9153:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29056B	  %109:sreg_64 = S_XOR_B64 %10363:sreg_64, %10362:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29072B	  $exec = S_MOV_B64_term %10363:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
29088B	  S_CBRANCH_EXECZ %bb.36, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29104B	  S_BRANCH %bb.38, debug-location !75; moe_op_gemm_a8w4.py:377:35

29120B	bb.36.Flow341:
	; predecessors: %bb.35, %bb.38
	  successors: %bb.37(0x40000000), %bb.39(0x40000000); %bb.37(50.00%), %bb.39(50.00%)

29136B	  %10364:sreg_64 = S_OR_SAVEEXEC_B64 %109:sreg_64, implicit-def $exec, implicit-def $scc, implicit $exec
29200B	  %111:sreg_64 = S_AND_B64 $exec, %10364:sreg_64, implicit-def $scc
29216B	  $exec = S_XOR_B64_term $exec, %111:sreg_64, implicit-def $scc
29232B	  S_CBRANCH_EXECZ %bb.39, implicit $exec
29248B	  S_BRANCH %bb.37

29264B	bb.37 (%ir-block.554):
	; predecessors: %bb.36
	  successors: %bb.39(0x80000000); %bb.39(100.00%)

29296B	  %3702:vgpr_32 = V_CVT_F32_U32_e32 %1380.sub0:sreg_64_xexec, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29312B	  %3703:vgpr_32 = nofpexcept V_RCP_IFLAG_F32_e32 %3702:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29328B	  %3704:vgpr_32 = nofpexcept V_MUL_F32_e32 1333788670, %3703:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29344B	  %3705:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3704:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29352B	  %3701:sreg_32 = S_SUB_I32 0, %1380.sub0:sreg_64_xexec, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29360B	  %8931:vgpr_32 = V_MUL_LO_U32_e64 %3701:sreg_32, %3705:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29376B	  %8930:vgpr_32 = V_MUL_HI_U32_e64 %3705:vgpr_32, %8931:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29392B	  %8929:vgpr_32 = V_ADD_U32_e32 %3705:vgpr_32, %8930:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29408B	  %3712:vgpr_32 = V_MUL_HI_U32_e64 %9914.sub0:vreg_64_align2, %8929:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29424B	  %3713:vgpr_32 = V_MUL_LO_U32_e64 %3712:vgpr_32, %1380.sub0:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29440B	  %3714:vgpr_32 = V_SUB_U32_e32 %9914.sub0:vreg_64_align2, %3713:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29472B	  %3716:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %3714:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29480B	  %3715:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %3714:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29488B	  %3717:vgpr_32 = V_CNDMASK_B32_e64 0, %3714:vgpr_32, 0, %3716:vgpr_32, %3715:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29520B	  %3719:vgpr_32 = V_SUBREV_U32_e32 %1380.sub0:sreg_64_xexec, %3717:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29528B	  %3718:sreg_64_xexec = V_CMP_LE_U32_e64 %1380.sub0:sreg_64_xexec, %3717:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29536B	  undef %9915.sub0:vreg_64_align2 = V_CNDMASK_B32_e64 0, %3717:vgpr_32, 0, %3719:vgpr_32, %3718:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29552B	  %9915.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29632B	  S_BRANCH %bb.39, debug-location !75; moe_op_gemm_a8w4.py:377:35

29648B	bb.38 (%ir-block.559):
	; predecessors: %bb.35
	  successors: %bb.36(0x80000000); %bb.36(100.00%)

29664B	  undef %3481.sub0:sreg_64 = S_ASHR_I32 %1380.sub1:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29696B	  %3481.sub1:sreg_64 = COPY %3481.sub0:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
29712B	  undef %3482.sub0:sreg_64 = S_ADD_U32 %1380.sub0:sreg_64_xexec, %3481.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29728B	  %3482.sub1:sreg_64 = S_ADDC_U32 %1380.sub1:sreg_64_xexec, %3481.sub0:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29776B	  %3483:sreg_64 = S_XOR_B64 %3482:sreg_64, %3481:sreg_64, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
29792B	  %3485:vgpr_32 = V_CVT_F32_U32_e32 %3483.sub0:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29808B	  %3487:vgpr_32 = V_CVT_F32_U32_e32 %3483.sub1:sreg_64, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29824B	  %3489:vgpr_32 = nofpexcept V_FMAMK_F32 %3487:vgpr_32, 1333788672, %3485:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29840B	  %3490:vgpr_32 = nofpexcept V_RCP_F32_e32 %3489:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29856B	  %3492:vgpr_32 = nofpexcept V_MUL_F32_e32 1602224124, %3490:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29872B	  %3494:vgpr_32 = nofpexcept V_MUL_F32_e32 796917760, %3492:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29888B	  %3495:vgpr_32 = nofpexcept V_TRUNC_F32_e32 %3494:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
29904B	  %3497:vgpr_32 = nofpexcept V_FMAMK_F32 %3495:vgpr_32, -813694976, %3492:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30016B	  %3507:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3495:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30024B	  %3498:vgpr_32 = nofpexcept V_CVT_U32_F32_e32 %3497:vgpr_32, implicit $mode, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30032B	  %9800:sreg_32 = S_SUB_U32 0, %3483.sub0:sreg_64, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30040B	  %9801:sreg_32 = S_SUBB_U32 0, %3483.sub1:sreg_64, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30048B	  %3509:sreg_32_xm0 = V_READFIRSTLANE_B32 %3507:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30056B	  %3503:sreg_32_xm0 = V_READFIRSTLANE_B32 %3498:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30064B	  %3508:sreg_32 = S_MUL_I32 %9800:sreg_32, %3509:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
30072B	  %3502:sreg_32 = S_MUL_I32 %9801:sreg_32, %3503:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
30080B	  %3505:sreg_32 = S_MUL_HI_U32 %9800:sreg_32, %3503:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
30088B	  %3510:sreg_32 = S_ADD_I32 %3505:sreg_32, %3508:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30096B	  %3511:sreg_32 = S_ADD_I32 %3510:sreg_32, %3502:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30104B	  %3512:sreg_32 = S_MUL_HI_U32 %3503:sreg_32_xm0, %3511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30112B	  %3514:sreg_32 = S_MUL_I32 %3503:sreg_32_xm0, %3511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30128B	  %3517:sreg_32 = S_MUL_I32 %9800:sreg_32, %3503:sreg_32_xm0, debug-location !75; moe_op_gemm_a8w4.py:377:35
30144B	  %3519:sreg_32 = S_MUL_HI_U32 %3503:sreg_32_xm0, %3517:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30160B	  %9806:sreg_32 = S_ADD_U32 %3519:sreg_32, %3514:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30176B	  %9807:sreg_32 = S_ADDC_U32 0, %3512:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30192B	  %3526:sreg_32 = S_MUL_HI_U32 %3509:sreg_32_xm0, %3511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30208B	  %3528:sreg_32 = S_MUL_HI_U32 %3509:sreg_32_xm0, %3517:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30224B	  %3530:sreg_32 = S_MUL_I32 %3509:sreg_32_xm0, %3517:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30240B	  dead %3536:sreg_32 = S_ADD_U32 %9806:sreg_32, %3530:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30256B	  %3537:sreg_32 = S_ADDC_U32 %9807:sreg_32, %3528:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30272B	  %3538:sreg_32 = S_ADDC_U32 %3526:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30288B	  %3539:sreg_32 = S_MUL_I32 %3509:sreg_32_xm0, %3511:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30304B	  %9812:sreg_32 = S_ADD_U32 %3537:sreg_32, %3539:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30320B	  %9813:sreg_32 = S_ADDC_U32 0, %3538:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30336B	  %3547:sreg_32 = S_ADD_U32 %3503:sreg_32_xm0, %9812:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30352B	  %3551:sreg_32 = S_ADDC_U32 %3509:sreg_32_xm0, %9813:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30368B	  %3554:sreg_32 = S_MUL_I32 %9800:sreg_32, %3551:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30384B	  %3555:sreg_32 = S_MUL_HI_U32 %9800:sreg_32, %3547:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30400B	  %3556:sreg_32 = S_ADD_I32 %3555:sreg_32, %3554:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30416B	  %3557:sreg_32 = S_MUL_I32 %9801:sreg_32, %3547:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30432B	  %3558:sreg_32 = S_ADD_I32 %3556:sreg_32, %3557:sreg_32, implicit-def dead $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30448B	  %3559:sreg_32 = S_MUL_HI_U32 %3551:sreg_32, %3558:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30464B	  %3560:sreg_32 = S_MUL_I32 %9800:sreg_32, %3547:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30480B	  %3561:sreg_32 = S_MUL_HI_U32 %3551:sreg_32, %3560:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30496B	  %3562:sreg_32 = S_MUL_I32 %3551:sreg_32, %3560:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30512B	  %3566:sreg_32 = S_MUL_HI_U32 %3547:sreg_32, %3558:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30528B	  %3567:sreg_32 = S_MUL_I32 %3547:sreg_32, %3558:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30544B	  %3569:sreg_32 = S_MUL_HI_U32 %3547:sreg_32, %3560:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30560B	  %9819:sreg_32 = S_ADD_U32 %3569:sreg_32, %3567:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30576B	  %9820:sreg_32 = S_ADDC_U32 0, %3566:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30592B	  dead %3574:sreg_32 = S_ADD_U32 %9819:sreg_32, %3562:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30608B	  %3575:sreg_32 = S_ADDC_U32 %9820:sreg_32, %3561:sreg_32, implicit-def $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30624B	  %3576:sreg_32 = S_ADDC_U32 %3559:sreg_32, 0, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30640B	  %3577:sreg_32 = S_MUL_I32 %3551:sreg_32, %3558:sreg_32, debug-location !75; moe_op_gemm_a8w4.py:377:35
30656B	  %9825:sreg_32 = S_ADD_U32 %3575:sreg_32, %3577:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30672B	  %9826:sreg_32 = S_ADDC_U32 0, %3576:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30688B	  %3584:sreg_32 = S_ADD_U32 %3547:sreg_32, %9825:sreg_32, implicit-def $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30704B	  %3587:sreg_32 = S_ADDC_U32 %3551:sreg_32, %9826:sreg_32, implicit-def dead $scc, implicit $scc, debug-location !75; moe_op_gemm_a8w4.py:377:35
30720B	  undef %8926.sub0:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9914.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30752B	  %8926.sub1:vreg_64_align2 = COPY %8926.sub0:vreg_64_align2, debug-location !75; moe_op_gemm_a8w4.py:377:35
30768B	  %3593:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9914:vreg_64_align2, 0, %8926:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30784B	  %3595:vgpr_32 = V_XOR_B32_e32 %3593.sub1:vreg_64_align2, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30800B	  %3598:vgpr_32 = V_XOR_B32_e32 %3593.sub0:vreg_64_align2, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30816B	  %8925:vreg_64_align2, dead %3602:sreg_64 = V_MAD_U64_U32_e64 %3598:vgpr_32, %3587:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30864B	  undef %8918.sub0:vreg_64_align2 = V_MUL_HI_U32_e64 %3598:vgpr_32, %3584:sreg_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30880B	  %8918.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30928B	  %3608:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8918:vreg_64_align2, 0, %8925:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30944B	  %8921:vreg_64_align2, dead %3613:sreg_64 = V_MAD_U64_U32_e64 %3595:vgpr_32, %3587:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30960B	  %3615:vreg_64_align2, dead %3616:sreg_64 = V_MAD_U64_U32_e64 %3595:vgpr_32, %3584:sreg_32, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30976B	  dead %3622:vgpr_32 = V_ADD_CO_U32_e32 %3608.sub0:vreg_64_align2, %3615.sub0:vreg_64_align2, implicit-def $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
30992B	  %8918.sub0:vreg_64_align2 = V_ADDC_U32_e32 %3608.sub1:vreg_64_align2, %3615.sub1:vreg_64_align2, implicit-def $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31008B	  %8921.sub1:vreg_64_align2 = V_ADDC_U32_e32 0, %8921.sub1:vreg_64_align2, implicit-def dead $vcc, implicit $vcc, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31088B	  %3631:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8918:vreg_64_align2, 0, %8921:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31104B	  %3633:vgpr_32 = V_MUL_LO_U32_e64 %3483.sub1:sreg_64, %3631.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31120B	  %3635:vgpr_32 = V_MUL_LO_U32_e64 %3483.sub0:sreg_64, %3631.sub1:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31136B	  %3636:vreg_64_align2, dead %3637:sreg_64 = V_MAD_U64_U32_e64 %3483.sub0:sreg_64, %3631.sub0:vreg_64_align2, 0, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31152B	  %3639:vgpr_32 = V_ADD3_U32_e64 %3636.sub1:vreg_64_align2, %3635:vgpr_32, %3633:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31168B	  %3640:vgpr_32 = V_SUB_U32_e32 %3595:vgpr_32, %3639:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31200B	  %3646:vgpr_32 = COPY %3483.sub1:sreg_64, debug-location !75; moe_op_gemm_a8w4.py:377:35
31208B	  %3642:vgpr_32, %3643:sreg_64_xexec = V_SUB_CO_U32_e64 %3598:vgpr_32, %3636.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31216B	  %3644:vgpr_32, dead %3645:sreg_64 = V_SUBB_U32_e64 %3640:vgpr_32, %3646:vgpr_32, %3643:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31232B	  %3647:vgpr_32, %3648:sreg_64_xexec = V_SUBREV_CO_U32_e64 %3483.sub0:sreg_64, %3642:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31248B	  %3649:vgpr_32, dead %3650:sreg_64 = V_SUBBREV_U32_e64 0, %3644:vgpr_32, %3648:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31264B	  %3652:sreg_64_xexec = V_CMP_LE_U32_e64 %3483.sub1:sreg_64, %3649:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31280B	  %3654:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3652:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31312B	  %3658:sreg_64_xexec = V_CMP_LE_U32_e64 %3483.sub0:sreg_64, %3647:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31328B	  %3659:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3658:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31336B	  %3657:sreg_64_xexec = V_CMP_EQ_U32_e64 %3483.sub1:sreg_64, %3649:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31344B	  %3662:vgpr_32 = V_CNDMASK_B32_e64 0, %3654:vgpr_32, 0, %3659:vgpr_32, %3657:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31376B	  %3665:vgpr_32, dead %3666:sreg_64 = V_SUBB_U32_e64 %3644:vgpr_32, %3646:vgpr_32, %3648:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31392B	  %3668:vgpr_32, %3669:sreg_64_xexec = V_SUBREV_CO_U32_e64 %3483.sub0:sreg_64, %3647:vgpr_32, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31408B	  %3670:vgpr_32, dead %3671:sreg_64 = V_SUBBREV_U32_e64 0, %3665:vgpr_32, %3669:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31416B	  %3664:sreg_64_xexec = V_CMP_NE_U32_e64 0, %3662:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31424B	  %3673:vgpr_32 = V_CNDMASK_B32_e64 0, %3649:vgpr_32, 0, %3670:vgpr_32, %3664:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31440B	  %3674:vgpr_32, dead %3675:sreg_64 = V_SUBB_U32_e64 %3595:vgpr_32, %3639:vgpr_32, %3643:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31456B	  %3676:sreg_64_xexec = V_CMP_LE_U32_e64 %3483.sub1:sreg_64, %3674:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31472B	  %3677:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3676:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31504B	  %3681:sreg_64_xexec = V_CMP_LE_U32_e64 %3483.sub0:sreg_64, %3642:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31520B	  %3682:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, -1, %3681:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31528B	  %3680:sreg_64_xexec = V_CMP_EQ_U32_e64 %3483.sub1:sreg_64, %3674:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31536B	  %3685:vgpr_32 = V_CNDMASK_B32_e64 0, %3677:vgpr_32, 0, %3682:vgpr_32, %3680:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31552B	  %3687:sreg_64_xexec = V_CMP_NE_U32_e64 0, %3685:vgpr_32, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31568B	  %3688:vgpr_32 = V_CNDMASK_B32_e64 0, %3674:vgpr_32, 0, %3673:vgpr_32, %3687:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31584B	  %3689:vgpr_32 = V_CNDMASK_B32_e64 0, %3647:vgpr_32, 0, %3668:vgpr_32, %3664:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31600B	  %3690:vgpr_32 = V_CNDMASK_B32_e64 0, %3642:vgpr_32, 0, %3689:vgpr_32, %3687:sreg_64_xexec, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31616B	  %3693:vgpr_32 = V_XOR_B32_e32 %3688:vgpr_32, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31632B	  %3695:vgpr_32 = V_XOR_B32_e32 %3690:vgpr_32, %8926.sub0:vreg_64_align2, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31648B	  undef %9915.sub0:vreg_64_align2, %9834:sreg_64_xexec = V_SUB_CO_U32_e64 %3695:vgpr_32, %8926.sub0:vreg_64_align2, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31664B	  %9915.sub1:vreg_64_align2, dead %9835:sreg_64_xexec = V_SUBB_U32_e64 %3693:vgpr_32, %8926.sub0:vreg_64_align2, %9834:sreg_64_xexec, 0, implicit $exec, debug-location !75; moe_op_gemm_a8w4.py:377:35
31744B	  %9914:vreg_64_align2 = IMPLICIT_DEF
31760B	  S_BRANCH %bb.36, debug-location !75; moe_op_gemm_a8w4.py:377:35

31776B	bb.39 (%ir-block.561):
	; predecessors: %bb.36, %bb.37
	  successors: %bb.41(0x40000000), %bb.40(0x40000000); %bb.41(50.00%), %bb.40(50.00%)

31792B	  $exec = S_OR_B64 $exec, %111:sreg_64, implicit-def $scc
31824B	  %3725:vgpr_32 = V_LSHLREV_B32_e32 4, %999:vgpr_32(s32), implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
31840B	  undef %8915.sub0:vreg_64_align2 = V_AND_B32_e32 112, %3725:vgpr_32, implicit $exec, debug-location !49; moe_op_gemm_a8w4.py:331:49
31856B	  %8915.sub1:vreg_64_align2 = V_MOV_B32_e32 0, implicit $exec, debug-location !50; moe_op_gemm_a8w4.py:331:36
31904B	  undef %9140.sub1:vreg_64_align2 = V_MUL_HI_I32_e64 %9094:vgpr_32, %1009:sreg_32, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
31920B	  %9140.sub0:vreg_64_align2 = V_MUL_LO_U32_e64 %9094:vgpr_32, %1009:sreg_32, implicit $exec, debug-location !76; moe_op_gemm_a8w4.py:381:19
31968B	  %9142:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %9140:vreg_64_align2, implicit $exec, debug-location !77; moe_op_gemm_a8w4.py:381:9
31984B	  %10367:sreg_32_xm0 = S_ASHR_I32 %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 31, implicit-def dead $scc, debug-location !78; moe_op_gemm_a8w4.py:384:45
32032B	  %3739:vgpr_32 = V_MUL_LO_U32_e64 %9894.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32048B	  %3741:vgpr_32 = V_MUL_LO_U32_e64 %9894.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32064B	  %8914:vreg_64_align2, dead %3743:sreg_64 = V_MAD_U64_U32_e64 %9894.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32128B	  %3749:vgpr_32 = V_CNDMASK_B32_e64 0, 0, 0, 1, %9144:sreg_64_xexec, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
32144B	  %8913:sreg_64_xexec = V_CMP_NE_U32_e64 1, %3749:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
32160B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
32168B	  %8914.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8914.sub1:vreg_64_align2, %3741:vgpr_32, %3739:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32176B	  S_CBRANCH_VCCZ %bb.41, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

32192B	bb.40:
	; predecessors: %bb.39
	  successors: %bb.42(0x80000000); %bb.42(100.00%)

32208B	  undef %8898.sub0:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
32224B	  %8898.sub1:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
32240B	  %8898.sub2:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
32256B	  %8898.sub3:vreg_128_align2 = COPY %8915.sub1:vreg_64_align2
32272B	  S_BRANCH %bb.42, debug-location !79; moe_op_gemm_a8w4.py:405:20

32288B	bb.41 (%ir-block.571):
	; predecessors: %bb.39
	  successors: %bb.42(0x80000000); %bb.42(100.00%)

32304B	  %3752:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8914:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
32320B	  %3753:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3752:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
32336B	  %8898:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3753:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.573, addrspace 1); moe_op_gemm_a8w4.py:405:20

32480B	bb.42 (%ir-block.575):
	; predecessors: %bb.41, %bb.40
	  successors: %bb.44(0x40000000), %bb.43(0x40000000); %bb.44(50.00%), %bb.43(50.00%)

32560B	  %3758:vgpr_32 = V_MUL_LO_U32_e64 %9897.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32576B	  %3761:vgpr_32 = V_MUL_LO_U32_e64 %9897.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32592B	  %8912:vreg_64_align2, dead %3763:sreg_64 = V_MAD_U64_U32_e64 %9897.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32656B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
32664B	  %8912.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8912.sub1:vreg_64_align2, %3761:vgpr_32, %3758:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
32672B	  S_CBRANCH_VCCZ %bb.44, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

32688B	bb.43:
	; predecessors: %bb.42
	  successors: %bb.45(0x80000000); %bb.45(100.00%)

32704B	  undef %8897.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
32736B	  %8897.sub1:vreg_128_align2 = COPY %8897.sub0:vreg_128_align2
32752B	  %8897.sub2:vreg_128_align2 = COPY %8897.sub0:vreg_128_align2
32768B	  %8897.sub3:vreg_128_align2 = COPY %8897.sub0:vreg_128_align2
32784B	  S_BRANCH %bb.45, debug-location !79; moe_op_gemm_a8w4.py:405:20

32800B	bb.44 (%ir-block.577):
	; predecessors: %bb.42
	  successors: %bb.45(0x80000000); %bb.45(100.00%)

32816B	  %3772:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8912:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
32832B	  %3773:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3772:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
32848B	  %8897:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3773:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.579, addrspace 1); moe_op_gemm_a8w4.py:405:20

32992B	bb.45 (%ir-block.581):
	; predecessors: %bb.44, %bb.43
	  successors: %bb.47(0x40000000), %bb.46(0x40000000); %bb.47(50.00%), %bb.46(50.00%)

33072B	  %3778:vgpr_32 = V_MUL_LO_U32_e64 %9900.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33088B	  %3781:vgpr_32 = V_MUL_LO_U32_e64 %9900.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33104B	  %8910:vreg_64_align2, dead %3783:sreg_64 = V_MAD_U64_U32_e64 %9900.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33168B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
33176B	  %8910.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8910.sub1:vreg_64_align2, %3781:vgpr_32, %3778:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33184B	  S_CBRANCH_VCCZ %bb.47, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

33200B	bb.46:
	; predecessors: %bb.45
	  successors: %bb.48(0x80000000); %bb.48(100.00%)

33216B	  undef %8896.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
33248B	  %8896.sub1:vreg_128_align2 = COPY %8896.sub0:vreg_128_align2
33264B	  %8896.sub2:vreg_128_align2 = COPY %8896.sub0:vreg_128_align2
33280B	  %8896.sub3:vreg_128_align2 = COPY %8896.sub0:vreg_128_align2
33296B	  S_BRANCH %bb.48, debug-location !79; moe_op_gemm_a8w4.py:405:20

33312B	bb.47 (%ir-block.583):
	; predecessors: %bb.45
	  successors: %bb.48(0x80000000); %bb.48(100.00%)

33328B	  %3792:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8910:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
33344B	  %3793:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3792:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
33360B	  %8896:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3793:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.585, addrspace 1); moe_op_gemm_a8w4.py:405:20

33504B	bb.48 (%ir-block.587):
	; predecessors: %bb.47, %bb.46
	  successors: %bb.50(0x40000000), %bb.49(0x40000000); %bb.50(50.00%), %bb.49(50.00%)

33584B	  %3798:vgpr_32 = V_MUL_LO_U32_e64 %9903.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33600B	  %3801:vgpr_32 = V_MUL_LO_U32_e64 %9903.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33616B	  %8908:vreg_64_align2, dead %3803:sreg_64 = V_MAD_U64_U32_e64 %9903.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33680B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
33688B	  %8908.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8908.sub1:vreg_64_align2, %3801:vgpr_32, %3798:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
33696B	  S_CBRANCH_VCCZ %bb.50, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

33712B	bb.49:
	; predecessors: %bb.48
	  successors: %bb.51(0x80000000); %bb.51(100.00%)

33728B	  undef %8895.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
33760B	  %8895.sub1:vreg_128_align2 = COPY %8895.sub0:vreg_128_align2
33776B	  %8895.sub2:vreg_128_align2 = COPY %8895.sub0:vreg_128_align2
33792B	  %8895.sub3:vreg_128_align2 = COPY %8895.sub0:vreg_128_align2
33808B	  S_BRANCH %bb.51, debug-location !79; moe_op_gemm_a8w4.py:405:20

33824B	bb.50 (%ir-block.589):
	; predecessors: %bb.48
	  successors: %bb.51(0x80000000); %bb.51(100.00%)

33840B	  %3812:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8908:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
33856B	  %3813:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3812:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
33872B	  %8895:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3813:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.591, addrspace 1); moe_op_gemm_a8w4.py:405:20

34016B	bb.51 (%ir-block.593):
	; predecessors: %bb.50, %bb.49
	  successors: %bb.53(0x40000000), %bb.52(0x40000000); %bb.53(50.00%), %bb.52(50.00%)

34096B	  %3818:vgpr_32 = V_MUL_LO_U32_e64 %9906.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34112B	  %3821:vgpr_32 = V_MUL_LO_U32_e64 %9906.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34128B	  %8906:vreg_64_align2, dead %3823:sreg_64 = V_MAD_U64_U32_e64 %9906.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34192B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
34200B	  %8906.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8906.sub1:vreg_64_align2, %3821:vgpr_32, %3818:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34208B	  S_CBRANCH_VCCZ %bb.53, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

34224B	bb.52:
	; predecessors: %bb.51
	  successors: %bb.54(0x80000000); %bb.54(100.00%)

34240B	  undef %8894.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
34272B	  %8894.sub1:vreg_128_align2 = COPY %8894.sub0:vreg_128_align2
34288B	  %8894.sub2:vreg_128_align2 = COPY %8894.sub0:vreg_128_align2
34304B	  %8894.sub3:vreg_128_align2 = COPY %8894.sub0:vreg_128_align2
34320B	  S_BRANCH %bb.54, debug-location !79; moe_op_gemm_a8w4.py:405:20

34336B	bb.53 (%ir-block.595):
	; predecessors: %bb.51
	  successors: %bb.54(0x80000000); %bb.54(100.00%)

34352B	  %3832:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8906:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
34368B	  %3833:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3832:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
34384B	  %8894:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3833:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.597, addrspace 1); moe_op_gemm_a8w4.py:405:20

34528B	bb.54 (%ir-block.599):
	; predecessors: %bb.53, %bb.52
	  successors: %bb.56(0x40000000), %bb.55(0x40000000); %bb.56(50.00%), %bb.55(50.00%)

34608B	  %3838:vgpr_32 = V_MUL_LO_U32_e64 %9909.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34624B	  %3841:vgpr_32 = V_MUL_LO_U32_e64 %9909.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34640B	  %8904:vreg_64_align2, dead %3843:sreg_64 = V_MAD_U64_U32_e64 %9909.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34704B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
34712B	  %8904.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8904.sub1:vreg_64_align2, %3841:vgpr_32, %3838:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
34720B	  S_CBRANCH_VCCZ %bb.56, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

34736B	bb.55:
	; predecessors: %bb.54
	  successors: %bb.57(0x80000000); %bb.57(100.00%)

34752B	  undef %8893.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
34784B	  %8893.sub1:vreg_128_align2 = COPY %8893.sub0:vreg_128_align2
34800B	  %8893.sub2:vreg_128_align2 = COPY %8893.sub0:vreg_128_align2
34816B	  %8893.sub3:vreg_128_align2 = COPY %8893.sub0:vreg_128_align2
34832B	  S_BRANCH %bb.57, debug-location !79; moe_op_gemm_a8w4.py:405:20

34848B	bb.56 (%ir-block.601):
	; predecessors: %bb.54
	  successors: %bb.57(0x80000000); %bb.57(100.00%)

34864B	  %3852:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8904:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
34880B	  %3853:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3852:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
34896B	  %8893:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3853:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.603, addrspace 1); moe_op_gemm_a8w4.py:405:20

35040B	bb.57 (%ir-block.605):
	; predecessors: %bb.56, %bb.55
	  successors: %bb.59(0x40000000), %bb.58(0x40000000); %bb.59(50.00%), %bb.58(50.00%)

35120B	  %3858:vgpr_32 = V_MUL_LO_U32_e64 %9912.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35136B	  %3861:vgpr_32 = V_MUL_LO_U32_e64 %9912.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35152B	  %8902:vreg_64_align2, dead %3863:sreg_64 = V_MAD_U64_U32_e64 %9912.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35216B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
35224B	  %8902.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8902.sub1:vreg_64_align2, %3861:vgpr_32, %3858:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35232B	  S_CBRANCH_VCCZ %bb.59, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

35248B	bb.58:
	; predecessors: %bb.57
	  successors: %bb.60(0x80000000); %bb.60(100.00%)

35264B	  undef %8892.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
35296B	  %8892.sub1:vreg_128_align2 = COPY %8892.sub0:vreg_128_align2
35312B	  %8892.sub2:vreg_128_align2 = COPY %8892.sub0:vreg_128_align2
35328B	  %8892.sub3:vreg_128_align2 = COPY %8892.sub0:vreg_128_align2
35344B	  S_BRANCH %bb.60, debug-location !79; moe_op_gemm_a8w4.py:405:20

35360B	bb.59 (%ir-block.607):
	; predecessors: %bb.57
	  successors: %bb.60(0x80000000); %bb.60(100.00%)

35376B	  %3872:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8902:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
35392B	  %3873:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3872:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
35408B	  %8892:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3873:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.609, addrspace 1); moe_op_gemm_a8w4.py:405:20

35552B	bb.60 (%ir-block.611):
	; predecessors: %bb.59, %bb.58
	  successors: %bb.62(0x40000000), %bb.61(0x40000000); %bb.62(50.00%), %bb.61(50.00%)

35632B	  %3878:vgpr_32 = V_MUL_LO_U32_e64 %9915.sub1:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35648B	  %3881:vgpr_32 = V_MUL_LO_U32_e64 %9915.sub0:vreg_64_align2, %10367:sreg_32_xm0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35664B	  %8900:vreg_64_align2, dead %3883:sreg_64 = V_MAD_U64_U32_e64 %9915.sub0:vreg_64_align2, %10366:sreg_32_xexec_hi_and_sreg_32_xm0, 0, 0, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35728B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !79; moe_op_gemm_a8w4.py:405:20
35736B	  %8900.sub1:vreg_64_align2 = V_ADD3_U32_e64 %8900.sub1:vreg_64_align2, %3881:vgpr_32, %3878:vgpr_32, implicit $exec, debug-location !78; moe_op_gemm_a8w4.py:384:45
35744B	  S_CBRANCH_VCCZ %bb.62, implicit $vcc, debug-location !79; moe_op_gemm_a8w4.py:405:20

35760B	bb.61:
	; predecessors: %bb.60
	  successors: %bb.63(0x80000000); %bb.63(100.00%)

35776B	  undef %8891.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
35808B	  %8891.sub1:vreg_128_align2 = COPY %8891.sub0:vreg_128_align2
35824B	  %8891.sub2:vreg_128_align2 = COPY %8891.sub0:vreg_128_align2
35840B	  %8891.sub3:vreg_128_align2 = COPY %8891.sub0:vreg_128_align2
35856B	  S_BRANCH %bb.63, debug-location !79; moe_op_gemm_a8w4.py:405:20

35872B	bb.62 (%ir-block.613):
	; predecessors: %bb.60
	  successors: %bb.63(0x80000000); %bb.63(100.00%)

35888B	  %3892:vreg_64_align2 = V_LSHL_ADD_U64_e64 %9142:vreg_64_align2, 0, %8900:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
35904B	  %3893:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3892:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !80; moe_op_gemm_a8w4.py:383:8
35920B	  %8891:vreg_128_align2 = GLOBAL_LOAD_DWORDX4 %3893:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.615, addrspace 1); moe_op_gemm_a8w4.py:405:20

36064B	bb.63 (%ir-block.617):
	; predecessors: %bb.62, %bb.61
	  successors: %bb.65(0x40000000), %bb.64(0x40000000); %bb.65(50.00%), %bb.64(50.00%)

36128B	  early-clobber %9856:sgpr_128 = S_LOAD_DWORDX4_IMM_ec %1000:sgpr_64(p4), 72, 0 :: (dereferenceable invariant load (s128), align 8, addrspace 4)
36144B	  undef %4900.sub0_sub1:sgpr_128 = S_LOAD_DWORDX2_IMM %1000:sgpr_64(p4), 88, 0 :: (dereferenceable invariant load (s64), addrspace 4)
36224B	  %3898:sreg_32 = S_MOV_B32 240
36240B	  %3899:vgpr_32 = V_BITOP3_B32_e64 %3725:vgpr_32, %999:vgpr_32(s32), %3898:sreg_32, 120, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
36256B	  %3901:vgpr_32 = V_ADD_U32_e32 0, %3899:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
36272B	  %3903:vgpr_32 = V_ADD_U32_e32 65536, %3901:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
36288B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %36:av_128_align2, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.622, addrspace 3); moe_op_gemm_a8w4.py:404:20
36304B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %37:av_128_align2, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.623, addrspace 3); moe_op_gemm_a8w4.py:404:20
36320B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %38:av_128_align2, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.624, addrspace 3); moe_op_gemm_a8w4.py:404:20
36336B	  DS_WRITE_B128_gfx9 %3903:vgpr_32, %39:av_128_align2, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.625, addrspace 3); moe_op_gemm_a8w4.py:404:20
36352B	  %3904:sreg_32 = S_MOV_B32 112
36368B	  %3905:vgpr_32 = V_BITOP3_B32_e64 %3725:vgpr_32, %999:vgpr_32(s32), %3904:sreg_32, 120, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36384B	  %3906:vgpr_32 = nuw V_ADD_U32_e32 0, %3905:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
36464B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8898:vreg_128_align2, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.628, addrspace 3); moe_op_gemm_a8w4.py:405:20
36544B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8897:vreg_128_align2, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.629, addrspace 3); moe_op_gemm_a8w4.py:405:20
36624B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8896:vreg_128_align2, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.630, addrspace 3); moe_op_gemm_a8w4.py:405:20
36704B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8895:vreg_128_align2, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.631, addrspace 3); moe_op_gemm_a8w4.py:405:20
36784B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8894:vreg_128_align2, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.632, addrspace 3); moe_op_gemm_a8w4.py:405:20
36864B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8893:vreg_128_align2, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.633, addrspace 3); moe_op_gemm_a8w4.py:405:20
36944B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8892:vreg_128_align2, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.634, addrspace 3); moe_op_gemm_a8w4.py:405:20
37040B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %8891:vreg_128_align2, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.635, addrspace 3); moe_op_gemm_a8w4.py:405:20
37056B	  %3925:vgpr_32 = V_ADD_U32_e32 0, %1634:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
37072B	  %3927:vgpr_32 = V_ADD_U32_e32 98304, %3925:vgpr_32, implicit $exec, debug-location !71; moe_op_gemm_a8w4.py:413:24
37088B	  DS_WRITE_B64_gfx9 %3927:vgpr_32, %55:av_64_align2, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.637, addrspace 3); moe_op_gemm_a8w4.py:413:24
37104B	  S_CMPK_LT_I32 %32:sreg_32, 512, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
37120B	  %3930:vgpr_32 = V_AND_B32_e32 48, %999:vgpr_32(s32), implicit $exec
37136B	  %9861:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 6, %999:vgpr_32(s32), implicit $exec
37152B	  %9862:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 2, %999:vgpr_32(s32), implicit $exec
37168B	  S_CBRANCH_SCC0 %bb.65, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19

37184B	bb.64:
	; predecessors: %bb.63
	  successors: %bb.66(0x80000000); %bb.66(100.00%)

37200B	  undef %8793.sub3:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
37232B	  %8793.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37248B	  %8793.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37264B	  %8793.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37280B	  undef %8794.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37296B	  %8794.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37312B	  %8794.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37328B	  %8794.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37344B	  undef %8795.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37360B	  %8795.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37376B	  %8795.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37392B	  %8795.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37408B	  undef %8796.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37424B	  %8796.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37440B	  %8796.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37456B	  %8796.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37472B	  undef %8797.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37488B	  %8797.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37504B	  %8797.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37520B	  %8797.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37536B	  undef %8798.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37552B	  %8798.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37568B	  %8798.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37584B	  %8798.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37600B	  undef %8799.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37616B	  %8799.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37632B	  %8799.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37648B	  %8799.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37664B	  undef %8800.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37680B	  %8800.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37696B	  %8800.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37712B	  %8800.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37728B	  undef %8801.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37744B	  %8801.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37760B	  %8801.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37776B	  %8801.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37792B	  undef %8802.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37808B	  %8802.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37824B	  %8802.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37840B	  %8802.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37856B	  undef %8803.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37872B	  %8803.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37888B	  %8803.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37904B	  %8803.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37920B	  undef %8804.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37936B	  %8804.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37952B	  %8804.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37968B	  %8804.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
37984B	  undef %8805.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38000B	  %8805.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38016B	  %8805.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38032B	  %8805.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38048B	  undef %8806.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38064B	  %8806.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38080B	  %8806.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38096B	  %8806.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38112B	  undef %8807.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38128B	  %8807.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38144B	  %8807.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38160B	  %8807.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38176B	  undef %8808.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38192B	  %8808.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38208B	  %8808.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38224B	  %8808.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38240B	  undef %8809.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38256B	  %8809.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38272B	  %8809.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38288B	  %8809.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38304B	  undef %8810.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38320B	  %8810.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38336B	  %8810.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38352B	  %8810.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38368B	  undef %8811.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38384B	  %8811.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38400B	  %8811.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38416B	  %8811.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38432B	  undef %8812.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38448B	  %8812.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38464B	  %8812.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38480B	  %8812.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38496B	  undef %8813.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38512B	  %8813.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38528B	  %8813.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38544B	  %8813.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38560B	  undef %8814.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38576B	  %8814.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38592B	  %8814.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38608B	  %8814.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38624B	  undef %8815.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38640B	  %8815.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38656B	  %8815.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38672B	  %8815.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38688B	  undef %8816.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38704B	  %8816.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38720B	  %8816.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38736B	  %8816.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38752B	  undef %8817.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38768B	  %8817.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38784B	  %8817.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38800B	  %8817.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38816B	  undef %8818.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38832B	  %8818.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38848B	  %8818.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38864B	  %8818.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38880B	  undef %8819.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38896B	  %8819.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38912B	  %8819.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38928B	  %8819.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38944B	  undef %8820.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38960B	  %8820.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38976B	  %8820.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
38992B	  %8820.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39008B	  undef %8821.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39024B	  %8821.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39040B	  %8821.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39056B	  %8821.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39072B	  undef %8822.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39088B	  %8822.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39104B	  %8822.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39120B	  %8822.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39136B	  undef %8823.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39152B	  %8823.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39168B	  %8823.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39184B	  %8823.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39200B	  undef %8824.sub3:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39216B	  %8824.sub2:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39232B	  %8824.sub1:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39248B	  %8824.sub0:vreg_128_align2 = COPY %8793.sub3:vreg_128_align2
39264B	  S_BRANCH %bb.66, debug-location !62; moe_op_gemm_a8w4.py:403:19

39280B	bb.65..lr.ph:
	; predecessors: %bb.63
	  successors: %bb.67(0x80000000); %bb.67(100.00%)

39296B	  %3935:sreg_32 = S_ASHR_I32 %32:sreg_32, 31, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
39312B	  %3937:sreg_32 = S_LSHR_B32 %3935:sreg_32, 24, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
39328B	  %3938:sreg_32 = S_ADD_I32 %32:sreg_32, %3937:sreg_32, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
39344B	  %3940:sreg_32 = S_ASHR_I32 %3938:sreg_32, 8, implicit-def dead $scc, debug-location !81; standard.py:43:30 @[ moe_op_gemm_a8w4.py:397:28 ]
39360B	  %3942:vgpr_32 = V_MUL_U32_U24_e32 272, %1335:vgpr_32, implicit $exec
39376B	  %3943:vgpr_32 = V_XOR_B32_e32 %3942:vgpr_32, %3930:vgpr_32, implicit $exec
39392B	  %3945:vgpr_32 = V_XOR_B32_e32 64, %3943:vgpr_32, implicit $exec
39408B	  %3947:vgpr_32 = V_XOR_B32_e32 128, %3943:vgpr_32, implicit $exec
39424B	  %3949:vgpr_32 = V_XOR_B32_e32 192, %3943:vgpr_32, implicit $exec
39440B	  %3953:vgpr_32 = V_AND_B32_e32 28672, %9861:vgpr_32, implicit $exec
39456B	  %3955:vgpr_32 = disjoint V_LSHL_OR_B32_e64 %1335:vgpr_32, 7, %3953:vgpr_32, implicit $exec
39472B	  %3957:vgpr_32 = V_BITOP3_B32_e64 %1634:vgpr_32, %3930:vgpr_32, %3904:sreg_32, 108, implicit $exec
39488B	  %3958:vgpr_32 = disjoint V_OR_B32_e32 %3955:vgpr_32, %3957:vgpr_32, implicit $exec
39504B	  %3959:vgpr_32 = V_BITOP3_B32_e64 %3955:vgpr_32, 64, %3957:vgpr_32, 54, implicit $exec
39520B	  %3962:sreg_32 = S_MAX_I32 %3940:sreg_32, 2, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
39536B	  %3963:vgpr_32 = V_ADD_U32_e32 %9124:vgpr_32, %1638:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39552B	  %3964:sreg_32 = S_MOV_B32 256
39568B	  %10081:vgpr_32 = V_ADD3_U32_e64 %3963:vgpr_32, %1636:vgpr_32, %3964:sreg_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39584B	  %3966:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8900:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39600B	  %3967:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3966:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39616B	  %3968:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3967:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39632B	  %3969:sreg_64 = S_MOV_B64_IMM_PSEUDO 128
39648B	  %3970:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3968:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39664B	  %3971:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8902:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39680B	  %3972:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3971:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39696B	  %3973:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3972:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39712B	  %3974:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3973:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39728B	  %3975:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8904:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39744B	  %3976:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3975:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39760B	  %3977:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3976:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39776B	  %3978:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3977:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39792B	  %3979:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8906:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39808B	  %3980:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3979:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39824B	  %3981:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3980:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39840B	  %3982:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3981:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39856B	  %3983:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8908:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39872B	  %3984:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3983:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39888B	  %3985:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3984:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39904B	  %3986:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3985:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39920B	  %3987:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8910:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39936B	  %3988:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3987:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39952B	  %3989:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3988:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39968B	  %3990:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3989:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
39984B	  %3991:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8912:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40000B	  %3992:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3991:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40016B	  %3993:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3992:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40032B	  %3994:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3993:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40048B	  %3995:vreg_64_align2 = V_LSHL_ADD_U64_e64 %8914:vreg_64_align2, 0, %9140:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40064B	  %3996:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3995:vreg_64_align2, 0, %8915:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40080B	  %3997:vreg_64_align2 = V_LSHL_ADD_U64_e64 %1008:sreg_64, 0, %3996:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40096B	  %3998:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3997:vreg_64_align2, 0, %3969:sreg_64, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40112B	  %10079:vgpr_32 = V_ADD_U32_e32 256, %1349.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40128B	  %10078:vgpr_32 = V_ADD_U32_e32 256, %1346.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40144B	  %10077:vgpr_32 = V_ADD_U32_e32 256, %1343.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40160B	  %10076:vgpr_32 = V_ADD_U32_e32 256, %1340.sub0:vreg_64_align2, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
40176B	  %4003:sreg_32 = S_LSHL_B32 %3962:sreg_32, 7, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
40192B	  %9840:sreg_32 = S_ADD_U32 %4003:sreg_32, -128, implicit-def dead $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
40208B	  undef %8824.sub0:vreg_128_align2 = V_MOV_B32_e32 0, implicit $exec
40224B	  %10080:sreg_64 = S_MOV_B64 0
40384B	  %4028:sreg_32 = S_ADD_I32 0, 65536, implicit-def dead $scc
40400B	  %4029:vgpr_32 = V_ADD_U32_e32 %4028:sreg_32, %3943:vgpr_32, implicit $exec
40416B	  %4070:vgpr_32 = V_ADD_U32_e32 %4028:sreg_32, %3945:vgpr_32, implicit $exec
40432B	  %4111:vgpr_32 = V_ADD_U32_e32 %4028:sreg_32, %3947:vgpr_32, implicit $exec
40448B	  %4152:vgpr_32 = V_ADD_U32_e32 %4028:sreg_32, %3949:vgpr_32, implicit $exec
40464B	  %4193:vgpr_32 = V_ADD_U32_e32 0, %3958:vgpr_32, implicit $exec
40480B	  %4198:vgpr_32 = V_ADD_U32_e32 0, %3959:vgpr_32, implicit $exec
40560B	  %4210:sreg_32 = S_ADD_I32 0, 98304, implicit-def dead $scc
40576B	  %4211:vgpr_32 = V_ADD_U32_e32 %4210:sreg_32, %9862:vgpr_32, implicit $exec
40592B	  %4230:sreg_32 = S_MOV_B32 117769732
40608B	  %4234:vgpr_32 = V_MOV_B32_e32 127, implicit $exec
40624B	  %4434:vgpr_32 = V_ADD_U32_e32 %4028:sreg_32, %3899:vgpr_32, implicit $exec
40640B	  %4436:vgpr_32 = V_ADD_U32_e32 %4210:sreg_32, %1634:vgpr_32, implicit $exec
40768B	  %8824.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40784B	  %8824.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40800B	  %8824.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40816B	  undef %8823.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40832B	  %8823.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40848B	  %8823.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40864B	  %8823.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40880B	  undef %8822.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40896B	  %8822.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40912B	  %8822.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40928B	  %8822.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40944B	  undef %8821.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40960B	  %8821.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40976B	  %8821.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
40992B	  %8821.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41008B	  undef %8820.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41024B	  %8820.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41040B	  %8820.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41056B	  %8820.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41072B	  undef %8819.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41088B	  %8819.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41104B	  %8819.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41120B	  %8819.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41136B	  undef %8818.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41152B	  %8818.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41168B	  %8818.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41184B	  %8818.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41200B	  undef %8817.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41216B	  %8817.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41232B	  %8817.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41248B	  %8817.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41264B	  undef %8816.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41280B	  %8816.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41296B	  %8816.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41312B	  %8816.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41328B	  undef %8815.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41344B	  %8815.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41360B	  %8815.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41376B	  %8815.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41392B	  undef %8814.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41408B	  %8814.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41424B	  %8814.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41440B	  %8814.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41456B	  undef %8813.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41472B	  %8813.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41488B	  %8813.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41504B	  %8813.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41520B	  undef %8812.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41536B	  %8812.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41552B	  %8812.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41568B	  %8812.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41584B	  undef %8811.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41600B	  %8811.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41616B	  %8811.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41632B	  %8811.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41648B	  undef %8810.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41664B	  %8810.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41680B	  %8810.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41696B	  %8810.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41712B	  undef %8809.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41728B	  %8809.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41744B	  %8809.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41760B	  %8809.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41776B	  undef %8808.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41792B	  %8808.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41808B	  %8808.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41824B	  %8808.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41840B	  undef %8807.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41856B	  %8807.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41872B	  %8807.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41888B	  %8807.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41904B	  undef %8806.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41920B	  %8806.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41936B	  %8806.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41952B	  %8806.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41968B	  undef %8805.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
41984B	  %8805.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42000B	  %8805.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42016B	  %8805.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42032B	  undef %8804.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42048B	  %8804.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42064B	  %8804.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42080B	  %8804.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42096B	  undef %8803.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42112B	  %8803.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42128B	  %8803.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42144B	  %8803.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42160B	  undef %8802.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42176B	  %8802.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42192B	  %8802.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42208B	  %8802.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42224B	  undef %8801.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42240B	  %8801.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42256B	  %8801.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42272B	  %8801.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42288B	  undef %8800.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42304B	  %8800.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42320B	  %8800.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42336B	  %8800.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42352B	  undef %8799.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42368B	  %8799.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42384B	  %8799.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42400B	  %8799.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42416B	  undef %8798.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42432B	  %8798.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42448B	  %8798.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42464B	  %8798.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42480B	  undef %8797.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42496B	  %8797.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42512B	  %8797.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42528B	  %8797.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42544B	  undef %8796.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42560B	  %8796.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42576B	  %8796.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42592B	  %8796.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42608B	  undef %8795.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42624B	  %8795.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42640B	  %8795.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42656B	  %8795.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42672B	  undef %8794.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42688B	  %8794.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42704B	  %8794.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42720B	  %8794.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42736B	  undef %8793.sub0:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42752B	  %8793.sub1:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42768B	  %8793.sub2:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42784B	  %8793.sub3:vreg_128_align2 = COPY %8824.sub0:vreg_128_align2
42800B	  S_BRANCH %bb.67, debug-location !62; moe_op_gemm_a8w4.py:403:19

42816B	bb.66.Flow340:
	; predecessors: %bb.68, %bb.64
	  successors: %bb.69(0x80000000); %bb.69(100.00%)

44880B	  early-clobber %9857:sgpr_64 = S_LOAD_DWORDX2_IMM_ec %1000:sgpr_64(p4), 160, 0 :: (dereferenceable invariant load (s64), align 16, addrspace 4)
44912B	  %1046:sreg_32_xm0_xexec = S_LOAD_DWORD_IMM %1000:sgpr_64(p4), 96, 0 :: (dereferenceable invariant load (s32), align 16, addrspace 4)
44928B	  %1213:vgpr_32 = V_AND_B32_e32 496, %999:vgpr_32(s32), implicit $exec
44960B	  %9083.sub1:vreg_64_align2 = COPY %9129.sub1:vreg_64_align2
44992B	  %9081.sub1:vreg_64_align2 = COPY %9129.sub1:vreg_64_align2
45024B	  %9079.sub1:vreg_64_align2 = COPY %9129.sub1:vreg_64_align2
45056B	  %9077.sub1:vreg_64_align2 = COPY %9129.sub1:vreg_64_align2
45072B	  %1373:vgpr_32 = V_AND_B32_e32 480, %999:vgpr_32(s32), implicit $exec
45088B	  S_BRANCH %bb.69

45104B	bb.67 (%ir-block.818):
	; predecessors: %bb.65, %bb.67
	  successors: %bb.68(0x04000000), %bb.67(0x7c000000); %bb.68(3.12%), %bb.67(96.88%)

47248B	  %4008:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3998:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47264B	  %4009:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3994:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47280B	  %4010:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3990:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47296B	  %4011:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3986:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47312B	  %4012:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3982:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47328B	  %4013:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3978:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47344B	  %4014:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3974:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !82; moe_op_gemm_a8w4.py:429:17
47360B	  %4015:vreg_64_align2 = V_LSHL_ADD_U64_e64 %3970:vreg_64_align2, 0, %10080:sreg_64, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
47376B	  %4022:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10076:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
47392B	  %4023:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10077:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
47408B	  %4024:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10078:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
47424B	  %4025:av_128_align2 = BUFFER_LOAD_DWORDX4_OFFEN %10079:vgpr_32, %1359:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !63 :: (dereferenceable load (s128) from %ir.341, align 1, addrspace 8); moe_op_gemm_a8w4.py:404:20
47440B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
47456B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
47464B	  %4208:av_64_align2 = BUFFER_LOAD_DWORDX2_OFFEN %10081:vgpr_32, %1648:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !71 :: (dereferenceable load (s64) from %ir.382, align 1, addrspace 8); moe_op_gemm_a8w4.py:413:24
47468B	  %4426:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4008:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep200, addrspace 1); moe_op_gemm_a8w4.py:405:20
47476B	  %4427:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4009:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep198, addrspace 1); moe_op_gemm_a8w4.py:405:20
47480B	  %4428:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4010:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep196, addrspace 1); moe_op_gemm_a8w4.py:405:20
47488B	  %4429:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4011:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep194, addrspace 1); moe_op_gemm_a8w4.py:405:20
47492B	  %4430:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4012:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep192, addrspace 1); moe_op_gemm_a8w4.py:405:20
47500B	  %4431:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4013:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep190, addrspace 1); moe_op_gemm_a8w4.py:405:20
47504B	  %4432:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4014:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep188, addrspace 1); moe_op_gemm_a8w4.py:405:20
47512B	  %4433:av_128_align2 = GLOBAL_LOAD_DWORDX4 %4015:vreg_64_align2, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.scevgep186, addrspace 1); moe_op_gemm_a8w4.py:405:20
47516B	  %4194:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr269, addrspace 3); moe_op_gemm_a8w4.py:405:20
47524B	  %4195:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr271, addrspace 3); moe_op_gemm_a8w4.py:405:20
47528B	  %4196:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr273, addrspace 3); moe_op_gemm_a8w4.py:405:20
47536B	  %4197:av_128_align2 = DS_READ_B128_gfx9 %4193:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr275, addrspace 3); moe_op_gemm_a8w4.py:405:20
47540B	  %9858:vreg_64_align2 = DS_READ2ST64_B32_gfx9 %4211:vgpr_32, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.sunkaddr283, addrspace 3), (load (s32) from %ir.sunkaddr285, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
47544B	  undef %8890.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr, addrspace 3); moe_op_gemm_a8w4.py:404:20
47552B	  undef %8888.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr211, addrspace 3); moe_op_gemm_a8w4.py:404:20
47560B	  undef %8886.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr213, addrspace 3); moe_op_gemm_a8w4.py:404:20
47568B	  undef %8884.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr215, addrspace 3); moe_op_gemm_a8w4.py:404:20
47576B	  undef %8882.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr217, addrspace 3); moe_op_gemm_a8w4.py:404:20
47584B	  undef %8880.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr219, addrspace 3); moe_op_gemm_a8w4.py:404:20
47592B	  undef %8878.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr221, addrspace 3); moe_op_gemm_a8w4.py:404:20
47600B	  undef %8876.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4029:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr223, addrspace 3); moe_op_gemm_a8w4.py:404:20
47608B	  %8890.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr224, addrspace 3); moe_op_gemm_a8w4.py:404:20
47616B	  %8888.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr226, addrspace 3); moe_op_gemm_a8w4.py:404:20
47632B	  %8886.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr228, addrspace 3); moe_op_gemm_a8w4.py:404:20
47648B	  %8884.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr230, addrspace 3); moe_op_gemm_a8w4.py:404:20
47664B	  %8882.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr232, addrspace 3); moe_op_gemm_a8w4.py:404:20
47680B	  %8880.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr234, addrspace 3); moe_op_gemm_a8w4.py:404:20
47696B	  %8878.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr236, addrspace 3); moe_op_gemm_a8w4.py:404:20
47712B	  %8876.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4070:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr238, addrspace 3); moe_op_gemm_a8w4.py:404:20
47720B	  %4199:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr276, addrspace 3); moe_op_gemm_a8w4.py:405:20
47724B	  %4200:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr278, addrspace 3); moe_op_gemm_a8w4.py:405:20
47732B	  %4201:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr280, addrspace 3); moe_op_gemm_a8w4.py:405:20
47736B	  %4202:av_128_align2 = DS_READ_B128_gfx9 %4198:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.sunkaddr282, addrspace 3); moe_op_gemm_a8w4.py:405:20
47744B	  %4231:vgpr_32 = V_PERM_B32_e64 %9858.sub0:vreg_64_align2, %9858.sub0:vreg_64_align2, %4230:sreg_32, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47748B	  %4232:vgpr_32 = V_PERM_B32_e64 %9858.sub1:vreg_64_align2, %9858.sub1:vreg_64_align2, %4230:sreg_32, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47756B	  %4235:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8890:vreg_256_align2, %8824:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47760B	  %4247:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8890:vreg_256_align2, %8822:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47768B	  %4253:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8890:vreg_256_align2, %8821:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47772B	  %4271:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8888:vreg_256_align2, %8818:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47780B	  %4277:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8888:vreg_256_align2, %8817:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47784B	  %4295:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8886:vreg_256_align2, %8814:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47792B	  %4301:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8886:vreg_256_align2, %8813:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47796B	  %4319:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8884:vreg_256_align2, %8810:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47800B	  undef %8889.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr239, addrspace 3); moe_op_gemm_a8w4.py:404:20
47808B	  undef %8887.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr241, addrspace 3); moe_op_gemm_a8w4.py:404:20
47812B	  %8889.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr254, addrspace 3); moe_op_gemm_a8w4.py:404:20
47820B	  %8887.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr256, addrspace 3); moe_op_gemm_a8w4.py:404:20
47824B	  %10080.sub0:sreg_64 = S_ADD_U32 %10080.sub0:sreg_64, 128, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
47832B	  %10080.sub1:sreg_64 = S_ADDC_U32 %10080.sub1:sreg_64, 0, implicit-def dead $scc, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
47836B	  S_CMP_LG_U32 %9840:sreg_32, %10080.sub0:sreg_64, implicit-def $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
47844B	  %4241:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8890:vreg_256_align2, %8823:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47852B	  undef %8885.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr243, addrspace 3); moe_op_gemm_a8w4.py:404:20
47860B	  %8885.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr258, addrspace 3); moe_op_gemm_a8w4.py:404:20
47864B	  %10081:vgpr_32 = V_ADD_U32_e32 256, %10081:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
47872B	  %10079:vgpr_32 = V_ADD_U32_e32 256, %10079:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
47876B	  %10078:vgpr_32 = V_ADD_U32_e32 256, %10078:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
47884B	  %10077:vgpr_32 = V_ADD_U32_e32 256, %10077:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
47888B	  %10076:vgpr_32 = V_ADD_U32_e32 256, %10076:vgpr_32, implicit $exec, debug-location !62; moe_op_gemm_a8w4.py:403:19
47896B	  %4259:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8888:vreg_256_align2, %8820:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47900B	  %8820:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8887:vreg_256_align2, %4259:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47908B	  %8823:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8889:vreg_256_align2, %4241:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47912B	  %4373:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8880:vreg_256_align2, %8801:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47920B	  %4391:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8878:vreg_256_align2, %8798:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47924B	  %4397:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8878:vreg_256_align2, %8797:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47932B	  %4415:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8876:vreg_256_align2, %8794:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47936B	  %4421:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8876:vreg_256_align2, %8793:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47944B	  %4343:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8882:vreg_256_align2, %8806:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47948B	  %4325:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8884:vreg_256_align2, %8809:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47956B	  %4367:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4196:av_128_align2, %8880:vreg_256_align2, %8802:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47960B	  %4349:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4197:av_128_align2, %8882:vreg_256_align2, %8805:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47968B	  %4265:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8888:vreg_256_align2, %8819:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
47992B	  undef %8883.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr245, addrspace 3); moe_op_gemm_a8w4.py:404:20
48000B	  %8883.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr260, addrspace 3); moe_op_gemm_a8w4.py:404:20
48004B	  %8819:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8887:vreg_256_align2, %4265:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48012B	  %4283:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8886:vreg_256_align2, %8816:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48016B	  %8816:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8885:vreg_256_align2, %4283:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48024B	  %4289:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8886:vreg_256_align2, %8815:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48028B	  undef %8881.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr247, addrspace 3); moe_op_gemm_a8w4.py:404:20
48036B	  %8881.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr262, addrspace 3); moe_op_gemm_a8w4.py:404:20
48040B	  %8815:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8885:vreg_256_align2, %4289:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48048B	  %4307:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8884:vreg_256_align2, %8812:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48052B	  %8812:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8883:vreg_256_align2, %4307:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48060B	  %4313:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8884:vreg_256_align2, %8811:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48064B	  undef %8879.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr249, addrspace 3); moe_op_gemm_a8w4.py:404:20
48072B	  %8879.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr264, addrspace 3); moe_op_gemm_a8w4.py:404:20
48076B	  %8811:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8883:vreg_256_align2, %4313:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48084B	  %4331:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8882:vreg_256_align2, %8808:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48088B	  %8808:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8881:vreg_256_align2, %4331:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48096B	  %4337:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8882:vreg_256_align2, %8807:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48100B	  undef %8877.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr251, addrspace 3); moe_op_gemm_a8w4.py:404:20
48108B	  %8877.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr266, addrspace 3); moe_op_gemm_a8w4.py:404:20
48112B	  %8807:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8881:vreg_256_align2, %4337:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48120B	  %4355:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8880:vreg_256_align2, %8804:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48124B	  %8804:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8879:vreg_256_align2, %4355:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48132B	  %4361:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8880:vreg_256_align2, %8803:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48136B	  undef %8875.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4111:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr253, addrspace 3); moe_op_gemm_a8w4.py:404:20
48144B	  %8875.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4152:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.sunkaddr268, addrspace 3); moe_op_gemm_a8w4.py:404:20
48148B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
48156B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
48160B	  %4379:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8878:vreg_256_align2, %8800:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48168B	  %4385:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8878:vreg_256_align2, %8799:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48172B	  %4403:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4194:av_128_align2, %8876:vreg_256_align2, %8796:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48180B	  %4409:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4195:av_128_align2, %8876:vreg_256_align2, %8795:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
48356B	  %8809:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8883:vreg_256_align2, %4325:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54960B	  %8824:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8889:vreg_256_align2, %4235:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54968B	  %8822:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8889:vreg_256_align2, %4247:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54976B	  %8821:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8889:vreg_256_align2, %4253:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54984B	  %8818:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8887:vreg_256_align2, %4271:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
54992B	  %8817:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8887:vreg_256_align2, %4277:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55000B	  %8814:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8885:vreg_256_align2, %4295:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55008B	  %8813:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8885:vreg_256_align2, %4301:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55016B	  %8810:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8883:vreg_256_align2, %4319:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55032B	  %8806:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8881:vreg_256_align2, %4343:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55040B	  %8805:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8881:vreg_256_align2, %4349:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55056B	  %8803:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8879:vreg_256_align2, %4361:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55064B	  %8802:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8879:vreg_256_align2, %4367:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55072B	  %8801:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8879:vreg_256_align2, %4373:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55080B	  %8800:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8877:vreg_256_align2, %4379:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55088B	  %8799:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8877:vreg_256_align2, %4385:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55096B	  %8798:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8877:vreg_256_align2, %4391:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55104B	  %8797:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8877:vreg_256_align2, %4397:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55112B	  %8796:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4199:av_128_align2, %8875:vreg_256_align2, %4403:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55120B	  %8795:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4200:av_128_align2, %8875:vreg_256_align2, %4409:vreg_128_align2, 4, 0, %4231:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55200B	  %8794:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4201:av_128_align2, %8875:vreg_256_align2, %4415:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55876B	  %8793:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4202:av_128_align2, %8875:vreg_256_align2, %4421:vreg_128_align2, 4, 0, %4232:vgpr_32, %4234:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
55880B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %4022:av_128_align2, 0, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr286, addrspace 3); moe_op_gemm_a8w4.py:404:20
55888B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %4023:av_128_align2, 8192, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr288, addrspace 3); moe_op_gemm_a8w4.py:404:20
55896B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %4024:av_128_align2, 16384, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr290, addrspace 3); moe_op_gemm_a8w4.py:404:20
55904B	  DS_WRITE_B128_gfx9 %4434:vgpr_32, %4025:av_128_align2, 24576, 0, implicit $exec, debug-location !63 :: (store (s128) into %ir.sunkaddr292, addrspace 3); moe_op_gemm_a8w4.py:404:20
55912B	  DS_WRITE_B64_gfx9 %4436:vgpr_32, %4208:av_64_align2, 0, 0, implicit $exec, debug-location !71 :: (store (s64) into %ir.sunkaddr308, addrspace 3); moe_op_gemm_a8w4.py:413:24
55920B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4426:av_128_align2, 0, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr293, addrspace 3); moe_op_gemm_a8w4.py:405:20
55928B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4427:av_128_align2, 8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr295, addrspace 3); moe_op_gemm_a8w4.py:405:20
55936B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4428:av_128_align2, 16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr297, addrspace 3); moe_op_gemm_a8w4.py:405:20
55944B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4429:av_128_align2, 24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr299, addrspace 3); moe_op_gemm_a8w4.py:405:20
55952B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4430:av_128_align2, -32768, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr301, addrspace 3); moe_op_gemm_a8w4.py:405:20
55960B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4431:av_128_align2, -24576, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr303, addrspace 3); moe_op_gemm_a8w4.py:405:20
55968B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4432:av_128_align2, -16384, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr305, addrspace 3); moe_op_gemm_a8w4.py:405:20
55976B	  DS_WRITE_B128_gfx9 %3906:vgpr_32, %4433:av_128_align2, -8192, 0, implicit $exec, debug-location !79 :: (store (s128) into %ir.sunkaddr307, addrspace 3); moe_op_gemm_a8w4.py:405:20
58112B	  S_CBRANCH_SCC1 %bb.67, implicit $scc, debug-location !62; moe_op_gemm_a8w4.py:403:19
58128B	  S_BRANCH %bb.68, debug-location !62; moe_op_gemm_a8w4.py:403:19

58144B	bb.68.Flow:
	; predecessors: %bb.67
	  successors: %bb.66(0x80000000); %bb.66(100.00%)

60208B	  S_BRANCH %bb.66

60224B	bb.69.._crit_edge:
	; predecessors: %bb.66
	  successors: %bb.70(0x40000000), %bb.71(0x40000000); %bb.70(50.00%), %bb.71(50.00%)

60240B	  S_WAITCNT 49279, debug-location !63; moe_op_gemm_a8w4.py:404:20
60256B	  S_BARRIER debug-location !63; moe_op_gemm_a8w4.py:404:20
60272B	  %4447:vgpr_32 = V_AND_B32_e32 14, %999:vgpr_32(s32), implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
60304B	  $vcc = S_AND_B64 $exec, %8913:sreg_64_xexec, implicit-def dead $scc, debug-location !85; moe_op_gemm_a8w4.py:421:46
60312B	  %4449:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 3, %4447:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64416B	  S_CBRANCH_VCCNZ %bb.71, implicit $vcc, debug-location !85; moe_op_gemm_a8w4.py:421:46
64432B	  S_BRANCH %bb.70, debug-location !85; moe_op_gemm_a8w4.py:421:46

64448B	bb.70 (%ir-block.1360):
	; predecessors: %bb.69
	  successors: %bb.71(0x80000000); %bb.71(100.00%)

64464B	  %8841:vgpr_32 = V_LSHL_ADD_U32_e64 %999:vgpr_32(s32), 2, 0, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
64480B	  %4457:vgpr_32 = V_ADD_U32_e32 98304, %8841:vgpr_32, implicit $exec, debug-location !83; moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
64496B	  %9859:vreg_64_align2 = DS_READ2ST64_B32_gfx9 %4457:vgpr_32, 0, 8, 0, implicit $exec, debug-location !83 :: (load (s32) from %ir.1363, addrspace 3), (load (s32) from %ir.1362, addrspace 3); moe_op_gemm_a8w4.py:94:27 @[ moe_op_gemm_a8w4.py:415:16 ]
64512B	  %4462:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 7, %1335:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64528B	  %4466:vgpr_32 = V_AND_B32_e32 28672, %9861:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64544B	  %4467:vgpr_32 = V_XOR_B32_e32 %4449:vgpr_32, %3930:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64560B	  %4468:vgpr_32 = disjoint V_OR3_B32_e64 %4462:vgpr_32, %4466:vgpr_32, %4467:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64576B	  %4470:vgpr_32 = nuw V_XAD_U32_e64 %4468:vgpr_32, 64, 0, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64640B	  %4475:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1373, addrspace 3); moe_op_gemm_a8w4.py:405:20
64656B	  %4476:vgpr_32 = nuw V_ADD_U32_e32 0, %4468:vgpr_32, implicit $exec, debug-location !79; moe_op_gemm_a8w4.py:405:20
64720B	  %4480:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, 0, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1381, addrspace 3); moe_op_gemm_a8w4.py:405:20
64736B	  %4482:vgpr_32 = V_MUL_U32_U24_e32 272, %1335:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
64752B	  %4483:vgpr_32 = V_XOR_B32_e32 %4482:vgpr_32, %3930:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
64768B	  %4485:vgpr_32 = V_XOR_B32_e32 192, %4483:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
64784B	  %4487:sreg_32 = S_ADD_I32 0, 65536, implicit-def dead $scc, debug-location !63; moe_op_gemm_a8w4.py:404:20
64800B	  %4488:vgpr_32 = nuw V_ADD_U32_e32 %4487:sreg_32, %4485:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
65104B	  %4572:vgpr_32 = nuw V_XAD_U32_e64 %4483:vgpr_32, 64, %4487:sreg_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
65232B	  undef %8840.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1426, addrspace 3); moe_op_gemm_a8w4.py:404:20
65248B	  %4614:vgpr_32 = nuw V_ADD_U32_e32 %4487:sreg_32, %4483:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
65376B	  %8840.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1442, addrspace 3); moe_op_gemm_a8w4.py:404:20
65384B	  undef %8839.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1392, addrspace 3); moe_op_gemm_a8w4.py:404:20
67440B	  %4671:sreg_32 = S_MOV_B32 117769732
67456B	  %4672:vgpr_32 = V_PERM_B32_e64 %9859.sub0:vreg_64_align2, %9859.sub0:vreg_64_align2, %4671:sreg_32, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67552B	  %4675:vgpr_32 = V_MOV_B32_e32 127, implicit $exec
67568B	  %4676:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8840:vreg_256_align2, %8824:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67576B	  %4530:vgpr_32 = V_XOR_B32_e32 128, %4483:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
67584B	  %4531:vgpr_32 = nuw V_ADD_U32_e32 %4487:sreg_32, %4530:vgpr_32, implicit $exec, debug-location !63; moe_op_gemm_a8w4.py:404:20
67592B	  %8839.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 0, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1409, addrspace 3); moe_op_gemm_a8w4.py:404:20
67600B	  %8824:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8839:vreg_256_align2, %4676:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67608B	  %4479:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1386, addrspace 3); moe_op_gemm_a8w4.py:405:20
67664B	  %4682:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8840:vreg_256_align2, %8823:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67672B	  %4474:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, 2048, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1378, addrspace 3); moe_op_gemm_a8w4.py:405:20
67680B	  %8823:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8839:vreg_256_align2, %4682:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67684B	  %4478:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1384, addrspace 3); moe_op_gemm_a8w4.py:405:20
67688B	  %4673:vgpr_32 = V_PERM_B32_e64 %9859.sub1:vreg_64_align2, %9859.sub1:vreg_64_align2, %4671:sreg_32, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67760B	  %4688:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8840:vreg_256_align2, %8822:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67768B	  %4473:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, -32768, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1376, addrspace 3); moe_op_gemm_a8w4.py:405:20
67776B	  %8822:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8839:vreg_256_align2, %4688:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67784B	  %4477:av_128_align2 = DS_READ_B128_gfx9 %4476:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1382, addrspace 3); moe_op_gemm_a8w4.py:405:20
67856B	  %4694:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8840:vreg_256_align2, %8821:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67864B	  %4472:av_128_align2 = DS_READ_B128_gfx9 %4470:vgpr_32, -30720, 0, implicit $exec, debug-location !79 :: (load (s128) from %ir.1374, addrspace 3); moe_op_gemm_a8w4.py:405:20
67872B	  %8821:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8839:vreg_256_align2, %4694:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67876B	  undef %8838.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1439, addrspace 3); moe_op_gemm_a8w4.py:404:20
67880B	  %8838.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1455, addrspace 3); moe_op_gemm_a8w4.py:404:20
67952B	  %4700:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8838:vreg_256_align2, %8820:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
67956B	  undef %8837.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1405, addrspace 3); moe_op_gemm_a8w4.py:404:20
67960B	  %8837.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 4096, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1422, addrspace 3); moe_op_gemm_a8w4.py:404:20
67968B	  %8820:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8837:vreg_256_align2, %4700:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68048B	  %4706:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8838:vreg_256_align2, %8819:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68064B	  %8819:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8837:vreg_256_align2, %4706:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68144B	  %4712:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8838:vreg_256_align2, %8818:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68160B	  %8818:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8837:vreg_256_align2, %4712:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68240B	  %4718:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8838:vreg_256_align2, %8817:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68256B	  %8817:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8837:vreg_256_align2, %4718:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68260B	  undef %8836.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1437, addrspace 3); moe_op_gemm_a8w4.py:404:20
68264B	  %8836.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1453, addrspace 3); moe_op_gemm_a8w4.py:404:20
68336B	  %4724:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8836:vreg_256_align2, %8816:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68340B	  undef %8835.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1403, addrspace 3); moe_op_gemm_a8w4.py:404:20
68344B	  %8835.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 8192, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1420, addrspace 3); moe_op_gemm_a8w4.py:404:20
68352B	  %8816:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8835:vreg_256_align2, %4724:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68432B	  %4730:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8836:vreg_256_align2, %8815:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68448B	  %8815:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8835:vreg_256_align2, %4730:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68528B	  %4736:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8836:vreg_256_align2, %8814:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68544B	  %8814:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8835:vreg_256_align2, %4736:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68624B	  %4742:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8836:vreg_256_align2, %8813:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68640B	  %8813:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8835:vreg_256_align2, %4742:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68644B	  undef %8834.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1435, addrspace 3); moe_op_gemm_a8w4.py:404:20
68648B	  %8834.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1451, addrspace 3); moe_op_gemm_a8w4.py:404:20
68720B	  %4748:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8834:vreg_256_align2, %8812:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68724B	  undef %8833.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1401, addrspace 3); moe_op_gemm_a8w4.py:404:20
68728B	  %8833.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 12288, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1418, addrspace 3); moe_op_gemm_a8w4.py:404:20
68736B	  %8812:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8833:vreg_256_align2, %4748:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68816B	  %4754:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8834:vreg_256_align2, %8811:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68832B	  %8811:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8833:vreg_256_align2, %4754:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68912B	  %4760:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8834:vreg_256_align2, %8810:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
68928B	  %8810:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8833:vreg_256_align2, %4760:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69008B	  %4766:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8834:vreg_256_align2, %8809:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69024B	  %8809:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8833:vreg_256_align2, %4766:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69028B	  undef %8832.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1433, addrspace 3); moe_op_gemm_a8w4.py:404:20
69032B	  %8832.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1449, addrspace 3); moe_op_gemm_a8w4.py:404:20
69104B	  %4772:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8832:vreg_256_align2, %8808:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69108B	  undef %8831.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1399, addrspace 3); moe_op_gemm_a8w4.py:404:20
69112B	  %8831.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 16384, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1416, addrspace 3); moe_op_gemm_a8w4.py:404:20
69120B	  %8808:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8831:vreg_256_align2, %4772:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69200B	  %4778:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8832:vreg_256_align2, %8807:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69216B	  %8807:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8831:vreg_256_align2, %4778:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69296B	  %4784:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8832:vreg_256_align2, %8806:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69312B	  %8806:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8831:vreg_256_align2, %4784:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69392B	  %4790:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8832:vreg_256_align2, %8805:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69408B	  %8805:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8831:vreg_256_align2, %4790:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69412B	  undef %8830.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1431, addrspace 3); moe_op_gemm_a8w4.py:404:20
69416B	  %8830.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1447, addrspace 3); moe_op_gemm_a8w4.py:404:20
69488B	  %4796:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8830:vreg_256_align2, %8804:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69492B	  undef %8829.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1397, addrspace 3); moe_op_gemm_a8w4.py:404:20
69496B	  %8829.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 20480, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1414, addrspace 3); moe_op_gemm_a8w4.py:404:20
69504B	  %8804:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8829:vreg_256_align2, %4796:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69584B	  %4802:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8830:vreg_256_align2, %8803:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69600B	  %8803:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8829:vreg_256_align2, %4802:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69680B	  %4808:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8830:vreg_256_align2, %8802:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69696B	  %8802:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8829:vreg_256_align2, %4808:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69776B	  %4814:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8830:vreg_256_align2, %8801:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69792B	  %8801:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8829:vreg_256_align2, %4814:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69796B	  undef %8828.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1429, addrspace 3); moe_op_gemm_a8w4.py:404:20
69800B	  %8828.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1445, addrspace 3); moe_op_gemm_a8w4.py:404:20
69872B	  %4820:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8828:vreg_256_align2, %8800:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69876B	  undef %8827.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1395, addrspace 3); moe_op_gemm_a8w4.py:404:20
69880B	  %8827.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 24576, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1412, addrspace 3); moe_op_gemm_a8w4.py:404:20
69888B	  %8800:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8827:vreg_256_align2, %4820:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69968B	  %4826:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8828:vreg_256_align2, %8799:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
69984B	  %8799:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8827:vreg_256_align2, %4826:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70064B	  %4832:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8828:vreg_256_align2, %8798:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70080B	  %8798:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8827:vreg_256_align2, %4832:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70160B	  %4838:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8828:vreg_256_align2, %8797:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70176B	  %8797:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8827:vreg_256_align2, %4838:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70180B	  undef %8826.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4572:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1427, addrspace 3); moe_op_gemm_a8w4.py:404:20
70184B	  %8826.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4614:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1443, addrspace 3); moe_op_gemm_a8w4.py:404:20
70256B	  %4844:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4480:av_128_align2, %8826:vreg_256_align2, %8796:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70260B	  undef %8825.sub4_sub5_sub6_sub7:vreg_256_align2 = DS_READ_B128_gfx9 %4488:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1393, addrspace 3); moe_op_gemm_a8w4.py:404:20
70264B	  %8825.sub0_sub1_sub2_sub3:vreg_256_align2 = DS_READ_B128_gfx9 %4531:vgpr_32, 28672, 0, implicit $exec, debug-location !63 :: (load (s128) from %ir.1410, addrspace 3); moe_op_gemm_a8w4.py:404:20
70272B	  %8796:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4475:av_128_align2, %8825:vreg_256_align2, %4844:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70352B	  %4850:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4479:av_128_align2, %8826:vreg_256_align2, %8795:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70368B	  %8795:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4474:av_128_align2, %8825:vreg_256_align2, %4850:vreg_128_align2, 4, 0, %4672:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70448B	  %4856:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4478:av_128_align2, %8826:vreg_256_align2, %8794:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70464B	  %8794:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4473:av_128_align2, %8825:vreg_256_align2, %4856:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 4, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70544B	  %4862:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4477:av_128_align2, %8826:vreg_256_align2, %8793:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 8, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46
70560B	  %8793:vreg_128_align2 = nofpexcept V_MFMA_SCALE_F32_16X16X128_F8F6F4_f4_f8_vgprcd_e64 %4472:av_128_align2, %8825:vreg_256_align2, %4862:vreg_128_align2, 4, 0, %4673:vgpr_32, %4675:vgpr_32, 12, 0, implicit $mode, implicit $exec, debug-location !85; moe_op_gemm_a8w4.py:421:46

74672B	bb.71.._crit_edge._crit_edge:
	; predecessors: %bb.69, %bb.70
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

76720B	  undef %8791.sub0:vreg_64_align2 = V_OR_B32_e32 %56.sub0:sreg_64, %999:vgpr_32(s32), implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
76736B	  %8791.sub1:vreg_64_align2 = COPY %56.sub1:sreg_64, implicit $exec, debug-location !74; moe_op_gemm_a8w4.py:375:42
77024B	  %9137:vgpr_32 = V_MUL_LO_U32_e64 %9094:vgpr_32, %1046:sreg_32_xm0_xexec, implicit $exec, debug-location !92; moe_op_gemm_a8w4.py:470:30
77040B	  %9141:vgpr_32 = V_ADD_U32_e32 %56.sub0:sreg_64, %9137:vgpr_32, implicit $exec, debug-location !93; moe_op_gemm_a8w4.py:470:43
77072B	  %4900.sub1:sgpr_128 = S_AND_B32 %4900.sub1:sgpr_128, 65535, implicit-def dead $scc, debug-location !94; moe_op_gemm_a8w4.py:472:27
77088B	  %4900.sub3:sgpr_128 = S_MOV_B32 159744
77104B	  %4900.sub2:sgpr_128 = S_MOV_B32 2147483646
77184B	  %4902:vgpr_32 = V_ADD_LSHL_U32_e64 %9141:vgpr_32, %999:vgpr_32(s32), 2, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
77200B	  %4906:vgpr_32 = V_MOV_B32_e32 -2147483648, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
77208B	  %4890:sreg_64_xexec = V_CMP_GT_I64_e64 %1380:sreg_64_xexec, %8791:vreg_64_align2, implicit $exec, debug-location !91; moe_op_gemm_a8w4.py:468:24
77216B	  %4905:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %4902:vgpr_32, %4890:sreg_64_xexec, implicit $exec, debug-location !94; moe_op_gemm_a8w4.py:472:27
77232B	  %4908:av_32 = BUFFER_LOAD_DWORD_OFFEN %4905:vgpr_32, %4900:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !94 :: (dereferenceable load (s32) from %ir.2090, align 1, addrspace 8); moe_op_gemm_a8w4.py:472:27
77236B	  %4884:vgpr_32 = V_MOV_B32_e32 0, implicit $exec, debug-location !88; moe_op_gemm_a8w4.py:463:28
77240B	  %4885:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR %9856.sub0_sub1:sgpr_128, %4884:vgpr_32, 0, 0, implicit $exec, debug-location !88 :: (load (s32) from %ir.13, addrspace 1); moe_op_gemm_a8w4.py:463:28
77248B	  %9097.sub1:vreg_64_align2 = V_ASHRREV_I32_e32 31, %9097.sub0:vreg_64_align2, implicit $exec, debug-location !51; moe_op_gemm_a8w4.py:332:59
77256B	  %4875:sreg_64 = nsw S_LSHL_B64 %1208:sreg_64, 8, implicit-def dead $scc, debug-location !109; moe_op_gemm_a8w4.py:482:33
77264B	  %4879:sreg_32 = S_LSHR_B32 %1380.sub0:sreg_64_xexec, 31, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
77272B	  %4895:sreg_32 = S_MOV_B32 65535
77296B	  %4910:vgpr_32 = V_AND_B32_e32 96, %1634:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77304B	  %4913:vgpr_32 = V_AND_B32_e32 1932, %9862:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77312B	  %4915:vgpr_32 = V_AND_B32_e32 16, %999:vgpr_32(s32), implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77424B	  %8790:vgpr_32 = V_LSHL_ADD_U32_e64 %1213:vgpr_32, 1, 0, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77428B	  undef %8788.sub0:vreg_64_align2 = V_OR_B32_e32 %4875.sub0:sreg_64, %9070.sub0:vreg_64_align2, implicit $exec, debug-location !55; moe_op_gemm_a8w4.py:339:46
77432B	  %4880:sreg_32 = S_ADD_I32 %1380.sub0:sreg_64_xexec, %4879:sreg_32, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
77440B	  %4886:sreg_64 = V_CMP_LT_I64_e64 %9083:vreg_64_align2, %9097:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
77448B	  %4887:sreg_64 = V_CMP_LT_I64_e64 %9081:vreg_64_align2, %9097:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
77456B	  %4888:sreg_64 = V_CMP_LT_I64_e64 %9079:vreg_64_align2, %9097:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
77464B	  %4889:sreg_64 = V_CMP_LT_I64_e64 %9077:vreg_64_align2, %9097:vreg_64_align2, implicit $exec, debug-location !90; moe_op_gemm_a8w4.py:467:22
77472B	  %4917:vgpr_32 = nuw V_ADD_U32_e32 0, %4910:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77480B	  %4918:vgpr_32 = nuw V_ADD3_U32_e64 %4917:vgpr_32, %4913:vgpr_32, %4915:vgpr_32, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77488B	  S_WAITCNT 49279, debug-location !95; moe_op_gemm_a8w4.py:475:20
77496B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
77504B	  DS_WRITE_B32_gfx9 %4918:vgpr_32, %4908:av_32, 0, 0, implicit $exec, debug-location !95 :: (store (s32) into %ir.2100, addrspace 3); moe_op_gemm_a8w4.py:475:20
77512B	  ATOMIC_FENCE 5, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
77520B	  S_BARRIER debug-location !95; moe_op_gemm_a8w4.py:475:20
77528B	  ATOMIC_FENCE 4, 2, debug-location !95; moe_op_gemm_a8w4.py:475:20
77536B	  %4921:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 0, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2102, addrspace 3); moe_op_gemm_a8w4.py:475:20
77544B	  undef %6364.sub0:sreg_64 = S_ASHR_I32 %4880:sreg_32, 1, implicit-def dead $scc, debug-location !87; moe_op_gemm_a8w4.py:288:14
77552B	  %4923:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 16, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2108, addrspace 3); moe_op_gemm_a8w4.py:475:20
77560B	  %4933:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 1024, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2114, addrspace 3); moe_op_gemm_a8w4.py:475:20
77568B	  %4939:vreg_128_align2 = DS_READ_B128_gfx9 %8790:vgpr_32, 1040, 0, implicit $exec, debug-location !95 :: (load (s128) from %ir.2120, addrspace 3); moe_op_gemm_a8w4.py:475:20
77584B	  %4945:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77592B	  %4946:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77600B	  %4947:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77608B	  %4948:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8824.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77616B	  %4949:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8823.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77624B	  %4950:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8823.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77632B	  %4951:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8823.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77640B	  %4952:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8823.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77648B	  %4953:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77664B	  %4954:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77680B	  %4955:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77696B	  %4956:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8822.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77712B	  %4957:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77728B	  %4958:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77744B	  %4959:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77760B	  %4960:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8821.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77776B	  %4961:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8820.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77792B	  %4962:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8820.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77808B	  %4963:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8820.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77824B	  %4964:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8820.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77840B	  %4965:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8819.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77856B	  %4966:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8819.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77872B	  %4967:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8819.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77888B	  %4968:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8819.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77904B	  %4969:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8818.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77920B	  %4970:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8818.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77936B	  %4971:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8818.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77952B	  %4972:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8818.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77968B	  %4973:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
77984B	  %4974:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78000B	  %4975:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78016B	  %4976:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8817.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78032B	  %4977:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8816.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78048B	  %4978:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8816.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78064B	  %4979:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8816.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78080B	  %4980:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8816.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78096B	  %4981:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8815.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78112B	  %4982:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8815.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78128B	  %4983:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8815.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78144B	  %4984:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8815.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78160B	  %4985:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78176B	  %4986:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78192B	  %4987:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78208B	  %4988:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8814.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78224B	  %4989:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78240B	  %4990:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78256B	  %4991:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78272B	  %4992:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8813.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78288B	  %4993:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8812.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78304B	  %4994:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8812.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78320B	  %4995:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8812.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78336B	  %4996:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8812.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78352B	  %4997:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8811.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78368B	  %4998:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8811.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78384B	  %4999:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8811.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78400B	  %5000:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8811.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78416B	  %5001:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78432B	  %5002:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78448B	  %5003:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78464B	  %5004:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8810.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78480B	  %5005:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8809.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78496B	  %5006:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8809.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78512B	  %5007:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8809.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78528B	  %5008:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8809.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78544B	  %5009:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8808.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78560B	  %5010:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8808.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78576B	  %5011:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8808.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78592B	  %5012:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8808.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78608B	  %5013:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8807.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78624B	  %5014:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8807.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78640B	  %5015:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8807.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78656B	  %5016:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8807.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78672B	  %5017:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78688B	  %5018:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78704B	  %5019:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78720B	  %5020:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8806.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78736B	  %5021:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78752B	  %5022:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78768B	  %5023:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78784B	  %5024:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8805.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78800B	  %5025:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8804.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78816B	  %5026:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8804.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78832B	  %5027:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8804.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78848B	  %5028:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8804.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78864B	  %5029:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8803.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78880B	  %5030:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8803.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78896B	  %5031:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8803.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78912B	  %5032:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8803.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78928B	  %5033:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78944B	  %5034:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78960B	  %5035:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78976B	  %5036:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8802.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
78992B	  %5037:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79008B	  %5038:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79024B	  %5039:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79040B	  %5040:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8801.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79056B	  %5041:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8800.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79072B	  %5042:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8800.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79088B	  %5043:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8800.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79104B	  %5044:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8800.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79120B	  %5045:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8799.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79136B	  %5046:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8799.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79152B	  %5047:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8799.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79168B	  %5048:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8799.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79184B	  %5049:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79200B	  %5050:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79216B	  %5051:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79232B	  %5052:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8798.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79248B	  %5053:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79264B	  %5054:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79280B	  %5055:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79296B	  %5056:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8797.sub3:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub3:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79312B	  %5057:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8796.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79328B	  %5058:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8796.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79344B	  %5059:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8796.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4921.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79376B	  undef %4921.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8796.sub3:vreg_128_align2, %4885:vgpr_32, %4921.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79392B	  %5061:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8795.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79408B	  %5062:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8795.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79424B	  %5063:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8795.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4923.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79456B	  undef %4923.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8795.sub3:vreg_128_align2, %4885:vgpr_32, %4923.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79472B	  %5065:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8794.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79488B	  %5066:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8794.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79504B	  %5067:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8794.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4933.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79536B	  undef %4933.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8794.sub3:vreg_128_align2, %4885:vgpr_32, %4933.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79552B	  %5069:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8793.sub0:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub0:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79568B	  %5070:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8793.sub1:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub1:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79584B	  %5071:vgpr_32 = nofpexcept V_FMA_F32_e64 0, %8793.sub2:vreg_128_align2, 0, %4885:vgpr_32, 0, %4939.sub2:vreg_128_align2, 0, 0, implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79616B	  undef %4939.sub3:vreg_128_align2 = nofpexcept V_FMAC_F32_e32 %8793.sub3:vreg_128_align2, %4885:vgpr_32, %4939.sub3:vreg_128_align2(tied-def 0), implicit $mode, implicit $exec, debug-location !95; moe_op_gemm_a8w4.py:475:20
79632B	  %5073:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %9857.sub1:sgpr_64, 0, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79648B	  %5074:vgpr_32 = nofpexcept V_MIN_F32_e32 %4945:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79664B	  %5075:vgpr_32 = nofpexcept V_MIN_F32_e32 %4947:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79680B	  %5076:vgpr_32 = nofpexcept V_MIN_F32_e32 %4949:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79696B	  %5077:vgpr_32 = nofpexcept V_MIN_F32_e32 %4951:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79712B	  %5078:vgpr_32 = nofpexcept V_MIN_F32_e32 %4953:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79728B	  %5079:vgpr_32 = nofpexcept V_MIN_F32_e32 %4955:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79744B	  %5080:vgpr_32 = nofpexcept V_MIN_F32_e32 %4957:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79760B	  %5081:vgpr_32 = nofpexcept V_MIN_F32_e32 %4959:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79776B	  %5082:vgpr_32 = nofpexcept V_MIN_F32_e32 %4961:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79792B	  %5083:vgpr_32 = nofpexcept V_MIN_F32_e32 %4963:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79808B	  %5084:vgpr_32 = nofpexcept V_MIN_F32_e32 %4965:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79824B	  %5085:vgpr_32 = nofpexcept V_MIN_F32_e32 %4967:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79840B	  %5086:vgpr_32 = nofpexcept V_MIN_F32_e32 %4969:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79856B	  %5087:vgpr_32 = nofpexcept V_MIN_F32_e32 %4971:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79872B	  %5088:vgpr_32 = nofpexcept V_MIN_F32_e32 %4973:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79888B	  %5089:vgpr_32 = nofpexcept V_MIN_F32_e32 %4975:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79904B	  %5090:vgpr_32 = nofpexcept V_MIN_F32_e32 %4977:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79920B	  %5091:vgpr_32 = nofpexcept V_MIN_F32_e32 %4979:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79936B	  %5092:vgpr_32 = nofpexcept V_MIN_F32_e32 %4981:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79952B	  %5093:vgpr_32 = nofpexcept V_MIN_F32_e32 %4983:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79968B	  %5094:vgpr_32 = nofpexcept V_MIN_F32_e32 %4985:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
79984B	  %5095:vgpr_32 = nofpexcept V_MIN_F32_e32 %4987:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80000B	  %5096:vgpr_32 = nofpexcept V_MIN_F32_e32 %4989:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80016B	  %5097:vgpr_32 = nofpexcept V_MIN_F32_e32 %4991:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80032B	  %5098:vgpr_32 = nofpexcept V_MIN_F32_e32 %4993:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80048B	  %5099:vgpr_32 = nofpexcept V_MIN_F32_e32 %4995:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80064B	  %5100:vgpr_32 = nofpexcept V_MIN_F32_e32 %4997:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80080B	  %5101:vgpr_32 = nofpexcept V_MIN_F32_e32 %4999:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80096B	  %5102:vgpr_32 = nofpexcept V_MIN_F32_e32 %5001:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80112B	  %5103:vgpr_32 = nofpexcept V_MIN_F32_e32 %5003:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80128B	  %5104:vgpr_32 = nofpexcept V_MIN_F32_e32 %5005:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80144B	  %5105:vgpr_32 = nofpexcept V_MIN_F32_e32 %5007:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80160B	  %5106:vgpr_32 = nofpexcept V_MIN_F32_e32 %5009:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80176B	  %5107:vgpr_32 = nofpexcept V_MIN_F32_e32 %5011:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80192B	  %5108:vgpr_32 = nofpexcept V_MIN_F32_e32 %5013:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80208B	  %5109:vgpr_32 = nofpexcept V_MIN_F32_e32 %5015:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80224B	  %5110:vgpr_32 = nofpexcept V_MIN_F32_e32 %5017:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80240B	  %5111:vgpr_32 = nofpexcept V_MIN_F32_e32 %5019:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80256B	  %5112:vgpr_32 = nofpexcept V_MIN_F32_e32 %5021:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80272B	  %5113:vgpr_32 = nofpexcept V_MIN_F32_e32 %5023:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80288B	  %5114:vgpr_32 = nofpexcept V_MIN_F32_e32 %5025:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80304B	  %5115:vgpr_32 = nofpexcept V_MIN_F32_e32 %5027:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80320B	  %5116:vgpr_32 = nofpexcept V_MIN_F32_e32 %5029:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80336B	  %5117:vgpr_32 = nofpexcept V_MIN_F32_e32 %5031:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80352B	  %5118:vgpr_32 = nofpexcept V_MIN_F32_e32 %5033:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80368B	  %5119:vgpr_32 = nofpexcept V_MIN_F32_e32 %5035:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80384B	  %5120:vgpr_32 = nofpexcept V_MIN_F32_e32 %5037:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80400B	  %5121:vgpr_32 = nofpexcept V_MIN_F32_e32 %5039:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80416B	  %5122:vgpr_32 = nofpexcept V_MIN_F32_e32 %5041:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80432B	  %5123:vgpr_32 = nofpexcept V_MIN_F32_e32 %5043:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80448B	  %5124:vgpr_32 = nofpexcept V_MIN_F32_e32 %5045:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80464B	  %5125:vgpr_32 = nofpexcept V_MIN_F32_e32 %5047:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80480B	  %5126:vgpr_32 = nofpexcept V_MIN_F32_e32 %5049:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80496B	  %5127:vgpr_32 = nofpexcept V_MIN_F32_e32 %5051:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80512B	  %5128:vgpr_32 = nofpexcept V_MIN_F32_e32 %5053:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80528B	  %5129:vgpr_32 = nofpexcept V_MIN_F32_e32 %5055:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80544B	  %5130:vgpr_32 = nofpexcept V_MIN_F32_e32 %5057:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80560B	  %5131:vgpr_32 = nofpexcept V_MIN_F32_e32 %5059:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80576B	  %5132:vgpr_32 = nofpexcept V_MIN_F32_e32 %5061:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80592B	  %5133:vgpr_32 = nofpexcept V_MIN_F32_e32 %5063:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80608B	  %5134:vgpr_32 = nofpexcept V_MIN_F32_e32 %5065:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80624B	  %5135:vgpr_32 = nofpexcept V_MIN_F32_e32 %5067:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80640B	  %5136:vgpr_32 = nofpexcept V_MIN_F32_e32 %5069:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80656B	  %5137:vgpr_32 = nofpexcept V_MIN_F32_e32 %5071:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !96; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:111:26 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80672B	  %5138:vgpr_32 = nofpexcept V_MIN_F32_e32 %4946:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80688B	  %5139:vgpr_32 = nofpexcept V_MIN_F32_e32 %4948:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80704B	  %5140:vgpr_32 = nofpexcept V_MIN_F32_e32 %4950:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80720B	  %5141:vgpr_32 = nofpexcept V_MIN_F32_e32 %4952:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80736B	  %5142:vgpr_32 = nofpexcept V_MIN_F32_e32 %4954:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80752B	  %5143:vgpr_32 = nofpexcept V_MIN_F32_e32 %4956:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80768B	  %5144:vgpr_32 = nofpexcept V_MIN_F32_e32 %4958:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80784B	  %5145:vgpr_32 = nofpexcept V_MIN_F32_e32 %4960:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80800B	  %5146:vgpr_32 = nofpexcept V_MIN_F32_e32 %4962:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80816B	  %5147:vgpr_32 = nofpexcept V_MIN_F32_e32 %4964:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80832B	  %5148:vgpr_32 = nofpexcept V_MIN_F32_e32 %4966:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80848B	  %5149:vgpr_32 = nofpexcept V_MIN_F32_e32 %4968:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80864B	  %5150:vgpr_32 = nofpexcept V_MIN_F32_e32 %4970:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80880B	  %5151:vgpr_32 = nofpexcept V_MIN_F32_e32 %4972:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80896B	  %5152:vgpr_32 = nofpexcept V_MIN_F32_e32 %4974:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80912B	  %5153:vgpr_32 = nofpexcept V_MIN_F32_e32 %4976:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80928B	  %5154:vgpr_32 = nofpexcept V_MIN_F32_e32 %4978:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80944B	  %5155:vgpr_32 = nofpexcept V_MIN_F32_e32 %4980:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80960B	  %5156:vgpr_32 = nofpexcept V_MIN_F32_e32 %4982:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80976B	  %5157:vgpr_32 = nofpexcept V_MIN_F32_e32 %4984:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
80992B	  %5158:vgpr_32 = nofpexcept V_MIN_F32_e32 %4986:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81008B	  %5159:vgpr_32 = nofpexcept V_MIN_F32_e32 %4988:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81024B	  %5160:vgpr_32 = nofpexcept V_MIN_F32_e32 %4990:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81040B	  %5161:vgpr_32 = nofpexcept V_MIN_F32_e32 %4992:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81056B	  %5162:vgpr_32 = nofpexcept V_MIN_F32_e32 %4994:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81072B	  %5163:vgpr_32 = nofpexcept V_MIN_F32_e32 %4996:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81088B	  %5164:vgpr_32 = nofpexcept V_MIN_F32_e32 %4998:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81104B	  %5165:vgpr_32 = nofpexcept V_MIN_F32_e32 %5000:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81120B	  %5166:vgpr_32 = nofpexcept V_MIN_F32_e32 %5002:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81136B	  %5167:vgpr_32 = nofpexcept V_MIN_F32_e32 %5004:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81152B	  %5168:vgpr_32 = nofpexcept V_MIN_F32_e32 %5006:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81168B	  %5169:vgpr_32 = nofpexcept V_MIN_F32_e32 %5008:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81184B	  %5170:vgpr_32 = nofpexcept V_MIN_F32_e32 %5010:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81200B	  %5171:vgpr_32 = nofpexcept V_MIN_F32_e32 %5012:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81216B	  %5172:vgpr_32 = nofpexcept V_MIN_F32_e32 %5014:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81232B	  %5173:vgpr_32 = nofpexcept V_MIN_F32_e32 %5016:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81248B	  %5174:vgpr_32 = nofpexcept V_MIN_F32_e32 %5018:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81264B	  %5175:vgpr_32 = nofpexcept V_MIN_F32_e32 %5020:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81280B	  %5176:vgpr_32 = nofpexcept V_MIN_F32_e32 %5022:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81296B	  %5177:vgpr_32 = nofpexcept V_MIN_F32_e32 %5024:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81312B	  %5178:vgpr_32 = nofpexcept V_MIN_F32_e32 %5026:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81328B	  %5179:vgpr_32 = nofpexcept V_MIN_F32_e32 %5028:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81344B	  %5180:vgpr_32 = nofpexcept V_MIN_F32_e32 %5030:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81360B	  %5181:vgpr_32 = nofpexcept V_MIN_F32_e32 %5032:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81376B	  %5182:vgpr_32 = nofpexcept V_MIN_F32_e32 %5034:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81392B	  %5183:vgpr_32 = nofpexcept V_MIN_F32_e32 %5036:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81408B	  %5184:vgpr_32 = nofpexcept V_MIN_F32_e32 %5038:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81424B	  %5185:vgpr_32 = nofpexcept V_MIN_F32_e32 %5040:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81440B	  %5186:vgpr_32 = nofpexcept V_MIN_F32_e32 %5042:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81456B	  %5187:vgpr_32 = nofpexcept V_MIN_F32_e32 %5044:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81472B	  %5188:vgpr_32 = nofpexcept V_MIN_F32_e32 %5046:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81488B	  %5189:vgpr_32 = nofpexcept V_MIN_F32_e32 %5048:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81504B	  %5190:vgpr_32 = nofpexcept V_MIN_F32_e32 %5050:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81520B	  %5191:vgpr_32 = nofpexcept V_MIN_F32_e32 %5052:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81536B	  %5192:vgpr_32 = nofpexcept V_MIN_F32_e32 %5054:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81552B	  %5193:vgpr_32 = nofpexcept V_MIN_F32_e32 %5056:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81568B	  %5194:vgpr_32 = nofpexcept V_MIN_F32_e32 %5058:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81584B	  %5195:vgpr_32 = nofpexcept V_MIN_F32_e32 %4921.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81600B	  %5196:vgpr_32 = nofpexcept V_MIN_F32_e32 %5062:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81616B	  %5197:vgpr_32 = nofpexcept V_MIN_F32_e32 %4923.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81632B	  %5198:vgpr_32 = nofpexcept V_MIN_F32_e32 %5066:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81648B	  %5199:vgpr_32 = nofpexcept V_MIN_F32_e32 %4933.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81664B	  %5200:vgpr_32 = nofpexcept V_MIN_F32_e32 %5070:vgpr_32, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81680B	  %5201:vgpr_32 = nofpexcept V_MIN_F32_e32 %4939.sub3:vreg_128_align2, %5073:vgpr_32, implicit $mode, implicit $exec, debug-location !99; moe_op_gemm_a8w4.py:100:24 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81696B	  %5202:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5138:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81712B	  %5203:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5139:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81728B	  %5204:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5140:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81744B	  %5205:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5141:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81760B	  %5206:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5142:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81776B	  %5207:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5143:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81792B	  %5208:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5144:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81808B	  %5209:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5145:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81824B	  %5210:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5146:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81840B	  %5211:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5147:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81856B	  %5212:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5148:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81872B	  %5213:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5149:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81888B	  %5214:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5150:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81904B	  %5215:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5151:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81920B	  %5216:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5152:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81936B	  %5217:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5153:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81952B	  %5218:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5154:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81968B	  %5219:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5155:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
81984B	  %5220:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5156:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82000B	  %5221:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5157:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82016B	  %5222:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5158:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82032B	  %5223:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5159:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82048B	  %5224:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5160:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82064B	  %5225:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5161:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82080B	  %5226:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5162:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82096B	  %5227:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5163:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82112B	  %5228:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5164:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82128B	  %5229:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5165:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82144B	  %5230:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5166:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82160B	  %5231:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5167:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82176B	  %5232:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5168:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82192B	  %5233:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5169:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82208B	  %5234:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5170:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82224B	  %5235:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5171:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82240B	  %5236:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5172:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82256B	  %5237:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5173:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82272B	  %5238:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5174:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82288B	  %5239:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5175:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82304B	  %5240:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5176:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82320B	  %5241:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5177:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82336B	  %5242:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5178:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82352B	  %5243:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5179:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82368B	  %5244:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5180:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82384B	  %5245:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5181:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82400B	  %5246:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5182:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82416B	  %5247:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5183:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82432B	  %5248:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5184:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82448B	  %5249:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5185:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82464B	  %5250:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5186:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82480B	  %5251:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5187:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82496B	  %5252:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5188:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82512B	  %5253:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5189:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82528B	  %5254:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5190:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82544B	  %5255:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5191:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82560B	  %5256:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5192:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82576B	  %5257:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5193:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82592B	  %5258:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5194:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82608B	  %5259:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5195:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82624B	  %5260:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5196:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82640B	  %5261:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5197:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82656B	  %5262:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5198:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82672B	  %5263:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5199:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82688B	  %5264:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5200:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82704B	  %5265:vgpr_32 = nofpexcept V_MAX_F32_e64 0, %5201:vgpr_32, 1, %9857.sub1:sgpr_64, 0, 0, implicit $mode, implicit $exec, debug-location !102; moe_op_gemm_a8w4.py:102:33 @[ moe_op_gemm_a8w4.py:114:30 @[ moe_op_gemm_a8w4.py:477:34 ] ]
82720B	  %5268:vgpr_32 = V_MOV_B32_e32 -1078416837, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
82736B	  %5267:vgpr_32 = nofpexcept V_MUL_F32_e32 %9857.sub0:sgpr_64, %5268:vgpr_32, implicit $mode, implicit $exec, debug-location !103; moe_op_gemm_a8w4.py:115:45 @[ moe_op_gemm_a8w4.py:477:34 ]
82752B	  %5269:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5074:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82768B	  %5270:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5075:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82784B	  %5271:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5076:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82800B	  %5272:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5077:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82816B	  %5273:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5078:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82832B	  %5274:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5079:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82848B	  %5275:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5080:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82864B	  %5276:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5081:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82880B	  %5277:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5082:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82896B	  %5278:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5083:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82912B	  %5279:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5084:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82928B	  %5280:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5085:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82944B	  %5281:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5086:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82960B	  %5282:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5087:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82976B	  %5283:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5088:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
82992B	  %5284:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5089:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83008B	  %5285:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5090:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83024B	  %5286:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5091:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83040B	  %5287:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5092:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83056B	  %5288:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5093:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83072B	  %5289:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5094:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83088B	  %5290:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5095:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83104B	  %5291:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5096:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83120B	  %5292:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5097:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83136B	  %5293:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5098:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83152B	  %5294:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5099:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83168B	  %5295:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5100:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83184B	  %5296:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5101:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83200B	  %5297:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5102:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83216B	  %5298:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5103:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83232B	  %5299:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5104:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83248B	  %5300:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5105:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83264B	  %5301:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5106:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83280B	  %5302:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5107:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83296B	  %5303:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5108:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83312B	  %5304:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5109:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83328B	  %5305:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5110:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83344B	  %5306:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5111:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83360B	  %5307:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5112:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83376B	  %5308:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5113:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83392B	  %5309:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5114:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83408B	  %5310:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5115:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83424B	  %5311:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5116:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83440B	  %5312:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5117:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83456B	  %5313:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5118:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83472B	  %5314:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5119:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83488B	  %5315:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5120:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83504B	  %5316:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5121:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83520B	  %5317:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5122:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83536B	  %5318:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5123:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83552B	  %5319:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5124:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83568B	  %5320:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5125:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83584B	  %5321:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5126:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83600B	  %5322:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5127:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83616B	  %5323:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5128:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83632B	  %5324:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5129:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83648B	  %5325:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5130:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83664B	  %5326:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5131:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83680B	  %5327:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5132:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83696B	  %5328:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5133:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83712B	  %5329:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5134:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83728B	  %5330:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5135:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83744B	  %5331:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5136:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83760B	  %5332:vgpr_32 = nofpexcept V_MUL_F32_e32 %5267:vgpr_32, %5137:vgpr_32, implicit $mode, implicit $exec, debug-location !104; moe_op_gemm_a8w4.py:115:53 @[ moe_op_gemm_a8w4.py:477:34 ]
83776B	  %5333:vgpr_32 = nofpexcept V_EXP_F32_e32 %5269:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83792B	  %5334:vgpr_32 = nofpexcept V_EXP_F32_e32 %5270:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83808B	  %5335:vgpr_32 = nofpexcept V_EXP_F32_e32 %5271:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83824B	  %5336:vgpr_32 = nofpexcept V_EXP_F32_e32 %5272:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83840B	  %5337:vgpr_32 = nofpexcept V_EXP_F32_e32 %5273:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83856B	  %5338:vgpr_32 = nofpexcept V_EXP_F32_e32 %5274:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83872B	  %5339:vgpr_32 = nofpexcept V_EXP_F32_e32 %5275:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83888B	  %5340:vgpr_32 = nofpexcept V_EXP_F32_e32 %5276:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83904B	  %5341:vgpr_32 = nofpexcept V_EXP_F32_e32 %5277:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83920B	  %5342:vgpr_32 = nofpexcept V_EXP_F32_e32 %5278:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83936B	  %5343:vgpr_32 = nofpexcept V_EXP_F32_e32 %5279:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83952B	  %5344:vgpr_32 = nofpexcept V_EXP_F32_e32 %5280:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83968B	  %5345:vgpr_32 = nofpexcept V_EXP_F32_e32 %5281:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
83984B	  %5346:vgpr_32 = nofpexcept V_EXP_F32_e32 %5282:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84000B	  %5347:vgpr_32 = nofpexcept V_EXP_F32_e32 %5283:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84016B	  %5348:vgpr_32 = nofpexcept V_EXP_F32_e32 %5284:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84032B	  %5349:vgpr_32 = nofpexcept V_EXP_F32_e32 %5285:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84048B	  %5350:vgpr_32 = nofpexcept V_EXP_F32_e32 %5286:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84064B	  %5351:vgpr_32 = nofpexcept V_EXP_F32_e32 %5287:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84080B	  %5352:vgpr_32 = nofpexcept V_EXP_F32_e32 %5288:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84096B	  %5353:vgpr_32 = nofpexcept V_EXP_F32_e32 %5289:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84112B	  %5354:vgpr_32 = nofpexcept V_EXP_F32_e32 %5290:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84128B	  %5355:vgpr_32 = nofpexcept V_EXP_F32_e32 %5291:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84144B	  %5356:vgpr_32 = nofpexcept V_EXP_F32_e32 %5292:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84160B	  %5357:vgpr_32 = nofpexcept V_EXP_F32_e32 %5293:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84176B	  %5358:vgpr_32 = nofpexcept V_EXP_F32_e32 %5294:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84192B	  %5359:vgpr_32 = nofpexcept V_EXP_F32_e32 %5295:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84208B	  %5360:vgpr_32 = nofpexcept V_EXP_F32_e32 %5296:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84224B	  %5361:vgpr_32 = nofpexcept V_EXP_F32_e32 %5297:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84240B	  %5362:vgpr_32 = nofpexcept V_EXP_F32_e32 %5298:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84256B	  %5363:vgpr_32 = nofpexcept V_EXP_F32_e32 %5299:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84272B	  %5364:vgpr_32 = nofpexcept V_EXP_F32_e32 %5300:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84288B	  %5365:vgpr_32 = nofpexcept V_EXP_F32_e32 %5301:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84304B	  %5366:vgpr_32 = nofpexcept V_EXP_F32_e32 %5302:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84320B	  %5367:vgpr_32 = nofpexcept V_EXP_F32_e32 %5303:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84336B	  %5368:vgpr_32 = nofpexcept V_EXP_F32_e32 %5304:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84352B	  %5369:vgpr_32 = nofpexcept V_EXP_F32_e32 %5305:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84368B	  %5370:vgpr_32 = nofpexcept V_EXP_F32_e32 %5306:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84384B	  %5371:vgpr_32 = nofpexcept V_EXP_F32_e32 %5307:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84400B	  %5372:vgpr_32 = nofpexcept V_EXP_F32_e32 %5308:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84416B	  %5373:vgpr_32 = nofpexcept V_EXP_F32_e32 %5309:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84432B	  %5374:vgpr_32 = nofpexcept V_EXP_F32_e32 %5310:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84448B	  %5375:vgpr_32 = nofpexcept V_EXP_F32_e32 %5311:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84464B	  %5376:vgpr_32 = nofpexcept V_EXP_F32_e32 %5312:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84480B	  %5377:vgpr_32 = nofpexcept V_EXP_F32_e32 %5313:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84496B	  %5378:vgpr_32 = nofpexcept V_EXP_F32_e32 %5314:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84512B	  %5379:vgpr_32 = nofpexcept V_EXP_F32_e32 %5315:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84528B	  %5380:vgpr_32 = nofpexcept V_EXP_F32_e32 %5316:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84544B	  %5381:vgpr_32 = nofpexcept V_EXP_F32_e32 %5317:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84560B	  %5382:vgpr_32 = nofpexcept V_EXP_F32_e32 %5318:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84576B	  %5383:vgpr_32 = nofpexcept V_EXP_F32_e32 %5319:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84592B	  %5384:vgpr_32 = nofpexcept V_EXP_F32_e32 %5320:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84608B	  %5385:vgpr_32 = nofpexcept V_EXP_F32_e32 %5321:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84624B	  %5386:vgpr_32 = nofpexcept V_EXP_F32_e32 %5322:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84640B	  %5387:vgpr_32 = nofpexcept V_EXP_F32_e32 %5323:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84656B	  %5388:vgpr_32 = nofpexcept V_EXP_F32_e32 %5324:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84672B	  %5389:vgpr_32 = nofpexcept V_EXP_F32_e32 %5325:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84688B	  %5390:vgpr_32 = nofpexcept V_EXP_F32_e32 %5326:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84704B	  %5391:vgpr_32 = nofpexcept V_EXP_F32_e32 %5327:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84720B	  %5392:vgpr_32 = nofpexcept V_EXP_F32_e32 %5328:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84736B	  %5393:vgpr_32 = nofpexcept V_EXP_F32_e32 %5329:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84752B	  %5394:vgpr_32 = nofpexcept V_EXP_F32_e32 %5330:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84768B	  %5395:vgpr_32 = nofpexcept V_EXP_F32_e32 %5331:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84784B	  %5396:vgpr_32 = nofpexcept V_EXP_F32_e32 %5332:vgpr_32, implicit $mode, implicit $exec, debug-location !105; moe_op_gemm_a8w4.py:115:28 @[ moe_op_gemm_a8w4.py:477:34 ]
84800B	  %5398:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5333:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84816B	  %5399:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5334:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84832B	  %5400:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5335:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84848B	  %5401:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5336:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84864B	  %5402:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5337:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84880B	  %5403:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5338:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84896B	  %5404:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5339:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84912B	  %5405:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5340:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84928B	  %5406:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5341:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84944B	  %5407:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5342:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84960B	  %5408:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5343:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84976B	  %5409:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5344:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
84992B	  %5410:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5345:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85008B	  %5411:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5346:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85024B	  %5412:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5347:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85040B	  %5413:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5348:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85056B	  %5414:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5349:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85072B	  %5415:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5350:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85088B	  %5416:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5351:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85104B	  %5417:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5352:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85120B	  %5418:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5353:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85136B	  %5419:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5354:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85152B	  %5420:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5355:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85168B	  %5421:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5356:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85184B	  %5422:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5357:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85200B	  %5423:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5358:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85216B	  %5424:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5359:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85232B	  %5425:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5360:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85248B	  %5426:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5361:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85264B	  %5427:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5362:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85280B	  %5428:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5363:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85296B	  %5429:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5364:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85312B	  %5430:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5365:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85328B	  %5431:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5366:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85344B	  %5432:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5367:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85360B	  %5433:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5368:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85376B	  %5434:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5369:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85392B	  %5435:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5370:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85408B	  %5436:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5371:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85424B	  %5437:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5372:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85440B	  %5438:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5373:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85456B	  %5439:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5374:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85472B	  %5440:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5375:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85488B	  %5441:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5376:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85504B	  %5442:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5377:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85520B	  %5443:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5378:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85536B	  %5444:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5379:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85552B	  %5445:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5380:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85568B	  %5446:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5381:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85584B	  %5447:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5382:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85600B	  %5448:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5383:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85616B	  %5449:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5384:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85632B	  %5450:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5385:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85648B	  %5451:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5386:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85664B	  %5452:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5387:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85680B	  %5453:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5388:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85696B	  %5454:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5389:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85712B	  %5455:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5390:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85728B	  %5456:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5391:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85744B	  %5457:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5392:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85760B	  %5458:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5393:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85824B	  %5462:vgpr_32, dead %5463:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5398:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85840B	  %5466:vgpr_32 = nofpexcept V_RCP_F32_e32 %5462:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85848B	  %5459:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5394:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85856B	  %5460:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5395:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85864B	  %5461:vgpr_32 = nofpexcept V_ADD_F32_e32 1065353216, %5396:vgpr_32, implicit $mode, implicit $exec, debug-location !106; moe_op_gemm_a8w4.py:115:20 @[ moe_op_gemm_a8w4.py:477:34 ]
85872B	  %5465:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5462:vgpr_32, 0, %5466:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85888B	  %5466:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5465:vgpr_32, %5466:vgpr_32, %5466:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85904B	  %5467:vgpr_32, %5468:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5074:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85920B	  %5471:vgpr_32 = nofpexcept V_MUL_F32_e32 %5467:vgpr_32, %5466:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85936B	  %5470:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5462:vgpr_32, 0, %5471:vgpr_32, 0, %5467:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85968B	  %5471:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5470:vgpr_32, %5466:vgpr_32, %5471:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
85984B	  %5472:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5462:vgpr_32, 0, %5471:vgpr_32, 0, %5467:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86048B	  %5475:vgpr_32, dead %5476:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5399:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86064B	  %5479:vgpr_32 = nofpexcept V_RCP_F32_e32 %5475:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86072B	  $vcc = COPY %5468:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86080B	  %5473:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5472:vgpr_32, 0, %5466:vgpr_32, 0, %5471:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86088B	  %6294:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5473:vgpr_32, 0, %5398:vgpr_32, 0, %5074:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86096B	  %5478:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5475:vgpr_32, 0, %5479:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86112B	  %5479:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5478:vgpr_32, %5479:vgpr_32, %5479:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86128B	  %5480:vgpr_32, %5481:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5075:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86144B	  %5484:vgpr_32 = nofpexcept V_MUL_F32_e32 %5480:vgpr_32, %5479:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86160B	  %5483:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5475:vgpr_32, 0, %5484:vgpr_32, 0, %5480:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86192B	  %5484:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5483:vgpr_32, %5479:vgpr_32, %5484:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86208B	  %5485:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5475:vgpr_32, 0, %5484:vgpr_32, 0, %5480:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86272B	  %5488:vgpr_32, dead %5489:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5400:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86288B	  %5492:vgpr_32 = nofpexcept V_RCP_F32_e32 %5488:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86296B	  $vcc = COPY %5481:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86304B	  %5486:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5485:vgpr_32, 0, %5479:vgpr_32, 0, %5484:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86312B	  %6295:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5486:vgpr_32, 0, %5399:vgpr_32, 0, %5075:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86320B	  %5491:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5488:vgpr_32, 0, %5492:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86336B	  %5492:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5491:vgpr_32, %5492:vgpr_32, %5492:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86352B	  %5493:vgpr_32, %5494:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5076:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86368B	  %5497:vgpr_32 = nofpexcept V_MUL_F32_e32 %5493:vgpr_32, %5492:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86384B	  %5496:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5488:vgpr_32, 0, %5497:vgpr_32, 0, %5493:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86416B	  %5497:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5496:vgpr_32, %5492:vgpr_32, %5497:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86432B	  %5498:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5488:vgpr_32, 0, %5497:vgpr_32, 0, %5493:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86496B	  %5501:vgpr_32, dead %5502:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5401:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86512B	  %5505:vgpr_32 = nofpexcept V_RCP_F32_e32 %5501:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86520B	  $vcc = COPY %5494:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86528B	  %5499:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5498:vgpr_32, 0, %5492:vgpr_32, 0, %5497:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86536B	  %6296:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5499:vgpr_32, 0, %5400:vgpr_32, 0, %5076:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86544B	  %5504:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5501:vgpr_32, 0, %5505:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86560B	  %5505:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5504:vgpr_32, %5505:vgpr_32, %5505:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86576B	  %5506:vgpr_32, %5507:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5077:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86592B	  %5510:vgpr_32 = nofpexcept V_MUL_F32_e32 %5506:vgpr_32, %5505:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86608B	  %5509:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5501:vgpr_32, 0, %5510:vgpr_32, 0, %5506:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86640B	  %5510:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5509:vgpr_32, %5505:vgpr_32, %5510:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86656B	  %5511:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5501:vgpr_32, 0, %5510:vgpr_32, 0, %5506:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86720B	  %5514:vgpr_32, dead %5515:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5402:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86736B	  %5518:vgpr_32 = nofpexcept V_RCP_F32_e32 %5514:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86744B	  $vcc = COPY %5507:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86752B	  %5512:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5511:vgpr_32, 0, %5505:vgpr_32, 0, %5510:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86760B	  %6297:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5512:vgpr_32, 0, %5401:vgpr_32, 0, %5077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86768B	  %5517:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5514:vgpr_32, 0, %5518:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86784B	  %5518:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5517:vgpr_32, %5518:vgpr_32, %5518:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86800B	  %5519:vgpr_32, %5520:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5078:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86816B	  %5523:vgpr_32 = nofpexcept V_MUL_F32_e32 %5519:vgpr_32, %5518:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86832B	  %5522:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5514:vgpr_32, 0, %5523:vgpr_32, 0, %5519:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86864B	  %5523:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5522:vgpr_32, %5518:vgpr_32, %5523:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86880B	  %5524:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5514:vgpr_32, 0, %5523:vgpr_32, 0, %5519:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86944B	  %5527:vgpr_32, dead %5528:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5403:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86960B	  %5531:vgpr_32 = nofpexcept V_RCP_F32_e32 %5527:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86968B	  $vcc = COPY %5520:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86976B	  %5525:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5524:vgpr_32, 0, %5518:vgpr_32, 0, %5523:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86984B	  %6298:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5525:vgpr_32, 0, %5402:vgpr_32, 0, %5078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
86992B	  %5530:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5527:vgpr_32, 0, %5531:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87008B	  %5531:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5530:vgpr_32, %5531:vgpr_32, %5531:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87024B	  %5532:vgpr_32, %5533:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5079:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87040B	  %5536:vgpr_32 = nofpexcept V_MUL_F32_e32 %5532:vgpr_32, %5531:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87056B	  %5535:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5527:vgpr_32, 0, %5536:vgpr_32, 0, %5532:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87088B	  %5536:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5535:vgpr_32, %5531:vgpr_32, %5536:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87104B	  %5537:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5527:vgpr_32, 0, %5536:vgpr_32, 0, %5532:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87168B	  %5540:vgpr_32, dead %5541:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5404:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87184B	  %5544:vgpr_32 = nofpexcept V_RCP_F32_e32 %5540:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87192B	  $vcc = COPY %5533:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87200B	  %5538:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5537:vgpr_32, 0, %5531:vgpr_32, 0, %5536:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87208B	  %6299:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5538:vgpr_32, 0, %5403:vgpr_32, 0, %5079:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87216B	  %5543:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5540:vgpr_32, 0, %5544:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87232B	  %5544:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5543:vgpr_32, %5544:vgpr_32, %5544:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87248B	  %5545:vgpr_32, %5546:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5080:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87264B	  %5549:vgpr_32 = nofpexcept V_MUL_F32_e32 %5545:vgpr_32, %5544:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87280B	  %5548:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5540:vgpr_32, 0, %5549:vgpr_32, 0, %5545:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87312B	  %5549:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5548:vgpr_32, %5544:vgpr_32, %5549:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87328B	  %5550:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5540:vgpr_32, 0, %5549:vgpr_32, 0, %5545:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87392B	  %5553:vgpr_32, dead %5554:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5405:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87408B	  %5557:vgpr_32 = nofpexcept V_RCP_F32_e32 %5553:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87416B	  $vcc = COPY %5546:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87424B	  %5551:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5550:vgpr_32, 0, %5544:vgpr_32, 0, %5549:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87432B	  %6300:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5551:vgpr_32, 0, %5404:vgpr_32, 0, %5080:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87440B	  %5556:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5553:vgpr_32, 0, %5557:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87456B	  %5557:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5556:vgpr_32, %5557:vgpr_32, %5557:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87472B	  %5558:vgpr_32, %5559:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5081:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87488B	  %5562:vgpr_32 = nofpexcept V_MUL_F32_e32 %5558:vgpr_32, %5557:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87504B	  %5561:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5553:vgpr_32, 0, %5562:vgpr_32, 0, %5558:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87536B	  %5562:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5561:vgpr_32, %5557:vgpr_32, %5562:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87552B	  %5563:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5553:vgpr_32, 0, %5562:vgpr_32, 0, %5558:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87616B	  %5566:vgpr_32, dead %5567:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5406:vgpr_32, 0, %5406:vgpr_32, 0, %5082:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87632B	  %5570:vgpr_32 = nofpexcept V_RCP_F32_e32 %5566:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87640B	  $vcc = COPY %5559:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87648B	  %5564:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5563:vgpr_32, 0, %5557:vgpr_32, 0, %5562:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87656B	  %6301:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5564:vgpr_32, 0, %5405:vgpr_32, 0, %5081:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87664B	  %5569:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5566:vgpr_32, 0, %5570:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87680B	  %5570:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5569:vgpr_32, %5570:vgpr_32, %5570:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87696B	  %5571:vgpr_32, %5572:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5082:vgpr_32, 0, %5406:vgpr_32, 0, %5082:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87712B	  %5575:vgpr_32 = nofpexcept V_MUL_F32_e32 %5571:vgpr_32, %5570:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87728B	  %5574:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5566:vgpr_32, 0, %5575:vgpr_32, 0, %5571:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87760B	  %5575:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5574:vgpr_32, %5570:vgpr_32, %5575:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87776B	  %5576:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5566:vgpr_32, 0, %5575:vgpr_32, 0, %5571:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87840B	  %5579:vgpr_32, dead %5580:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5407:vgpr_32, 0, %5407:vgpr_32, 0, %5083:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87856B	  %5583:vgpr_32 = nofpexcept V_RCP_F32_e32 %5579:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87864B	  $vcc = COPY %5572:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87872B	  %5577:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5576:vgpr_32, 0, %5570:vgpr_32, 0, %5575:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87880B	  %6302:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5577:vgpr_32, 0, %5406:vgpr_32, 0, %5082:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87888B	  %5582:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5579:vgpr_32, 0, %5583:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87904B	  %5583:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5582:vgpr_32, %5583:vgpr_32, %5583:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87920B	  %5584:vgpr_32, %5585:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5083:vgpr_32, 0, %5407:vgpr_32, 0, %5083:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87936B	  %5588:vgpr_32 = nofpexcept V_MUL_F32_e32 %5584:vgpr_32, %5583:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87952B	  %5587:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5579:vgpr_32, 0, %5588:vgpr_32, 0, %5584:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
87984B	  %5588:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5587:vgpr_32, %5583:vgpr_32, %5588:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88000B	  %5589:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5579:vgpr_32, 0, %5588:vgpr_32, 0, %5584:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88064B	  %5592:vgpr_32, dead %5593:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5408:vgpr_32, 0, %5408:vgpr_32, 0, %5084:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88080B	  %5596:vgpr_32 = nofpexcept V_RCP_F32_e32 %5592:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88088B	  $vcc = COPY %5585:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88096B	  %5590:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5589:vgpr_32, 0, %5583:vgpr_32, 0, %5588:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88104B	  %6303:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5590:vgpr_32, 0, %5407:vgpr_32, 0, %5083:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88112B	  %5595:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5592:vgpr_32, 0, %5596:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88128B	  %5596:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5595:vgpr_32, %5596:vgpr_32, %5596:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88144B	  %5597:vgpr_32, %5598:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5084:vgpr_32, 0, %5408:vgpr_32, 0, %5084:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88160B	  %5601:vgpr_32 = nofpexcept V_MUL_F32_e32 %5597:vgpr_32, %5596:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88176B	  %5600:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5592:vgpr_32, 0, %5601:vgpr_32, 0, %5597:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88208B	  %5601:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5600:vgpr_32, %5596:vgpr_32, %5601:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88224B	  %5602:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5592:vgpr_32, 0, %5601:vgpr_32, 0, %5597:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88288B	  %5605:vgpr_32, dead %5606:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5409:vgpr_32, 0, %5409:vgpr_32, 0, %5085:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88304B	  %5609:vgpr_32 = nofpexcept V_RCP_F32_e32 %5605:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88312B	  $vcc = COPY %5598:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88320B	  %5603:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5602:vgpr_32, 0, %5596:vgpr_32, 0, %5601:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88328B	  %6304:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5603:vgpr_32, 0, %5408:vgpr_32, 0, %5084:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88336B	  %5608:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5605:vgpr_32, 0, %5609:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88352B	  %5609:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5608:vgpr_32, %5609:vgpr_32, %5609:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88368B	  %5610:vgpr_32, %5611:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5085:vgpr_32, 0, %5409:vgpr_32, 0, %5085:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88384B	  %5614:vgpr_32 = nofpexcept V_MUL_F32_e32 %5610:vgpr_32, %5609:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88400B	  %5613:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5605:vgpr_32, 0, %5614:vgpr_32, 0, %5610:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88432B	  %5614:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5613:vgpr_32, %5609:vgpr_32, %5614:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88448B	  %5615:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5605:vgpr_32, 0, %5614:vgpr_32, 0, %5610:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88512B	  %5618:vgpr_32, dead %5619:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5410:vgpr_32, 0, %5410:vgpr_32, 0, %5086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88528B	  %5622:vgpr_32 = nofpexcept V_RCP_F32_e32 %5618:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88536B	  $vcc = COPY %5611:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88544B	  %5616:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5615:vgpr_32, 0, %5609:vgpr_32, 0, %5614:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88552B	  %6305:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5616:vgpr_32, 0, %5409:vgpr_32, 0, %5085:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88560B	  %5621:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5618:vgpr_32, 0, %5622:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88576B	  %5622:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5621:vgpr_32, %5622:vgpr_32, %5622:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88592B	  %5623:vgpr_32, %5624:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5086:vgpr_32, 0, %5410:vgpr_32, 0, %5086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88608B	  %5627:vgpr_32 = nofpexcept V_MUL_F32_e32 %5623:vgpr_32, %5622:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88624B	  %5626:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5618:vgpr_32, 0, %5627:vgpr_32, 0, %5623:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88656B	  %5627:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5626:vgpr_32, %5622:vgpr_32, %5627:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88672B	  %5628:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5618:vgpr_32, 0, %5627:vgpr_32, 0, %5623:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88736B	  %5631:vgpr_32, dead %5632:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5411:vgpr_32, 0, %5411:vgpr_32, 0, %5087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88752B	  %5635:vgpr_32 = nofpexcept V_RCP_F32_e32 %5631:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88760B	  $vcc = COPY %5624:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88768B	  %5629:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5628:vgpr_32, 0, %5622:vgpr_32, 0, %5627:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88776B	  %6306:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5629:vgpr_32, 0, %5410:vgpr_32, 0, %5086:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88784B	  %5634:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5631:vgpr_32, 0, %5635:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88800B	  %5635:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5634:vgpr_32, %5635:vgpr_32, %5635:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88816B	  %5636:vgpr_32, %5637:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5087:vgpr_32, 0, %5411:vgpr_32, 0, %5087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88832B	  %5640:vgpr_32 = nofpexcept V_MUL_F32_e32 %5636:vgpr_32, %5635:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88848B	  %5639:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5631:vgpr_32, 0, %5640:vgpr_32, 0, %5636:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88880B	  %5640:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5639:vgpr_32, %5635:vgpr_32, %5640:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88896B	  %5641:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5631:vgpr_32, 0, %5640:vgpr_32, 0, %5636:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88960B	  %5644:vgpr_32, dead %5645:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5412:vgpr_32, 0, %5412:vgpr_32, 0, %5088:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88976B	  %5648:vgpr_32 = nofpexcept V_RCP_F32_e32 %5644:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88984B	  $vcc = COPY %5637:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
88992B	  %5642:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5641:vgpr_32, 0, %5635:vgpr_32, 0, %5640:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89000B	  %6307:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5642:vgpr_32, 0, %5411:vgpr_32, 0, %5087:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89008B	  %5647:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5644:vgpr_32, 0, %5648:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89024B	  %5648:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5647:vgpr_32, %5648:vgpr_32, %5648:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89040B	  %5649:vgpr_32, %5650:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5088:vgpr_32, 0, %5412:vgpr_32, 0, %5088:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89056B	  %5653:vgpr_32 = nofpexcept V_MUL_F32_e32 %5649:vgpr_32, %5648:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89072B	  %5652:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5644:vgpr_32, 0, %5653:vgpr_32, 0, %5649:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89104B	  %5653:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5652:vgpr_32, %5648:vgpr_32, %5653:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89120B	  %5654:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5644:vgpr_32, 0, %5653:vgpr_32, 0, %5649:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89184B	  %5657:vgpr_32, dead %5658:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5413:vgpr_32, 0, %5413:vgpr_32, 0, %5089:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89200B	  %5661:vgpr_32 = nofpexcept V_RCP_F32_e32 %5657:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89208B	  $vcc = COPY %5650:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89216B	  %5655:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5654:vgpr_32, 0, %5648:vgpr_32, 0, %5653:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89224B	  %6308:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5655:vgpr_32, 0, %5412:vgpr_32, 0, %5088:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89232B	  %5660:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5657:vgpr_32, 0, %5661:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89248B	  %5661:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5660:vgpr_32, %5661:vgpr_32, %5661:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89264B	  %5662:vgpr_32, %5663:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5089:vgpr_32, 0, %5413:vgpr_32, 0, %5089:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89280B	  %5666:vgpr_32 = nofpexcept V_MUL_F32_e32 %5662:vgpr_32, %5661:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89296B	  %5665:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5657:vgpr_32, 0, %5666:vgpr_32, 0, %5662:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89328B	  %5666:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5665:vgpr_32, %5661:vgpr_32, %5666:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89344B	  %5667:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5657:vgpr_32, 0, %5666:vgpr_32, 0, %5662:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89408B	  %5670:vgpr_32, dead %5671:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5414:vgpr_32, 0, %5414:vgpr_32, 0, %5090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89424B	  %5674:vgpr_32 = nofpexcept V_RCP_F32_e32 %5670:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89432B	  $vcc = COPY %5663:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89440B	  %5668:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5667:vgpr_32, 0, %5661:vgpr_32, 0, %5666:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89448B	  %6309:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5668:vgpr_32, 0, %5413:vgpr_32, 0, %5089:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89456B	  %5673:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5670:vgpr_32, 0, %5674:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89472B	  %5674:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5673:vgpr_32, %5674:vgpr_32, %5674:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89488B	  %5675:vgpr_32, %5676:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5090:vgpr_32, 0, %5414:vgpr_32, 0, %5090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89504B	  %5679:vgpr_32 = nofpexcept V_MUL_F32_e32 %5675:vgpr_32, %5674:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89520B	  %5678:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5670:vgpr_32, 0, %5679:vgpr_32, 0, %5675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89552B	  %5679:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5678:vgpr_32, %5674:vgpr_32, %5679:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89568B	  %5680:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5670:vgpr_32, 0, %5679:vgpr_32, 0, %5675:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89632B	  %5683:vgpr_32, dead %5684:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5415:vgpr_32, 0, %5415:vgpr_32, 0, %5091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89648B	  %5687:vgpr_32 = nofpexcept V_RCP_F32_e32 %5683:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89656B	  $vcc = COPY %5676:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89664B	  %5681:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5680:vgpr_32, 0, %5674:vgpr_32, 0, %5679:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89672B	  %6310:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5681:vgpr_32, 0, %5414:vgpr_32, 0, %5090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89680B	  %5686:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5683:vgpr_32, 0, %5687:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89696B	  %5687:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5686:vgpr_32, %5687:vgpr_32, %5687:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89712B	  %5688:vgpr_32, %5689:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5091:vgpr_32, 0, %5415:vgpr_32, 0, %5091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89728B	  %5692:vgpr_32 = nofpexcept V_MUL_F32_e32 %5688:vgpr_32, %5687:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89744B	  %5691:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5683:vgpr_32, 0, %5692:vgpr_32, 0, %5688:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89776B	  %5692:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5691:vgpr_32, %5687:vgpr_32, %5692:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89792B	  %5693:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5683:vgpr_32, 0, %5692:vgpr_32, 0, %5688:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89856B	  %5696:vgpr_32, dead %5697:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5416:vgpr_32, 0, %5416:vgpr_32, 0, %5092:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89872B	  %5700:vgpr_32 = nofpexcept V_RCP_F32_e32 %5696:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89880B	  $vcc = COPY %5689:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89888B	  %5694:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5693:vgpr_32, 0, %5687:vgpr_32, 0, %5692:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89896B	  %6311:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5694:vgpr_32, 0, %5415:vgpr_32, 0, %5091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89904B	  %5699:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5696:vgpr_32, 0, %5700:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89920B	  %5700:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5699:vgpr_32, %5700:vgpr_32, %5700:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89936B	  %5701:vgpr_32, %5702:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5092:vgpr_32, 0, %5416:vgpr_32, 0, %5092:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89952B	  %5705:vgpr_32 = nofpexcept V_MUL_F32_e32 %5701:vgpr_32, %5700:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
89968B	  %5704:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5696:vgpr_32, 0, %5705:vgpr_32, 0, %5701:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90000B	  %5705:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5704:vgpr_32, %5700:vgpr_32, %5705:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90016B	  %5706:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5696:vgpr_32, 0, %5705:vgpr_32, 0, %5701:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90080B	  %5709:vgpr_32, dead %5710:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5417:vgpr_32, 0, %5417:vgpr_32, 0, %5093:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90096B	  %5713:vgpr_32 = nofpexcept V_RCP_F32_e32 %5709:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90104B	  $vcc = COPY %5702:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90112B	  %5707:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5706:vgpr_32, 0, %5700:vgpr_32, 0, %5705:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90120B	  %6312:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5707:vgpr_32, 0, %5416:vgpr_32, 0, %5092:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90128B	  %5712:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5709:vgpr_32, 0, %5713:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90144B	  %5713:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5712:vgpr_32, %5713:vgpr_32, %5713:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90160B	  %5714:vgpr_32, %5715:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5093:vgpr_32, 0, %5417:vgpr_32, 0, %5093:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90176B	  %5718:vgpr_32 = nofpexcept V_MUL_F32_e32 %5714:vgpr_32, %5713:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90192B	  %5717:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5709:vgpr_32, 0, %5718:vgpr_32, 0, %5714:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90224B	  %5718:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5717:vgpr_32, %5713:vgpr_32, %5718:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90240B	  %5719:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5709:vgpr_32, 0, %5718:vgpr_32, 0, %5714:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90304B	  %5722:vgpr_32, dead %5723:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5418:vgpr_32, 0, %5418:vgpr_32, 0, %5094:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90320B	  %5726:vgpr_32 = nofpexcept V_RCP_F32_e32 %5722:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90328B	  $vcc = COPY %5715:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90336B	  %5720:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5719:vgpr_32, 0, %5713:vgpr_32, 0, %5718:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90344B	  %6313:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5720:vgpr_32, 0, %5417:vgpr_32, 0, %5093:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90352B	  %5725:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5722:vgpr_32, 0, %5726:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90368B	  %5726:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5725:vgpr_32, %5726:vgpr_32, %5726:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90384B	  %5727:vgpr_32, %5728:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5094:vgpr_32, 0, %5418:vgpr_32, 0, %5094:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90400B	  %5731:vgpr_32 = nofpexcept V_MUL_F32_e32 %5727:vgpr_32, %5726:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90416B	  %5730:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5722:vgpr_32, 0, %5731:vgpr_32, 0, %5727:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90448B	  %5731:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5730:vgpr_32, %5726:vgpr_32, %5731:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90464B	  %5732:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5722:vgpr_32, 0, %5731:vgpr_32, 0, %5727:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90528B	  %5735:vgpr_32, dead %5736:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5419:vgpr_32, 0, %5419:vgpr_32, 0, %5095:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90544B	  %5739:vgpr_32 = nofpexcept V_RCP_F32_e32 %5735:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90552B	  $vcc = COPY %5728:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90560B	  %5733:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5732:vgpr_32, 0, %5726:vgpr_32, 0, %5731:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90568B	  %6314:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5733:vgpr_32, 0, %5418:vgpr_32, 0, %5094:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90576B	  %5738:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5735:vgpr_32, 0, %5739:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90592B	  %5739:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5738:vgpr_32, %5739:vgpr_32, %5739:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90608B	  %5740:vgpr_32, %5741:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5095:vgpr_32, 0, %5419:vgpr_32, 0, %5095:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90624B	  %5744:vgpr_32 = nofpexcept V_MUL_F32_e32 %5740:vgpr_32, %5739:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90640B	  %5743:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5735:vgpr_32, 0, %5744:vgpr_32, 0, %5740:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90672B	  %5744:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5743:vgpr_32, %5739:vgpr_32, %5744:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90688B	  %5745:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5735:vgpr_32, 0, %5744:vgpr_32, 0, %5740:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90752B	  %5748:vgpr_32, dead %5749:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5420:vgpr_32, 0, %5420:vgpr_32, 0, %5096:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90768B	  %5752:vgpr_32 = nofpexcept V_RCP_F32_e32 %5748:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90776B	  $vcc = COPY %5741:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90784B	  %5746:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5745:vgpr_32, 0, %5739:vgpr_32, 0, %5744:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90792B	  %6315:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5746:vgpr_32, 0, %5419:vgpr_32, 0, %5095:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90800B	  %5751:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5748:vgpr_32, 0, %5752:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90816B	  %5752:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5751:vgpr_32, %5752:vgpr_32, %5752:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90832B	  %5753:vgpr_32, %5754:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5096:vgpr_32, 0, %5420:vgpr_32, 0, %5096:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90848B	  %5757:vgpr_32 = nofpexcept V_MUL_F32_e32 %5753:vgpr_32, %5752:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90864B	  %5756:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5748:vgpr_32, 0, %5757:vgpr_32, 0, %5753:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90896B	  %5757:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5756:vgpr_32, %5752:vgpr_32, %5757:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90912B	  %5758:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5748:vgpr_32, 0, %5757:vgpr_32, 0, %5753:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90976B	  %5761:vgpr_32, dead %5762:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5421:vgpr_32, 0, %5421:vgpr_32, 0, %5097:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
90992B	  %5765:vgpr_32 = nofpexcept V_RCP_F32_e32 %5761:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91000B	  $vcc = COPY %5754:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91008B	  %5759:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5758:vgpr_32, 0, %5752:vgpr_32, 0, %5757:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91016B	  %6316:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5759:vgpr_32, 0, %5420:vgpr_32, 0, %5096:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91024B	  %5764:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5761:vgpr_32, 0, %5765:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91040B	  %5765:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5764:vgpr_32, %5765:vgpr_32, %5765:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91056B	  %5766:vgpr_32, %5767:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5097:vgpr_32, 0, %5421:vgpr_32, 0, %5097:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91072B	  %5770:vgpr_32 = nofpexcept V_MUL_F32_e32 %5766:vgpr_32, %5765:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91088B	  %5769:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5761:vgpr_32, 0, %5770:vgpr_32, 0, %5766:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91120B	  %5770:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5769:vgpr_32, %5765:vgpr_32, %5770:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91136B	  %5771:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5761:vgpr_32, 0, %5770:vgpr_32, 0, %5766:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91200B	  %5774:vgpr_32, dead %5775:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5422:vgpr_32, 0, %5422:vgpr_32, 0, %5098:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91216B	  %5778:vgpr_32 = nofpexcept V_RCP_F32_e32 %5774:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91224B	  $vcc = COPY %5767:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91232B	  %5772:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5771:vgpr_32, 0, %5765:vgpr_32, 0, %5770:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91240B	  %6317:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5772:vgpr_32, 0, %5421:vgpr_32, 0, %5097:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91248B	  %5777:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5774:vgpr_32, 0, %5778:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91264B	  %5778:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5777:vgpr_32, %5778:vgpr_32, %5778:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91280B	  %5779:vgpr_32, %5780:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5098:vgpr_32, 0, %5422:vgpr_32, 0, %5098:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91296B	  %5783:vgpr_32 = nofpexcept V_MUL_F32_e32 %5779:vgpr_32, %5778:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91312B	  %5782:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5774:vgpr_32, 0, %5783:vgpr_32, 0, %5779:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91344B	  %5783:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5782:vgpr_32, %5778:vgpr_32, %5783:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91360B	  %5784:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5774:vgpr_32, 0, %5783:vgpr_32, 0, %5779:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91424B	  %5787:vgpr_32, dead %5788:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5423:vgpr_32, 0, %5423:vgpr_32, 0, %5099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91440B	  %5791:vgpr_32 = nofpexcept V_RCP_F32_e32 %5787:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91448B	  $vcc = COPY %5780:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91456B	  %5785:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5784:vgpr_32, 0, %5778:vgpr_32, 0, %5783:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91464B	  %6318:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5785:vgpr_32, 0, %5422:vgpr_32, 0, %5098:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91472B	  %5790:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5787:vgpr_32, 0, %5791:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91488B	  %5791:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5790:vgpr_32, %5791:vgpr_32, %5791:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91504B	  %5792:vgpr_32, %5793:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5099:vgpr_32, 0, %5423:vgpr_32, 0, %5099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91520B	  %5796:vgpr_32 = nofpexcept V_MUL_F32_e32 %5792:vgpr_32, %5791:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91536B	  %5795:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5787:vgpr_32, 0, %5796:vgpr_32, 0, %5792:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91568B	  %5796:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5795:vgpr_32, %5791:vgpr_32, %5796:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91584B	  %5797:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5787:vgpr_32, 0, %5796:vgpr_32, 0, %5792:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91648B	  %5800:vgpr_32, dead %5801:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5424:vgpr_32, 0, %5424:vgpr_32, 0, %5100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91664B	  %5804:vgpr_32 = nofpexcept V_RCP_F32_e32 %5800:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91672B	  $vcc = COPY %5793:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91680B	  %5798:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5797:vgpr_32, 0, %5791:vgpr_32, 0, %5796:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91688B	  %6319:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5798:vgpr_32, 0, %5423:vgpr_32, 0, %5099:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91696B	  %5803:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5800:vgpr_32, 0, %5804:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91712B	  %5804:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5803:vgpr_32, %5804:vgpr_32, %5804:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91728B	  %5805:vgpr_32, %5806:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5100:vgpr_32, 0, %5424:vgpr_32, 0, %5100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91744B	  %5809:vgpr_32 = nofpexcept V_MUL_F32_e32 %5805:vgpr_32, %5804:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91760B	  %5808:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5800:vgpr_32, 0, %5809:vgpr_32, 0, %5805:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91792B	  %5809:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5808:vgpr_32, %5804:vgpr_32, %5809:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91808B	  %5810:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5800:vgpr_32, 0, %5809:vgpr_32, 0, %5805:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91872B	  %5813:vgpr_32, dead %5814:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5425:vgpr_32, 0, %5425:vgpr_32, 0, %5101:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91888B	  %5817:vgpr_32 = nofpexcept V_RCP_F32_e32 %5813:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91896B	  $vcc = COPY %5806:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91904B	  %5811:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5810:vgpr_32, 0, %5804:vgpr_32, 0, %5809:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91912B	  %6320:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5811:vgpr_32, 0, %5424:vgpr_32, 0, %5100:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91920B	  %5816:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5813:vgpr_32, 0, %5817:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91936B	  %5817:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5816:vgpr_32, %5817:vgpr_32, %5817:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91952B	  %5818:vgpr_32, %5819:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5101:vgpr_32, 0, %5425:vgpr_32, 0, %5101:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91968B	  %5822:vgpr_32 = nofpexcept V_MUL_F32_e32 %5818:vgpr_32, %5817:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
91984B	  %5821:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5813:vgpr_32, 0, %5822:vgpr_32, 0, %5818:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92016B	  %5822:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5821:vgpr_32, %5817:vgpr_32, %5822:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92032B	  %5823:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5813:vgpr_32, 0, %5822:vgpr_32, 0, %5818:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92096B	  %5826:vgpr_32, dead %5827:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5426:vgpr_32, 0, %5426:vgpr_32, 0, %5102:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92112B	  %5830:vgpr_32 = nofpexcept V_RCP_F32_e32 %5826:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92120B	  $vcc = COPY %5819:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92128B	  %5824:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5823:vgpr_32, 0, %5817:vgpr_32, 0, %5822:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92136B	  %6321:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5824:vgpr_32, 0, %5425:vgpr_32, 0, %5101:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92144B	  %5829:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5826:vgpr_32, 0, %5830:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92160B	  %5830:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5829:vgpr_32, %5830:vgpr_32, %5830:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92176B	  %5831:vgpr_32, %5832:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5102:vgpr_32, 0, %5426:vgpr_32, 0, %5102:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92192B	  %5835:vgpr_32 = nofpexcept V_MUL_F32_e32 %5831:vgpr_32, %5830:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92208B	  %5834:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5826:vgpr_32, 0, %5835:vgpr_32, 0, %5831:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92240B	  %5835:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5834:vgpr_32, %5830:vgpr_32, %5835:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92256B	  %5836:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5826:vgpr_32, 0, %5835:vgpr_32, 0, %5831:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92320B	  %5839:vgpr_32, dead %5840:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5427:vgpr_32, 0, %5427:vgpr_32, 0, %5103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92336B	  %5843:vgpr_32 = nofpexcept V_RCP_F32_e32 %5839:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92344B	  $vcc = COPY %5832:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92352B	  %5837:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5836:vgpr_32, 0, %5830:vgpr_32, 0, %5835:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92360B	  %6322:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5837:vgpr_32, 0, %5426:vgpr_32, 0, %5102:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92368B	  %5842:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5839:vgpr_32, 0, %5843:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92384B	  %5843:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5842:vgpr_32, %5843:vgpr_32, %5843:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92400B	  %5844:vgpr_32, %5845:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5103:vgpr_32, 0, %5427:vgpr_32, 0, %5103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92416B	  %5848:vgpr_32 = nofpexcept V_MUL_F32_e32 %5844:vgpr_32, %5843:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92432B	  %5847:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5839:vgpr_32, 0, %5848:vgpr_32, 0, %5844:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92464B	  %5848:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5847:vgpr_32, %5843:vgpr_32, %5848:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92480B	  %5849:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5839:vgpr_32, 0, %5848:vgpr_32, 0, %5844:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92544B	  %5852:vgpr_32, dead %5853:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5428:vgpr_32, 0, %5428:vgpr_32, 0, %5104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92560B	  %5856:vgpr_32 = nofpexcept V_RCP_F32_e32 %5852:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92568B	  $vcc = COPY %5845:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92576B	  %5850:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5849:vgpr_32, 0, %5843:vgpr_32, 0, %5848:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92584B	  %6323:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5850:vgpr_32, 0, %5427:vgpr_32, 0, %5103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92592B	  %5855:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5852:vgpr_32, 0, %5856:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92608B	  %5856:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5855:vgpr_32, %5856:vgpr_32, %5856:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92624B	  %5857:vgpr_32, %5858:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5104:vgpr_32, 0, %5428:vgpr_32, 0, %5104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92640B	  %5861:vgpr_32 = nofpexcept V_MUL_F32_e32 %5857:vgpr_32, %5856:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92656B	  %5860:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5852:vgpr_32, 0, %5861:vgpr_32, 0, %5857:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92688B	  %5861:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5860:vgpr_32, %5856:vgpr_32, %5861:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92704B	  %5862:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5852:vgpr_32, 0, %5861:vgpr_32, 0, %5857:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92768B	  %5865:vgpr_32, dead %5866:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5429:vgpr_32, 0, %5429:vgpr_32, 0, %5105:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92784B	  %5869:vgpr_32 = nofpexcept V_RCP_F32_e32 %5865:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92792B	  $vcc = COPY %5858:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92800B	  %5863:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5862:vgpr_32, 0, %5856:vgpr_32, 0, %5861:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92808B	  %6324:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5863:vgpr_32, 0, %5428:vgpr_32, 0, %5104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92816B	  %5868:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5865:vgpr_32, 0, %5869:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92832B	  %5869:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5868:vgpr_32, %5869:vgpr_32, %5869:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92848B	  %5870:vgpr_32, %5871:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5105:vgpr_32, 0, %5429:vgpr_32, 0, %5105:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92864B	  %5874:vgpr_32 = nofpexcept V_MUL_F32_e32 %5870:vgpr_32, %5869:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92880B	  %5873:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5865:vgpr_32, 0, %5874:vgpr_32, 0, %5870:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92912B	  %5874:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5873:vgpr_32, %5869:vgpr_32, %5874:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92928B	  %5875:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5865:vgpr_32, 0, %5874:vgpr_32, 0, %5870:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
92992B	  %5878:vgpr_32, dead %5879:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5430:vgpr_32, 0, %5430:vgpr_32, 0, %5106:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93008B	  %5882:vgpr_32 = nofpexcept V_RCP_F32_e32 %5878:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93016B	  $vcc = COPY %5871:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93024B	  %5876:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5875:vgpr_32, 0, %5869:vgpr_32, 0, %5874:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93032B	  %6325:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5876:vgpr_32, 0, %5429:vgpr_32, 0, %5105:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93040B	  %5881:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5878:vgpr_32, 0, %5882:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93056B	  %5882:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5881:vgpr_32, %5882:vgpr_32, %5882:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93072B	  %5883:vgpr_32, %5884:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5106:vgpr_32, 0, %5430:vgpr_32, 0, %5106:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93088B	  %5887:vgpr_32 = nofpexcept V_MUL_F32_e32 %5883:vgpr_32, %5882:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93104B	  %5886:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5878:vgpr_32, 0, %5887:vgpr_32, 0, %5883:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93136B	  %5887:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5886:vgpr_32, %5882:vgpr_32, %5887:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93152B	  %5888:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5878:vgpr_32, 0, %5887:vgpr_32, 0, %5883:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93216B	  %5891:vgpr_32, dead %5892:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5431:vgpr_32, 0, %5431:vgpr_32, 0, %5107:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93232B	  %5895:vgpr_32 = nofpexcept V_RCP_F32_e32 %5891:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93240B	  $vcc = COPY %5884:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93248B	  %5889:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5888:vgpr_32, 0, %5882:vgpr_32, 0, %5887:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93256B	  %6326:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5889:vgpr_32, 0, %5430:vgpr_32, 0, %5106:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93264B	  %5894:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5891:vgpr_32, 0, %5895:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93280B	  %5895:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5894:vgpr_32, %5895:vgpr_32, %5895:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93296B	  %5896:vgpr_32, %5897:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5107:vgpr_32, 0, %5431:vgpr_32, 0, %5107:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93312B	  %5900:vgpr_32 = nofpexcept V_MUL_F32_e32 %5896:vgpr_32, %5895:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93328B	  %5899:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5891:vgpr_32, 0, %5900:vgpr_32, 0, %5896:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93360B	  %5900:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5899:vgpr_32, %5895:vgpr_32, %5900:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93376B	  %5901:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5891:vgpr_32, 0, %5900:vgpr_32, 0, %5896:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93440B	  %5904:vgpr_32, dead %5905:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5432:vgpr_32, 0, %5432:vgpr_32, 0, %5108:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93456B	  %5908:vgpr_32 = nofpexcept V_RCP_F32_e32 %5904:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93464B	  $vcc = COPY %5897:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93472B	  %5902:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5901:vgpr_32, 0, %5895:vgpr_32, 0, %5900:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93480B	  %6327:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5902:vgpr_32, 0, %5431:vgpr_32, 0, %5107:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93488B	  %5907:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5904:vgpr_32, 0, %5908:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93504B	  %5908:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5907:vgpr_32, %5908:vgpr_32, %5908:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93520B	  %5909:vgpr_32, %5910:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5108:vgpr_32, 0, %5432:vgpr_32, 0, %5108:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93536B	  %5913:vgpr_32 = nofpexcept V_MUL_F32_e32 %5909:vgpr_32, %5908:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93552B	  %5912:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5904:vgpr_32, 0, %5913:vgpr_32, 0, %5909:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93584B	  %5913:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5912:vgpr_32, %5908:vgpr_32, %5913:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93600B	  %5914:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5904:vgpr_32, 0, %5913:vgpr_32, 0, %5909:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93664B	  %5917:vgpr_32, dead %5918:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5433:vgpr_32, 0, %5433:vgpr_32, 0, %5109:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93680B	  %5921:vgpr_32 = nofpexcept V_RCP_F32_e32 %5917:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93688B	  $vcc = COPY %5910:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93696B	  %5915:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5914:vgpr_32, 0, %5908:vgpr_32, 0, %5913:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93704B	  %6328:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5915:vgpr_32, 0, %5432:vgpr_32, 0, %5108:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93712B	  %5920:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5917:vgpr_32, 0, %5921:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93728B	  %5921:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5920:vgpr_32, %5921:vgpr_32, %5921:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93744B	  %5922:vgpr_32, %5923:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5109:vgpr_32, 0, %5433:vgpr_32, 0, %5109:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93760B	  %5926:vgpr_32 = nofpexcept V_MUL_F32_e32 %5922:vgpr_32, %5921:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93776B	  %5925:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5917:vgpr_32, 0, %5926:vgpr_32, 0, %5922:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93808B	  %5926:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5925:vgpr_32, %5921:vgpr_32, %5926:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93824B	  %5927:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5917:vgpr_32, 0, %5926:vgpr_32, 0, %5922:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93888B	  %5930:vgpr_32, dead %5931:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5434:vgpr_32, 0, %5434:vgpr_32, 0, %5110:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93904B	  %5934:vgpr_32 = nofpexcept V_RCP_F32_e32 %5930:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93912B	  $vcc = COPY %5923:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93920B	  %5928:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5927:vgpr_32, 0, %5921:vgpr_32, 0, %5926:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93928B	  %6329:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5928:vgpr_32, 0, %5433:vgpr_32, 0, %5109:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93936B	  %5933:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5930:vgpr_32, 0, %5934:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93952B	  %5934:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5933:vgpr_32, %5934:vgpr_32, %5934:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93968B	  %5935:vgpr_32, %5936:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5110:vgpr_32, 0, %5434:vgpr_32, 0, %5110:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
93984B	  %5939:vgpr_32 = nofpexcept V_MUL_F32_e32 %5935:vgpr_32, %5934:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94000B	  %5938:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5930:vgpr_32, 0, %5939:vgpr_32, 0, %5935:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94032B	  %5939:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5938:vgpr_32, %5934:vgpr_32, %5939:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94048B	  %5940:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5930:vgpr_32, 0, %5939:vgpr_32, 0, %5935:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94112B	  %5943:vgpr_32, dead %5944:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5435:vgpr_32, 0, %5435:vgpr_32, 0, %5111:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94128B	  %5947:vgpr_32 = nofpexcept V_RCP_F32_e32 %5943:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94136B	  $vcc = COPY %5936:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94144B	  %5941:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5940:vgpr_32, 0, %5934:vgpr_32, 0, %5939:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94152B	  %6330:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5941:vgpr_32, 0, %5434:vgpr_32, 0, %5110:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94160B	  %5946:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5943:vgpr_32, 0, %5947:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94176B	  %5947:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5946:vgpr_32, %5947:vgpr_32, %5947:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94192B	  %5948:vgpr_32, %5949:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5111:vgpr_32, 0, %5435:vgpr_32, 0, %5111:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94208B	  %5952:vgpr_32 = nofpexcept V_MUL_F32_e32 %5948:vgpr_32, %5947:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94224B	  %5951:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5943:vgpr_32, 0, %5952:vgpr_32, 0, %5948:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94256B	  %5952:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5951:vgpr_32, %5947:vgpr_32, %5952:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94272B	  %5953:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5943:vgpr_32, 0, %5952:vgpr_32, 0, %5948:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94336B	  %5956:vgpr_32, dead %5957:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5436:vgpr_32, 0, %5436:vgpr_32, 0, %5112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94352B	  %5960:vgpr_32 = nofpexcept V_RCP_F32_e32 %5956:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94360B	  $vcc = COPY %5949:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94368B	  %5954:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5953:vgpr_32, 0, %5947:vgpr_32, 0, %5952:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94376B	  %6331:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5954:vgpr_32, 0, %5435:vgpr_32, 0, %5111:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94384B	  %5959:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5956:vgpr_32, 0, %5960:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94400B	  %5960:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5959:vgpr_32, %5960:vgpr_32, %5960:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94416B	  %5961:vgpr_32, %5962:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5112:vgpr_32, 0, %5436:vgpr_32, 0, %5112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94432B	  %5965:vgpr_32 = nofpexcept V_MUL_F32_e32 %5961:vgpr_32, %5960:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94448B	  %5964:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5956:vgpr_32, 0, %5965:vgpr_32, 0, %5961:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94480B	  %5965:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5964:vgpr_32, %5960:vgpr_32, %5965:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94496B	  %5966:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5956:vgpr_32, 0, %5965:vgpr_32, 0, %5961:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94560B	  %5969:vgpr_32, dead %5970:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5437:vgpr_32, 0, %5437:vgpr_32, 0, %5113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94576B	  %5973:vgpr_32 = nofpexcept V_RCP_F32_e32 %5969:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94584B	  $vcc = COPY %5962:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94592B	  %5967:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5966:vgpr_32, 0, %5960:vgpr_32, 0, %5965:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94600B	  %6332:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5967:vgpr_32, 0, %5436:vgpr_32, 0, %5112:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94608B	  %5972:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5969:vgpr_32, 0, %5973:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94624B	  %5973:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5972:vgpr_32, %5973:vgpr_32, %5973:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94640B	  %5974:vgpr_32, %5975:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5113:vgpr_32, 0, %5437:vgpr_32, 0, %5113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94656B	  %5978:vgpr_32 = nofpexcept V_MUL_F32_e32 %5974:vgpr_32, %5973:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94672B	  %5977:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5969:vgpr_32, 0, %5978:vgpr_32, 0, %5974:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94704B	  %5978:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5977:vgpr_32, %5973:vgpr_32, %5978:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94720B	  %5979:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5969:vgpr_32, 0, %5978:vgpr_32, 0, %5974:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94784B	  %5982:vgpr_32, dead %5983:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5438:vgpr_32, 0, %5438:vgpr_32, 0, %5114:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94800B	  %5986:vgpr_32 = nofpexcept V_RCP_F32_e32 %5982:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94808B	  $vcc = COPY %5975:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94816B	  %5980:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5979:vgpr_32, 0, %5973:vgpr_32, 0, %5978:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94824B	  %6333:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5980:vgpr_32, 0, %5437:vgpr_32, 0, %5113:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94832B	  %5985:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5982:vgpr_32, 0, %5986:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94848B	  %5986:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5985:vgpr_32, %5986:vgpr_32, %5986:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94864B	  %5987:vgpr_32, %5988:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5114:vgpr_32, 0, %5438:vgpr_32, 0, %5114:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94880B	  %5991:vgpr_32 = nofpexcept V_MUL_F32_e32 %5987:vgpr_32, %5986:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94896B	  %5990:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5982:vgpr_32, 0, %5991:vgpr_32, 0, %5987:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94928B	  %5991:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5990:vgpr_32, %5986:vgpr_32, %5991:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
94944B	  %5992:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5982:vgpr_32, 0, %5991:vgpr_32, 0, %5987:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95008B	  %5995:vgpr_32, dead %5996:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5439:vgpr_32, 0, %5439:vgpr_32, 0, %5115:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95024B	  %5999:vgpr_32 = nofpexcept V_RCP_F32_e32 %5995:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95032B	  $vcc = COPY %5988:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95040B	  %5993:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %5992:vgpr_32, 0, %5986:vgpr_32, 0, %5991:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95048B	  %6334:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %5993:vgpr_32, 0, %5438:vgpr_32, 0, %5114:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95056B	  %5998:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5995:vgpr_32, 0, %5999:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95072B	  %5999:vgpr_32 = nofpexcept V_FMAC_F32_e32 %5998:vgpr_32, %5999:vgpr_32, %5999:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95088B	  %6000:vgpr_32, %6001:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5115:vgpr_32, 0, %5439:vgpr_32, 0, %5115:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95104B	  %6004:vgpr_32 = nofpexcept V_MUL_F32_e32 %6000:vgpr_32, %5999:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95120B	  %6003:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5995:vgpr_32, 0, %6004:vgpr_32, 0, %6000:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95152B	  %6004:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6003:vgpr_32, %5999:vgpr_32, %6004:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95168B	  %6005:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %5995:vgpr_32, 0, %6004:vgpr_32, 0, %6000:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95232B	  %6008:vgpr_32, dead %6009:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5440:vgpr_32, 0, %5440:vgpr_32, 0, %5116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95248B	  %6012:vgpr_32 = nofpexcept V_RCP_F32_e32 %6008:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95256B	  $vcc = COPY %6001:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95264B	  %6006:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6005:vgpr_32, 0, %5999:vgpr_32, 0, %6004:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95272B	  %6335:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6006:vgpr_32, 0, %5439:vgpr_32, 0, %5115:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95280B	  %6011:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6008:vgpr_32, 0, %6012:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95296B	  %6012:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6011:vgpr_32, %6012:vgpr_32, %6012:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95312B	  %6013:vgpr_32, %6014:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5116:vgpr_32, 0, %5440:vgpr_32, 0, %5116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95328B	  %6017:vgpr_32 = nofpexcept V_MUL_F32_e32 %6013:vgpr_32, %6012:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95344B	  %6016:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6008:vgpr_32, 0, %6017:vgpr_32, 0, %6013:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95376B	  %6017:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6016:vgpr_32, %6012:vgpr_32, %6017:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95392B	  %6018:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6008:vgpr_32, 0, %6017:vgpr_32, 0, %6013:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95456B	  %6021:vgpr_32, dead %6022:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5441:vgpr_32, 0, %5441:vgpr_32, 0, %5117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95472B	  %6025:vgpr_32 = nofpexcept V_RCP_F32_e32 %6021:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95480B	  $vcc = COPY %6014:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95488B	  %6019:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6018:vgpr_32, 0, %6012:vgpr_32, 0, %6017:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95496B	  %6336:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6019:vgpr_32, 0, %5440:vgpr_32, 0, %5116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95504B	  %6024:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6021:vgpr_32, 0, %6025:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95520B	  %6025:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6024:vgpr_32, %6025:vgpr_32, %6025:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95536B	  %6026:vgpr_32, %6027:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5117:vgpr_32, 0, %5441:vgpr_32, 0, %5117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95552B	  %6030:vgpr_32 = nofpexcept V_MUL_F32_e32 %6026:vgpr_32, %6025:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95568B	  %6029:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6021:vgpr_32, 0, %6030:vgpr_32, 0, %6026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95600B	  %6030:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6029:vgpr_32, %6025:vgpr_32, %6030:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95616B	  %6031:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6021:vgpr_32, 0, %6030:vgpr_32, 0, %6026:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95680B	  %6034:vgpr_32, dead %6035:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5442:vgpr_32, 0, %5442:vgpr_32, 0, %5118:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95696B	  %6038:vgpr_32 = nofpexcept V_RCP_F32_e32 %6034:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95704B	  $vcc = COPY %6027:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95712B	  %6032:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6031:vgpr_32, 0, %6025:vgpr_32, 0, %6030:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95720B	  %6337:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6032:vgpr_32, 0, %5441:vgpr_32, 0, %5117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95728B	  %6037:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6034:vgpr_32, 0, %6038:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95744B	  %6038:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6037:vgpr_32, %6038:vgpr_32, %6038:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95760B	  %6039:vgpr_32, %6040:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5118:vgpr_32, 0, %5442:vgpr_32, 0, %5118:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95776B	  %6043:vgpr_32 = nofpexcept V_MUL_F32_e32 %6039:vgpr_32, %6038:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95792B	  %6042:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6034:vgpr_32, 0, %6043:vgpr_32, 0, %6039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95824B	  %6043:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6042:vgpr_32, %6038:vgpr_32, %6043:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95840B	  %6044:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6034:vgpr_32, 0, %6043:vgpr_32, 0, %6039:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95904B	  %6047:vgpr_32, dead %6048:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5443:vgpr_32, 0, %5443:vgpr_32, 0, %5119:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95920B	  %6051:vgpr_32 = nofpexcept V_RCP_F32_e32 %6047:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95928B	  $vcc = COPY %6040:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95936B	  %6045:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6044:vgpr_32, 0, %6038:vgpr_32, 0, %6043:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95944B	  %6338:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6045:vgpr_32, 0, %5442:vgpr_32, 0, %5118:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95952B	  %6050:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6047:vgpr_32, 0, %6051:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95968B	  %6051:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6050:vgpr_32, %6051:vgpr_32, %6051:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
95984B	  %6052:vgpr_32, %6053:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5119:vgpr_32, 0, %5443:vgpr_32, 0, %5119:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96000B	  %6056:vgpr_32 = nofpexcept V_MUL_F32_e32 %6052:vgpr_32, %6051:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96016B	  %6055:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6047:vgpr_32, 0, %6056:vgpr_32, 0, %6052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96048B	  %6056:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6055:vgpr_32, %6051:vgpr_32, %6056:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96064B	  %6057:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6047:vgpr_32, 0, %6056:vgpr_32, 0, %6052:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96128B	  %6060:vgpr_32, dead %6061:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5444:vgpr_32, 0, %5444:vgpr_32, 0, %5120:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96144B	  %6064:vgpr_32 = nofpexcept V_RCP_F32_e32 %6060:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96152B	  $vcc = COPY %6053:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96160B	  %6058:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6057:vgpr_32, 0, %6051:vgpr_32, 0, %6056:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96168B	  %6339:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6058:vgpr_32, 0, %5443:vgpr_32, 0, %5119:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96176B	  %6063:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6060:vgpr_32, 0, %6064:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96192B	  %6064:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6063:vgpr_32, %6064:vgpr_32, %6064:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96208B	  %6065:vgpr_32, %6066:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5120:vgpr_32, 0, %5444:vgpr_32, 0, %5120:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96224B	  %6069:vgpr_32 = nofpexcept V_MUL_F32_e32 %6065:vgpr_32, %6064:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96240B	  %6068:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6060:vgpr_32, 0, %6069:vgpr_32, 0, %6065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96272B	  %6069:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6068:vgpr_32, %6064:vgpr_32, %6069:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96288B	  %6070:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6060:vgpr_32, 0, %6069:vgpr_32, 0, %6065:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96352B	  %6073:vgpr_32, dead %6074:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5445:vgpr_32, 0, %5445:vgpr_32, 0, %5121:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96368B	  %6077:vgpr_32 = nofpexcept V_RCP_F32_e32 %6073:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96376B	  $vcc = COPY %6066:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96384B	  %6071:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6070:vgpr_32, 0, %6064:vgpr_32, 0, %6069:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96392B	  %6340:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6071:vgpr_32, 0, %5444:vgpr_32, 0, %5120:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96400B	  %6076:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6073:vgpr_32, 0, %6077:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96416B	  %6077:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6076:vgpr_32, %6077:vgpr_32, %6077:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96432B	  %6078:vgpr_32, %6079:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5121:vgpr_32, 0, %5445:vgpr_32, 0, %5121:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96448B	  %6082:vgpr_32 = nofpexcept V_MUL_F32_e32 %6078:vgpr_32, %6077:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96464B	  %6081:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6073:vgpr_32, 0, %6082:vgpr_32, 0, %6078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96496B	  %6082:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6081:vgpr_32, %6077:vgpr_32, %6082:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96512B	  %6083:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6073:vgpr_32, 0, %6082:vgpr_32, 0, %6078:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96576B	  %6086:vgpr_32, dead %6087:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5446:vgpr_32, 0, %5446:vgpr_32, 0, %5122:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96592B	  %6090:vgpr_32 = nofpexcept V_RCP_F32_e32 %6086:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96600B	  $vcc = COPY %6079:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96608B	  %6084:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6083:vgpr_32, 0, %6077:vgpr_32, 0, %6082:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96616B	  %6341:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6084:vgpr_32, 0, %5445:vgpr_32, 0, %5121:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96624B	  %6089:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6086:vgpr_32, 0, %6090:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96640B	  %6090:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6089:vgpr_32, %6090:vgpr_32, %6090:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96656B	  %6091:vgpr_32, %6092:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5122:vgpr_32, 0, %5446:vgpr_32, 0, %5122:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96672B	  %6095:vgpr_32 = nofpexcept V_MUL_F32_e32 %6091:vgpr_32, %6090:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96688B	  %6094:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6086:vgpr_32, 0, %6095:vgpr_32, 0, %6091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96720B	  %6095:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6094:vgpr_32, %6090:vgpr_32, %6095:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96736B	  %6096:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6086:vgpr_32, 0, %6095:vgpr_32, 0, %6091:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96800B	  %6099:vgpr_32, dead %6100:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5447:vgpr_32, 0, %5447:vgpr_32, 0, %5123:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96816B	  %6103:vgpr_32 = nofpexcept V_RCP_F32_e32 %6099:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96824B	  $vcc = COPY %6092:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96832B	  %6097:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6096:vgpr_32, 0, %6090:vgpr_32, 0, %6095:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96840B	  %6342:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6097:vgpr_32, 0, %5446:vgpr_32, 0, %5122:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96848B	  %6102:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6099:vgpr_32, 0, %6103:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96864B	  %6103:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6102:vgpr_32, %6103:vgpr_32, %6103:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96880B	  %6104:vgpr_32, %6105:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5123:vgpr_32, 0, %5447:vgpr_32, 0, %5123:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96896B	  %6108:vgpr_32 = nofpexcept V_MUL_F32_e32 %6104:vgpr_32, %6103:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96912B	  %6107:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6099:vgpr_32, 0, %6108:vgpr_32, 0, %6104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96944B	  %6108:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6107:vgpr_32, %6103:vgpr_32, %6108:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
96960B	  %6109:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6099:vgpr_32, 0, %6108:vgpr_32, 0, %6104:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97024B	  %6112:vgpr_32, dead %6113:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5448:vgpr_32, 0, %5448:vgpr_32, 0, %5124:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97040B	  %6116:vgpr_32 = nofpexcept V_RCP_F32_e32 %6112:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97048B	  $vcc = COPY %6105:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97056B	  %6110:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6109:vgpr_32, 0, %6103:vgpr_32, 0, %6108:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97064B	  %6343:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6110:vgpr_32, 0, %5447:vgpr_32, 0, %5123:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97072B	  %6115:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6112:vgpr_32, 0, %6116:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97088B	  %6116:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6115:vgpr_32, %6116:vgpr_32, %6116:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97104B	  %6117:vgpr_32, %6118:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5124:vgpr_32, 0, %5448:vgpr_32, 0, %5124:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97120B	  %6121:vgpr_32 = nofpexcept V_MUL_F32_e32 %6117:vgpr_32, %6116:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97136B	  %6120:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6112:vgpr_32, 0, %6121:vgpr_32, 0, %6117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97168B	  %6121:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6120:vgpr_32, %6116:vgpr_32, %6121:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97184B	  %6122:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6112:vgpr_32, 0, %6121:vgpr_32, 0, %6117:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97248B	  %6125:vgpr_32, dead %6126:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5449:vgpr_32, 0, %5449:vgpr_32, 0, %5125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97264B	  %6129:vgpr_32 = nofpexcept V_RCP_F32_e32 %6125:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97272B	  $vcc = COPY %6118:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97280B	  %6123:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6122:vgpr_32, 0, %6116:vgpr_32, 0, %6121:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97288B	  %6344:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6123:vgpr_32, 0, %5448:vgpr_32, 0, %5124:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97296B	  %6128:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6125:vgpr_32, 0, %6129:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97312B	  %6129:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6128:vgpr_32, %6129:vgpr_32, %6129:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97328B	  %6130:vgpr_32, %6131:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5125:vgpr_32, 0, %5449:vgpr_32, 0, %5125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97344B	  %6134:vgpr_32 = nofpexcept V_MUL_F32_e32 %6130:vgpr_32, %6129:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97360B	  %6133:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6125:vgpr_32, 0, %6134:vgpr_32, 0, %6130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97392B	  %6134:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6133:vgpr_32, %6129:vgpr_32, %6134:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97408B	  %6135:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6125:vgpr_32, 0, %6134:vgpr_32, 0, %6130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97472B	  %6138:vgpr_32, dead %6139:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5450:vgpr_32, 0, %5450:vgpr_32, 0, %5126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97488B	  %6142:vgpr_32 = nofpexcept V_RCP_F32_e32 %6138:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97496B	  $vcc = COPY %6131:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97504B	  %6136:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6135:vgpr_32, 0, %6129:vgpr_32, 0, %6134:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97512B	  %6345:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6136:vgpr_32, 0, %5449:vgpr_32, 0, %5125:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97520B	  %6141:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6138:vgpr_32, 0, %6142:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97536B	  %6142:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6141:vgpr_32, %6142:vgpr_32, %6142:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97552B	  %6143:vgpr_32, %6144:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5126:vgpr_32, 0, %5450:vgpr_32, 0, %5126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97568B	  %6147:vgpr_32 = nofpexcept V_MUL_F32_e32 %6143:vgpr_32, %6142:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97584B	  %6146:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6138:vgpr_32, 0, %6147:vgpr_32, 0, %6143:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97616B	  %6147:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6146:vgpr_32, %6142:vgpr_32, %6147:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97632B	  %6148:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6138:vgpr_32, 0, %6147:vgpr_32, 0, %6143:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97696B	  %6151:vgpr_32, dead %6152:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5451:vgpr_32, 0, %5451:vgpr_32, 0, %5127:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97712B	  %6155:vgpr_32 = nofpexcept V_RCP_F32_e32 %6151:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97720B	  $vcc = COPY %6144:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97728B	  %6149:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6148:vgpr_32, 0, %6142:vgpr_32, 0, %6147:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97736B	  %6346:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6149:vgpr_32, 0, %5450:vgpr_32, 0, %5126:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97744B	  %6154:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6151:vgpr_32, 0, %6155:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97760B	  %6155:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6154:vgpr_32, %6155:vgpr_32, %6155:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97776B	  %6156:vgpr_32, %6157:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5127:vgpr_32, 0, %5451:vgpr_32, 0, %5127:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97792B	  %6160:vgpr_32 = nofpexcept V_MUL_F32_e32 %6156:vgpr_32, %6155:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97808B	  %6159:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6151:vgpr_32, 0, %6160:vgpr_32, 0, %6156:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97840B	  %6160:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6159:vgpr_32, %6155:vgpr_32, %6160:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97856B	  %6161:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6151:vgpr_32, 0, %6160:vgpr_32, 0, %6156:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97920B	  %6164:vgpr_32, dead %6165:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5452:vgpr_32, 0, %5452:vgpr_32, 0, %5128:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97936B	  %6168:vgpr_32 = nofpexcept V_RCP_F32_e32 %6164:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97944B	  $vcc = COPY %6157:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97952B	  %6162:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6161:vgpr_32, 0, %6155:vgpr_32, 0, %6160:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97960B	  %6347:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6162:vgpr_32, 0, %5451:vgpr_32, 0, %5127:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97968B	  %6167:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6164:vgpr_32, 0, %6168:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
97984B	  %6168:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6167:vgpr_32, %6168:vgpr_32, %6168:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98000B	  %6169:vgpr_32, %6170:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5128:vgpr_32, 0, %5452:vgpr_32, 0, %5128:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98016B	  %6173:vgpr_32 = nofpexcept V_MUL_F32_e32 %6169:vgpr_32, %6168:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98032B	  %6172:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6164:vgpr_32, 0, %6173:vgpr_32, 0, %6169:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98064B	  %6173:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6172:vgpr_32, %6168:vgpr_32, %6173:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98080B	  %6174:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6164:vgpr_32, 0, %6173:vgpr_32, 0, %6169:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98144B	  %6177:vgpr_32, dead %6178:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5453:vgpr_32, 0, %5453:vgpr_32, 0, %5129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98160B	  %6181:vgpr_32 = nofpexcept V_RCP_F32_e32 %6177:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98168B	  $vcc = COPY %6170:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98176B	  %6175:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6174:vgpr_32, 0, %6168:vgpr_32, 0, %6173:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98184B	  %6348:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6175:vgpr_32, 0, %5452:vgpr_32, 0, %5128:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98192B	  %6180:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6177:vgpr_32, 0, %6181:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98208B	  %6181:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6180:vgpr_32, %6181:vgpr_32, %6181:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98224B	  %6182:vgpr_32, %6183:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5129:vgpr_32, 0, %5453:vgpr_32, 0, %5129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98240B	  %6186:vgpr_32 = nofpexcept V_MUL_F32_e32 %6182:vgpr_32, %6181:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98256B	  %6185:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6177:vgpr_32, 0, %6186:vgpr_32, 0, %6182:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98288B	  %6186:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6185:vgpr_32, %6181:vgpr_32, %6186:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98304B	  %6187:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6177:vgpr_32, 0, %6186:vgpr_32, 0, %6182:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98368B	  %6190:vgpr_32, dead %6191:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5454:vgpr_32, 0, %5454:vgpr_32, 0, %5130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98384B	  %6194:vgpr_32 = nofpexcept V_RCP_F32_e32 %6190:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98392B	  $vcc = COPY %6183:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98400B	  %6188:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6187:vgpr_32, 0, %6181:vgpr_32, 0, %6186:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98408B	  %6349:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6188:vgpr_32, 0, %5453:vgpr_32, 0, %5129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98416B	  %6193:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6190:vgpr_32, 0, %6194:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98432B	  %6194:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6193:vgpr_32, %6194:vgpr_32, %6194:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98448B	  %6195:vgpr_32, %6196:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5130:vgpr_32, 0, %5454:vgpr_32, 0, %5130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98464B	  %6199:vgpr_32 = nofpexcept V_MUL_F32_e32 %6195:vgpr_32, %6194:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98480B	  %6198:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6190:vgpr_32, 0, %6199:vgpr_32, 0, %6195:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98512B	  %6199:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6198:vgpr_32, %6194:vgpr_32, %6199:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98528B	  %6200:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6190:vgpr_32, 0, %6199:vgpr_32, 0, %6195:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98592B	  %6203:vgpr_32, dead %6204:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5455:vgpr_32, 0, %5455:vgpr_32, 0, %5131:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98608B	  %6207:vgpr_32 = nofpexcept V_RCP_F32_e32 %6203:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98616B	  $vcc = COPY %6196:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98624B	  %6201:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6200:vgpr_32, 0, %6194:vgpr_32, 0, %6199:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98632B	  %6350:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6201:vgpr_32, 0, %5454:vgpr_32, 0, %5130:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98640B	  %6206:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6203:vgpr_32, 0, %6207:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98656B	  %6207:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6206:vgpr_32, %6207:vgpr_32, %6207:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98672B	  %6208:vgpr_32, %6209:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5131:vgpr_32, 0, %5455:vgpr_32, 0, %5131:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98688B	  %6212:vgpr_32 = nofpexcept V_MUL_F32_e32 %6208:vgpr_32, %6207:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98704B	  %6211:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6203:vgpr_32, 0, %6212:vgpr_32, 0, %6208:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98736B	  %6212:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6211:vgpr_32, %6207:vgpr_32, %6212:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98752B	  %6213:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6203:vgpr_32, 0, %6212:vgpr_32, 0, %6208:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98816B	  %6216:vgpr_32, dead %6217:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5456:vgpr_32, 0, %5456:vgpr_32, 0, %5132:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98832B	  %6220:vgpr_32 = nofpexcept V_RCP_F32_e32 %6216:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98840B	  $vcc = COPY %6209:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98848B	  %6214:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6213:vgpr_32, 0, %6207:vgpr_32, 0, %6212:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98856B	  %6351:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6214:vgpr_32, 0, %5455:vgpr_32, 0, %5131:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98864B	  %6219:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6216:vgpr_32, 0, %6220:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98880B	  %6220:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6219:vgpr_32, %6220:vgpr_32, %6220:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98896B	  %6221:vgpr_32, %6222:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5132:vgpr_32, 0, %5456:vgpr_32, 0, %5132:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98912B	  %6225:vgpr_32 = nofpexcept V_MUL_F32_e32 %6221:vgpr_32, %6220:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98928B	  %6224:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6216:vgpr_32, 0, %6225:vgpr_32, 0, %6221:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98960B	  %6225:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6224:vgpr_32, %6220:vgpr_32, %6225:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
98976B	  %6226:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6216:vgpr_32, 0, %6225:vgpr_32, 0, %6221:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99040B	  %6229:vgpr_32, dead %6230:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5457:vgpr_32, 0, %5457:vgpr_32, 0, %5133:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99056B	  %6233:vgpr_32 = nofpexcept V_RCP_F32_e32 %6229:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99064B	  $vcc = COPY %6222:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99072B	  %6227:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6226:vgpr_32, 0, %6220:vgpr_32, 0, %6225:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99080B	  %6352:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6227:vgpr_32, 0, %5456:vgpr_32, 0, %5132:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99088B	  %6232:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6229:vgpr_32, 0, %6233:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99104B	  %6233:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6232:vgpr_32, %6233:vgpr_32, %6233:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99120B	  %6234:vgpr_32, %6235:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5133:vgpr_32, 0, %5457:vgpr_32, 0, %5133:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99136B	  %6238:vgpr_32 = nofpexcept V_MUL_F32_e32 %6234:vgpr_32, %6233:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99152B	  %6237:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6229:vgpr_32, 0, %6238:vgpr_32, 0, %6234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99184B	  %6238:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6237:vgpr_32, %6233:vgpr_32, %6238:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99200B	  %6239:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6229:vgpr_32, 0, %6238:vgpr_32, 0, %6234:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99264B	  %6242:vgpr_32, dead %6243:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5458:vgpr_32, 0, %5458:vgpr_32, 0, %5134:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99280B	  %6246:vgpr_32 = nofpexcept V_RCP_F32_e32 %6242:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99288B	  $vcc = COPY %6235:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99296B	  %6240:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6239:vgpr_32, 0, %6233:vgpr_32, 0, %6238:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99304B	  %6353:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6240:vgpr_32, 0, %5457:vgpr_32, 0, %5133:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99312B	  %6245:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6242:vgpr_32, 0, %6246:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99328B	  %6246:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6245:vgpr_32, %6246:vgpr_32, %6246:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99344B	  %6247:vgpr_32, %6248:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5134:vgpr_32, 0, %5458:vgpr_32, 0, %5134:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99360B	  %6251:vgpr_32 = nofpexcept V_MUL_F32_e32 %6247:vgpr_32, %6246:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99376B	  %6250:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6242:vgpr_32, 0, %6251:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99408B	  %6251:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6250:vgpr_32, %6246:vgpr_32, %6251:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99424B	  %6252:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6242:vgpr_32, 0, %6251:vgpr_32, 0, %6247:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99488B	  %6255:vgpr_32, dead %6256:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5459:vgpr_32, 0, %5459:vgpr_32, 0, %5135:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99504B	  %6259:vgpr_32 = nofpexcept V_RCP_F32_e32 %6255:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99512B	  $vcc = COPY %6248:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99520B	  %6253:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6252:vgpr_32, 0, %6246:vgpr_32, 0, %6251:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99528B	  %6354:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6253:vgpr_32, 0, %5458:vgpr_32, 0, %5134:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99536B	  %6258:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6255:vgpr_32, 0, %6259:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99552B	  %6259:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6258:vgpr_32, %6259:vgpr_32, %6259:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99568B	  %6260:vgpr_32, %6261:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5135:vgpr_32, 0, %5459:vgpr_32, 0, %5135:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99584B	  %6264:vgpr_32 = nofpexcept V_MUL_F32_e32 %6260:vgpr_32, %6259:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99600B	  %6263:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6255:vgpr_32, 0, %6264:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99632B	  %6264:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6263:vgpr_32, %6259:vgpr_32, %6264:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99648B	  %6265:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6255:vgpr_32, 0, %6264:vgpr_32, 0, %6260:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99712B	  %6268:vgpr_32, dead %6269:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5460:vgpr_32, 0, %5460:vgpr_32, 0, %5136:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99728B	  %6272:vgpr_32 = nofpexcept V_RCP_F32_e32 %6268:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99736B	  $vcc = COPY %6261:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99744B	  %6266:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6265:vgpr_32, 0, %6259:vgpr_32, 0, %6264:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99752B	  %6355:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6266:vgpr_32, 0, %5459:vgpr_32, 0, %5135:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99760B	  %6271:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6268:vgpr_32, 0, %6272:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99776B	  %6272:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6271:vgpr_32, %6272:vgpr_32, %6272:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99792B	  %6273:vgpr_32, %6274:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5136:vgpr_32, 0, %5460:vgpr_32, 0, %5136:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99808B	  %6277:vgpr_32 = nofpexcept V_MUL_F32_e32 %6273:vgpr_32, %6272:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99824B	  %6276:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6268:vgpr_32, 0, %6277:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99856B	  %6277:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6276:vgpr_32, %6272:vgpr_32, %6277:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99872B	  %6278:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6268:vgpr_32, 0, %6277:vgpr_32, 0, %6273:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99936B	  %6281:vgpr_32, dead %6282:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5461:vgpr_32, 0, %5461:vgpr_32, 0, %5137:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
99952B	  %6285:vgpr_32 = nofpexcept V_RCP_F32_e32 %6281:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102384B	  %6369:vgpr_32 = GLOBAL_LOAD_DWORD_SADDR %9856.sub2_sub3:sgpr_128, %4884:vgpr_32, 0, 0, implicit $exec, debug-location !112 :: (load (s32) from %ir.14, addrspace 1); moe_op_gemm_a8w4.py:495:53
102392B	  $vcc = COPY %6274:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102400B	  %6279:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6278:vgpr_32, 0, %6272:vgpr_32, 0, %6277:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102408B	  %6356:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6279:vgpr_32, 0, %5460:vgpr_32, 0, %5136:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102416B	  %6284:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6281:vgpr_32, 0, %6285:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102424B	  %6285:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6284:vgpr_32, %6285:vgpr_32, %6285:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102432B	  %6286:vgpr_32, %6287:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %5137:vgpr_32, 0, %5461:vgpr_32, 0, %5137:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102440B	  %6290:vgpr_32 = nofpexcept V_MUL_F32_e32 %6286:vgpr_32, %6285:vgpr_32, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102448B	  %6289:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6281:vgpr_32, 0, %6290:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102456B	  %6290:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6289:vgpr_32, %6285:vgpr_32, %6290:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102464B	  %6291:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6281:vgpr_32, 0, %6290:vgpr_32, 0, %6286:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102472B	  $vcc = COPY %6287:sreg_64, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102480B	  %6292:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6291:vgpr_32, 0, %6285:vgpr_32, 0, %6290:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102488B	  %6357:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6292:vgpr_32, 0, %5461:vgpr_32, 0, %5137:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !107; moe_op_gemm_a8w4.py:115:16 @[ moe_op_gemm_a8w4.py:477:34 ]
102496B	  %6294:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6294:vgpr_32, %5202:vgpr_32, %6294:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102504B	  %6295:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6295:vgpr_32, %5203:vgpr_32, %6295:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102512B	  %6296:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6296:vgpr_32, %5204:vgpr_32, %6296:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102520B	  %6297:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6297:vgpr_32, %5205:vgpr_32, %6297:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102528B	  %6298:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6298:vgpr_32, %5206:vgpr_32, %6298:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102536B	  %6299:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6299:vgpr_32, %5207:vgpr_32, %6299:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102544B	  %6300:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6300:vgpr_32, %5208:vgpr_32, %6300:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102552B	  %6301:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6301:vgpr_32, %5209:vgpr_32, %6301:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102560B	  %6302:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6302:vgpr_32, %5210:vgpr_32, %6302:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102568B	  %6303:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6303:vgpr_32, %5211:vgpr_32, %6303:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102576B	  %6304:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6304:vgpr_32, %5212:vgpr_32, %6304:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102584B	  %6305:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6305:vgpr_32, %5213:vgpr_32, %6305:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102592B	  %6306:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6306:vgpr_32, %5214:vgpr_32, %6306:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102600B	  %6307:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6307:vgpr_32, %5215:vgpr_32, %6307:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102608B	  %6308:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6308:vgpr_32, %5216:vgpr_32, %6308:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102616B	  %6309:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6309:vgpr_32, %5217:vgpr_32, %6309:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102624B	  %6310:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6310:vgpr_32, %5218:vgpr_32, %6310:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102632B	  %6311:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6311:vgpr_32, %5219:vgpr_32, %6311:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102640B	  %6312:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6312:vgpr_32, %5220:vgpr_32, %6312:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102648B	  %6313:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6313:vgpr_32, %5221:vgpr_32, %6313:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102656B	  %6314:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6314:vgpr_32, %5222:vgpr_32, %6314:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102664B	  %6315:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6315:vgpr_32, %5223:vgpr_32, %6315:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102672B	  %6316:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6316:vgpr_32, %5224:vgpr_32, %6316:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102680B	  %6317:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6317:vgpr_32, %5225:vgpr_32, %6317:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102688B	  %6318:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6318:vgpr_32, %5226:vgpr_32, %6318:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102696B	  %6319:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6319:vgpr_32, %5227:vgpr_32, %6319:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102704B	  %6320:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6320:vgpr_32, %5228:vgpr_32, %6320:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102712B	  %6321:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6321:vgpr_32, %5229:vgpr_32, %6321:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102720B	  %6322:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6322:vgpr_32, %5230:vgpr_32, %6322:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102728B	  %6323:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6323:vgpr_32, %5231:vgpr_32, %6323:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102736B	  %6324:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6324:vgpr_32, %5232:vgpr_32, %6324:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102744B	  %6325:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6325:vgpr_32, %5233:vgpr_32, %6325:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102752B	  %6326:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6326:vgpr_32, %5234:vgpr_32, %6326:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102760B	  %6327:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6327:vgpr_32, %5235:vgpr_32, %6327:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102768B	  %6328:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6328:vgpr_32, %5236:vgpr_32, %6328:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102776B	  %6329:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6329:vgpr_32, %5237:vgpr_32, %6329:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102784B	  %6330:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6330:vgpr_32, %5238:vgpr_32, %6330:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102792B	  %6331:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6331:vgpr_32, %5239:vgpr_32, %6331:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102800B	  %6332:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6332:vgpr_32, %5240:vgpr_32, %6332:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102808B	  %6333:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6333:vgpr_32, %5241:vgpr_32, %6333:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102816B	  %6334:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6334:vgpr_32, %5242:vgpr_32, %6334:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102824B	  %6335:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6335:vgpr_32, %5243:vgpr_32, %6335:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102832B	  %6336:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6336:vgpr_32, %5244:vgpr_32, %6336:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102840B	  %6337:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6337:vgpr_32, %5245:vgpr_32, %6337:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102848B	  %6338:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6338:vgpr_32, %5246:vgpr_32, %6338:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102856B	  %6339:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6339:vgpr_32, %5247:vgpr_32, %6339:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102864B	  %6340:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6340:vgpr_32, %5248:vgpr_32, %6340:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102872B	  %6341:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6341:vgpr_32, %5249:vgpr_32, %6341:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102880B	  %6342:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6342:vgpr_32, %5250:vgpr_32, %6342:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102888B	  %6343:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6343:vgpr_32, %5251:vgpr_32, %6343:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102896B	  %6344:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6344:vgpr_32, %5252:vgpr_32, %6344:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102904B	  %6345:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6345:vgpr_32, %5253:vgpr_32, %6345:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102912B	  %6346:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6346:vgpr_32, %5254:vgpr_32, %6346:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102920B	  %6347:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6347:vgpr_32, %5255:vgpr_32, %6347:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102928B	  %6348:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6348:vgpr_32, %5256:vgpr_32, %6348:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102936B	  %6349:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6349:vgpr_32, %5257:vgpr_32, %6349:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102944B	  %6350:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6350:vgpr_32, %5258:vgpr_32, %6350:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102952B	  %6351:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6351:vgpr_32, %5259:vgpr_32, %6351:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102960B	  %6352:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6352:vgpr_32, %5260:vgpr_32, %6352:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102968B	  %6353:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6353:vgpr_32, %5261:vgpr_32, %6353:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102976B	  %6354:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6354:vgpr_32, %5262:vgpr_32, %6354:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102984B	  %6355:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6355:vgpr_32, %5263:vgpr_32, %6355:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
102992B	  %6356:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6356:vgpr_32, %5264:vgpr_32, %6356:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
103000B	  %6357:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6357:vgpr_32, %5265:vgpr_32, %6357:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !108; moe_op_gemm_a8w4.py:116:29 @[ moe_op_gemm_a8w4.py:477:34 ]
103008B	  %6370:vgpr_32, dead %6371:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103016B	  %6374:vgpr_32 = nofpexcept V_RCP_F32_e32 %6370:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103024B	  %8788.sub1:vreg_64_align2 = COPY %4875.sub1:sreg_64, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
103032B	  undef %8786.sub0:vreg_64_align2 = V_OR_B32_e32 8, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !110; moe_op_gemm_a8w4.py:482:41
103040B	  %8786.sub1:vreg_64_align2 = COPY %8788.sub1:vreg_64_align2, debug-location !110; moe_op_gemm_a8w4.py:482:41
103048B	  %6373:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6370:vgpr_32, 0, %6374:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103064B	  %6374:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6373:vgpr_32, %6374:vgpr_32, %6374:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103072B	  %6375:vgpr_32, %6376:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6294:vgpr_32, 0, %6369:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103080B	  %6379:vgpr_32 = nofpexcept V_MUL_F32_e32 %6375:vgpr_32, %6374:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103088B	  %6378:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6370:vgpr_32, 0, %6379:vgpr_32, 0, %6375:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103104B	  %6379:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6378:vgpr_32, %6374:vgpr_32, %6379:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103112B	  %6380:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6370:vgpr_32, 0, %6379:vgpr_32, 0, %6375:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103144B	  %6383:vgpr_32, dead %6384:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103152B	  %6387:vgpr_32 = nofpexcept V_RCP_F32_e32 %6383:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103160B	  $vcc = COPY %6376:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103168B	  %6381:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6380:vgpr_32, 0, %6374:vgpr_32, 0, %6379:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103176B	  %6382:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6381:vgpr_32, 0, %6369:vgpr_32, 0, %6294:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103184B	  %6386:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6383:vgpr_32, 0, %6387:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103200B	  %6387:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6386:vgpr_32, %6387:vgpr_32, %6387:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103208B	  %6388:vgpr_32, %6389:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6295:vgpr_32, 0, %6369:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103216B	  %6392:vgpr_32 = nofpexcept V_MUL_F32_e32 %6388:vgpr_32, %6387:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103224B	  %6391:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6383:vgpr_32, 0, %6392:vgpr_32, 0, %6388:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103240B	  %6392:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6391:vgpr_32, %6387:vgpr_32, %6392:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103248B	  %6393:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6383:vgpr_32, 0, %6392:vgpr_32, 0, %6388:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103280B	  %6396:vgpr_32, dead %6397:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103288B	  %6400:vgpr_32 = nofpexcept V_RCP_F32_e32 %6396:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103296B	  $vcc = COPY %6389:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103304B	  %6394:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6393:vgpr_32, 0, %6387:vgpr_32, 0, %6392:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103312B	  %6395:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6394:vgpr_32, 0, %6369:vgpr_32, 0, %6295:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103320B	  %6399:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6396:vgpr_32, 0, %6400:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103336B	  %6400:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6399:vgpr_32, %6400:vgpr_32, %6400:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103344B	  %6401:vgpr_32, %6402:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6296:vgpr_32, 0, %6369:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103352B	  %6405:vgpr_32 = nofpexcept V_MUL_F32_e32 %6401:vgpr_32, %6400:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103360B	  %6404:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6396:vgpr_32, 0, %6405:vgpr_32, 0, %6401:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103376B	  %6405:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6404:vgpr_32, %6400:vgpr_32, %6405:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103384B	  %6406:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6396:vgpr_32, 0, %6405:vgpr_32, 0, %6401:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103416B	  %6409:vgpr_32, dead %6410:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103424B	  %6413:vgpr_32 = nofpexcept V_RCP_F32_e32 %6409:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103432B	  $vcc = COPY %6402:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103440B	  %6407:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6406:vgpr_32, 0, %6400:vgpr_32, 0, %6405:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103448B	  %6408:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6407:vgpr_32, 0, %6369:vgpr_32, 0, %6296:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103456B	  %6412:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6409:vgpr_32, 0, %6413:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103472B	  %6413:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6412:vgpr_32, %6413:vgpr_32, %6413:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103480B	  %6414:vgpr_32, %6415:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6297:vgpr_32, 0, %6369:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103488B	  %6418:vgpr_32 = nofpexcept V_MUL_F32_e32 %6414:vgpr_32, %6413:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103496B	  %6417:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6409:vgpr_32, 0, %6418:vgpr_32, 0, %6414:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103512B	  %6418:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6417:vgpr_32, %6413:vgpr_32, %6418:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103520B	  %6419:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6409:vgpr_32, 0, %6418:vgpr_32, 0, %6414:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103552B	  %6422:vgpr_32, dead %6423:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103560B	  %6426:vgpr_32 = nofpexcept V_RCP_F32_e32 %6422:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103568B	  $vcc = COPY %6415:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103576B	  %6420:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6419:vgpr_32, 0, %6413:vgpr_32, 0, %6418:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103584B	  %6421:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6420:vgpr_32, 0, %6369:vgpr_32, 0, %6297:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103592B	  %6425:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6422:vgpr_32, 0, %6426:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103608B	  %6426:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6425:vgpr_32, %6426:vgpr_32, %6426:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103616B	  %6427:vgpr_32, %6428:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6298:vgpr_32, 0, %6369:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103624B	  %6431:vgpr_32 = nofpexcept V_MUL_F32_e32 %6427:vgpr_32, %6426:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103632B	  %6430:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6422:vgpr_32, 0, %6431:vgpr_32, 0, %6427:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103648B	  %6431:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6430:vgpr_32, %6426:vgpr_32, %6431:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103656B	  %6432:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6422:vgpr_32, 0, %6431:vgpr_32, 0, %6427:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103688B	  %6435:vgpr_32, dead %6436:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103696B	  %6439:vgpr_32 = nofpexcept V_RCP_F32_e32 %6435:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103704B	  $vcc = COPY %6428:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103712B	  %6433:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6432:vgpr_32, 0, %6426:vgpr_32, 0, %6431:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103720B	  %6434:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6433:vgpr_32, 0, %6369:vgpr_32, 0, %6298:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103728B	  %6438:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6435:vgpr_32, 0, %6439:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103744B	  %6439:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6438:vgpr_32, %6439:vgpr_32, %6439:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103752B	  %6440:vgpr_32, %6441:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6299:vgpr_32, 0, %6369:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103760B	  %6444:vgpr_32 = nofpexcept V_MUL_F32_e32 %6440:vgpr_32, %6439:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103768B	  %6443:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6435:vgpr_32, 0, %6444:vgpr_32, 0, %6440:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103784B	  %6444:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6443:vgpr_32, %6439:vgpr_32, %6444:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103792B	  %6445:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6435:vgpr_32, 0, %6444:vgpr_32, 0, %6440:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103824B	  %6448:vgpr_32, dead %6449:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103832B	  %6452:vgpr_32 = nofpexcept V_RCP_F32_e32 %6448:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103840B	  $vcc = COPY %6441:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103848B	  %6446:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6445:vgpr_32, 0, %6439:vgpr_32, 0, %6444:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103856B	  %6447:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6446:vgpr_32, 0, %6369:vgpr_32, 0, %6299:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103864B	  %6451:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6448:vgpr_32, 0, %6452:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103880B	  %6452:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6451:vgpr_32, %6452:vgpr_32, %6452:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103888B	  %6453:vgpr_32, %6454:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6300:vgpr_32, 0, %6369:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103896B	  %6457:vgpr_32 = nofpexcept V_MUL_F32_e32 %6453:vgpr_32, %6452:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103904B	  %6456:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6448:vgpr_32, 0, %6457:vgpr_32, 0, %6453:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103920B	  %6457:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6456:vgpr_32, %6452:vgpr_32, %6457:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103928B	  %6458:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6448:vgpr_32, 0, %6457:vgpr_32, 0, %6453:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103968B	  %6461:vgpr_32, dead %6462:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103984B	  %6465:vgpr_32 = nofpexcept V_RCP_F32_e32 %6461:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
103992B	  $vcc = COPY %6454:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104000B	  %6459:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6458:vgpr_32, 0, %6452:vgpr_32, 0, %6457:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104008B	  %6460:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6459:vgpr_32, 0, %6369:vgpr_32, 0, %6300:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104016B	  %6464:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6461:vgpr_32, 0, %6465:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104032B	  %6465:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6464:vgpr_32, %6465:vgpr_32, %6465:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104048B	  %6466:vgpr_32, %6467:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6301:vgpr_32, 0, %6369:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104064B	  %6470:vgpr_32 = nofpexcept V_MUL_F32_e32 %6466:vgpr_32, %6465:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104080B	  %6469:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6461:vgpr_32, 0, %6470:vgpr_32, 0, %6466:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104112B	  %6470:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6469:vgpr_32, %6465:vgpr_32, %6470:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104128B	  %6471:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6461:vgpr_32, 0, %6470:vgpr_32, 0, %6466:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104192B	  %6474:vgpr_32, dead %6475:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6302:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104208B	  %6478:vgpr_32 = nofpexcept V_RCP_F32_e32 %6474:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104216B	  $vcc = COPY %6467:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104224B	  %6472:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6471:vgpr_32, 0, %6465:vgpr_32, 0, %6470:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104232B	  %6473:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6472:vgpr_32, 0, %6369:vgpr_32, 0, %6301:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104240B	  %6477:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6474:vgpr_32, 0, %6478:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104256B	  %6478:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6477:vgpr_32, %6478:vgpr_32, %6478:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104272B	  %6479:vgpr_32, %6480:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6302:vgpr_32, 0, %6369:vgpr_32, 0, %6302:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104288B	  %6483:vgpr_32 = nofpexcept V_MUL_F32_e32 %6479:vgpr_32, %6478:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104304B	  %6482:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6474:vgpr_32, 0, %6483:vgpr_32, 0, %6479:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104336B	  %6483:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6482:vgpr_32, %6478:vgpr_32, %6483:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104352B	  %6484:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6474:vgpr_32, 0, %6483:vgpr_32, 0, %6479:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104416B	  %6487:vgpr_32, dead %6488:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6303:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104432B	  %6491:vgpr_32 = nofpexcept V_RCP_F32_e32 %6487:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104440B	  $vcc = COPY %6480:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104448B	  %6485:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6484:vgpr_32, 0, %6478:vgpr_32, 0, %6483:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104456B	  %6486:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6485:vgpr_32, 0, %6369:vgpr_32, 0, %6302:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104464B	  %6490:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6487:vgpr_32, 0, %6491:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104480B	  %6491:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6490:vgpr_32, %6491:vgpr_32, %6491:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104496B	  %6492:vgpr_32, %6493:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6303:vgpr_32, 0, %6369:vgpr_32, 0, %6303:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104512B	  %6496:vgpr_32 = nofpexcept V_MUL_F32_e32 %6492:vgpr_32, %6491:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104528B	  %6495:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6487:vgpr_32, 0, %6496:vgpr_32, 0, %6492:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104560B	  %6496:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6495:vgpr_32, %6491:vgpr_32, %6496:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104576B	  %6497:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6487:vgpr_32, 0, %6496:vgpr_32, 0, %6492:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104640B	  %6500:vgpr_32, dead %6501:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6304:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104656B	  %6504:vgpr_32 = nofpexcept V_RCP_F32_e32 %6500:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104664B	  $vcc = COPY %6493:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104672B	  %6498:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6497:vgpr_32, 0, %6491:vgpr_32, 0, %6496:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104680B	  %6499:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6498:vgpr_32, 0, %6369:vgpr_32, 0, %6303:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104688B	  %6503:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6500:vgpr_32, 0, %6504:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104704B	  %6504:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6503:vgpr_32, %6504:vgpr_32, %6504:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104720B	  %6505:vgpr_32, %6506:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6304:vgpr_32, 0, %6369:vgpr_32, 0, %6304:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104736B	  %6509:vgpr_32 = nofpexcept V_MUL_F32_e32 %6505:vgpr_32, %6504:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104752B	  %6508:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6500:vgpr_32, 0, %6509:vgpr_32, 0, %6505:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104784B	  %6509:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6508:vgpr_32, %6504:vgpr_32, %6509:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104800B	  %6510:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6500:vgpr_32, 0, %6509:vgpr_32, 0, %6505:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104864B	  %6513:vgpr_32, dead %6514:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6305:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104880B	  %6517:vgpr_32 = nofpexcept V_RCP_F32_e32 %6513:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104888B	  $vcc = COPY %6506:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104896B	  %6511:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6510:vgpr_32, 0, %6504:vgpr_32, 0, %6509:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104904B	  %6512:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6511:vgpr_32, 0, %6369:vgpr_32, 0, %6304:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104912B	  %6516:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6513:vgpr_32, 0, %6517:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104928B	  %6517:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6516:vgpr_32, %6517:vgpr_32, %6517:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104944B	  %6518:vgpr_32, %6519:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6305:vgpr_32, 0, %6369:vgpr_32, 0, %6305:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104960B	  %6522:vgpr_32 = nofpexcept V_MUL_F32_e32 %6518:vgpr_32, %6517:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
104976B	  %6521:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6513:vgpr_32, 0, %6522:vgpr_32, 0, %6518:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105008B	  %6522:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6521:vgpr_32, %6517:vgpr_32, %6522:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105024B	  %6523:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6513:vgpr_32, 0, %6522:vgpr_32, 0, %6518:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105088B	  %6526:vgpr_32, dead %6527:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6306:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105104B	  %6530:vgpr_32 = nofpexcept V_RCP_F32_e32 %6526:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105112B	  $vcc = COPY %6519:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105120B	  %6524:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6523:vgpr_32, 0, %6517:vgpr_32, 0, %6522:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105128B	  %6525:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6524:vgpr_32, 0, %6369:vgpr_32, 0, %6305:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105136B	  %6529:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6526:vgpr_32, 0, %6530:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105152B	  %6530:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6529:vgpr_32, %6530:vgpr_32, %6530:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105168B	  %6531:vgpr_32, %6532:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6306:vgpr_32, 0, %6369:vgpr_32, 0, %6306:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105184B	  %6535:vgpr_32 = nofpexcept V_MUL_F32_e32 %6531:vgpr_32, %6530:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105200B	  %6534:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6526:vgpr_32, 0, %6535:vgpr_32, 0, %6531:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105232B	  %6535:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6534:vgpr_32, %6530:vgpr_32, %6535:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105248B	  %6536:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6526:vgpr_32, 0, %6535:vgpr_32, 0, %6531:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105312B	  %6539:vgpr_32, dead %6540:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6307:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105328B	  %6543:vgpr_32 = nofpexcept V_RCP_F32_e32 %6539:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105336B	  $vcc = COPY %6532:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105344B	  %6537:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6536:vgpr_32, 0, %6530:vgpr_32, 0, %6535:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105352B	  %6538:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6537:vgpr_32, 0, %6369:vgpr_32, 0, %6306:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105360B	  %6542:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6539:vgpr_32, 0, %6543:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105376B	  %6543:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6542:vgpr_32, %6543:vgpr_32, %6543:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105392B	  %6544:vgpr_32, %6545:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6307:vgpr_32, 0, %6369:vgpr_32, 0, %6307:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105408B	  %6548:vgpr_32 = nofpexcept V_MUL_F32_e32 %6544:vgpr_32, %6543:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105424B	  %6547:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6539:vgpr_32, 0, %6548:vgpr_32, 0, %6544:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105456B	  %6548:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6547:vgpr_32, %6543:vgpr_32, %6548:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105472B	  %6549:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6539:vgpr_32, 0, %6548:vgpr_32, 0, %6544:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105536B	  %6552:vgpr_32, dead %6553:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6308:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105552B	  %6556:vgpr_32 = nofpexcept V_RCP_F32_e32 %6552:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105560B	  $vcc = COPY %6545:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105568B	  %6550:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6549:vgpr_32, 0, %6543:vgpr_32, 0, %6548:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105576B	  %6551:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6550:vgpr_32, 0, %6369:vgpr_32, 0, %6307:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105584B	  %6555:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6552:vgpr_32, 0, %6556:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105600B	  %6556:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6555:vgpr_32, %6556:vgpr_32, %6556:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105616B	  %6557:vgpr_32, %6558:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6308:vgpr_32, 0, %6369:vgpr_32, 0, %6308:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105632B	  %6561:vgpr_32 = nofpexcept V_MUL_F32_e32 %6557:vgpr_32, %6556:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105648B	  %6560:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6552:vgpr_32, 0, %6561:vgpr_32, 0, %6557:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105680B	  %6561:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6560:vgpr_32, %6556:vgpr_32, %6561:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105696B	  %6562:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6552:vgpr_32, 0, %6561:vgpr_32, 0, %6557:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105760B	  %6565:vgpr_32, dead %6566:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6309:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105776B	  %6569:vgpr_32 = nofpexcept V_RCP_F32_e32 %6565:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105784B	  $vcc = COPY %6558:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105792B	  %6563:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6562:vgpr_32, 0, %6556:vgpr_32, 0, %6561:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105800B	  %6564:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6563:vgpr_32, 0, %6369:vgpr_32, 0, %6308:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105808B	  %6568:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6565:vgpr_32, 0, %6569:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105824B	  %6569:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6568:vgpr_32, %6569:vgpr_32, %6569:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105840B	  %6570:vgpr_32, %6571:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6309:vgpr_32, 0, %6369:vgpr_32, 0, %6309:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105856B	  %6574:vgpr_32 = nofpexcept V_MUL_F32_e32 %6570:vgpr_32, %6569:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105872B	  %6573:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6565:vgpr_32, 0, %6574:vgpr_32, 0, %6570:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105904B	  %6574:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6573:vgpr_32, %6569:vgpr_32, %6574:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105920B	  %6575:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6565:vgpr_32, 0, %6574:vgpr_32, 0, %6570:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
105984B	  %6578:vgpr_32, dead %6579:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6310:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106000B	  %6582:vgpr_32 = nofpexcept V_RCP_F32_e32 %6578:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106008B	  $vcc = COPY %6571:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106016B	  %6576:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6575:vgpr_32, 0, %6569:vgpr_32, 0, %6574:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106024B	  %6577:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6576:vgpr_32, 0, %6369:vgpr_32, 0, %6309:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106032B	  %6581:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6578:vgpr_32, 0, %6582:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106048B	  %6582:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6581:vgpr_32, %6582:vgpr_32, %6582:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106064B	  %6583:vgpr_32, %6584:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6310:vgpr_32, 0, %6369:vgpr_32, 0, %6310:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106080B	  %6587:vgpr_32 = nofpexcept V_MUL_F32_e32 %6583:vgpr_32, %6582:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106096B	  %6586:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6578:vgpr_32, 0, %6587:vgpr_32, 0, %6583:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106128B	  %6587:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6586:vgpr_32, %6582:vgpr_32, %6587:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106144B	  %6588:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6578:vgpr_32, 0, %6587:vgpr_32, 0, %6583:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106208B	  %6591:vgpr_32, dead %6592:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6311:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106224B	  %6595:vgpr_32 = nofpexcept V_RCP_F32_e32 %6591:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106232B	  $vcc = COPY %6584:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106240B	  %6589:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6588:vgpr_32, 0, %6582:vgpr_32, 0, %6587:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106248B	  %6590:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6589:vgpr_32, 0, %6369:vgpr_32, 0, %6310:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106256B	  %6594:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6591:vgpr_32, 0, %6595:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106272B	  %6595:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6594:vgpr_32, %6595:vgpr_32, %6595:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106288B	  %6596:vgpr_32, %6597:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6311:vgpr_32, 0, %6369:vgpr_32, 0, %6311:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106304B	  %6600:vgpr_32 = nofpexcept V_MUL_F32_e32 %6596:vgpr_32, %6595:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106320B	  %6599:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6591:vgpr_32, 0, %6600:vgpr_32, 0, %6596:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106352B	  %6600:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6599:vgpr_32, %6595:vgpr_32, %6600:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106368B	  %6601:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6591:vgpr_32, 0, %6600:vgpr_32, 0, %6596:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106432B	  %6604:vgpr_32, dead %6605:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6312:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106448B	  %6608:vgpr_32 = nofpexcept V_RCP_F32_e32 %6604:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106456B	  $vcc = COPY %6597:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106464B	  %6602:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6601:vgpr_32, 0, %6595:vgpr_32, 0, %6600:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106472B	  %6603:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6602:vgpr_32, 0, %6369:vgpr_32, 0, %6311:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106480B	  %6607:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6604:vgpr_32, 0, %6608:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106496B	  %6608:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6607:vgpr_32, %6608:vgpr_32, %6608:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106512B	  %6609:vgpr_32, %6610:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6312:vgpr_32, 0, %6369:vgpr_32, 0, %6312:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106528B	  %6613:vgpr_32 = nofpexcept V_MUL_F32_e32 %6609:vgpr_32, %6608:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106544B	  %6612:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6604:vgpr_32, 0, %6613:vgpr_32, 0, %6609:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106576B	  %6613:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6612:vgpr_32, %6608:vgpr_32, %6613:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106592B	  %6614:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6604:vgpr_32, 0, %6613:vgpr_32, 0, %6609:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106656B	  %6617:vgpr_32, dead %6618:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6313:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106672B	  %6621:vgpr_32 = nofpexcept V_RCP_F32_e32 %6617:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106680B	  $vcc = COPY %6610:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106688B	  %6615:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6614:vgpr_32, 0, %6608:vgpr_32, 0, %6613:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106696B	  %6616:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6615:vgpr_32, 0, %6369:vgpr_32, 0, %6312:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106704B	  %6620:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6617:vgpr_32, 0, %6621:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106720B	  %6621:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6620:vgpr_32, %6621:vgpr_32, %6621:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106736B	  %6622:vgpr_32, %6623:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6313:vgpr_32, 0, %6369:vgpr_32, 0, %6313:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106752B	  %6626:vgpr_32 = nofpexcept V_MUL_F32_e32 %6622:vgpr_32, %6621:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106768B	  %6625:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6617:vgpr_32, 0, %6626:vgpr_32, 0, %6622:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106800B	  %6626:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6625:vgpr_32, %6621:vgpr_32, %6626:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106816B	  %6627:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6617:vgpr_32, 0, %6626:vgpr_32, 0, %6622:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106880B	  %6630:vgpr_32, dead %6631:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6314:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106896B	  %6634:vgpr_32 = nofpexcept V_RCP_F32_e32 %6630:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106904B	  $vcc = COPY %6623:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106912B	  %6628:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6627:vgpr_32, 0, %6621:vgpr_32, 0, %6626:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106920B	  %6629:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6628:vgpr_32, 0, %6369:vgpr_32, 0, %6313:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106928B	  %6633:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6630:vgpr_32, 0, %6634:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106944B	  %6634:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6633:vgpr_32, %6634:vgpr_32, %6634:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106960B	  %6635:vgpr_32, %6636:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6314:vgpr_32, 0, %6369:vgpr_32, 0, %6314:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106976B	  %6639:vgpr_32 = nofpexcept V_MUL_F32_e32 %6635:vgpr_32, %6634:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
106992B	  %6638:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6630:vgpr_32, 0, %6639:vgpr_32, 0, %6635:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107024B	  %6639:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6638:vgpr_32, %6634:vgpr_32, %6639:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107040B	  %6640:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6630:vgpr_32, 0, %6639:vgpr_32, 0, %6635:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107104B	  %6643:vgpr_32, dead %6644:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6315:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107120B	  %6647:vgpr_32 = nofpexcept V_RCP_F32_e32 %6643:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107128B	  $vcc = COPY %6636:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107136B	  %6641:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6640:vgpr_32, 0, %6634:vgpr_32, 0, %6639:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107144B	  %6642:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6641:vgpr_32, 0, %6369:vgpr_32, 0, %6314:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107152B	  %6646:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6643:vgpr_32, 0, %6647:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107168B	  %6647:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6646:vgpr_32, %6647:vgpr_32, %6647:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107184B	  %6648:vgpr_32, %6649:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6315:vgpr_32, 0, %6369:vgpr_32, 0, %6315:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107200B	  %6652:vgpr_32 = nofpexcept V_MUL_F32_e32 %6648:vgpr_32, %6647:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107216B	  %6651:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6643:vgpr_32, 0, %6652:vgpr_32, 0, %6648:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107248B	  %6652:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6651:vgpr_32, %6647:vgpr_32, %6652:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107264B	  %6653:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6643:vgpr_32, 0, %6652:vgpr_32, 0, %6648:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107328B	  %6656:vgpr_32, dead %6657:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6316:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107344B	  %6660:vgpr_32 = nofpexcept V_RCP_F32_e32 %6656:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107352B	  $vcc = COPY %6649:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107360B	  %6654:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6653:vgpr_32, 0, %6647:vgpr_32, 0, %6652:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107368B	  %6655:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6654:vgpr_32, 0, %6369:vgpr_32, 0, %6315:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107376B	  %6659:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6656:vgpr_32, 0, %6660:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107392B	  %6660:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6659:vgpr_32, %6660:vgpr_32, %6660:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107408B	  %6661:vgpr_32, %6662:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6316:vgpr_32, 0, %6369:vgpr_32, 0, %6316:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107424B	  %6665:vgpr_32 = nofpexcept V_MUL_F32_e32 %6661:vgpr_32, %6660:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107440B	  %6664:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6656:vgpr_32, 0, %6665:vgpr_32, 0, %6661:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107472B	  %6665:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6664:vgpr_32, %6660:vgpr_32, %6665:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107488B	  %6666:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6656:vgpr_32, 0, %6665:vgpr_32, 0, %6661:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107552B	  %6669:vgpr_32, dead %6670:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6317:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107568B	  %6673:vgpr_32 = nofpexcept V_RCP_F32_e32 %6669:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107576B	  $vcc = COPY %6662:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107584B	  %6667:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6666:vgpr_32, 0, %6660:vgpr_32, 0, %6665:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107592B	  %6668:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6667:vgpr_32, 0, %6369:vgpr_32, 0, %6316:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107600B	  %6672:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6669:vgpr_32, 0, %6673:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107616B	  %6673:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6672:vgpr_32, %6673:vgpr_32, %6673:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107632B	  %6674:vgpr_32, %6675:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6317:vgpr_32, 0, %6369:vgpr_32, 0, %6317:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107648B	  %6678:vgpr_32 = nofpexcept V_MUL_F32_e32 %6674:vgpr_32, %6673:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107664B	  %6677:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6669:vgpr_32, 0, %6678:vgpr_32, 0, %6674:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107696B	  %6678:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6677:vgpr_32, %6673:vgpr_32, %6678:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107712B	  %6679:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6669:vgpr_32, 0, %6678:vgpr_32, 0, %6674:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107776B	  %6682:vgpr_32, dead %6683:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6318:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107792B	  %6686:vgpr_32 = nofpexcept V_RCP_F32_e32 %6682:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107800B	  $vcc = COPY %6675:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107808B	  %6680:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6679:vgpr_32, 0, %6673:vgpr_32, 0, %6678:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107816B	  %6681:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6680:vgpr_32, 0, %6369:vgpr_32, 0, %6317:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107824B	  %6685:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6682:vgpr_32, 0, %6686:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107840B	  %6686:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6685:vgpr_32, %6686:vgpr_32, %6686:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107856B	  %6687:vgpr_32, %6688:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6318:vgpr_32, 0, %6369:vgpr_32, 0, %6318:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107872B	  %6691:vgpr_32 = nofpexcept V_MUL_F32_e32 %6687:vgpr_32, %6686:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107888B	  %6690:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6682:vgpr_32, 0, %6691:vgpr_32, 0, %6687:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107920B	  %6691:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6690:vgpr_32, %6686:vgpr_32, %6691:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
107936B	  %6692:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6682:vgpr_32, 0, %6691:vgpr_32, 0, %6687:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108000B	  %6695:vgpr_32, dead %6696:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108016B	  %6699:vgpr_32 = nofpexcept V_RCP_F32_e32 %6695:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108024B	  $vcc = COPY %6688:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108032B	  %6693:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6692:vgpr_32, 0, %6686:vgpr_32, 0, %6691:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108040B	  %6694:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6693:vgpr_32, 0, %6369:vgpr_32, 0, %6318:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108048B	  %6698:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6695:vgpr_32, 0, %6699:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108064B	  %6699:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6698:vgpr_32, %6699:vgpr_32, %6699:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108080B	  %6700:vgpr_32, %6701:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6319:vgpr_32, 0, %6369:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108096B	  %6704:vgpr_32 = nofpexcept V_MUL_F32_e32 %6700:vgpr_32, %6699:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108112B	  %6703:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6695:vgpr_32, 0, %6704:vgpr_32, 0, %6700:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108144B	  %6704:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6703:vgpr_32, %6699:vgpr_32, %6704:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108160B	  %6705:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6695:vgpr_32, 0, %6704:vgpr_32, 0, %6700:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108224B	  %6708:vgpr_32, dead %6709:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6320:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108240B	  %6712:vgpr_32 = nofpexcept V_RCP_F32_e32 %6708:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108248B	  $vcc = COPY %6701:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108256B	  %6706:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6705:vgpr_32, 0, %6699:vgpr_32, 0, %6704:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108264B	  %6707:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6706:vgpr_32, 0, %6369:vgpr_32, 0, %6319:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108272B	  %6711:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6708:vgpr_32, 0, %6712:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108288B	  %6712:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6711:vgpr_32, %6712:vgpr_32, %6712:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108304B	  %6713:vgpr_32, %6714:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6320:vgpr_32, 0, %6369:vgpr_32, 0, %6320:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108320B	  %6717:vgpr_32 = nofpexcept V_MUL_F32_e32 %6713:vgpr_32, %6712:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108336B	  %6716:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6708:vgpr_32, 0, %6717:vgpr_32, 0, %6713:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108368B	  %6717:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6716:vgpr_32, %6712:vgpr_32, %6717:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108384B	  %6718:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6708:vgpr_32, 0, %6717:vgpr_32, 0, %6713:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108448B	  %6721:vgpr_32, dead %6722:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6321:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108464B	  %6725:vgpr_32 = nofpexcept V_RCP_F32_e32 %6721:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108472B	  $vcc = COPY %6714:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108480B	  %6719:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6718:vgpr_32, 0, %6712:vgpr_32, 0, %6717:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108488B	  %6720:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6719:vgpr_32, 0, %6369:vgpr_32, 0, %6320:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108496B	  %6724:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6721:vgpr_32, 0, %6725:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108512B	  %6725:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6724:vgpr_32, %6725:vgpr_32, %6725:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108528B	  %6726:vgpr_32, %6727:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6321:vgpr_32, 0, %6369:vgpr_32, 0, %6321:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108544B	  %6730:vgpr_32 = nofpexcept V_MUL_F32_e32 %6726:vgpr_32, %6725:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108560B	  %6729:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6721:vgpr_32, 0, %6730:vgpr_32, 0, %6726:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108592B	  %6730:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6729:vgpr_32, %6725:vgpr_32, %6730:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108608B	  %6731:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6721:vgpr_32, 0, %6730:vgpr_32, 0, %6726:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108672B	  %6734:vgpr_32, dead %6735:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6322:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108688B	  %6738:vgpr_32 = nofpexcept V_RCP_F32_e32 %6734:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108696B	  $vcc = COPY %6727:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108704B	  %6732:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6731:vgpr_32, 0, %6725:vgpr_32, 0, %6730:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108712B	  %6733:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6732:vgpr_32, 0, %6369:vgpr_32, 0, %6321:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108720B	  %6737:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6734:vgpr_32, 0, %6738:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108736B	  %6738:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6737:vgpr_32, %6738:vgpr_32, %6738:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108752B	  %6739:vgpr_32, %6740:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6322:vgpr_32, 0, %6369:vgpr_32, 0, %6322:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108768B	  %6743:vgpr_32 = nofpexcept V_MUL_F32_e32 %6739:vgpr_32, %6738:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108784B	  %6742:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6734:vgpr_32, 0, %6743:vgpr_32, 0, %6739:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108816B	  %6743:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6742:vgpr_32, %6738:vgpr_32, %6743:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108832B	  %6744:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6734:vgpr_32, 0, %6743:vgpr_32, 0, %6739:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108896B	  %6747:vgpr_32, dead %6748:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108912B	  %6751:vgpr_32 = nofpexcept V_RCP_F32_e32 %6747:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108920B	  $vcc = COPY %6740:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108928B	  %6745:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6744:vgpr_32, 0, %6738:vgpr_32, 0, %6743:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108936B	  %6746:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6745:vgpr_32, 0, %6369:vgpr_32, 0, %6322:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108944B	  %6750:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6747:vgpr_32, 0, %6751:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108960B	  %6751:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6750:vgpr_32, %6751:vgpr_32, %6751:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108976B	  %6752:vgpr_32, %6753:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6323:vgpr_32, 0, %6369:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
108992B	  %6756:vgpr_32 = nofpexcept V_MUL_F32_e32 %6752:vgpr_32, %6751:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109008B	  %6755:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6747:vgpr_32, 0, %6756:vgpr_32, 0, %6752:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109040B	  %6756:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6755:vgpr_32, %6751:vgpr_32, %6756:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109056B	  %6757:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6747:vgpr_32, 0, %6756:vgpr_32, 0, %6752:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109120B	  %6760:vgpr_32, dead %6761:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6324:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109136B	  %6764:vgpr_32 = nofpexcept V_RCP_F32_e32 %6760:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109144B	  $vcc = COPY %6753:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109152B	  %6758:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6757:vgpr_32, 0, %6751:vgpr_32, 0, %6756:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109160B	  %6759:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6758:vgpr_32, 0, %6369:vgpr_32, 0, %6323:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109168B	  %6763:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6760:vgpr_32, 0, %6764:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109184B	  %6764:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6763:vgpr_32, %6764:vgpr_32, %6764:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109200B	  %6765:vgpr_32, %6766:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6324:vgpr_32, 0, %6369:vgpr_32, 0, %6324:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109216B	  %6769:vgpr_32 = nofpexcept V_MUL_F32_e32 %6765:vgpr_32, %6764:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109232B	  %6768:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6760:vgpr_32, 0, %6769:vgpr_32, 0, %6765:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109264B	  %6769:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6768:vgpr_32, %6764:vgpr_32, %6769:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109280B	  %6770:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6760:vgpr_32, 0, %6769:vgpr_32, 0, %6765:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109344B	  %6773:vgpr_32, dead %6774:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6325:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109360B	  %6777:vgpr_32 = nofpexcept V_RCP_F32_e32 %6773:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109368B	  $vcc = COPY %6766:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109376B	  %6771:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6770:vgpr_32, 0, %6764:vgpr_32, 0, %6769:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109384B	  %6772:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6771:vgpr_32, 0, %6369:vgpr_32, 0, %6324:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109392B	  %6776:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6773:vgpr_32, 0, %6777:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109408B	  %6777:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6776:vgpr_32, %6777:vgpr_32, %6777:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109424B	  %6778:vgpr_32, %6779:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6325:vgpr_32, 0, %6369:vgpr_32, 0, %6325:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109440B	  %6782:vgpr_32 = nofpexcept V_MUL_F32_e32 %6778:vgpr_32, %6777:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109456B	  %6781:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6773:vgpr_32, 0, %6782:vgpr_32, 0, %6778:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109488B	  %6782:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6781:vgpr_32, %6777:vgpr_32, %6782:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109504B	  %6783:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6773:vgpr_32, 0, %6782:vgpr_32, 0, %6778:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109568B	  %6786:vgpr_32, dead %6787:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6326:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109584B	  %6790:vgpr_32 = nofpexcept V_RCP_F32_e32 %6786:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109592B	  $vcc = COPY %6779:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109600B	  %6784:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6783:vgpr_32, 0, %6777:vgpr_32, 0, %6782:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109608B	  %6785:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6784:vgpr_32, 0, %6369:vgpr_32, 0, %6325:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109616B	  %6789:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6786:vgpr_32, 0, %6790:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109632B	  %6790:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6789:vgpr_32, %6790:vgpr_32, %6790:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109648B	  %6791:vgpr_32, %6792:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6326:vgpr_32, 0, %6369:vgpr_32, 0, %6326:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109664B	  %6795:vgpr_32 = nofpexcept V_MUL_F32_e32 %6791:vgpr_32, %6790:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109680B	  %6794:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6786:vgpr_32, 0, %6795:vgpr_32, 0, %6791:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109712B	  %6795:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6794:vgpr_32, %6790:vgpr_32, %6795:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109728B	  %6796:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6786:vgpr_32, 0, %6795:vgpr_32, 0, %6791:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109792B	  %6799:vgpr_32, dead %6800:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6327:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109808B	  %6803:vgpr_32 = nofpexcept V_RCP_F32_e32 %6799:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109816B	  $vcc = COPY %6792:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109824B	  %6797:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6796:vgpr_32, 0, %6790:vgpr_32, 0, %6795:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109832B	  %6798:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6797:vgpr_32, 0, %6369:vgpr_32, 0, %6326:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109840B	  %6802:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6799:vgpr_32, 0, %6803:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109856B	  %6803:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6802:vgpr_32, %6803:vgpr_32, %6803:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109872B	  %6804:vgpr_32, %6805:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6327:vgpr_32, 0, %6369:vgpr_32, 0, %6327:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109888B	  %6808:vgpr_32 = nofpexcept V_MUL_F32_e32 %6804:vgpr_32, %6803:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109904B	  %6807:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6799:vgpr_32, 0, %6808:vgpr_32, 0, %6804:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109936B	  %6808:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6807:vgpr_32, %6803:vgpr_32, %6808:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
109952B	  %6809:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6799:vgpr_32, 0, %6808:vgpr_32, 0, %6804:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110016B	  %6812:vgpr_32, dead %6813:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6328:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110032B	  %6816:vgpr_32 = nofpexcept V_RCP_F32_e32 %6812:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110040B	  $vcc = COPY %6805:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110048B	  %6810:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6809:vgpr_32, 0, %6803:vgpr_32, 0, %6808:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110056B	  %6811:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6810:vgpr_32, 0, %6369:vgpr_32, 0, %6327:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110064B	  %6815:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6812:vgpr_32, 0, %6816:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110080B	  %6816:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6815:vgpr_32, %6816:vgpr_32, %6816:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110096B	  %6817:vgpr_32, %6818:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6328:vgpr_32, 0, %6369:vgpr_32, 0, %6328:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110112B	  %6821:vgpr_32 = nofpexcept V_MUL_F32_e32 %6817:vgpr_32, %6816:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110128B	  %6820:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6812:vgpr_32, 0, %6821:vgpr_32, 0, %6817:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110160B	  %6821:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6820:vgpr_32, %6816:vgpr_32, %6821:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110176B	  %6822:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6812:vgpr_32, 0, %6821:vgpr_32, 0, %6817:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110240B	  %6825:vgpr_32, dead %6826:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6329:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110256B	  %6829:vgpr_32 = nofpexcept V_RCP_F32_e32 %6825:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110264B	  $vcc = COPY %6818:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110272B	  %6823:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6822:vgpr_32, 0, %6816:vgpr_32, 0, %6821:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110280B	  %6824:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6823:vgpr_32, 0, %6369:vgpr_32, 0, %6328:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110288B	  %6828:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6825:vgpr_32, 0, %6829:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110304B	  %6829:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6828:vgpr_32, %6829:vgpr_32, %6829:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110320B	  %6830:vgpr_32, %6831:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6329:vgpr_32, 0, %6369:vgpr_32, 0, %6329:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110336B	  %6834:vgpr_32 = nofpexcept V_MUL_F32_e32 %6830:vgpr_32, %6829:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110352B	  %6833:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6825:vgpr_32, 0, %6834:vgpr_32, 0, %6830:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110384B	  %6834:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6833:vgpr_32, %6829:vgpr_32, %6834:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110400B	  %6835:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6825:vgpr_32, 0, %6834:vgpr_32, 0, %6830:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110464B	  %6838:vgpr_32, dead %6839:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6330:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110480B	  %6842:vgpr_32 = nofpexcept V_RCP_F32_e32 %6838:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110488B	  $vcc = COPY %6831:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110496B	  %6836:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6835:vgpr_32, 0, %6829:vgpr_32, 0, %6834:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110504B	  %6837:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6836:vgpr_32, 0, %6369:vgpr_32, 0, %6329:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110512B	  %6841:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6838:vgpr_32, 0, %6842:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110528B	  %6842:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6841:vgpr_32, %6842:vgpr_32, %6842:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110544B	  %6843:vgpr_32, %6844:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6330:vgpr_32, 0, %6369:vgpr_32, 0, %6330:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110560B	  %6847:vgpr_32 = nofpexcept V_MUL_F32_e32 %6843:vgpr_32, %6842:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110576B	  %6846:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6838:vgpr_32, 0, %6847:vgpr_32, 0, %6843:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110608B	  %6847:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6846:vgpr_32, %6842:vgpr_32, %6847:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110624B	  %6848:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6838:vgpr_32, 0, %6847:vgpr_32, 0, %6843:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110688B	  %6851:vgpr_32, dead %6852:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6331:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110704B	  %6855:vgpr_32 = nofpexcept V_RCP_F32_e32 %6851:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110712B	  $vcc = COPY %6844:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110720B	  %6849:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6848:vgpr_32, 0, %6842:vgpr_32, 0, %6847:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110728B	  %6850:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6849:vgpr_32, 0, %6369:vgpr_32, 0, %6330:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110736B	  %6854:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6851:vgpr_32, 0, %6855:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110752B	  %6855:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6854:vgpr_32, %6855:vgpr_32, %6855:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110768B	  %6856:vgpr_32, %6857:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6331:vgpr_32, 0, %6369:vgpr_32, 0, %6331:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110784B	  %6860:vgpr_32 = nofpexcept V_MUL_F32_e32 %6856:vgpr_32, %6855:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110800B	  %6859:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6851:vgpr_32, 0, %6860:vgpr_32, 0, %6856:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110832B	  %6860:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6859:vgpr_32, %6855:vgpr_32, %6860:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110848B	  %6861:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6851:vgpr_32, 0, %6860:vgpr_32, 0, %6856:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110912B	  %6864:vgpr_32, dead %6865:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110928B	  %6868:vgpr_32 = nofpexcept V_RCP_F32_e32 %6864:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110936B	  $vcc = COPY %6857:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110944B	  %6862:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6861:vgpr_32, 0, %6855:vgpr_32, 0, %6860:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110952B	  %6863:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6862:vgpr_32, 0, %6369:vgpr_32, 0, %6331:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110960B	  %6867:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6864:vgpr_32, 0, %6868:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110976B	  %6868:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6867:vgpr_32, %6868:vgpr_32, %6868:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
110992B	  %6869:vgpr_32, %6870:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6332:vgpr_32, 0, %6369:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111008B	  %6873:vgpr_32 = nofpexcept V_MUL_F32_e32 %6869:vgpr_32, %6868:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111024B	  %6872:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6864:vgpr_32, 0, %6873:vgpr_32, 0, %6869:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111056B	  %6873:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6872:vgpr_32, %6868:vgpr_32, %6873:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111072B	  %6874:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6864:vgpr_32, 0, %6873:vgpr_32, 0, %6869:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111136B	  %6877:vgpr_32, dead %6878:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6333:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111152B	  %6881:vgpr_32 = nofpexcept V_RCP_F32_e32 %6877:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111160B	  $vcc = COPY %6870:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111168B	  %6875:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6874:vgpr_32, 0, %6868:vgpr_32, 0, %6873:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111176B	  %6876:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6875:vgpr_32, 0, %6369:vgpr_32, 0, %6332:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111184B	  %6880:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6877:vgpr_32, 0, %6881:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111200B	  %6881:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6880:vgpr_32, %6881:vgpr_32, %6881:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111216B	  %6882:vgpr_32, %6883:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6333:vgpr_32, 0, %6369:vgpr_32, 0, %6333:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111232B	  %6886:vgpr_32 = nofpexcept V_MUL_F32_e32 %6882:vgpr_32, %6881:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111248B	  %6885:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6877:vgpr_32, 0, %6886:vgpr_32, 0, %6882:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111280B	  %6886:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6885:vgpr_32, %6881:vgpr_32, %6886:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111296B	  %6887:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6877:vgpr_32, 0, %6886:vgpr_32, 0, %6882:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111360B	  %6890:vgpr_32, dead %6891:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6334:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111376B	  %6894:vgpr_32 = nofpexcept V_RCP_F32_e32 %6890:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111384B	  $vcc = COPY %6883:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111392B	  %6888:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6887:vgpr_32, 0, %6881:vgpr_32, 0, %6886:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111400B	  %6889:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6888:vgpr_32, 0, %6369:vgpr_32, 0, %6333:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111408B	  %6893:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6890:vgpr_32, 0, %6894:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111424B	  %6894:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6893:vgpr_32, %6894:vgpr_32, %6894:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111440B	  %6895:vgpr_32, %6896:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6334:vgpr_32, 0, %6369:vgpr_32, 0, %6334:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111456B	  %6899:vgpr_32 = nofpexcept V_MUL_F32_e32 %6895:vgpr_32, %6894:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111472B	  %6898:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6890:vgpr_32, 0, %6899:vgpr_32, 0, %6895:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111504B	  %6899:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6898:vgpr_32, %6894:vgpr_32, %6899:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111520B	  %6900:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6890:vgpr_32, 0, %6899:vgpr_32, 0, %6895:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111584B	  %6903:vgpr_32, dead %6904:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6335:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111600B	  %6907:vgpr_32 = nofpexcept V_RCP_F32_e32 %6903:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111608B	  $vcc = COPY %6896:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111616B	  %6901:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6900:vgpr_32, 0, %6894:vgpr_32, 0, %6899:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111624B	  %6902:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6901:vgpr_32, 0, %6369:vgpr_32, 0, %6334:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111632B	  %6906:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6903:vgpr_32, 0, %6907:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111648B	  %6907:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6906:vgpr_32, %6907:vgpr_32, %6907:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111664B	  %6908:vgpr_32, %6909:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6335:vgpr_32, 0, %6369:vgpr_32, 0, %6335:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111680B	  %6912:vgpr_32 = nofpexcept V_MUL_F32_e32 %6908:vgpr_32, %6907:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111696B	  %6911:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6903:vgpr_32, 0, %6912:vgpr_32, 0, %6908:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111728B	  %6912:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6911:vgpr_32, %6907:vgpr_32, %6912:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111744B	  %6913:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6903:vgpr_32, 0, %6912:vgpr_32, 0, %6908:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111808B	  %6916:vgpr_32, dead %6917:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111824B	  %6920:vgpr_32 = nofpexcept V_RCP_F32_e32 %6916:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111832B	  $vcc = COPY %6909:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111840B	  %6914:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6913:vgpr_32, 0, %6907:vgpr_32, 0, %6912:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111848B	  %6915:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6914:vgpr_32, 0, %6369:vgpr_32, 0, %6335:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111856B	  %6919:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6916:vgpr_32, 0, %6920:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111872B	  %6920:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6919:vgpr_32, %6920:vgpr_32, %6920:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111888B	  %6921:vgpr_32, %6922:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6336:vgpr_32, 0, %6369:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111904B	  %6925:vgpr_32 = nofpexcept V_MUL_F32_e32 %6921:vgpr_32, %6920:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111920B	  %6924:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6916:vgpr_32, 0, %6925:vgpr_32, 0, %6921:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111952B	  %6925:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6924:vgpr_32, %6920:vgpr_32, %6925:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
111968B	  %6926:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6916:vgpr_32, 0, %6925:vgpr_32, 0, %6921:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112032B	  %6929:vgpr_32, dead %6930:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6337:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112048B	  %6933:vgpr_32 = nofpexcept V_RCP_F32_e32 %6929:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112056B	  $vcc = COPY %6922:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112064B	  %6927:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6926:vgpr_32, 0, %6920:vgpr_32, 0, %6925:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112072B	  %6928:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6927:vgpr_32, 0, %6369:vgpr_32, 0, %6336:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112080B	  %6932:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6929:vgpr_32, 0, %6933:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112096B	  %6933:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6932:vgpr_32, %6933:vgpr_32, %6933:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112112B	  %6934:vgpr_32, %6935:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6337:vgpr_32, 0, %6369:vgpr_32, 0, %6337:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112128B	  %6938:vgpr_32 = nofpexcept V_MUL_F32_e32 %6934:vgpr_32, %6933:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112144B	  %6937:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6929:vgpr_32, 0, %6938:vgpr_32, 0, %6934:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112176B	  %6938:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6937:vgpr_32, %6933:vgpr_32, %6938:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112192B	  %6939:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6929:vgpr_32, 0, %6938:vgpr_32, 0, %6934:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112256B	  %6942:vgpr_32, dead %6943:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6338:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112272B	  %6946:vgpr_32 = nofpexcept V_RCP_F32_e32 %6942:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112280B	  $vcc = COPY %6935:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112288B	  %6940:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6939:vgpr_32, 0, %6933:vgpr_32, 0, %6938:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112296B	  %6941:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6940:vgpr_32, 0, %6369:vgpr_32, 0, %6337:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112304B	  %6945:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6942:vgpr_32, 0, %6946:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112320B	  %6946:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6945:vgpr_32, %6946:vgpr_32, %6946:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112336B	  %6947:vgpr_32, %6948:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6338:vgpr_32, 0, %6369:vgpr_32, 0, %6338:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112352B	  %6951:vgpr_32 = nofpexcept V_MUL_F32_e32 %6947:vgpr_32, %6946:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112368B	  %6950:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6942:vgpr_32, 0, %6951:vgpr_32, 0, %6947:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112400B	  %6951:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6950:vgpr_32, %6946:vgpr_32, %6951:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112416B	  %6952:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6942:vgpr_32, 0, %6951:vgpr_32, 0, %6947:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112480B	  %6955:vgpr_32, dead %6956:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6339:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112496B	  %6959:vgpr_32 = nofpexcept V_RCP_F32_e32 %6955:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112504B	  $vcc = COPY %6948:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112512B	  %6953:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6952:vgpr_32, 0, %6946:vgpr_32, 0, %6951:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112520B	  %6954:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6953:vgpr_32, 0, %6369:vgpr_32, 0, %6338:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112528B	  %6958:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6955:vgpr_32, 0, %6959:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112544B	  %6959:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6958:vgpr_32, %6959:vgpr_32, %6959:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112560B	  %6960:vgpr_32, %6961:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6339:vgpr_32, 0, %6369:vgpr_32, 0, %6339:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112576B	  %6964:vgpr_32 = nofpexcept V_MUL_F32_e32 %6960:vgpr_32, %6959:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112592B	  %6963:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6955:vgpr_32, 0, %6964:vgpr_32, 0, %6960:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112624B	  %6964:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6963:vgpr_32, %6959:vgpr_32, %6964:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112640B	  %6965:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6955:vgpr_32, 0, %6964:vgpr_32, 0, %6960:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112704B	  %6968:vgpr_32, dead %6969:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6340:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112720B	  %6972:vgpr_32 = nofpexcept V_RCP_F32_e32 %6968:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112728B	  $vcc = COPY %6961:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112736B	  %6966:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6965:vgpr_32, 0, %6959:vgpr_32, 0, %6964:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112744B	  %6967:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6966:vgpr_32, 0, %6369:vgpr_32, 0, %6339:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112752B	  %6971:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6968:vgpr_32, 0, %6972:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112768B	  %6972:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6971:vgpr_32, %6972:vgpr_32, %6972:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112784B	  %6973:vgpr_32, %6974:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6340:vgpr_32, 0, %6369:vgpr_32, 0, %6340:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112800B	  %6977:vgpr_32 = nofpexcept V_MUL_F32_e32 %6973:vgpr_32, %6972:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112816B	  %6976:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6968:vgpr_32, 0, %6977:vgpr_32, 0, %6973:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112848B	  %6977:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6976:vgpr_32, %6972:vgpr_32, %6977:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112864B	  %6978:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6968:vgpr_32, 0, %6977:vgpr_32, 0, %6973:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112928B	  %6981:vgpr_32, dead %6982:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6341:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112944B	  %6985:vgpr_32 = nofpexcept V_RCP_F32_e32 %6981:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112952B	  $vcc = COPY %6974:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112960B	  %6979:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6978:vgpr_32, 0, %6972:vgpr_32, 0, %6977:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112968B	  %6980:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6979:vgpr_32, 0, %6369:vgpr_32, 0, %6340:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112976B	  %6984:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6981:vgpr_32, 0, %6985:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
112992B	  %6985:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6984:vgpr_32, %6985:vgpr_32, %6985:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113008B	  %6986:vgpr_32, %6987:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6341:vgpr_32, 0, %6369:vgpr_32, 0, %6341:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113024B	  %6990:vgpr_32 = nofpexcept V_MUL_F32_e32 %6986:vgpr_32, %6985:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113040B	  %6989:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6981:vgpr_32, 0, %6990:vgpr_32, 0, %6986:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113072B	  %6990:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6989:vgpr_32, %6985:vgpr_32, %6990:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113088B	  %6991:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6981:vgpr_32, 0, %6990:vgpr_32, 0, %6986:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113152B	  %6994:vgpr_32, dead %6995:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6342:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113168B	  %6998:vgpr_32 = nofpexcept V_RCP_F32_e32 %6994:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113176B	  $vcc = COPY %6987:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113184B	  %6992:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %6991:vgpr_32, 0, %6985:vgpr_32, 0, %6990:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113192B	  %6993:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %6992:vgpr_32, 0, %6369:vgpr_32, 0, %6341:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113200B	  %6997:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6994:vgpr_32, 0, %6998:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113216B	  %6998:vgpr_32 = nofpexcept V_FMAC_F32_e32 %6997:vgpr_32, %6998:vgpr_32, %6998:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113232B	  %6999:vgpr_32, %7000:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6342:vgpr_32, 0, %6369:vgpr_32, 0, %6342:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113248B	  %7003:vgpr_32 = nofpexcept V_MUL_F32_e32 %6999:vgpr_32, %6998:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113264B	  %7002:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6994:vgpr_32, 0, %7003:vgpr_32, 0, %6999:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113296B	  %7003:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7002:vgpr_32, %6998:vgpr_32, %7003:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113312B	  %7004:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %6994:vgpr_32, 0, %7003:vgpr_32, 0, %6999:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113376B	  %7007:vgpr_32, dead %7008:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6343:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113392B	  %7011:vgpr_32 = nofpexcept V_RCP_F32_e32 %7007:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113400B	  $vcc = COPY %7000:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113408B	  %7005:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7004:vgpr_32, 0, %6998:vgpr_32, 0, %7003:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113416B	  %7006:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7005:vgpr_32, 0, %6369:vgpr_32, 0, %6342:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113424B	  %7010:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7007:vgpr_32, 0, %7011:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113440B	  %7011:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7010:vgpr_32, %7011:vgpr_32, %7011:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113456B	  %7012:vgpr_32, %7013:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6343:vgpr_32, 0, %6369:vgpr_32, 0, %6343:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113472B	  %7016:vgpr_32 = nofpexcept V_MUL_F32_e32 %7012:vgpr_32, %7011:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113488B	  %7015:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7007:vgpr_32, 0, %7016:vgpr_32, 0, %7012:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113520B	  %7016:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7015:vgpr_32, %7011:vgpr_32, %7016:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113536B	  %7017:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7007:vgpr_32, 0, %7016:vgpr_32, 0, %7012:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113600B	  %7020:vgpr_32, dead %7021:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6344:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113616B	  %7024:vgpr_32 = nofpexcept V_RCP_F32_e32 %7020:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113624B	  $vcc = COPY %7013:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113632B	  %7018:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7017:vgpr_32, 0, %7011:vgpr_32, 0, %7016:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113640B	  %7019:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7018:vgpr_32, 0, %6369:vgpr_32, 0, %6343:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113648B	  %7023:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7020:vgpr_32, 0, %7024:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113664B	  %7024:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7023:vgpr_32, %7024:vgpr_32, %7024:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113680B	  %7025:vgpr_32, %7026:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6344:vgpr_32, 0, %6369:vgpr_32, 0, %6344:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113696B	  %7029:vgpr_32 = nofpexcept V_MUL_F32_e32 %7025:vgpr_32, %7024:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113712B	  %7028:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7020:vgpr_32, 0, %7029:vgpr_32, 0, %7025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113744B	  %7029:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7028:vgpr_32, %7024:vgpr_32, %7029:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113760B	  %7030:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7020:vgpr_32, 0, %7029:vgpr_32, 0, %7025:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113824B	  %7033:vgpr_32, dead %7034:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113840B	  %7037:vgpr_32 = nofpexcept V_RCP_F32_e32 %7033:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113848B	  $vcc = COPY %7026:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113856B	  %7031:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7030:vgpr_32, 0, %7024:vgpr_32, 0, %7029:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113864B	  %7032:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7031:vgpr_32, 0, %6369:vgpr_32, 0, %6344:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113872B	  %7036:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7033:vgpr_32, 0, %7037:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113888B	  %7037:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7036:vgpr_32, %7037:vgpr_32, %7037:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113904B	  %7038:vgpr_32, %7039:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6345:vgpr_32, 0, %6369:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113920B	  %7042:vgpr_32 = nofpexcept V_MUL_F32_e32 %7038:vgpr_32, %7037:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113936B	  %7041:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7033:vgpr_32, 0, %7042:vgpr_32, 0, %7038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113968B	  %7042:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7041:vgpr_32, %7037:vgpr_32, %7042:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
113984B	  %7043:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7033:vgpr_32, 0, %7042:vgpr_32, 0, %7038:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114048B	  %7046:vgpr_32, dead %7047:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6346:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114064B	  %7050:vgpr_32 = nofpexcept V_RCP_F32_e32 %7046:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114072B	  $vcc = COPY %7039:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114080B	  %7044:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7043:vgpr_32, 0, %7037:vgpr_32, 0, %7042:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114088B	  %7045:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7044:vgpr_32, 0, %6369:vgpr_32, 0, %6345:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114096B	  %7049:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7046:vgpr_32, 0, %7050:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114112B	  %7050:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7049:vgpr_32, %7050:vgpr_32, %7050:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114128B	  %7051:vgpr_32, %7052:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6346:vgpr_32, 0, %6369:vgpr_32, 0, %6346:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114144B	  %7055:vgpr_32 = nofpexcept V_MUL_F32_e32 %7051:vgpr_32, %7050:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114160B	  %7054:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7046:vgpr_32, 0, %7055:vgpr_32, 0, %7051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114192B	  %7055:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7054:vgpr_32, %7050:vgpr_32, %7055:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114208B	  %7056:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7046:vgpr_32, 0, %7055:vgpr_32, 0, %7051:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114272B	  %7059:vgpr_32, dead %7060:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6347:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114288B	  %7063:vgpr_32 = nofpexcept V_RCP_F32_e32 %7059:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114296B	  $vcc = COPY %7052:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114304B	  %7057:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7056:vgpr_32, 0, %7050:vgpr_32, 0, %7055:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114312B	  %7058:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7057:vgpr_32, 0, %6369:vgpr_32, 0, %6346:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114320B	  %7062:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7059:vgpr_32, 0, %7063:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114336B	  %7063:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7062:vgpr_32, %7063:vgpr_32, %7063:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114352B	  %7064:vgpr_32, %7065:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6347:vgpr_32, 0, %6369:vgpr_32, 0, %6347:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114368B	  %7068:vgpr_32 = nofpexcept V_MUL_F32_e32 %7064:vgpr_32, %7063:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114384B	  %7067:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7059:vgpr_32, 0, %7068:vgpr_32, 0, %7064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114416B	  %7068:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7067:vgpr_32, %7063:vgpr_32, %7068:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114432B	  %7069:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7059:vgpr_32, 0, %7068:vgpr_32, 0, %7064:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114496B	  %7072:vgpr_32, dead %7073:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6348:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114512B	  %7076:vgpr_32 = nofpexcept V_RCP_F32_e32 %7072:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114520B	  $vcc = COPY %7065:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114528B	  %7070:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7069:vgpr_32, 0, %7063:vgpr_32, 0, %7068:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114536B	  %7071:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7070:vgpr_32, 0, %6369:vgpr_32, 0, %6347:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114544B	  %7075:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7072:vgpr_32, 0, %7076:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114560B	  %7076:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7075:vgpr_32, %7076:vgpr_32, %7076:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114576B	  %7077:vgpr_32, %7078:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6348:vgpr_32, 0, %6369:vgpr_32, 0, %6348:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114592B	  %7081:vgpr_32 = nofpexcept V_MUL_F32_e32 %7077:vgpr_32, %7076:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114608B	  %7080:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7072:vgpr_32, 0, %7081:vgpr_32, 0, %7077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114640B	  %7081:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7080:vgpr_32, %7076:vgpr_32, %7081:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114656B	  %7082:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7072:vgpr_32, 0, %7081:vgpr_32, 0, %7077:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114720B	  %7085:vgpr_32, dead %7086:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114736B	  %7089:vgpr_32 = nofpexcept V_RCP_F32_e32 %7085:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114744B	  $vcc = COPY %7078:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114752B	  %7083:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7082:vgpr_32, 0, %7076:vgpr_32, 0, %7081:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114760B	  %7084:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7083:vgpr_32, 0, %6369:vgpr_32, 0, %6348:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114768B	  %7088:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7085:vgpr_32, 0, %7089:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114784B	  %7089:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7088:vgpr_32, %7089:vgpr_32, %7089:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114800B	  %7090:vgpr_32, %7091:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6349:vgpr_32, 0, %6369:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114816B	  %7094:vgpr_32 = nofpexcept V_MUL_F32_e32 %7090:vgpr_32, %7089:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114832B	  %7093:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7085:vgpr_32, 0, %7094:vgpr_32, 0, %7090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114864B	  %7094:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7093:vgpr_32, %7089:vgpr_32, %7094:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114880B	  %7095:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7085:vgpr_32, 0, %7094:vgpr_32, 0, %7090:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114944B	  %7098:vgpr_32, dead %7099:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6350:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114960B	  %7102:vgpr_32 = nofpexcept V_RCP_F32_e32 %7098:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114968B	  $vcc = COPY %7091:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114976B	  %7096:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7095:vgpr_32, 0, %7089:vgpr_32, 0, %7094:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114984B	  %7097:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7096:vgpr_32, 0, %6369:vgpr_32, 0, %6349:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
114992B	  %7101:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7098:vgpr_32, 0, %7102:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115008B	  %7102:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7101:vgpr_32, %7102:vgpr_32, %7102:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115024B	  %7103:vgpr_32, %7104:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6350:vgpr_32, 0, %6369:vgpr_32, 0, %6350:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115040B	  %7107:vgpr_32 = nofpexcept V_MUL_F32_e32 %7103:vgpr_32, %7102:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115056B	  %7106:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7098:vgpr_32, 0, %7107:vgpr_32, 0, %7103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115088B	  %7107:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7106:vgpr_32, %7102:vgpr_32, %7107:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115104B	  %7108:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7098:vgpr_32, 0, %7107:vgpr_32, 0, %7103:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115168B	  %7111:vgpr_32, dead %7112:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6351:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115184B	  %7115:vgpr_32 = nofpexcept V_RCP_F32_e32 %7111:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115192B	  $vcc = COPY %7104:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115200B	  %7109:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7108:vgpr_32, 0, %7102:vgpr_32, 0, %7107:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115208B	  %7110:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7109:vgpr_32, 0, %6369:vgpr_32, 0, %6350:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115216B	  %7114:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7111:vgpr_32, 0, %7115:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115232B	  %7115:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7114:vgpr_32, %7115:vgpr_32, %7115:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115248B	  %7116:vgpr_32, %7117:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6351:vgpr_32, 0, %6369:vgpr_32, 0, %6351:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115264B	  %7120:vgpr_32 = nofpexcept V_MUL_F32_e32 %7116:vgpr_32, %7115:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115280B	  %7119:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7111:vgpr_32, 0, %7120:vgpr_32, 0, %7116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115312B	  %7120:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7119:vgpr_32, %7115:vgpr_32, %7120:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115328B	  %7121:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7111:vgpr_32, 0, %7120:vgpr_32, 0, %7116:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115392B	  %7124:vgpr_32, dead %7125:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6352:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115408B	  %7128:vgpr_32 = nofpexcept V_RCP_F32_e32 %7124:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115416B	  $vcc = COPY %7117:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115424B	  %7122:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7121:vgpr_32, 0, %7115:vgpr_32, 0, %7120:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115432B	  %7123:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7122:vgpr_32, 0, %6369:vgpr_32, 0, %6351:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115440B	  %7127:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7124:vgpr_32, 0, %7128:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115456B	  %7128:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7127:vgpr_32, %7128:vgpr_32, %7128:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115472B	  %7129:vgpr_32, %7130:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6352:vgpr_32, 0, %6369:vgpr_32, 0, %6352:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115488B	  %7133:vgpr_32 = nofpexcept V_MUL_F32_e32 %7129:vgpr_32, %7128:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115504B	  %7132:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7124:vgpr_32, 0, %7133:vgpr_32, 0, %7129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115536B	  %7133:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7132:vgpr_32, %7128:vgpr_32, %7133:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115552B	  %7134:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7124:vgpr_32, 0, %7133:vgpr_32, 0, %7129:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115616B	  %7137:vgpr_32, dead %7138:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6353:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115632B	  %7141:vgpr_32 = nofpexcept V_RCP_F32_e32 %7137:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115640B	  $vcc = COPY %7130:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115648B	  %7135:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7134:vgpr_32, 0, %7128:vgpr_32, 0, %7133:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115656B	  %7136:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7135:vgpr_32, 0, %6369:vgpr_32, 0, %6352:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115664B	  %7140:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7137:vgpr_32, 0, %7141:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115680B	  %7141:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7140:vgpr_32, %7141:vgpr_32, %7141:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115696B	  %7142:vgpr_32, %7143:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6353:vgpr_32, 0, %6369:vgpr_32, 0, %6353:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115712B	  %7146:vgpr_32 = nofpexcept V_MUL_F32_e32 %7142:vgpr_32, %7141:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115728B	  %7145:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7137:vgpr_32, 0, %7146:vgpr_32, 0, %7142:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115760B	  %7146:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7145:vgpr_32, %7141:vgpr_32, %7146:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115776B	  %7147:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7137:vgpr_32, 0, %7146:vgpr_32, 0, %7142:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115840B	  %7150:vgpr_32, dead %7151:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6354:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115856B	  %7154:vgpr_32 = nofpexcept V_RCP_F32_e32 %7150:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115864B	  $vcc = COPY %7143:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115872B	  %7148:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7147:vgpr_32, 0, %7141:vgpr_32, 0, %7146:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115880B	  %7149:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7148:vgpr_32, 0, %6369:vgpr_32, 0, %6353:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115888B	  %7153:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7150:vgpr_32, 0, %7154:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115904B	  %7154:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7153:vgpr_32, %7154:vgpr_32, %7154:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115920B	  %7155:vgpr_32, %7156:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6354:vgpr_32, 0, %6369:vgpr_32, 0, %6354:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115936B	  %7159:vgpr_32 = nofpexcept V_MUL_F32_e32 %7155:vgpr_32, %7154:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115952B	  %7158:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7150:vgpr_32, 0, %7159:vgpr_32, 0, %7155:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
115984B	  %7159:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7158:vgpr_32, %7154:vgpr_32, %7159:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116000B	  %7160:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7150:vgpr_32, 0, %7159:vgpr_32, 0, %7155:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116064B	  %7163:vgpr_32, dead %7164:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6355:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116080B	  %7167:vgpr_32 = nofpexcept V_RCP_F32_e32 %7163:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116088B	  $vcc = COPY %7156:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116096B	  %7161:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7160:vgpr_32, 0, %7154:vgpr_32, 0, %7159:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116104B	  %7162:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7161:vgpr_32, 0, %6369:vgpr_32, 0, %6354:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116112B	  %7166:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7163:vgpr_32, 0, %7167:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116128B	  %7167:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7166:vgpr_32, %7167:vgpr_32, %7167:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116144B	  %7168:vgpr_32, %7169:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6355:vgpr_32, 0, %6369:vgpr_32, 0, %6355:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116160B	  %7172:vgpr_32 = nofpexcept V_MUL_F32_e32 %7168:vgpr_32, %7167:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116176B	  %7171:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7163:vgpr_32, 0, %7172:vgpr_32, 0, %7168:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116208B	  %7172:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7171:vgpr_32, %7167:vgpr_32, %7172:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116224B	  %7173:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7163:vgpr_32, 0, %7172:vgpr_32, 0, %7168:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116288B	  %7176:vgpr_32, dead %7177:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6356:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116304B	  %7180:vgpr_32 = nofpexcept V_RCP_F32_e32 %7176:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116312B	  $vcc = COPY %7169:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116320B	  %7174:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7173:vgpr_32, 0, %7167:vgpr_32, 0, %7172:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116328B	  %7175:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7174:vgpr_32, 0, %6369:vgpr_32, 0, %6355:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116336B	  %7179:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7176:vgpr_32, 0, %7180:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116352B	  %7180:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7179:vgpr_32, %7180:vgpr_32, %7180:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116368B	  %7181:vgpr_32, %7182:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6356:vgpr_32, 0, %6369:vgpr_32, 0, %6356:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116384B	  %7185:vgpr_32 = nofpexcept V_MUL_F32_e32 %7181:vgpr_32, %7180:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116400B	  %7184:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7176:vgpr_32, 0, %7185:vgpr_32, 0, %7181:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116432B	  %7185:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7184:vgpr_32, %7180:vgpr_32, %7185:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116448B	  %7186:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7176:vgpr_32, 0, %7185:vgpr_32, 0, %7181:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116512B	  %7189:vgpr_32, dead %7190:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6369:vgpr_32, 0, %6369:vgpr_32, 0, %6357:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116528B	  %7193:vgpr_32 = nofpexcept V_RCP_F32_e32 %7189:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116536B	  $vcc = COPY %7182:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116544B	  %7187:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7186:vgpr_32, 0, %7180:vgpr_32, 0, %7185:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116552B	  %7188:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7187:vgpr_32, 0, %6369:vgpr_32, 0, %6356:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116560B	  %7192:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7189:vgpr_32, 0, %7193:vgpr_32, 0, 1065353216, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116576B	  %7193:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7192:vgpr_32, %7193:vgpr_32, %7193:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116592B	  %7194:vgpr_32, %7195:sreg_64 = nofpexcept V_DIV_SCALE_F32_e64 0, %6357:vgpr_32, 0, %6369:vgpr_32, 0, %6357:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116608B	  %7198:vgpr_32 = nofpexcept V_MUL_F32_e32 %7194:vgpr_32, %7193:vgpr_32, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116624B	  %7197:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7189:vgpr_32, 0, %7198:vgpr_32, 0, %7194:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116656B	  %7198:vgpr_32 = nofpexcept V_FMAC_F32_e32 %7197:vgpr_32, %7193:vgpr_32, %7198:vgpr_32(tied-def 0), implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116672B	  %7199:vgpr_32 = nofpexcept V_FMA_F32_e64 1, %7189:vgpr_32, 0, %7198:vgpr_32, 0, %7194:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116688B	  $vcc = COPY %7195:sreg_64, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116704B	  %7200:vgpr_32 = nofpexcept V_DIV_FMAS_F32_e64 0, %7199:vgpr_32, 0, %7193:vgpr_32, 0, %7198:vgpr_32, 0, 0, implicit $mode, implicit $vcc, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116720B	  %7201:vgpr_32 = nofpexcept V_DIV_FIXUP_F32_e64 0, %7200:vgpr_32, 0, %6369:vgpr_32, 0, %6357:vgpr_32, 0, 0, implicit $mode, implicit $exec, debug-location !113; quant_moe.py:9:22 @[ moe_op_gemm_a8w4.py:495:45 ]
116736B	  undef %8785.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6382:vgpr_32, 0, %6395:vgpr_32, 0, 1065353216, undef %8785.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116768B	  undef %8785.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6408:vgpr_32, 0, %6421:vgpr_32, 0, 1065353216, %8785.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116784B	  undef %8783.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6434:vgpr_32, 0, %6447:vgpr_32, 0, 1065353216, undef %8783.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116816B	  undef %8783.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6460:vgpr_32, 0, %6473:vgpr_32, 0, 1065353216, %8783.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116832B	  undef %8784.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6486:vgpr_32, 0, %6499:vgpr_32, 0, 1065353216, undef %8784.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116864B	  undef %8784.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6512:vgpr_32, 0, %6525:vgpr_32, 0, 1065353216, %8784.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116880B	  undef %8782.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6538:vgpr_32, 0, %6551:vgpr_32, 0, 1065353216, undef %8782.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116912B	  undef %8782.sub0:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6564:vgpr_32, 0, %6577:vgpr_32, 0, 1065353216, %8782.sub0:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116928B	  %8785.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6590:vgpr_32, 0, %6603:vgpr_32, 0, 1065353216, undef %8785.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116960B	  %8785.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6616:vgpr_32, 0, %6629:vgpr_32, 0, 1065353216, %8785.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
116976B	  %8783.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6642:vgpr_32, 0, %6655:vgpr_32, 0, 1065353216, undef %8783.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117008B	  %8783.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6668:vgpr_32, 0, %6681:vgpr_32, 0, 1065353216, %8783.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117024B	  %8784.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6694:vgpr_32, 0, %6707:vgpr_32, 0, 1065353216, undef %8784.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117056B	  %8784.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6720:vgpr_32, 0, %6733:vgpr_32, 0, 1065353216, %8784.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117072B	  %8782.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6746:vgpr_32, 0, %6759:vgpr_32, 0, 1065353216, undef %8782.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117104B	  %8782.sub1:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6772:vgpr_32, 0, %6785:vgpr_32, 0, 1065353216, %8782.sub1:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117120B	  %8785.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6798:vgpr_32, 0, %6811:vgpr_32, 0, 1065353216, undef %8785.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117152B	  %8785.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6824:vgpr_32, 0, %6837:vgpr_32, 0, 1065353216, %8785.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117168B	  %8783.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6850:vgpr_32, 0, %6863:vgpr_32, 0, 1065353216, undef %8783.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117200B	  %8783.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6876:vgpr_32, 0, %6889:vgpr_32, 0, 1065353216, %8783.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117216B	  %8784.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6902:vgpr_32, 0, %6915:vgpr_32, 0, 1065353216, undef %8784.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117248B	  %8784.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6928:vgpr_32, 0, %6941:vgpr_32, 0, 1065353216, %8784.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117264B	  %8782.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %6954:vgpr_32, 0, %6967:vgpr_32, 0, 1065353216, undef %8782.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117296B	  %8782.sub2:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %6980:vgpr_32, 0, %6993:vgpr_32, 0, 1065353216, %8782.sub2:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117312B	  %8785.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7006:vgpr_32, 0, %7019:vgpr_32, 0, 1065353216, undef %8785.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117344B	  %8785.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7032:vgpr_32, 0, %7045:vgpr_32, 0, 1065353216, %8785.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117360B	  %8783.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7058:vgpr_32, 0, %7071:vgpr_32, 0, 1065353216, undef %8783.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117392B	  %8783.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7084:vgpr_32, 0, %7097:vgpr_32, 0, 1065353216, %8783.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117408B	  %8784.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7110:vgpr_32, 0, %7123:vgpr_32, 0, 1065353216, undef %8784.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117440B	  %8784.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7136:vgpr_32, 0, %7149:vgpr_32, 0, 1065353216, %8784.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117456B	  %8782.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 0, %7162:vgpr_32, 0, %7175:vgpr_32, 0, 1065353216, undef %8782.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117488B	  %8782.sub3:vreg_128_align2 = V_CVT_SCALEF32_PK_FP8_F32_e64 8, %7188:vgpr_32, 0, %7201:vgpr_32, 0, 1065353216, %8782.sub3:vreg_128_align2(tied-def 0), 0, implicit $mode, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117504B	  S_WAITCNT 49279, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117520B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117536B	  %7267:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 4, %3930:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117552B	  %7269:vgpr_32 = V_AND_B32_e32 48, %1656:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117568B	  %7270:vgpr_32 = V_AND_B32_e32 1, %999:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117584B	  %7272:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 13, %7270:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117600B	  %7273:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 8, %999:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117616B	  %7275:vgpr_32 = V_AND_B32_e32 16384, %7273:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117632B	  %7277:vgpr_32 = disjoint V_LSHL_OR_B32_e64 %4447:vgpr_32, 9, %7272:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117648B	  %7278:vgpr_32 = V_BITOP3_B32_e64 %7267:vgpr_32, %7269:vgpr_32, %4449:vgpr_32, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117664B	  %7279:vgpr_32 = disjoint V_OR3_B32_e64 %7277:vgpr_32, %7275:vgpr_32, %7278:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117680B	  %7280:vgpr_32 = nuw V_ADD_U32_e32 0, %7279:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117760B	  DS_WRITE_B128_gfx9 %7280:vgpr_32, %8785:vreg_128_align2, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2908, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117840B	  DS_WRITE_B128_gfx9 %7280:vgpr_32, %8784:vreg_128_align2, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2912, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117856B	  %7286:vgpr_32 = nuw V_XAD_U32_e64 %7279:vgpr_32, 64, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
117936B	  DS_WRITE_B128_gfx9 %7286:vgpr_32, %8783:vreg_128_align2, 0, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2917, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118016B	  DS_WRITE_B128_gfx9 %7286:vgpr_32, %8782:vreg_128_align2, 128, 0, implicit $exec, debug-location !117 :: (store (s128) into %ir.2921, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118032B	  ATOMIC_FENCE 5, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118048B	  S_BARRIER debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118064B	  ATOMIC_FENCE 4, 2, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118080B	  %7293:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 5, %999:vgpr_32(s32), implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118096B	  %7295:vgpr_32 = V_AND_B32_e32 7168, %7293:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118112B	  %7296:vgpr_32 = exact V_LSHRREV_B32_e32 1, %1373:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118128B	  %7297:vgpr_32 = nuw nsw V_LSHLREV_B32_e32 9, %4915:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118144B	  %7298:vgpr_32 = V_BITOP3_B32_e64 %7295:vgpr_32, %7296:vgpr_32, %4449:vgpr_32, 54, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118160B	  %7300:vgpr_32 = nuw V_LSHL_ADD_U32_e64 %7270:vgpr_32, 14, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118176B	  %7302:vgpr_32 = nuw V_ADD3_U32_e64 %7300:vgpr_32, %7297:vgpr_32, %7298:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118192B	  %7303:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 0, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2934, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118208B	  %7308:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 256, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2941, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118216B	  %6364.sub1:sreg_64 = S_ASHR_I32 %6364.sub0:sreg_64, 31, implicit-def dead $scc, debug-location !111; moe_op_gemm_a8w4.py:483:28
118224B	  %6365:sreg_64 = V_CMP_GT_I64_e64 %6364:sreg_64, %8788:vreg_64_align2, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
118232B	  %6367:sreg_64 = V_CMP_GT_I64_e64 %6364:sreg_64, %8786:vreg_64_align2, implicit $exec, debug-location !111; moe_op_gemm_a8w4.py:483:28
118240B	  %9860:vgpr_32 = V_MOV_B32_e32 8, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118248B	  %7316:vgpr_32 = V_LSHRREV_B32_sdwa 0, %9860:vgpr_32, 0, %7308.sub0:vreg_128_align2, 0, 1, 0, 6, 6, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118256B	  %7318:sreg_32 = S_MOV_B32 255
118272B	  %7319:vgpr_32 = V_BITOP3_B16_e64 0, %7308.sub0:vreg_128_align2, 0, %7316:vgpr_32, 0, %7318:sreg_32, 236, 0, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118288B	  %7320:vgpr_32 = V_LSHLREV_B32_e32 16, %7319:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118304B	  undef %8781.sub0:vreg_64_align2 = V_AND_OR_B32_e64 %7303.sub0:vreg_128_align2, %4895:sreg_32, %7320:vgpr_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118320B	  %7322:sreg_32 = S_MOV_B32 50464518
118336B	  undef %8780.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub0:vreg_128_align2, %7308.sub0:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118352B	  %7324:sreg_32 = S_MOV_B32 16778500
118368B	  undef %8779.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub1:vreg_128_align2, %7308.sub1:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118384B	  undef %8778.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub1:vreg_128_align2, %7308.sub1:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118400B	  undef %8777.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub2:vreg_128_align2, %7308.sub2:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118416B	  undef %8776.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub2:vreg_128_align2, %7308.sub2:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118432B	  undef %8775.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub3:vreg_128_align2, %7308.sub3:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118448B	  undef %8774.sub0:vreg_64_align2 = V_PERM_B32_e64 %7303.sub3:vreg_128_align2, %7308.sub3:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !117; quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118464B	  %7331:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 512, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2951, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118480B	  %7336:vreg_128_align2 = DS_READ_B128_gfx9 %7302:vgpr_32, 768, 0, implicit $exec, debug-location !117 :: (load (s128) from %ir.2961, addrspace 3); quant_moe.py:10:23 @[ moe_op_gemm_a8w4.py:495:45 ]
118496B	  %9093:vgpr_32 = V_MUL_LO_U32_e64 %1201:vgpr_32, %1003:sreg_32, implicit $exec, debug-location !118; moe_op_gemm_a8w4.py:497:19
118512B	  %9139:vgpr_32 = V_MUL_LO_U32_e64 %9129.sub0:vreg_64_align2, %1003:sreg_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
118528B	  %7345:vgpr_32 = V_MUL_LO_U32_e64 %1003:sreg_32, %9091.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
118544B	  %7347:vgpr_32 = V_MUL_LO_U32_e64 %1003:sreg_32, %9089.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
118560B	  %7349:vgpr_32 = V_MUL_LO_U32_e64 %1003:sreg_32, %9087.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
118576B	  %7351:vgpr_32 = V_MUL_LO_U32_e64 %1003:sreg_32, %9085.sub0:vreg_64_align2, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
118592B	  %9120:vgpr_32 = V_ADD_U32_e32 %9139:vgpr_32, %9093:vgpr_32, implicit $exec, debug-location !119; moe_op_gemm_a8w4.py:501:10
118608B	  %7353:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7345:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118624B	  %7354:vgpr_32 = V_ADD_U32_e32 8, %7353:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118640B	  %7355:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7347:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118656B	  %7356:vgpr_32 = V_ADD_U32_e32 8, %7355:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118672B	  %7357:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7349:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118688B	  %7358:vgpr_32 = V_ADD_U32_e32 8, %7357:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118704B	  %7359:vgpr_32 = V_ADD3_U32_e64 %9120:vgpr_32, %7351:vgpr_32, %8788.sub0:vreg_64_align2, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118720B	  %7360:vgpr_32 = V_ADD_U32_e32 8, %7359:vgpr_32, implicit $exec, debug-location !120; moe_op_gemm_a8w4.py:502:10
118864B	  %7372.sub1:sgpr_128 = S_AND_B32 %7372.sub1:sgpr_128, 65535, implicit-def dead $scc, debug-location !122; moe_op_gemm_a8w4.py:505:20
118912B	  %7372.sub2:sgpr_128 = COPY %4900.sub2:sgpr_128, debug-location !122; moe_op_gemm_a8w4.py:505:20
118928B	  %7372.sub3:sgpr_128 = COPY %4900.sub3:sgpr_128, debug-location !122; moe_op_gemm_a8w4.py:505:20
118944B	  %8781.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub0:vreg_128_align2, %7336.sub0:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
118952B	  %7361:sreg_64_xexec = S_AND_B64 %4886:sreg_64, %6365:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
118992B	  %7375:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7353:vgpr_32, %7361:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119008B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8781:vreg_64_align2, %7375:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119024B	  %8780.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub0:vreg_128_align2, %7336.sub0:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119032B	  %7362:sreg_64_xexec = S_AND_B64 %4886:sreg_64, %6367:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119072B	  %7380:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7354:vgpr_32, %7362:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119088B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8780:vreg_64_align2, %7380:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119104B	  %8779.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub1:vreg_128_align2, %7336.sub1:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119112B	  %7363:sreg_64_xexec = S_AND_B64 %4887:sreg_64, %6365:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119152B	  %7385:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7355:vgpr_32, %7363:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119168B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8779:vreg_64_align2, %7385:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119184B	  %8778.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub1:vreg_128_align2, %7336.sub1:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119192B	  %7364:sreg_64_xexec = S_AND_B64 %4887:sreg_64, %6367:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119232B	  %7390:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7356:vgpr_32, %7364:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119248B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8778:vreg_64_align2, %7390:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119264B	  %8777.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub2:vreg_128_align2, %7336.sub2:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119272B	  %7365:sreg_64_xexec = S_AND_B64 %4888:sreg_64, %6365:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119312B	  %7395:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7357:vgpr_32, %7365:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119328B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8777:vreg_64_align2, %7395:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119344B	  %8776.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub2:vreg_128_align2, %7336.sub2:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119352B	  %7366:sreg_64_xexec = S_AND_B64 %4888:sreg_64, %6367:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119392B	  %7400:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7358:vgpr_32, %7366:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119408B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8776:vreg_64_align2, %7400:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119424B	  %8775.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub3:vreg_128_align2, %7336.sub3:vreg_128_align2, %7324:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119432B	  %7367:sreg_64_xexec = S_AND_B64 %4889:sreg_64, %6365:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119472B	  %7405:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7359:vgpr_32, %7367:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119488B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8775:vreg_64_align2, %7405:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119504B	  %8774.sub1:vreg_64_align2 = V_PERM_B32_e64 %7331.sub3:vreg_128_align2, %7336.sub3:vreg_128_align2, %7322:sreg_32, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119512B	  %7368:sreg_64_xexec = S_AND_B64 %4889:sreg_64, %6367:sreg_64, implicit-def dead $scc, debug-location !121; moe_op_gemm_a8w4.py:504:29
119552B	  %7410:vgpr_32 = V_CNDMASK_B32_e64 0, %4906:vgpr_32, 0, %7360:vgpr_32, %7368:sreg_64_xexec, implicit $exec, debug-location !122; moe_op_gemm_a8w4.py:505:20
119568B	  BUFFER_STORE_DWORDX2_OFFEN_exact %8774:vreg_64_align2, %7410:vgpr_32, %7372:sgpr_128, 0, 0, 0, 0, implicit $exec, debug-location !122 :: (dereferenceable store (s64) into %ir.3016, align 1, addrspace 8); moe_op_gemm_a8w4.py:505:20
119584B	  S_BRANCH %bb.1, debug-location !123; moe_op_gemm_a8w4.py:505:4

# End machine code for function _moe_gemm_a8w4.

