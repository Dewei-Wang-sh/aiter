*** IR Dump After Structurize control flow (structurizecfg) ***
438:                                              ; preds = %436, %431
  %439 = phi i64 [ %435, %431 ], [ %437, %436 ]
  %440 = or disjoint i32 %380, 256
  %441 = zext nneg i32 %440 to i64
  %442 = or disjoint i64 %378, %441
  %443 = or i64 %442, %355
  %444 = and i64 %443, -4294967296
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %453, label %Flow344

453:                                              ; preds = %438
  %454 = srem i64 %442, %355
  br label %Flow344

Flow344:                                          ; preds = %453, %438
  %446 = phi i64 [ %454, %453 ], [ poison, %438 ]
  %447 = phi i1 [ false, %453 ], [ true, %438 ]
  br i1 %447, label %448, label %455

448:                                              ; preds = %Flow344
  %449 = trunc i64 %355 to i32
  %450 = trunc i64 %442 to i32
  %451 = urem i32 %450, %449
  %452 = zext i32 %451 to i64
  br label %455
