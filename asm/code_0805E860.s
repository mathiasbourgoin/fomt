	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0805E894
func_0805E894: @ 0x0805E894
	push {r4, r5, lr}
	movs r1, #0x10
	ldrsh r3, [r0, r1]
	ldrh r2, [r0, #0xe]
	cmp r3, #0
	beq .L0805E8E8
	cmp r2, #0
	beq .L0805E8E8
	adds r1, r3, #0
	cmp r3, #0
	bge .L0805E8AC
	rsbs r1, r3, #0
.L0805E8AC:
	subs r2, r2, r1
	cmp r2, #0
	bgt .L0805E8E8
	ldrh r1, [r0, #0xc]
	adds r4, r0, #4
	ldr r0, [r0, #4]
	movs r5, #0
	cmp r0, #0
	beq .L0805E8C0
	ldrh r5, [r4, #4]
.L0805E8C0:
	adds r4, r0, #0
.L0805E8C2:
	cmp r3, #0
	ble .L0805E8D0
	adds r1, #1
	cmp r1, r5
	blo .L0805E8D6
.L0805E8CC:
	movs r0, #1
	b .L0805E8EA
.L0805E8D0:
	cmp r1, #0
	beq .L0805E8CC
	subs r1, #1
.L0805E8D6:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq .L0805E8E8
	lsls r0, r0, #8
	adds r2, r2, r0
	cmp r2, #0
	ble .L0805E8C2
.L0805E8E8:
	movs r0, #0
.L0805E8EA:
	pop {r4, r5}
	pop {r1}
	bx r1
