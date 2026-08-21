.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08050E68
func_08050E68: @ 0x08050E68
	push {lr}
	ldr r0, [r0]
	bl func_08050B50
	pop {r0}
	bx r0

