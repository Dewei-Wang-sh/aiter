*** IR Dump After Structurize control flow (structurizecfg) ***
483:                                              ; preds = %481, %476
  %484 = phi i64 [ %480, %476 ], [ %482, %481 ], !dbg !74
  %485 = or i32 %379, 448, !dbg !72
  %486 = zext nneg i32 %485 to i64, !dbg !73
  %487 = or disjoint i64 %378, %486, !dbg !73
  %488 = or i64 %487, %355, !dbg !74
  %489 = and i64 %488, -4294967296, !dbg !74
  %490 = icmp ne i64 %489, 0, !dbg !74
  br i1 %490, label %498, label %Flow341, !dbg !74

498:                                              ; preds = %483
  %499 = srem i64 %487, %355, !dbg !74
  br label %Flow341, !dbg !74

Flow341:                                          ; preds = %498, %483
  %491 = phi i64 [ %499, %498 ], [ poison, %483 ]
  %492 = phi i1 [ false, %498 ], [ true, %483 ]
  br i1 %492, label %493, label %500

493:                                              ; preds = %Flow341
  %494 = trunc i64 %355 to i32, !dbg !74
  %495 = trunc i64 %487 to i32, !dbg !74
  %496 = urem i32 %495, %494, !dbg !74
  %497 = zext i32 %496 to i64, !dbg !74
  br label %500, !dbg !74
