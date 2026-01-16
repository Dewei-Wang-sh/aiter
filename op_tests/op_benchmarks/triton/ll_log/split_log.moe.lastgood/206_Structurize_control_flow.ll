*** IR Dump After Structurize control flow (structurizecfg) ***
498:                                              ; preds = %496, %491
  %499 = phi i64 [ %495, %491 ], [ %497, %496 ]
  %500 = shl i32 %201, 4
  %501 = and i32 %500, 112
  %502 = zext i32 %501 to i64
  %503 = sext i32 %8 to i64
  %504 = mul i64 %191, %503
  %505 = getelementptr i8, ptr addrspace(1) %7, i64 %504
  %506 = sext i32 %9 to i64
  %507 = mul i64 %394, %506
  br i1 %340, label %508, label %512

508:                                              ; preds = %498
  %509 = getelementptr i8, ptr addrspace(1) %505, i64 %507
  %510 = getelementptr i8, ptr addrspace(1) %509, i64 %502
  %511 = load <16 x i8>, ptr addrspace(1) %510, align 16
  %largephi.extractslice0 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice0.bc = bitcast <4 x i8> %largephi.extractslice0 to i32
  %largephi.extractslice2 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice2.bc = bitcast <4 x i8> %largephi.extractslice2 to i32
  %largephi.extractslice4 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice4.bc = bitcast <4 x i8> %largephi.extractslice4 to i32
  %largephi.extractslice6 = shufflevector <16 x i8> %511, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice6.bc = bitcast <4 x i8> %largephi.extractslice6 to i32
  br label %512
