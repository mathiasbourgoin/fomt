.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08050E0C
func_08050E0C: @ 0x08050E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	ldr r7, [sp, #0x30]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	bl func_08050478
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

