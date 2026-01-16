*** IR Dump After Structurize control flow (structurizecfg) ***
542:                                              ; preds = %538, %536
  %.tc319 = phi i32 [ %largephi.extractslice033.bc, %538 ], [ 0, %536 ]
  %.tc318 = phi i32 [ %largephi.extractslice234.bc, %538 ], [ 0, %536 ]
  %.tc317 = phi i32 [ %largephi.extractslice435.bc, %538 ], [ 0, %536 ]
  %.tc316 = phi i32 [ %largephi.extractslice636.bc, %538 ], [ 0, %536 ]
  %543 = mul i64 %484, %506
  br i1 %340, label %544, label %548

544:                                              ; preds = %542
  %545 = getelementptr i8, ptr addrspace(1) %505, i64 %543
  %546 = getelementptr i8, ptr addrspace(1) %545, i64 %502
  %547 = load <16 x i8>, ptr addrspace(1) %546, align 16
  %largephi.extractslice041 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice041.bc = bitcast <4 x i8> %largephi.extractslice041 to i32
  %largephi.extractslice242 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice242.bc = bitcast <4 x i8> %largephi.extractslice242 to i32
  %largephi.extractslice443 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice443.bc = bitcast <4 x i8> %largephi.extractslice443 to i32
  %largephi.extractslice644 = shufflevector <16 x i8> %547, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice644.bc = bitcast <4 x i8> %largephi.extractslice644 to i32
  br label %548
