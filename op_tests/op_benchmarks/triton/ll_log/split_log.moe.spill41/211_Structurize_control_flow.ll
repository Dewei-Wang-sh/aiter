*** IR Dump After Structurize control flow (structurizecfg) ***
518:                                              ; preds = %514, %512
  %.tc335 = phi i32 [ %largephi.extractslice041.bc, %514 ], [ 0, %512 ]
  %.tc334 = phi i32 [ %largephi.extractslice242.bc, %514 ], [ 0, %512 ]
  %.tc333 = phi i32 [ %largephi.extractslice443.bc, %514 ], [ 0, %512 ]
  %.tc332 = phi i32 [ %largephi.extractslice644.bc, %514 ], [ 0, %512 ]
  %519 = mul i64 %424, %506, !dbg !77
  br i1 %340, label %520, label %524, !dbg !78

520:                                              ; preds = %518
  %521 = getelementptr i8, ptr addrspace(1) %505, i64 %519, !dbg !79
  %522 = getelementptr i8, ptr addrspace(1) %521, i64 %502, !dbg !79
  %523 = load <16 x i8>, ptr addrspace(1) %522, align 16, !dbg !78
  %largephi.extractslice033 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice033.bc = bitcast <4 x i8> %largephi.extractslice033 to i32, !dbg !78
  %largephi.extractslice234 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice234.bc = bitcast <4 x i8> %largephi.extractslice234 to i32, !dbg !78
  %largephi.extractslice435 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice435.bc = bitcast <4 x i8> %largephi.extractslice435 to i32, !dbg !78
  %largephi.extractslice636 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice636.bc = bitcast <4 x i8> %largephi.extractslice636 to i32, !dbg !78
  br label %524, !dbg !78
