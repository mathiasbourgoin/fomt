	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_08070A08
func_08070A08: @ 0x08070A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	str r0, [sp, #0x14]
	ldr r6, [r1, #4]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #4
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r3, .L08070A58 @ =0x0000DC40
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	ldr r3, .L08070A5C @ =0x0000D840
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r3, .L08070A60 @ =0x0000D440
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r6, #0
	bl func_0806EC94
	adds r0, r6, #0
	bl func_0806EA78
	add r0, sp, #0xc
	mov sb, r0
	b .L08070B1A
	.align 2, 0
.L08070A58: .4byte 0x0000DC40
.L08070A5C: .4byte 0x0000D840
.L08070A60: .4byte 0x0000D440
.L08070A64:
	adds r0, r6, #0
	bl func_080088C4
	adds r3, r0, #0
	str r3, [sp, #8]
	movs r2, #0
	movs r7, #0
	movs r4, #0
	lsls r1, r3, #0x18
	lsls r0, r3, #0x19
	lsrs r1, r1, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq .L08070A8A
	lsls r1, r3, #0x1a
	lsls r0, r3, #0x1b
	lsrs r4, r1, #0x1f
	lsrs r0, r0, #0x1f
	eors r4, r0
.L08070A8A:
	movs r5, #0x80
	lsls r5, r5, #3
	cmp r4, #0
	beq .L08070A96
	movs r5, #0xb5
	lsls r5, r5, #2
.L08070A96:
	add r1, sp, #8
	ldrb r3, [r1, #1]
	movs r0, #1
	ands r0, r3
	mov r8, r1
	cmp r0, #0
	beq .L08070AA6
	lsls r5, r5, #1
.L08070AA6:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L08070AB4
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r5, r0, #1
.L08070AB4:
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08070AC0
	adds r7, r5, #0
.L08070AC0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08070ACA
	subs r7, r7, r5
.L08070ACA:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08070AD4
	rsbs r2, r5, #0
.L08070AD4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08070ADE
	adds r2, r2, r5
.L08070ADE:
	adds r0, r6, #0
	adds r1, r2, #0
	adds r2, r7, #0
	bl func_0806EFC0
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	cmp r4, r5
	beq .L08070B02
.L08070AF4:
	adds r0, r4, #0
	adds r0, #8
	bl func_0805E8F0
	adds r4, #0x1c
	cmp r4, r5
	bne .L08070AF4
.L08070B02:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne .L08070B14
	adds r0, r6, #0
	bl func_08070140
.L08070B14:
	adds r0, r6, #0
	bl func_080087C8
.L08070B1A:
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08070A64
	adds r0, r6, #0
	bl func_0806EAF4
	ldr r0, [r6, #0xc]
	movs r2, #0
	str r2, [r6, #0xc]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #0xc]
	mov r3, sb
	str r0, [r3, #4]
	ldr r1, [sp, #0xc]
	str r2, [r1]
	ldr r1, [sp, #0x14]
	str r0, [r1]
	ldr r1, [sp]
	cmp r1, #0
	beq .L08070B5E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08070B5E:
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08070B70
func_08070B70: @ 0x08070B70
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	bl func_08075E7C
	ldr r0, .L08070C20 @ =vtable_unk_080E7B3C
	str r0, [r5, #4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r3, r5, r0
	movs r0, #0
	str r0, [r3]
	mov r1, sp
	str r0, [sp]
	strh r0, [r1, #4]
	str r0, [sp]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r2, r5, r1
	cmp r2, #0
	beq .L08070BAE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L08070BAE:
	ldr r0, [r3]
	adds r1, r0, #1
	str r1, [r3]
	movs r0, #1
	str r0, [sp]
	adds r2, r3, #0
	cmp r1, #9
	bhi .L08070BD6
	lsls r0, r1, #3
	adds r0, #4
	adds r2, r2, r0
	cmp r2, #0
	beq .L08070BD0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L08070BD0:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
.L08070BD6:
	movs r0, #2
	str r0, [sp]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #9
	bhi .L08070BFE
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r2, r0
	cmp r3, #0
	beq .L08070BF8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r3]
	str r1, [r3, #4]
.L08070BF8:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08070BFE:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl func_0807549C
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L08070C20: .4byte vtable_unk_080E7B3C

	thumb_func_start func_08070C24
func_08070C24: @ 0x08070C24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	str r0, [sp]
	adds r0, r4, #0
	bl func_08076BFC
	ldr r0, .L08070C7C @ =0x000005B4
	adds r1, r4, r0
	ldr r0, .L08070C80 @ =vtable_unk_080E7B2C
	str r0, [r1]
	movs r0, #0xb7
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r3, #0x77
	ldr r0, .L08070C84 @ =0x0000FFFF
	adds r6, r0, #0
	movs r2, #0
	movs r5, #1
	rsbs r5, r5, #0
.L08070C4E:
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
	strb r2, [r1, #4]
	str r2, [r1, #0x24]
	adds r0, r1, #0
	adds r0, #0x28
	strb r2, [r0]
	adds r1, #0x2c
	subs r3, #1
	cmp r3, r5
	bne .L08070C4E
	movs r0, #7
	movs r1, #1
	rsbs r1, r1, #0
.L08070C6C:
	subs r0, #1
	cmp r0, r1
	bne .L08070C6C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L08070C7C: .4byte 0x000005B4
.L08070C80: .4byte vtable_unk_080E7B2C
.L08070C84: .4byte 0x0000FFFF

	thumb_func_start func_08070C88
func_08070C88: @ 0x08070C88
	push {lr}
	ldr r2, .L08070C9C @ =0x000005B4
	adds r3, r0, r2
	ldr r2, .L08070CA0 @ =vtable_unk_080E7B2C
	str r2, [r3]
	bl func_08076E0C
	pop {r0}
	bx r0
	.align 2, 0
.L08070C9C: .4byte 0x000005B4
.L08070CA0: .4byte vtable_unk_080E7B2C

	thumb_func_start func_08070CA4
func_08070CA4: @ 0x08070CA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r2, r6, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge .L08070CC6
	b .L08070DCA
.L08070CC6:
	adds r0, #0x30
	subs r1, #0x28
	adds r4, r6, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge .L08070CF8
	movs r7, #0xbc
	lsls r7, r7, #3
	adds r3, r6, r7
	movs r5, #0
.L08070CDC:
	strb r5, [r3]
	adds r2, #0x2c
	adds r3, #0x2c
	movs r0, #1
	add r8, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt .L08070DCA
	adds r0, #0x30
	movs r7, #0
	ldrsh r1, [r4, r7]
	cmp r0, r1
	blt .L08070CDC
.L08070CF8:
	movs r0, #0x2c
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r6, r0
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	blt .L08070DCA
	add r3, sp, #4
	mov sl, r3
	add r7, sp, #8
	mov sb, r7
.L08070D18:
	movs r0, #0x2c
	mov r2, r8
	muls r2, r0, r2
	adds r5, r6, r2
	adds r0, r5, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r7, #0xb2
	lsls r7, r7, #3
	adds r0, r6, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xa0
	cmp r1, r0
	bgt .L08070DA4
	movs r0, #0xbc
	lsls r0, r0, #3
	adds r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne .L08070DAE
	ldr r1, .L08070D98 @ =0x000005DC
	adds r0, r6, r1
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #6
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r1, r4, r6
	ldr r2, .L08070D9C @ =0x00001A58
	adds r1, r1, r2
	movs r0, #0x14
	mov r3, sl
	strh r0, [r3]
	movs r2, #2
	strh r2, [r3, #2]
	ldr r0, [sp, #4]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r3, .L08070DA0 @ =0x000005BC
	adds r1, r5, r3
	adds r4, r4, r6
	ldr r0, .L08070D9C @ =0x00001A58
	adds r4, r4, r0
	movs r3, #0x14
	mov r2, sb
	strh r3, [r2]
	movs r0, #2
	strh r0, [r2, #2]
	ldr r0, [sp, #8]
	adds r4, #4
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r0, #1
	strb r0, [r7]
	b .L08070DAE
	.align 2, 0
.L08070D98: .4byte 0x000005DC
.L08070D9C: .4byte 0x00001A58
.L08070DA0: .4byte 0x000005BC
.L08070DA4:
	movs r2, #0xbc
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
.L08070DAE:
	movs r3, #1
	add r8, r3
	movs r0, #0x2c
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r6, r0
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge .L08070D18
.L08070DCA:
	adds r0, r6, #0
	bl func_08076EA8
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08070DE4
func_08070DE4: @ 0x08070DE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x11c
	str r0, [sp, #0xd0]
	movs r3, #0xd0
	lsls r3, r3, #1
	ldr r0, .L08070E68 @ =gUnk_080FBE7C
	str r0, [sp]
	ldr r0, [sp, #0xd0]
	bl func_08070C24
	ldr r0, [sp, #0xd0]
	ldr r2, .L08070E6C @ =0x000005B4
	adds r1, r0, r2
	ldr r0, .L08070E70 @ =vtable_unk_080E7B1C
	str r0, [r1]
	ldr r2, .L08070E74 @ =gUnk_080FBE8C
	add r0, sp, #0xa4
	movs r1, #2
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r0]
	ldr r3, [sp, #0xd0]
	ldr r5, .L08070E78 @ =0x0000427C
	adds r4, r3, r5
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r6, [sp, #0xd0]
	ldr r0, [r6]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	adds r1, r4, #0
	ldr r2, .L08070E7C @ =0x06000700
	movs r3, #0x80
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08070E80
	cmp r1, #0
	beq .L08070E5A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08070E5A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	add r5, sp, #0x18
	mov sl, r5
	b .L08070F4C
	.align 2, 0
.L08070E68: .4byte gUnk_080FBE7C
.L08070E6C: .4byte 0x000005B4
.L08070E70: .4byte vtable_unk_080E7B1C
.L08070E74: .4byte gUnk_080FBE8C
.L08070E78: .4byte 0x0000427C
.L08070E7C: .4byte 0x06000700
.L08070E80:
	str r1, [sp, #0x110]
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x110]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08070E9C
	adds r0, r1, #0
.L08070E9C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08070EBA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08070EBE
	mov r0, r8
	bl func_080D3BC0
	b .L08070EBE
.L08070EBA:
	movs r0, #0
	mov r8, r0
.L08070EBE:
	adds r5, r0, #0
	str r5, [sp, #0x114]
	ldr r2, [r6]
	adds r3, r5, #0
	add r0, sp, #0x18
	mov sl, r0
	ldr r1, [sp, #0x110]
	cmp r2, r1
	beq .L08070EEA
.L08070ED0:
	cmp r3, #0
	beq .L08070EE0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08070EE0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x110]
	cmp r2, r0
	bne .L08070ED0
.L08070EEA:
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L08070F06
	cmp r5, #0
	beq .L08070F02
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08070F02:
	adds r5, #0x10
	b .L08070F28
.L08070F06:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08070F26
.L08070F0E:
	cmp r2, #0
	beq .L08070F1E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08070F1E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08070F0E
.L08070F26:
	adds r5, r2, #0
.L08070F28:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08070F38
.L08070F32:
	adds r1, #0x10
	cmp r1, r2
	bne .L08070F32
.L08070F38:
	cmp r0, #0
	beq .L08070F40
	bl free
.L08070F40:
	ldr r0, [sp, #0x114]
	add r0, r8
	ldr r7, [sp, #0x114]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08070F4C:
	ldr r1, .L08071030 @ =gUnk_086678A0
	mov r0, sl
	bl func_0805E6CC
	ldr r0, [sp, #0xd0]
	ldr r0, [r0, #4]
	str r0, [sp, #0xd4]
	movs r1, #4
	str r1, [sp, #0xd8]
	movs r2, #0
	str r2, [sp, #0xdc]
	movs r3, #0
	str r3, [sp, #0xe0]
.L08070F66:
	ldr r4, [sp, #0xe0]
	str r4, [sp, #0xe4]
	ldr r5, [sp, #0xd0]
	ldr r6, .L08071034 @ =0x0000058C
	adds r0, r5, r6
	ldr r0, [r0]
	adds r0, #0x54
	adds r1, r4, #0
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	ldr r7, [sp, #0xe0]
	adds r7, #1
	str r7, [sp, #0x100]
	cmp r0, #0
	bne .L08070F88
	b .L08071376
.L08070F88:
	add r0, sp, #8
	ldr r1, [sp, #0xd8]
	lsls r6, r1, #3
	strh r6, [r0]
	movs r0, #8
	str r0, [sp, #0xc]
	add r4, sp, #0xb0
	adds r0, r4, #0
	ldr r1, [sp, #0xe0]
	bl __7ProductUi
	adds r0, r4, #0
	bl GetIconId__C7Product
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r5, sp, #0x48
	ldr r4, [sp, #0x18]
	add r0, sp, #0xb4
	ldr r3, [r4, #0xc]
	add r1, sp, #0x18
	bl _call_via_r3
	add r0, sp, #0xb4
	ldr r0, [r0]
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r4, #0x10]
	add r1, sp, #0x18
	bl _call_via_r3
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x14]
	ldr r2, [sp, #0xd0]
	ldr r3, .L08071038 @ =0x00000594
	adds r7, r2, r3
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0xe8]
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	str r6, [sp, #0x108]
	cmp r1, r0
	beq .L0807103C
	cmp r1, #0
	beq .L08070FF6
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08070FF6:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	mov r3, sp
	adds r3, #0x68
	str r3, [sp, #0xec]
	add r4, sp, #0x6c
	mov sl, r4
	mov r5, sp
	adds r5, #0x90
	str r5, [sp, #0xf0]
	mov r6, sp
	adds r6, #0xc4
	str r6, [sp, #0xf4]
	add r7, sp, #0x94
	mov sb, r7
	ldr r0, [sp, #0xd8]
	lsls r0, r0, #6
	str r0, [sp, #0x10c]
	ldr r1, [sp, #0xd8]
	adds r1, #2
	str r1, [sp, #0xf8]
	ldr r2, [sp, #0xd8]
	adds r2, #4
	str r2, [sp, #0x104]
	ldr r3, [sp, #0xdc]
	adds r3, #1
	str r3, [sp, #0xfc]
	b .L08071142
	.align 2, 0
.L08071030: .4byte gUnk_086678A0
.L08071034: .4byte 0x0000058C
.L08071038: .4byte 0x00000594
.L0807103C:
	str r1, [sp, #0x118]
	movs r0, #1
	add r1, sp, #0xc0
	str r0, [r1]
	ldr r3, [r7]
	ldr r4, [sp, #0x118]
	subs r0, r4, r3
	asrs r4, r0, #4
	add r0, sp, #0xbc
	str r4, [r0]
	ldr r2, [r1]
	adds r1, r3, #0
	cmp r4, r2
	bhs .L0807105A
	add r0, sp, #0xc0
.L0807105A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807107A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08071076
	mov r0, r8
	bl func_080D3BC0
.L08071076:
	ldr r1, [r7]
	b .L0807107E
.L0807107A:
	movs r0, #0
	mov r8, r0
.L0807107E:
	adds r5, r0, #0
	str r5, [sp, #0x114]
	adds r3, r1, #0
	adds r2, r5, #0
	mov r5, sp
	adds r5, #0x68
	str r5, [sp, #0xec]
	add r6, sp, #0x6c
	mov sl, r6
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0xf0]
	mov r1, sp
	adds r1, #0xc4
	str r1, [sp, #0xf4]
	add r4, sp, #0x94
	mov sb, r4
	ldr r5, [sp, #0xd8]
	lsls r5, r5, #6
	str r5, [sp, #0x10c]
	ldr r6, [sp, #0xd8]
	adds r6, #2
	str r6, [sp, #0xf8]
	ldr r0, [sp, #0xd8]
	adds r0, #4
	str r0, [sp, #0x104]
	ldr r1, [sp, #0xdc]
	adds r1, #1
	str r1, [sp, #0xfc]
	ldr r4, [sp, #0xe0]
	adds r4, #1
	str r4, [sp, #0x100]
	ldr r5, [sp, #0x118]
	cmp r3, r5
	beq .L080710DE
.L080710C4:
	cmp r2, #0
	beq .L080710D4
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080710D4:
	adds r3, #0x10
	adds r2, #0x10
	ldr r6, [sp, #0x118]
	cmp r3, r6
	bne .L080710C4
.L080710DE:
	adds r5, r2, #0
	ldr r1, [sp, #0xc0]
	cmp r1, #1
	bne .L080710FA
	cmp r5, #0
	beq .L080710F6
	adds r0, r5, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080710F6:
	adds r5, #0x10
	b .L0807111C
.L080710FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807111A
.L08071102:
	cmp r2, #0
	beq .L08071112
	adds r0, r2, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08071112:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08071102
.L0807111A:
	adds r5, r2, #0
.L0807111C:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0807112C
.L08071126:
	adds r0, #0x10
	cmp r0, r2
	bne .L08071126
.L0807112C:
	cmp r1, #0
	beq .L08071136
	adds r0, r1, #0
	bl free
.L08071136:
	ldr r0, [sp, #0x114]
	add r0, r8
	ldr r6, [sp, #0x114]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08071142:
	ldr r0, [sp, #0xec]
	ldr r1, .L08071238 @ =0x0000FFFF
	strh r1, [r0]
	movs r6, #0
	mov r7, sl
	strb r6, [r7]
	str r6, [r0, #0x24]
	ldr r1, [sp, #0xf0]
	strb r6, [r1]
	movs r7, #0
	add r1, sp, #0x108
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r0, [sp, #0xf4]
	ldr r1, [sp, #0xe4]
	bl __7ProductUi
	ldr r0, [sp, #0xf4]
	bl GetName__C7Product
	adds r5, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1c
	bls .L08071178
	movs r4, #0x1c
.L08071178:
	mov r0, sl
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r2, sl
	adds r0, r2, r4
	strb r7, [r0]
	movs r5, #7
	ldr r3, [sp, #0xdc]
	ands r5, r3
	ldr r4, [sp, #0xec]
	str r5, [r4, #0x24]
	movs r0, #0x2c
	adds r4, r3, #0
	muls r4, r0, r4
	ldr r7, [sp, #0xd0]
	adds r4, r4, r7
	movs r0, #0xb7
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, [sp, #0xec]
	ldrh r0, [r1]
	strh r0, [r4]
	adds r0, r4, #4
	mov r1, sl
	bl strcpy
	ldr r2, [sp, #0xec]
	ldr r0, [r2, #0x24]
	str r0, [r4, #0x24]
	ldr r3, [sp, #0xf0]
	ldrb r0, [r3]
	adds r4, #0x28
	strb r0, [r4]
	add r4, sp, #0x108
	ldrh r7, [r4]
	mov r4, sb
	strh r7, [r4]
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r0, r4, #6
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r5, [sp, #0xd0]
	adds r0, r0, r5
	ldr r7, .L0807123C @ =0x00001A5C
	adds r0, r0, r7
	mov r1, sb
	str r0, [r1, #4]
	lsls r4, r4, #3
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r4, r2
	ldr r3, [sp, #0xd4]
	ldr r0, [r3, #0x18]
	ldr r5, [sp, #0x10c]
	adds r0, r0, r5
	adds r0, #8
	str r6, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	adds r1, r4, #0
	movs r2, #0x14
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r7, #0xc0
	lsls r7, r7, #0x13
	adds r4, r4, r7
	mov r0, sb
	str r4, [r0, #8]
	movs r0, #0xa0
	lsls r0, r0, #3
	mov r1, sb
	str r0, [r1, #0xc]
	ldr r2, [sp, #0xd0]
	ldr r3, .L08071240 @ =0x000005A4
	adds r6, r2, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08071244
	cmp r1, #0
	beq .L08071230
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071230:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08071316
	.align 2, 0
.L08071238: .4byte 0x0000FFFF
.L0807123C: .4byte 0x00001A5C
.L08071240: .4byte 0x000005A4
.L08071244:
	str r1, [sp, #0x110]
	movs r0, #1
	add r1, sp, #0xcc
	str r0, [r1]
	ldr r3, [r6]
	ldr r2, [sp, #0x110]
	subs r0, r2, r3
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	adds r1, r3, #0
	cmp r4, r2
	bhs .L08071264
	mov r0, sl
.L08071264:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08071284
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08071280
	mov r0, r8
	bl func_080D3BC0
.L08071280:
	ldr r1, [r6]
	b .L08071288
.L08071284:
	movs r0, #0
	mov r8, r0
.L08071288:
	adds r5, r0, #0
	str r5, [sp, #0x114]
	adds r3, r1, #0
	adds r2, r5, #0
	ldr r4, [sp, #0x110]
	cmp r3, r4
	beq .L080712B0
.L08071296:
	cmp r2, #0
	beq .L080712A6
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080712A6:
	adds r3, #0x10
	adds r2, #0x10
	ldr r5, [sp, #0x110]
	cmp r3, r5
	bne .L08071296
.L080712B0:
	adds r5, r2, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080712CE
	cmp r5, #0
	beq .L080712CA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080712CA:
	adds r5, #0x10
	b .L080712F0
.L080712CE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080712EE
.L080712D6:
	cmp r2, #0
	beq .L080712E6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080712E6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080712D6
.L080712EE:
	adds r5, r2, #0
.L080712F0:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08071300
.L080712FA:
	adds r0, #0x10
	cmp r0, r2
	bne .L080712FA
.L08071300:
	cmp r1, #0
	beq .L0807130A
	adds r0, r1, #0
	bl free
.L0807130A:
	ldr r0, [sp, #0x114]
	add r0, r8
	ldr r7, [sp, #0x114]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08071316:
	movs r5, #0
	ldr r0, [sp, #0xd0]
	ldr r1, .L080713A4 @ =0x0000058C
	adds r4, r0, r1
	ldr r0, [r4]
	adds r0, #0x54
	ldr r1, [sp, #0xe4]
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807133A
	ldr r0, [r4]
	adds r0, #0x54
	ldr r1, [sp, #0xe4]
	bl GetAmountShipped__C11ShippingBini
	adds r5, r0, #0
.L0807133A:
	ldr r2, [sp, #0xd4]
	ldr r1, [r2, #0x18]
	ldr r3, [sp, #0xf8]
	lsls r4, r3, #6
	adds r1, r1, r4
	adds r1, #0x32
	movs r6, #0x20
	str r6, [sp]
	adds r0, r5, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r7, [sp, #0xd4]
	ldr r0, [r7, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	movs r1, #0
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #0x38
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0x104]
	str r0, [sp, #0xd8]
	ldr r1, [sp, #0xfc]
	str r1, [sp, #0xdc]
.L08071376:
	ldr r2, [sp, #0x100]
	str r2, [sp, #0xe0]
	cmp r2, #0x66
	bgt .L08071380
	b .L08070F66
.L08071380:
	ldr r3, [sp, #0xd0]
	ldr r0, [r3, #4]
	ldr r4, [sp, #0xd8]
	lsls r1, r4, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, .L080713A8 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xd0]
	add sp, #0x11c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080713A4: .4byte 0x0000058C
.L080713A8: .4byte vtable_unk_080E5A28

	.if 0
	thumb_func_start func_080713AC
func_080713AC: @ 0x080713AC
	push {lr}
	bl func_08070CA4
	movs r0, #1
	pop {r1}
	bx r1

	.endif
	.section .text.tail080713B8, "ax", %progbits
	thumb_func_start func_080713B8
func_080713B8: @ 0x080713B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x184
	str r0, [sp, #0x100]
	ldr r3, .L0807148C @ =0x000001A1
	ldr r0, .L08071490 @ =gUnk_080FBE90
	str r0, [sp]
	ldr r0, [sp, #0x100]
	bl func_08070C24
	ldr r0, [sp, #0x100]
	ldr r2, .L08071494 @ =0x000005B4
	adds r1, r0, r2
	ldr r0, .L08071498 @ =vtable_unk_080E7B0C
	str r0, [r1]
	ldr r3, .L0807149C @ =gUnk_080FBE9C
	add r0, sp, #0x94
	movs r1, #4
	movs r2, #2
	strh r1, [r0]
	strh r2, [r0, #2]
	ldr r0, [r0]
	ldr r5, [sp, #0x100]
	ldr r6, .L080714A0 @ =0x0000427C
	adds r4, r5, r6
	str r3, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	adds r1, r4, #0
	ldr r2, .L080714A4 @ =0x06000700
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080714BC
	cmp r1, #0
	beq .L0807142E
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807142E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r5, sp
	adds r5, #0xa0
	str r5, [sp, #0x128]
	ldr r6, [sp, #0x100]
	movs r7, #0x87
	lsls r7, r7, #7
	adds r6, r6, r7
	mov sl, r6
	mov r0, sp
	adds r0, #0xac
	str r0, [sp, #0x12c]
	ldr r2, .L080714A8 @ =0x00004684
	ldr r1, [sp, #0x100]
	adds r2, r1, r2
	str r2, [sp, #0x168]
	mov r3, sp
	adds r3, #0xb8
	str r3, [sp, #0x130]
	ldr r4, .L080714AC @ =0x00004888
	adds r4, r1, r4
	str r4, [sp, #0x160]
	adds r5, #0x24
	str r5, [sp, #0x134]
	ldr r6, .L080714B0 @ =0x0000498C
	adds r6, r1, r6
	str r6, [sp, #0x164]
	mov r7, sp
	adds r7, #0xd0
	str r7, [sp, #0x138]
	ldr r0, .L080714B4 @ =0x00004A10
	adds r0, r1, r0
	str r0, [sp, #0x16c]
	mov r1, sp
	adds r1, #0xdc
	str r1, [sp, #0x140]
	ldr r3, .L080714B8 @ =0x00004B14
	ldr r2, [sp, #0x100]
	adds r3, r2, r3
	str r3, [sp, #0x13c]
	mov r4, sp
	adds r4, #0x18
	str r4, [sp, #0x170]
	b .L080715E6
	.align 2, 0
.L0807148C: .4byte 0x000001A1
.L08071490: .4byte gUnk_080FBE90
.L08071494: .4byte 0x000005B4
.L08071498: .4byte vtable_unk_080E7B0C
.L0807149C: .4byte gUnk_080FBE9C
.L080714A0: .4byte 0x0000427C
.L080714A4: .4byte 0x06000700
.L080714A8: .4byte 0x00004684
.L080714AC: .4byte 0x00004888
.L080714B0: .4byte 0x0000498C
.L080714B4: .4byte 0x00004A10
.L080714B8: .4byte 0x00004B14
.L080714BC:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x174]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080714D8
	adds r0, r1, #0
.L080714D8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080714F6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080714FA
	mov r0, r8
	bl func_080D3BC0
	b .L080714FA
.L080714F6:
	movs r0, #0
	mov r8, r0
.L080714FA:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r7, sp
	adds r7, #0xa0
	str r7, [sp, #0x128]
	ldr r0, [sp, #0x100]
	movs r1, #0x87
	lsls r1, r1, #7
	adds r0, r0, r1
	mov sl, r0
	mov r4, sp
	adds r4, #0xac
	str r4, [sp, #0x12c]
	ldr r7, .L0807158C @ =0x00004684
	ldr r5, [sp, #0x100]
	adds r7, r5, r7
	str r7, [sp, #0x168]
	mov r0, sp
	adds r0, #0xb8
	str r0, [sp, #0x130]
	ldr r1, .L08071590 @ =0x00004888
	adds r1, r5, r1
	str r1, [sp, #0x160]
	adds r4, #0x18
	str r4, [sp, #0x134]
	ldr r7, .L08071594 @ =0x0000498C
	adds r7, r5, r7
	str r7, [sp, #0x164]
	adds r0, #0x18
	str r0, [sp, #0x138]
	ldr r1, .L08071598 @ =0x00004A10
	adds r1, r5, r1
	str r1, [sp, #0x16c]
	adds r4, #0x18
	str r4, [sp, #0x140]
	ldr r7, .L0807159C @ =0x00004B14
	adds r7, r5, r7
	str r7, [sp, #0x13c]
	subs r0, #0xb8
	str r0, [sp, #0x170]
	ldr r1, [sp, #0x174]
	cmp r2, r1
	beq .L0807156E
.L08071554:
	cmp r3, #0
	beq .L08071564
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071564:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x174]
	cmp r2, r0
	bne .L08071554
.L0807156E:
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080715A0
	cmp r5, #0
	beq .L08071586
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08071586:
	adds r5, #0x10
	b .L080715C2
	.align 2, 0
.L0807158C: .4byte 0x00004684
.L08071590: .4byte 0x00004888
.L08071594: .4byte 0x0000498C
.L08071598: .4byte 0x00004A10
.L0807159C: .4byte 0x00004B14
.L080715A0:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080715C0
.L080715A8:
	cmp r2, #0
	beq .L080715B8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080715B8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080715A8
.L080715C0:
	adds r5, r2, #0
.L080715C2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080715D2
.L080715CC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080715CC
.L080715D2:
	cmp r0, #0
	beq .L080715DA
	bl free
.L080715DA:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080715E6:
	ldr r3, .L08071640 @ =gUnk_080FBEA4
	movs r1, #0xc
	movs r2, #2
	add r0, sp, #0xa0
	strh r1, [r0]
	ldr r1, [sp, #0x128]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	mov r1, sl
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r2, [sp, #0x100]
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #8
	mov r1, sl
	ldr r2, .L08071644 @ =0x06000800
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08071648
	cmp r1, #0
	beq .L08071636
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071636:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08071714
	.align 2, 0
.L08071640: .4byte gUnk_080FBEA4
.L08071644: .4byte 0x06000800
.L08071648:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xa8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x174]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08071666
	mov r0, sl
.L08071666:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08071684
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08071688
	mov r0, r8
	bl func_080D3BC0
	b .L08071688
.L08071684:
	movs r0, #0
	mov r8, r0
.L08071688:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x174]
	cmp r2, r4
	beq .L080716B0
.L08071696:
	cmp r3, #0
	beq .L080716A6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080716A6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x174]
	cmp r2, r5
	bne .L08071696
.L080716B0:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080716CE
	cmp r5, #0
	beq .L080716CA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080716CA:
	adds r5, #0x10
	b .L080716F0
.L080716CE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080716EE
.L080716D6:
	cmp r2, #0
	beq .L080716E6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080716E6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080716D6
.L080716EE:
	adds r5, r2, #0
.L080716F0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08071700
.L080716FA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080716FA
.L08071700:
	cmp r0, #0
	beq .L08071708
	bl free
.L08071708:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08071714:
	ldr r3, .L0807176C @ =gUnk_080FBEB4
	movs r1, #8
	movs r2, #2
	add r0, sp, #0xac
	strh r1, [r0]
	ldr r1, [sp, #0x12c]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x168]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r2, [sp, #0x100]
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x168]
	ldr r2, .L08071770 @ =0x06000B00
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08071774
	cmp r1, #0
	beq .L08071764
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071764:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08071840
	.align 2, 0
.L0807176C: .4byte gUnk_080FBEB4
.L08071770: .4byte 0x06000B00
.L08071774:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xb4
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x174]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08071792
	mov r0, sl
.L08071792:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080717B0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080717B4
	mov r0, r8
	bl func_080D3BC0
	b .L080717B4
.L080717B0:
	movs r0, #0
	mov r8, r0
.L080717B4:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x174]
	cmp r2, r4
	beq .L080717DC
.L080717C2:
	cmp r3, #0
	beq .L080717D2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080717D2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x174]
	cmp r2, r5
	bne .L080717C2
.L080717DC:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080717FA
	cmp r5, #0
	beq .L080717F6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080717F6:
	adds r5, #0x10
	b .L0807181C
.L080717FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807181A
.L08071802:
	cmp r2, #0
	beq .L08071812
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071812:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08071802
.L0807181A:
	adds r5, r2, #0
.L0807181C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807182C
.L08071826:
	adds r1, #0x10
	cmp r1, r2
	bne .L08071826
.L0807182C:
	cmp r0, #0
	beq .L08071834
	bl free
.L08071834:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08071840:
	ldr r3, .L08071898 @ =gUnk_080FBEC0
	movs r1, #4
	movs r2, #2
	add r0, sp, #0xb8
	strh r1, [r0]
	ldr r1, [sp, #0x130]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x160]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r2, [sp, #0x100]
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x160]
	ldr r2, .L0807189C @ =0x06000D00
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080718A0
	cmp r1, #0
	beq .L08071890
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071890:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807196C
	.align 2, 0
.L08071898: .4byte gUnk_080FBEC0
.L0807189C: .4byte 0x06000D00
.L080718A0:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xc0
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x174]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xbc
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080718BE
	mov r0, sl
.L080718BE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080718DC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080718E0
	mov r0, r8
	bl func_080D3BC0
	b .L080718E0
.L080718DC:
	movs r0, #0
	mov r8, r0
.L080718E0:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x174]
	cmp r2, r4
	beq .L08071908
.L080718EE:
	cmp r3, #0
	beq .L080718FE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080718FE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x174]
	cmp r2, r5
	bne .L080718EE
.L08071908:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08071926
	cmp r5, #0
	beq .L08071922
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08071922:
	adds r5, #0x10
	b .L08071948
.L08071926:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08071946
.L0807192E:
	cmp r2, #0
	beq .L0807193E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807193E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807192E
.L08071946:
	adds r5, r2, #0
.L08071948:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08071958
.L08071952:
	adds r1, #0x10
	cmp r1, r2
	bne .L08071952
.L08071958:
	cmp r0, #0
	beq .L08071960
	bl free
.L08071960:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807196C:
	ldr r2, .L080719C0 @ =gUnk_080FBEC8
	movs r0, #2
	add r1, sp, #0xc4
	strh r0, [r1]
	ldr r3, [sp, #0x134]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x164]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0x100]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x164]
	ldr r2, .L080719C4 @ =0x06000E00
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080719C8
	cmp r1, #0
	beq .L080719B8
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080719B8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08071A94
	.align 2, 0
.L080719C0: .4byte gUnk_080FBEC8
.L080719C4: .4byte 0x06000E00
.L080719C8:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xcc
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x174]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080719E6
	mov r0, sl
.L080719E6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08071A04
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08071A08
	mov r0, r8
	bl func_080D3BC0
	b .L08071A08
.L08071A04:
	movs r0, #0
	mov r8, r0
.L08071A08:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x174]
	cmp r2, r5
	beq .L08071A30
.L08071A16:
	cmp r3, #0
	beq .L08071A26
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071A26:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x174]
	cmp r2, r7
	bne .L08071A16
.L08071A30:
	adds r5, r3, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L08071A4E
	cmp r5, #0
	beq .L08071A4A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08071A4A:
	adds r5, #0x10
	b .L08071A70
.L08071A4E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08071A6E
.L08071A56:
	cmp r2, #0
	beq .L08071A66
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071A66:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08071A56
.L08071A6E:
	adds r5, r2, #0
.L08071A70:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08071A80
.L08071A7A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08071A7A
.L08071A80:
	cmp r0, #0
	beq .L08071A88
	bl free
.L08071A88:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08071A94:
	ldr r3, .L08071AEC @ =gUnk_080FBECC
	movs r1, #4
	movs r2, #2
	add r0, sp, #0xd0
	strh r1, [r0]
	ldr r1, [sp, #0x138]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x16c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r2, [sp, #0x100]
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x16c]
	ldr r2, .L08071AF0 @ =0x06000E80
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08071AF4
	cmp r1, #0
	beq .L08071AE4
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071AE4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08071BC0
	.align 2, 0
.L08071AEC: .4byte gUnk_080FBECC
.L08071AF0: .4byte 0x06000E80
.L08071AF4:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xd8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x174]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xd4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08071B12
	mov r0, sl
.L08071B12:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08071B30
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08071B34
	mov r0, r8
	bl func_080D3BC0
	b .L08071B34
.L08071B30:
	movs r0, #0
	mov r8, r0
.L08071B34:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x174]
	cmp r2, r4
	beq .L08071B5C
.L08071B42:
	cmp r3, #0
	beq .L08071B52
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071B52:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x174]
	cmp r2, r5
	bne .L08071B42
.L08071B5C:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08071B7A
	cmp r5, #0
	beq .L08071B76
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08071B76:
	adds r5, #0x10
	b .L08071B9C
.L08071B7A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08071B9A
.L08071B82:
	cmp r2, #0
	beq .L08071B92
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071B92:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08071B82
.L08071B9A:
	adds r5, r2, #0
.L08071B9C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08071BAC
.L08071BA6:
	adds r1, #0x10
	cmp r1, r2
	bne .L08071BA6
.L08071BAC:
	cmp r0, #0
	beq .L08071BB4
	bl free
.L08071BB4:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08071BC0:
	ldr r2, .L08071C14 @ =gUnk_080FBE8C
	movs r0, #2
	add r1, sp, #0xdc
	strh r0, [r1]
	ldr r3, [sp, #0x140]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x13c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0x100]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x13c]
	ldr r2, .L08071C18 @ =0x06000F80
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08071C1C
	cmp r1, #0
	beq .L08071C0C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071C0C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08071CE8
	.align 2, 0
.L08071C14: .4byte gUnk_080FBE8C
.L08071C18: .4byte 0x06000F80
.L08071C1C:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xe4
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x174]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xe0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08071C3A
	mov r0, sl
.L08071C3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08071C58
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08071C5C
	mov r0, r8
	bl func_080D3BC0
	b .L08071C5C
.L08071C58:
	movs r0, #0
	mov r8, r0
.L08071C5C:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x174]
	cmp r2, r5
	beq .L08071C84
.L08071C6A:
	cmp r3, #0
	beq .L08071C7A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071C7A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x174]
	cmp r2, r7
	bne .L08071C6A
.L08071C84:
	adds r5, r3, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L08071CA2
	cmp r5, #0
	beq .L08071C9E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08071C9E:
	adds r5, #0x10
	b .L08071CC4
.L08071CA2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08071CC2
.L08071CAA:
	cmp r2, #0
	beq .L08071CBA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08071CBA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08071CAA
.L08071CC2:
	adds r5, r2, #0
.L08071CC4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08071CD4
.L08071CCE:
	adds r1, #0x10
	cmp r1, r2
	bne .L08071CCE
.L08071CD4:
	cmp r0, #0
	beq .L08071CDC
	bl free
.L08071CDC:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08071CE8:
	ldr r1, .L08071DAC @ =gUnk_086678A0
	ldr r0, [sp, #0x170]
	bl func_0805E6CC
	movs r0, #4
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x104]
	movs r2, #0
	str r2, [sp, #0x108]
	ldr r4, .L08071DB0 @ =0x0000058C
	ldr r3, [sp, #0x100]
	adds r4, r3, r4
	str r4, [sp, #0x114]
.L08071D04:
	ldr r5, [sp, #0x100]
	ldr r5, [r5, #4]
	str r5, [sp, #0x10c]
	ldr r6, [sp, #0x108]
	str r6, [sp, #0x110]
	ldr r7, [sp, #0x114]
	ldr r0, [r7]
	movs r4, #0xb2
	lsls r4, r4, #6
	adds r0, r0, r4
	adds r1, r6, #0
	bl func_0809CE1C
	ldr r1, [sp, #0x108]
	adds r1, #1
	str r1, [sp, #0x14c]
	cmp r0, #0
	bne .L08071D2A
	b .L0807229E
.L08071D2A:
	ldr r2, [sp, #0x108]
	cmp r2, #0x34
	bgt .L08071D32
	b .L08071EBC
.L08071D32:
	add r0, sp, #8
	mov r3, r8
	lsls r6, r3, #3
	strh r6, [r0]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, [sp, #0x108]
	bl func_0809CE30
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r5, sp, #0x48
	ldr r4, [sp, #0x18]
	add r0, sp, #0xe8
	ldr r3, [r4, #0xc]
	add r1, sp, #0x18
	bl _call_via_r3
	add r0, sp, #0xe8
	ldr r0, [r0]
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r4, #0x10]
	add r1, sp, #0x18
	bl _call_via_r3
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x14]
	ldr r4, [sp, #0x100]
	ldr r0, .L08071DB4 @ =0x00000594
	adds r7, r4, r0
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x118]
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	str r6, [sp, #0x158]
	str r5, [sp, #0x11c]
	cmp r1, r0
	beq .L08071DB8
	cmp r1, #0
	beq .L08071D9C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08071D9C:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	mov r5, r8
	lsls r5, r5, #6
	str r5, [sp, #0x15c]
	b .L08071EE8
	.align 2, 0
.L08071DAC: .4byte gUnk_086678A0
.L08071DB0: .4byte 0x0000058C
.L08071DB4: .4byte 0x00000594
.L08071DB8:
	str r1, [sp, #0x17c]
	movs r0, #1
	add r1, sp, #0xf4
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x17c]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xf0
	str r4, [r0]
	ldr r2, [r1]
	adds r1, r3, #0
	cmp r4, r2
	bhs .L08071DD6
	add r0, sp, #0xf4
.L08071DD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08071DF6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08071DF2
	mov r0, sb
	bl func_080D3BC0
.L08071DF2:
	ldr r1, [r7]
	b .L08071DFA
.L08071DF6:
	movs r0, #0
	mov sb, r0
.L08071DFA:
	adds r4, r0, #0
	str r4, [sp, #0x180]
	adds r3, r1, #0
	adds r2, r4, #0
	mov r6, r8
	lsls r6, r6, #6
	str r6, [sp, #0x15c]
	add r0, sp, #0x68
	mov sl, r0
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0x120]
	mov r4, sp
	adds r4, #0x90
	str r4, [sp, #0x124]
	mov r5, r8
	adds r5, #2
	str r5, [sp, #0x144]
	mov r6, r8
	adds r6, #4
	str r6, [sp, #0x150]
	mov r0, r8
	adds r0, #7
	str r0, [sp, #0x154]
	ldr r1, [sp, #0x104]
	adds r1, #1
	str r1, [sp, #0x148]
	ldr r4, [sp, #0x108]
	adds r4, #1
	str r4, [sp, #0x14c]
	ldr r5, [sp, #0x17c]
	cmp r3, r5
	beq .L08071E56
.L08071E3C:
	cmp r2, #0
	beq .L08071E4C
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08071E4C:
	adds r3, #0x10
	adds r2, #0x10
	ldr r6, [sp, #0x17c]
	cmp r3, r6
	bne .L08071E3C
.L08071E56:
	adds r4, r2, #0
	ldr r1, [sp, #0xf4]
	cmp r1, #1
	bne .L08071E72
	cmp r4, #0
	beq .L08071E6E
	adds r0, r4, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08071E6E:
	adds r4, #0x10
	b .L08071E94
.L08071E72:
	adds r3, r1, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L08071E92
.L08071E7A:
	cmp r2, #0
	beq .L08071E8A
	adds r0, r2, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08071E8A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08071E7A
.L08071E92:
	adds r4, r2, #0
.L08071E94:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08071EA4
.L08071E9E:
	adds r0, #0x10
	cmp r0, r2
	bne .L08071E9E
.L08071EA4:
	cmp r1, #0
	beq .L08071EAE
	adds r0, r1, #0
	bl free
.L08071EAE:
	ldr r0, [sp, #0x180]
	add r0, sb
	ldr r6, [sp, #0x180]
	str r6, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
	b .L08071F10
.L08071EBC:
	ldr r7, [sp, #0x10c]
	ldr r0, [r7, #0x18]
	mov r1, r8
	lsls r4, r1, #6
	adds r0, r0, r4
	adds r0, #4
	movs r2, #0
	str r2, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0x38
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	mov r3, r8
	lsls r3, r3, #3
	str r3, [sp, #0x158]
	mov r5, sp
	adds r5, #0x48
	str r5, [sp, #0x11c]
	str r4, [sp, #0x15c]
.L08071EE8:
	add r6, sp, #0x68
	mov sl, r6
	mov r7, sp
	adds r7, #0x6c
	str r7, [sp, #0x120]
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0x124]
	mov r1, r8
	adds r1, #2
	str r1, [sp, #0x144]
	mov r2, r8
	adds r2, #4
	str r2, [sp, #0x150]
	mov r3, r8
	adds r3, #7
	str r3, [sp, #0x154]
	ldr r4, [sp, #0x104]
	adds r4, #1
	str r4, [sp, #0x148]
.L08071F10:
	ldr r0, .L08071F64 @ =0x0000FFFF
	mov r5, sl
	strh r0, [r5]
	movs r7, #0
	ldr r6, [sp, #0x120]
	strb r7, [r6]
	movs r0, #0
	str r0, [r5, #0x24]
	ldr r1, [sp, #0x124]
	strb r0, [r1]
	movs r6, #0
	add r2, sp, #0x158
	ldrh r2, [r2]
	strh r2, [r5]
	ldr r3, [sp, #0x114]
	ldr r0, [r3]
	movs r4, #0xb2
	lsls r4, r4, #6
	adds r0, r0, r4
	ldr r1, [sp, #0x110]
	bl func_0809CE7C
	adds r5, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x14
	bls .L08071F4A
	movs r4, #0x14
.L08071F4A:
	ldr r0, [sp, #0x11c]
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	ldr r5, [sp, #0x11c]
	adds r0, r5, r4
	strb r6, [r0]
	movs r6, #0
	mov sb, r6
	ldr r7, [sp, #0x120]
	mov r8, r7
	b .L08071F9E
	.align 2, 0
.L08071F64: .4byte 0x0000FFFF
.L08071F68:
	ldr r7, .L08072090 @ =gUnk_080FBED4
	mov r0, r8
	bl strlen
	mov r1, r8
	adds r6, r1, r0
	movs r1, #0x1c
	subs r5, r1, r0
	cmp r5, #0
	beq .L08071F9A
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08071F8A
	adds r4, r5, #0
.L08071F8A:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	movs r2, #0
	strb r2, [r0]
.L08071F9A:
	movs r3, #1
	add sb, r3
.L08071F9E:
	add r0, sp, #0x48
	bl strlen
	movs r1, #0x11
	subs r1, r1, r0
	cmp sb, r1
	blo .L08071F68
	ldr r4, [sp, #0x11c]
	ldr r0, [sp, #0x120]
	bl strlen
	ldr r5, [sp, #0x120]
	adds r7, r5, r0
	movs r1, #0x1c
	subs r5, r1, r0
	cmp r5, #0
	beq .L08071FDE
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08071FCE
	adds r4, r5, #0
.L08071FCE:
	adds r0, r7, #0
	ldr r1, [sp, #0x11c]
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	movs r6, #0
	strb r6, [r0]
.L08071FDE:
	movs r5, #7
	ldr r7, [sp, #0x104]
	ands r5, r7
	mov r0, sl
	str r5, [r0, #0x24]
	movs r0, #0x2c
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r1, [sp, #0x100]
	adds r4, r4, r1
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r4, r4, r2
	mov r3, sl
	ldrh r0, [r3]
	strh r0, [r4]
	adds r0, r4, #4
	add r1, sp, #0x6c
	bl strcpy
	mov r6, sl
	ldr r0, [r6, #0x24]
	str r0, [r4, #0x24]
	ldr r7, [sp, #0x124]
	ldrb r0, [r7]
	adds r4, #0x28
	strb r0, [r4]
	add r0, sp, #8
	add r1, sp, #0x158
	ldrh r1, [r1]
	strh r1, [r0]
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r0, r4, #6
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r2, [sp, #0x100]
	adds r0, r0, r2
	ldr r3, .L08072094 @ =0x00001A5C
	adds r0, r0, r3
	str r0, [sp, #0xc]
	lsls r4, r4, #3
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r4, r4, r5
	ldr r6, [sp, #0x10c]
	ldr r0, [r6, #0x18]
	ldr r7, [sp, #0x15c]
	adds r0, r0, r7
	adds r0, #0x16
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #0x14
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	str r4, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x100]
	ldr r4, .L08072098 @ =0x000005A4
	adds r6, r3, r4
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807209C
	cmp r1, #0
	beq .L08072086
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072086:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807216E
	.align 2, 0
.L08072090: .4byte gUnk_080FBED4
.L08072094: .4byte 0x00001A5C
.L08072098: .4byte 0x000005A4
.L0807209C:
	str r1, [sp, #0x174]
	movs r0, #1
	add r1, sp, #0xfc
	str r0, [r1]
	ldr r3, [r6]
	ldr r4, [sp, #0x174]
	subs r0, r4, r3
	asrs r4, r0, #4
	add r0, sp, #0xf8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	adds r1, r3, #0
	cmp r4, r2
	bhs .L080720BC
	mov r0, sl
.L080720BC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080720DC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080720D8
	mov r0, r8
	bl func_080D3BC0
.L080720D8:
	ldr r1, [r6]
	b .L080720E0
.L080720DC:
	movs r0, #0
	mov r8, r0
.L080720E0:
	adds r5, r0, #0
	str r5, [sp, #0x178]
	adds r3, r1, #0
	adds r2, r5, #0
	ldr r5, [sp, #0x174]
	cmp r3, r5
	beq .L08072108
.L080720EE:
	cmp r2, #0
	beq .L080720FE
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080720FE:
	adds r3, #0x10
	adds r2, #0x10
	ldr r7, [sp, #0x174]
	cmp r3, r7
	bne .L080720EE
.L08072108:
	adds r5, r2, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L08072126
	cmp r5, #0
	beq .L08072122
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08072122:
	adds r5, #0x10
	b .L08072148
.L08072126:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08072146
.L0807212E:
	cmp r2, #0
	beq .L0807213E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807213E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807212E
.L08072146:
	adds r5, r2, #0
.L08072148:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08072158
.L08072152:
	adds r0, #0x10
	cmp r0, r2
	bne .L08072152
.L08072158:
	cmp r1, #0
	beq .L08072162
	adds r0, r1, #0
	bl free
.L08072162:
	ldr r0, [sp, #0x178]
	add r0, r8
	ldr r7, [sp, #0x178]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807216E:
	ldr r1, [sp, #0x10c]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x144]
	lsls r5, r2, #6
	adds r0, r0, r5
	adds r0, #4
	movs r3, #0
	mov r8, r3
	str r3, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	movs r1, #0x40
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x114]
	ldr r0, [r4]
	movs r7, #0xb2
	lsls r7, r7, #6
	adds r0, r0, r7
	ldr r1, [sp, #0x110]
	bl func_0809CE24
	adds r4, r0, #0
	cmp r4, #0
	beq .L08072220
	movs r7, #0x18
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #0
	beq .L080721DE
	ldr r2, [sp, #0x10c]
	ldr r1, [r2, #0x18]
	adds r1, r1, r5
	adds r1, #0x2e
	str r6, [sp]
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x10c]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x30
	mov r7, r8
	str r7, [sp]
	str r6, [sp, #4]
	movs r1, #0x74
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	movs r7, #0x12
.L080721DE:
	adds r0, r4, #0
	movs r1, #0x64
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq .L08072220
	ldr r0, [sp, #0x10c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	subs r0, r7, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	str r6, [sp]
	adds r0, r2, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x10c]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	lsls r1, r7, #1
	adds r0, r0, r1
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	movs r1, #0x70
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L08072220:
	ldr r3, [sp, #0x10c]
	ldr r0, [r3, #0x18]
	ldr r5, [sp, #0x150]
	lsls r4, r5, #6
	adds r0, r0, r4
	adds r0, #4
	movs r7, #0
	str r7, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r1, #0x58
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r6, [sp, #0x114]
	ldr r0, [r6]
	movs r1, #0xb2
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [sp, #0x110]
	bl func_0809CE1C
	ldr r2, [sp, #0x10c]
	ldr r1, [r2, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	str r5, [sp]
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x108]
	cmp r3, #7
	bgt .L08072280
	ldr r6, [sp, #0x10c]
	ldr r0, [r6, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	str r7, [sp]
	str r5, [sp, #4]
	movs r1, #0x7c
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	b .L08072296
.L08072280:
	ldr r1, [sp, #0x10c]
	ldr r0, [r1, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	str r7, [sp]
	str r5, [sp, #4]
	movs r1, #0x68
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
.L08072296:
	ldr r2, [sp, #0x154]
	mov r8, r2
	ldr r3, [sp, #0x148]
	str r3, [sp, #0x104]
.L0807229E:
	ldr r4, [sp, #0x14c]
	str r4, [sp, #0x108]
	cmp r4, #0x3a
	bgt .L080722A8
	b .L08071D04
.L080722A8:
	ldr r5, [sp, #0x100]
	ldr r0, [r5, #4]
	mov r6, r8
	lsls r1, r6, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, .L080722CC @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x100]
	add sp, #0x184
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080722CC: .4byte vtable_unk_080E5A28

	.if 0
	thumb_func_start func_080722D0
func_080722D0: @ 0x080722D0
	push {lr}
	bl func_08070CA4
	movs r0, #1
	pop {r1}
	bx r1

	.endif
	.section .text.tail080722DC, "ax", %progbits
	thumb_func_start func_080722DC
func_080722DC: @ 0x080722DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L080724B8 @ =0xFFFFFD10
	add sp, r4
	mov sb, r0
	ldr r0, .L080724BC @ =gUnk_080FBED8
	str r0, [sp]
	mov r0, sb
	movs r3, #0x78
	bl func_08070C24
	ldr r1, .L080724C0 @ =0x000005B4
	add r1, sb
	ldr r0, .L080724C4 @ =vtable_unk_080E7AFC
	str r0, [r1]
	mov r0, sb
	ldr r0, [r0, #4]
	str r0, [sp, #0x208]
	movs r1, #4
	str r1, [sp, #0x20c]
	ldr r3, .L080724C8 @ =gUnk_080FBEE0
	add r0, sp, #0x98
	movs r1, #0x1a
	movs r2, #2
	strh r1, [r0]
	strh r2, [r0, #2]
	ldr r0, [r0]
	ldr r4, .L080724CC @ =0x0000427C
	add r4, sb
	str r3, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0xd0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #8
	adds r1, r4, #0
	ldr r2, .L080724D0 @ =0x06003000
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bne .L0807234E
	b .L08072534
.L0807234E:
	cmp r1, #0
	beq .L0807235E
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807235E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r0, sp
	adds r0, #0xa4
	str r0, [sp, #0x2e0]
	movs r1, #0x92
	lsls r1, r1, #7
	add r1, sb
	str r1, [sp, #0x2ac]
	mov r2, sp
	adds r2, #0xb0
	str r2, [sp, #0x2e4]
	ldr r3, .L080724D4 @ =0x00004B04
	add r3, sb
	str r3, [sp, #0x2c0]
	mov r4, sp
	adds r4, #0xbc
	str r4, [sp, #0x210]
	ldr r5, .L080724D8 @ =0x00004F08
	add r5, sb
	str r5, [sp, #0x284]
	mov r6, sp
	adds r6, #0xc8
	str r6, [sp, #0x214]
	ldr r7, .L080724DC @ =0x0000510C
	add r7, sb
	str r7, [sp, #0x290]
	adds r0, #0x30
	str r0, [sp, #0x218]
	ldr r1, .L080724E0 @ =0x00005310
	add r1, sb
	str r1, [sp, #0x2a0]
	adds r2, #0x30
	str r2, [sp, #0x21c]
	ldr r3, .L080724E4 @ =0x00005394
	add r3, sb
	str r3, [sp, #0x2a8]
	adds r4, #0x30
	str r4, [sp, #0x220]
	ldr r5, .L080724E8 @ =0x00005418
	add r5, sb
	str r5, [sp, #0x2b0]
	adds r6, #0x30
	str r6, [sp, #0x224]
	ldr r7, .L080724EC @ =0x0000551C
	add r7, sb
	str r7, [sp, #0x2b4]
	subs r0, #0xbc
	str r0, [sp, #0x2c8]
	mov r1, sp
	adds r1, #0x48
	str r1, [sp, #0x2d0]
	movs r2, #0x82
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x22c]
	ldr r3, .L080724F0 @ =0x00005620
	add r3, sb
	str r3, [sp, #0x2c4]
	movs r4, #0x88
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x230]
	ldr r5, .L080724F4 @ =0x00005CA4
	add r5, sb
	str r5, [sp, #0x29c]
	movs r6, #0x8e
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x234]
	ldr r7, .L080724F8 @ =0x00006028
	add r7, sb
	str r7, [sp, #0x2b8]
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x238]
	ldr r1, .L080724FC @ =0x0000622C
	add r1, sb
	str r1, [sp, #0x2cc]
	movs r2, #0x9a
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x23c]
	ldr r3, .L08072500 @ =0x00006430
	add r3, sb
	str r3, [sp, #0x27c]
	movs r4, #0xa0
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x240]
	ldr r5, .L08072504 @ =0x000064B4
	add r5, sb
	str r5, [sp, #0x280]
	movs r6, #0xa6
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x244]
	ldr r7, .L08072508 @ =0x00006B38
	add r7, sb
	str r7, [sp, #0x2bc]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x24c]
	ldr r1, .L0807250C @ =0x00006D3C
	add r1, sb
	str r1, [sp, #0x2d4]
	movs r2, #0xb2
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x250]
	ldr r3, .L08072510 @ =0x00006E40
	add r3, sb
	str r3, [sp, #0x248]
	movs r4, #0xb8
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x254]
	ldr r5, .L08072514 @ =0x00006FC4
	add r5, sb
	str r5, [sp, #0x288]
	movs r6, #0xbe
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x258]
	ldr r7, .L08072518 @ =0x00007148
	add r7, sb
	str r7, [sp, #0x28c]
	movs r0, #0xc4
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x25c]
	ldr r1, .L0807251C @ =0x000071CC
	add r1, sb
	str r1, [sp, #0x294]
	movs r2, #0xe2
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x260]
	ldr r3, .L08072520 @ =0x00007250
	add r3, sb
	str r3, [sp, #0x298]
	movs r4, #0xe8
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x264]
	ldr r5, .L08072524 @ =0x000078D4
	add r5, sb
	str r5, [sp, #0x228]
	movs r6, #0xee
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x268]
	ldr r7, .L08072528 @ =0x000079D8
	add r7, sb
	str r7, [sp, #0x274]
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x26c]
	ldr r1, .L0807252C @ =0x00007EDC
	add r1, sb
	str r1, [sp, #0x2a4]
	movs r2, #0xfa
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x270]
	ldr r3, .L08072530 @ =0x000084E0
	add r3, sb
	str r3, [sp, #0x278]
	b .L080727B4
	.align 2, 0
.L080724B8: .4byte 0xFFFFFD10
.L080724BC: .4byte gUnk_080FBED8
.L080724C0: .4byte 0x000005B4
.L080724C4: .4byte vtable_unk_080E7AFC
.L080724C8: .4byte gUnk_080FBEE0
.L080724CC: .4byte 0x0000427C
.L080724D0: .4byte 0x06003000
.L080724D4: .4byte 0x00004B04
.L080724D8: .4byte 0x00004F08
.L080724DC: .4byte 0x0000510C
.L080724E0: .4byte 0x00005310
.L080724E4: .4byte 0x00005394
.L080724E8: .4byte 0x00005418
.L080724EC: .4byte 0x0000551C
.L080724F0: .4byte 0x00005620
.L080724F4: .4byte 0x00005CA4
.L080724F8: .4byte 0x00006028
.L080724FC: .4byte 0x0000622C
.L08072500: .4byte 0x00006430
.L08072504: .4byte 0x000064B4
.L08072508: .4byte 0x00006B38
.L0807250C: .4byte 0x00006D3C
.L08072510: .4byte 0x00006E40
.L08072514: .4byte 0x00006FC4
.L08072518: .4byte 0x00007148
.L0807251C: .4byte 0x000071CC
.L08072520: .4byte 0x00007250
.L08072524: .4byte 0x000078D4
.L08072528: .4byte 0x000079D8
.L0807252C: .4byte 0x00007EDC
.L08072530: .4byte 0x000084E0
.L08072534:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072550
	adds r0, r1, #0
.L08072550:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807256E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072572
	mov r0, r8
	bl func_080D3BC0
	b .L08072572
.L0807256E:
	movs r0, #0
	mov r8, r0
.L08072572:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r5, sp
	adds r5, #0xa4
	str r5, [sp, #0x2e0]
	movs r7, #0x92
	lsls r7, r7, #7
	add r7, sb
	str r7, [sp, #0x2ac]
	mov r0, sp
	adds r0, #0xb0
	str r0, [sp, #0x2e4]
	ldr r1, .L080726D8 @ =0x00004B04
	add r1, sb
	str r1, [sp, #0x2c0]
	mov r4, sp
	adds r4, #0xbc
	str r4, [sp, #0x210]
	ldr r5, .L080726DC @ =0x00004F08
	add r5, sb
	str r5, [sp, #0x284]
	mov r7, sp
	adds r7, #0xc8
	str r7, [sp, #0x214]
	ldr r0, .L080726E0 @ =0x0000510C
	add r0, sb
	str r0, [sp, #0x290]
	mov r1, sp
	adds r1, #0xd4
	str r1, [sp, #0x218]
	ldr r4, .L080726E4 @ =0x00005310
	add r4, sb
	str r4, [sp, #0x2a0]
	mov r5, sp
	adds r5, #0xe0
	str r5, [sp, #0x21c]
	ldr r7, .L080726E8 @ =0x00005394
	add r7, sb
	str r7, [sp, #0x2a8]
	mov r0, sp
	adds r0, #0xec
	str r0, [sp, #0x220]
	ldr r1, .L080726EC @ =0x00005418
	add r1, sb
	str r1, [sp, #0x2b0]
	mov r4, sp
	adds r4, #0xf8
	str r4, [sp, #0x224]
	ldr r5, .L080726F0 @ =0x0000551C
	add r5, sb
	str r5, [sp, #0x2b4]
	mov r7, sp
	adds r7, #0x18
	str r7, [sp, #0x2c8]
	subs r0, #0xa4
	str r0, [sp, #0x2d0]
	movs r1, #0x82
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x22c]
	ldr r4, .L080726F4 @ =0x00005620
	add r4, sb
	str r4, [sp, #0x2c4]
	movs r5, #0x88
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x230]
	ldr r7, .L080726F8 @ =0x00005CA4
	add r7, sb
	str r7, [sp, #0x29c]
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x234]
	ldr r1, .L080726FC @ =0x00006028
	add r1, sb
	str r1, [sp, #0x2b8]
	movs r4, #0x94
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x238]
	ldr r5, .L08072700 @ =0x0000622C
	add r5, sb
	str r5, [sp, #0x2cc]
	movs r7, #0x9a
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x23c]
	ldr r0, .L08072704 @ =0x00006430
	add r0, sb
	str r0, [sp, #0x27c]
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x240]
	ldr r4, .L08072708 @ =0x000064B4
	add r4, sb
	str r4, [sp, #0x280]
	movs r5, #0xa6
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x244]
	ldr r7, .L0807270C @ =0x00006B38
	add r7, sb
	str r7, [sp, #0x2bc]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x24c]
	ldr r1, .L08072710 @ =0x00006D3C
	add r1, sb
	str r1, [sp, #0x2d4]
	movs r4, #0xb2
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x250]
	ldr r5, .L08072714 @ =0x00006E40
	add r5, sb
	str r5, [sp, #0x248]
	movs r7, #0xb8
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x254]
	ldr r0, .L08072718 @ =0x00006FC4
	add r0, sb
	str r0, [sp, #0x288]
	movs r1, #0xbe
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x258]
	ldr r4, .L0807271C @ =0x00007148
	add r4, sb
	str r4, [sp, #0x28c]
	movs r5, #0xc4
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x25c]
	ldr r7, .L08072720 @ =0x000071CC
	add r7, sb
	str r7, [sp, #0x294]
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x260]
	ldr r1, .L08072724 @ =0x00007250
	add r1, sb
	str r1, [sp, #0x298]
	movs r4, #0xe8
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x264]
	ldr r5, .L08072728 @ =0x000078D4
	add r5, sb
	str r5, [sp, #0x228]
	movs r7, #0xee
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x268]
	ldr r0, .L0807272C @ =0x000079D8
	add r0, sb
	str r0, [sp, #0x274]
	movs r1, #0xf4
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x26c]
	ldr r4, .L08072730 @ =0x00007EDC
	add r4, sb
	str r4, [sp, #0x2a4]
	movs r5, #0xfa
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x270]
	ldr r7, .L08072734 @ =0x000084E0
	add r7, sb
	str r7, [sp, #0x278]
	b .L0807274C
	.align 2, 0
.L080726D8: .4byte 0x00004B04
.L080726DC: .4byte 0x00004F08
.L080726E0: .4byte 0x0000510C
.L080726E4: .4byte 0x00005310
.L080726E8: .4byte 0x00005394
.L080726EC: .4byte 0x00005418
.L080726F0: .4byte 0x0000551C
.L080726F4: .4byte 0x00005620
.L080726F8: .4byte 0x00005CA4
.L080726FC: .4byte 0x00006028
.L08072700: .4byte 0x0000622C
.L08072704: .4byte 0x00006430
.L08072708: .4byte 0x000064B4
.L0807270C: .4byte 0x00006B38
.L08072710: .4byte 0x00006D3C
.L08072714: .4byte 0x00006E40
.L08072718: .4byte 0x00006FC4
.L0807271C: .4byte 0x00007148
.L08072720: .4byte 0x000071CC
.L08072724: .4byte 0x00007250
.L08072728: .4byte 0x000078D4
.L0807272C: .4byte 0x000079D8
.L08072730: .4byte 0x00007EDC
.L08072734: .4byte 0x000084E0
.L08072738:
	cmp r3, #0
	beq .L08072748
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072748:
	adds r2, #0x10
	adds r3, #0x10
.L0807274C:
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08072738
	adds r5, r3, #0
	ldr r1, [sp, #0xa0]
	cmp r1, #1
	bne .L0807276E
	cmp r5, #0
	beq .L0807276A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807276A:
	adds r5, #0x10
	b .L08072790
.L0807276E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807278E
.L08072776:
	cmp r2, #0
	beq .L08072786
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072786:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08072776
.L0807278E:
	adds r5, r2, #0
.L08072790:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080727A0
.L0807279A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807279A
.L080727A0:
	cmp r0, #0
	beq .L080727A8
	bl free
.L080727A8:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080727B4:
	ldr r3, .L0807280C @ =gUnk_080FBEFC
	movs r1, #8
	movs r2, #2
	add r0, sp, #0xa4
	strh r1, [r0]
	ldr r1, [sp, #0x2e0]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2ac]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2ac]
	ldr r2, .L08072810 @ =0x06003980
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08072814
	cmp r1, #0
	beq .L08072804
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072804:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080728DC
	.align 2, 0
.L0807280C: .4byte gUnk_080FBEFC
.L08072810: .4byte 0x06003980
.L08072814:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072830
	adds r0, r1, #0
.L08072830:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807284E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072852
	mov r0, r8
	bl func_080D3BC0
	b .L08072852
.L0807284E:
	movs r0, #0
	mov r8, r0
.L08072852:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L0807287A
.L08072860:
	cmp r3, #0
	beq .L08072870
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072870:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	bne .L08072860
.L0807287A:
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L08072896
	cmp r5, #0
	beq .L08072892
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072892:
	adds r5, #0x10
	b .L080728B8
.L08072896:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080728B6
.L0807289E:
	cmp r2, #0
	beq .L080728AE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080728AE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807289E
.L080728B6:
	adds r5, r2, #0
.L080728B8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080728C8
.L080728C2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080728C2
.L080728C8:
	cmp r0, #0
	beq .L080728D0
	bl free
.L080728D0:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080728DC:
	ldr r3, .L08072934 @ =gUnk_080FBF08
	movs r1, #0x10
	movs r2, #2
	add r0, sp, #0xb0
	strh r1, [r0]
	ldr r4, [sp, #0x2e4]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2c0]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2c0]
	ldr r2, .L08072938 @ =0x06003B80
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807293C
	cmp r1, #0
	beq .L0807292C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807292C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08072A04
	.align 2, 0
.L08072934: .4byte gUnk_080FBF08
.L08072938: .4byte 0x06003B80
.L0807293C:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xb8
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xb4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072958
	adds r0, r1, #0
.L08072958:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08072976
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0807297A
	mov r0, r8
	bl func_080D3BC0
	b .L0807297A
.L08072976:
	movs r0, #0
	mov r8, r0
.L0807297A:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L080729A2
.L08072988:
	cmp r3, #0
	beq .L08072998
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072998:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08072988
.L080729A2:
	adds r5, r3, #0
	ldr r1, [sp, #0xb8]
	cmp r1, #1
	bne .L080729BE
	cmp r5, #0
	beq .L080729BA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080729BA:
	adds r5, #0x10
	b .L080729E0
.L080729BE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080729DE
.L080729C6:
	cmp r2, #0
	beq .L080729D6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080729D6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080729C6
.L080729DE:
	adds r5, r2, #0
.L080729E0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080729F0
.L080729EA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080729EA
.L080729F0:
	cmp r0, #0
	beq .L080729F8
	bl free
.L080729F8:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08072A04:
	ldr r3, .L08072A5C @ =gUnk_080FBF1C
	movs r1, #8
	movs r2, #2
	add r0, sp, #0xbc
	strh r1, [r0]
	ldr r1, [sp, #0x210]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x284]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x284]
	ldr r2, .L08072A60 @ =0x06003F80
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08072A64
	cmp r1, #0
	beq .L08072A54
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072A54:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08072B2C
	.align 2, 0
.L08072A5C: .4byte gUnk_080FBF1C
.L08072A60: .4byte 0x06003F80
.L08072A64:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xc4
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xc0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072A80
	adds r0, r1, #0
.L08072A80:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08072A9E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072AA2
	mov r0, r8
	bl func_080D3BC0
	b .L08072AA2
.L08072A9E:
	movs r0, #0
	mov r8, r0
.L08072AA2:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L08072ACA
.L08072AB0:
	cmp r3, #0
	beq .L08072AC0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072AC0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	bne .L08072AB0
.L08072ACA:
	adds r5, r3, #0
	ldr r1, [sp, #0xc4]
	cmp r1, #1
	bne .L08072AE6
	cmp r5, #0
	beq .L08072AE2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072AE2:
	adds r5, #0x10
	b .L08072B08
.L08072AE6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08072B06
.L08072AEE:
	cmp r2, #0
	beq .L08072AFE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072AFE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08072AEE
.L08072B06:
	adds r5, r2, #0
.L08072B08:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08072B18
.L08072B12:
	adds r1, #0x10
	cmp r1, r2
	bne .L08072B12
.L08072B18:
	cmp r0, #0
	beq .L08072B20
	bl free
.L08072B20:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08072B2C:
	ldr r3, .L08072B84 @ =gUnk_080FBF28
	movs r1, #8
	movs r2, #2
	add r0, sp, #0xc8
	strh r1, [r0]
	ldr r4, [sp, #0x214]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x290]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x290]
	ldr r2, .L08072B88 @ =0x06004180
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08072B8C
	cmp r1, #0
	beq .L08072B7C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08072B7C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08072C54
	.align 2, 0
.L08072B84: .4byte gUnk_080FBF28
.L08072B88: .4byte 0x06004180
.L08072B8C:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xd0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xcc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072BA8
	adds r0, r1, #0
.L08072BA8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08072BC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072BCA
	mov r0, r8
	bl func_080D3BC0
	b .L08072BCA
.L08072BC6:
	movs r0, #0
	mov r8, r0
.L08072BCA:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L08072BF2
.L08072BD8:
	cmp r3, #0
	beq .L08072BE8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072BE8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08072BD8
.L08072BF2:
	adds r5, r3, #0
	ldr r1, [sp, #0xd0]
	cmp r1, #1
	bne .L08072C0E
	cmp r5, #0
	beq .L08072C0A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08072C0A:
	adds r5, #0x10
	b .L08072C30
.L08072C0E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08072C2E
.L08072C16:
	cmp r2, #0
	beq .L08072C26
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072C26:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08072C16
.L08072C2E:
	adds r5, r2, #0
.L08072C30:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08072C40
.L08072C3A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08072C3A
.L08072C40:
	cmp r0, #0
	beq .L08072C48
	bl free
.L08072C48:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08072C54:
	ldr r2, .L08072CA8 @ =gUnk_080FBE8C
	movs r0, #2
	add r1, sp, #0xd4
	strh r0, [r1]
	ldr r3, [sp, #0x218]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x2a0]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r4, sb
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2a0]
	ldr r2, .L08072CAC @ =0x06000700
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08072CB0
	cmp r1, #0
	beq .L08072CA0
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072CA0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08072D78
	.align 2, 0
.L08072CA8: .4byte gUnk_080FBE8C
.L08072CAC: .4byte 0x06000700
.L08072CB0:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072CCC
	adds r0, r1, #0
.L08072CCC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08072CEA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072CEE
	mov r0, r8
	bl func_080D3BC0
	b .L08072CEE
.L08072CEA:
	movs r0, #0
	mov r8, r0
.L08072CEE:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	beq .L08072D16
.L08072CFC:
	cmp r3, #0
	beq .L08072D0C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072D0C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08072CFC
.L08072D16:
	adds r5, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L08072D32
	cmp r5, #0
	beq .L08072D2E
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08072D2E:
	adds r5, #0x10
	b .L08072D54
.L08072D32:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08072D52
.L08072D3A:
	cmp r2, #0
	beq .L08072D4A
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072D4A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08072D3A
.L08072D52:
	adds r5, r2, #0
.L08072D54:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08072D64
.L08072D5E:
	adds r1, #0x10
	cmp r1, r2
	bne .L08072D5E
.L08072D64:
	cmp r0, #0
	beq .L08072D6C
	bl free
.L08072D6C:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08072D78:
	ldr r2, .L08072DCC @ =gUnk_080FBEC8
	movs r0, #2
	add r1, sp, #0xe0
	strh r0, [r1]
	ldr r3, [sp, #0x21c]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x2a8]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r4, sb
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2a8]
	ldr r2, .L08072DD0 @ =0x06000780
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08072DD4
	cmp r1, #0
	beq .L08072DC4
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072DC4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08072E9C
	.align 2, 0
.L08072DCC: .4byte gUnk_080FBEC8
.L08072DD0: .4byte 0x06000780
.L08072DD4:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xe8
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xe4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072DF0
	adds r0, r1, #0
.L08072DF0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08072E0E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072E12
	mov r0, r8
	bl func_080D3BC0
	b .L08072E12
.L08072E0E:
	movs r0, #0
	mov r8, r0
.L08072E12:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	beq .L08072E3A
.L08072E20:
	cmp r3, #0
	beq .L08072E30
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072E30:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08072E20
.L08072E3A:
	adds r5, r3, #0
	ldr r1, [sp, #0xe8]
	cmp r1, #1
	bne .L08072E56
	cmp r5, #0
	beq .L08072E52
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08072E52:
	adds r5, #0x10
	b .L08072E78
.L08072E56:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08072E76
.L08072E5E:
	cmp r2, #0
	beq .L08072E6E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072E6E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08072E5E
.L08072E76:
	adds r5, r2, #0
.L08072E78:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08072E88
.L08072E82:
	adds r1, #0x10
	cmp r1, r2
	bne .L08072E82
.L08072E88:
	cmp r0, #0
	beq .L08072E90
	bl free
.L08072E90:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08072E9C:
	ldr r3, .L08072EF4 @ =gUnk_080FBECC
	movs r1, #4
	movs r2, #2
	add r0, sp, #0xec
	strh r1, [r0]
	ldr r1, [sp, #0x220]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2b0]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2b0]
	ldr r2, .L08072EF8 @ =0x06000800
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08072EFC
	cmp r1, #0
	beq .L08072EEC
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072EEC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08072FC4
	.align 2, 0
.L08072EF4: .4byte gUnk_080FBECC
.L08072EF8: .4byte 0x06000800
.L08072EFC:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0xf4
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xf0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08072F18
	adds r0, r1, #0
.L08072F18:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08072F36
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08072F3A
	mov r0, r8
	bl func_080D3BC0
	b .L08072F3A
.L08072F36:
	movs r0, #0
	mov r8, r0
.L08072F3A:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L08072F62
.L08072F48:
	cmp r3, #0
	beq .L08072F58
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072F58:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	bne .L08072F48
.L08072F62:
	adds r5, r3, #0
	ldr r1, [sp, #0xf4]
	cmp r1, #1
	bne .L08072F7E
	cmp r5, #0
	beq .L08072F7A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072F7A:
	adds r5, #0x10
	b .L08072FA0
.L08072F7E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08072F9E
.L08072F86:
	cmp r2, #0
	beq .L08072F96
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08072F96:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08072F86
.L08072F9E:
	adds r5, r2, #0
.L08072FA0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08072FB0
.L08072FAA:
	adds r1, #0x10
	cmp r1, r2
	bne .L08072FAA
.L08072FB0:
	cmp r0, #0
	beq .L08072FB8
	bl free
.L08072FB8:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08072FC4:
	ldr r3, .L0807301C @ =gUnk_080FBF34
	movs r1, #4
	movs r2, #2
	add r0, sp, #0xf8
	strh r1, [r0]
	ldr r4, [sp, #0x224]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2b4]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2b4]
	ldr r2, .L08073020 @ =0x06000900
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08073024
	cmp r1, #0
	beq .L08073014
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08073014:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080730EC
	.align 2, 0
.L0807301C: .4byte gUnk_080FBF34
.L08073020: .4byte 0x06000900
.L08073024:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x100
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xfc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08073040
	adds r0, r1, #0
.L08073040:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807305E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08073062
	mov r0, r8
	bl func_080D3BC0
	b .L08073062
.L0807305E:
	movs r0, #0
	mov r8, r0
.L08073062:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L0807308A
.L08073070:
	cmp r3, #0
	beq .L08073080
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073080:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08073070
.L0807308A:
	adds r5, r3, #0
	ldr r1, [sp, #0x100]
	cmp r1, #1
	bne .L080730A6
	cmp r5, #0
	beq .L080730A2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080730A2:
	adds r5, #0x10
	b .L080730C8
.L080730A6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080730C6
.L080730AE:
	cmp r2, #0
	beq .L080730BE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080730BE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080730AE
.L080730C6:
	adds r5, r2, #0
.L080730C8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080730D8
.L080730D2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080730D2
.L080730D8:
	cmp r0, #0
	beq .L080730E0
	bl free
.L080730E0:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080730EC:
	ldr r1, .L080733E8 @ =gUnk_0858BA28
	ldr r0, [sp, #0x2c8]
	bl func_0805E6CC
	ldr r1, .L080733EC @ =gUnk_086678A0
	ldr r0, [sp, #0x2d0]
	bl func_0805E6CC
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x20c]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, #4
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r3, #0
	mov sl, r3
	str r3, [sp]
	movs r4, #0x20
	mov r8, r4
	str r4, [sp, #4]
	movs r2, #0x1a
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	mov r0, sb
	movs r1, #0
	bl func_08075450
	lsls r2, r5, #3
	lsls r0, r0, #3
	ldr r5, .L080733F0 @ =gUnk_080FC024
	adds r0, r0, r5
	ldr r3, [r0]
	ldr r0, [r0, #4]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	ldr r6, [sp, #0x208]
	ldr r0, [r6, #0x18]
	ldr r7, [sp, #0x20c]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #8
	movs r1, #0xe6
	lsls r1, r1, #1
	mov r2, sl
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r6, .L080733F4 @ =0x0000058C
	add r6, sb
	ldr r0, [r6]
	bl func_08010F0C
	ldr r7, [sp, #0x208]
	ldr r1, [r7, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, r8
	str r2, [sp]
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	mov r3, sl
	str r3, [sp]
	mov r4, r8
	str r4, [sp, #4]
	movs r1, #0x38
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r7, [sp, #0x20c]
	adds r7, #2
	str r7, [sp, #0x20c]
	mov r0, sb
	movs r1, #2
	bl func_08075450
	lsls r2, r7, #3
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r3, [r0]
	ldr r0, [r0, #4]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #8
	movs r1, #0xee
	lsls r1, r1, #1
	mov r2, sl
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	movs r2, #0x10
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [r6]
	bl func_08010F0C
	ldr r7, [sp, #0x208]
	ldr r1, [r7, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, r8
	str r2, [sp]
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	mov r3, sl
	str r3, [sp]
	mov r4, r8
	str r4, [sp, #4]
	movs r1, #0x38
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r7, [sp, #0x20c]
	adds r7, #2
	str r7, [sp, #0x20c]
	mov r0, sb
	movs r1, #1
	bl func_08075450
	lsls r2, r7, #3
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r3, [r0]
	ldr r0, [r0, #4]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #8
	movs r1, #0xfe
	lsls r1, r1, #1
	mov r2, sl
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [r6]
	bl func_08010F1C
	ldr r5, [sp, #0x208]
	ldr r1, [r5, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	mov r7, r8
	str r7, [sp]
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r5, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	mov r1, sl
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x38
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
	lsls r2, r2, #3
	ldr r3, .L080733F8 @ =gUnk_08751E6C
	ldr r0, .L080733FC @ =gUnk_08751EEC
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	ldr r0, [r5, #0x18]
	ldr r3, [sp, #0x20c]
	lsls r4, r3, #6
	adds r0, r0, r4
	adds r0, #8
	movs r1, #0x83
	lsls r1, r1, #2
	mov r5, sl
	str r5, [sp]
	str r7, [sp, #4]
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [r6]
	ldr r6, .L08073400 @ =0x00001C9C
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, #0
	ldr r7, [sp, #0x208]
	ldr r0, [r7, #0x18]
	adds r0, r0, r4
	adds r0, #0x32
	mov r1, sl
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #0x40
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [r7, #0x18]
	adds r1, r1, r4
	adds r1, #0x30
	mov r3, r8
	str r3, [sp]
	adds r0, r5, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	movs r7, #0x19
	adds r0, r5, #0
	movs r1, #0x64
	bl __umodsi3
	adds r6, r0, #0
	cmp r6, #0
	beq .L0807333A
	ldr r7, [sp, #0x208]
	ldr r0, [r7, #0x18]
	adds r0, r0, r4
	adds r0, #0x32
	mov r1, sl
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #0x40
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [r7, #0x18]
	adds r1, r1, r4
	adds r1, #0x30
	mov r3, r8
	str r3, [sp]
	adds r0, r6, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	movs r7, #0x13
.L0807333A:
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	adds r5, r0, #0
	cmp r5, #0
	beq .L0807337E
	ldr r6, [sp, #0x208]
	ldr r0, [r6, #0x18]
	adds r0, r0, r4
	lsls r1, r7, #1
	adds r0, r0, r1
	mov r1, sl
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #0x3c
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [r6, #0x18]
	adds r1, r1, r4
	subs r0, r7, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r3, r8
	str r3, [sp]
	adds r0, r5, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
.L0807337E:
	ldr r4, [sp, #0x20c]
	adds r4, #3
	str r4, [sp, #0x20c]
	ldr r3, .L08073404 @ =gUnk_080FBF3C
	movs r1, #0x1a
	movs r2, #2
	add r0, sp, #0x104
	strh r1, [r0]
	ldr r5, [sp, #0x22c]
	strh r2, [r5, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2c4]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r6, sb
	ldr r0, [r6]
	bl func_08008910
	movs r3, #0xd0
	lsls r3, r3, #3
	adds r5, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2c4]
	ldr r2, .L08073408 @ =0x06004380
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0807340C
	cmp r1, #0
	beq .L080733D4
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080733D4:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0x20c]
	lsls r5, r5, #6
	str r5, [sp, #0x2dc]
	ldr r6, [sp, #0x20c]
	adds r6, #2
	str r6, [sp, #0x2d8]
	b .L080734E6
	.align 2, 0
.L080733E8: .4byte gUnk_0858BA28
.L080733EC: .4byte gUnk_086678A0
.L080733F0: .4byte gUnk_080FC024
.L080733F4: .4byte 0x0000058C
.L080733F8: .4byte gUnk_08751E6C
.L080733FC: .4byte gUnk_08751EEC
.L08073400: .4byte 0x00001C9C
.L08073404: .4byte gUnk_080FBF3C
.L08073408: .4byte 0x06004380
.L0807340C:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x10c
	str r0, [r1]
	ldr r0, [r5]
	ldr r7, [sp, #0x2e8]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x108
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x108
	cmp r4, r0
	bhs .L0807342C
	adds r1, r2, #0
.L0807342C:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807344A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0807344E
	mov r0, r8
	bl func_080D3BC0
	b .L0807344E
.L0807344A:
	movs r0, #0
	mov r8, r0
.L0807344E:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r0, [sp, #0x20c]
	lsls r0, r0, #6
	str r0, [sp, #0x2dc]
	ldr r1, [sp, #0x20c]
	adds r1, #2
	str r1, [sp, #0x2d8]
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L08073482
.L08073468:
	cmp r3, #0
	beq .L08073478
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073478:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	bne .L08073468
.L08073482:
	adds r6, r3, #0
	add r0, sp, #0x10c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080734A0
	cmp r6, #0
	beq .L0807349C
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807349C:
	adds r6, #0x10
	b .L080734C2
.L080734A0:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080734C0
.L080734A8:
	cmp r2, #0
	beq .L080734B8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080734B8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080734A8
.L080734C0:
	adds r6, r2, #0
.L080734C2:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080734D2
.L080734CC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080734CC
.L080734D2:
	cmp r0, #0
	beq .L080734DA
	bl free
.L080734DA:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080734E6:
	ldr r3, .L08073540 @ =gUnk_080FBF58
	movs r1, #0xe
	movs r2, #2
	add r0, sp, #0x110
	strh r1, [r0]
	ldr r4, [sp, #0x230]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x29c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r5, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x29c]
	ldr r2, .L08073544 @ =0x06004A00
	bl func_08008F0C
	add r6, sp, #8
	mov sl, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08073548
	cmp r1, #0
	beq .L08073536
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073536:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08073616
	.align 2, 0
.L08073540: .4byte gUnk_080FBF58
.L08073544: .4byte 0x06004A00
.L08073548:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x118
	str r0, [r1]
	ldr r0, [r5]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x114
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x114
	cmp r4, r0
	bhs .L08073568
	adds r1, r2, #0
.L08073568:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08073586
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0807358A
	mov r0, r8
	bl func_080D3BC0
	b .L0807358A
.L08073586:
	movs r0, #0
	mov r8, r0
.L0807358A:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	beq .L080735B2
.L08073598:
	cmp r3, #0
	beq .L080735A8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080735A8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08073598
.L080735B2:
	adds r6, r3, #0
	add r0, sp, #0x118
	ldr r0, [r0]
	cmp r0, #1
	bne .L080735D0
	cmp r6, #0
	beq .L080735CC
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080735CC:
	adds r6, #0x10
	b .L080735F2
.L080735D0:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080735F0
.L080735D8:
	cmp r2, #0
	beq .L080735E8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080735E8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080735D8
.L080735F0:
	adds r6, r2, #0
.L080735F2:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08073602
.L080735FC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080735FC
.L08073602:
	cmp r0, #0
	beq .L0807360A
	bl free
.L0807360A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L08073616:
	ldr r3, .L08073670 @ =gUnk_080FBF68
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x11c
	strh r1, [r0]
	ldr r1, [sp, #0x234]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2b8]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2b8]
	ldr r2, .L08073674 @ =0x06004D80
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08073678
	cmp r1, #0
	beq .L08073666
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073666:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08073746
	.align 2, 0
.L08073670: .4byte gUnk_080FBF68
.L08073674: .4byte 0x06004D80
.L08073678:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x124
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x120
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x120
	cmp r4, r0
	bhs .L08073698
	adds r1, r2, #0
.L08073698:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080736B6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080736BA
	mov r0, r8
	bl func_080D3BC0
	b .L080736BA
.L080736B6:
	movs r0, #0
	mov r8, r0
.L080736BA:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L080736E2
.L080736C8:
	cmp r3, #0
	beq .L080736D8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080736D8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	bne .L080736C8
.L080736E2:
	adds r6, r3, #0
	add r0, sp, #0x124
	ldr r0, [r0]
	cmp r0, #1
	bne .L08073700
	cmp r6, #0
	beq .L080736FC
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080736FC:
	adds r6, #0x10
	b .L08073722
.L08073700:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L08073720
.L08073708:
	cmp r2, #0
	beq .L08073718
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073718:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08073708
.L08073720:
	adds r6, r2, #0
.L08073722:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08073732
.L0807372C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807372C
.L08073732:
	cmp r0, #0
	beq .L0807373A
	bl free
.L0807373A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L08073746:
	ldr r3, .L080737A0 @ =gUnk_080FBF74
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x128
	strh r1, [r0]
	ldr r4, [sp, #0x238]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2cc]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2cc]
	ldr r2, .L080737A4 @ =0x06004F80
	bl func_08008F0C
	add r6, sp, #8
	mov sl, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080737A8
	cmp r1, #0
	beq .L08073796
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073796:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08073876
	.align 2, 0
.L080737A0: .4byte gUnk_080FBF74
.L080737A4: .4byte 0x06004F80
.L080737A8:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x130
	str r0, [r1]
	ldr r0, [r5]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x12c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x12c
	cmp r4, r0
	bhs .L080737C8
	adds r1, r2, #0
.L080737C8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080737E6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080737EA
	mov r0, r8
	bl func_080D3BC0
	b .L080737EA
.L080737E6:
	movs r0, #0
	mov r8, r0
.L080737EA:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	beq .L08073812
.L080737F8:
	cmp r3, #0
	beq .L08073808
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073808:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L080737F8
.L08073812:
	adds r6, r3, #0
	add r0, sp, #0x130
	ldr r0, [r0]
	cmp r0, #1
	bne .L08073830
	cmp r6, #0
	beq .L0807382C
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807382C:
	adds r6, #0x10
	b .L08073852
.L08073830:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L08073850
.L08073838:
	cmp r2, #0
	beq .L08073848
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073848:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08073838
.L08073850:
	adds r6, r2, #0
.L08073852:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08073862
.L0807385C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807385C
.L08073862:
	cmp r0, #0
	beq .L0807386A
	bl free
.L0807386A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L08073876:
	ldr r2, .L080738CC @ =gUnk_080FBF80
	movs r0, #2
	add r1, sp, #0x134
	strh r0, [r1]
	ldr r3, [sp, #0x23c]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x27c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r4, sb
	ldr r0, [r4]
	bl func_08008910
	adds r5, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x27c]
	ldr r2, .L080738D0 @ =0x06000A00
	movs r3, #0x80
	bl func_08008F0C
	add r6, sp, #8
	mov sl, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080738D4
	cmp r1, #0
	beq .L080738C2
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080738C2:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080739A2
	.align 2, 0
.L080738CC: .4byte gUnk_080FBF80
.L080738D0: .4byte 0x06000A00
.L080738D4:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x13c
	str r0, [r1]
	ldr r0, [r5]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x138
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x138
	cmp r4, r0
	bhs .L080738F4
	adds r1, r2, #0
.L080738F4:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08073912
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08073916
	mov r0, r8
	bl func_080D3BC0
	b .L08073916
.L08073912:
	movs r0, #0
	mov r8, r0
.L08073916:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	beq .L0807393E
.L08073924:
	cmp r3, #0
	beq .L08073934
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073934:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08073924
.L0807393E:
	adds r6, r3, #0
	add r0, sp, #0x13c
	ldr r0, [r0]
	cmp r0, #1
	bne .L0807395C
	cmp r6, #0
	beq .L08073958
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08073958:
	adds r6, #0x10
	b .L0807397E
.L0807395C:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L0807397C
.L08073964:
	cmp r2, #0
	beq .L08073974
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073974:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08073964
.L0807397C:
	adds r6, r2, #0
.L0807397E:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807398E
.L08073988:
	adds r1, #0x10
	cmp r1, r2
	bne .L08073988
.L0807398E:
	cmp r0, #0
	beq .L08073996
	bl free
.L08073996:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080739A2:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x2dc]
	adds r0, r0, r2
	adds r0, #4
	movs r1, #0x87
	lsls r1, r1, #2
	movs r6, #0
	str r6, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r2, #0x1a
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x2d8]
	str r3, [sp, #0x20c]
	ldr r5, [sp, #0x208]
	ldr r1, [r5, #0x18]
	lsls r5, r3, #6
	adds r1, r1, r5
	adds r1, #6
	movs r7, #0x90
	lsls r7, r7, #1
	mov r8, r7
	str r4, [sp]
	movs r0, #1
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #8
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x88
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0x208]
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	adds r0, #0xc
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x9b
	lsls r1, r1, #2
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x1c
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0xe
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	ldr r7, .L08073C98 @ =0x0000058C
	add r7, sb
	mov sl, r7
	ldr r0, [r7]
	ldr r7, .L08073C9C @ =0x00001AA8
	adds r0, r0, r7
	bl func_0809B05C
	ldr r2, [sp, #0x208]
	ldr r1, [r2, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #0x32
	str r4, [sp]
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x50
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	ldr r0, [sp, #0x208]
	ldr r1, [r0, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #6
	str r4, [sp]
	movs r0, #1
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #8
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x88
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0x208]
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	adds r0, #0xc
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x9f
	lsls r1, r1, #2
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x1c
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0xe
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	mov r1, sl
	ldr r0, [r1]
	adds r0, r0, r7
	bl func_0809B084
	ldr r2, [sp, #0x208]
	ldr r1, [r2, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #0x32
	str r4, [sp]
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x50
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	ldr r0, [sp, #0x208]
	ldr r1, [r0, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #6
	str r4, [sp]
	movs r0, #1
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #8
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x84
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0x208]
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	adds r0, #0xc
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x9b
	lsls r1, r1, #2
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x1c
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0xe
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	mov r1, sl
	ldr r0, [r1]
	adds r0, r0, r7
	bl func_0809B0B0
	ldr r2, [sp, #0x208]
	ldr r1, [r2, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #0x32
	str r4, [sp]
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x50
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	ldr r0, [sp, #0x208]
	ldr r1, [r0, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #6
	str r4, [sp]
	movs r0, #1
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #8
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x84
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0x208]
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	adds r0, #0xc
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x9f
	lsls r1, r1, #2
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x1c
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0xe
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
	mov r1, sl
	ldr r0, [r1]
	adds r0, r0, r7
	bl func_0809B0D8
	ldr r2, [sp, #0x208]
	ldr r1, [r2, #0x18]
	lsls r5, r5, #6
	adds r1, r1, r5
	adds r1, #0x32
	str r4, [sp]
	mov r2, r8
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x50
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x20c]
	adds r4, #3
	str r4, [sp, #0x20c]
	ldr r3, .L08073CA0 @ =gUnk_080FBF84
	movs r1, #0x1a
	movs r2, #2
	add r0, sp, #0x140
	strh r1, [r0]
	ldr r5, [sp, #0x240]
	strh r2, [r5, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x280]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r6, sb
	ldr r0, [r6]
	bl func_08008910
	movs r3, #0xd0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x280]
	ldr r2, .L08073CA4 @ =0x06005180
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08073CA8
	cmp r1, #0
	beq .L08073C90
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08073C90:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08073D76
	.align 2, 0
.L08073C98: .4byte 0x0000058C
.L08073C9C: .4byte 0x00001AA8
.L08073CA0: .4byte gUnk_080FBF84
.L08073CA4: .4byte 0x06005180
.L08073CA8:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x148
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x144
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x144
	cmp r4, r0
	bhs .L08073CC8
	adds r1, r2, #0
.L08073CC8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08073CE6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08073CEA
	mov r0, r8
	bl func_080D3BC0
	b .L08073CEA
.L08073CE6:
	movs r0, #0
	mov r8, r0
.L08073CEA:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L08073D12
.L08073CF8:
	cmp r3, #0
	beq .L08073D08
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073D08:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08073CF8
.L08073D12:
	adds r5, r3, #0
	add r0, sp, #0x148
	ldr r0, [r0]
	cmp r0, #1
	bne .L08073D30
	cmp r5, #0
	beq .L08073D2C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08073D2C:
	adds r5, #0x10
	b .L08073D52
.L08073D30:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08073D50
.L08073D38:
	cmp r2, #0
	beq .L08073D48
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073D48:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08073D38
.L08073D50:
	adds r5, r2, #0
.L08073D52:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08073D62
.L08073D5C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08073D5C
.L08073D62:
	cmp r0, #0
	beq .L08073D6A
	bl free
.L08073D6A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08073D76:
	ldr r3, .L08073DD0 @ =gUnk_080FBFA0
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x14c
	strh r1, [r0]
	ldr r1, [sp, #0x244]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2bc]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2bc]
	ldr r2, .L08073DD4 @ =0x06000A80
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08073DD8
	cmp r1, #0
	beq .L08073DC6
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073DC6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08073EA6
	.align 2, 0
.L08073DD0: .4byte gUnk_080FBFA0
.L08073DD4: .4byte 0x06000A80
.L08073DD8:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x154
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x150
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x150
	cmp r4, r0
	bhs .L08073DF8
	adds r1, r2, #0
.L08073DF8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08073E16
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08073E1A
	mov r0, r8
	bl func_080D3BC0
	b .L08073E1A
.L08073E16:
	movs r0, #0
	mov r8, r0
.L08073E1A:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L08073E42
.L08073E28:
	cmp r3, #0
	beq .L08073E38
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073E38:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	bne .L08073E28
.L08073E42:
	adds r5, r3, #0
	add r0, sp, #0x154
	ldr r0, [r0]
	cmp r0, #1
	bne .L08073E60
	cmp r5, #0
	beq .L08073E5C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073E5C:
	adds r5, #0x10
	b .L08073E82
.L08073E60:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08073E80
.L08073E68:
	cmp r2, #0
	beq .L08073E78
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073E78:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08073E68
.L08073E80:
	adds r5, r2, #0
.L08073E82:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08073E92
.L08073E8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08073E8C
.L08073E92:
	cmp r0, #0
	beq .L08073E9A
	bl free
.L08073E9A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08073EA6:
	ldr r3, .L08073F00 @ =gUnk_080FBFAC
	movs r1, #4
	movs r2, #2
	add r0, sp, #0x158
	strh r1, [r0]
	ldr r4, [sp, #0x24c]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2d4]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2d4]
	ldr r2, .L08073F04 @ =0x06000C80
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08073F08
	cmp r1, #0
	beq .L08073EF6
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08073EF6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08073FD6
	.align 2, 0
.L08073F00: .4byte gUnk_080FBFAC
.L08073F04: .4byte 0x06000C80
.L08073F08:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x160
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x15c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x15c
	cmp r4, r0
	bhs .L08073F28
	adds r1, r2, #0
.L08073F28:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08073F46
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08073F4A
	mov r0, r8
	bl func_080D3BC0
	b .L08073F4A
.L08073F46:
	movs r0, #0
	mov r8, r0
.L08073F4A:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L08073F72
.L08073F58:
	cmp r3, #0
	beq .L08073F68
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073F68:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08073F58
.L08073F72:
	adds r5, r3, #0
	add r0, sp, #0x160
	ldr r0, [r0]
	cmp r0, #1
	bne .L08073F90
	cmp r5, #0
	beq .L08073F8C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08073F8C:
	adds r5, #0x10
	b .L08073FB2
.L08073F90:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08073FB0
.L08073F98:
	cmp r2, #0
	beq .L08073FA8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08073FA8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08073F98
.L08073FB0:
	adds r5, r2, #0
.L08073FB2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08073FC2
.L08073FBC:
	adds r1, #0x10
	cmp r1, r2
	bne .L08073FBC
.L08073FC2:
	cmp r0, #0
	beq .L08073FCA
	bl free
.L08073FCA:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08073FD6:
	ldr r3, .L08074030 @ =gUnk_080FBFB4
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x164
	strh r1, [r0]
	ldr r1, [sp, #0x250]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x248]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x248]
	ldr r2, .L08074034 @ =0x06000D80
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074038
	cmp r1, #0
	beq .L08074026
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074026:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08074106
	.align 2, 0
.L08074030: .4byte gUnk_080FBFB4
.L08074034: .4byte 0x06000D80
.L08074038:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x16c
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x168
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x168
	cmp r4, r0
	bhs .L08074058
	adds r1, r2, #0
.L08074058:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08074076
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0807407A
	mov r0, r8
	bl func_080D3BC0
	b .L0807407A
.L08074076:
	movs r0, #0
	mov r8, r0
.L0807407A:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L080740A2
.L08074088:
	cmp r3, #0
	beq .L08074098
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074098:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	bne .L08074088
.L080740A2:
	adds r5, r3, #0
	add r0, sp, #0x16c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080740C0
	cmp r5, #0
	beq .L080740BC
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080740BC:
	adds r5, #0x10
	b .L080740E2
.L080740C0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080740E0
.L080740C8:
	cmp r2, #0
	beq .L080740D8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080740D8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080740C8
.L080740E0:
	adds r5, r2, #0
.L080740E2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080740F2
.L080740EC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080740EC
.L080740F2:
	cmp r0, #0
	beq .L080740FA
	bl free
.L080740FA:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08074106:
	ldr r3, .L08074160 @ =gUnk_080FBFBC
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x170
	strh r1, [r0]
	ldr r4, [sp, #0x254]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x288]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x288]
	ldr r2, .L08074164 @ =0x06000F00
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074168
	cmp r1, #0
	beq .L08074156
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074156:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08074236
	.align 2, 0
.L08074160: .4byte gUnk_080FBFBC
.L08074164: .4byte 0x06000F00
.L08074168:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x178
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x174
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x174
	cmp r4, r0
	bhs .L08074188
	adds r1, r2, #0
.L08074188:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080741A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080741AA
	mov r0, r8
	bl func_080D3BC0
	b .L080741AA
.L080741A6:
	movs r0, #0
	mov r8, r0
.L080741AA:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L080741D2
.L080741B8:
	cmp r3, #0
	beq .L080741C8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080741C8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L080741B8
.L080741D2:
	adds r5, r3, #0
	add r0, sp, #0x178
	ldr r0, [r0]
	cmp r0, #1
	bne .L080741F0
	cmp r5, #0
	beq .L080741EC
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080741EC:
	adds r5, #0x10
	b .L08074212
.L080741F0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08074210
.L080741F8:
	cmp r2, #0
	beq .L08074208
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074208:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080741F8
.L08074210:
	adds r5, r2, #0
.L08074212:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074222
.L0807421C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807421C
.L08074222:
	cmp r0, #0
	beq .L0807422A
	bl free
.L0807422A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08074236:
	ldr r2, .L0807428C @ =gUnk_080FBFC4
	movs r0, #2
	add r1, sp, #0x17c
	strh r0, [r1]
	ldr r3, [sp, #0x258]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x28c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r4, sb
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x28c]
	ldr r2, .L08074290 @ =0x06001080
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074294
	cmp r1, #0
	beq .L08074282
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074282:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08074362
	.align 2, 0
.L0807428C: .4byte gUnk_080FBFC4
.L08074290: .4byte 0x06001080
.L08074294:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x184
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x180
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x180
	cmp r4, r0
	bhs .L080742B4
	adds r1, r2, #0
.L080742B4:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080742D2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080742D6
	mov r0, r8
	bl func_080D3BC0
	b .L080742D6
.L080742D2:
	movs r0, #0
	mov r8, r0
.L080742D6:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	beq .L080742FE
.L080742E4:
	cmp r3, #0
	beq .L080742F4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080742F4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L080742E4
.L080742FE:
	adds r5, r3, #0
	add r0, sp, #0x184
	ldr r0, [r0]
	cmp r0, #1
	bne .L0807431C
	cmp r5, #0
	beq .L08074318
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074318:
	adds r5, #0x10
	b .L0807433E
.L0807431C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807433C
.L08074324:
	cmp r2, #0
	beq .L08074334
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074334:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074324
.L0807433C:
	adds r5, r2, #0
.L0807433E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807434E
.L08074348:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074348
.L0807434E:
	cmp r0, #0
	beq .L08074356
	bl free
.L08074356:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08074362:
	ldr r2, .L080743B8 @ =gUnk_080FBFC8
	movs r0, #2
	add r1, sp, #0x188
	strh r0, [r1]
	ldr r3, [sp, #0x25c]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x294]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r4, sb
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x294]
	ldr r2, .L080743BC @ =0x06001100
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080743C0
	cmp r1, #0
	beq .L080743AE
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080743AE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807448E
	.align 2, 0
.L080743B8: .4byte gUnk_080FBFC8
.L080743BC: .4byte 0x06001100
.L080743C0:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x190
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x18c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x18c
	cmp r4, r0
	bhs .L080743E0
	adds r1, r2, #0
.L080743E0:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080743FE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08074402
	mov r0, r8
	bl func_080D3BC0
	b .L08074402
.L080743FE:
	movs r0, #0
	mov r8, r0
.L08074402:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	beq .L0807442A
.L08074410:
	cmp r3, #0
	beq .L08074420
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074420:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08074410
.L0807442A:
	adds r5, r3, #0
	add r0, sp, #0x190
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074448
	cmp r5, #0
	beq .L08074444
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074444:
	adds r5, #0x10
	b .L0807446A
.L08074448:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08074468
.L08074450:
	cmp r2, #0
	beq .L08074460
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074460:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074450
.L08074468:
	adds r5, r2, #0
.L0807446A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807447A
.L08074474:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074474
.L0807447A:
	cmp r0, #0
	beq .L08074482
	bl free
.L08074482:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807448E:
	ldr r4, .L080745B4 @ =0x0000058C
	add r4, sb
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUnkAge__C4Coop
	cmp r0, #0
	bne .L080744C2
	ldr r0, [r4]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetUnkCowAge__C4Barn
	cmp r0, #0
	bne .L080744C2
	ldr r0, [r4]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUnkSheepAge__C4Barn
	cmp r0, #0
	beq .L080744E6
.L080744C2:
	ldr r4, [sp, #0x208]
	ldr r0, [r4, #0x18]
	ldr r5, [sp, #0x20c]
	lsls r1, r5, #6
	adds r0, r0, r1
	adds r0, #4
	movs r1, #0xa3
	lsls r1, r1, #2
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0x1a
	movs r3, #2
	bl func_0804E9F4
	adds r5, #2
	str r5, [sp, #0x20c]
.L080744E6:
	ldr r7, .L080745B4 @ =0x0000058C
	add r7, sb
	ldr r0, [r7]
	movs r6, #0x82
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetUnkAge__C4Coop
	cmp r0, #0
	bne .L080744FC
	b .L080746DE
.L080744FC:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x20c]
	lsls r2, r2, #6
	mov r8, r2
	add r0, r8
	adds r0, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0x54
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x20c]
	lsls r2, r3, #3
	ldr r3, .L080745B8 @ =gUnk_0875268C
	ldr r0, .L080745BC @ =gUnk_0875270C
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	add r1, sp, #0x194
	movs r5, #0xc
	movs r6, #2
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [r0]
	ldr r4, .L080745C0 @ =0x00008564
	add r4, sb
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [r7]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r0, r7
	bl GetUnkName__C4Coop
	adds r2, r0, #0
	add r1, sp, #0x198
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r1, sb
	ldr r0, [r1]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r5, r0, #0
	add r0, sp, #8
	adds r1, r4, #0
	ldr r2, .L080745C4 @ =0x06006480
	bl func_08008F0C
	add r2, sp, #8
	mov sl, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, r8
	str r3, [sp, #0x2dc]
	cmp r1, r0
	beq .L080745C8
	cmp r1, #0
	beq .L080745A4
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080745A4:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r0, [sp, #0x20c]
	adds r0, #2
	str r0, [sp, #0x2d8]
	b .L0807469C
	.align 2, 0
.L080745B4: .4byte 0x0000058C
.L080745B8: .4byte gUnk_0875268C
.L080745BC: .4byte gUnk_0875270C
.L080745C0: .4byte 0x00008564
.L080745C4: .4byte 0x06006480
.L080745C8:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1a0
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x19c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x19c
	cmp r4, r0
	bhs .L080745E8
	adds r1, r2, #0
.L080745E8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08074606
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0807460A
	mov r0, r8
	bl func_080D3BC0
	b .L0807460A
.L08074606:
	movs r0, #0
	mov r8, r0
.L0807460A:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x20c]
	adds r4, #2
	str r4, [sp, #0x2d8]
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	beq .L08074638
.L0807461E:
	cmp r3, #0
	beq .L0807462E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807462E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L0807461E
.L08074638:
	adds r6, r3, #0
	add r0, sp, #0x1a0
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074656
	cmp r6, #0
	beq .L08074652
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074652:
	adds r6, #0x10
	b .L08074678
.L08074656:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L08074676
.L0807465E:
	cmp r2, #0
	beq .L0807466E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807466E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807465E
.L08074676:
	adds r6, r2, #0
.L08074678:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074688
.L08074682:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074682
.L08074688:
	cmp r0, #0
	beq .L08074690
	bl free
.L08074690:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L0807469C:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x2dc]
	adds r0, r0, r2
	adds r0, #0x18
	movs r1, #0xc9
	lsls r1, r1, #2
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x2d8]
	str r3, [sp, #0x20c]
	ldr r0, .L080747AC @ =0x0000058C
	add r0, sb
	ldr r0, [r0]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetUnkAge__C4Coop
	adds r1, r0, #0
	mov r0, sb
	ldr r2, [sp, #0x20c]
	bl func_08075220
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
.L080746DE:
	ldr r7, .L080747AC @ =0x0000058C
	add r7, sb
	ldr r0, [r7]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetUnkCowAge__C4Barn
	cmp r0, #0
	bne .L080746F4
	b .L080748D6
.L080746F4:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x20c]
	lsls r2, r2, #6
	mov r8, r2
	add r0, r8
	adds r0, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0x64
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x20c]
	lsls r2, r3, #3
	ldr r3, .L080747B0 @ =gUnk_08751B4C
	ldr r0, .L080747B4 @ =gUnk_08751BCC
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	add r1, sp, #0x1a4
	movs r5, #0xc
	movs r6, #2
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [r0]
	ldr r4, .L080747B8 @ =0x00008868
	add r4, sb
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [r7]
	movs r7, #0xbe
	lsls r7, r7, #3
	adds r0, r0, r7
	bl GetUnkCowName__C4Barn
	adds r2, r0, #0
	add r1, sp, #0x1a8
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r1, sb
	ldr r0, [r1]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r5, r0, #0
	add r0, sp, #8
	adds r1, r4, #0
	ldr r2, .L080747BC @ =0x06006780
	bl func_08008F0C
	add r2, sp, #8
	mov sl, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, r8
	str r3, [sp, #0x2dc]
	cmp r1, r0
	beq .L080747C0
	cmp r1, #0
	beq .L0807479C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807479C:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r0, [sp, #0x20c]
	adds r0, #2
	str r0, [sp, #0x2d8]
	b .L08074894
	.align 2, 0
.L080747AC: .4byte 0x0000058C
.L080747B0: .4byte gUnk_08751B4C
.L080747B4: .4byte gUnk_08751BCC
.L080747B8: .4byte 0x00008868
.L080747BC: .4byte 0x06006780
.L080747C0:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1b0
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1ac
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1ac
	cmp r4, r0
	bhs .L080747E0
	adds r1, r2, #0
.L080747E0:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080747FE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08074802
	mov r0, r8
	bl func_080D3BC0
	b .L08074802
.L080747FE:
	movs r0, #0
	mov r8, r0
.L08074802:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x20c]
	adds r4, #2
	str r4, [sp, #0x2d8]
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	beq .L08074830
.L08074816:
	cmp r3, #0
	beq .L08074826
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074826:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08074816
.L08074830:
	adds r6, r3, #0
	add r0, sp, #0x1b0
	ldr r0, [r0]
	cmp r0, #1
	bne .L0807484E
	cmp r6, #0
	beq .L0807484A
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807484A:
	adds r6, #0x10
	b .L08074870
.L0807484E:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L0807486E
.L08074856:
	cmp r2, #0
	beq .L08074866
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074866:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074856
.L0807486E:
	adds r6, r2, #0
.L08074870:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074880
.L0807487A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807487A
.L08074880:
	cmp r0, #0
	beq .L08074888
	bl free
.L08074888:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L08074894:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x2dc]
	adds r0, r0, r2
	adds r0, #0x10
	movs r1, #0xcf
	lsls r1, r1, #2
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x2d8]
	str r3, [sp, #0x20c]
	ldr r0, .L080749A4 @ =0x0000058C
	add r0, sb
	ldr r0, [r0]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetUnkCowAge__C4Barn
	adds r1, r0, #0
	mov r0, sb
	ldr r2, [sp, #0x20c]
	bl func_08075220
	ldr r5, [sp, #0x20c]
	adds r5, #2
	str r5, [sp, #0x20c]
.L080748D6:
	ldr r7, .L080749A4 @ =0x0000058C
	add r7, sb
	ldr r0, [r7]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetUnkSheepAge__C4Barn
	cmp r0, #0
	bne .L080748EC
	b .L08074ACE
.L080748EC:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x20c]
	lsls r2, r2, #6
	mov r8, r2
	add r0, r8
	adds r0, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0x6c
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x20c]
	lsls r2, r3, #3
	ldr r3, .L080749A8 @ =gUnk_0875320C
	ldr r0, .L080749AC @ =gUnk_0875328C
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	add r1, sp, #0x1b4
	movs r5, #0xc
	movs r6, #2
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [r0]
	ldr r4, .L080749B0 @ =0x00008B6C
	add r4, sb
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [r7]
	movs r7, #0xbe
	lsls r7, r7, #3
	adds r0, r0, r7
	bl GetUnkSheepName__C4Barn
	adds r2, r0, #0
	add r1, sp, #0x1b8
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r1, sb
	ldr r0, [r1]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r5, r0, #0
	add r0, sp, #8
	adds r1, r4, #0
	ldr r2, .L080749B4 @ =0x06006A80
	bl func_08008F0C
	add r2, sp, #8
	mov sl, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, r8
	str r3, [sp, #0x2dc]
	cmp r1, r0
	beq .L080749B8
	cmp r1, #0
	beq .L08074994
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074994:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r0, [sp, #0x20c]
	adds r0, #2
	str r0, [sp, #0x2d8]
	b .L08074A8C
	.align 2, 0
.L080749A4: .4byte 0x0000058C
.L080749A8: .4byte gUnk_0875320C
.L080749AC: .4byte gUnk_0875328C
.L080749B0: .4byte 0x00008B6C
.L080749B4: .4byte 0x06006A80
.L080749B8:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1c0
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1bc
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1bc
	cmp r4, r0
	bhs .L080749D8
	adds r1, r2, #0
.L080749D8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080749F6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080749FA
	mov r0, r8
	bl func_080D3BC0
	b .L080749FA
.L080749F6:
	movs r0, #0
	mov r8, r0
.L080749FA:
	adds r6, r0, #0
	str r6, [sp, #0x2ec]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x20c]
	adds r4, #2
	str r4, [sp, #0x2d8]
	ldr r6, [sp, #0x2e8]
	cmp r2, r6
	beq .L08074A28
.L08074A0E:
	cmp r3, #0
	beq .L08074A1E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074A1E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L08074A0E
.L08074A28:
	adds r6, r3, #0
	add r0, sp, #0x1c0
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074A46
	cmp r6, #0
	beq .L08074A42
	adds r0, r6, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074A42:
	adds r6, #0x10
	b .L08074A68
.L08074A46:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L08074A66
.L08074A4E:
	cmp r2, #0
	beq .L08074A5E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074A5E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074A4E
.L08074A66:
	adds r6, r2, #0
.L08074A68:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074A78
.L08074A72:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074A72
.L08074A78:
	cmp r0, #0
	beq .L08074A80
	bl free
.L08074A80:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L08074A8C:
	ldr r1, [sp, #0x208]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x2dc]
	adds r0, r0, r2
	adds r0, #0x14
	movs r1, #0xd5
	lsls r1, r1, #2
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x2d8]
	str r3, [sp, #0x20c]
	ldr r0, .L08074B28 @ =0x0000058C
	add r0, sb
	ldr r0, [r0]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetUnkSheepAge__C4Barn
	adds r1, r0, #0
	mov r0, sb
	ldr r2, [sp, #0x20c]
	bl func_08075220
	ldr r5, [sp, #0x20c]
	adds r5, #3
	str r5, [sp, #0x20c]
.L08074ACE:
	ldr r3, .L08074B2C @ =gUnk_080FBFCC
	movs r1, #0x1a
	movs r2, #2
	add r0, sp, #0x1c4
	strh r1, [r0]
	ldr r6, [sp, #0x260]
	strh r2, [r6, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x298]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r7, sb
	ldr r0, [r7]
	bl func_08008910
	movs r3, #0xd0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x298]
	ldr r2, .L08074B30 @ =0x06005800
	bl func_08008F0C
	add r0, sp, #8
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074B34
	cmp r1, #0
	beq .L08074B1E
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074B1E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08074C02
	.align 2, 0
.L08074B28: .4byte 0x0000058C
.L08074B2C: .4byte gUnk_080FBFCC
.L08074B30: .4byte 0x06005800
.L08074B34:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1cc
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x1c8
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1c8
	cmp r4, r0
	bhs .L08074B54
	adds r1, r2, #0
.L08074B54:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08074B72
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08074B76
	mov r0, r8
	bl func_080D3BC0
	b .L08074B76
.L08074B72:
	movs r0, #0
	mov r8, r0
.L08074B76:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L08074B9E
.L08074B84:
	cmp r3, #0
	beq .L08074B94
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074B94:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08074B84
.L08074B9E:
	adds r5, r3, #0
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074BBC
	cmp r5, #0
	beq .L08074BB8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074BB8:
	adds r5, #0x10
	b .L08074BDE
.L08074BBC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08074BDC
.L08074BC4:
	cmp r2, #0
	beq .L08074BD4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074BD4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074BC4
.L08074BDC:
	adds r5, r2, #0
.L08074BDE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074BEE
.L08074BE8:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074BE8
.L08074BEE:
	cmp r0, #0
	beq .L08074BF6
	bl free
.L08074BF6:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08074C02:
	ldr r3, .L08074C5C @ =gUnk_080FBFE8
	movs r1, #4
	movs r2, #2
	add r0, sp, #0x1d0
	strh r1, [r0]
	ldr r1, [sp, #0x264]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x228]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r2, sb
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x228]
	ldr r2, .L08074C60 @ =0x06001180
	bl func_08008F0C
	add r3, sp, #8
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074C64
	cmp r1, #0
	beq .L08074C52
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074C52:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08074D32
	.align 2, 0
.L08074C5C: .4byte gUnk_080FBFE8
.L08074C60: .4byte 0x06001180
.L08074C64:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1d8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x2e8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1d4
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1d4
	cmp r4, r0
	bhs .L08074C84
	adds r1, r2, #0
.L08074C84:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08074CA2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08074CA6
	mov r0, r8
	bl func_080D3BC0
	b .L08074CA6
.L08074CA2:
	movs r0, #0
	mov r8, r0
.L08074CA6:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x2e8]
	cmp r2, r4
	beq .L08074CCE
.L08074CB4:
	cmp r3, #0
	beq .L08074CC4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074CC4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	bne .L08074CB4
.L08074CCE:
	adds r5, r3, #0
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074CEC
	cmp r5, #0
	beq .L08074CE8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074CE8:
	adds r5, #0x10
	b .L08074D0E
.L08074CEC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08074D0C
.L08074CF4:
	cmp r2, #0
	beq .L08074D04
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074D04:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074CF4
.L08074D0C:
	adds r5, r2, #0
.L08074D0E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074D1E
.L08074D18:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074D18
.L08074D1E:
	cmp r0, #0
	beq .L08074D26
	bl free
.L08074D26:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r1, [sp, #0x2ec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08074D32:
	ldr r3, .L08074D8C @ =gUnk_080FBFF0
	movs r1, #0x14
	movs r2, #2
	add r0, sp, #0x1dc
	strh r1, [r0]
	ldr r4, [sp, #0x268]
	strh r2, [r4, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x274]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r5, sb
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x274]
	ldr r2, .L08074D90 @ =0x06001280
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074D94
	cmp r1, #0
	beq .L08074D82
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074D82:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08074E62
	.align 2, 0
.L08074D8C: .4byte gUnk_080FBFF0
.L08074D90: .4byte 0x06001280
.L08074D94:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1e4
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x1e0
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1e0
	cmp r4, r0
	bhs .L08074DB4
	adds r1, r2, #0
.L08074DB4:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08074DD2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08074DD6
	mov r0, r8
	bl func_080D3BC0
	b .L08074DD6
.L08074DD2:
	movs r0, #0
	mov r8, r0
.L08074DD6:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L08074DFE
.L08074DE4:
	cmp r3, #0
	beq .L08074DF4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074DF4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08074DE4
.L08074DFE:
	adds r5, r3, #0
	add r0, sp, #0x1e4
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074E1C
	cmp r5, #0
	beq .L08074E18
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074E18:
	adds r5, #0x10
	b .L08074E3E
.L08074E1C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08074E3C
.L08074E24:
	cmp r2, #0
	beq .L08074E34
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074E34:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074E24
.L08074E3C:
	adds r5, r2, #0
.L08074E3E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074E4E
.L08074E48:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074E48
.L08074E4E:
	cmp r0, #0
	beq .L08074E56
	bl free
.L08074E56:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08074E62:
	ldr r5, .L08074F2C @ =0x0000058C
	add r5, sb
	ldr r0, [r5]
	ldr r1, .L08074F30 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E97C
	cmp r0, #0
	beq .L08074ED4
	ldr r2, [sp, #0x208]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x20c]
	lsls r1, r3, #6
	adds r0, r0, r1
	adds r0, #4
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r6, #0
	str r6, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r2, #0x1a
	movs r3, #2
	bl func_0804E9F4
	ldr r7, [sp, #0x20c]
	adds r7, #2
	ldr r0, [r5]
	ldr r1, .L08074F30 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E97C
	ldr r2, [sp, #0x208]
	ldr r1, [r2, #0x18]
	lsls r5, r7, #6
	adds r1, r1, r5
	adds r1, #8
	movs r2, #0x90
	lsls r2, r2, #1
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0xa
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x94
	movs r2, #0x14
	movs r3, #2
	bl func_0804E9F4
	adds r4, r7, #0
	adds r4, #3
	str r4, [sp, #0x20c]
.L08074ED4:
	ldr r3, .L08074F34 @ =gUnk_080FC008
	movs r1, #0x18
	movs r2, #2
	add r0, sp, #0x1e8
	strh r1, [r0]
	ldr r5, [sp, #0x26c]
	strh r2, [r5, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x2a4]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r6, sb
	ldr r0, [r6]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x2a4]
	ldr r2, .L08074F38 @ =0x06005E80
	bl func_08008F0C
	add r7, sp, #8
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08074F3C
	cmp r1, #0
	beq .L08074F24
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074F24:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807500A
	.align 2, 0
.L08074F2C: .4byte 0x0000058C
.L08074F30: .4byte 0x00001BD8
.L08074F34: .4byte gUnk_080FC008
.L08074F38: .4byte 0x06005E80
.L08074F3C:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1f0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x2e8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x1ec
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1ec
	cmp r4, r0
	bhs .L08074F5C
	adds r1, r2, #0
.L08074F5C:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08074F7A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08074F7E
	mov r0, r8
	bl func_080D3BC0
	b .L08074F7E
.L08074F7A:
	movs r0, #0
	mov r8, r0
.L08074F7E:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	beq .L08074FA6
.L08074F8C:
	cmp r3, #0
	beq .L08074F9C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074F9C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x2e8]
	cmp r2, r0
	bne .L08074F8C
.L08074FA6:
	adds r5, r3, #0
	add r0, sp, #0x1f0
	ldr r0, [r0]
	cmp r0, #1
	bne .L08074FC4
	cmp r5, #0
	beq .L08074FC0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08074FC0:
	adds r5, #0x10
	b .L08074FE6
.L08074FC4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08074FE4
.L08074FCC:
	cmp r2, #0
	beq .L08074FDC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08074FDC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08074FCC
.L08074FE4:
	adds r5, r2, #0
.L08074FE6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08074FF6
.L08074FF0:
	adds r1, #0x10
	cmp r1, r2
	bne .L08074FF0
.L08074FF6:
	cmp r0, #0
	beq .L08074FFE
	bl free
.L08074FFE:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807500A:
	ldr r2, .L08075060 @ =gUnk_080FBE8C
	movs r0, #2
	add r1, sp, #0x1f4
	strh r0, [r1]
	ldr r3, [sp, #0x270]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x278]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	mov r4, sb
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, [sp, #0x278]
	ldr r2, .L08075064 @ =0x06001780
	movs r3, #0x80
	bl func_08008F0C
	add r5, sp, #8
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08075068
	cmp r1, #0
	beq .L08075056
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08075056:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08075136
	.align 2, 0
.L08075060: .4byte gUnk_080FBE8C
.L08075064: .4byte 0x06001780
.L08075068:
	str r1, [sp, #0x2e8]
	movs r0, #1
	add r1, sp, #0x1fc
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x2e8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x1f8
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1f8
	cmp r4, r0
	bhs .L08075088
	adds r1, r2, #0
.L08075088:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080750A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080750AA
	mov r0, r8
	bl func_080D3BC0
	b .L080750AA
.L080750A6:
	movs r0, #0
	mov r8, r0
.L080750AA:
	adds r5, r0, #0
	str r5, [sp, #0x2ec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x2e8]
	cmp r2, r5
	beq .L080750D2
.L080750B8:
	cmp r3, #0
	beq .L080750C8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080750C8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x2e8]
	cmp r2, r7
	bne .L080750B8
.L080750D2:
	adds r5, r3, #0
	add r0, sp, #0x1fc
	ldr r0, [r0]
	cmp r0, #1
	bne .L080750F0
	cmp r5, #0
	beq .L080750EC
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080750EC:
	adds r5, #0x10
	b .L08075112
.L080750F0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08075110
.L080750F8:
	cmp r2, #0
	beq .L08075108
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08075108:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080750F8
.L08075110:
	adds r5, r2, #0
.L08075112:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08075122
.L0807511C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807511C
.L08075122:
	cmp r0, #0
	beq .L0807512A
	bl free
.L0807512A:
	ldr r0, [sp, #0x2ec]
	add r0, r8
	ldr r7, [sp, #0x2ec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08075136:
	ldr r7, .L08075210 @ =0x0000058C
	add r7, sb
	ldr r0, [r7]
	ldr r1, .L08075214 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E988
	cmp r0, #0
	beq .L080751E4
	ldr r2, [sp, #0x208]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x20c]
	lsls r1, r3, #6
	adds r0, r0, r1
	adds r0, #8
	movs r1, #0xbd
	lsls r1, r1, #2
	movs r6, #0
	str r6, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r2, #0x18
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x18]
	add r0, sp, #0x200
	ldr r3, [r4, #0xc]
	add r1, sp, #0x18
	ldr r2, .L08075218 @ =0x0000086B
	bl _call_via_r3
	add r0, sp, #0x200
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x78
	ldr r3, [r4, #0x10]
	add r1, sp, #0x18
	bl _call_via_r3
	add r1, sp, #0x78
	adds r0, r1, #0
	movs r2, #0x20
	bl memcpy
	ldr r4, [sp, #0x20c]
	lsls r2, r4, #3
	ldr r3, [sp, #0x80]
	add r0, sp, #0x88
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x10
	bl func_08075334
	adds r4, #2
	str r4, [sp, #0x20c]
	ldr r0, [r7]
	ldr r7, .L08075214 @ =0x00001BD8
	adds r0, r0, r7
	bl func_0800E988
	ldr r2, [sp, #0x208]
	ldr r1, [r2, #0x18]
	lsls r4, r4, #6
	adds r1, r1, r4
	adds r1, #0x32
	movs r2, #0x90
	lsls r2, r2, #1
	str r5, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0x208]
	ldr r0, [r3, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	str r6, [sp]
	str r5, [sp, #4]
	movs r1, #0xbc
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x20c]
	adds r4, #3
	str r4, [sp, #0x20c]
.L080751E4:
	mov r5, sb
	ldr r0, [r5, #4]
	ldr r6, [sp, #0x20c]
	lsls r1, r6, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, .L0807521C @ =vtable_unk_080E5A28
	str r0, [sp, #0x48]
	str r0, [sp, #0x18]
	mov r0, sb
	movs r3, #0xbc
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08075210: .4byte 0x0000058C
.L08075214: .4byte 0x00001BD8
.L08075218: .4byte 0x0000086B
.L0807521C: .4byte vtable_unk_080E5A28

	thumb_func_start func_08075220
func_08075220: @ 0x08075220
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r1
	mov sl, r2
	movs r6, #0x1a
	ldr r0, [r0, #4]
	mov r8, r0
	cmp r1, #0
	beq .L08075316
	mov r0, sb
	movs r1, #0x1e
	bl __umodsi3
	adds r7, r0, #0
	cmp r7, #0
	beq .L0807527E
	mov r1, r8
	ldr r0, [r1, #0x18]
	mov r1, sl
	lsls r5, r1, #6
	adds r0, r0, r5
	adds r0, #0x34
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x88
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	mov r0, r8
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	adds r1, #0x32
	movs r2, #0x90
	lsls r2, r2, #1
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl func_0804EDB4
	movs r6, #0x16
.L0807527E:
	mov r0, sb
	movs r1, #0x1e
	bl __udivsi3
	adds r7, r0, #0
	movs r0, #3
	ands r7, r0
	cmp r7, #0
	beq .L080752CE
	subs r6, #4
	mov r1, r8
	ldr r0, [r1, #0x18]
	mov r1, sl
	lsls r5, r1, #6
	adds r0, r0, r5
	lsls r1, r6, #1
	adds r0, r0, r1
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x84
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	mov r0, r8
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	subs r0, r6, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0x90
	lsls r2, r2, #1
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl func_0804EDB4
	subs r6, #6
.L080752CE:
	mov r0, sb
	movs r1, #0x78
	bl __udivsi3
	cmp r0, #0
	beq .L08075316
	subs r6, #6
	mov r1, r8
	ldr r0, [r1, #0x18]
	mov r1, sl
	lsls r5, r1, #6
	adds r0, r0, r5
	lsls r1, r6, #1
	adds r0, r0, r1
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x78
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	mov r0, r8
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	subs r0, r6, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0x90
	lsls r2, r2, #1
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl func_0804EDB4
.L08075316:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.if 0
	thumb_func_start func_08075328
func_08075328: @ 0x08075328
	push {lr}
	bl func_08070CA4
	movs r0, #1
	pop {r1}
	bx r1

	.endif
	.section .text.tail08075334, "ax", %progbits
	thumb_func_start func_08075334
func_08075334: @ 0x08075334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r4, [sp, #0x3c]
	str r1, [sp, #4]
	mov r1, sp
	strh r2, [r1]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	ldr r1, .L08075374 @ =0x00000594
	adds r5, r0, r1
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08075378
	cmp r1, #0
	beq .L0807536A
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807536A:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0807543E
	.align 2, 0
.L08075374: .4byte 0x00000594
.L08075378:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r5]
	mov r6, sl
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L08075392
	adds r0, r2, #0
.L08075392:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080753B2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080753AE
	mov r0, r8
	bl func_080D3BC0
.L080753AE:
	ldr r1, [r5]
	b .L080753B6
.L080753B2:
	movs r0, #0
	mov r8, r0
.L080753B6:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080753DA
.L080753C2:
	cmp r3, #0
	beq .L080753D2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080753D2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080753C2
.L080753DA:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080753F6
	cmp r4, #0
	beq .L080753F2
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080753F2:
	adds r4, #0x10
	b .L08075418
.L080753F6:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L08075416
.L080753FE:
	cmp r2, #0
	beq .L0807540E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807540E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080753FE
.L08075416:
	adds r4, r2, #0
.L08075418:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08075428
.L08075422:
	adds r0, #0x10
	cmp r0, r2
	bne .L08075422
.L08075428:
	cmp r1, #0
	beq .L08075432
	adds r0, r1, #0
	bl free
.L08075432:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r1, [sp, #0x18]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0807543E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08075450
func_08075450: @ 0x08075450
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r5, #0
	movs r6, #0
	movs r4, #0
.L08075460:
	ldr r0, .L08075494 @ =0x0000058C
	add r0, r8
	ldr r0, [r0]
	ldr r1, .L08075498 @ =0x00001CD4
	adds r0, r0, r1
	adds r1, r4, #0
	bl func_080A031C
	cmp r0, #0
	beq .L08075482
	adds r1, r7, #0
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	cmp r5, r0
	bhs .L08075482
	adds r6, r4, #0
	adds r5, r0, #0
.L08075482:
	adds r4, #1
	cmp r4, #6
	ble .L08075460
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08075494: .4byte 0x0000058C
.L08075498: .4byte 0x00001CD4

	thumb_func_start func_0807549C
func_0807549C: @ 0x0807549C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	cmp r1, #1
	beq .L080754D4
	cmp r1, #1
	bgt .L080754B4
	cmp r1, #0
	beq .L080754BA
	b .L08075524
.L080754B4:
	cmp r1, #2
	beq .L080754F0
	b .L08075524
.L080754BA:
	ldr r0, .L080754D0 @ =0x000042FC
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_08070DE4
	b .L08075504
	.align 2, 0
.L080754D0: .4byte 0x000042FC
.L080754D4:
	ldr r0, .L080754EC @ =0x00004B94
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_080713B8
	b .L08075504
	.align 2, 0
.L080754EC: .4byte 0x00004B94
.L080754F0:
	ldr r0, .L08075554 @ =0x00008E6C
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_080722DC
.L08075504:
	mov r6, sp
	adds r5, r0, #0
	ldr r1, [sp]
	cmp r5, r1
	beq .L08075522
	cmp r1, #0
	beq .L08075522
	ldr r2, .L08075558 @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08075522:
	str r5, [r6]
.L08075524:
	ldr r0, [sp]
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r1, sp, #4
	adds r0, r4, #0
	bl func_08076B94
	ldr r1, [sp]
	cmp r1, #0
	beq .L0807554A
	ldr r2, .L08075558 @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0807554A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08075554: .4byte 0x00008E6C
.L08075558: .4byte 0x000005B4

	thumb_func_start func_0807555C
func_0807555C: @ 0x0807555C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r5, r6, r1
	ldr r4, [r5]
	lsls r4, r4, #3
	adds r4, #4
	add r4, r8
	adds r0, r6, #0
	bl func_08076BEC
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl func_08076B64
	cmp r7, #0
	beq .L08075594
	cmp r7, #1
	beq .L080755A6
	b .L080755B4
.L08075594:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	mov r2, r8
	ldr r1, [r2]
	cmp r0, r1
	bne .L080755B4
	str r7, [r5]
	b .L080755B4
.L080755A6:
	ldr r0, [r5]
	cmp r0, #0
	bne .L080755B0
	mov r1, r8
	ldr r0, [r1]
.L080755B0:
	subs r0, #1
	str r0, [r5]
.L080755B4:
	movs r2, #0x92
	lsls r2, r2, #1
	adds r4, r6, r2
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r5, r6, r0
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_0807549C
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, #4
	adds r4, r4, r0
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r0, r6, #0
	bl func_08076BE0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
