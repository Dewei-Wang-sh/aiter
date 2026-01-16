*** IR Dump After Structurize control flow (structurizecfg) ***
468:                                              ; preds = %466, %461
  %469 = phi i64 [ %465, %461 ], [ %467, %466 ]
  %470 = or disjoint i32 %380, 384
  %471 = zext nneg i32 %470 to i64
  %472 = or disjoint i64 %378, %471
  %473 = or i64 %472, %355
  %474 = and i64 %473, -4294967296
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %483, label %Flow342

483:                                              ; preds = %468
  %484 = srem i64 %472, %355
  br label %Flow342

Flow342:                                          ; preds = %483, %468
  %476 = phi i64 [ %484, %483 ], [ poison, %468 ]
  %477 = phi i1 [ false, %483 ], [ true, %468 ]
  br i1 %477, label %478, label %485

478:                                              ; preds = %Flow342
  %479 = trunc i64 %355 to i32
  %480 = trunc i64 %472 to i32
  %481 = urem i32 %480, %479
  %482 = zext i32 %481 to i64
  br label %485
