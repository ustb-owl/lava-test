.arch armv7ve
.section .text

.global main
	.type  main, %function
main:
	sub	sp, sp, #0
	mov	r0, #3
	add	sp, sp, #0
	bx	lr


