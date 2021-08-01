.arch armv7ve
.section .text

.global BinSearch
	.type  BinSearch, %function
BinSearch:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 }
	sub	sp, sp, #84
	add	r9, sp, #0
	str	r0, [r9]
	add	r8, sp, #4
	ldr	r7, [r9]
	add	r9, sp, #8
	str	r1, [r8]
	add	r12, sp, #12
	str	r12, [sp, #80]
	str	r2, [r9]
	add	r5, sp, #16
	add	r4, sp, #20
	add	r6, sp, #24
	mov	r12, #0
	str	r12, [sp, #28]
	str	r12, [r5]
	ldr	r12, [r8]
	str	r12, [sp, #32]
@ --- binary here ---
	ldr	r12, [sp, #32]
	sub	r8, r12, #1
	str	r8, [r4]

.while_cond0:
	ldr	r8, [r5]
	ldr	r12, [r4]
	str	r12, [sp, #36]
	cmp	r8, r12
	ble	.loop_body0


.while_end0:
@ --- binary here ---
	mov	r8, #0
	sub	r12, r8, #1
	str	r12, [sp, #40]
	ldr	r10, [sp, #80]
	str	r12, [r10]
	b	.BinSearch_exit


.loop_body0:
	ldr	r8, [r5]
	ldr	r12, [r4]
	str	r12, [sp, #44]
@ --- binary here ---
	ldr	r12, [sp, #44]
	add	r12, r8, r12
	str	r12, [sp, #48]
@ --- binary here ---
	mov	r8, #2
	ldr	r12, [sp, #48]
	sdiv	r12, r12, r8
	str	r12, [sp, #52]
	str	r12, [r6]
	ldr	r8, [sp, #52]
@ begin getelementptr
	add	r12, r7, r8, lsl #2
	str	r12, [sp, #56]
@ create getelementptr end
	ldr	r8, [r9]
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #60]
	cmp	r8, r12
	beq	.if_then0


.if_end0:
	ldr	r8, [r6]
@ begin getelementptr
	add	r12, r7, r8, lsl #2
	str	r12, [sp, #64]
@ create getelementptr end
	ldr	r8, [r9]
	ldr	r12, [sp, #64]
	ldr	r12, [r12]
	str	r12, [sp, #68]
	cmp	r8, r12
	bgt	.if_then1


.if_else0:
	ldr	r8, [r6]
@ --- binary here ---
	sub	r12, r8, #1
	str	r12, [sp, #72]
	str	r12, [r4]
	b	.while_cond0


.if_then1:
	ldr	r8, [r6]
@ --- binary here ---
	add	r12, r8, #1
	str	r12, [sp, #76]
	str	r12, [r5]
	b	.while_cond0


.if_then0:
	ldr	r8, [r6]
	ldr	r12, [sp, #80]
	str	r8, [r12]

.BinSearch_exit:
	ldr	r12, [sp, #80]
	ldr	r8, [r12]
	mov	r0, r8
	add	sp, sp, #84
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 }
	bx	lr


.global main
	.type  main, %function
main:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,lr }
	sub	sp, sp, #420
	add	r12, sp, #0
	str	r12, [sp, #416]
	add	r8, sp, #4
	add	r7, sp, #404
	add	r6, sp, #408
@ begin getelementptr
	mov	r5, r8
@ create getelementptr end
	mov	r8, #0
	str	r8, [r6]
	bl	getint
	mov	r8, r0
	str	r8, [r7]

.while_cond1:
	ldr	r8, [r6]
	ldr	r4, [r7]
	cmp	r8, r4
	blt	.loop_body1
	b	.while_end1


.loop_body1:
	ldr	r8, [r6]
@ begin getelementptr
	add	r9, r5, r8, lsl #2
@ create getelementptr end
	bl	getint
	mov	r8, r0
	str	r8, [r9]
	ldr	r8, [r6]
@ --- binary here ---
	add	r12, r8, #1
	str	r12, [sp, #412]
	str	r12, [r6]
	b	.while_cond1


.while_end1:
	ldr	r8, [r7]
	mov	r0, r5
	mov	r1, r8
	mov	r2, #9
	bl	BinSearch
	mov	r8, r0
	str	r8, [r7]
	mov	r7, r8
	mov	r0, r7
	bl	putint
	mov	r7, #0
	ldr	r12, [sp, #416]
	str	r7, [r12]
	mov	r9, r7
	mov	r0, r9
	add	sp, sp, #420
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,lr }
	bx	lr


