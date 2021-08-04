.arch armv7ve
.section .text

.global main
	.type  main, %function
main:
	push	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,lr }
	sub	sp, sp, #76
	movw	r2, #:lower16:dist
	movt	r2, #:upper16:dist
@ begin getelementptr
	mov	r9, r2
@ create getelementptr end
	bl	getint
	mov	r8, r0
	mov	r7, #0

.while_cond0:
	mov	r12, r7
	str	r12, [sp, #68]
	cmp	r12, r8
	blt	.loop_body0


.while_end0:
	mov	r0, #0
	bl	_sysy_starttime
	mov	r5, #0

.while_cond1:
	mov	r4, r5
	cmp	r4, r8
	blt	.loop_body1


.while_end1:
	mov	r0, #0
	bl	_sysy_stoptime
	mov	r2, #0

.while_cond2:
	mov	r6, r2
	cmp	r6, r8
	blt	.loop_body2
	b	.while_end2


.loop_body2:
	mov	r12, #0
	str	r12, [sp, #0]

.while_cond3:
	ldr	r12, [sp, #0]
	str	r12, [sp, #4]
	cmp	r12, r8
	blt	.loop_body3


.while_end3:
@ --- binary here ---
	add	r1, r6, #1
	mov	r2, r1
	b	.while_cond2


.loop_body3:
@ --- binary here ---
	mov	r2, #1024
	mul	r1, r2, r6
@ begin getelementptr
	add	r2, r9, r1, lsl #2
@ create getelementptr end
@ begin getelementptr
	ldr	r12, [sp, #4]
	add	r1, r2, r12, lsl #2
@ create getelementptr end
	ldr	r2, [r1]
	mov	r0, r2
	bl	putint
	mov	r0, #32
	bl	putch
@ --- binary here ---
	ldr	r12, [sp, #4]
	add	r2, r12, #1
	mov	r12, r2
	str	r12, [sp, #0]
	b	.while_cond3


.loop_body1:
	mov	r2, #0

.while_cond4:
	mov	r1, r2
	cmp	r1, r8
	blt	.loop_body4


.while_end4:
@ --- binary here ---
	add	r0, r4, #1
	mov	r5, r0
	b	.while_cond1


.loop_body4:
	mov	r0, #0

.while_cond5:
	mov	r5, r0
	cmp	r5, r8
	blt	.loop_body5


.while_end5:
@ --- binary here ---
	add	r12, r1, #1
	str	r12, [sp, #8]
	mov	r2, r12
	b	.while_cond4


.loop_body5:
@ --- binary here ---
	mov	r2, #1024
	mul	r12, r2, r1
	str	r12, [sp, #12]
@ begin getelementptr
	ldr	r12, [sp, #12]
	add	r2, r9, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r12, r2, r4, lsl #2
	str	r12, [sp, #16]
@ create getelementptr end
@ --- binary here ---
	mov	r2, #1024
	mul	r12, r2, r4
	str	r12, [sp, #20]
@ begin getelementptr
	ldr	r12, [sp, #20]
	add	r2, r9, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r12, r2, r5, lsl #2
	str	r12, [sp, #24]
@ create getelementptr end
	ldr	r12, [sp, #16]
	ldr	r2, [r12]
	ldr	r12, [sp, #24]
	ldr	r12, [r12]
	str	r12, [sp, #28]
@ --- binary here ---
	ldr	r12, [sp, #28]
	add	r12, r2, r12
	str	r12, [sp, #32]
@ --- binary here ---
	mov	r2, #1024
	mul	r12, r2, r1
	str	r12, [sp, #36]
@ begin getelementptr
	ldr	r12, [sp, #36]
	add	r2, r9, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r12, r2, r5, lsl #2
	str	r12, [sp, #40]
@ create getelementptr end
	ldr	r12, [sp, #40]
	ldr	r2, [r12]
	ldr	r12, [sp, #32]
	cmp	r12, r2
	blt	.if_then0


.if_end0:
@ --- binary here ---
	add	r2, r5, #1
	mov	r0, r2
	b	.while_cond5


.if_then0:
@ --- binary here ---
	mov	r0, #1024
	mul	r2, r0, r1
@ begin getelementptr
	add	r0, r9, r2, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r2, r0, r5, lsl #2
@ create getelementptr end
@ --- binary here ---
	mov	r0, #1024
	mul	r12, r0, r1
	str	r12, [sp, #44]
@ begin getelementptr
	ldr	r12, [sp, #44]
	add	r0, r9, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r12, r0, r4, lsl #2
	str	r12, [sp, #48]
@ create getelementptr end
@ --- binary here ---
	mov	r0, #1024
	mul	r12, r0, r4
	str	r12, [sp, #52]
@ begin getelementptr
	ldr	r12, [sp, #52]
	add	r0, r9, r12, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r12, r0, r5, lsl #2
	str	r12, [sp, #56]
@ create getelementptr end
	ldr	r12, [sp, #48]
	ldr	r0, [r12]
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #60]
@ --- binary here ---
	ldr	r12, [sp, #60]
	add	r12, r0, r12
	str	r12, [sp, #64]
	str	r12, [r2]
	b	.if_end0


.loop_body0:
	mov	r12, #0
	str	r12, [sp, #72]

.while_cond6:
	ldr	r5, [sp, #72]
	cmp	r5, r8
	blt	.loop_body6


.while_end6:
@ --- binary here ---
	ldr	r12, [sp, #68]
	add	r1, r12, #1
	mov	r7, r1
	b	.while_cond0


.loop_body6:
@ --- binary here ---
	mov	r1, #1024
	ldr	r12, [sp, #68]
	mul	r2, r1, r12
@ begin getelementptr
	add	r1, r9, r2, lsl #2
@ create getelementptr end
@ begin getelementptr
	add	r7, r1, r5, lsl #2
@ create getelementptr end
	bl	getint
	mov	r1, r0
	str	r1, [r7]
@ --- binary here ---
	add	r1, r5, #1
	mov	r12, r1
	str	r12, [sp, #72]
	b	.while_cond6


.while_end2:
	mov	r0, #0
	add	sp, sp, #76
	pop	{ r4 ,r5 ,r6 ,r7 ,r8 ,r9 ,lr }
	bx	lr


.section .data
.align 4
.global dist
	.type	dist, %object
dist:
	.zero	4194304

