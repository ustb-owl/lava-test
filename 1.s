.arch armv7ve
.section .text

.global myabs
	.type  myabs, %function
myabs:
	sub	sp, sp, #0
	mov	r2, r0
	cmp	r2, #0
	bge	.if_then0


.if_else0:
@ --- binary here ---
	mov	r1, #0
	sub	r0, r1, #1
@ --- binary here ---
	mul	r1, r0, r2
	mov	r0, r1
	b	.myabs_exit


.if_then0:
	mov	r0, r2

.myabs_exit:
	mov	r2, r0
	mov	r0, r2
	add	sp, sp, #0
	bx	lr


.global init_vis
	.type  init_vis, %function
init_vis:
	push	{ r7 ,r8 ,r9 }
	sub	sp, sp, #0
	movw	r2, #:lower16:vis
	movt	r2, #:upper16:vis
@ begin getelementptr
	mov	r1, r2
@ create getelementptr end
	mov	r2, #0

.while_cond0:
	mov	r0, r2
	cmp	r0, #110
	blt	.loop_body0
	b	.while_end0


.loop_body0:
	mov	r9, #0

.while_cond1:
	mov	r8, r9
	cmp	r8, #110
	blt	.loop_body1


.while_end1:
@ --- binary here ---
	add	r7, r0, #1
	mov	r2, r7
	b	.while_cond0


.loop_body1:
@ --- binary here ---
	mov	r2, #110
	mul	r7, r2, r0
@ begin getelementptr
	add	r2, r1, r7, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r7, r2, r8, lsl #2
@ create getelementptr end
	mov	r2, #0
	str	r2, [r7]
@ --- binary here ---
	add	r2, r8, #1
	mov	r9, r2
	b	.while_cond1


.while_end0:
	add	sp, sp, #0
	pop	{ r7 ,r8 ,r9 }
	bx	lr


.global get
	.type  get, %function
get:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,r11 }
	movw	r12, #48644
	sub	sp, sp, r12
	mov	r9, r1
	mov	r8, r0
	mov	r7, r3
	movw	r6, #:lower16:just
	movt	r6, #:upper16:just
	add	r1, sp, #0
	str	r2, [r1]
	mov	r1, r2
	add	r2, sp, #4
@ begin getelementptr
	mov	r0, r6
@ create getelementptr end
@ begin getelementptr
	mov	r6, r2
@ create getelementptr end
	mov	r2, #0

.while_cond2:
	mov	r12, r2
	movw	r11, #48620
	str	r12, [sp, r11]
@ --- binary here ---
	add	r4, r7, #10
	movw	r11, #48620
	ldr	r12, [sp, r11]
	cmp	r12, r4
	blt	.loop_body2


.while_end2:
	mov	r4, #1

.while_cond3:
	mov	r5, r4
@ --- binary here ---
	sub	r12, r7, #1
	movw	r11, #48404
	str	r12, [sp, r11]
	movw	r11, #48404
	ldr	r12, [sp, r11]
	cmp	r5, r12
	ble	.loop_body3


.while_end3:
	mov	r12, #0
	movw	r11, #48408
	str	r12, [sp, r11]

.while_cond4:
	movw	r11, #48408
	ldr	r12, [sp, r11]
	movw	r11, #48412
	str	r12, [sp, r11]
@ --- binary here ---
	sub	r12, r7, #1
	movw	r11, #48416
	str	r12, [sp, r11]
	movw	r11, #48412
	ldr	r12, [sp, r11]
	movw	r11, #48416
	ldr	r10, [sp, r11]
	cmp	r12, r10
	ble	.loop_body4
	b	.while_end4


.loop_body4:
	mov	r12, #0
	movw	r11, #48420
	str	r12, [sp, r11]

.while_cond5:
	movw	r11, #48420
	ldr	r12, [sp, r11]
	movw	r11, #48424
	str	r12, [sp, r11]
@ --- binary here ---
	sub	r12, r7, #1
	movw	r11, #48428
	str	r12, [sp, r11]
	movw	r11, #48424
	ldr	r12, [sp, r11]
	movw	r11, #48428
	ldr	r10, [sp, r11]
	cmp	r12, r10
	ble	.loop_body5


.while_end5:
@ --- binary here ---
	movw	r11, #48412
	ldr	r12, [sp, r11]
	add	r12, r12, #1
	movw	r11, #48432
	str	r12, [sp, r11]
	movw	r11, #48432
	ldr	r12, [sp, r11]
	movw	r11, #48408
	str	r12, [sp, r11]
	b	.while_cond4


.loop_body5:
@ --- binary here ---
	mov	r12, #110
	movw	r11, #48436
	str	r12, [sp, r11]
	movw	r11, #48436
	ldr	r12, [sp, r11]
	movw	r11, #48412
	ldr	r10, [sp, r11]
	mul	r12, r12, r10
	movw	r11, #48440
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48440
	ldr	r12, [sp, r11]
	add	r12, r0, r12, lsl #2
	movw	r11, #48444
	str	r12, [sp, r11]
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48444
	ldr	r12, [sp, r11]
	movw	r11, #48424
	ldr	r10, [sp, r11]
	add	r12, r12, r10, lsl #2
	movw	r11, #48448
	str	r12, [sp, r11]
@ create getelementptr end
@ --- binary here ---
	mov	r12, #110
	movw	r11, #48452
	str	r12, [sp, r11]
	movw	r11, #48452
	ldr	r12, [sp, r11]
	movw	r11, #48412
	ldr	r10, [sp, r11]
	mul	r12, r12, r10
	movw	r11, #48456
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48456
	ldr	r12, [sp, r11]
	add	r12, r6, r12, lsl #2
	movw	r11, #48460
	str	r12, [sp, r11]
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48460
	ldr	r12, [sp, r11]
	movw	r11, #48424
	ldr	r10, [sp, r11]
	add	r12, r12, r10, lsl #2
	movw	r11, #48464
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48464
	ldr	r12, [sp, r11]
	ldr	r12, [r12]
	movw	r11, #48468
	str	r12, [sp, r11]
	movw	r11, #48468
	ldr	r12, [sp, r11]
	movw	r11, #48448
	ldr	r10, [sp, r11]
	str	r12, [r10]
@ --- binary here ---
	movw	r11, #48424
	ldr	r12, [sp, r11]
	add	r12, r12, #1
	movw	r11, #48472
	str	r12, [sp, r11]
	movw	r11, #48472
	ldr	r12, [sp, r11]
	movw	r11, #48420
	str	r12, [sp, r11]
	b	.while_cond5


.loop_body3:
	mov	r12, #1
	movw	r11, #48476
	str	r12, [sp, r11]

.while_cond6:
	movw	r11, #48476
	ldr	r12, [sp, r11]
	movw	r11, #48480
	str	r12, [sp, r11]
@ --- binary here ---
	sub	r12, r7, #1
	movw	r11, #48484
	str	r12, [sp, r11]
	movw	r11, #48480
	ldr	r12, [sp, r11]
	movw	r11, #48484
	ldr	r10, [sp, r11]
	cmp	r12, r10
	ble	.loop_body6


.while_end6:
@ --- binary here ---
	add	r12, r5, #1
	movw	r11, #48488
	str	r12, [sp, r11]
	movw	r11, #48488
	ldr	r4, [sp, r11]
	b	.while_cond3


.loop_body6:
	cmp	r5, r8
	movge	r4, #1
	movlt	r4, #0
	mov	r12, #0
	movw	r11, #48492
	str	r12, [sp, r11]
	movw	r11, #48492
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.lhs_true0


.lhs_false0:
	mov	r12, r4
	movw	r11, #48496
	str	r12, [sp, r11]

.land_end0:
	movw	r11, #48496
	ldr	r4, [sp, r11]
	mov	r12, #0
	movw	r11, #48500
	str	r12, [sp, r11]
	movw	r11, #48500
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.if_then1


.if_else1:
	cmp	r5, r8
	movge	r4, #1
	movlt	r4, #0
	mov	r12, #0
	movw	r11, #48504
	str	r12, [sp, r11]
	movw	r11, #48504
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.lhs_true1


.lhs_false1:
	mov	r12, r4
	movw	r11, #48508
	str	r12, [sp, r11]

.land_end1:
	movw	r11, #48508
	ldr	r4, [sp, r11]
	mov	r12, #0
	movw	r11, #48512
	str	r12, [sp, r11]
	movw	r11, #48512
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.if_then2


.if_else2:
	cmp	r5, r8
	movlt	r4, #1
	movge	r4, #0
	mov	r12, #0
	movw	r11, #48516
	str	r12, [sp, r11]
	movw	r11, #48516
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.lhs_true2


.lhs_false2:
	mov	r12, r4
	movw	r11, #48520
	str	r12, [sp, r11]

.land_end2:
	movw	r11, #48520
	ldr	r4, [sp, r11]
	mov	r12, #0
	movw	r11, #48524
	str	r12, [sp, r11]
	movw	r11, #48524
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.if_then3


.if_else3:
	cmp	r5, r8
	movlt	r4, #1
	movge	r4, #0
	mov	r12, #0
	movw	r11, #48528
	str	r12, [sp, r11]
	movw	r11, #48528
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.lhs_true3


.lhs_false3:
	mov	r12, r4
	movw	r11, #48532
	str	r12, [sp, r11]

.land_end3:
	movw	r11, #48532
	ldr	r4, [sp, r11]
	mov	r12, #0
	movw	r11, #48536
	str	r12, [sp, r11]
	movw	r11, #48536
	ldr	r12, [sp, r11]
	cmp	r12, r4
	bne	.if_then4


.if_end0:
@ --- binary here ---
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r4, r12, #1
	mov	r12, r4
	movw	r11, #48476
	str	r12, [sp, r11]
	b	.while_cond6


.if_then4:
@ --- binary here ---
	mov	r4, #110
	mul	r12, r4, r5
	movw	r11, #48540
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48540
	ldr	r12, [sp, r11]
	add	r4, r6, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48544
	str	r12, [sp, r11]
@ create getelementptr end
@ --- binary here ---
	mov	r4, #110
	mul	r12, r4, r5
	movw	r11, #48548
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48548
	ldr	r12, [sp, r11]
	add	r4, r1, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48552
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48552
	ldr	r12, [sp, r11]
	ldr	r4, [r12]
	movw	r11, #48544
	ldr	r12, [sp, r11]
	str	r4, [r12]
	b	.if_end0


.lhs_true3:
	movw	r11, #48480
	ldr	r12, [sp, r11]
	cmp	r12, r9
	movlt	r4, #1
	movge	r4, #0
	mov	r12, r4
	movw	r11, #48532
	str	r12, [sp, r11]
	b	.land_end3


.if_then3:
@ --- binary here ---
	mov	r4, #110
	mul	r12, r4, r5
	movw	r11, #48556
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48556
	ldr	r12, [sp, r11]
	add	r4, r6, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48560
	str	r12, [sp, r11]
@ create getelementptr end
@ --- binary here ---
	mov	r4, #110
	mul	r12, r4, r5
	movw	r11, #48564
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48564
	ldr	r12, [sp, r11]
	add	r4, r1, r12, lsl #2
@ create getelementptr end
@ --- binary here ---
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r12, #1
	movw	r11, #48568
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48568
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48572
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48572
	ldr	r12, [sp, r11]
	ldr	r4, [r12]
	movw	r11, #48560
	ldr	r12, [sp, r11]
	str	r4, [r12]
	b	.if_end0


.lhs_true2:
	movw	r11, #48480
	ldr	r12, [sp, r11]
	cmp	r12, r9
	movge	r4, #1
	movlt	r4, #0
	mov	r12, r4
	movw	r11, #48520
	str	r12, [sp, r11]
	b	.land_end2


.if_then2:
@ --- binary here ---
	mov	r4, #110
	mul	r12, r4, r5
	movw	r11, #48576
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48576
	ldr	r12, [sp, r11]
	add	r4, r6, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48580
	str	r12, [sp, r11]
@ create getelementptr end
@ --- binary here ---
	add	r4, r5, #1
@ --- binary here ---
	mov	r12, #110
	movw	r11, #48584
	str	r12, [sp, r11]
	movw	r11, #48584
	ldr	r12, [sp, r11]
	mul	r12, r12, r4
	movw	r11, #48588
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48588
	ldr	r12, [sp, r11]
	add	r4, r1, r12, lsl #2
@ create getelementptr end
@ --- binary here ---
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r12, #1
	movw	r11, #48592
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48592
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48596
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48596
	ldr	r12, [sp, r11]
	ldr	r4, [r12]
	movw	r11, #48580
	ldr	r12, [sp, r11]
	str	r4, [r12]
	b	.if_end0


.lhs_true1:
	movw	r11, #48480
	ldr	r12, [sp, r11]
	cmp	r12, r9
	movge	r4, #1
	movlt	r4, #0
	mov	r12, r4
	movw	r11, #48508
	str	r12, [sp, r11]
	b	.land_end1


.if_then1:
@ --- binary here ---
	mov	r4, #110
	mul	r12, r4, r5
	movw	r11, #48600
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48600
	ldr	r12, [sp, r11]
	add	r4, r6, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48604
	str	r12, [sp, r11]
@ create getelementptr end
@ --- binary here ---
	add	r4, r5, #1
@ --- binary here ---
	mov	r12, #110
	movw	r11, #48608
	str	r12, [sp, r11]
	movw	r11, #48608
	ldr	r12, [sp, r11]
	mul	r12, r12, r4
	movw	r11, #48612
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48612
	ldr	r12, [sp, r11]
	add	r4, r1, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48480
	ldr	r12, [sp, r11]
	add	r12, r4, r12, lsl #2
	movw	r11, #48616
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48616
	ldr	r12, [sp, r11]
	ldr	r4, [r12]
	movw	r11, #48604
	ldr	r12, [sp, r11]
	str	r4, [r12]
	b	.if_end0


.lhs_true0:
	movw	r11, #48480
	ldr	r12, [sp, r11]
	cmp	r12, r9
	movlt	r4, #1
	movge	r4, #0
	mov	r12, r4
	movw	r11, #48496
	str	r12, [sp, r11]
	b	.land_end0


.loop_body2:
	mov	r12, #0
	mov	r11, #48640
	str	r12, [sp, r11]

.while_cond7:
	mov	r11, #48640
	ldr	r4, [sp, r11]
@ --- binary here ---
	add	r12, r7, #10
	movw	r11, #48624
	str	r12, [sp, r11]
	movw	r11, #48624
	ldr	r12, [sp, r11]
	cmp	r4, r12
	blt	.loop_body7


.while_end7:
@ --- binary here ---
	movw	r11, #48620
	ldr	r12, [sp, r11]
	add	r12, r12, #1
	movw	r11, #48628
	str	r12, [sp, r11]
	movw	r11, #48628
	ldr	r2, [sp, r11]
	b	.while_cond2


.loop_body7:
@ --- binary here ---
	mov	r2, #110
	movw	r11, #48620
	ldr	r12, [sp, r11]
	mul	r12, r2, r12
	movw	r11, #48632
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48632
	ldr	r12, [sp, r11]
	add	r2, r6, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r12, r2, r4, lsl #2
	movw	r11, #48636
	str	r12, [sp, r11]
@ create getelementptr end
	mov	r2, #1
	movw	r11, #48636
	ldr	r12, [sp, r11]
	str	r2, [r12]
@ --- binary here ---
	add	r2, r4, #1
	mov	r12, r2
	mov	r11, #48640
	str	r12, [sp, r11]
	b	.while_cond7


.while_end4:
@ split stack size: 48644
	movw	r12, #48644
	add	sp, sp, r12
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,r11 }
	bx	lr


.global getans
	.type  getans, %function
getans:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,r11 ,lr }
	movw	r12, #48428
	sub	sp, sp, r12
	mov	r9, r0
	movw	r2, #:lower16:just
	movt	r2, #:upper16:just
	add	r1, sp, #0
@ begin getelementptr
	mov	r8, r2
@ create getelementptr end
@ begin getelementptr
	mov	r7, r1
@ create getelementptr end
	mov	r6, #1

.while_cond8:
	mov	r12, r6
	movw	r11, #48424
	str	r12, [sp, r11]
	movw	r11, #48424
	ldr	r12, [sp, r11]
	cmp	r12, r9
	ble	.loop_body8


.while_end8:
	cmp	r9, #2
	beq	.if_then5


.if_else4:
	cmp	r9, #1
	beq	.if_then6


.if_else5:
	mov	r4, #1
	mov	r5, #0

.while_cond9:
	mov	r12, r4
	movw	r11, #48400
	str	r12, [sp, r11]
	mov	r12, r5
	movw	r11, #48404
	str	r12, [sp, r11]
	movw	r11, #48400
	ldr	r12, [sp, r11]
	cmp	r12, r9
	ble	.loop_body9


.while_end9:
	movw	r11, #48404
	ldr	r12, [sp, r11]
	movw	r11, #48412
	str	r12, [sp, r11]
	b	.getans_exit


.loop_body9:
	mov	r0, #1
	movw	r11, #48400
	ldr	r1, [sp, r11]
	mov	r2, r7
	mov	r3, r9
	bl	get
@ --- binary here ---
	mov	r1, #2
	movw	r11, #48400
	ldr	r12, [sp, r11]
	sdiv	r2, r12, r1
	mul	r2, r2, r1
	movw	r11, #48400
	ldr	r12, [sp, r11]
	sub	r2, r12, r2
	cmp	r2, #1
	beq	.if_then7


.if_else6:
@ --- binary here ---
	mov	r2, #110
	mov	r1, #1
	mul	r0, r2, r1
@ begin getelementptr
	add	r1, r7, r0, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48400
	ldr	r12, [sp, r11]
	add	r12, r1, r12, lsl #2
	movw	r11, #48408
	str	r12, [sp, r11]
@ create getelementptr end
@ --- binary here ---
	sub	r1, r9, #1
	mov	r0, r1
	bl	getans
	mov	r1, r0
	movw	r11, #48408
	ldr	r12, [sp, r11]
	ldr	r0, [r12]
@ --- binary here ---
	mul	r2, r0, r1
@ --- binary here ---
	movw	r11, #48404
	ldr	r12, [sp, r11]
	sub	r0, r12, r2
	mov	r12, r0
	movw	r11, #48416
	str	r12, [sp, r11]

.if_end1:
	movw	r11, #48416
	ldr	r0, [sp, r11]
@ --- binary here ---
	movw	r11, #48400
	ldr	r12, [sp, r11]
	add	r2, r12, #1
	mov	r4, r2
	mov	r5, r0
	b	.while_cond9


.if_then7:
@ --- binary here ---
	mov	r0, #110
	mov	r2, #1
	mul	r1, r0, r2
@ begin getelementptr
	add	r2, r7, r1, lsl #2
@ create getelementptr end
@ begin getelementptr
	movw	r11, #48400
	ldr	r12, [sp, r11]
	add	r4, r2, r12, lsl #2
@ create getelementptr end
@ --- binary here ---
	sub	r2, r9, #1
	mov	r0, r2
	bl	getans
	mov	r2, r0
	ldr	r1, [r4]
@ --- binary here ---
	mul	r0, r1, r2
@ --- binary here ---
	movw	r11, #48404
	ldr	r12, [sp, r11]
	add	r1, r12, r0
	mov	r12, r1
	movw	r11, #48416
	str	r12, [sp, r11]
	b	.if_end1


.if_then6:
@ --- binary here ---
	mov	r1, #110
	mov	r0, #1
	mul	r2, r1, r0
@ begin getelementptr
	add	r0, r7, r2, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r2, r0, #4
@ create getelementptr end
	ldr	r0, [r2]
	mov	r12, r0
	movw	r11, #48412
	str	r12, [sp, r11]
	b	.getans_exit


.if_then5:
@ --- binary here ---
	mov	r0, #110
	mov	r2, #1
	mul	r1, r0, r2
@ begin getelementptr
	add	r2, r7, r1, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r1, r2, #4
@ create getelementptr end
@ --- binary here ---
	mov	r2, #110
	mov	r0, #2
	mul	r4, r2, r0
@ begin getelementptr
	add	r0, r7, r4, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r2, r0, #8
@ create getelementptr end
	ldr	r0, [r1]
	ldr	r1, [r2]
@ --- binary here ---
	mul	r2, r0, r1
@ --- binary here ---
	mov	r1, #110
	mov	r0, #1
	mul	r4, r1, r0
@ begin getelementptr
	add	r0, r7, r4, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r1, r0, #8
@ create getelementptr end
@ --- binary here ---
	mov	r0, #110
	mov	r4, #2
	mul	r12, r0, r4
	movw	r11, #48420
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48420
	ldr	r12, [sp, r11]
	add	r0, r7, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r4, r0, #4
@ create getelementptr end
	ldr	r0, [r1]
	ldr	r1, [r4]
@ --- binary here ---
	mul	r4, r0, r1
@ --- binary here ---
	sub	r1, r2, r4
	mov	r12, r1
	movw	r11, #48412
	str	r12, [sp, r11]
	b	.getans_exit


.loop_body8:
	mov	r1, #1

.while_cond10:
	mov	r2, r1
	cmp	r2, r9
	ble	.loop_body10


.while_end10:
@ --- binary here ---
	movw	r11, #48424
	ldr	r12, [sp, r11]
	add	r0, r12, #1
	mov	r6, r0
	b	.while_cond8


.loop_body10:
@ --- binary here ---
	mov	r0, #110
	movw	r11, #48424
	ldr	r12, [sp, r11]
	mul	r6, r0, r12
@ begin getelementptr
	add	r0, r7, r6, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r6, r0, r2, lsl #2
@ create getelementptr end
@ --- binary here ---
	mov	r0, #110
	movw	r11, #48424
	ldr	r12, [sp, r11]
	mul	r4, r0, r12
@ begin getelementptr
	add	r0, r8, r4, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r4, r0, r2, lsl #2
@ create getelementptr end
	ldr	r0, [r4]
	str	r0, [r6]
@ --- binary here ---
	add	r0, r2, #1
	mov	r1, r0
	b	.while_cond10


.getans_exit:
	movw	r11, #48412
	ldr	r0, [sp, r11]
@ split stack size: 48428
	movw	r12, #48428
	add	sp, sp, r12
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,r11 ,lr }
	bx	lr


.global gcd
	.type  gcd, %function
gcd:
	push	{ r7 ,r8 ,r9 ,lr }
	sub	sp, sp, #0
	mov	r9, r1
	mov	r8, r0
	cmp	r8, r9
	blt	.if_then8


.if_end2:
	cmp	r9, #0
	beq	.if_then9


.if_else7:
@ --- binary here ---
	sdiv	r7, r8, r9
	mul	r7, r7, r9
	sub	r7, r8, r7
	mov	r0, r9
	mov	r1, r7
	bl	gcd
	mov	r2, r0
	mov	r7, r2
	b	.gcd_exit


.if_then9:
	mov	r7, r8
	b	.gcd_exit


.if_then8:
	mov	r0, r9
	mov	r1, r8
	bl	gcd
	mov	r2, r0
	b	.if_end2


.gcd_exit:
	mov	r2, r7
	mov	r0, r2
	add	sp, sp, #0
	pop	{ r7 ,r8 ,r9 ,lr }
	bx	lr


.global final
	.type  final, %function
final:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,lr }
	sub	sp, sp, #4
	mov	r12, r1
	str	r12, [sp, #0]
	mov	r8, r0
@ --- binary here ---
	ldr	r12, [sp, #0]
	mul	r2, r8, r12
	cmp	r2, #0
	blt	.if_then10


.if_end3:
	ldr	r12, [sp, #0]
	cmp	r12, #1
	beq	.if_then11


.if_else8:
@ --- binary here ---
	ldr	r12, [sp, #0]
	sdiv	r2, r8, r12
	ldr	r12, [sp, #0]
	mul	r2, r2, r12
	sub	r2, r8, r2
	cmp	r2, #0
	beq	.if_then12


.if_else9:
	cmp	r8, #0
	movlt	r2, #1
	movge	r2, #0
	mov	r1, #0
	cmp	r1, r2
	bne	.lhs_true4


.lhs_false4:
	mov	r7, r2

.land_end4:
	mov	r2, r7
	mov	r1, #0
	ldr	r6, [sp, #0]
	mov	r5, r8
	cmp	r1, r2
	bne	.if_then13


.if_end4:
	mov	r4, r6
	mov	r9, r5
	mov	r0, r9
	mov	r1, r4
	bl	gcd
	mov	r1, r0
@ --- binary here ---
	sdiv	r2, r9, r1
	mov	r0, r2
	bl	putint
	mov	r0, #47
	bl	putch
	mov	r0, r9
	mov	r1, r4
	bl	gcd
	mov	r2, r0
@ --- binary here ---
	sdiv	r1, r4, r2
	mov	r0, r1
	bl	putint
	mov	r0, #32
	bl	putch
	mov	r0, #32
	bl	putch
	b	.final_exit


.if_then13:
@ --- binary here ---
	mov	r1, #0
	sub	r2, r1, r8
@ --- binary here ---
	mov	r1, #0
	ldr	r12, [sp, #0]
	sub	r0, r1, r12
	mov	r6, r0
	mov	r5, r2
	b	.if_end4


.lhs_true4:
	ldr	r12, [sp, #0]
	cmp	r12, #0
	movlt	r2, #1
	movge	r2, #0
	mov	r7, r2
	b	.land_end4


.if_then12:
@ --- binary here ---
	ldr	r12, [sp, #0]
	sdiv	r2, r8, r12
	mov	r0, r2
	bl	putint
	mov	r0, #32
	bl	putch
	mov	r0, #32
	bl	putch
	b	.final_exit


.if_then11:
	mov	r0, r8
	bl	putint
	mov	r0, #32
	bl	putch
	mov	r0, #32
	bl	putch
	b	.final_exit


.if_then10:
	mov	r0, #45
	bl	putch
	mov	r0, r8
	bl	myabs
	mov	r8, r0
	ldr	r0, [sp, #0]
	bl	myabs
	mov	r9, r0
	mov	r0, r8
	mov	r1, r9
	bl	final

.final_exit:
	add	sp, sp, #4
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,lr }
	bx	lr


.global main
	.type  main, %function
main:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,r11 ,lr }
	movw	r12, #48448
	sub	sp, sp, r12
	movw	r9, #:lower16:j
	movt	r9, #:upper16:j
	movw	r8, #:lower16:i
	movt	r8, #:upper16:i
	movw	r7, #:lower16:n
	movt	r7, #:upper16:n
	movw	r2, #:lower16:just
	movt	r2, #:upper16:just
	movw	r1, #:lower16:map1
	movt	r1, #:upper16:map1
@ begin getelementptr
	mov	r6, r1
@ create getelementptr end
@ begin getelementptr
	mov	r5, r2
@ create getelementptr end
	add	r12, sp, #0
	movw	r11, #48444
	str	r12, [sp, r11]
	bl	getint
	mov	r2, r0
	str	r2, [r7]
	mov	r2, #0
	str	r2, [r8]

.while_cond11:
	ldr	r2, [r7]
@ --- binary here ---
	add	r1, r2, #10
	ldr	r2, [r8]
	cmp	r2, r1
	blt	.loop_body11


.while_end11:
	mov	r2, #1
	str	r2, [r8]

.while_cond12:
	ldr	r2, [r8]
	ldr	r1, [r7]
	cmp	r2, r1
	ble	.loop_body12


.while_end12:
	ldr	r1, [r7]
	mov	r0, r1
	bl	getans
	mov	r4, r0
	mov	r0, r4
	bl	putint
	mov	r0, #10
	bl	putch
@ begin getelementptr
	movw	r11, #48444
	ldr	r12, [sp, r11]
	movw	r11, #48400
	str	r12, [sp, r11]
@ create getelementptr end
	mov	r1, #1
	str	r1, [r8]

.while_cond13:
	ldr	r1, [r8]
	ldr	r2, [r7]
	cmp	r1, r2
	ble	.loop_body13


.while_end13:
	ldr	r2, [r7]
	mov	r0, r2
	bl	getans
	mov	r2, r0
	cmp	r2, #0
	beq	.if_then14


.if_end5:
	mov	r2, #1
	str	r2, [r8]

.while_cond14:
	ldr	r2, [r8]
	ldr	r1, [r7]
	cmp	r2, r1
	ble	.loop_body14
	b	.while_end14


.loop_body14:
	mov	r1, #1
	str	r1, [r9]

.while_cond15:
	ldr	r1, [r9]
	ldr	r2, [r7]
	cmp	r1, r2
	ble	.loop_body15


.while_end15:
	mov	r0, #10
	bl	putch
	ldr	r2, [r8]
@ --- binary here ---
	add	r1, r2, #1
	str	r1, [r8]
	b	.while_cond14


.loop_body15:
	ldr	r1, [r8]
	ldr	r12, [r9]
	movw	r11, #48404
	str	r12, [sp, r11]
	ldr	r12, [r7]
	movw	r11, #48408
	str	r12, [sp, r11]
	mov	r0, r1
	movw	r11, #48404
	ldr	r1, [sp, r11]
	movw	r11, #48400
	ldr	r2, [sp, r11]
	movw	r11, #48408
	ldr	r3, [sp, r11]
	bl	get
	ldr	r1, [r8]
	ldr	r2, [r9]
@ --- binary here ---
	add	r0, r1, r2
@ --- binary here ---
	mov	r2, #2
	sdiv	r1, r0, r2
	mul	r1, r1, r2
	sub	r1, r0, r1
	cmp	r1, #0
	beq	.if_then15


.if_else10:
@ --- binary here ---
	mov	r1, #0
	sub	r12, r1, #1
	movw	r11, #48412
	str	r12, [sp, r11]
	ldr	r1, [r7]
@ --- binary here ---
	sub	r0, r1, #1
	bl	getans
@ --- binary here ---
	movw	r11, #48412
	ldr	r12, [sp, r11]
	mul	r1, r12, r0
	mov	r0, r1
	mov	r1, r4
	bl	final

.if_end6:
	ldr	r1, [r9]
@ --- binary here ---
	add	r0, r1, #1
	str	r0, [r9]
	b	.while_cond15


.if_then15:
	ldr	r0, [r7]
@ --- binary here ---
	sub	r1, r0, #1
	mov	r0, r1
	bl	getans
	mov	r1, r0
	mov	r0, r1
	mov	r1, r4
	bl	final
	b	.if_end6


.if_then14:
	mov	r0, #69
	bl	putch
	b	.if_end5


.loop_body13:
	mov	r1, #1
	str	r1, [r9]

.while_cond16:
	ldr	r1, [r9]
	ldr	r0, [r7]
	cmp	r1, r0
	ble	.loop_body16


.while_end16:
	ldr	r0, [r8]
@ --- binary here ---
	add	r1, r0, #1
	str	r1, [r8]
	b	.while_cond13


.loop_body16:
	ldr	r1, [r8]
@ --- binary here ---
	mov	r0, #110
	mul	r2, r0, r1
@ begin getelementptr
	movw	r11, #48400
	ldr	r12, [sp, r11]
	add	r0, r12, r2, lsl #2
@ create getelementptr end
	ldr	r2, [r9]
@ begin getelementptr
	add	r1, r0, r2, lsl #2
@ create getelementptr end
	ldr	r2, [r9]
@ --- binary here ---
	mov	r0, #110
	mul	r12, r0, r2
	movw	r11, #48416
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48416
	ldr	r12, [sp, r11]
	add	r0, r6, r12, lsl #2
@ create getelementptr end
	ldr	r2, [r8]
@ begin getelementptr
	add	r12, r0, r2, lsl #2
	movw	r11, #48420
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48420
	ldr	r12, [sp, r11]
	ldr	r2, [r12]
	str	r2, [r1]
	ldr	r2, [r8]
@ --- binary here ---
	mov	r1, #110
	mul	r0, r1, r2
@ begin getelementptr
	add	r1, r5, r0, lsl #2
@ create getelementptr end
	ldr	r0, [r9]
@ begin getelementptr
	add	r2, r1, r0, lsl #2
@ create getelementptr end
	ldr	r0, [r8]
@ --- binary here ---
	mov	r1, #110
	mul	r12, r1, r0
	movw	r11, #48424
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48400
	ldr	r12, [sp, r11]
	movw	r11, #48424
	ldr	r10, [sp, r11]
	add	r1, r12, r10, lsl #2
@ create getelementptr end
	ldr	r0, [r9]
@ begin getelementptr
	add	r12, r1, r0, lsl #2
	movw	r11, #48428
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48428
	ldr	r12, [sp, r11]
	ldr	r0, [r12]
	str	r0, [r2]
	ldr	r0, [r9]
@ --- binary here ---
	add	r2, r0, #1
	str	r2, [r9]
	b	.while_cond16


.loop_body12:
	mov	r2, #1
	str	r2, [r9]

.while_cond17:
	ldr	r2, [r9]
	ldr	r0, [r7]
	cmp	r2, r0
	ble	.loop_body17


.while_end17:
	ldr	r0, [r8]
@ --- binary here ---
	add	r2, r0, #1
	str	r2, [r8]
	b	.while_cond12


.loop_body17:
	ldr	r2, [r8]
@ --- binary here ---
	mov	r0, #110
	mul	r1, r0, r2
@ begin getelementptr
	add	r0, r6, r1, lsl #2
@ create getelementptr end
	ldr	r1, [r9]
@ begin getelementptr
	add	r12, r0, r1, lsl #2
	movw	r11, #48432
	str	r12, [sp, r11]
@ create getelementptr end
	bl	getint
	mov	r1, r0
	movw	r11, #48432
	ldr	r12, [sp, r11]
	str	r1, [r12]
	ldr	r1, [r8]
@ --- binary here ---
	mov	r0, #110
	mul	r2, r0, r1
@ begin getelementptr
	add	r0, r5, r2, lsl #2
@ create getelementptr end
	ldr	r2, [r9]
@ begin getelementptr
	add	r1, r0, r2, lsl #2
@ create getelementptr end
	ldr	r2, [r8]
@ --- binary here ---
	mov	r0, #110
	mul	r12, r0, r2
	movw	r11, #48436
	str	r12, [sp, r11]
@ begin getelementptr
	movw	r11, #48436
	ldr	r12, [sp, r11]
	add	r0, r6, r12, lsl #2
@ create getelementptr end
	ldr	r2, [r9]
@ begin getelementptr
	add	r12, r0, r2, lsl #2
	movw	r11, #48440
	str	r12, [sp, r11]
@ create getelementptr end
	movw	r11, #48440
	ldr	r12, [sp, r11]
	ldr	r2, [r12]
	str	r2, [r1]
	ldr	r2, [r9]
@ --- binary here ---
	add	r1, r2, #1
	str	r1, [r9]
	b	.while_cond17


.loop_body11:
	mov	r1, #0
	str	r1, [r9]

.while_cond18:
	ldr	r1, [r7]
@ --- binary here ---
	add	r2, r1, #10
	ldr	r1, [r9]
	cmp	r1, r2
	blt	.loop_body18


.while_end18:
	ldr	r1, [r8]
@ --- binary here ---
	add	r2, r1, #1
	str	r2, [r8]
	b	.while_cond11


.loop_body18:
	ldr	r2, [r8]
@ --- binary here ---
	mov	r1, #110
	mul	r0, r1, r2
@ begin getelementptr
	add	r1, r6, r0, lsl #2
@ create getelementptr end
	ldr	r0, [r9]
@ begin getelementptr
	add	r2, r1, r0, lsl #2
@ create getelementptr end
	mov	r0, #1
	str	r0, [r2]
	ldr	r0, [r9]
@ --- binary here ---
	add	r2, r0, #1
	str	r2, [r9]
	b	.while_cond18


.while_end14:
	mov	r0, #0
@ split stack size: 48448
	movw	r12, #48448
	add	sp, sp, r12
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,r11 ,lr }
	bx	lr


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

.global vis
	.type	vis, %object
vis:
	.zero	48400

.global just
	.type	just, %object
just:
	.zero	48400

