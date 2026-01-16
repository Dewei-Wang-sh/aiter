*** IR Dump After Structurize control flow (structurizecfg) ***
536:                                              ; preds = %532, %530
  %.tc323 = phi i32 [ %largephi.extractslice025.bc, %532 ], [ 0, %530 ]
  %.tc322 = phi i32 [ %largephi.extractslice226.bc, %532 ], [ 0, %530 ]
  %.tc321 = phi i32 [ %largephi.extractslice427.bc, %532 ], [ 0, %530 ]
  %.tc320 = phi i32 [ %largephi.extractslice628.bc, %532 ], [ 0, %530 ]
  %537 = mul i64 %469, %506
  br i1 %340, label %538, label %542

538:                                              ; preds = %536
  %539 = getelementptr i8, ptr addrspace(1) %505, i64 %537
  %540 = getelementptr i8, ptr addrspace(1) %539, i64 %502
  %541 = load <16 x i8>, ptr addrspace(1) %540, align 16
  %largephi.extractslice033 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice033.bc = bitcast <4 x i8> %largephi.extractslice033 to i32
  %largephi.extractslice234 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice234.bc = bitcast <4 x i8> %largephi.extractslice234 to i32
  %largephi.extractslice435 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice435.bc = bitcast <4 x i8> %largephi.extractslice435 to i32
  %largephi.extractslice636 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice636.bc = bitcast <4 x i8> %largephi.extractslice636 to i32
  br label %542
