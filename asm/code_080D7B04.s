.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_080D7B04
func_080D7B04: @ 0x080D7B04
	push {lr}
	adds r3, r0, #0
	ldr r0, .L080D7B24 @ =vtable_unk_080E5B54
	str r0, [r3, #4]
	ldr r2, .L080D7B28 @ =gUnk_03000410
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080D7B20
	adds r0, r3, #0
	bl __builtin_delete
.L080D7B20:
	pop {r0}
	bx r0
	.align 2, 0
.L080D7B24: .4byte vtable_unk_080E5B54
.L080D7B28: .4byte gUnk_03000410

	thumb_func_start func_080D7B2C
func_080D7B2C: @ 0x080D7B2C
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D7B38
func_080D7B38: @ 0x080D7B38
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D7B44
func_080D7B44: @ 0x080D7B44
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

