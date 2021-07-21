.arch armv7ve
.section .text

.global transpose
	.type  transpose, %function
transpose:
	sub	sp, sp, #260
	add	r12, sp, #0
	str	r12, [sp, #32]
	add	r12, sp, #4
	str	r12, [sp, #36]
	ldr	r12, [sp, #32]
	str	r0, [r12]
	ldr	r12, [sp, #36]
	str	r1, [r12]
	add	r12, sp, #8
	str	r12, [sp, #40]
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #44]
	add	r12, sp, #12
	str	r12, [sp, #48]
	ldr	r12, [sp, #40]
	str	r2, [r12]
	add	r12, sp, #16
	str	r12, [sp, #52]
	add	r12, sp, #20
	str	r12, [sp, #56]
	add	r12, sp, #24
	str	r12, [sp, #60]
	add	r12, sp, #28
	str	r12, [sp, #64]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #68]
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #72]
@ --- binary here ---
	ldr	r12, [sp, #68]
	ldr	r3, [sp, #72]
	sdiv	r12, r12, r3
	str	r12, [sp, #76]
	ldr	r12, [sp, #76]
	ldr	r3, [sp, #52]
	str	r12, [r3]
	mov	r12, #0
	str	r12, [sp, #80]
	ldr	r12, [sp, #80]
	ldr	r3, [sp, #56]
	str	r12, [r3]
	mov	r12, #0
	str	r12, [sp, #84]
	ldr	r12, [sp, #84]
	ldr	r3, [sp, #60]
	str	r12, [r3]
	b	.while_cond0

.while_cond0:
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #88]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #92]
	ldr	r12, [sp, #88]
	ldr	r3, [sp, #92]
	cmp	r12, r3
	blt	.loop_body0
	b	.while_end0

.loop_body0:
	mov	r12, #0
	str	r12, [sp, #96]
	ldr	r12, [sp, #96]
	ldr	r3, [sp, #60]
	str	r12, [r3]
	b	.while_cond1

.while_end0:
@ --- binary here ---
	mov	r12, #0
	str	r12, [sp, #100]
	ldr	r12, [sp, #100]
	sub	r12, r12, #1
	str	r12, [sp, #104]
	ldr	r12, [sp, #104]
	ldr	r3, [sp, #48]
	str	r12, [r3]
	ldr	r12, [sp, #48]
	ldr	r12, [r12]
	str	r12, [sp, #108]
	ldr	r0, [sp, #108]
	add	sp, sp, #260
	bx	lr

.while_cond1:
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #112]
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #116]
	ldr	r12, [sp, #112]
	ldr	r3, [sp, #116]
	cmp	r12, r3
	blt	.loop_body1
	b	.while_end1

.loop_body1:
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #120]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #124]
	ldr	r12, [sp, #120]
	ldr	r3, [sp, #124]
	cmp	r12, r3
	blt	.if_then0
	b	.if_end0

.while_end1:
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #128]
@ --- binary here ---
	ldr	r12, [sp, #128]
	add	r12, r12, #1
	str	r12, [sp, #132]
	ldr	r12, [sp, #132]
	ldr	r3, [sp, #56]
	str	r12, [r3]
	b	.while_cond0

.if_then0:
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #136]
@ --- binary here ---
	ldr	r12, [sp, #136]
	add	r12, r12, #1
	str	r12, [sp, #140]
	ldr	r12, [sp, #140]
	ldr	r3, [sp, #60]
	str	r12, [r3]
	b	.while_cond1

.if_end0:
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #144]
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #148]
@ --- binary here ---
	ldr	r12, [sp, #144]
	ldr	r3, [sp, #148]
	mul	r12, r12, r3
	str	r12, [sp, #152]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #156]
@ --- binary here ---
	ldr	r12, [sp, #152]
	ldr	r3, [sp, #156]
	add	r12, r12, r3
	str	r12, [sp, #160]
@ begin getelementptr
	ldr	r12, [sp, #44]
	ldr	r3, [sp, #160]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #164]
@ create getelementptr end
	ldr	r12, [sp, #164]
	ldr	r12, [r12]
	str	r12, [sp, #168]
	ldr	r12, [sp, #168]
	ldr	r3, [sp, #64]
	str	r12, [r3]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #172]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #176]
@ --- binary here ---
	ldr	r12, [sp, #172]
	ldr	r3, [sp, #176]
	mul	r12, r12, r3
	str	r12, [sp, #180]
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #184]
@ --- binary here ---
	ldr	r12, [sp, #180]
	ldr	r3, [sp, #184]
	add	r12, r12, r3
	str	r12, [sp, #188]
@ begin getelementptr
	ldr	r12, [sp, #44]
	ldr	r3, [sp, #188]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #192]
@ create getelementptr end
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #196]
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #200]
@ --- binary here ---
	ldr	r12, [sp, #196]
	ldr	r3, [sp, #200]
	mul	r12, r12, r3
	str	r12, [sp, #204]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #208]
@ --- binary here ---
	ldr	r12, [sp, #204]
	ldr	r3, [sp, #208]
	add	r12, r12, r3
	str	r12, [sp, #212]
@ begin getelementptr
	ldr	r12, [sp, #44]
	ldr	r3, [sp, #212]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #216]
@ create getelementptr end
	ldr	r12, [sp, #216]
	ldr	r12, [r12]
	str	r12, [sp, #220]
	ldr	r12, [sp, #220]
	ldr	r3, [sp, #192]
	str	r12, [r3]
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #224]
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #228]
@ --- binary here ---
	ldr	r12, [sp, #224]
	ldr	r3, [sp, #228]
	mul	r12, r12, r3
	str	r12, [sp, #232]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #236]
@ --- binary here ---
	ldr	r12, [sp, #232]
	ldr	r3, [sp, #236]
	add	r12, r12, r3
	str	r12, [sp, #240]
@ begin getelementptr
	ldr	r12, [sp, #44]
	ldr	r3, [sp, #240]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #244]
@ create getelementptr end
	ldr	r12, [sp, #64]
	ldr	r12, [r12]
	str	r12, [sp, #248]
	ldr	r12, [sp, #248]
	ldr	r3, [sp, #244]
	str	r12, [r3]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #252]
@ --- binary here ---
	ldr	r12, [sp, #252]
	add	r12, r12, #1
	str	r12, [sp, #256]
	ldr	r12, [sp, #256]
	ldr	r3, [sp, #60]
	str	r12, [r3]
	b	.while_cond1


.global main
	.type  main, %function
main:
	push	{ lr }
	sub	sp, sp, #224
	ldr	r12, =matrix
	str	r12, [sp, #20]
	ldr	r12, =a
	str	r12, [sp, #24]
	add	r12, sp, #0
	str	r12, [sp, #28]
	add	r12, sp, #4
	str	r12, [sp, #32]
	add	r12, sp, #8
	str	r12, [sp, #36]
@ begin getelementptr
	ldr	r12, [sp, #24]
	str	r12, [sp, #40]
@ create getelementptr end
	add	r12, sp, #12
	str	r12, [sp, #44]
@ begin getelementptr
	ldr	r12, [sp, #20]
	str	r12, [sp, #48]
@ create getelementptr end
	add	r12, sp, #16
	str	r12, [sp, #52]
	bl	getint
	mov	r12, r0
	str	r12, [sp, #56]
	ldr	r12, [sp, #56]
	ldr	r3, [sp, #32]
	str	r12, [r3]
	ldr	r0, [sp, #40]
	bl	getarray
	mov	r12, r0
	str	r12, [sp, #60]
	ldr	r12, [sp, #60]
	ldr	r3, [sp, #36]
	str	r12, [r3]
	bl	starttime
	mov	r12, #0
	str	r12, [sp, #64]
	ldr	r12, [sp, #64]
	ldr	r3, [sp, #44]
	str	r12, [r3]
	b	.while_cond2

.while_cond2:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #68]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #72]
	ldr	r12, [sp, #68]
	ldr	r3, [sp, #72]
	cmp	r12, r3
	blt	.loop_body2
	b	.while_end2

.loop_body2:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #76]
@ begin getelementptr
	ldr	r12, [sp, #48]
	ldr	r3, [sp, #76]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #80]
@ create getelementptr end
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #84]
	ldr	r12, [sp, #84]
	ldr	r3, [sp, #80]
	str	r12, [r3]
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #88]
@ --- binary here ---
	ldr	r12, [sp, #88]
	add	r12, r12, #1
	str	r12, [sp, #92]
	ldr	r12, [sp, #92]
	ldr	r3, [sp, #44]
	str	r12, [r3]
	b	.while_cond2

.while_end2:
	mov	r12, #0
	str	r12, [sp, #96]
	ldr	r12, [sp, #96]
	ldr	r3, [sp, #44]
	str	r12, [r3]
	b	.while_cond3

.while_cond3:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #100]
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #104]
	ldr	r12, [sp, #100]
	ldr	r3, [sp, #104]
	cmp	r12, r3
	blt	.loop_body3
	b	.while_end3

.loop_body3:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #108]
@ begin getelementptr
	ldr	r12, [sp, #40]
	ldr	r3, [sp, #108]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #112]
@ create getelementptr end
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #116]
	ldr	r12, [sp, #112]
	ldr	r12, [r12]
	str	r12, [sp, #120]
	ldr	r0, [sp, #116]
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #120]
	bl	transpose
	mov	r12, r0
	str	r12, [sp, #124]
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #128]
@ --- binary here ---
	ldr	r12, [sp, #128]
	add	r12, r12, #1
	str	r12, [sp, #132]
	ldr	r12, [sp, #132]
	ldr	r3, [sp, #44]
	str	r12, [r3]
	b	.while_cond3

.while_end3:
	mov	r12, #0
	str	r12, [sp, #136]
	ldr	r12, [sp, #136]
	ldr	r3, [sp, #52]
	str	r12, [r3]
	mov	r12, #0
	str	r12, [sp, #140]
	ldr	r12, [sp, #140]
	ldr	r3, [sp, #44]
	str	r12, [r3]
	b	.while_cond4

.while_cond4:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #144]
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #148]
	ldr	r12, [sp, #144]
	ldr	r3, [sp, #148]
	cmp	r12, r3
	blt	.loop_body4
	b	.while_end4

.loop_body4:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #152]
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #156]
@ --- binary here ---
	ldr	r12, [sp, #152]
	ldr	r3, [sp, #156]
	mul	r12, r12, r3
	str	r12, [sp, #160]
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #164]
@ begin getelementptr
	ldr	r12, [sp, #48]
	ldr	r3, [sp, #164]
	add	r12, r12, r3, lsl #2
	str	r12, [sp, #168]
@ create getelementptr end
	ldr	r12, [sp, #168]
	ldr	r12, [r12]
	str	r12, [sp, #172]
@ --- binary here ---
	ldr	r12, [sp, #160]
	ldr	r3, [sp, #172]
	mul	r12, r12, r3
	str	r12, [sp, #176]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #180]
@ --- binary here ---
	ldr	r12, [sp, #180]
	ldr	r3, [sp, #176]
	add	r12, r12, r3
	str	r12, [sp, #184]
	ldr	r12, [sp, #184]
	ldr	r3, [sp, #52]
	str	r12, [r3]
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #188]
@ --- binary here ---
	ldr	r12, [sp, #188]
	add	r12, r12, #1
	str	r12, [sp, #192]
	ldr	r12, [sp, #192]
	ldr	r3, [sp, #44]
	str	r12, [r3]
	b	.while_cond4

.while_end4:
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #196]
	ldr	r12, [sp, #196]
	cmp	r12, #0
	blt	.if_then1
	b	.if_end1

.if_then1:
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #200]
@ --- binary here ---
	mov	r12, #0
	str	r12, [sp, #204]
	ldr	r12, [sp, #204]
	ldr	r3, [sp, #200]
	sub	r12, r12, r3
	str	r12, [sp, #208]
	ldr	r12, [sp, #208]
	ldr	r3, [sp, #52]
	str	r12, [r3]
	b	.if_end1

.if_end1:
	bl	stoptime
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #212]
	ldr	r0, [sp, #212]
	bl	putint
	mov	r0, #10
	bl	putch
	mov	r12, #0
	str	r12, [sp, #216]
	ldr	r12, [sp, #216]
	ldr	r3, [sp, #28]
	str	r12, [r3]
	ldr	r12, [sp, #28]
	ldr	r12, [r12]
	str	r12, [sp, #220]
	ldr	r0, [sp, #220]
	add	sp, sp, #224
	pop	{ lr }
	bx	lr


.section .data
.align 4
.global matrix
	.type	matrix, %object
matrix:
	.zero	80000000

.global a
	.type	a, %object
a:
	.zero	400000

