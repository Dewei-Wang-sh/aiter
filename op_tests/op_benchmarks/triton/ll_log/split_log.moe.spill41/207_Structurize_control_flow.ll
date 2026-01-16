*** IR Dump After Structurize control flow (structurizecfg) ***
542:                                              ; preds = %538, %536
  %.tc319 = phi i32 [ %largephi.extractslice09.bc, %538 ], [ 0, %536 ]
  %.tc318 = phi i32 [ %largephi.extractslice210.bc, %538 ], [ 0, %536 ]
  %.tc317 = phi i32 [ %largephi.extractslice411.bc, %538 ], [ 0, %536 ]
  %.tc316 = phi i32 [ %largephi.extractslice612.bc, %538 ], [ 0, %536 ]
  %543 = mul i64 %484, %506, !dbg !77
  br i1 %340, label %544, label %548, !dbg !78

544:                                              ; preds = %542
  %545 = getelementptr i8, ptr addrspace(1) %505, i64 %543, !dbg !79
  %546 = getelementptr i8, ptr addrspace(1) %545, i64 %502, !dbg !79
  %547 = load <16 x i8>, ptr addrspace(1) %546, align 16, !dbg !78
  %largephi.extractslice01 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice01.bc = bitcast <4 x i8> %largephi.extractslice01 to i32, !dbg !78
  %largephi.extractslice22 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice22.bc = bitcast <4 x i8> %largephi.extractslice22 to i32, !dbg !78
  %largephi.extractslice43 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice43.bc = bitcast <4 x i8> %largephi.extractslice43 to i32, !dbg !78
  %largephi.extractslice64 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice64.bc = bitcast <4 x i8> %largephi.extractslice64 to i32, !dbg !78
  br label %548, !dbg !78
