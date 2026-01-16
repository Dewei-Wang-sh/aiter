*** IR Dump After Structurize control flow (structurizecfg) ***
423:                                              ; preds = %421, %416
  %424 = phi i64 [ %420, %416 ], [ %422, %421 ], !dbg !74
  %425 = or i32 %379, 192, !dbg !72
  %426 = zext nneg i32 %425 to i64, !dbg !73
  %427 = or disjoint i64 %378, %426, !dbg !73
  %428 = or i64 %427, %355, !dbg !74
  %429 = and i64 %428, -4294967296, !dbg !74
  %430 = icmp ne i64 %429, 0, !dbg !74
  br i1 %430, label %438, label %Flow345, !dbg !74

438:                                              ; preds = %423
  %439 = srem i64 %427, %355, !dbg !74
  br label %Flow345, !dbg !74

Flow345:                                          ; preds = %438, %423
  %431 = phi i64 [ %439, %438 ], [ poison, %423 ]
  %432 = phi i1 [ false, %438 ], [ true, %423 ]
  br i1 %432, label %433, label %440

433:                                              ; preds = %Flow345
  %434 = trunc i64 %355 to i32, !dbg !74
  %435 = trunc i64 %427 to i32, !dbg !74
  %436 = urem i32 %435, %434, !dbg !74
  %437 = zext i32 %436 to i64, !dbg !74
  br label %440, !dbg !74
