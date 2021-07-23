.arch armv7ve
.section .text

.global myabs
	.type  myabs, %function
myabs:
	sub	sp, sp, #44
	add	r12, sp, #0
	str	r12, [sp, #8]
	add	r12, sp, #4
	str	r12, [sp, #12]
	ldr	r12, [sp, #8]
	str	r0, [r12]
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #16]
	ldr	r12, [sp, #16]
	cmp	r12, #0
	bge	.if_then0
	b	.if_else0


.myabs_exit:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #20]
	ldr	r0, [sp, #20]
	add	sp, sp, #44
	bx	lr

.if_then0:
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #24]
	ldr	r12, [sp, #24]
	ldr	r3, [sp, #12]
	str	r12, [r3]
	b	.myabs_exit


.if_else0:
@ --- binary here ---
	mov	r12, #0
	str	r12, [sp, #28]
	ldr	r12, [sp, #28]
	sub	r12, r12, #1
	str	r12, [sp, #32]
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #36]
@ --- binary here ---
	ldr	r12, [sp, #32]
	ldr	r3, [sp, #36]
	mul	r12, r12, r3
	str	r12, [sp, #40]
	ldr	r12, [sp, #40]
	ldr	r3, [sp, #12]
	str	r12, [r3]
	b	.myabs_exit



.global get
	.type  get, %function
get:
	push	{ fp }
	mov	r12, #49188
	movt	r12, #0
	sub	sp, sp, r12
	movw	r12, #:lower16:just
	movt	r12, #:upper16:just
	movw	fp, #48448
	str	r12, [sp, fp]
	add	r12, sp, #0
	movw	fp, #48452
	str	r12, [sp, fp]
	add	r12, sp, #4
	movw	fp, #48456
	str	r12, [sp, fp]
	movw	fp, #48452
	ldr	r12, [sp, fp]
	str	r0, [r12]
	add	r12, sp, #8
	movw	fp, #48460
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	str	r1, [r12]
	movw	fp, #48460
	ldr	r12, [sp, fp]
	str	r2, [r12]
	add	r12, sp, #12
	movw	fp, #48464
	str	r12, [sp, fp]
	movw	fp, #48460
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48468
	str	r12, [sp, fp]
	movw	fp, #48464
	ldr	r12, [sp, fp]
	str	r3, [r12]
	add	r12, sp, #16
	movw	fp, #48472
	str	r12, [sp, fp]
@ split immediate number + 48416
	mov	r12, #32072
	movt	r12, #1
	movw	fp, #48476
	str	r12, [sp, fp]
	movw	fp, #48476
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48480
	str	r12, [sp, fp]
@ split immediate number + 48420
	movw	r12, #48420
	movw	fp, #48484
	str	r12, [sp, fp]
	movw	fp, #48484
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48488
	str	r12, [sp, fp]
@ split immediate number + 48424
	movw	r12, #48424
	movw	fp, #48492
	str	r12, [sp, fp]
	movw	fp, #48492
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48496
	str	r12, [sp, fp]
@ split immediate number + 48428
	movw	r12, #48428
	movw	fp, #48500
	str	r12, [sp, fp]
	movw	fp, #48500
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48504
	str	r12, [sp, fp]
@ split immediate number + 48432
	movw	r12, #48432
	movw	fp, #48508
	str	r12, [sp, fp]
	movw	fp, #48508
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48512
	str	r12, [sp, fp]
@ split immediate number + 48436
	movw	r12, #48436
	movw	fp, #48516
	str	r12, [sp, fp]
	movw	fp, #48516
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48520
	str	r12, [sp, fp]
@ split immediate number + 48440
	movw	r12, #48440
	movw	fp, #48524
	str	r12, [sp, fp]
	movw	fp, #48524
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48528
	str	r12, [sp, fp]
@ split immediate number + 48444
	movw	r12, #48444
	movw	fp, #48532
	str	r12, [sp, fp]
	movw	fp, #48532
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48536
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48448
	ldr	r12, [sp, fp]
	movw	fp, #48540
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	movw	fp, #48472
	ldr	r12, [sp, fp]
	movw	fp, #48544
	str	r12, [sp, fp]
@ create getelementptr end
	mov	r12, #0
	movw	fp, #48548
	str	r12, [sp, fp]
	movw	fp, #48548
	ldr	r12, [sp, fp]
	movw	fp, #48480
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond0


.while_cond0:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48552
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48552
	ldr	r12, [sp, fp]
	add	r12, r12, #10
	movw	fp, #48556
	str	r12, [sp, fp]
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48560
	str	r12, [sp, fp]
	movw	fp, #48560
	ldr	r12, [sp, fp]
	movw	fp, #48556
	ldr	r3, [sp, fp]
	cmp	r12, r3
	blt	.loop_body0
	b	.while_end0


.loop_body0:
	mov	r12, #0
	movw	fp, #48564
	str	r12, [sp, fp]
	movw	fp, #48564
	ldr	r12, [sp, fp]
	movw	fp, #48488
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond1


.while_end0:
	mov	r12, #1
	movw	fp, #48568
	str	r12, [sp, fp]
	movw	fp, #48568
	ldr	r12, [sp, fp]
	movw	fp, #48480
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond2


.while_cond1:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48572
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48572
	ldr	r12, [sp, fp]
	add	r12, r12, #10
	movw	fp, #48576
	str	r12, [sp, fp]
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48580
	str	r12, [sp, fp]
	movw	fp, #48580
	ldr	r12, [sp, fp]
	movw	fp, #48576
	ldr	r3, [sp, fp]
	cmp	r12, r3
	blt	.loop_body1
	b	.while_end1


.loop_body1:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48584
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48588
	str	r12, [sp, fp]
	movw	fp, #48588
	ldr	r12, [sp, fp]
	movw	fp, #48584
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48592
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48544
	ldr	r12, [sp, fp]
	movw	fp, #48592
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48596
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48600
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48596
	ldr	r12, [sp, fp]
	movw	fp, #48600
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48604
	str	r12, [sp, fp]
@ create getelementptr end
	mov	r12, #1
	movw	fp, #48608
	str	r12, [sp, fp]
	movw	fp, #48608
	ldr	r12, [sp, fp]
	movw	fp, #48604
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48612
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48612
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48616
	str	r12, [sp, fp]
	movw	fp, #48616
	ldr	r12, [sp, fp]
	movw	fp, #48488
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond1


.while_end1:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48620
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48620
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48624
	str	r12, [sp, fp]
	movw	fp, #48624
	ldr	r12, [sp, fp]
	movw	fp, #48480
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond0


.while_cond2:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48628
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48628
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48632
	str	r12, [sp, fp]
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48636
	str	r12, [sp, fp]
	movw	fp, #48636
	ldr	r12, [sp, fp]
	movw	fp, #48632
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body2
	b	.while_end2


.loop_body2:
	mov	r12, #1
	mov	fp, #48640
	str	r12, [sp, fp]
	mov	fp, #48640
	ldr	r12, [sp, fp]
	movw	fp, #48488
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond3


.while_end2:
	mov	r12, #0
	movw	fp, #48644
	str	r12, [sp, fp]
	movw	fp, #48644
	ldr	r12, [sp, fp]
	movw	fp, #48480
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond4


.while_cond3:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48648
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48648
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48652
	str	r12, [sp, fp]
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48656
	str	r12, [sp, fp]
	movw	fp, #48656
	ldr	r12, [sp, fp]
	movw	fp, #48652
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body3
	b	.while_end3


.loop_body3:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48660
	str	r12, [sp, fp]
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48664
	str	r12, [sp, fp]
	movw	fp, #48660
	ldr	r12, [sp, fp]
	movw	fp, #48664
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movge	r12, #1
	movw	fp, #48672
	str	r12, [sp, fp]
	movlt	r12, #0
	movw	fp, #48672
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #48676
	str	r12, [sp, fp]
	movw	fp, #48676
	ldr	r12, [sp, fp]
	movw	fp, #48672
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.lhs_true0
	b	.lhs_false0


.while_end3:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48680
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48680
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48684
	str	r12, [sp, fp]
	movw	fp, #48684
	ldr	r12, [sp, fp]
	movw	fp, #48480
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond2


.if_then1:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48688
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48692
	str	r12, [sp, fp]
	movw	fp, #48692
	ldr	r12, [sp, fp]
	movw	fp, #48688
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48696
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48544
	ldr	r12, [sp, fp]
	movw	fp, #48696
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48700
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48704
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48700
	ldr	r12, [sp, fp]
	movw	fp, #48704
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48708
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48712
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48712
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48716
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48720
	str	r12, [sp, fp]
	movw	fp, #48720
	ldr	r12, [sp, fp]
	movw	fp, #48716
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48724
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48468
	ldr	r12, [sp, fp]
	movw	fp, #48724
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48728
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48732
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48728
	ldr	r12, [sp, fp]
	movw	fp, #48732
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48736
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48736
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48740
	str	r12, [sp, fp]
	movw	fp, #48740
	ldr	r12, [sp, fp]
	movw	fp, #48708
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.if_end0


.if_else1:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48744
	str	r12, [sp, fp]
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48748
	str	r12, [sp, fp]
	movw	fp, #48744
	ldr	r12, [sp, fp]
	movw	fp, #48748
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movge	r12, #1
	movw	fp, #48756
	str	r12, [sp, fp]
	movlt	r12, #0
	movw	fp, #48756
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #48760
	str	r12, [sp, fp]
	movw	fp, #48760
	ldr	r12, [sp, fp]
	movw	fp, #48756
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.lhs_true1
	b	.lhs_false1


.if_end0:
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48764
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48764
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48768
	str	r12, [sp, fp]
	movw	fp, #48768
	ldr	r12, [sp, fp]
	movw	fp, #48488
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond3


.lhs_true0:
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48772
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48776
	str	r12, [sp, fp]
	movw	fp, #48772
	ldr	r12, [sp, fp]
	movw	fp, #48776
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movlt	r12, #1
	movw	fp, #48784
	str	r12, [sp, fp]
	movge	r12, #0
	movw	fp, #48784
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48672
	ldr	r12, [sp, fp]
	movw	fp, #48784
	ldr	r3, [sp, fp]
	and	r12, r12, r3
	movw	fp, #48788
	str	r12, [sp, fp]
	movw	fp, #48788
	ldr	r12, [sp, fp]
	movw	fp, #48512
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end0


.lhs_false0:
	movw	fp, #48672
	ldr	r12, [sp, fp]
	movw	fp, #48512
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end0


.land_end0:
	movw	fp, #48512
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48792
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #48796
	str	r12, [sp, fp]
	movw	fp, #48796
	ldr	r12, [sp, fp]
	movw	fp, #48792
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.if_then1
	b	.if_else1


.if_then2:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48800
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48804
	str	r12, [sp, fp]
	movw	fp, #48804
	ldr	r12, [sp, fp]
	movw	fp, #48800
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48808
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48544
	ldr	r12, [sp, fp]
	movw	fp, #48808
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48812
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48816
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48812
	ldr	r12, [sp, fp]
	movw	fp, #48816
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48820
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48824
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48824
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48828
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48832
	str	r12, [sp, fp]
	movw	fp, #48832
	ldr	r12, [sp, fp]
	movw	fp, #48828
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48836
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48468
	ldr	r12, [sp, fp]
	movw	fp, #48836
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48840
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48844
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48844
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48848
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48840
	ldr	r12, [sp, fp]
	movw	fp, #48848
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48852
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48852
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48856
	str	r12, [sp, fp]
	movw	fp, #48856
	ldr	r12, [sp, fp]
	movw	fp, #48820
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.if_end0


.if_else2:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48860
	str	r12, [sp, fp]
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48864
	str	r12, [sp, fp]
	movw	fp, #48860
	ldr	r12, [sp, fp]
	movw	fp, #48864
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movlt	r12, #1
	movw	fp, #48872
	str	r12, [sp, fp]
	movge	r12, #0
	movw	fp, #48872
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #48876
	str	r12, [sp, fp]
	movw	fp, #48876
	ldr	r12, [sp, fp]
	movw	fp, #48872
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.lhs_true2
	b	.lhs_false2


.lhs_true1:
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48880
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48884
	str	r12, [sp, fp]
	movw	fp, #48880
	ldr	r12, [sp, fp]
	movw	fp, #48884
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movge	r12, #1
	movw	fp, #48892
	str	r12, [sp, fp]
	movlt	r12, #0
	movw	fp, #48892
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48756
	ldr	r12, [sp, fp]
	movw	fp, #48892
	ldr	r3, [sp, fp]
	and	r12, r12, r3
	mov	fp, #48896
	str	r12, [sp, fp]
	mov	fp, #48896
	ldr	r12, [sp, fp]
	movw	fp, #48520
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end1


.lhs_false1:
	movw	fp, #48756
	ldr	r12, [sp, fp]
	movw	fp, #48520
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end1


.land_end1:
	movw	fp, #48520
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48900
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #48904
	str	r12, [sp, fp]
	movw	fp, #48904
	ldr	r12, [sp, fp]
	movw	fp, #48900
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.if_then2
	b	.if_else2


.if_then3:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48908
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48912
	str	r12, [sp, fp]
	movw	fp, #48912
	ldr	r12, [sp, fp]
	movw	fp, #48908
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48916
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48544
	ldr	r12, [sp, fp]
	movw	fp, #48916
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48920
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48924
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48920
	ldr	r12, [sp, fp]
	movw	fp, #48924
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48928
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48932
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48936
	str	r12, [sp, fp]
	movw	fp, #48936
	ldr	r12, [sp, fp]
	movw	fp, #48932
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48940
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48468
	ldr	r12, [sp, fp]
	movw	fp, #48940
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48944
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48948
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48948
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48952
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48944
	ldr	r12, [sp, fp]
	movw	fp, #48952
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48956
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48956
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48960
	str	r12, [sp, fp]
	movw	fp, #48960
	ldr	r12, [sp, fp]
	movw	fp, #48928
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.if_end0


.if_else3:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48964
	str	r12, [sp, fp]
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48968
	str	r12, [sp, fp]
	movw	fp, #48964
	ldr	r12, [sp, fp]
	movw	fp, #48968
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movlt	r12, #1
	movw	fp, #48976
	str	r12, [sp, fp]
	movge	r12, #0
	movw	fp, #48976
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #48980
	str	r12, [sp, fp]
	movw	fp, #48980
	ldr	r12, [sp, fp]
	movw	fp, #48976
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.lhs_true3
	b	.lhs_false3


.lhs_true2:
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48984
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48988
	str	r12, [sp, fp]
	movw	fp, #48984
	ldr	r12, [sp, fp]
	movw	fp, #48988
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movge	r12, #1
	movw	fp, #48996
	str	r12, [sp, fp]
	movlt	r12, #0
	movw	fp, #48996
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48872
	ldr	r12, [sp, fp]
	movw	fp, #48996
	ldr	r3, [sp, fp]
	and	r12, r12, r3
	movw	fp, #49000
	str	r12, [sp, fp]
	movw	fp, #49000
	ldr	r12, [sp, fp]
	movw	fp, #48528
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end2


.lhs_false2:
	movw	fp, #48872
	ldr	r12, [sp, fp]
	movw	fp, #48528
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end2


.land_end2:
	movw	fp, #48528
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49004
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #49008
	str	r12, [sp, fp]
	movw	fp, #49008
	ldr	r12, [sp, fp]
	movw	fp, #49004
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.if_then3
	b	.if_else3


.if_then4:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49012
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #49016
	str	r12, [sp, fp]
	movw	fp, #49016
	ldr	r12, [sp, fp]
	movw	fp, #49012
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #49020
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48544
	ldr	r12, [sp, fp]
	movw	fp, #49020
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49024
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49028
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #49024
	ldr	r12, [sp, fp]
	movw	fp, #49028
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49032
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49036
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #49040
	str	r12, [sp, fp]
	movw	fp, #49040
	ldr	r12, [sp, fp]
	movw	fp, #49036
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #49044
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48468
	ldr	r12, [sp, fp]
	movw	fp, #49044
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49048
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49052
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #49048
	ldr	r12, [sp, fp]
	movw	fp, #49052
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49056
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #49056
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49060
	str	r12, [sp, fp]
	movw	fp, #49060
	ldr	r12, [sp, fp]
	movw	fp, #49032
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.if_end0


.lhs_true3:
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49064
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49068
	str	r12, [sp, fp]
	movw	fp, #49064
	ldr	r12, [sp, fp]
	movw	fp, #49068
	ldr	r3, [sp, fp]
	cmp	r12, r3
	movlt	r12, #1
	movw	fp, #49076
	str	r12, [sp, fp]
	movge	r12, #0
	movw	fp, #49076
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48976
	ldr	r12, [sp, fp]
	movw	fp, #49076
	ldr	r3, [sp, fp]
	and	r12, r12, r3
	movw	fp, #49080
	str	r12, [sp, fp]
	movw	fp, #49080
	ldr	r12, [sp, fp]
	movw	fp, #48536
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end3


.lhs_false3:
	movw	fp, #48976
	ldr	r12, [sp, fp]
	movw	fp, #48536
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.land_end3


.land_end3:
	movw	fp, #48536
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49084
	str	r12, [sp, fp]
	mov	r12, #0
	movw	fp, #49088
	str	r12, [sp, fp]
	movw	fp, #49088
	ldr	r12, [sp, fp]
	movw	fp, #49084
	ldr	r3, [sp, fp]
	cmp	r12, r3
	bne	.if_then4
	b	.if_end0


.while_cond4:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49092
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #49092
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #49096
	str	r12, [sp, fp]
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49100
	str	r12, [sp, fp]
	movw	fp, #49100
	ldr	r12, [sp, fp]
	movw	fp, #49096
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body4
	b	.while_end4


.loop_body4:
	mov	r12, #0
	movw	fp, #49104
	str	r12, [sp, fp]
	movw	fp, #49104
	ldr	r12, [sp, fp]
	movw	fp, #48488
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond5


.while_end4:
	mov	r12, #49188
	movt	r12, #0
	add	sp, sp, r12
	pop	{ fp }
	bx	lr

.while_cond5:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49108
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #49108
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #49112
	str	r12, [sp, fp]
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49116
	str	r12, [sp, fp]
	movw	fp, #49116
	ldr	r12, [sp, fp]
	movw	fp, #49112
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body5
	b	.while_end5


.loop_body5:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49120
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #49124
	str	r12, [sp, fp]
	movw	fp, #49124
	ldr	r12, [sp, fp]
	movw	fp, #49120
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #49128
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48540
	ldr	r12, [sp, fp]
	movw	fp, #49128
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49132
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49136
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #49132
	ldr	r12, [sp, fp]
	movw	fp, #49136
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49140
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49144
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #49148
	str	r12, [sp, fp]
	movw	fp, #49148
	ldr	r12, [sp, fp]
	movw	fp, #49144
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	mov	fp, #49152
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48544
	ldr	r12, [sp, fp]
	mov	fp, #49152
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49156
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49160
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #49156
	ldr	r12, [sp, fp]
	movw	fp, #49160
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #49164
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #49164
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49168
	str	r12, [sp, fp]
	movw	fp, #49168
	ldr	r12, [sp, fp]
	movw	fp, #49140
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48488
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49172
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #49172
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #49176
	str	r12, [sp, fp]
	movw	fp, #49176
	ldr	r12, [sp, fp]
	movw	fp, #48488
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond5


.while_end5:
	movw	fp, #48480
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #49180
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #49180
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #49184
	str	r12, [sp, fp]
	movw	fp, #49184
	ldr	r12, [sp, fp]
	movw	fp, #48480
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond4



.global getans
	.type  getans, %function
getans:
	push	{ fp ,lr }
	mov	r12, #48872
	movt	r12, #0
	sub	sp, sp, r12
	movw	r12, #:lower16:just
	movt	r12, #:upper16:just
	movw	fp, #48424
	str	r12, [sp, fp]
	add	r12, sp, #0
	movw	fp, #48428
	str	r12, [sp, fp]
	add	r12, sp, #4
	movw	fp, #48432
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	str	r0, [r12]
	add	r12, sp, #8
	movw	fp, #48436
	str	r12, [sp, fp]
@ split immediate number + 48408
	movw	r12, #48408
	movw	fp, #48440
	str	r12, [sp, fp]
	movw	fp, #48440
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48444
	str	r12, [sp, fp]
@ split immediate number + 48412
	movw	r12, #48412
	movw	fp, #48448
	str	r12, [sp, fp]
	movw	fp, #48448
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48452
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48424
	ldr	r12, [sp, fp]
	movw	fp, #48456
	str	r12, [sp, fp]
@ create getelementptr end
@ split immediate number + 48416
	movw	r12, #48416
	movw	fp, #48460
	str	r12, [sp, fp]
	movw	fp, #48460
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48464
	str	r12, [sp, fp]
@ split immediate number + 48420
	movw	r12, #48420
	movw	fp, #48468
	str	r12, [sp, fp]
	movw	fp, #48468
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48472
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48436
	ldr	r12, [sp, fp]
	movw	fp, #48476
	str	r12, [sp, fp]
@ create getelementptr end
	mov	r12, #1
	movw	fp, #48480
	str	r12, [sp, fp]
	movw	fp, #48480
	ldr	r12, [sp, fp]
	movw	fp, #48444
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond6


.getans_exit:
	movw	fp, #48432
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48484
	str	r12, [sp, fp]
	movw	fp, #48484
	ldr	r0, [sp, fp]
	mov	r12, #48872
	movt	r12, #0
	add	sp, sp, r12
	pop	{ fp ,lr }
	bx	lr

.while_cond6:
	movw	fp, #48444
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48488
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48492
	str	r12, [sp, fp]
	movw	fp, #48488
	ldr	r12, [sp, fp]
	movw	fp, #48492
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body6
	b	.while_end6


.loop_body6:
	mov	r12, #1
	movw	fp, #48496
	str	r12, [sp, fp]
	movw	fp, #48496
	ldr	r12, [sp, fp]
	movw	fp, #48452
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond7


.while_end6:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48500
	str	r12, [sp, fp]
	movw	fp, #48500
	ldr	r12, [sp, fp]
	cmp	r12, #2
	beq	.if_then5
	b	.if_else4


.while_cond7:
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48504
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48508
	str	r12, [sp, fp]
	movw	fp, #48504
	ldr	r12, [sp, fp]
	movw	fp, #48508
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body7
	b	.while_end7


.loop_body7:
	movw	fp, #48444
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48512
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48516
	str	r12, [sp, fp]
	movw	fp, #48516
	ldr	r12, [sp, fp]
	movw	fp, #48512
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48520
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48520
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48524
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48528
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48524
	ldr	r12, [sp, fp]
	movw	fp, #48528
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48532
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48444
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48536
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48540
	str	r12, [sp, fp]
	movw	fp, #48540
	ldr	r12, [sp, fp]
	movw	fp, #48536
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48544
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48456
	ldr	r12, [sp, fp]
	movw	fp, #48544
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48548
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48552
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48548
	ldr	r12, [sp, fp]
	movw	fp, #48552
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48556
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48556
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48560
	str	r12, [sp, fp]
	movw	fp, #48560
	ldr	r12, [sp, fp]
	movw	fp, #48532
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48452
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48564
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48564
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48568
	str	r12, [sp, fp]
	movw	fp, #48568
	ldr	r12, [sp, fp]
	movw	fp, #48452
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond7


.while_end7:
	movw	fp, #48444
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48572
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48572
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48576
	str	r12, [sp, fp]
	movw	fp, #48576
	ldr	r12, [sp, fp]
	movw	fp, #48444
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond6


.if_then5:
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48580
	str	r12, [sp, fp]
	mov	r12, #1
	movw	fp, #48584
	str	r12, [sp, fp]
	movw	fp, #48580
	ldr	r12, [sp, fp]
	movw	fp, #48584
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48588
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48588
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48592
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	movw	fp, #48592
	ldr	r12, [sp, fp]
	add	r12, r12, #4
	movw	fp, #48596
	str	r12, [sp, fp]
@ create getelementptr end
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48600
	str	r12, [sp, fp]
	mov	r12, #2
	movw	fp, #48604
	str	r12, [sp, fp]
	movw	fp, #48600
	ldr	r12, [sp, fp]
	movw	fp, #48604
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48608
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48608
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48612
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	movw	fp, #48612
	ldr	r12, [sp, fp]
	add	r12, r12, #8
	movw	fp, #48616
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48596
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48620
	str	r12, [sp, fp]
	movw	fp, #48616
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48624
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48620
	ldr	r12, [sp, fp]
	movw	fp, #48624
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48628
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48632
	str	r12, [sp, fp]
	mov	r12, #1
	movw	fp, #48636
	str	r12, [sp, fp]
	movw	fp, #48632
	ldr	r12, [sp, fp]
	movw	fp, #48636
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	mov	fp, #48640
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	mov	fp, #48640
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48644
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	movw	fp, #48644
	ldr	r12, [sp, fp]
	add	r12, r12, #8
	movw	fp, #48648
	str	r12, [sp, fp]
@ create getelementptr end
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48652
	str	r12, [sp, fp]
	mov	r12, #2
	movw	fp, #48656
	str	r12, [sp, fp]
	movw	fp, #48652
	ldr	r12, [sp, fp]
	movw	fp, #48656
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48660
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48660
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48664
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	movw	fp, #48664
	ldr	r12, [sp, fp]
	add	r12, r12, #4
	movw	fp, #48668
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48648
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48672
	str	r12, [sp, fp]
	movw	fp, #48668
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48676
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48672
	ldr	r12, [sp, fp]
	movw	fp, #48676
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48680
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48628
	ldr	r12, [sp, fp]
	movw	fp, #48680
	ldr	r3, [sp, fp]
	sub	r12, r12, r3
	movw	fp, #48684
	str	r12, [sp, fp]
	movw	fp, #48684
	ldr	r12, [sp, fp]
	movw	fp, #48432
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.getans_exit


.if_else4:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48688
	str	r12, [sp, fp]
	movw	fp, #48688
	ldr	r12, [sp, fp]
	cmp	r12, #1
	beq	.if_then6
	b	.if_else5


.if_then6:
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48692
	str	r12, [sp, fp]
	mov	r12, #1
	movw	fp, #48696
	str	r12, [sp, fp]
	movw	fp, #48692
	ldr	r12, [sp, fp]
	movw	fp, #48696
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48700
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48700
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48704
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	movw	fp, #48704
	ldr	r12, [sp, fp]
	add	r12, r12, #4
	movw	fp, #48708
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48708
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48712
	str	r12, [sp, fp]
	movw	fp, #48712
	ldr	r12, [sp, fp]
	movw	fp, #48432
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.getans_exit


.if_else5:
	mov	r12, #0
	movw	fp, #48716
	str	r12, [sp, fp]
	movw	fp, #48716
	ldr	r12, [sp, fp]
	movw	fp, #48464
	ldr	r3, [sp, fp]
	str	r12, [r3]
	mov	r12, #1
	movw	fp, #48720
	str	r12, [sp, fp]
	movw	fp, #48720
	ldr	r12, [sp, fp]
	movw	fp, #48472
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond8


.while_cond8:
	movw	fp, #48472
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48724
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48728
	str	r12, [sp, fp]
	movw	fp, #48724
	ldr	r12, [sp, fp]
	movw	fp, #48728
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body8
	b	.while_end8


.loop_body8:
	movw	fp, #48472
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48732
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48736
	str	r12, [sp, fp]
	mov	r0, #1
	movw	fp, #48732
	ldr	r1, [sp, fp]
	movw	fp, #48476
	ldr	r2, [sp, fp]
	movw	fp, #48736
	ldr	r3, [sp, fp]
	bl	get
	movw	fp, #48472
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48740
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #2
	movw	fp, #48744
	str	r12, [sp, fp]
	movw	fp, #48740
	ldr	r12, [sp, fp]
	movw	fp, #48744
	ldr	r3, [sp, fp]
	sdiv	r12, r12, r3
	movw	fp, #48752
	str	r12, [sp, fp]
	movw	fp, #48752
	ldr	r12, [sp, fp]
	movw	fp, #48744
	ldr	r3, [sp, fp]
	movw	fp, #48740
	ldr	r10, [sp, fp]
	mls	r12, r12, r3, r10
	movw	fp, #48752
	str	r12, [sp, fp]
	movw	fp, #48752
	ldr	r12, [sp, fp]
	cmp	r12, #1
	beq	.if_then7
	b	.if_else6


.while_end8:
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48756
	str	r12, [sp, fp]
	movw	fp, #48756
	ldr	r12, [sp, fp]
	movw	fp, #48432
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.getans_exit


.if_then7:
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48760
	str	r12, [sp, fp]
	mov	r12, #1
	movw	fp, #48764
	str	r12, [sp, fp]
	movw	fp, #48760
	ldr	r12, [sp, fp]
	movw	fp, #48764
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48768
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48768
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48772
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48472
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48776
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48772
	ldr	r12, [sp, fp]
	movw	fp, #48776
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48780
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48784
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48784
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48788
	str	r12, [sp, fp]
	movw	fp, #48788
	ldr	r0, [sp, fp]
	bl	getans
	mov	r12, r0
	movw	fp, #48792
	str	r12, [sp, fp]
	movw	fp, #48780
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48796
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48796
	ldr	r12, [sp, fp]
	movw	fp, #48792
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48800
	str	r12, [sp, fp]
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48804
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48804
	ldr	r12, [sp, fp]
	movw	fp, #48800
	ldr	r3, [sp, fp]
	add	r12, r12, r3
	movw	fp, #48808
	str	r12, [sp, fp]
	movw	fp, #48808
	ldr	r12, [sp, fp]
	movw	fp, #48464
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.if_end1


.if_else6:
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48812
	str	r12, [sp, fp]
	mov	r12, #1
	movw	fp, #48816
	str	r12, [sp, fp]
	movw	fp, #48812
	ldr	r12, [sp, fp]
	movw	fp, #48816
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48820
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48476
	ldr	r12, [sp, fp]
	movw	fp, #48820
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48824
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48472
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48828
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48824
	ldr	r12, [sp, fp]
	movw	fp, #48828
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48832
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48836
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48836
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48840
	str	r12, [sp, fp]
	movw	fp, #48840
	ldr	r0, [sp, fp]
	bl	getans
	mov	r12, r0
	movw	fp, #48844
	str	r12, [sp, fp]
	movw	fp, #48832
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48848
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48848
	ldr	r12, [sp, fp]
	movw	fp, #48844
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48852
	str	r12, [sp, fp]
	movw	fp, #48464
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48856
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48856
	ldr	r12, [sp, fp]
	movw	fp, #48852
	ldr	r3, [sp, fp]
	sub	r12, r12, r3
	movw	fp, #48860
	str	r12, [sp, fp]
	movw	fp, #48860
	ldr	r12, [sp, fp]
	movw	fp, #48464
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.if_end1


.if_end1:
	movw	fp, #48472
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48864
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48864
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48868
	str	r12, [sp, fp]
	movw	fp, #48868
	ldr	r12, [sp, fp]
	movw	fp, #48472
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond8



.global gcd
	.type  gcd, %function
gcd:
	push	{ lr }
	sub	sp, sp, #80
	add	r12, sp, #0
	str	r12, [sp, #12]
	add	r12, sp, #4
	str	r12, [sp, #16]
	ldr	r12, [sp, #12]
	str	r0, [r12]
	add	r12, sp, #8
	str	r12, [sp, #20]
	ldr	r12, [sp, #16]
	str	r1, [r12]
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #24]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #28]
	ldr	r12, [sp, #24]
	ldr	r3, [sp, #28]
	cmp	r12, r3
	blt	.if_then8
	b	.if_end2


.gcd_exit:
	ldr	r12, [sp, #20]
	ldr	r12, [r12]
	str	r12, [sp, #32]
	ldr	r0, [sp, #32]
	add	sp, sp, #80
	pop	{ lr }
	bx	lr

.if_then8:
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #36]
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #40]
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #40]
	bl	gcd
	mov	r12, r0
	str	r12, [sp, #44]
	b	.if_end2


.if_end2:
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #48]
	ldr	r12, [sp, #48]
	cmp	r12, #0
	beq	.if_then9
	b	.if_else7


.if_then9:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #52]
	ldr	r12, [sp, #52]
	ldr	r3, [sp, #20]
	str	r12, [r3]
	b	.gcd_exit


.if_else7:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #56]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #60]
@ --- binary here ---
	ldr	r12, [sp, #56]
	ldr	r3, [sp, #60]
	sdiv	r12, r12, r3
	str	r12, [sp, #68]
	ldr	r12, [sp, #68]
	ldr	r3, [sp, #60]
	ldr	r10, [sp, #56]
	mls	r12, r12, r3, r10
	str	r12, [sp, #68]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #72]
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #68]
	bl	gcd
	mov	r12, r0
	str	r12, [sp, #76]
	ldr	r12, [sp, #76]
	ldr	r3, [sp, #20]
	str	r12, [r3]
	b	.gcd_exit



.global final
	.type  final, %function
final:
	push	{ lr }
	sub	sp, sp, #192
	add	r12, sp, #0
	str	r12, [sp, #12]
	add	r12, sp, #4
	str	r12, [sp, #16]
	ldr	r12, [sp, #12]
	str	r0, [r12]
	ldr	r12, [sp, #16]
	str	r1, [r12]
	add	r12, sp, #8
	str	r12, [sp, #20]
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #24]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #28]
@ --- binary here ---
	ldr	r12, [sp, #24]
	ldr	r3, [sp, #28]
	mul	r12, r12, r3
	str	r12, [sp, #32]
	ldr	r12, [sp, #32]
	cmp	r12, #0
	blt	.if_then10
	b	.if_end3


.final_exit:
	add	sp, sp, #192
	pop	{ lr }
	bx	lr

.if_then10:
	mov	r0, #45
	bl	putch
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #36]
	ldr	r0, [sp, #36]
	bl	myabs
	mov	r12, r0
	str	r12, [sp, #40]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #44]
	ldr	r0, [sp, #44]
	bl	myabs
	mov	r12, r0
	str	r12, [sp, #48]
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #48]
	bl	final
	b	.final_exit


.if_end3:
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #52]
	ldr	r12, [sp, #52]
	cmp	r12, #1
	beq	.if_then11
	b	.if_else8


.if_then11:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #56]
	ldr	r0, [sp, #56]
	bl	putint
	mov	r0, #32
	bl	putch
	mov	r0, #32
	bl	putch
	b	.final_exit


.if_else8:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #60]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #64]
@ --- binary here ---
	ldr	r12, [sp, #60]
	ldr	r3, [sp, #64]
	sdiv	r12, r12, r3
	str	r12, [sp, #72]
	ldr	r12, [sp, #72]
	ldr	r3, [sp, #64]
	ldr	r10, [sp, #60]
	mls	r12, r12, r3, r10
	str	r12, [sp, #72]
	ldr	r12, [sp, #72]
	cmp	r12, #0
	beq	.if_then12
	b	.if_else9


.if_then12:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #76]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #80]
@ --- binary here ---
	ldr	r12, [sp, #76]
	ldr	r3, [sp, #80]
	sdiv	r12, r12, r3
	str	r12, [sp, #84]
	ldr	r0, [sp, #84]
	bl	putint
	mov	r0, #32
	bl	putch
	mov	r0, #32
	bl	putch
	b	.final_exit


.if_else9:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #88]
	ldr	r12, [sp, #88]
	cmp	r12, #0
	movlt	r12, #1
	str	r12, [sp, #96]
	movge	r12, #0
	str	r12, [sp, #96]
	mov	r12, #0
	str	r12, [sp, #100]
	ldr	r12, [sp, #100]
	ldr	r3, [sp, #96]
	cmp	r12, r3
	bne	.lhs_true4
	b	.lhs_false4


.if_then13:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #104]
@ --- binary here ---
	mov	r12, #0
	str	r12, [sp, #108]
	ldr	r12, [sp, #108]
	ldr	r3, [sp, #104]
	sub	r12, r12, r3
	str	r12, [sp, #112]
	ldr	r12, [sp, #112]
	ldr	r3, [sp, #12]
	str	r12, [r3]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #116]
@ --- binary here ---
	mov	r12, #0
	str	r12, [sp, #120]
	ldr	r12, [sp, #120]
	ldr	r3, [sp, #116]
	sub	r12, r12, r3
	str	r12, [sp, #124]
	ldr	r12, [sp, #124]
	ldr	r3, [sp, #16]
	str	r12, [r3]
	b	.if_end4


.if_end4:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #128]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #132]
	ldr	r0, [sp, #128]
	ldr	r1, [sp, #132]
	bl	gcd
	mov	r12, r0
	str	r12, [sp, #136]
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #140]
@ --- binary here ---
	ldr	r12, [sp, #140]
	ldr	r3, [sp, #136]
	sdiv	r12, r12, r3
	str	r12, [sp, #144]
	ldr	r0, [sp, #144]
	bl	putint
	mov	r0, #47
	bl	putch
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #148]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #152]
	ldr	r0, [sp, #148]
	ldr	r1, [sp, #152]
	bl	gcd
	mov	r12, r0
	str	r12, [sp, #156]
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #160]
@ --- binary here ---
	ldr	r12, [sp, #160]
	ldr	r3, [sp, #156]
	sdiv	r12, r12, r3
	str	r12, [sp, #164]
	ldr	r0, [sp, #164]
	bl	putint
	mov	r0, #32
	bl	putch
	mov	r0, #32
	bl	putch
	b	.final_exit


.lhs_true4:
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #168]
	ldr	r12, [sp, #168]
	cmp	r12, #0
	movlt	r12, #1
	str	r12, [sp, #176]
	movge	r12, #0
	str	r12, [sp, #176]
@ --- binary here ---
	ldr	r12, [sp, #96]
	ldr	r3, [sp, #176]
	and	r12, r12, r3
	str	r12, [sp, #180]
	ldr	r12, [sp, #180]
	ldr	r3, [sp, #20]
	str	r12, [r3]
	b	.land_end4


.lhs_false4:
	ldr	r12, [sp, #96]
	ldr	r3, [sp, #20]
	str	r12, [r3]
	b	.land_end4


.land_end4:
	ldr	r12, [sp, #20]
	ldr	r12, [r12]
	str	r12, [sp, #184]
	mov	r12, #0
	str	r12, [sp, #188]
	ldr	r12, [sp, #188]
	ldr	r3, [sp, #184]
	cmp	r12, r3
	bne	.if_then13
	b	.if_end4



.global main
	.type  main, %function
main:
	push	{ fp ,lr }
	mov	r12, #48988
	movt	r12, #0
	sub	sp, sp, r12
	movw	r12, #:lower16:j
	movt	r12, #:upper16:j
	movw	fp, #48420
	str	r12, [sp, fp]
	movw	r12, #:lower16:i
	movt	r12, #:upper16:i
	movw	fp, #48424
	str	r12, [sp, fp]
	movw	r12, #:lower16:n
	movt	r12, #:upper16:n
	movw	fp, #48428
	str	r12, [sp, fp]
	movw	r12, #:lower16:just
	movt	r12, #:upper16:just
	movw	fp, #48432
	str	r12, [sp, fp]
	movw	r12, #:lower16:map1
	movt	r12, #:upper16:map1
	movw	fp, #48436
	str	r12, [sp, fp]
	add	r12, sp, #0
	movw	fp, #48440
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48436
	ldr	r12, [sp, fp]
	movw	fp, #48444
	str	r12, [sp, fp]
@ create getelementptr end
	add	r12, sp, #4
	movw	fp, #48448
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48432
	ldr	r12, [sp, fp]
	movw	fp, #48452
	str	r12, [sp, fp]
@ create getelementptr end
	add	r12, sp, #8
	movw	fp, #48456
	str	r12, [sp, fp]
	add	r12, sp, #12
	movw	fp, #48460
	str	r12, [sp, fp]
@ split immediate number + 48412
	movw	r12, #48412
	movw	fp, #48464
	str	r12, [sp, fp]
	movw	fp, #48464
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48468
	str	r12, [sp, fp]
@ split immediate number + 48416
	movw	r12, #48416
	movw	fp, #48472
	str	r12, [sp, fp]
	movw	fp, #48472
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	movw	fp, #48476
	str	r12, [sp, fp]
	bl	getint
	mov	r12, r0
	movw	fp, #48480
	str	r12, [sp, fp]
	movw	fp, #48480
	ldr	r12, [sp, fp]
	movw	fp, #48428
	ldr	r3, [sp, fp]
	str	r12, [r3]
	mov	r12, #0
	movw	fp, #48484
	str	r12, [sp, fp]
	movw	fp, #48484
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond9


.while_cond9:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48488
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48488
	ldr	r12, [sp, fp]
	add	r12, r12, #10
	movw	fp, #48492
	str	r12, [sp, fp]
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48496
	str	r12, [sp, fp]
	movw	fp, #48496
	ldr	r12, [sp, fp]
	movw	fp, #48492
	ldr	r3, [sp, fp]
	cmp	r12, r3
	blt	.loop_body9
	b	.while_end9


.loop_body9:
	mov	r12, #0
	movw	fp, #48500
	str	r12, [sp, fp]
	movw	fp, #48500
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond10


.while_end9:
	mov	r12, #0
	movw	fp, #48504
	str	r12, [sp, fp]
	movw	fp, #48504
	ldr	r12, [sp, fp]
	movw	fp, #48448
	ldr	r3, [sp, fp]
	str	r12, [r3]
	mov	r12, #1
	movw	fp, #48508
	str	r12, [sp, fp]
	movw	fp, #48508
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond11


.while_cond10:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48512
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48512
	ldr	r12, [sp, fp]
	add	r12, r12, #10
	movw	fp, #48516
	str	r12, [sp, fp]
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48520
	str	r12, [sp, fp]
	movw	fp, #48520
	ldr	r12, [sp, fp]
	movw	fp, #48516
	ldr	r3, [sp, fp]
	cmp	r12, r3
	blt	.loop_body10
	b	.while_end10


.loop_body10:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48524
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48528
	str	r12, [sp, fp]
	movw	fp, #48528
	ldr	r12, [sp, fp]
	movw	fp, #48524
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48532
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48444
	ldr	r12, [sp, fp]
	movw	fp, #48532
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48536
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48540
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48536
	ldr	r12, [sp, fp]
	movw	fp, #48540
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48544
	str	r12, [sp, fp]
@ create getelementptr end
	mov	r12, #1
	movw	fp, #48548
	str	r12, [sp, fp]
	movw	fp, #48548
	ldr	r12, [sp, fp]
	movw	fp, #48544
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48552
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48552
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48556
	str	r12, [sp, fp]
	movw	fp, #48556
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond10


.while_end10:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48560
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48560
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48564
	str	r12, [sp, fp]
	movw	fp, #48564
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond9


.while_cond11:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48568
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48572
	str	r12, [sp, fp]
	movw	fp, #48568
	ldr	r12, [sp, fp]
	movw	fp, #48572
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body11
	b	.while_end11


.loop_body11:
	mov	r12, #1
	movw	fp, #48576
	str	r12, [sp, fp]
	movw	fp, #48576
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond12


.while_end11:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48580
	str	r12, [sp, fp]
	movw	fp, #48580
	ldr	r0, [sp, fp]
	bl	getans
	mov	r12, r0
	movw	fp, #48584
	str	r12, [sp, fp]
	movw	fp, #48584
	ldr	r12, [sp, fp]
	movw	fp, #48456
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48588
	str	r12, [sp, fp]
	movw	fp, #48588
	ldr	r0, [sp, fp]
	bl	putint
	mov	r0, #10
	bl	putch
@ begin getelementptr
	movw	fp, #48460
	ldr	r12, [sp, fp]
	movw	fp, #48592
	str	r12, [sp, fp]
@ create getelementptr end
	mov	r12, #1
	movw	fp, #48596
	str	r12, [sp, fp]
	movw	fp, #48596
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond13


.while_cond12:
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48600
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48604
	str	r12, [sp, fp]
	movw	fp, #48600
	ldr	r12, [sp, fp]
	movw	fp, #48604
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body12
	b	.while_end12


.loop_body12:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48608
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48612
	str	r12, [sp, fp]
	movw	fp, #48612
	ldr	r12, [sp, fp]
	movw	fp, #48608
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48616
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48444
	ldr	r12, [sp, fp]
	movw	fp, #48616
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48620
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48624
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48620
	ldr	r12, [sp, fp]
	movw	fp, #48624
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48628
	str	r12, [sp, fp]
@ create getelementptr end
	bl	getint
	mov	r12, r0
	movw	fp, #48632
	str	r12, [sp, fp]
	movw	fp, #48632
	ldr	r12, [sp, fp]
	movw	fp, #48628
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48636
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	mov	fp, #48640
	str	r12, [sp, fp]
	mov	fp, #48640
	ldr	r12, [sp, fp]
	movw	fp, #48636
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48644
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48452
	ldr	r12, [sp, fp]
	movw	fp, #48644
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48648
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48652
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48648
	ldr	r12, [sp, fp]
	movw	fp, #48652
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48656
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48660
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48664
	str	r12, [sp, fp]
	movw	fp, #48664
	ldr	r12, [sp, fp]
	movw	fp, #48660
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48668
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48444
	ldr	r12, [sp, fp]
	movw	fp, #48668
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48672
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48676
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48672
	ldr	r12, [sp, fp]
	movw	fp, #48676
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48680
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48680
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48684
	str	r12, [sp, fp]
	movw	fp, #48684
	ldr	r12, [sp, fp]
	movw	fp, #48656
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48688
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48688
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48692
	str	r12, [sp, fp]
	movw	fp, #48692
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond12


.while_end12:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48696
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48696
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48700
	str	r12, [sp, fp]
	movw	fp, #48700
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond11


.while_cond13:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48704
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48708
	str	r12, [sp, fp]
	movw	fp, #48704
	ldr	r12, [sp, fp]
	movw	fp, #48708
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body13
	b	.while_end13


.loop_body13:
	mov	r12, #1
	movw	fp, #48712
	str	r12, [sp, fp]
	movw	fp, #48712
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond14


.while_end13:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48716
	str	r12, [sp, fp]
	movw	fp, #48716
	ldr	r0, [sp, fp]
	bl	getans
	mov	r12, r0
	movw	fp, #48720
	str	r12, [sp, fp]
	movw	fp, #48720
	ldr	r12, [sp, fp]
	movw	fp, #48468
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48468
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48724
	str	r12, [sp, fp]
	movw	fp, #48724
	ldr	r12, [sp, fp]
	cmp	r12, #0
	beq	.if_then14
	b	.if_end5


.while_cond14:
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48728
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48732
	str	r12, [sp, fp]
	movw	fp, #48728
	ldr	r12, [sp, fp]
	movw	fp, #48732
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body14
	b	.while_end14


.loop_body14:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48736
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48740
	str	r12, [sp, fp]
	movw	fp, #48740
	ldr	r12, [sp, fp]
	movw	fp, #48736
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48744
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48592
	ldr	r12, [sp, fp]
	movw	fp, #48744
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48748
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48752
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48748
	ldr	r12, [sp, fp]
	movw	fp, #48752
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48756
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48760
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48764
	str	r12, [sp, fp]
	movw	fp, #48764
	ldr	r12, [sp, fp]
	movw	fp, #48760
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48768
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48444
	ldr	r12, [sp, fp]
	movw	fp, #48768
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48772
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48776
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48772
	ldr	r12, [sp, fp]
	movw	fp, #48776
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48780
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48780
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48784
	str	r12, [sp, fp]
	movw	fp, #48784
	ldr	r12, [sp, fp]
	movw	fp, #48756
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48788
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48792
	str	r12, [sp, fp]
	movw	fp, #48792
	ldr	r12, [sp, fp]
	movw	fp, #48788
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48796
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48452
	ldr	r12, [sp, fp]
	movw	fp, #48796
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48800
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48804
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48800
	ldr	r12, [sp, fp]
	movw	fp, #48804
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48808
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48812
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #110
	movw	fp, #48816
	str	r12, [sp, fp]
	movw	fp, #48816
	ldr	r12, [sp, fp]
	movw	fp, #48812
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48820
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48592
	ldr	r12, [sp, fp]
	movw	fp, #48820
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48824
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48828
	str	r12, [sp, fp]
@ begin getelementptr
	movw	fp, #48824
	ldr	r12, [sp, fp]
	movw	fp, #48828
	ldr	r3, [sp, fp]
	add	r12, r12, r3, lsl #2
	movw	fp, #48832
	str	r12, [sp, fp]
@ create getelementptr end
	movw	fp, #48832
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48836
	str	r12, [sp, fp]
	movw	fp, #48836
	ldr	r12, [sp, fp]
	movw	fp, #48808
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48840
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48840
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48844
	str	r12, [sp, fp]
	movw	fp, #48844
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond14


.while_end14:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48848
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48848
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48852
	str	r12, [sp, fp]
	movw	fp, #48852
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond13


.if_then14:
	mov	r0, #69
	bl	putch
	b	.if_end5


.if_end5:
	mov	r12, #0
	movw	fp, #48856
	str	r12, [sp, fp]
	movw	fp, #48856
	ldr	r12, [sp, fp]
	movw	fp, #48476
	ldr	r3, [sp, fp]
	str	r12, [r3]
	mov	r12, #1
	movw	fp, #48860
	str	r12, [sp, fp]
	movw	fp, #48860
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond15


.while_cond15:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48864
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48868
	str	r12, [sp, fp]
	movw	fp, #48864
	ldr	r12, [sp, fp]
	movw	fp, #48868
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body15
	b	.while_end15


.loop_body15:
	mov	r12, #1
	movw	fp, #48872
	str	r12, [sp, fp]
	movw	fp, #48872
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond16


.while_end15:
	mov	r12, #0
	movw	fp, #48876
	str	r12, [sp, fp]
	movw	fp, #48876
	ldr	r12, [sp, fp]
	movw	fp, #48440
	ldr	r3, [sp, fp]
	str	r12, [r3]
	movw	fp, #48440
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48880
	str	r12, [sp, fp]
	movw	fp, #48880
	ldr	r0, [sp, fp]
	mov	r12, #48988
	movt	r12, #0
	add	sp, sp, r12
	pop	{ fp ,lr }
	bx	lr

.while_cond16:
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48884
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48888
	str	r12, [sp, fp]
	movw	fp, #48884
	ldr	r12, [sp, fp]
	movw	fp, #48888
	ldr	r3, [sp, fp]
	cmp	r12, r3
	ble	.loop_body16
	b	.while_end16


.loop_body16:
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48892
	str	r12, [sp, fp]
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #48896
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48900
	str	r12, [sp, fp]
	movw	fp, #48892
	ldr	r0, [sp, fp]
	mov	fp, #48896
	ldr	r1, [sp, fp]
	movw	fp, #48592
	ldr	r2, [sp, fp]
	movw	fp, #48900
	ldr	r3, [sp, fp]
	bl	get
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48904
	str	r12, [sp, fp]
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48908
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48904
	ldr	r12, [sp, fp]
	movw	fp, #48908
	ldr	r3, [sp, fp]
	add	r12, r12, r3
	movw	fp, #48912
	str	r12, [sp, fp]
@ --- binary here ---
	mov	r12, #2
	movw	fp, #48916
	str	r12, [sp, fp]
	movw	fp, #48912
	ldr	r12, [sp, fp]
	movw	fp, #48916
	ldr	r3, [sp, fp]
	sdiv	r12, r12, r3
	movw	fp, #48924
	str	r12, [sp, fp]
	movw	fp, #48924
	ldr	r12, [sp, fp]
	movw	fp, #48916
	ldr	r3, [sp, fp]
	movw	fp, #48912
	ldr	r10, [sp, fp]
	mls	r12, r12, r3, r10
	movw	fp, #48924
	str	r12, [sp, fp]
	movw	fp, #48924
	ldr	r12, [sp, fp]
	cmp	r12, #0
	beq	.if_then15
	b	.if_else10


.while_end16:
	mov	r0, #10
	bl	putch
	movw	fp, #48424
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48928
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48928
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48932
	str	r12, [sp, fp]
	movw	fp, #48932
	ldr	r12, [sp, fp]
	movw	fp, #48424
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond15


.if_then15:
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48936
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48936
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48940
	str	r12, [sp, fp]
	movw	fp, #48940
	ldr	r0, [sp, fp]
	bl	getans
	mov	r12, r0
	movw	fp, #48944
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48948
	str	r12, [sp, fp]
	movw	fp, #48944
	ldr	r0, [sp, fp]
	movw	fp, #48948
	ldr	r1, [sp, fp]
	bl	final
	b	.if_end6


.if_else10:
@ --- binary here ---
	mov	r12, #0
	movw	fp, #48952
	str	r12, [sp, fp]
	movw	fp, #48952
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48956
	str	r12, [sp, fp]
	movw	fp, #48428
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48960
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48960
	ldr	r12, [sp, fp]
	sub	r12, r12, #1
	movw	fp, #48964
	str	r12, [sp, fp]
	movw	fp, #48964
	ldr	r0, [sp, fp]
	bl	getans
	mov	r12, r0
	movw	fp, #48968
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48956
	ldr	r12, [sp, fp]
	movw	fp, #48968
	ldr	r3, [sp, fp]
	mul	r12, r12, r3
	movw	fp, #48972
	str	r12, [sp, fp]
	movw	fp, #48456
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48976
	str	r12, [sp, fp]
	movw	fp, #48972
	ldr	r0, [sp, fp]
	movw	fp, #48976
	ldr	r1, [sp, fp]
	bl	final
	b	.if_end6


.if_end6:
	movw	fp, #48420
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	movw	fp, #48980
	str	r12, [sp, fp]
@ --- binary here ---
	movw	fp, #48980
	ldr	r12, [sp, fp]
	add	r12, r12, #1
	movw	fp, #48984
	str	r12, [sp, fp]
	movw	fp, #48984
	ldr	r12, [sp, fp]
	movw	fp, #48420
	ldr	r3, [sp, fp]
	str	r12, [r3]
	b	.while_cond16



.section .data
.align 4
.global map1
	.type	map1, %object
map1:
	.zero	48400

.global i
	.type	i, %object
i:
	.zero	4

.global j
	.type	j, %object
j:
	.zero	4

.global n
	.type	n, %object
n:
	.zero	4

.global just
	.type	just, %object
just:
	.zero	48400

