*** IR Dump After Structurize control flow (structurizecfg) ***
548:                                              ; preds = %544, %542
  %.tc315 = phi i32 [ %largephi.extractslice01.bc, %544 ], [ 0, %542 ]
  %.tc314 = phi i32 [ %largephi.extractslice22.bc, %544 ], [ 0, %542 ]
  %.tc313 = phi i32 [ %largephi.extractslice43.bc, %544 ], [ 0, %542 ]
  %.tc312 = phi i32 [ %largephi.extractslice64.bc, %544 ], [ 0, %542 ]
  %549 = mul i64 %499, %506, !dbg !77
  br i1 %340, label %550, label %554, !dbg !78

550:                                              ; preds = %548
  %551 = getelementptr i8, ptr addrspace(1) %505, i64 %549, !dbg !79
  %552 = getelementptr i8, ptr addrspace(1) %551, i64 %502, !dbg !79
  %553 = load <16 x i8>, ptr addrspace(1) %552, align 16, !dbg !78
  %largephi.extractslice0 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice0.bc = bitcast <4 x i8> %largephi.extractslice0 to i32, !dbg !78
  %largephi.extractslice2 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice2.bc = bitcast <4 x i8> %largephi.extractslice2 to i32, !dbg !78
  %largephi.extractslice4 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice4.bc = bitcast <4 x i8> %largephi.extractslice4 to i32, !dbg !78
  %largephi.extractslice6 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice6.bc = bitcast <4 x i8> %largephi.extractslice6 to i32, !dbg !78
  br label %554, !dbg !78
