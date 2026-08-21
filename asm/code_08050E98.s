.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08050E98
func_08050E98: @ 0x08050E98
	push {r4, lr}
	ldr r3, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1a
	adds r2, r0, #0
	bics r2, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_08050EBC
func_08050EBC: @ 0x08050EBC
	push {r4, lr}
	ldr r3, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1a
	orrs r1, r0
	movs r2, #0x3f
	ands r1, r2
	movs r2, #0x40
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r1
	strb r2, [r3]
	pop {r4}
	pop {r1}
	bx r1

	.align 2, 0
