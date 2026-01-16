*** IR Dump After Structurize control flow (structurizecfg) ***
498:                                              ; preds = %496, %491
  %499 = phi i64 [ %495, %491 ], [ %497, %496 ], !dbg !74
  %500 = shl i32 %201, 4, !dbg !48
  %501 = and i32 %500, 112, !dbg !48
  %502 = zext i32 %501 to i64, !dbg !49
  %503 = sext i32 %8 to i64, !dbg !75
  %504 = mul i64 %191, %503, !dbg !75
  %505 = getelementptr i8, ptr addrspace(1) %7, i64 %504, !dbg !76
  %506 = sext i32 %9 to i64, !dbg !77
  %507 = mul i64 %394, %506, !dbg !77
  br i1 %340, label %508, label %512, !dbg !78

508:                                              ; preds = %498
  %509 = getelementptr i8, ptr addrspace(1) %505, i64 %507, !dbg !79
  %510 = getelementptr i8, ptr addrspace(1) %509, i64 %502, !dbg !79
  %511 = load <16 x i8>, ptr addrspace(1) %510, align 16, !dbg !78
  %largephi.extractslice049 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice049.bc = bitcast <4 x i8> %largephi.extractslice049 to i32, !dbg !78
  %largephi.extractslice250 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice250.bc = bitcast <4 x i8> %largephi.extractslice250 to i32, !dbg !78
  %largephi.extractslice451 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice451.bc = bitcast <4 x i8> %largephi.extractslice451 to i32, !dbg !78
  %largephi.extractslice652 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice652.bc = bitcast <4 x i8> %largephi.extractslice652 to i32, !dbg !78
  br label %512, !dbg !78
