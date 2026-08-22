    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_080507F8
func_080507F8: @ 0x080507F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r2, #0
	mov r8, r3
	ldrb r0, [r1]
	lsls r1, r0, #0x19
	lsrs r6, r1, #0x1b
	lsls r0, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0xd0
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bls .L0805081E
	movs r1, #3
	bl __umodsi3
.L0805081E:
	strh r0, [r5, #0x16]
	adds r0, r6, #0
	cmp r0, #0x1b
	bls .L0805082C
	movs r1, #0x1c
	bl __umodsi3
.L0805082C:
	strh r0, [r5, #0x14]
	movs r0, #0
	strb r0, [r5, #0x19]
	adds r4, #0xec
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl func_080ADD5C
	adds r6, r5, #0
	adds r5, r4, #0
	ldr r4, .L08050864 @ =vtable_unk_080E78F0
.L08050844:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	bl func_080ADD78
	str r4, [sp]
	cmp r0, #1
	beq .L08050844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08050864: .4byte vtable_unk_080E78F0

