*** IR Dump After Structurize control flow (structurizecfg) ***
524:                                              ; preds = %520, %518
  %.tc331 = phi i32 [ %largephi.extractslice033.bc, %520 ], [ 0, %518 ]
  %.tc330 = phi i32 [ %largephi.extractslice234.bc, %520 ], [ 0, %518 ]
  %.tc329 = phi i32 [ %largephi.extractslice435.bc, %520 ], [ 0, %518 ]
  %.tc328 = phi i32 [ %largephi.extractslice636.bc, %520 ], [ 0, %518 ]
  %525 = mul i64 %439, %506, !dbg !77
  br i1 %340, label %526, label %530, !dbg !78

526:                                              ; preds = %524
  %527 = getelementptr i8, ptr addrspace(1) %505, i64 %525, !dbg !79
  %528 = getelementptr i8, ptr addrspace(1) %527, i64 %502, !dbg !79
  %529 = load <16 x i8>, ptr addrspace(1) %528, align 16, !dbg !78
  %largephi.extractslice025 = shufflevector <16 x i8> %529, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice025.bc = bitcast <4 x i8> %largephi.extractslice025 to i32, !dbg !78
  %largephi.extractslice226 = shufflevector <16 x i8> %529, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice226.bc = bitcast <4 x i8> %largephi.extractslice226 to i32, !dbg !78
  %largephi.extractslice427 = shufflevector <16 x i8> %529, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice427.bc = bitcast <4 x i8> %largephi.extractslice427 to i32, !dbg !78
  %largephi.extractslice628 = shufflevector <16 x i8> %529, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice628.bc = bitcast <4 x i8> %largephi.extractslice628 to i32, !dbg !78
  br label %530, !dbg !78
