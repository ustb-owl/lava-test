.arch armv7ve
.section .text

.global get_matrix
	.type  get_matrix, %function
get_matrix:
	push	{ lr }
	sub	sp, sp, #112
	add	r12, sp, #0
	str	r12, [sp, #20]
	ldr	r12, [sp, #20]
	str	r0, [r12]
	add	r12, sp, #4
	str	r12, [sp, #24]
	ldr	r12, [sp, #20]
	ldr	r12, [r12]
	str	r12, [sp, #28]
	add	r12, sp, #8
	str	r12, [sp, #32]
	ldr	r12, [sp, #24]
	str	r1, [r12]
	ldr	r12, [sp, #32]
	str	r2, [r12]
	add	r12, sp, #12
	str	r12, [sp, #36]
	add	r12, sp, #16
	str	r12, [sp, #40]
	mov	r12, #0
	str	r12, [sp, #44]
	ldr	r12, [sp, #44]
	ldr	r10, [sp, #36]
	str	r12, [r10]
	b	.while_cond0


.while_cond0:
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #48]
	ldr	r12, [sp, #24]
	ldr	r12, [r12]
	str	r12, [sp, #52]
	ldr	r12, [sp, #48]
	ldr	r10, [sp, #52]
	cmp	r12, r10
	blt	.loop_body0
	b	.while_end0


.loop_body0:
	mov	r12, #0
	str	r12, [sp, #56]
	ldr	r12, [sp, #56]
	ldr	r10, [sp, #40]
	str	r12, [r10]
	b	.while_cond1


.while_end0:
	add	sp, sp, #112
	pop	{ lr }
	bx	lr

.while_cond1:
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #60]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #64]
	ldr	r12, [sp, #60]
	ldr	r10, [sp, #64]
	cmp	r12, r10
	blt	.loop_body1
	b	.while_end1


.loop_body1:
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #68]
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #72]
	ldr	r12, [sp, #72]
	ldr	r10, [sp, #68]
	mul	r12, r12, r10
	str	r12, [sp, #76]
@ begin getelementptr
	ldr	r12, [sp, #28]
	ldr	r10, [sp, #76]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #80]
@ create getelementptr end
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #84]
@ begin getelementptr
	ldr	r12, [sp, #80]
	ldr	r10, [sp, #84]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #88]
@ create getelementptr end
	bl	getint
	mov	r12, r0
	str	r12, [sp, #92]
	ldr	r12, [sp, #92]
	ldr	r10, [sp, #88]
	str	r12, [r10]
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #96]
@ --- binary here ---
	ldr	r12, [sp, #96]
	add	r12, r12, #1
	str	r12, [sp, #100]
	ldr	r12, [sp, #100]
	ldr	r10, [sp, #40]
	str	r12, [r10]
	b	.while_cond1


.while_end1:
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #104]
@ --- binary here ---
	ldr	r12, [sp, #104]
	add	r12, r12, #1
	str	r12, [sp, #108]
	ldr	r12, [sp, #108]
	ldr	r10, [sp, #36]
	str	r12, [r10]
	b	.while_cond0



.global print_matrix
	.type  print_matrix, %function
print_matrix:
	push	{ lr }
	sub	sp, sp, #120
	add	r12, sp, #0
	str	r12, [sp, #24]
	ldr	r12, [sp, #24]
	str	r0, [r12]
	add	r12, sp, #4
	str	r12, [sp, #28]
	ldr	r12, [sp, #24]
	ldr	r12, [r12]
	str	r12, [sp, #32]
	add	r12, sp, #8
	str	r12, [sp, #36]
	ldr	r12, [sp, #28]
	str	r1, [r12]
	ldr	r12, [sp, #36]
	str	r2, [r12]
	add	r12, sp, #12
	str	r12, [sp, #40]
	add	r12, sp, #16
	str	r12, [sp, #44]
	add	r12, sp, #20
	str	r12, [sp, #48]
	mov	r12, #0
	str	r12, [sp, #52]
	ldr	r12, [sp, #52]
	ldr	r10, [sp, #40]
	str	r12, [r10]
	b	.while_cond2


.while_cond2:
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #56]
	ldr	r12, [sp, #28]
	ldr	r12, [r12]
	str	r12, [sp, #60]
	ldr	r12, [sp, #56]
	ldr	r10, [sp, #60]
	cmp	r12, r10
	blt	.loop_body2
	b	.while_end2


.loop_body2:
	mov	r12, #0
	str	r12, [sp, #64]
	ldr	r12, [sp, #64]
	ldr	r10, [sp, #44]
	str	r12, [r10]
	b	.while_cond3


.while_end2:
	add	sp, sp, #120
	pop	{ lr }
	bx	lr

.while_cond3:
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #68]
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #72]
	ldr	r12, [sp, #68]
	ldr	r10, [sp, #72]
	cmp	r12, r10
	blt	.loop_body3
	b	.while_end3


.loop_body3:
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #76]
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #80]
	ldr	r12, [sp, #80]
	ldr	r10, [sp, #76]
	mul	r12, r12, r10
	str	r12, [sp, #84]
@ begin getelementptr
	ldr	r12, [sp, #32]
	ldr	r10, [sp, #84]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #88]
@ create getelementptr end
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #92]
@ begin getelementptr
	ldr	r12, [sp, #88]
	ldr	r10, [sp, #92]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #96]
@ create getelementptr end
	ldr	r12, [sp, #96]
	ldr	r12, [r12]
	str	r12, [sp, #100]
	ldr	r0, [sp, #100]
	bl	putint
	mov	r0, #32
	bl	putch
	ldr	r12, [sp, #44]
	ldr	r12, [r12]
	str	r12, [sp, #104]
@ --- binary here ---
	ldr	r12, [sp, #104]
	add	r12, r12, #1
	str	r12, [sp, #108]
	ldr	r12, [sp, #108]
	ldr	r10, [sp, #44]
	str	r12, [r10]
	b	.while_cond3


.while_end3:
	mov	r0, #10
	bl	putch
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #112]
@ --- binary here ---
	ldr	r12, [sp, #112]
	add	r12, r12, #1
	str	r12, [sp, #116]
	ldr	r12, [sp, #116]
	ldr	r10, [sp, #40]
	str	r12, [r10]
	b	.while_cond2



.global powfff
	.type  powfff, %function
powfff:
	sub	sp, sp, #96
	add	r12, sp, #0
	str	r12, [sp, #20]
	add	r12, sp, #4
	str	r12, [sp, #24]
	ldr	r12, [sp, #20]
	str	r0, [r12]
	add	r12, sp, #8
	str	r12, [sp, #28]
	ldr	r12, [sp, #24]
	str	r1, [r12]
	add	r12, sp, #12
	str	r12, [sp, #32]
	add	r12, sp, #16
	str	r12, [sp, #36]
	ldr	r12, [sp, #24]
	ldr	r12, [r12]
	str	r12, [sp, #40]
	ldr	r12, [sp, #40]
	cmp	r12, #0
	beq	.if_then0
	b	.if_end0


.powfff_exit:
	ldr	r12, [sp, #28]
	ldr	r12, [r12]
	str	r12, [sp, #44]
	ldr	r0, [sp, #44]
	add	sp, sp, #96
	bx	lr

.if_then0:
	mov	r12, #1
	str	r12, [sp, #48]
	ldr	r12, [sp, #48]
	ldr	r10, [sp, #28]
	str	r12, [r10]
	b	.powfff_exit


.if_end0:
	mov	r12, #0
	str	r12, [sp, #52]
	ldr	r12, [sp, #52]
	ldr	r10, [sp, #32]
	str	r12, [r10]
	ldr	r12, [sp, #20]
	ldr	r12, [r12]
	str	r12, [sp, #56]
	ldr	r12, [sp, #56]
	ldr	r10, [sp, #36]
	str	r12, [r10]
	b	.while_cond4


.while_cond4:
	ldr	r12, [sp, #24]
	ldr	r12, [r12]
	str	r12, [sp, #60]
@ --- binary here ---
	ldr	r12, [sp, #60]
	sub	r12, r12, #1
	str	r12, [sp, #64]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #68]
	ldr	r12, [sp, #68]
	ldr	r10, [sp, #64]
	cmp	r12, r10
	blt	.loop_body4
	b	.while_end4


.loop_body4:
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #72]
	ldr	r12, [sp, #20]
	ldr	r12, [r12]
	str	r12, [sp, #76]
@ --- binary here ---
	ldr	r12, [sp, #72]
	ldr	r10, [sp, #76]
	mul	r12, r12, r10
	str	r12, [sp, #80]
	ldr	r12, [sp, #80]
	ldr	r10, [sp, #36]
	str	r12, [r10]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #84]
@ --- binary here ---
	ldr	r12, [sp, #84]
	add	r12, r12, #1
	str	r12, [sp, #88]
	ldr	r12, [sp, #88]
	ldr	r10, [sp, #32]
	str	r12, [r10]
	b	.while_cond4


.while_end4:
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #92]
	ldr	r12, [sp, #92]
	ldr	r10, [sp, #28]
	str	r12, [r10]
	b	.powfff_exit



.global GetSubmatrix
	.type  GetSubmatrix, %function
GetSubmatrix:
	sub	sp, sp, #188
	add	r12, sp, #0
	str	r12, [sp, #28]
	ldr	r12, [sp, #28]
	str	r0, [r12]
	add	r12, sp, #4
	str	r12, [sp, #32]
	ldr	r12, [sp, #28]
	ldr	r12, [r12]
	str	r12, [sp, #36]
	ldr	r12, [sp, #32]
	str	r1, [r12]
	add	r12, sp, #8
	str	r12, [sp, #40]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #44]
	add	r12, sp, #12
	str	r12, [sp, #48]
	ldr	r12, [sp, #40]
	str	r2, [r12]
	ldr	r12, [sp, #48]
	str	r3, [r12]
	add	r12, sp, #16
	str	r12, [sp, #52]
	add	r12, sp, #20
	str	r12, [sp, #56]
	add	r12, sp, #24
	str	r12, [sp, #60]
	mov	r12, #0
	str	r12, [sp, #64]
	ldr	r12, [sp, #64]
	ldr	r10, [sp, #52]
	str	r12, [r10]
	b	.while_cond5


.while_cond5:
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #68]
@ --- binary here ---
	ldr	r12, [sp, #68]
	sub	r12, r12, #1
	str	r12, [sp, #72]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #76]
	ldr	r12, [sp, #76]
	ldr	r10, [sp, #72]
	cmp	r12, r10
	blt	.loop_body5
	b	.while_end5


.loop_body5:
	mov	r12, #0
	str	r12, [sp, #80]
	ldr	r12, [sp, #80]
	ldr	r10, [sp, #56]
	str	r12, [r10]
	mov	r12, #0
	str	r12, [sp, #84]
	ldr	r12, [sp, #84]
	ldr	r10, [sp, #60]
	str	r12, [r10]
	b	.while_cond6


.while_end5:
	add	sp, sp, #188
	bx	lr

.while_cond6:
	ldr	r12, [sp, #40]
	ldr	r12, [r12]
	str	r12, [sp, #88]
@ --- binary here ---
	ldr	r12, [sp, #88]
	sub	r12, r12, #1
	str	r12, [sp, #92]
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #96]
	ldr	r12, [sp, #96]
	ldr	r10, [sp, #92]
	cmp	r12, r10
	blt	.loop_body6
	b	.while_end6


.loop_body6:
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #100]
	ldr	r12, [sp, #48]
	ldr	r12, [r12]
	str	r12, [sp, #104]
	ldr	r12, [sp, #100]
	ldr	r10, [sp, #104]
	cmp	r12, r10
	bne	.if_then1
	b	.if_end1


.while_end6:
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #108]
@ --- binary here ---
	ldr	r12, [sp, #108]
	add	r12, r12, #1
	str	r12, [sp, #112]
	ldr	r12, [sp, #112]
	ldr	r10, [sp, #52]
	str	r12, [r10]
	b	.while_cond5


.if_then1:
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #116]
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #120]
	ldr	r12, [sp, #120]
	ldr	r10, [sp, #116]
	mul	r12, r12, r10
	str	r12, [sp, #124]
@ begin getelementptr
	ldr	r12, [sp, #44]
	ldr	r10, [sp, #124]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #128]
@ create getelementptr end
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #132]
@ begin getelementptr
	ldr	r12, [sp, #128]
	ldr	r10, [sp, #132]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #136]
@ create getelementptr end
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #140]
@ --- binary here ---
	ldr	r12, [sp, #140]
	add	r12, r12, #1
	str	r12, [sp, #144]
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #148]
	ldr	r12, [sp, #148]
	ldr	r10, [sp, #144]
	mul	r12, r12, r10
	str	r12, [sp, #152]
@ begin getelementptr
	ldr	r12, [sp, #36]
	ldr	r10, [sp, #152]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #156]
@ create getelementptr end
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #160]
@ begin getelementptr
	ldr	r12, [sp, #156]
	ldr	r10, [sp, #160]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #164]
@ create getelementptr end
	ldr	r12, [sp, #164]
	ldr	r12, [r12]
	str	r12, [sp, #168]
	ldr	r12, [sp, #168]
	ldr	r10, [sp, #136]
	str	r12, [r10]
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #172]
@ --- binary here ---
	ldr	r12, [sp, #172]
	add	r12, r12, #1
	str	r12, [sp, #176]
	ldr	r12, [sp, #176]
	ldr	r10, [sp, #56]
	str	r12, [r10]
	b	.if_end1


.if_end1:
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #180]
@ --- binary here ---
	ldr	r12, [sp, #180]
	add	r12, r12, #1
	str	r12, [sp, #184]
	ldr	r12, [sp, #184]
	ldr	r10, [sp, #60]
	str	r12, [r10]
	b	.while_cond6



.global CalculateMatrix
	.type  CalculateMatrix, %function
CalculateMatrix:
	push	{ lr }
	sub	sp, sp, #308
	add	r12, sp, #0
	str	r12, [sp, #32]
	ldr	r12, [sp, #32]
	str	r0, [r12]
	add	r12, sp, #4
	str	r12, [sp, #36]
	ldr	r12, [sp, #32]
	ldr	r12, [r12]
	str	r12, [sp, #40]
	ldr	r12, [sp, #36]
	str	r1, [r12]
	add	r12, sp, #8
	str	r12, [sp, #44]
	ldr	r12, [sp, #36]
	ldr	r12, [r12]
	str	r12, [sp, #48]
	add	r12, sp, #12
	str	r12, [sp, #52]
	ldr	r12, [sp, #44]
	str	r2, [r12]
	add	r12, sp, #16
	str	r12, [sp, #56]
	ldr	r12, [sp, #52]
	str	r3, [r12]
	add	r12, sp, #20
	str	r12, [sp, #60]
	add	r12, sp, #24
	str	r12, [sp, #64]
	add	r12, sp, #28
	str	r12, [sp, #68]
	mov	r12, #0
	str	r12, [sp, #72]
	ldr	r12, [sp, #72]
	ldr	r10, [sp, #64]
	str	r12, [r10]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #76]
	ldr	r12, [sp, #76]
	cmp	r12, #2
	beq	.if_then2
	b	.if_else0


.CalculateMatrix_exit:
	ldr	r12, [sp, #56]
	ldr	r12, [r12]
	str	r12, [sp, #80]
	ldr	r0, [sp, #80]
	add	sp, sp, #308
	pop	{ lr }
	bx	lr

.if_then2:
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #84]
	mov	r12, #0
	str	r12, [sp, #88]
	ldr	r12, [sp, #84]
	ldr	r10, [sp, #88]
	mul	r12, r12, r10
	str	r12, [sp, #92]
@ begin getelementptr
	ldr	r12, [sp, #40]
	ldr	r10, [sp, #92]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #96]
@ create getelementptr end
@ begin getelementptr
	ldr	r12, [sp, #96]
	str	r12, [sp, #100]
@ create getelementptr end
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #104]
	mov	r12, #1
	str	r12, [sp, #108]
	ldr	r12, [sp, #104]
	ldr	r10, [sp, #108]
	mul	r12, r12, r10
	str	r12, [sp, #112]
@ begin getelementptr
	ldr	r12, [sp, #40]
	ldr	r10, [sp, #112]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #116]
@ create getelementptr end
@ begin getelementptr
	ldr	r12, [sp, #116]
	add	r12, r12, #4
	str	r12, [sp, #120]
@ create getelementptr end
	ldr	r12, [sp, #100]
	ldr	r12, [r12]
	str	r12, [sp, #124]
	ldr	r12, [sp, #120]
	ldr	r12, [r12]
	str	r12, [sp, #128]
@ --- binary here ---
	ldr	r12, [sp, #124]
	ldr	r10, [sp, #128]
	mul	r12, r12, r10
	str	r12, [sp, #132]
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #136]
	mov	r12, #1
	str	r12, [sp, #140]
	ldr	r12, [sp, #136]
	ldr	r10, [sp, #140]
	mul	r12, r12, r10
	str	r12, [sp, #144]
@ begin getelementptr
	ldr	r12, [sp, #40]
	ldr	r10, [sp, #144]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #148]
@ create getelementptr end
@ begin getelementptr
	ldr	r12, [sp, #148]
	str	r12, [sp, #152]
@ create getelementptr end
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #156]
	mov	r12, #0
	str	r12, [sp, #160]
	ldr	r12, [sp, #156]
	ldr	r10, [sp, #160]
	mul	r12, r12, r10
	str	r12, [sp, #164]
@ begin getelementptr
	ldr	r12, [sp, #40]
	ldr	r10, [sp, #164]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #168]
@ create getelementptr end
@ begin getelementptr
	ldr	r12, [sp, #168]
	add	r12, r12, #4
	str	r12, [sp, #172]
@ create getelementptr end
	ldr	r12, [sp, #152]
	ldr	r12, [r12]
	str	r12, [sp, #176]
	ldr	r12, [sp, #172]
	ldr	r12, [r12]
	str	r12, [sp, #180]
@ --- binary here ---
	ldr	r12, [sp, #176]
	ldr	r10, [sp, #180]
	mul	r12, r12, r10
	str	r12, [sp, #184]
@ --- binary here ---
	ldr	r12, [sp, #132]
	ldr	r10, [sp, #184]
	sub	r12, r12, r10
	str	r12, [sp, #188]
	ldr	r12, [sp, #188]
	ldr	r10, [sp, #56]
	str	r12, [r10]
	b	.CalculateMatrix_exit


.if_else0:
	mov	r12, #0
	str	r12, [sp, #192]
	ldr	r12, [sp, #192]
	ldr	r10, [sp, #60]
	str	r12, [r10]
	b	.while_cond7


.while_cond7:
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #196]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #200]
	ldr	r12, [sp, #196]
	ldr	r10, [sp, #200]
	cmp	r12, r10
	blt	.loop_body7
	b	.while_end7


.loop_body7:
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #204]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #208]
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #204]
	ldr	r3, [sp, #208]
	bl	GetSubmatrix
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #212]
@ --- binary here ---
	ldr	r12, [sp, #212]
	sub	r12, r12, #1
	str	r12, [sp, #216]
	ldr	r12, [sp, #52]
	ldr	r12, [r12]
	str	r12, [sp, #220]
@ --- binary here ---
	ldr	r12, [sp, #220]
	sub	r12, r12, #1
	str	r12, [sp, #224]
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #216]
	ldr	r3, [sp, #224]
	bl	CalculateMatrix
	mov	r12, r0
	str	r12, [sp, #228]
	ldr	r12, [sp, #228]
	ldr	r10, [sp, #68]
	str	r12, [r10]
@ --- binary here ---
	mov	r12, #0
	str	r12, [sp, #232]
	ldr	r12, [sp, #232]
	sub	r12, r12, #1
	str	r12, [sp, #236]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #240]
	ldr	r0, [sp, #236]
	ldr	r1, [sp, #240]
	bl	powfff
	mov	r12, r0
	str	r12, [sp, #244]
@ --- binary here ---
	mov	r12, #205
	str	r12, [sp, #248]
	mov	r12, #0
	str	r12, [sp, #252]
	ldr	r12, [sp, #248]
	ldr	r10, [sp, #252]
	mul	r12, r12, r10
	str	r12, [sp, #256]
@ begin getelementptr
	ldr	r12, [sp, #40]
	ldr	r10, [sp, #256]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #260]
@ create getelementptr end
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #264]
@ begin getelementptr
	ldr	r12, [sp, #260]
	ldr	r10, [sp, #264]
	add	r12, r12, r10, lsl #2
	str	r12, [sp, #268]
@ create getelementptr end
	ldr	r12, [sp, #268]
	ldr	r12, [r12]
	str	r12, [sp, #272]
@ --- binary here ---
	ldr	r12, [sp, #244]
	ldr	r10, [sp, #272]
	mul	r12, r12, r10
	str	r12, [sp, #276]
	ldr	r12, [sp, #68]
	ldr	r12, [r12]
	str	r12, [sp, #280]
@ --- binary here ---
	ldr	r12, [sp, #276]
	ldr	r10, [sp, #280]
	mul	r12, r12, r10
	str	r12, [sp, #284]
	ldr	r12, [sp, #64]
	ldr	r12, [r12]
	str	r12, [sp, #288]
@ --- binary here ---
	ldr	r12, [sp, #288]
	ldr	r10, [sp, #284]
	add	r12, r12, r10
	str	r12, [sp, #292]
	ldr	r12, [sp, #292]
	ldr	r10, [sp, #64]
	str	r12, [r10]
	ldr	r12, [sp, #60]
	ldr	r12, [r12]
	str	r12, [sp, #296]
@ --- binary here ---
	ldr	r12, [sp, #296]
	add	r12, r12, #1
	str	r12, [sp, #300]
	ldr	r12, [sp, #300]
	ldr	r10, [sp, #60]
	str	r12, [r10]
	b	.while_cond7


.while_end7:
	ldr	r12, [sp, #64]
	ldr	r12, [r12]
	str	r12, [sp, #304]
	ldr	r12, [sp, #304]
	ldr	r10, [sp, #56]
	str	r12, [r10]
	b	.CalculateMatrix_exit



.global main
	.type  main, %function
main:
	push	{ fp ,lr }
	mov	r12, #8620
	movt	r12, #5
	sub	sp, sp, r12
	add	r12, sp, #0
	mov	fp, #8536
	movt	fp, #5
	str	r12, [sp, fp]
	add	r12, sp, #4
	mov	fp, #8540
	movt	fp, #5
	str	r12, [sp, fp]
	add	r12, sp, #8
	mov	fp, #8544
	movt	fp, #5
	str	r12, [sp, fp]
	add	r12, sp, #12
	mov	fp, #8548
	movt	fp, #5
	str	r12, [sp, fp]
	add	r12, sp, #16
	mov	fp, #8552
	movt	fp, #5
	str	r12, [sp, fp]
@ split immediate number + 168116
	mov	r12, #37044
	movt	r12, #2
	mov	fp, #8556
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8556
	movt	fp, #5
	ldr	r12, [sp, fp]
	add	r12, sp, r12
	mov	fp, #8560
	movt	fp, #5
	str	r12, [sp, fp]
@ begin getelementptr
	mov	fp, #8552
	movt	fp, #5
	ldr	r12, [sp, fp]
	mov	fp, #8564
	movt	fp, #5
	str	r12, [sp, fp]
@ create getelementptr end
@ begin getelementptr
	mov	fp, #8560
	movt	fp, #5
	ldr	r12, [sp, fp]
	mov	fp, #8568
	movt	fp, #5
	str	r12, [sp, fp]
@ create getelementptr end
	bl	getint
	mov	r12, r0
	mov	fp, #8572
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8572
	movt	fp, #5
	ldr	r12, [sp, fp]
	mov	fp, #8544
	movt	fp, #5
	ldr	r10, [sp, fp]
	str	r12, [r10]
	bl	getint
	mov	r12, r0
	mov	fp, #8576
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8576
	movt	fp, #5
	ldr	r12, [sp, fp]
	mov	fp, #8540
	movt	fp, #5
	ldr	r10, [sp, fp]
	str	r12, [r10]
	mov	fp, #8544
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8580
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8540
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8584
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8564
	movt	fp, #5
	ldr	r0, [sp, fp]
	mov	fp, #8580
	movt	fp, #5
	ldr	r1, [sp, fp]
	mov	fp, #8584
	movt	fp, #5
	ldr	r2, [sp, fp]
	bl	get_matrix
	mov	fp, #8544
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8588
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8540
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8592
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8564
	movt	fp, #5
	ldr	r0, [sp, fp]
	mov	fp, #8588
	movt	fp, #5
	ldr	r1, [sp, fp]
	mov	fp, #8592
	movt	fp, #5
	ldr	r2, [sp, fp]
	bl	print_matrix
	mov	fp, #8544
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8596
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8540
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8600
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8564
	movt	fp, #5
	ldr	r0, [sp, fp]
	mov	fp, #8568
	movt	fp, #5
	ldr	r1, [sp, fp]
	mov	fp, #8596
	movt	fp, #5
	ldr	r2, [sp, fp]
	mov	fp, #8600
	movt	fp, #5
	ldr	r3, [sp, fp]
	bl	CalculateMatrix
	mov	r12, r0
	mov	fp, #8604
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8604
	movt	fp, #5
	ldr	r12, [sp, fp]
	mov	fp, #8548
	movt	fp, #5
	ldr	r10, [sp, fp]
	str	r12, [r10]
	mov	fp, #8548
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8608
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8608
	movt	fp, #5
	ldr	r0, [sp, fp]
	bl	putint
	mov	r12, #0
	mov	fp, #8612
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8612
	movt	fp, #5
	ldr	r12, [sp, fp]
	mov	fp, #8536
	movt	fp, #5
	ldr	r10, [sp, fp]
	str	r12, [r10]
	mov	fp, #8536
	movt	fp, #5
	ldr	r12, [sp, fp]
	ldr	r12, [r12]
	mov	fp, #8616
	movt	fp, #5
	str	r12, [sp, fp]
	mov	fp, #8616
	movt	fp, #5
	ldr	r0, [sp, fp]
	mov	r12, #8620
	movt	r12, #5
	add	sp, sp, r12
	pop	{ fp ,lr }
	bx	lr


