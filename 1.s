.arch armv7ve
.section .text

.global func
	.type  func, %function
func:
	push	{ lr }
	sub	sp, sp, #60
	movw	r12, #:lower16:i
	movt	r12, #:upper16:i
	str	r12, [sp, #8]
	add	r12, sp, #0
	str	r12, [sp, #12]
	add	r12, sp, #4
	str	r12, [sp, #16]
	ldr	r12, [sp, #12]
	str	r0, [r12]
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #20]
	ldr	r12, [sp, #20]
	cmp	r12, #9
	ble	.if_then0
	b	.if_else0


.func_exit:
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #24]
	ldr	r0, [sp, #24]
	add	sp, sp, #60
	pop	{ lr }
	bx	lr

.if_then0:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #28]
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #32]
@ --- binary here ---
	ldr	r12, [sp, #28]
	ldr	r10, [sp, #32]
	add	r12, r12, r10
	str	r12, [sp, #36]
	ldr	r0, [sp, #36]
	bl	putint
	mov	r12, #20
	str	r12, [sp, #40]
	ldr	r12, [sp, #40]
	ldr	r10, [sp, #16]
	str	r12, [r10]
	b	.func_exit


.if_else0:
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #44]
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #48]
@ --- binary here ---
	ldr	r12, [sp, #44]
	ldr	r10, [sp, #48]
	add	r12, r12, r10
	str	r12, [sp, #52]
	ldr	r0, [sp, #52]
	bl	putint
	mov	r12, #0
	str	r12, [sp, #56]
	ldr	r12, [sp, #56]
	ldr	r10, [sp, #16]
	str	r12, [r10]
	b	.func_exit



.global main
	.type  main, %function
main:
	push	{ lr }
	sub	sp, sp, #72
	movw	r12, #:lower16:i
	movt	r12, #:upper16:i
	str	r12, [sp, #8]
	add	r12, sp, #0
	str	r12, [sp, #12]
	add	r12, sp, #4
	str	r12, [sp, #16]
	b	.while_cond0


.while_cond0:
	mov	r0, #6
	bl	func
	mov	r12, r0
	str	r12, [sp, #20]
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #24]
	ldr	r12, [sp, #20]
	ldr	r10, [sp, #24]
	cmp	r12, r10
	movgt	r12, #1
	str	r12, [sp, #32]
	movle	r12, #0
	str	r12, [sp, #32]
	mov	r12, #0
	str	r12, [sp, #36]
	ldr	r12, [sp, #36]
	ldr	r10, [sp, #32]
	cmp	r12, r10
	bne	.lhs_true0
	b	.lhs_false0


.loop_body0:
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #40]
@ --- binary here ---
	ldr	r12, [sp, #40]
	add	r12, r12, #1
	str	r12, [sp, #44]
	ldr	r12, [sp, #44]
	ldr	r10, [sp, #8]
	str	r12, [r10]
	b	.while_cond0


.while_end0:
	mov	r12, #0
	str	r12, [sp, #48]
	ldr	r12, [sp, #48]
	ldr	r10, [sp, #12]
	str	r12, [r10]
	ldr	r12, [sp, #12]
	ldr	r12, [r12]
	str	r12, [sp, #52]
	ldr	r0, [sp, #52]
	add	sp, sp, #72
	pop	{ lr }
	bx	lr

.lhs_true0:
	ldr	r12, [sp, #8]
	ldr	r12, [r12]
	str	r12, [sp, #56]
	ldr	r12, [sp, #56]
	and	r12, r12, #1
	str	r12, [sp, #60]
	ldr	r12, [sp, #60]
	ldr	r10, [sp, #16]
	str	r12, [r10]
	b	.land_end0


.lhs_false0:
	ldr	r12, [sp, #32]
	ldr	r10, [sp, #16]
	str	r12, [r10]
	b	.land_end0


.land_end0:
	ldr	r12, [sp, #16]
	ldr	r12, [r12]
	str	r12, [sp, #64]
	mov	r12, #0
	str	r12, [sp, #68]
	ldr	r12, [sp, #68]
	ldr	r10, [sp, #64]
	cmp	r12, r10
	bne	.loop_body0
	b	.while_end0



.section .data
.align 4
.global i
	.type	i, %object
i:
	.long	-20

