	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080ADD5C
func_080ADD5C: @ 0x080ADD5C
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	movs r3, #0
	str r3, [r0, #0x10]
	strb r3, [r0, #0x14]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	str r2, [r0]
	strh r3, [r0, #6]
	bx lr
	.align 2, 0
