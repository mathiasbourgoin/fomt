	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_08057E5C
func_08057E5C: @ 0x08057E5C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_08052984
	ldr r1, [sp]
	cmp r1, #0
	beq .L08057E7E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08057E7E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08057E90
func_08057E90: @ 0x08057E90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r5, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	adds r3, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	subs r0, #0x22
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, #0
	movs r3, #0xff
.L08057EC4:
	adds r1, r5, r2
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0xb
	ble .L08057EC4
	movs r4, #0
.L08057ED4:
	adds r6, r5, r4
	adds r0, r4, #1
	mov r8, r0
	adds r7, r6, #0
.L08057EDC:
	bl rand
	asrs r0, r0, #8
	movs r1, #0x28
	bl __modsi3
	strb r0, [r6]
	movs r2, #0
	movs r1, #0
.L08057EEE:
	cmp r4, r1
	beq .L08057EFE
	adds r0, r5, r1
	ldrb r0, [r0]
	ldrb r3, [r7]
	cmp r0, r3
	bne .L08057EFE
	movs r2, #1
.L08057EFE:
	adds r1, #1
	cmp r1, #0xb
	ble .L08057EEE
	cmp r2, #0
	bne .L08057EDC
	mov r4, r8
	cmp r4, #0xb
	ble .L08057ED4
	adds r0, r5, #0
	mov r1, sb
	bl func_08057F64
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08057F24
func_08057F24: @ 0x08057F24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldrb r4, [r5]
	lsls r3, r4, #0x1e
	lsrs r3, r3, #0x1e
	adds r3, #1
	movs r2, #3
	ands r3, r2
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r5]
	bl func_08057F64
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08057F4C
func_08057F4C: @ 0x08057F4C
	push {lr}
	movs r2, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne .L08057F5E
	movs r2, #1
.L08057F5E:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start func_08057F64
func_08057F64: @ 0x08057F64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	mov r8, r1
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne .L08057F8E
	ldr r0, [sp]
	adds r0, #0x2e
	ldrb r0, [r0]
	lsrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	b .L08057F90
.L08057F8E:
	movs r1, #0
.L08057F90:
	str r1, [sp, #4]
	ldr r7, [sp]
	adds r7, #0xc
	movs r0, #0
	mov sb, r0
	ldr r1, [sp]
	adds r1, #0x2c
	str r1, [sp, #8]
	ldr r0, .L08057FB0 @ =gUnk_080FA71C
	mov sl, r0
.L08057FA4:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne .L08057FB4
.L08057FAA:
	mov r4, sb
	b .L08057FDA
	.align 2, 0
.L08057FB0: .4byte gUnk_080FA71C
.L08057FB4:
	mov r0, r8
	cmp r0, #2
	beq .L08057FD0
	cmp r0, #2
	bhi .L08057FC4
	cmp r0, #1
	beq .L08057FAA
	b .L08057FD8
.L08057FC4:
	mov r1, r8
	cmp r1, #3
	beq .L08057FAA
	cmp r1, #4
	beq .L08057FD4
	b .L08057FD8
.L08057FD0:
	movs r4, #4
	b .L08057FDA
.L08057FD4:
	movs r4, #5
	b .L08057FDA
.L08057FD8:
	movs r4, #6
.L08057FDA:
	lsls r4, r4, #4
	mov r1, sl
	adds r0, r4, r1
	ldr r6, [r0]
	mov r0, sl
	adds r0, #4
	adds r0, r4, r0
	ldr r5, [r0]
	bl rand
	subs r1, r5, r6
	bl __modsi3
	adds r0, r0, r6
	strb r0, [r7]
	mov r0, sl
	adds r0, #8
	adds r0, r4, r0
	ldr r6, [r0]
	ldr r0, .L08058068 @ =gUnk_080FA728
	adds r4, r4, r0
	ldr r5, [r4]
	bl rand
	subs r1, r5, r6
	bl __modsi3
	adds r0, r0, r6
	strb r0, [r7, #1]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	add r0, sb
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r7, #2]
	ldrb r1, [r7]
	movs r0, #0xfa
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r4, r0, #0
	bl rand
	movs r1, #3
	ands r0, r1
	adds r0, #1
	adds r4, r4, r0
	strh r4, [r7, #4]
	movs r0, #1
	add sb, r0
	adds r7, #8
	mov r1, sb
	cmp r1, #3
	ble .L08057FA4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08058068: .4byte gUnk_080FA728

	thumb_func_start func_0805806C
func_0805806C: @ 0x0805806C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x18]
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r5, #0
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sl
	bl func_080084DC
	ldr r0, .L08058480 @ =vtable_unk_080E7970
	mov r1, sl
	str r0, [r1, #4]
	str r6, [r1, #8]
	str r4, [r1, #0xc]
	movs r0, #4
	bl __builtin_new
	mov r8, r0
	add r0, sp, #0xc
	bl func_0800835C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl func_0800770C
	mov r2, sl
	ldr r0, [r2, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	mov r1, sl
	str r0, [r1, #0x10]
	adds r0, r6, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	mov r0, sl
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	mov r0, sl
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	mov r0, sl
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	movs r2, #0x20
	add r2, sl
	mov r8, r2
	ldr r1, .L08058484 @ =gUnk_0872EE78
	mov r0, r8
	bl func_0805E6CC
	mov r0, sl
	adds r0, #0x50
	ldr r1, .L08058488 @ =gUnk_0873CCB4
	bl func_0805E6CC
	mov r0, sl
	adds r0, #0x80
	str r0, [sp, #0x1c]
	ldr r1, .L0805848C @ =gUnk_0873D234
	bl func_0805E6CC
	mov r1, sl
	adds r1, #0xb0
	str r1, [sp, #0x20]
	ldr r1, .L08058490 @ =gUnk_0873CF90
	ldr r0, [sp, #0x20]
	bl func_0805E6CC
	mov r0, sl
	adds r0, #0xe0
	ldr r1, .L08058494 @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r2, #0x88
	lsls r2, r2, #1
	add r2, sl
	mov sb, r2
	ldr r1, .L08058498 @ =gUnk_0873ED1C
	mov r0, sb
	bl func_0805E6CC
	movs r7, #0xa0
	lsls r7, r7, #1
	add r7, sl
	ldr r1, .L0805849C @ =gUnk_087401A4
	adds r0, r7, #0
	bl func_0805E6CC
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	str r0, [sp, #0x24]
	ldr r1, .L080584A0 @ =gUnk_08728208
	bl func_0805E6CC
	movs r6, #0xd0
	lsls r6, r6, #1
	add r6, sl
	ldr r1, .L080584A4 @ =gUnk_0858BA28
	adds r0, r6, #0
	bl func_0805E6CC
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sl
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584A8 @ =0x00000762
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0x87
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0x8f
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x90
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584AC @ =0x0000073E
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0x95
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584B0 @ =0x0000074A
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xa3
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xac
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584B4 @ =0x00000756
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xb1
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xb9
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584B8 @ =0x0000076E
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xbf
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xc7
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [sp, #0x1c]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xcd
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xd5
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xd6
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [sp, #0x20]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xdb
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xe3
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xe4
	lsls r0, r0, #2
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xe9
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xf1
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xf2
	lsls r0, r0, #2
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xf7
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	movs r0, #0xff
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584BC @ =0x00000414
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080584C0 @ =0x00000434
	add r0, sl
	strb r5, [r0]
	movs r0, #0x87
	lsls r0, r0, #3
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584C4 @ =0x0000044C
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080584C8 @ =0x0000046C
	add r0, sl
	strb r5, [r0]
	movs r0, #0x8e
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584CC @ =0x00000484
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080584D0 @ =0x000004A4
	add r0, sl
	strb r5, [r0]
	movs r0, #0x95
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584D4 @ =0x000004BC
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080584D8 @ =0x000004DC
	add r0, sl
	strb r5, [r0]
	movs r0, #0x9c
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584DC @ =0x000004F4
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080584E0 @ =0x00000514
	add r0, sl
	strb r5, [r0]
	movs r0, #0xa3
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	b .L080584E4
	.align 2, 0
.L08058480: .4byte vtable_unk_080E7970
.L08058484: .4byte gUnk_0872EE78
.L08058488: .4byte gUnk_0873CCB4
.L0805848C: .4byte gUnk_0873D234
.L08058490: .4byte gUnk_0873CF90
.L08058494: .4byte gUnk_0873DE44
.L08058498: .4byte gUnk_0873ED1C
.L0805849C: .4byte gUnk_087401A4
.L080584A0: .4byte gUnk_08728208
.L080584A4: .4byte gUnk_0858BA28
.L080584A8: .4byte 0x00000762
.L080584AC: .4byte 0x0000073E
.L080584B0: .4byte 0x0000074A
.L080584B4: .4byte 0x00000756
.L080584B8: .4byte 0x0000076E
.L080584BC: .4byte 0x00000414
.L080584C0: .4byte 0x00000434
.L080584C4: .4byte 0x0000044C
.L080584C8: .4byte 0x0000046C
.L080584CC: .4byte 0x00000484
.L080584D0: .4byte 0x000004A4
.L080584D4: .4byte 0x000004BC
.L080584D8: .4byte 0x000004DC
.L080584DC: .4byte 0x000004F4
.L080584E0: .4byte 0x00000514
.L080584E4:
	bl func_0805E824
	ldr r0, .L080587F8 @ =0x0000052C
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080587FC @ =0x0000054C
	add r0, sl
	strb r5, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [sp, #0x24]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L08058800 @ =0x00000564
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L08058804 @ =0x00000584
	add r0, sl
	strb r5, [r0]
	movs r0, #0xb1
	lsls r0, r0, #3
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L08058808 @ =0x0000091C
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L0805880C @ =0x0000059C
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	strb r5, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L08058810 @ =0x000005BC
	add r0, sl
	strb r5, [r0]
	movs r5, #0xb8
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xb9
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xba
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xbb
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xbc
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xbd
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xbe
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xbf
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xc0
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc1
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r5, #0xc2
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc3
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r5, #0xc4
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r5, #0xc5
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc6
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc7
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r4, #0xc8
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r4, #0xc9
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r4, #0xca
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xcb
	lsls r0, r0, #3
	add r0, sl
	movs r7, #3
.L080586E0:
	adds r6, r0, #0
	bl func_08007874
	adds r0, r6, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #8
	movs r5, #1
	movs r1, #0x18
	adds r1, r1, r6
	mov sb, r1
	subs r7, #1
	mov r8, r7
.L08058700:
	adds r0, r4, #0
	bl func_08007128
	movs r2, #0
	str r2, [r4, #4]
	adds r4, #8
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne .L08058700
	movs r7, #0
	adds r5, r6, #0
	adds r5, #0xc
.L0805871C:
	lsls r4, r7, #3
	adds r4, r4, r6
	adds r4, #8
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r5]
	adds r5, #8
	adds r7, #1
	cmp r7, #1
	bls .L0805871C
	mov r0, sb
	mov r7, r8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r7, r1
	bne .L080586E0
	movs r0, #0xa7
	lsls r0, r0, #5
	add r0, sl
	ldr r1, .L08058814 @ =vtable_unk_080E797C
	str r1, [r0]
	movs r4, #0
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, .L08058818 @ =0x00002C1C
	adds r0, r0, r1
	bl func_08057F4C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08058780
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, .L08058818 @ =0x00002C1C
	adds r0, r0, r1
	movs r1, #0
	movs r2, #1
	bl func_08057E90
.L08058780:
	ldr r0, .L0805881C @ =0x00001428
	add r0, sl
	mov r2, sp
	ldrb r2, [r2, #0x18]
	strb r2, [r0]
	mov r0, sl
	ldr r1, [r0, #8]
	ldr r2, .L08058820 @ =0x00001AA8
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r0, .L08058824 @ =0x00001410
	add r0, sl
	str r2, [r0]
	ldr r0, .L08058828 @ =0x00001414
	add r0, sl
	str r2, [r0]
	ldr r2, .L0805882C @ =0x00001418
	add r2, sl
	ldr r3, .L08058830 @ =0x00002C48
	adds r1, r1, r3
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xf
	str r0, [r2]
	ldr r1, .L08058834 @ =0x0001869F
	cmp r0, r1
	ble .L080587B8
	str r1, [r2]
.L080587B8:
	ldr r0, .L08058838 @ =0x00001408
	add r0, sl
	strh r4, [r0]
	ldr r0, .L0805883C @ =0x0000141E
	add r0, sl
	strh r4, [r0]
	movs r0, #0xa1
	lsls r0, r0, #5
	add r0, sl
	strh r4, [r0]
	mov r1, sl
	ldr r0, [r1, #8]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldr r1, .L08058840 @ =0x0000141C
	add r1, sl
	strh r0, [r1]
	cmp r0, #2
	bne .L0805884C
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, .L08058844 @ =0x00002C4A
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ldr r1, .L08058848 @ =0x0000140E
	add r1, sl
	b .L08058852
	.align 2, 0
.L080587F8: .4byte 0x0000052C
.L080587FC: .4byte 0x0000054C
.L08058800: .4byte 0x00000564
.L08058804: .4byte 0x00000584
.L08058808: .4byte 0x0000091C
.L0805880C: .4byte 0x0000059C
.L08058810: .4byte 0x000005BC
.L08058814: .4byte vtable_unk_080E797C
.L08058818: .4byte 0x00002C1C
.L0805881C: .4byte 0x00001428
.L08058820: .4byte 0x00001AA8
.L08058824: .4byte 0x00001410
.L08058828: .4byte 0x00001414
.L0805882C: .4byte 0x00001418
.L08058830: .4byte 0x00002C48
.L08058834: .4byte 0x0001869F
.L08058838: .4byte 0x00001408
.L0805883C: .4byte 0x0000141E
.L08058840: .4byte 0x0000141C
.L08058844: .4byte 0x00002C4A
.L08058848: .4byte 0x0000140E
.L0805884C:
	ldr r1, .L08058894 @ =0x0000140E
	add r1, sl
	movs r0, #0
.L08058852:
	strb r0, [r1]
	ldr r0, .L08058898 @ =0x00001427
	add r0, sl
	movs r1, #0
	strb r1, [r0]
	ldr r0, .L0805889C @ =0x00001426
	add r0, sl
	strb r1, [r0]
	ldr r0, .L080588A0 @ =0x00001424
	add r0, sl
	strh r1, [r0]
	ldr r1, .L080588A4 @ =0x00001429
	add r1, sl
	movs r0, #2
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2, #8]
	adds r0, #0x14
	bl GetHorse__4Farm
	ldr r1, .L080588A8 @ =0x000014DC
	add r1, sl
	str r0, [r1]
	mov r0, sl
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08058894: .4byte 0x0000140E
.L08058898: .4byte 0x00001427
.L0805889C: .4byte 0x00001426
.L080588A0: .4byte 0x00001424
.L080588A4: .4byte 0x00001429
.L080588A8: .4byte 0x000014DC

	thumb_func_start func_080588AC
func_080588AC: @ 0x080588AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x1c]
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08058994 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	movs r4, #0
	add r0, sp, #8
	mov sl, r0
	movs r5, #0
.L08058906:
	movs r0, #0x2c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r2, r6, r2
	ldr r0, [r6, #8]
	lsls r3, r4, #3
	adds r0, r0, r3
	ldr r1, .L08058998 @ =0x00002C2A
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r7, .L0805899C @ =0x0000144C
	adds r0, r2, r7
	strh r1, [r0]
	ldr r0, [r6, #8]
	adds r0, r0, r3
	ldr r1, .L080589A0 @ =0x00002C28
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r7, #3
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, [r6, #8]
	adds r0, r0, r3
	ldr r1, .L080589A4 @ =0x00002C29
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, [r6, #8]
	adds r0, r0, r3
	ldr r1, .L080589A8 @ =0x00002C2C
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, .L080589AC @ =0x00001454
	adds r0, r2, r3
	strh r1, [r0]
	adds r7, #0xc
	adds r2, r2, r7
	strh r5, [r2]
	adds r4, #1
	cmp r4, #3
	ble .L08058906
	adds r0, r6, #0
	bl func_0805C80C
	ldr r1, [r6, #8]
	ldr r3, .L080589B0 @ =0x00002C4A
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6, #8]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	ldr r1, .L080589B4 @ =0x00001428
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080589BC
	ldr r2, .L080589B8 @ =0x00001424
	adds r1, r6, r2
	movs r0, #0xd
	strh r0, [r1]
	b .L080589EE
	.align 2, 0
.L08058994: .4byte vtable_unk_080E5B80
.L08058998: .4byte 0x00002C2A
.L0805899C: .4byte 0x0000144C
.L080589A0: .4byte 0x00002C28
.L080589A4: .4byte 0x00002C29
.L080589A8: .4byte 0x00002C2C
.L080589AC: .4byte 0x00001454
.L080589B0: .4byte 0x00002C4A
.L080589B4: .4byte 0x00001428
.L080589B8: .4byte 0x00001424
.L080589BC:
	adds r0, r6, #0
	bl func_08059C94
	adds r0, r6, #0
	movs r1, #0
	bl func_08059FE0
	adds r0, r6, #0
	bl func_0805A3F0
	ldr r0, [sp, #4]
	ldr r1, .L08058A20 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080589EE:
	ldr r3, .L08058A24 @ =0x00001424
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0xd
	bne .L080589FC
	b .L08058E4C
.L080589FC:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r7, .L08058A24 @ =0x00001424
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xb
	bls .L08058A16
	b .L08058E30
.L08058A16:
	lsls r0, r0, #2
	ldr r1, .L08058A28 @ =.L08058A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08058A20: .4byte 0x00000889
.L08058A24: .4byte 0x00001424
.L08058A28: .4byte .L08058A2C
.L08058A2C: @ jump table
	.4byte .L08058A5C @ case 0
	.4byte .L08058A80 @ case 1
	.4byte .L08058CCC @ case 2
	.4byte .L08058CCC @ case 3
	.4byte .L08058CCC @ case 4
	.4byte .L08058D54 @ case 5
	.4byte .L08058DD4 @ case 6
	.4byte .L08058D0C @ case 7
	.4byte .L08058D0C @ case 8
	.4byte .L08058D0C @ case 9
	.4byte .L08058D54 @ case 10
	.4byte .L08058D88 @ case 11
.L08058A5C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08058A6C
	b .L08058E30
.L08058A6C:
	ldr r2, .L08058A78 @ =0x0000140A
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L08058A7C @ =0x00001424
	adds r1, r6, r3
	b .L08058D76
	.align 2, 0
.L08058A78: .4byte 0x0000140A
.L08058A7C: .4byte 0x00001424
.L08058A80:
	ldr r4, .L08058AC0 @ =0x00001426
	adds r5, r6, r4
	ldrb r0, [r5]
	cmp r0, #0
	bne .L08058AC8
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq .L08058B08
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r7, #0xc4
	lsls r7, r7, #4
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08058AC4 @ =0x00001F49
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	movs r0, #1
	strb r0, [r5]
	b .L08058E30
	.align 2, 0
.L08058AC0: .4byte 0x00001426
.L08058AC4: .4byte 0x00001F49
.L08058AC8:
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq .L08058ADC
	b .L08058E30
.L08058ADC:
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r7, #0xf2
	lsls r7, r7, #5
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08058B04 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	strb r4, [r5]
	b .L08058E30
	.align 2, 0
.L08058B04: .4byte 0x00001D41
.L08058B08:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08058B44
	ldr r4, .L08058B28 @ =0x0000140A
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	ble .L08058B2C
	subs r1, #1
	b .L08058B2E
	.align 2, 0
.L08058B28: .4byte 0x0000140A
.L08058B2C:
	movs r1, #4
.L08058B2E:
	ldr r2, .L08058B40 @ =0x0000140A
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	b .L08058B7A
	.align 2, 0
.L08058B40: .4byte 0x0000140A
.L08058B44:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08058B7A
	ldr r3, .L08058B64 @ =0x0000140A
	adds r0, r6, r3
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #3
	bgt .L08058B68
	adds r1, #1
	b .L08058B6A
	.align 2, 0
.L08058B64: .4byte 0x0000140A
.L08058B68:
	movs r1, #0
.L08058B6A:
	ldr r7, .L08058B9C @ =0x0000140A
	adds r0, r6, r7
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
.L08058B7A:
	ldr r1, .L08058B9C @ =0x0000140A
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #4
	beq .L08058BF4
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08058BA0
	movs r4, #1
	b .L08058BE0
	.align 2, 0
.L08058B9C: .4byte 0x0000140A
.L08058BA0:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08058BB4
	movs r4, #1
	rsbs r4, r4, #0
	b .L08058BE0
.L08058BB4:
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L08058BC8
	movs r4, #0xa
	b .L08058BE0
.L08058BC8:
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08058BDC
	movs r4, #0xa
	rsbs r4, r4, #0
.L08058BDC:
	cmp r4, #0
	beq .L08058BF4
.L08058BE0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_08059780
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	b .L08058E30
.L08058BF4:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08058C24
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc6
	bl func_08008B6C
	ldr r3, .L08058C1C @ =0x00001429
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L08058C20 @ =0x00001424
	adds r1, r6, r4
	b .L08058CBC
	.align 2, 0
.L08058C1C: .4byte 0x00001429
.L08058C20: .4byte 0x00001424
.L08058C24:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne .L08058C4E
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08058C50
	ldr r7, .L08058CA0 @ =0x0000140A
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bne .L08058C50
.L08058C4E:
	movs r4, #1
.L08058C50:
	cmp r4, #0
	bne .L08058C56
	b .L08058E30
.L08058C56:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc5
	bl func_08008B6C
	movs r2, #0xa1
	lsls r2, r2, #5
	adds r1, r6, r2
	movs r0, #0
	strh r0, [r1]
	ldr r3, .L08058CA4 @ =0x00001456
	adds r2, r6, r3
	movs r3, #3
.L08058C70:
	ldrh r0, [r2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r2, #0x2c
	subs r3, #1
	cmp r3, #0
	bge .L08058C70
	movs r7, #0xa1
	lsls r7, r7, #5
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble .L08058CB0
	ldr r2, .L08058CA8 @ =0x00001429
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, .L08058CAC @ =0x00001424
	adds r1, r6, r3
	movs r0, #7
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058CA0: .4byte 0x0000140A
.L08058CA4: .4byte 0x00001456
.L08058CA8: .4byte 0x00001429
.L08058CAC: .4byte 0x00001424
.L08058CB0:
	ldr r4, .L08058CC4 @ =0x00001429
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r7, .L08058CC8 @ =0x00001424
	adds r1, r6, r7
.L08058CBC:
	movs r0, #2
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058CC4: .4byte 0x00001429
.L08058CC8: .4byte 0x00001424
.L08058CCC:
	adds r0, r6, #0
	bl func_08059878
	ldr r1, .L08058CF4 @ =0x00001429
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08058CDE
	b .L08058E30
.L08058CDE:
	ldr r2, .L08058CF8 @ =0x0000142A
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08058D00
	ldr r3, .L08058CFC @ =0x00001424
	adds r1, r6, r3
	movs r0, #5
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058CF4: .4byte 0x00001429
.L08058CF8: .4byte 0x0000142A
.L08058CFC: .4byte 0x00001424
.L08058D00:
	ldr r4, .L08058D08 @ =0x00001424
	adds r1, r6, r4
	b .L08058D44
	.align 2, 0
.L08058D08: .4byte 0x00001424
.L08058D0C:
	adds r0, r6, #0
	bl func_08059878
	ldr r7, .L08058D34 @ =0x00001429
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08058D1E
	b .L08058E30
.L08058D1E:
	ldr r1, .L08058D38 @ =0x0000142A
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08058D40
	ldr r2, .L08058D3C @ =0x00001424
	adds r1, r6, r2
	movs r0, #0xa
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058D34: .4byte 0x00001429
.L08058D38: .4byte 0x0000142A
.L08058D3C: .4byte 0x00001424
.L08058D40:
	ldr r3, .L08058D50 @ =0x00001424
	adds r1, r6, r3
.L08058D44:
	movs r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	bl func_0805A3F0
	b .L08058E30
	.align 2, 0
.L08058D50: .4byte 0x00001424
.L08058D54:
	ldr r0, [sp, #4]
	ldr r1, .L08058D80 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r4, .L08058D84 @ =0x00001424
	adds r1, r6, r4
.L08058D76:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058D80: .4byte 0x00000889
.L08058D84: .4byte 0x00001424
.L08058D88:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08058E30
	ldr r0, [r6, #8]
	ldr r7, .L08058DC8 @ =0x00001AA8
	adds r0, r0, r7
	movs r1, #0xa1
	lsls r1, r1, #5
	adds r5, r6, r1
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r4, #0x32
	muls r1, r4, r1
	bl func_0809ACC0
	ldr r3, .L08058DCC @ =0x00001410
	adds r2, r6, r3
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, .L08058DD0 @ =0x00001424
	adds r1, r6, r0
	movs r0, #0xd
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058DC8: .4byte 0x00001AA8
.L08058DCC: .4byte 0x00001410
.L08058DD0: .4byte 0x00001424
.L08058DD4:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	cmp r3, #0
	bne .L08058E30
	ldr r0, [r6, #8]
	ldr r1, .L08058E2C @ =0x00002C4A
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	str r3, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [r2]
	ldr r4, [sp, #0x1c]
	str r3, [r4]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L08058E10
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08058E10:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne .L08058E1A
	bl .L08059764
.L08058E1A:
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	bl .L08059764
	.align 2, 0
.L08058E2C: .4byte 0x00002C4A
.L08058E30:
	adds r0, r6, #0
	movs r1, #0
	bl func_0805A4DC
	adds r0, r6, #0
	bl func_0805A744
	ldr r7, .L08058FB4 @ =0x00001424
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xd
	beq .L08058E4C
	b .L080589FC
.L08058E4C:
	adds r0, r6, #0
	bl func_08008724
	movs r2, #0xc1
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r7, #0xc4
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0xbd
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	subs r7, #0x28
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xc7
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r6, #0
	bl func_0805AB08
	adds r0, r6, #0
	bl func_0805AD14
	adds r0, r6, #0
	bl func_0805B38C
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0x21
	bl func_08008B6C
	ldr r0, [sp, #4]
	ldr r1, .L08058FB8 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r1, .L08058FB4 @ =0x00001424
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x20]
	cmp r0, #0x1d
	bne .L08058F4E
	b .L08059352
.L08058F4E:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08058F7C
	ldr r4, .L08058FBC @ =0x00001427
	adds r0, r6, r4
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
.L08058F7C:
	cmp r4, #0
	beq .L08058F9E
	ldr r7, .L08058FBC @ =0x00001427
	adds r2, r6, r7
	ldrb r1, [r2]
	movs r0, #1
	eors r1, r0
	strb r1, [r2]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08058FC0
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xb8
	bl func_08008B6C
.L08058F9E:
	ldr r1, .L08058FBC @ =0x00001427
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08058FC0
	adds r0, r6, #0
	bl func_0805BC34
	b .L08059344
	.align 2, 0
.L08058FB4: .4byte 0x00001424
.L08058FB8: .4byte 0x00000889
.L08058FBC: .4byte 0x00001427
.L08058FC0:
	ldr r2, .L08058FDC @ =0x00001424
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0xd
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bls .L08058FD2
	b .L0805933E
.L08058FD2:
	lsls r0, r0, #2
	ldr r1, .L08058FE0 @ =.L08058FE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08058FDC: .4byte 0x00001424
.L08058FE0: .4byte .L08058FE4
.L08058FE4: @ jump table
	.4byte .L08059024 @ case 0
	.4byte .L08059074 @ case 1
	.4byte .L08059074 @ case 2
	.4byte .L08059074 @ case 3
	.4byte .L08059074 @ case 4
	.4byte .L08059074 @ case 5
	.4byte .L08059074 @ case 6
	.4byte .L08059074 @ case 7
	.4byte .L08059074 @ case 8
	.4byte .L080590A0 @ case 9
	.4byte .L08059134 @ case 10
	.4byte .L080591C4 @ case 11
	.4byte .L080591F0 @ case 12
	.4byte .L0805926C @ case 13
	.4byte .L080592FC @ case 14
	.4byte .L08059328 @ case 15
.L08059024:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08059034
	b .L0805933E
.L08059034:
	ldr r3, .L08059054 @ =0x00001429
	adds r0, r6, r3
	strb r1, [r0]
	ldr r4, .L08059058 @ =0x0000140E
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08059060
	ldr r0, [r6, #0x10]
	bl func_08050E5C
	ldr r7, .L0805905C @ =0x00001424
	adds r1, r6, r7
	movs r0, #0x16
	b .L0805933C
	.align 2, 0
.L08059054: .4byte 0x00001429
.L08059058: .4byte 0x0000140E
.L0805905C: .4byte 0x00001424
.L08059060:
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	ldr r0, .L08059070 @ =0x00001424
	adds r1, r6, r0
	b .L08059338
	.align 2, 0
.L08059070: .4byte 0x00001424
.L08059074:
	adds r0, r6, #0
	bl func_08059878
	ldr r2, .L08059098 @ =0x00001429
	adds r1, r6, r2
	ldrb r0, [r1]
	cmp r0, #2
	beq .L08059086
	b .L0805933E
.L08059086:
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	bl func_08050E5C
	ldr r3, .L0805909C @ =0x00001424
	adds r1, r6, r3
	b .L08059338
	.align 2, 0
.L08059098: .4byte 0x00001429
.L0805909C: .4byte 0x00001424
.L080590A0:
	ldr r4, .L08059114 @ =0x000014E4
	adds r1, r6, r4
	ldr r7, .L08059118 @ =0x0000144C
	adds r0, r6, r7
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, .L0805911C @ =0x000014E8
	adds r1, r6, r0
	ldr r2, .L08059120 @ =0x00001478
	adds r0, r6, r2
	ldrh r0, [r0]
	str r0, [r1]
	ldr r3, .L08059124 @ =0x000014EC
	adds r1, r6, r3
	subs r4, #0x40
	adds r0, r6, r4
	ldrh r0, [r0]
	str r0, [r1]
	adds r7, #0xa4
	adds r1, r6, r7
	adds r2, #0x58
	adds r0, r6, r2
	ldrh r0, [r0]
	str r0, [r1]
	subs r3, #0x10
	adds r0, r6, r3
	ldr r0, [r0]
	bl GetName__C6Animal
	adds r4, #0x54
	adds r1, r6, r4
	str r0, [r1]
	adds r0, r6, #0
	bl func_08059878
	subs r7, #0xc7
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #2
	beq .L080590F2
	b .L0805933E
.L080590F2:
	ldr r0, .L08059128 @ =0x00001424
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r2, .L0805912C @ =0x00001406
	adds r1, r6, r2
	movs r0, #0x78
	strh r0, [r1]
	ldr r3, .L08059130 @ =0x00001427
	adds r2, r6, r3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b .L0805933E
	.align 2, 0
.L08059114: .4byte 0x000014E4
.L08059118: .4byte 0x0000144C
.L0805911C: .4byte 0x000014E8
.L08059120: .4byte 0x00001478
.L08059124: .4byte 0x000014EC
.L08059128: .4byte 0x00001424
.L0805912C: .4byte 0x00001406
.L08059130: .4byte 0x00001427
.L08059134:
	ldr r4, .L080591A4 @ =0x00001406
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble .L08059148
	b .L0805933E
.L08059148:
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, .L080591A8 @ =0x00000766
	bl func_0805E860
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, .L080591AC @ =0x00000742
	bl func_0805E860
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r1, .L080591B0 @ =0x0000074E
	bl func_0805E860
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r1, .L080591B4 @ =0x0000075A
	bl func_0805E860
	adds r7, #0xe0
	adds r0, r6, r7
	ldr r1, .L080591B8 @ =0x00000772
	bl func_0805E860
	ldr r1, .L080591BC @ =0x000013FC
	adds r0, r6, r1
	strh r4, [r0]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r2, #3
	ldr r3, .L080591C0 @ =0x00001404
	adds r1, r6, r3
.L08059192:
	strh r2, [r1]
	subs r1, #2
	subs r2, #1
	cmp r2, #0
	bge .L08059192
	movs r1, #0xb9
	bl func_08008B6C
	b .L08059334
	.align 2, 0
.L080591A4: .4byte 0x00001406
.L080591A8: .4byte 0x00000766
.L080591AC: .4byte 0x00000742
.L080591B0: .4byte 0x0000074E
.L080591B4: .4byte 0x0000075A
.L080591B8: .4byte 0x00000772
.L080591BC: .4byte 0x000013FC
.L080591C0: .4byte 0x00001404
.L080591C4:
	adds r0, r6, #0
	bl func_0805C96C
	cmp r0, #3
	ble .L080591E0
	ldr r7, .L080591E8 @ =0x00001406
	adds r1, r6, r7
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, .L080591EC @ =0x00001424
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
.L080591E0:
	adds r0, r6, #0
	bl func_0805AD14
	b .L0805933E
	.align 2, 0
.L080591E8: .4byte 0x00001406
.L080591EC: .4byte 0x00001424
.L080591F0:
	ldr r2, .L0805924C @ =0x00001406
	adds r1, r6, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble .L08059202
	b .L0805933E
.L08059202:
	ldr r3, .L08059250 @ =0x0000140E
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08059230
	ldr r4, .L08059254 @ =0x000013FE
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	bne .L08059230
	ldr r2, [r6, #8]
	ldr r0, .L08059258 @ =0x00002C4A
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, .L0805925C @ =0x000014DC
	adds r0, r6, r1
	ldr r0, [r0]
	bl SetFestivalWinner__6Animal
.L08059230:
	ldr r3, .L08059260 @ =0x00001427
	adds r2, r6, r3
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	ldr r4, .L08059264 @ =0x00001429
	adds r0, r6, r4
	strb r1, [r0]
	ldr r7, .L08059268 @ =0x00001424
	adds r1, r6, r7
	b .L08059338
	.align 2, 0
.L0805924C: .4byte 0x00001406
.L08059250: .4byte 0x0000140E
.L08059254: .4byte 0x000013FE
.L08059258: .4byte 0x00002C4A
.L0805925C: .4byte 0x000014DC
.L08059260: .4byte 0x00001427
.L08059264: .4byte 0x00001429
.L08059268: .4byte 0x00001424
.L0805926C:
	ldr r0, .L080592E0 @ =0x000014E4
	adds r3, r6, r0
	ldr r1, .L080592E4 @ =0x000013FE
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x2c
	muls r0, r2, r0
	adds r0, r6, r0
	adds r1, #0x4e
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	ldr r4, .L080592E8 @ =0x000014E8
	adds r3, r6, r4
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r6, r7
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	adds r0, r6, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	adds r7, #0xec
	adds r3, r6, r7
	ldr r4, .L080592EC @ =0x00001402
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r2, r0
	adds r0, r6, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	ldr r0, .L080592F0 @ =0x000014F0
	adds r3, r6, r0
	adds r4, #2
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r2, r0
	adds r0, r6, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	adds r0, r6, #0
	bl func_08059878
	ldr r1, .L080592F4 @ =0x00001429
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne .L0805933E
	ldr r2, .L080592F8 @ =0x00001424
	adds r1, r6, r2
	b .L08059338
	.align 2, 0
.L080592E0: .4byte 0x000014E4
.L080592E4: .4byte 0x000013FE
.L080592E8: .4byte 0x000014E8
.L080592EC: .4byte 0x00001402
.L080592F0: .4byte 0x000014F0
.L080592F4: .4byte 0x00001429
.L080592F8: .4byte 0x00001424
.L080592FC:
	ldr r0, [sp, #4]
	ldr r1, .L08059320 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r3, .L08059324 @ =0x00001424
	adds r1, r6, r3
	b .L08059338
	.align 2, 0
.L08059320: .4byte 0x00000889
.L08059324: .4byte 0x00001424
.L08059328:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805933E
.L08059334:
	ldr r4, .L0805943C @ =0x00001424
	adds r1, r6, r4
.L08059338:
	ldrh r0, [r1]
	adds r0, #1
.L0805933C:
	strh r0, [r1]
.L0805933E:
	adds r0, r6, #0
	bl func_0805BC34
.L08059344:
	ldr r7, .L0805943C @ =0x00001424
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x1d
	beq .L08059352
	b .L08058F4E
.L08059352:
	adds r0, r6, #0
	bl func_08008724
	movs r2, #0
	mov sb, r2
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r7, r6, r3
	ldr r0, .L08059440 @ =0x00000664
	adds r4, r6, r0
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r5, r6, r1
	movs r2, #3
	mov r8, r2
.L08059370:
	ldr r1, [r4]
	adds r0, r5, #0
	bl func_080073E0
	mov r3, sb
	str r3, [r4]
	ldr r1, [r4, #8]
	adds r0, r7, #0
	bl func_080073E0
	mov r0, sb
	str r0, [r4, #8]
	adds r7, #0x18
	adds r4, #0x18
	adds r5, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge .L08059370
	movs r3, #0xc1
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r7, #0xc3
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xc4
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r2, .L08059444 @ =0x0000140A
	adds r1, r6, r2
	ldr r0, .L08059448 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #0
	bl func_08059C94
	adds r0, r6, #0
	movs r1, #1
	bl func_08059FE0
	ldr r3, .L0805944C @ =0x000013FE
	adds r0, r6, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r6, r0
	ldr r7, .L08059450 @ =0x00001456
	adds r1, r0, r7
	ldr r2, .L08059454 @ =0x00001454
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r1, r3, #0
	ldr r4, .L08059458 @ =0x0000141E
	adds r0, r6, r4
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L0805945C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	subs r7, #0x32
	b .L08059722
	.align 2, 0
.L0805943C: .4byte 0x00001424
.L08059440: .4byte 0x00000664
.L08059444: .4byte 0x0000140A
.L08059448: .4byte 0x0000FFFF
.L0805944C: .4byte 0x000013FE
.L08059450: .4byte 0x00001456
.L08059454: .4byte 0x00001454
.L08059458: .4byte 0x0000141E
.L0805945C: .4byte 0x00000889
.L08059460:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r2, .L08059488 @ =0x00001424
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x1d
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bls .L0805947E
	b .L08059712
.L0805947E:
	lsls r0, r0, #2
	ldr r1, .L0805948C @ =.L08059490
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08059488: .4byte 0x00001424
.L0805948C: .4byte .L08059490
.L08059490: @ jump table
	.4byte .L080594B0 @ case 0
	.4byte .L080594DC @ case 1
	.4byte .L08059534 @ case 2
	.4byte .L0805965C @ case 3
	.4byte .L08059690 @ case 4
	.4byte .L080596BC @ case 5
	.4byte .L080596F0 @ case 6
	.4byte .L08059712 @ case 7
.L080594B0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq .L080594C0
	b .L08059712
.L080594C0:
	ldr r0, [r6, #0x10]
	bl func_08050E5C
	ldr r3, .L080594D4 @ =0x00001429
	adds r0, r6, r3
	strb r4, [r0]
	ldr r4, .L080594D8 @ =0x00001424
	adds r1, r6, r4
	b .L080596DE
	.align 2, 0
.L080594D4: .4byte 0x00001429
.L080594D8: .4byte 0x00001424
.L080594DC:
	ldr r7, .L08059520 @ =0x000014F4
	adds r1, r6, r7
	ldr r2, .L08059524 @ =0x0000141C
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #1
	str r0, [r1]
	adds r0, r6, #0
	bl func_08059878
	ldr r4, .L08059528 @ =0x00001429
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #2
	beq .L080594FE
	b .L08059712
.L080594FE:
	subs r7, #0xd2
	adds r1, r6, r7
	movs r2, #0
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xa1
	lsls r1, r1, #5
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L0805952C @ =0x00001406
	adds r1, r6, r2
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, .L08059530 @ =0x00001424
	adds r1, r6, r3
	b .L080596DE
	.align 2, 0
.L08059520: .4byte 0x000014F4
.L08059524: .4byte 0x0000141C
.L08059528: .4byte 0x00001429
.L0805952C: .4byte 0x00001406
.L08059530: .4byte 0x00001424
.L08059534:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L0805957C
	ldr r4, .L08059590 @ =0x00001422
	adds r0, r6, r4
	movs r1, #0
	strh r1, [r0]
	ldr r7, .L08059594 @ =0x00001406
	adds r0, r6, r7
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bne .L0805957C
	ldr r3, .L08059598 @ =0x00001418
	adds r2, r6, r3
	adds r7, #0x18
	adds r3, r6, r7
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, .L0805959C @ =0x0001869F
	cmp r0, r1
	ble .L08059570
	str r1, [r2]
.L08059570:
	strh r4, [r3]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xba
	bl func_08008B6C
.L0805957C:
	ldr r1, .L08059594 @ =0x00001406
	adds r5, r6, r1
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L080595A0
	subs r0, r1, #1
	strh r0, [r5]
	b .L08059712
	.align 2, 0
.L08059590: .4byte 0x00001422
.L08059594: .4byte 0x00001406
.L08059598: .4byte 0x00001418
.L0805959C: .4byte 0x0001869F
.L080595A0:
	ldr r3, .L0805960C @ =0x0000141E
	adds r4, r6, r3
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r0, #0
	ble .L08059620
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xba
	bl func_08008B6C
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, .L08059610 @ =0x00001418
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, .L08059614 @ =0x0001869F
	cmp r0, r2
	ble .L080595CE
	str r2, [r1]
.L080595CE:
	movs r2, #0xa1
	lsls r2, r2, #5
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne .L080595FC
	ldr r4, .L08059618 @ =0x00001422
	adds r1, r6, r4
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble .L080595FC
	subs r0, r2, #1
	strh r0, [r1]
.L080595FC:
	ldr r1, .L08059618 @ =0x00001422
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r2, .L0805961C @ =0x00001406
	adds r0, r6, r2
	strh r1, [r0]
	b .L08059712
	.align 2, 0
.L0805960C: .4byte 0x0000141E
.L08059610: .4byte 0x00001418
.L08059614: .4byte 0x0001869F
.L08059618: .4byte 0x00001422
.L0805961C: .4byte 0x00001406
.L08059620:
	ldr r3, [r6, #8]
	ldr r4, .L08059648 @ =0x00001418
	adds r0, r6, r4
	ldr r2, [r0]
	ldr r7, .L0805964C @ =0x00002C48
	adds r3, r3, r7
	ldr r0, .L08059650 @ =0x0001FFFF
	ands r2, r0
	lsls r2, r2, #2
	ldr r0, [r3]
	ldr r1, .L08059654 @ =0xFFF80003
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	movs r0, #0x1e
	strh r0, [r5]
	ldr r0, .L08059658 @ =0x00001424
	adds r1, r6, r0
	b .L080596DE
	.align 2, 0
.L08059648: .4byte 0x00001418
.L0805964C: .4byte 0x00002C48
.L08059650: .4byte 0x0001FFFF
.L08059654: .4byte 0xFFF80003
.L08059658: .4byte 0x00001424
.L0805965C:
	ldr r2, .L08059684 @ =0x00001406
	adds r1, r6, r2
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble .L08059712
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	ldr r3, .L08059688 @ =0x00001429
	adds r0, r6, r3
	strb r4, [r0]
	ldr r4, .L0805968C @ =0x00001424
	adds r1, r6, r4
	b .L080596DE
	.align 2, 0
.L08059684: .4byte 0x00001406
.L08059688: .4byte 0x00001429
.L0805968C: .4byte 0x00001424
.L08059690:
	adds r0, r6, #0
	bl func_08059878
	ldr r7, .L080596B4 @ =0x00001429
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #2
	bne .L08059712
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08059712
	ldr r0, .L080596B8 @ =0x00001424
	adds r1, r6, r0
	b .L080596DE
	.align 2, 0
.L080596B4: .4byte 0x00001429
.L080596B8: .4byte 0x00001424
.L080596BC:
	ldr r0, [sp, #4]
	ldr r1, .L080596E8 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r2, .L080596EC @ =0x00001424
	adds r1, r6, r2
.L080596DE:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L08059712
	.align 2, 0
.L080596E8: .4byte 0x00000889
.L080596EC: .4byte 0x00001424
.L080596F0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08059712
	ldr r3, .L08059778 @ =0x00001424
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldr r0, [r6, #8]
	ldr r4, .L0805977C @ =0x00002C1C
	adds r0, r0, r4
	movs r1, #1
	bl func_08057F24
.L08059712:
	adds r0, r6, #0
	movs r1, #1
	bl func_0805A4DC
	adds r0, r6, #0
	bl func_0805A744
	ldr r7, .L08059778 @ =0x00001424
.L08059722:
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x24
	beq .L0805972E
	b .L08059460
.L0805972E:
	movs r0, #0
	str r0, [sp, #8]
	mov r2, sl
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x20]
	str r0, [r3, #4]
	str r0, [r2]
	ldr r4, [sp, #0x1c]
	str r0, [r4]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L08059752
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08059752:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08059764
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08059764:
	ldr r0, [sp, #0x1c]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08059778: .4byte 0x00001424
.L0805977C: .4byte 0x00002C1C

	thumb_func_start func_08059780
func_08059780: @ 0x08059780
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #5
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldr r2, .L08059804 @ =0x0000140A
	adds r4, r5, r2
	ldr r7, .L08059808 @ =0x00001456
	adds r2, r5, r7
.L0805979A:
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	beq .L080597AA
	ldrh r0, [r2]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
.L080597AA:
	adds r2, #0x2c
	adds r3, #1
	cmp r3, #3
	ble .L0805979A
	ldr r0, .L0805980C @ =0x00001410
	adds r2, r5, r0
	movs r1, #0xa1
	lsls r1, r1, #5
	adds r0, r5, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x32
	muls r1, r0, r1
	ldr r0, [r2]
	subs r0, r0, r1
	movs r1, #0x32
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0x63
	ble .L080597D6
	movs r2, #0x63
.L080597D6:
	ldr r7, .L08059804 @ =0x0000140A
	adds r0, r5, r7
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r5, r0
	adds r7, #0x4c
	adds r0, r0, r7
	ldrh r3, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r2
	bne .L080597F6
	cmp r6, #0
	bgt .L0805982A
.L080597F6:
	cmp r3, #0
	bne .L08059810
	cmp r6, #0
	bge .L08059810
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	b .L0805982C
	.align 2, 0
.L08059804: .4byte 0x0000140A
.L08059808: .4byte 0x00001456
.L0805980C: .4byte 0x00001410
.L08059810:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble .L08059824
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
.L08059824:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge .L0805982C
.L0805982A:
	movs r3, #0
.L0805982C:
	ldr r2, .L0805986C @ =0x0000140A
	adds r0, r5, r2
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r1, .L08059870 @ =0x00001456
	adds r0, r0, r1
	strh r3, [r0]
	movs r7, #0xa1
	lsls r7, r7, #5
	adds r2, r5, r7
	ldrh r1, [r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r1
	strh r1, [r2]
	ldr r1, .L08059874 @ =0x00001414
	adds r4, r5, r1
	subs r7, #0x10
	adds r3, r5, r7
	movs r1, #0
	ldrsh r2, [r2, r1]
	movs r1, #0x32
	muls r2, r1, r2
	ldr r1, [r3]
	subs r1, r1, r2
	str r1, [r4]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805986C: .4byte 0x0000140A
.L08059870: .4byte 0x00001456
.L08059874: .4byte 0x00001414

	thumb_func_start func_08059878
func_08059878: @ 0x08059878
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r1, r7, #0
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080598CA
	b .L08059C82
.L080598CA:
	lsls r0, r0, #2
	ldr r1, .L080598D4 @ =.L080598D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080598D4: .4byte .L080598D8
.L080598D8: @ jump table
	.4byte .L080598F4 @ case 0
	.4byte .L08059C82 @ case 1
	.4byte .L08059C82 @ case 2
	.4byte .L08059916 @ case 3
	.4byte .L08059C82 @ case 4
	.4byte .L08059C82 @ case 5
	.4byte .L08059C82 @ case 6
.L080598F4:
	ldr r1, .L0805990C @ =0x00001429
	adds r4, r7, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne .L08059910
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strb r0, [r4]
	b .L08059C82
	.align 2, 0
.L0805990C: .4byte 0x00001429
.L08059910:
	movs r0, #2
	strb r0, [r4]
	b .L08059C82
.L08059916:
	ldr r3, .L0805992C @ =0x00001429
	adds r4, r7, r3
	ldrb r5, [r4]
	cmp r5, #5
	bne .L08059930
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strb r0, [r4]
	b .L08059C82
	.align 2, 0
.L0805992C: .4byte 0x00001429
.L08059930:
	cmp r5, #4
	bne .L080599DE
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r6, #0
	movs r3, #3
	strb r3, [r4]
	ldr r4, .L08059958 @ =0x00001424
	adds r2, r7, r4
	movs r4, #0
	ldrsh r1, [r2, r4]
	cmp r1, #7
	beq .L08059990
	cmp r1, #7
	bgt .L0805995C
	cmp r1, #2
	beq .L08059966
	b .L08059C82
	.align 2, 0
.L08059958: .4byte 0x00001424
.L0805995C:
	cmp r1, #0xe
	beq .L080599BC
	cmp r1, #0x14
	beq .L080599C8
	b .L08059C82
.L08059966:
	cmp r0, #1
	bne .L08059978
	ldr r1, .L08059974 @ =0x0000142A
	adds r0, r7, r1
	strb r6, [r0]
	strh r3, [r2]
	b .L08059C82
	.align 2, 0
.L08059974: .4byte 0x0000142A
.L08059978:
	cmp r0, #2
	beq .L0805997E
	b .L08059C82
.L0805997E:
	ldr r3, .L0805998C @ =0x0000142A
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	strh r5, [r2]
	b .L08059C82
	.align 2, 0
.L0805998C: .4byte 0x0000142A
.L08059990:
	cmp r0, #1
	bne .L080599A4
	ldr r4, .L080599A0 @ =0x0000142A
	adds r0, r7, r4
	strb r6, [r0]
	movs r0, #8
	strh r0, [r2]
	b .L08059C82
	.align 2, 0
.L080599A0: .4byte 0x0000142A
.L080599A4:
	cmp r0, #2
	beq .L080599AA
	b .L08059C82
.L080599AA:
	ldr r1, .L080599B8 @ =0x0000142A
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #9
	strh r0, [r2]
	b .L08059C82
	.align 2, 0
.L080599B8: .4byte 0x0000142A
.L080599BC:
	cmp r0, #1
	beq .L080599D8
	cmp r0, #2
	beq .L080599C6
	b .L08059C82
.L080599C6:
	b .L080599CC
.L080599C8:
	cmp r0, #1
	bne .L080599D2
.L080599CC:
	movs r0, #0x15
	strh r0, [r2]
	b .L08059C82
.L080599D2:
	cmp r0, #2
	beq .L080599D8
	b .L08059C82
.L080599D8:
	movs r0, #0xf
	strh r0, [r2]
	b .L08059C82
.L080599DE:
	cmp r5, #3
	beq .L080599E4
	b .L08059C82
.L080599E4:
	movs r0, #5
	strb r0, [r4]
	ldr r3, .L08059A04 @ =0x00001424
	adds r0, r7, r3
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bls .L080599FA
	b .L08059C82
.L080599FA:
	lsls r0, r0, #2
	ldr r1, .L08059A08 @ =.L08059A0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08059A04: .4byte 0x00001424
.L08059A08: .4byte .L08059A0C
.L08059A0C: @ jump table
	.4byte .L08059A8C @ case 0
	.4byte .L08059AA4 @ case 1
	.4byte .L08059AB0 @ case 2
	.4byte .L08059C82 @ case 3
	.4byte .L08059C82 @ case 4
	.4byte .L08059ABC @ case 5
	.4byte .L08059AD4 @ case 6
	.4byte .L08059AF8 @ case 7
	.4byte .L08059C82 @ case 8
	.4byte .L08059C82 @ case 9
	.4byte .L08059C82 @ case 10
	.4byte .L08059C82 @ case 11
	.4byte .L08059B04 @ case 12
	.4byte .L08059B1C @ case 13
	.4byte .L08059B44 @ case 14
	.4byte .L08059B6C @ case 15
	.4byte .L08059B98 @ case 16
	.4byte .L08059BC8 @ case 17
	.4byte .L08059C00 @ case 18
	.4byte .L08059C34 @ case 19
	.4byte .L08059C40 @ case 20
	.4byte .L08059C82 @ case 21
	.4byte .L08059C82 @ case 22
	.4byte .L08059C82 @ case 23
	.4byte .L08059C4C @ case 24
	.4byte .L08059C82 @ case 25
	.4byte .L08059C82 @ case 26
	.4byte .L08059C82 @ case 27
	.4byte .L08059C60 @ case 28
	.4byte .L08059C82 @ case 29
	.4byte .L08059C82 @ case 30
	.4byte .L08059C74 @ case 31
.L08059A8C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059A98 @ =gUnk_080FAA40
	ldr r2, .L08059A9C @ =gUnk_080FAA5C
	ldr r3, .L08059AA0 @ =gUnk_080FAA60
	b .L08059C08
	.align 2, 0
.L08059A98: .4byte gUnk_080FAA40
.L08059A9C: .4byte gUnk_080FAA5C
.L08059AA0: .4byte gUnk_080FAA60
.L08059AA4:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AAC @ =gUnk_080FAA64
	b .L08059C50
	.align 2, 0
.L08059AAC: .4byte gUnk_080FAA64
.L08059AB0:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AB8 @ =gUnk_080FAA74
	b .L08059C64
	.align 2, 0
.L08059AB8: .4byte gUnk_080FAA74
.L08059ABC:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AC8 @ =gUnk_080FAA88
	ldr r2, .L08059ACC @ =gUnk_080FAA5C
	ldr r3, .L08059AD0 @ =gUnk_080FAA60
	b .L08059C08
	.align 2, 0
.L08059AC8: .4byte gUnk_080FAA88
.L08059ACC: .4byte gUnk_080FAA5C
.L08059AD0: .4byte gUnk_080FAA60
.L08059AD4:
	ldr r1, .L08059AE4 @ =0x0000140E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08059AEC
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AE8 @ =gUnk_080FAAA4
	b .L08059C50
	.align 2, 0
.L08059AE4: .4byte 0x0000140E
.L08059AE8: .4byte gUnk_080FAAA4
.L08059AEC:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AF4 @ =gUnk_080FAAA4
	b .L08059C64
	.align 2, 0
.L08059AF4: .4byte gUnk_080FAAA4
.L08059AF8:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B00 @ =gUnk_080FAACC
	b .L08059C50
	.align 2, 0
.L08059B00: .4byte gUnk_080FAACC
.L08059B04:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B10 @ =gUnk_080FAAE0
	ldr r2, .L08059B14 @ =gUnk_080FAA5C
	ldr r3, .L08059B18 @ =gUnk_080FAA60
	b .L08059C08
	.align 2, 0
.L08059B10: .4byte gUnk_080FAAE0
.L08059B14: .4byte gUnk_080FAA5C
.L08059B18: .4byte gUnk_080FAA60
.L08059B1C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B38 @ =gUnk_080FAAFC
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059B3C @ =0x00001424
	adds r1, r7, r4
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, .L08059B40 @ =0x00001429
	adds r1, r7, r0
	b .L08059BEA
	.align 2, 0
.L08059B38: .4byte gUnk_080FAAFC
.L08059B3C: .4byte 0x00001424
.L08059B40: .4byte 0x00001429
.L08059B44:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B60 @ =gUnk_080FAB94
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059B64 @ =0x00001424
	adds r1, r7, r4
	movs r0, #0x11
	strh r0, [r1]
	ldr r0, .L08059B68 @ =0x00001429
	adds r1, r7, r0
	b .L08059BEA
	.align 2, 0
.L08059B60: .4byte gUnk_080FAB94
.L08059B64: .4byte 0x00001424
.L08059B68: .4byte 0x00001429
.L08059B6C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B8C @ =gUnk_080FABE0
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059B90 @ =0x0000149E
	adds r1, r7, r4
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, .L08059B94 @ =0x00001424
	adds r1, r7, r0
	movs r0, #0x12
	b .L08059BE4
	.align 2, 0
.L08059B8C: .4byte gUnk_080FABE0
.L08059B90: .4byte 0x0000149E
.L08059B94: .4byte 0x00001424
.L08059B98:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059BBC @ =gUnk_080FAC24
	movs r4, #0xa7
	lsls r4, r4, #5
	adds r2, r7, r4
	bl func_08050DA0
	ldr r0, .L08059BC0 @ =0x0000149E
	adds r1, r7, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, .L08059BC4 @ =0x00001424
	adds r1, r7, r3
	movs r0, #0x13
	strh r0, [r1]
	subs r4, #0xb7
	adds r1, r7, r4
	b .L08059BEA
	.align 2, 0
.L08059BBC: .4byte gUnk_080FAC24
.L08059BC0: .4byte 0x0000149E
.L08059BC4: .4byte 0x00001424
.L08059BC8:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059BF0 @ =gUnk_080FAC8C
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059BF4 @ =0x0000149E
	adds r1, r7, r4
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, .L08059BF8 @ =0x00001424
	adds r1, r7, r0
	movs r0, #0x14
.L08059BE4:
	strh r0, [r1]
	ldr r3, .L08059BFC @ =0x00001429
	adds r1, r7, r3
.L08059BEA:
	movs r0, #3
	strb r0, [r1]
	b .L08059C82
	.align 2, 0
.L08059BF0: .4byte gUnk_080FAC8C
.L08059BF4: .4byte 0x0000149E
.L08059BF8: .4byte 0x00001424
.L08059BFC: .4byte 0x00001429
.L08059C00:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C24 @ =gUnk_080FAD08
	ldr r2, .L08059C28 @ =gUnk_080FAD20
	ldr r3, .L08059C2C @ =gUnk_080FAD28
.L08059C08:
	movs r4, #0xa7
	lsls r4, r4, #5
	adds r5, r7, r4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r0, .L08059C30 @ =0x00001429
	adds r1, r7, r0
	movs r0, #4
	strb r0, [r1]
	b .L08059C82
	.align 2, 0
.L08059C24: .4byte gUnk_080FAD08
.L08059C28: .4byte gUnk_080FAD20
.L08059C2C: .4byte gUnk_080FAD28
.L08059C30: .4byte 0x00001429
.L08059C34:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C3C @ =gUnk_080FAD34
	b .L08059C50
	.align 2, 0
.L08059C3C: .4byte gUnk_080FAD34
.L08059C40:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C48 @ =gUnk_080FAD50
	b .L08059C64
	.align 2, 0
.L08059C48: .4byte gUnk_080FAD50
.L08059C4C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C5C @ =gUnk_080FAD94
.L08059C50:
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	b .L08059C82
	.align 2, 0
.L08059C5C: .4byte gUnk_080FAD94
.L08059C60:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C70 @ =gUnk_080FADDC
.L08059C64:
	movs r4, #0xa7
	lsls r4, r4, #5
	adds r2, r7, r4
	bl func_08050DA0
	b .L08059C82
	.align 2, 0
.L08059C70: .4byte gUnk_080FADDC
.L08059C74:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C90 @ =gUnk_080FAE00
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
.L08059C82:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08059C90: .4byte gUnk_080FAE00

	thumb_func_start func_08059C94
func_08059C94: @ 0x08059C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	adds r7, r0, #0
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	add r2, sp, #0x1c
	mov sb, r2
	str r0, [sp, #0x1c]
	strh r0, [r2, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	movs r4, #0xd7
	lsls r4, r4, #2
	adds r4, r4, r7
	mov r8, r4
	lsls r2, r2, #2
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x2c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	ldr r5, [sp, #0x1c]
	movs r6, #0xc1
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08059F98 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x1c]
	movs r2, #0
	mov sl, r4
	cmp r0, #0
	beq .L08059D52
	mov r3, sb
	ldrh r2, [r3, #4]
.L08059D52:
	adds r0, r5, #0
	bl func_08008E64
	movs r4, #0
	mov sb, r4
	movs r6, #0
	mov r5, r8
	str r5, [sp, #0x98]
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0x94]
	mov r1, sp
	adds r1, #0x50
	str r1, [sp, #0x9c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r5, r7, r2
	mov r8, sl
.L08059D76:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x98]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, r8
	mov r1, r8
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r0, sb
	lsls r0, r0, #5
	ldr r2, .L08059F9C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L08059DD2
	mov r3, sp
	ldrh r2, [r3, #0x18]
.L08059DD2:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #0x14]
	movs r1, #0
	cmp r0, #0
	beq .L08059DE4
	mov r4, sp
	ldrh r1, [r4, #0x18]
.L08059DE4:
	lsrs r0, r1, #5
	add sb, r0
	adds r6, #1
	cmp r6, #3
	ble .L08059D76
	ldr r1, .L08059FA0 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r5, .L08059FA4 @ =0x0600E000
	mov r8, r5
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	ldr r0, .L08059FA8 @ =0x0600E800
	mov sb, r0
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	bl func_08008EB8
	ldr r1, .L08059FAC @ =0x0600F000
	adds r0, r4, #0
	adds r2, r6, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	movs r2, #0xf2
	lsls r2, r2, #5
	adds r1, r2, #0
	mov r3, sl
	strh r1, [r3]
	movs r5, #0
	strh r1, [r0]
	adds r0, r7, #0
	bl func_08008918
	ldr r4, .L08059FB0 @ =0x00005C43
	adds r1, r4, #0
	mov r2, sl
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl func_08008918
	ldr r3, .L08059FB4 @ =0x00001D41
	adds r1, r3, #0
	mov r4, sl
	strh r1, [r4]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	ldr r2, .L08059FB8 @ =0x00005E42
	adds r1, r2, #0
	strh r1, [r4]
	strh r1, [r0, #0xa]
	ldr r0, .L08059FBC @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L08059FC0 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L08059FC4 @ =0x00030003
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x1c]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x1e]
	movs r0, #3
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x1a]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x14]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x16]
	ldr r0, .L08059FC8 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L08059FCC @ =0x05000040
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r6, r3, #0
	strh r6, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	ldr r4, .L08059FD0 @ =0x00004218
	mov r8, r4
	strh r4, [r0]
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08059F98 @ =0x05000200
	adds r0, r0, r1
	strh r6, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08059FD4 @ =0x05000202
	adds r0, r0, r2
	strh r5, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08059FD8 @ =0x05000204
	adds r0, r0, r3
	mov r4, r8
	strh r4, [r0]
	mov sl, r5
	movs r6, #1
	mov r8, r6
	movs r0, #2
	mov sb, r0
	add r6, sp, #0x90
.L08059F3A:
	ldr r0, .L08059FDC @ =gUnk_080FAE6A
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	mov r2, r8
	strh r2, [r6]
	mov r0, sb
	ldr r3, [sp, #0x94]
	strh r0, [r3, #2]
	ldr r0, [r6]
	str r1, [sp]
	mov r1, sl
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r3, #0xc2
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	adds r1, r1, r4
	lsls r1, r1, #5
	ldr r4, .L08059F9C @ =0x06010000
	adds r1, r1, r4
	ldr r0, [sp, #0x9c]
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x17
	ble .L08059F3A
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08059F98: .4byte 0x05000200
.L08059F9C: .4byte 0x06010000
.L08059FA0: .4byte 0x06007FE0
.L08059FA4: .4byte 0x0600E000
.L08059FA8: .4byte 0x0600E800
.L08059FAC: .4byte 0x0600F000
.L08059FB0: .4byte 0x00005C43
.L08059FB4: .4byte 0x00001D41
.L08059FB8: .4byte 0x00005E42
.L08059FBC: .4byte gUnk_080F9F70
.L08059FC0: .4byte gUnk_080F9F74
.L08059FC4: .4byte 0x00030003
.L08059FC8: .4byte gUnk_080F9F78
.L08059FCC: .4byte 0x05000040
.L08059FD0: .4byte 0x00004218
.L08059FD4: .4byte 0x05000202
.L08059FD8: .4byte 0x05000204
.L08059FDC: .4byte gUnk_080FAE6A

	thumb_func_start func_08059FE0
func_08059FE0: @ 0x08059FE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805A090 @ =0xFFFFF490
	add sp, r4
	mov r8, r0
	ldr r0, .L0805A094 @ =0x00000B54
	add r0, sp
	str r1, [r0]
	cmp r1, #0
	bne .L0805A0AC
	movs r1, #0xb8
	lsls r1, r1, #1
	add r1, r8
	add r0, sp, #0xc
	movs r2, #0
	bl func_0805E790
	add r5, sp, #0x1c
	ldr r4, [sp, #0x1c]
	movs r0, #0xc9
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L0805A098 @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805A028
	ldrh r2, [r5, #4]
.L0805A028:
	adds r0, r4, #0
	bl func_08008E64
	add r4, sp, #0x14
	ldr r5, [sp, #0x14]
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0805A09C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L0805A04E
	ldrh r2, [r4, #4]
.L0805A04E:
	adds r0, r5, #0
	bl func_08008E64
	ldr r4, .L0805A0A0 @ =gUnk_08752F8C
	movs r0, #0xc2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r3, .L0805A0A4 @ =0x06010600
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #0x80
	bl func_08008E64
	ldr r4, .L0805A0A8 @ =gUnk_0875300C
	movs r0, #0xc4
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
	b .L0805A0E8
	.align 2, 0
.L0805A090: .4byte 0xFFFFF490
.L0805A094: .4byte 0x00000B54
.L0805A098: .4byte 0x05000200
.L0805A09C: .4byte 0x06010000
.L0805A0A0: .4byte gUnk_08752F8C
.L0805A0A4: .4byte 0x06010600
.L0805A0A8: .4byte gUnk_0875300C
.L0805A0AC:
	ldr r4, .L0805A18C @ =gUnk_0875196C
	movs r0, #0xc2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r7, .L0805A190 @ =0x06010600
	adds r1, r1, r7
	adds r0, r4, #0
	movs r2, #0x80
	bl func_08008E64
	ldr r4, .L0805A194 @ =gUnk_087519EC
	movs r0, #0xc4
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L0805A198 @ =0x05000200
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
.L0805A0E8:
	ldr r4, .L0805A19C @ =0x0000142C
	add r4, r8
	ldr r1, .L0805A1A0 @ =0x00000B34
	add r1, sp
	ldr r2, .L0805A1A4 @ =0x00000B6C
	add r2, sp
	str r1, [r2]
	mov r3, sp
	adds r3, #0x30
	ldr r7, .L0805A1A8 @ =0x00000B68
	add r7, sp
	str r3, [r7]
	movs r0, #0xb4
	lsls r0, r0, #4
	add r0, sp
	ldr r1, .L0805A1AC @ =0x00000B5C
	add r1, sp
	str r0, [r1]
	ldr r2, .L0805A1B0 @ =0x00000B44
	add r2, sp
	movs r3, #0xb6
	lsls r3, r3, #4
	add r3, sp
	str r2, [r3]
	movs r7, #0xcd
	lsls r7, r7, #2
	add r7, sp
	ldr r0, .L0805A1B4 @ =0x00000B58
	add r0, sp
	str r7, [r0]
	ldr r1, .L0805A1B8 @ =0x00000B48
	add r1, sp
	ldr r2, .L0805A1BC @ =0x00000B64
	add r2, sp
	str r1, [r2]
	movs r3, #2
	mov sl, r3
	ldr r7, .L0805A1C0 @ =0x06002800
	mov sb, r7
	ldr r6, .L0805A1C4 @ =0x00000B38
	add r6, sp
	ldr r5, .L0805A1C8 @ =0x00000B3C
	add r5, sp
	movs r7, #3
.L0805A140:
	ldr r0, .L0805A1A0 @ =0x00000B34
	add r0, sp
	movs r1, #0xc
	strh r1, [r0]
	mov r3, sl
	ldr r2, .L0805A1A4 @ =0x00000B6C
	add r2, sp
	ldr r2, [r2]
	strh r3, [r2, #2]
	ldr r0, [r0]
	add r1, sp, #0x30
	movs r2, #0
	bl func_0804E7A0
	ldrh r0, [r4, #0x20]
	cmp r0, #0x27
	bhi .L0805A1D0
	adds r1, r0, #0
	movs r0, #0xd
	muls r1, r0, r1
	ldr r0, .L0805A1CC @ =gUnk_080FA796
	adds r1, r1, r0
	movs r3, #0xc
	strh r3, [r6]
	mov r0, sl
	strh r0, [r6, #2]
	ldr r0, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	add r1, sp, #0x30
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L0805A1F8
	.align 2, 0
.L0805A18C: .4byte gUnk_0875196C
.L0805A190: .4byte 0x06010600
.L0805A194: .4byte gUnk_087519EC
.L0805A198: .4byte 0x05000200
.L0805A19C: .4byte 0x0000142C
.L0805A1A0: .4byte 0x00000B34
.L0805A1A4: .4byte 0x00000B6C
.L0805A1A8: .4byte 0x00000B68
.L0805A1AC: .4byte 0x00000B5C
.L0805A1B0: .4byte 0x00000B44
.L0805A1B4: .4byte 0x00000B58
.L0805A1B8: .4byte 0x00000B48
.L0805A1BC: .4byte 0x00000B64
.L0805A1C0: .4byte 0x06002800
.L0805A1C4: .4byte 0x00000B38
.L0805A1C8: .4byte 0x00000B3C
.L0805A1CC: .4byte gUnk_080FA796
.L0805A1D0:
	ldr r0, .L0805A2B8 @ =0x000014DC
	add r0, r8
	ldr r0, [r0]
	bl GetName__C6Animal
	movs r3, #0xc
	strh r3, [r5]
	mov r1, sl
	strh r1, [r5, #2]
	ldr r1, [r5]
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	adds r0, r1, #0
	add r1, sp, #0x30
	movs r3, #0
	bl func_0804E958
.L0805A1F8:
	ldr r1, .L0805A2BC @ =0x00000B68
	add r1, sp
	ldr r0, [r1]
	mov r1, sb
	movs r2, #0xc0
	lsls r2, r2, #2
	bl func_08008E64
	movs r2, #0xc0
	lsls r2, r2, #2
	add sb, r2
	subs r7, #1
	adds r4, #0x2c
	cmp r7, #0
	bge .L0805A140
	movs r4, #0x20
	movs r5, #2
	movs r7, #0
	movs r0, #0xb4
	lsls r0, r0, #4
	add r0, sp
	strh r4, [r0]
	ldr r3, .L0805A2C0 @ =0x00000B5C
	add r3, sp
	ldr r3, [r3]
	strh r5, [r3, #2]
	ldr r0, [r0]
	add r1, sp, #0x334
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L0805A2C4 @ =gUnk_080FAE9C
	movs r6, #1
	ldr r0, .L0805A2C8 @ =0x00000B44
	add r0, sp
	strh r4, [r0]
	movs r2, #0xb6
	lsls r2, r2, #4
	add r2, sp
	ldr r2, [r2]
	strh r5, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x334
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	ldr r1, .L0805A2CC @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r3, .L0805A2D0 @ =0x00000B58
	add r3, sp
	ldr r0, [r3]
	bl func_08008E64
	ldr r0, .L0805A2D4 @ =0x00000B48
	add r0, sp
	strh r4, [r0]
	ldr r1, .L0805A2D8 @ =0x00000B64
	add r1, sp
	ldr r1, [r1]
	strh r5, [r1, #2]
	ldr r0, [r0]
	ldr r2, .L0805A2D0 @ =0x00000B58
	add r2, sp
	ldr r1, [r2]
	movs r2, #0
	bl func_0804E7A0
	ldr r3, .L0805A2DC @ =0x00000B54
	add r3, sp
	ldr r3, [r3]
	cmp r3, #0
	bne .L0805A2E8
	ldr r2, .L0805A2E0 @ =gUnk_080FAEB8
	ldr r1, .L0805A2E4 @ =0x00000B4C
	add r1, sp
	ldr r0, .L0805A2E4 @ =0x00000B4C
	add r0, sp
	strh r4, [r0]
	strh r5, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r7, .L0805A2D0 @ =0x00000B58
	add r7, sp
	ldr r1, [r7]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L0805A310
	.align 2, 0
.L0805A2B8: .4byte 0x000014DC
.L0805A2BC: .4byte 0x00000B68
.L0805A2C0: .4byte 0x00000B5C
.L0805A2C4: .4byte gUnk_080FAE9C
.L0805A2C8: .4byte 0x00000B44
.L0805A2CC: .4byte 0x06004000
.L0805A2D0: .4byte 0x00000B58
.L0805A2D4: .4byte 0x00000B48
.L0805A2D8: .4byte 0x00000B64
.L0805A2DC: .4byte 0x00000B54
.L0805A2E0: .4byte gUnk_080FAEB8
.L0805A2E4: .4byte 0x00000B4C
.L0805A2E8:
	ldr r2, .L0805A3D8 @ =gUnk_080FAEC4
	movs r1, #0xb5
	lsls r1, r1, #4
	add r1, sp
	movs r0, #0xb5
	lsls r0, r0, #4
	add r0, sp
	strh r4, [r0]
	strh r5, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r2, .L0805A3DC @ =0x00000B58
	add r2, sp
	ldr r1, [r2]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L0805A310:
	ldr r1, .L0805A3E0 @ =0x06004800
	movs r4, #0x80
	lsls r4, r4, #4
	ldr r3, .L0805A3DC @ =0x00000B58
	add r3, sp
	ldr r0, [r3]
	adds r2, r4, #0
	bl func_08008E64
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, .L0805A3E4 @ =0x00000BEA
	add r1, r8
	adds r2, r4, #0
	bl func_08008EB8
	movs r5, #0x85
	lsls r5, r5, #6
	movs r1, #0
	ldr r7, .L0805A3E8 @ =0x00000BF2
	add r7, r8
	mov ip, r7
.L0805A33C:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x18
	adds r1, #1
	mov sb, r1
	adds r1, r0, #6
	lsls r1, r1, #6
	adds r0, #7
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0xc
	mov r7, ip
	adds r2, r0, r7
	add r1, ip
.L0805A35A:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0xb
	ble .L0805A35A
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	cmp r1, #3
	ble .L0805A33C
	movs r4, #0
	ldr r5, .L0805A3E4 @ =0x00000BEA
	add r5, r8
	movs r0, #0x88
	lsls r0, r0, #6
	adds r6, r0, #0
.L0805A382:
	adds r3, r4, #0
	cmp r4, #0
	bge .L0805A38A
	adds r3, #0x1f
.L0805A38A:
	asrs r3, r3, #5
	lsls r2, r3, #5
	subs r2, r4, r2
	lsls r2, r2, #1
	adds r0, r3, #4
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r0, r5, r0
	adds r1, r4, r6
	strh r1, [r0]
	adds r3, #0xf
	lsls r3, r3, #6
	adds r2, r2, r3
	adds r2, r5, r2
	movs r1, #0x89
	lsls r1, r1, #6
	adds r0, r4, r1
	strh r0, [r2]
	adds r4, #1
	cmp r4, #0x3f
	ble .L0805A382
	ldr r0, .L0805A3E4 @ =0x00000BEA
	add r0, r8
	ldr r1, .L0805A3EC @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r3, #0xb7
	lsls r3, r3, #4
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A3D8: .4byte gUnk_080FAEC4
.L0805A3DC: .4byte 0x00000B58
.L0805A3E0: .4byte 0x06004800
.L0805A3E4: .4byte 0x00000BEA
.L0805A3E8: .4byte 0x00000BF2
.L0805A3EC: .4byte 0x0600F000

	thumb_func_start func_0805A3F0
func_0805A3F0: @ 0x0805A3F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805A4C4 @ =0xFFFFF7E8
	add sp, r4
	ldr r1, .L0805A4C8 @ =0x06008000
	movs r2, #0xb0
	lsls r2, r2, #6
	movs r0, #0
	bl func_08008EB8
	ldr r4, .L0805A4CC @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0
	adds r1, r4, #0
	bl func_08008EB8
	movs r2, #0
	ldr r0, .L0805A4D0 @ =gUnk_080FAFC8
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r5, r1, #0
.L0805A424:
	movs r3, #0
	lsls r1, r2, #6
	lsls r0, r2, #5
	adds r2, #1
	adds r0, r0, r5
	adds r1, r1, r4
.L0805A430:
	strh r0, [r1]
	adds r0, #1
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1f
	bls .L0805A430
	cmp r2, #0x15
	bls .L0805A424
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq .L0805A4B2
	movs r6, #0x81
	lsls r6, r6, #4
	add r6, sp
	movs r0, #0x20
	mov sl, r0
	movs r1, #2
	mov sb, r1
	add r5, sp, #0x10
	ldr r7, .L0805A4C8 @ =0x06008000
	ldr r4, .L0805A4D4 @ =0x00000814
	add r4, sp
.L0805A45E:
	mov r0, sl
	strh r0, [r6]
	mov r1, sb
	strh r1, [r6, #2]
	ldr r0, [r6]
	adds r1, r5, #0
	movs r2, #0
	bl func_0804E7A0
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r1}
	mov r0, sl
	strh r0, [r4]
	mov r0, sb
	strh r0, [r4, #2]
	ldr r0, [r4]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r0, #0x80
	lsls r0, r0, #4
	adds r7, r7, r0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	bne .L0805A45E
.L0805A4B2:
	ldr r3, .L0805A4D8 @ =0x00000818
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A4C4: .4byte 0xFFFFF7E8
.L0805A4C8: .4byte 0x06008000
.L0805A4CC: .4byte 0x0600F800
.L0805A4D0: .4byte gUnk_080FAFC8
.L0805A4D4: .4byte 0x00000814
.L0805A4D8: .4byte 0x00000818

	thumb_func_start func_0805A4DC
func_0805A4DC: @ 0x0805A4DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, .L0805A524 @ =0x00000BD8
	adds r2, r5, r0
	movs r0, #0
	strh r0, [r2]
	cmp r1, #0
	bne .L0805A52C
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #4
	movs r3, #0x18
	bl func_0805A6E4
	ldr r1, .L0805A528 @ =0x00001414
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #4
	movs r3, #1
	bl func_0805A63C
	b .L0805A59C
	.align 2, 0
.L0805A524: .4byte 0x00000BD8
.L0805A528: .4byte 0x00001414
.L0805A52C:
	movs r4, #0
	movs r7, #1
	movs r6, #8
.L0805A532:
	adds r3, r4, #0
	adds r3, #0xd
	str r7, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #4
	bl func_0805A6E4
	adds r6, #8
	adds r4, #1
	cmp r4, #0xa
	ble .L0805A532
	ldr r1, .L0805A628 @ =0x00001418
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r4, #0xa
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x88
	movs r2, #4
	movs r3, #1
	bl func_0805A63C
	ldr r1, .L0805A62C @ =0x0000141E
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0x78
	movs r3, #2
	bl func_0805A63C
	ldr r1, .L0805A630 @ =0x000013FE
	adds r0, r5, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	lsls r2, r2, #4
	adds r2, #0x30
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x18
	bl func_0805A6E4
.L0805A59C:
	ldr r1, .L0805A634 @ =0x0000141C
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #1
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #2
	bl func_0805A63C
	ldr r0, .L0805A638 @ =0x0000142C
	adds r4, r5, r0
	movs r1, #2
	mov r8, r1
	movs r0, #0xa
	mov sb, r0
	movs r6, #0x30
	movs r7, #3
.L0805A5CC:
	mov r1, r8
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #0x88
	adds r2, r6, #0
	movs r3, #0xb
	bl func_0805A6E4
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x90
	adds r2, r6, #0
	movs r3, #2
	bl func_0805A63C
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xc0
	adds r2, r6, #0
	movs r3, #2
	bl func_0805A63C
	adds r6, #0x10
	subs r7, #1
	adds r4, #0x2c
	cmp r7, #0
	bge .L0805A5CC
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A628: .4byte 0x00001418
.L0805A62C: .4byte 0x0000141E
.L0805A630: .4byte 0x000013FE
.L0805A634: .4byte 0x0000141C
.L0805A638: .4byte 0x0000142C

	thumb_func_start func_0805A63C
func_0805A63C: @ 0x0805A63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp, #4]
	mov sb, r3
	ldr r0, [sp, #0x28]
	mov r8, r0
	ldr r4, [sp, #0x2c]
	cmp r4, #1
	ble .L0805A672
	subs r4, #1
	movs r5, #0xa
	cmp r4, #1
	ble .L0805A66E
.L0805A662:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r5, r0, #1
	subs r4, #1
	cmp r4, #1
	bgt .L0805A662
.L0805A66E:
	adds r4, r5, #0
	b .L0805A674
.L0805A672:
	movs r4, #1
.L0805A674:
	movs r7, #0
	cmp r4, #0
	ble .L0805A6BE
.L0805A67A:
	cmp r4, #1
	bne .L0805A680
	movs r7, #1
.L0805A680:
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	bne .L0805A692
	cmp r7, #0
	beq .L0805A6A4
.L0805A692:
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	adds r3, r5, #0
	bl func_0805A6E4
	movs r7, #1
.L0805A6A4:
	adds r6, #8
	adds r0, r5, #0
	muls r0, r4, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bgt .L0805A67A
.L0805A6BE:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq .L0805A6D4
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x30]
	bl func_0805A6E4
.L0805A6D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805A6E4
func_0805A6E4: @ 0x0805A6E4
	push {r4, r5, r6, r7, lr}
	ldr r4, .L0805A734 @ =0x00000BD8
	adds r6, r0, r4
	movs r7, #0
	ldrsh r5, [r6, r7]
	lsls r5, r5, #3
	movs r7, #0xe7
	lsls r7, r7, #3
	adds r4, r0, r7
	adds r4, r4, r5
	strh r1, [r4]
	movs r1, #0
	ldrsh r4, [r6, r1]
	lsls r4, r4, #3
	ldr r5, .L0805A738 @ =0x0000073A
	adds r1, r0, r5
	adds r1, r1, r4
	strh r2, [r1]
	movs r7, #0
	ldrsh r2, [r6, r7]
	lsls r2, r2, #3
	ldr r4, .L0805A73C @ =0x0000073C
	adds r1, r0, r4
	adds r1, r1, r2
	strh r3, [r1]
	movs r5, #0
	ldrsh r1, [r6, r5]
	lsls r1, r1, #3
	ldr r7, .L0805A740 @ =0x0000073E
	adds r0, r0, r7
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A734: .4byte 0x00000BD8
.L0805A738: .4byte 0x0000073A
.L0805A73C: .4byte 0x0000073C
.L0805A740: .4byte 0x0000073E

	thumb_func_start func_0805A744
func_0805A744: @ 0x0805A744
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r5, r0, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r2, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r2, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r0, .L0805A804 @ =0x0000140A
	adds r6, r5, r0
	movs r1, #0
	ldrsh r0, [r6, r1]
	add r7, sp, #0x3c
	cmp r0, #0
	blt .L0805A85A
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r4, r5, r2
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r4, .L0805A808 @ =0x00000554
	adds r0, r5, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r7, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r1, sp
	ldr r4, .L0805A80C @ =0x00000564
	adds r0, r5, r4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r2, sp
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0x1c
	cmp r0, #3
	bgt .L0805A7F2
	movs r1, #0xc
.L0805A7F2:
	strh r1, [r2]
	mov r1, sp
	cmp r0, #3
	bgt .L0805A810
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #4
	adds r0, #0x38
	b .L0805A812
	.align 2, 0
.L0805A804: .4byte 0x0000140A
.L0805A808: .4byte 0x00000554
.L0805A80C: .4byte 0x00000564
.L0805A810:
	movs r0, #0x80
.L0805A812:
	strh r0, [r1, #2]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r4, #0xc9
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805A852
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0805A852:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805A85A:
	movs r6, #0
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r1, r1, r5
	mov sl, r1
	add r2, sp, #0x5c
	mov sb, r2
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r3, r3, r5
	mov r8, r3
	mov r4, sp
	str r7, [sp, #0x64]
.L0805A874:
	mov r0, r8
	adds r1, r6, #0
	bl func_0805E860
	mov r7, r8
	ldr r1, [r7]
	ldr r3, [r1]
	ldrh r2, [r7, #0xc]
	lsls r2, r2, #2
	mov r7, sl
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x64]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	ldr r0, [sp, #0x64]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r0, #0x10
	strh r0, [r4]
	lsls r0, r6, #4
	adds r0, #0x30
	strh r0, [r4, #2]
	movs r7, #0xc1
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r1, r6, #2
	adds r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #2
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805A8F8
	mov r7, sp
	ldrh r2, [r7, #0x20]
.L0805A8F8:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	adds r6, #1
	cmp r6, #3
	ble .L0805A874
	ldr r1, .L0805AA38 @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r1, .L0805AA3C @ =0xFFFFF3FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L0805AA40 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0805AA44 @ =0xFFFF3FFF
	ands r0, r1
	ldr r1, .L0805AA48 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0805AA4C @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0805AA50 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0805AA54 @ =0x3FFFFFFF
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0x5c]
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805AA58 @ =0xFFFF0FFF
	mov r3, sb
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0805AA5C @ =0x0000FFFF
	ands r1, r0
	str r1, [r3, #4]
	ldr r2, .L0805AA60 @ =0x00000BD8
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805A96C
	b .L0805AAE6
.L0805A96C:
	mov r6, sb
	ldr r4, .L0805AA64 @ =0x0000073C
	adds r7, r5, r4
.L0805A972:
	adds r4, r5, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #3
	ldr r2, .L0805AA68 @ =0x0000073E
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r2, .L0805AA3C @ =0xFFFFF3FF
	ldr r0, [r6, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r1, r1, #3
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r0, r5, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, .L0805AA6C @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0805AA70 @ =0xFE00FFFF
	ldr r2, [sp, #0x5c]
	ands r2, r0
	orrs r2, r1
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #3
	ldr r3, .L0805AA74 @ =0x0000073A
	adds r0, r5, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, .L0805AA78 @ =0xFFFFFF00
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x5c]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	adds r1, r7, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0805AA7C @ =0xFFFFFC00
	ldr r1, [r6, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r6, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r7, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x18
	beq .L0805AA80
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805AA58 @ =0xFFFF0FFF
	mov r4, sb
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	ldr r1, .L0805AA44 @ =0xFFFF3FFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0805AA54 @ =0x3FFFFFFF
	ands r0, r1
	b .L0805AAB0
	.align 2, 0
.L0805AA38: .4byte 0xFFFFFCFF
.L0805AA3C: .4byte 0xFFFFF3FF
.L0805AA40: .4byte 0xFFFFDFFF
.L0805AA44: .4byte 0xFFFF3FFF
.L0805AA48: .4byte 0xF1FFFFFF
.L0805AA4C: .4byte 0xEFFFFFFF
.L0805AA50: .4byte 0xDFFFFFFF
.L0805AA54: .4byte 0x3FFFFFFF
.L0805AA58: .4byte 0xFFFF0FFF
.L0805AA5C: .4byte 0x0000FFFF
.L0805AA60: .4byte 0x00000BD8
.L0805AA64: .4byte 0x0000073C
.L0805AA68: .4byte 0x0000073E
.L0805AA6C: .4byte 0x000001FF
.L0805AA70: .4byte 0xFE00FFFF
.L0805AA74: .4byte 0x0000073A
.L0805AA78: .4byte 0xFFFFFF00
.L0805AA7C: .4byte 0xFFFFFC00
.L0805AA80:
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805AAF8 @ =0xFFFF0FFF
	mov r3, sb
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L0805AAFC @ =0xFFFF3FFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r1, .L0805AB00 @ =0x3FFFFFFF
	ands r0, r1
	adds r1, #1
	orrs r0, r1
.L0805AAB0:
	str r0, [sp, #0x5c]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805AAD4
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r4, sb
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805AAD4:
	ldr r2, .L0805AB04 @ =0x00000BD8
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805AAE6
	b .L0805A972
.L0805AAE6:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805AAF8: .4byte 0xFFFF0FFF
.L0805AAFC: .4byte 0xFFFF3FFF
.L0805AB00: .4byte 0x3FFFFFFF
.L0805AB04: .4byte 0x00000BD8

	thumb_func_start func_0805AB08
func_0805AB08: @ 0x0805AB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r1, .L0805AC20 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r1, .L0805AC24 @ =0x0600C800
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805AC28 @ =0x0600D800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805AC2C @ =0x0600E800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L0805AC30 @ =gUnk_0872F11C
	ldr r2, .L0805AC34 @ =0x00000BEA
	adds r1, r7, r2
	bl Unpack
	ldr r0, .L0805AC38 @ =gUnk_0872F1BC
	ldr r3, .L0805AC3C @ =0x00000CEA
	adds r1, r7, r3
	bl Unpack
	ldr r0, .L0805AC40 @ =gUnk_0872F1EC
	ldr r2, .L0805AC44 @ =0x00000DEA
	adds r1, r7, r2
	bl Unpack
	ldr r0, .L0805AC48 @ =gUnk_0872FBFC
	ldr r3, .L0805AC4C @ =0x00000EEA
	adds r1, r7, r3
	bl Unpack
	ldr r0, .L0805AC50 @ =gUnk_0872F21C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L0805AC54 @ =gUnk_0872FA9C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AC58 @ =0x00005943
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AC5C @ =0x00005B42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AC60 @ =0x00005D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	movs r1, #0
.L0805ABCA:
	movs r0, #0
	mov sb, r0
	lsls r0, r1, #1
	lsls r2, r1, #6
	mov r8, r2
	adds r3, r1, #1
	str r3, [sp, #0x10]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, .L0805AC4C @ =0x00000EEA
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, .L0805AC44 @ =0x00000DEA
	adds r2, r0, r2
	str r2, [sp, #0xc]
	ldr r6, .L0805AC2C @ =0x0600E800
	add r6, r8
	ldr r5, .L0805AC28 @ =0x0600D800
	add r5, r8
	ldr r4, .L0805AC24 @ =0x0600C800
	add r4, r8
	ldr r3, .L0805AC34 @ =0x00000BEA
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r1, .L0805AC3C @ =0x00000CEA
	adds r1, r1, r0
	mov sl, r1
.L0805AC00:
	ldr r2, [sp, #4]
	adds r0, r7, r2
	adds r1, r4, #0
	movs r2, #0xc
	bl func_08008E64
	mov r3, sb
	cmp r3, #0x12
	beq .L0805AC64
	mov r1, sl
	adds r0, r7, r1
	adds r1, r5, #0
	movs r2, #0xc
	bl func_08008E64
	b .L0805AC72
	.align 2, 0
.L0805AC20: .4byte 0x06007FE0
.L0805AC24: .4byte 0x0600C800
.L0805AC28: .4byte 0x0600D800
.L0805AC2C: .4byte 0x0600E800
.L0805AC30: .4byte gUnk_0872F11C
.L0805AC34: .4byte 0x00000BEA
.L0805AC38: .4byte gUnk_0872F1BC
.L0805AC3C: .4byte 0x00000CEA
.L0805AC40: .4byte gUnk_0872F1EC
.L0805AC44: .4byte 0x00000DEA
.L0805AC48: .4byte gUnk_0872FBFC
.L0805AC4C: .4byte 0x00000EEA
.L0805AC50: .4byte gUnk_0872F21C
.L0805AC54: .4byte gUnk_0872FA9C
.L0805AC58: .4byte 0x00005943
.L0805AC5C: .4byte 0x00005B42
.L0805AC60: .4byte 0x00005D41
.L0805AC64:
	ldr r2, [sp, #8]
	adds r0, r7, r2
	ldr r1, .L0805AD04 @ =0x0600D824
	add r1, r8
	movs r2, #0xc
	bl func_08008E64
.L0805AC72:
	ldr r3, [sp, #0xc]
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #0xc
	bl func_08008E64
	adds r6, #0xc
	adds r5, #0xc
	adds r4, #0xc
	movs r0, #6
	add sb, r0
	mov r1, sb
	cmp r1, #0x1d
	ble .L0805AC00
	ldr r1, [sp, #0x10]
	cmp r1, #0x1f
	ble .L0805ABCA
	movs r4, #0
	ldr r2, .L0805AD08 @ =0x000013EA
	adds r0, r7, r2
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r3, .L0805AD0C @ =0x000013EC
	adds r0, r7, r3
	strh r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	strh r1, [r0]
	adds r3, #4
	adds r0, r7, r3
	strh r4, [r0]
	ldr r1, .L0805AD10 @ =0x000013F2
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #6
	adds r0, r7, r2
	strh r4, [r0]
	adds r3, #6
	adds r0, r7, r3
	strh r4, [r0]
	adds r1, #6
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #6
	adds r0, r7, r2
	strh r4, [r0]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805AD04: .4byte 0x0600D824
.L0805AD08: .4byte 0x000013EA
.L0805AD0C: .4byte 0x000013EC
.L0805AD10: .4byte 0x000013F2

	thumb_func_start func_0805AD14
func_0805AD14: @ 0x0805AD14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov sl, r0
	bl func_08008918
	mov r2, sp
	ldr r1, .L0805ADF8 @ =0x000013EA
	add r1, sl
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x14]
	mov r0, sl
	bl func_08008918
	mov r2, sp
	ldr r1, .L0805ADFC @ =0x000013EC
	add r1, sl
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x18]
	mov r0, sl
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AE00 @ =0x000013EE
	add r3, sl
	ldrh r1, [r3]
	strh r1, [r2]
	strh r1, [r0, #0x1c]
	ldr r2, .L0805AE04 @ =0x000013F4
	add r2, sl
	ldrh r0, [r3]
	ldr r1, .L0805AE08 @ =0x0000FFF0
	ands r1, r0
	ldrh r0, [r2]
	cmp r0, r1
	bne .L0805AD68
	b .L0805AEF0
.L0805AD68:
	strh r1, [r2]
	ldr r1, .L0805AE0C @ =0x000013FA
	add r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805AD7E
	movs r0, #2
	strh r0, [r1]
.L0805AD7E:
	ldrh r0, [r2]
	subs r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	asrs r2, r0, #3
	movs r7, #0
	asrs r0, r0, #8
	lsls r0, r0, #0xb
	str r0, [sp, #0x38]
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x3c]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x34]
.L0805ADA0:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805AE0C @ =0x000013FA
	add r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r4, .L0805AE10 @ =0x00000BEA
	adds r1, r1, r4
	lsls r2, r7, #6
	ldr r6, [sp, #0x38]
	adds r2, r6, r2
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	ldr r3, .L0805AE14 @ =0x0600C800
	adds r2, r2, r3
	add r0, sp, #4
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805AE18
	cmp r1, #0
	beq .L0805ADEC
	adds r0, r1, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805ADEC:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r3, r7, #1
	str r3, [sp, #0x64]
	b .L0805AEE8
	.align 2, 0
.L0805ADF8: .4byte 0x000013EA
.L0805ADFC: .4byte 0x000013EC
.L0805AE00: .4byte 0x000013EE
.L0805AE04: .4byte 0x000013F4
.L0805AE08: .4byte 0x0000FFF0
.L0805AE0C: .4byte 0x000013FA
.L0805AE10: .4byte 0x00000BEA
.L0805AE14: .4byte 0x0600C800
.L0805AE18:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x14]
	add r1, sp, #0x18
	add r0, sp, #0x14
	cmp r4, #1
	bhs .L0805AE32
	adds r0, r1, #0
.L0805AE32:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805AE50
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805AE54
	mov r0, sb
	bl func_080D3BC0
	b .L0805AE54
.L0805AE50:
	movs r0, #0
	mov sb, r0
.L0805AE54:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r6, r7, #1
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x60]
	cmp r2, r7
	beq .L0805AE80
.L0805AE66:
	cmp r3, #0
	beq .L0805AE76
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805AE76:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805AE66
.L0805AE80:
	adds r4, r3, #0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne .L0805AE9C
	cmp r4, #0
	beq .L0805AE98
	adds r0, r4, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805AE98:
	adds r4, #0x10
	b .L0805AEC4
.L0805AE9C:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805AEC2
.L0805AEA4:
	cmp r2, #0
	beq .L0805AEB4
	adds r0, r2, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805AEB4:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805AEA4
.L0805AEC2:
	adds r4, r2, #0
.L0805AEC4:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805AED4
.L0805AECE:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805AECE
.L0805AED4:
	cmp r0, #0
	beq .L0805AEDC
	bl free
.L0805AEDC:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805AEE8:
	ldr r7, [sp, #0x64]
	cmp r7, #0x13
	bgt .L0805AEF0
	b .L0805ADA0
.L0805AEF0:
	ldr r2, .L0805AFA4 @ =0x000013F2
	add r2, sl
	ldr r0, .L0805AFA8 @ =0x000013EC
	add r0, sl
	ldrh r0, [r0]
	ldr r1, .L0805AFAC @ =0x0000FFF0
	ands r1, r0
	ldrh r0, [r2]
	cmp r0, r1
	bne .L0805AF06
	b .L0805B1E8
.L0805AF06:
	strh r1, [r2]
	ldr r1, .L0805AFB0 @ =0x000013F8
	add r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805AF1C
	movs r0, #2
	strh r0, [r1]
.L0805AF1C:
	ldrh r0, [r2]
	adds r3, r0, #0
	subs r3, #0x10
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r3, r1
	asrs r2, r3, #3
	subs r0, #0x90
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls .L0805AF36
	b .L0805B096
.L0805AF36:
	movs r7, #3
	asrs r3, r3, #8
	str r3, [sp, #0x5c]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x40]
	mov r2, sp
	str r2, [sp, #0x44]
.L0805AF48:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805AFB0 @ =0x000013F8
	add r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r4, .L0805AFB4 @ =0x00000EEA
	adds r1, r1, r4
	ldr r6, [sp, #0x5c]
	lsls r2, r6, #0xb
	lsls r0, r7, #6
	adds r2, r2, r0
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	ldr r3, .L0805AFB8 @ =0x0600D800
	adds r2, r2, r3
	mov r0, sp
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805AFBC
	cmp r1, #0
	beq .L0805AF96
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805AF96:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r3, r7, #1
	str r3, [sp, #0x64]
	b .L0805B08C
	.align 2, 0
.L0805AFA4: .4byte 0x000013F2
.L0805AFA8: .4byte 0x000013EC
.L0805AFAC: .4byte 0x0000FFF0
.L0805AFB0: .4byte 0x000013F8
.L0805AFB4: .4byte 0x00000EEA
.L0805AFB8: .4byte 0x0600D800
.L0805AFBC:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L0805AFD6
	adds r0, r1, #0
.L0805AFD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805AFF4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805AFF8
	mov r0, sb
	bl func_080D3BC0
	b .L0805AFF8
.L0805AFF4:
	movs r0, #0
	mov sb, r0
.L0805AFF8:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r6, r7, #1
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x60]
	cmp r2, r7
	beq .L0805B024
.L0805B00A:
	cmp r3, #0
	beq .L0805B01A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B01A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805B00A
.L0805B024:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L0805B040
	cmp r4, #0
	beq .L0805B03C
	adds r0, r4, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B03C:
	adds r4, #0x10
	b .L0805B068
.L0805B040:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805B066
.L0805B048:
	cmp r2, #0
	beq .L0805B058
	adds r0, r2, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B058:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805B048
.L0805B066:
	adds r4, r2, #0
.L0805B068:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805B078
.L0805B072:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805B072
.L0805B078:
	cmp r0, #0
	beq .L0805B080
	bl free
.L0805B080:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805B08C:
	ldr r7, [sp, #0x64]
	cmp r7, #0x11
	bgt .L0805B094
	b .L0805AF48
.L0805B094:
	b .L0805B1E8
.L0805B096:
	movs r7, #3
	asrs r3, r3, #8
	str r3, [sp, #0x5c]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x48]
	mov r2, sp
	str r2, [sp, #0x4c]
.L0805B0A8:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805B104 @ =0x000013F8
	add r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r4, .L0805B108 @ =0x00000CEA
	adds r1, r1, r4
	ldr r6, [sp, #0x5c]
	lsls r2, r6, #0xb
	lsls r0, r7, #6
	adds r2, r2, r0
	ldr r0, [sp, #0x48]
	adds r2, r0, r2
	ldr r3, .L0805B10C @ =0x0600D800
	adds r2, r2, r3
	mov r0, sp
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805B110
	cmp r1, #0
	beq .L0805B0F6
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B0F6:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r3, r7, #1
	str r3, [sp, #0x64]
	b .L0805B1E0
	.align 2, 0
.L0805B104: .4byte 0x000013F8
.L0805B108: .4byte 0x00000CEA
.L0805B10C: .4byte 0x0600D800
.L0805B110:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r1, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L0805B12A
	adds r0, r1, #0
.L0805B12A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805B148
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805B14C
	mov r0, sb
	bl func_080D3BC0
	b .L0805B14C
.L0805B148:
	movs r0, #0
	mov sb, r0
.L0805B14C:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r6, r7, #1
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x60]
	cmp r2, r7
	beq .L0805B178
.L0805B15E:
	cmp r3, #0
	beq .L0805B16E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B16E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805B15E
.L0805B178:
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L0805B194
	cmp r4, #0
	beq .L0805B190
	adds r0, r4, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B190:
	adds r4, #0x10
	b .L0805B1BC
.L0805B194:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805B1BA
.L0805B19C:
	cmp r2, #0
	beq .L0805B1AC
	adds r0, r2, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B1AC:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805B19C
.L0805B1BA:
	adds r4, r2, #0
.L0805B1BC:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805B1CC
.L0805B1C6:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805B1C6
.L0805B1CC:
	cmp r0, #0
	beq .L0805B1D4
	bl free
.L0805B1D4:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805B1E0:
	ldr r7, [sp, #0x64]
	cmp r7, #0x11
	bgt .L0805B1E8
	b .L0805B0A8
.L0805B1E8:
	ldr r2, .L0805B28C @ =0x000013F0
	add r2, sl
	ldr r0, .L0805B290 @ =0x000013EA
	add r0, sl
	ldrh r0, [r0]
	ldr r1, .L0805B294 @ =0x0000FFF0
	ands r1, r0
	ldrh r0, [r2]
	cmp r0, r1
	bne .L0805B1FE
	b .L0805B37C
.L0805B1FE:
	strh r1, [r2]
	ldr r1, .L0805B298 @ =0x000013F6
	add r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805B214
	movs r0, #2
	strh r0, [r1]
.L0805B214:
	ldrh r0, [r2]
	subs r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	asrs r2, r0, #3
	movs r7, #0x11
	asrs r0, r0, #8
	lsls r0, r0, #0xb
	str r0, [sp, #0x54]
	mov r3, sp
	str r3, [sp, #0x58]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x50]
.L0805B234:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805B298 @ =0x000013F6
	add r1, sl
	movs r4, #0
	ldrsh r2, [r1, r4]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r6, .L0805B29C @ =0x00000DEA
	adds r1, r1, r6
	lsls r2, r7, #6
	ldr r0, [sp, #0x54]
	adds r2, r0, r2
	ldr r3, [sp, #0x50]
	adds r2, r3, r2
	ldr r4, .L0805B2A0 @ =0x0600E800
	adds r2, r2, r4
	mov r0, sp
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805B2A4
	cmp r1, #0
	beq .L0805B280
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B280:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r4, r7, #1
	str r4, [sp, #0x64]
	b .L0805B374
	.align 2, 0
.L0805B28C: .4byte 0x000013F0
.L0805B290: .4byte 0x000013EA
.L0805B294: .4byte 0x0000FFF0
.L0805B298: .4byte 0x000013F6
.L0805B29C: .4byte 0x00000DEA
.L0805B2A0: .4byte 0x0600E800
.L0805B2A4:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x30]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x2c]
	add r1, sp, #0x30
	add r0, sp, #0x2c
	cmp r4, #1
	bhs .L0805B2BE
	adds r0, r1, #0
.L0805B2BE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805B2DC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805B2E0
	mov r0, sb
	bl func_080D3BC0
	b .L0805B2E0
.L0805B2DC:
	movs r0, #0
	mov sb, r0
.L0805B2E0:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r0, r7, #1
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x60]
	cmp r2, r1
	beq .L0805B30C
.L0805B2F2:
	cmp r3, #0
	beq .L0805B302
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B302:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805B2F2
.L0805B30C:
	adds r4, r3, #0
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne .L0805B328
	cmp r4, #0
	beq .L0805B324
	adds r0, r4, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B324:
	adds r4, #0x10
	b .L0805B350
.L0805B328:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805B34E
.L0805B330:
	cmp r2, #0
	beq .L0805B340
	adds r0, r2, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B340:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805B330
.L0805B34E:
	adds r4, r2, #0
.L0805B350:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805B360
.L0805B35A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805B35A
.L0805B360:
	cmp r0, #0
	beq .L0805B368
	bl free
.L0805B368:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805B374:
	ldr r7, [sp, #0x64]
	cmp r7, #0x13
	bgt .L0805B37C
	b .L0805B234
.L0805B37C:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805B38C
func_0805B38C: @ 0x0805B38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	mov r8, r0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	strh r0, [r1, #4]
	add r6, sp, #8
	str r0, [sp, #8]
	strh r0, [r6, #4]
	add r5, sp, #0x10
	str r0, [sp, #0x10]
	strh r0, [r5, #4]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0xea
	lsls r0, r0, #1
	add r0, r8
	mov sb, r0
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x20
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r7, [sp, #0x10]
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805B6BC @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B414
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B414:
	adds r0, r7, #0
	bl func_08008E64
	movs r7, #0
	movs r6, #0
	mov sl, sb
	movs r4, #0x83
	lsls r4, r4, #2
	add r4, r8
	str r4, [sp, #0x5c]
	movs r5, #0x91
	lsls r5, r5, #2
	add r5, r8
	str r5, [sp, #0x70]
	movs r0, #0xad
	lsls r0, r0, #2
	add r0, r8
	str r0, [sp, #0x80]
	mov r2, r8
	adds r2, #0x50
	str r2, [sp, #0x6c]
	movs r3, #0xc9
	lsls r3, r3, #2
	add r3, r8
	str r3, [sp, #0x88]
	mov r4, r8
	adds r4, #0x80
	str r4, [sp, #0x78]
	mov r5, sp
	adds r5, #0x40
	str r5, [sp, #0x60]
	mov r0, r8
	adds r0, #0xe0
	str r0, [sp, #0x84]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x64]
	ldr r3, .L0805B6C0 @ =0x00000474
	add r3, r8
	str r3, [sp, #0x7c]
	mov r4, sp
	adds r4, #0x50
	str r4, [sp, #0x68]
	ldr r5, .L0805B6C4 @ =0x0000058C
	add r5, r8
	str r5, [sp, #0x8c]
	movs r5, #0xe8
	lsls r5, r5, #1
	add r5, r8
	add r0, sp, #0x20
	mov sb, r0
.L0805B47A:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	mov r4, sl
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xb8
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805B6C8 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B4D6
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805B4D6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805B4E8
	mov r4, sp
	ldrh r1, [r4, #0xc]
.L0805B4E8:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r6, #1
	cmp r6, #3
	ble .L0805B47A
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x5c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805B6BC @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B54A
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B54A:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B55E
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B55E:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B57E
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B57E:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	movs r0, #0x90
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r0, #0xcf
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B5DC
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B5DC:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B5F0
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B5F0:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd0
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B610
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B610:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, .L0805B6CC @ =0x0000140E
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805B6D0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, r8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B67C
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B67C:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B690
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B690:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B6B0
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B6B0:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	b .L0805B766
	.align 2, 0
.L0805B6BC: .4byte 0x05000200
.L0805B6C0: .4byte 0x00000474
.L0805B6C4: .4byte 0x0000058C
.L0805B6C8: .4byte 0x06010000
.L0805B6CC: .4byte 0x0000140E
.L0805B6D0:
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0xbb
	lsls r0, r0, #2
	add r0, r8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B72A
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B72A:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B73E
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B73E:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B75E
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B75E:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
.L0805B766:
	movs r0, #0xac
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x80]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r4, [sp, #0x10]
	movs r0, #0xd5
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805BB48 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B7BE
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B7BE:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B7D2
	mov r4, sp
	ldrh r0, [r4, #0x14]
.L0805B7D2:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd6
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B7F2
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B7F2:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x6c]
	add r0, sp, #0x20
	movs r2, #0
	bl func_0805E790
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r7}
	stm r1!, {r4, r7}
	ldr r4, [sp, #0x10]
	movs r0, #0xbb
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B832
	mov r0, sp
	ldrh r2, [r0, #0x14]
.L0805B832:
	adds r0, r4, #0
	bl func_08008E64
	ldr r5, [sp, #8]
	movs r4, #0xba
	lsls r4, r4, #3
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B85A
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805B85A:
	adds r0, r5, #0
	bl func_08008E64
	add r0, sp, #0x20
	ldr r1, [sp, #0x6c]
	movs r2, #1
	bl func_0805E790
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, [sp, #8]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r4, .L0805BB50 @ =0x06010100
	adds r1, r0, r4
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B896
	mov r7, sp
	ldrh r2, [r7, #0xc]
.L0805B896:
	adds r0, r5, #0
	bl func_08008E64
	movs r3, #0
	ldr r0, .L0805BB54 @ =0x0000FFFF
	adds r4, r0, #0
	movs r2, #0xd7
	lsls r2, r2, #3
	add r2, r8
.L0805B8A8:
	ldrh r0, [r2]
	orrs r0, r4
	strh r0, [r2]
	asrs r1, r3, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r2, #2]
	adds r2, #4
	adds r3, #1
	cmp r3, #0x1f
	ble .L0805B8A8
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x88]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r4, [sp, #0x10]
	movs r0, #0xbd
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0805BB48 @ =0x05000200
	adds r1, r0, r3
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B91A
	mov r5, sp
	ldrh r2, [r5, #0x14]
.L0805B91A:
	adds r0, r4, #0
	bl func_08008E64
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r5, [sp, #0x78]
	add r2, sp, #0x20
	mov sb, r2
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x58]
.L0805B932:
	movs r6, #0
	mov r4, sl
	adds r4, #1
	str r4, [sp, #0x74]
.L0805B93A:
	ldr r4, [r5]
	ldr r0, [sp, #0x60]
	ldr r3, [r4, #0xc]
	adds r1, r5, #0
	mov r2, sl
	bl _call_via_r3
	lsls r1, r6, #2
	ldr r0, [sp, #0x40]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r4, #0x10]
	adds r1, r5, #0
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xbc
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B996
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805B996:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805B9A8
	ldr r4, [sp, #0x58]
	ldrh r1, [r4, #4]
.L0805B9A8:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r6, #1
	cmp r6, #1
	ble .L0805B93A
	ldr r0, [sp, #0x74]
	mov sl, r0
	cmp r0, #2
	ble .L0805B932
	add r0, sp, #0x20
	ldr r1, [sp, #0x84]
	movs r2, #0
	bl func_0805E790
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r0, #0xbf
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805BB48 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B9F4
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B9F4:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BA1A
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805BA1A:
	adds r0, r4, #0
	bl func_08008E64
	movs r7, #0
	movs r5, #0
	movs r6, #0x88
	lsls r6, r6, #1
	add r6, r8
	add r4, sp, #8
	mov sl, r4
	add r0, sp, #0x20
	mov sb, r0
.L0805BA32:
	lsls r1, r5, #1
	ldr r0, .L0805BB58 @ =0x00000BDA
	add r0, r8
	adds r0, r0, r1
	strh r7, [r0]
	ldr r4, [r6]
	ldr r0, [sp, #0x64]
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
	lsls r1, r5, #2
	ldr r0, [sp, #0x48]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xc5
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BA98
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805BA98:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805BAAA
	mov r4, sl
	ldrh r1, [r4, #4]
.L0805BAAA:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r5, #1
	cmp r5, #3
	ble .L0805BA32
	movs r0, #0x8e
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x7c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xc7
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805BB48 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805BB0C
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805BB0C:
	adds r0, r4, #0
	bl func_08008E64
	movs r7, #0
	movs r5, #0
	movs r6, #0xa0
	lsls r6, r6, #1
	add r6, r8
	add r0, sp, #8
	mov sl, r0
	add r2, sp, #0x20
	mov sb, r2
.L0805BB24:
	lsls r1, r5, #1
	ldr r0, .L0805BB5C @ =0x00000BE2
	add r0, r8
	adds r0, r0, r1
	strh r7, [r0]
	ldr r4, [r6]
	ldr r0, [sp, #0x68]
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
	lsls r1, r5, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r1
	ldrh r2, [r0]
	b .L0805BB60
	.align 2, 0
.L0805BB48: .4byte 0x05000200
.L0805BB4C: .4byte 0x06010000
.L0805BB50: .4byte 0x06010100
.L0805BB54: .4byte 0x0000FFFF
.L0805BB58: .4byte 0x00000BDA
.L0805BB5C: .4byte 0x00000BE2
.L0805BB60:
	add r0, sp, #0x20
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #8]
	movs r0, #0xc6
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805BC30 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BBA6
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805BBA6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805BBB8
	mov r4, sl
	ldrh r1, [r4, #4]
.L0805BBB8:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r5, #1
	cmp r5, #3
	ble .L0805BB24
	movs r0, #0xb1
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x8c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xca
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r5, .L0805BC30 @ =0x06010000
	adds r1, r0, r5
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BC1A
	mov r7, sp
	ldrh r2, [r7, #0xc]
.L0805BC1A:
	adds r0, r4, #0
	bl func_08008E64
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805BC30: .4byte 0x06010000

	thumb_func_start func_0805BC34
func_0805BC34: @ 0x0805BC34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x68]
	add r0, sp, #4
	movs r1, #0
	add r2, sp, #0x68
	ldrh r2, [r2]
	strh r2, [r0]
	add r3, sp, #0x68
	ldrh r3, [r3]
	strh r3, [r0, #2]
	add r4, sp, #0x68
	ldrh r4, [r4]
	strh r4, [r0, #4]
	add r6, sp, #0x68
	ldrh r6, [r6]
	strh r6, [r0, #6]
	add r7, sp, #0x68
	ldrh r7, [r7]
	strh r7, [r0, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0x10]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r2, [sp, #0x18]
	strb r1, [r0, #0x18]
	add r3, sp, #0x20
	str r2, [sp, #0x20]
	strh r2, [r3, #4]
	add r2, sp, #0x28
	ldr r6, [sp, #0x68]
	str r6, [sp, #0x28]
	strh r6, [r2, #4]
	add r0, sp, #0x30
	ldr r1, [sp, #0x68]
	str r1, [sp, #0x30]
	strh r1, [r0, #4]
	add r0, sp, #0x38
	ldr r6, [sp, #0x68]
	str r6, [sp, #0x38]
	strh r6, [r0, #4]
	ldr r1, .L0805BE8C @ =0x00001427
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	adds r2, #0x18
	str r2, [sp, #0x84]
	cmp r0, #0
	beq .L0805BD10
	adds r1, r5, #0
	adds r1, #0xe0
	adds r0, r2, #0
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r0, sp, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r1, #8]
	adds r0, r1, #0
	strb r4, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805BD08
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805BD08:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L0805BD10:
	ldr r1, .L0805BE90 @ =0x000013EC
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0xb8
	lsls r0, r0, #3
	ldr r2, .L0805BE94 @ =0x0000058C
	adds r2, r5, r2
	str r2, [sp, #0x90]
	cmp r1, r0
	bls .L0805BDE6
	movs r3, #0
	mov sl, r3
	movs r4, #0xea
	lsls r4, r4, #1
	adds r4, r4, r5
	mov sb, r4
	movs r6, #0xe8
	lsls r6, r6, #1
	adds r6, r5, r6
	str r6, [sp, #0x98]
	add r4, sp, #4
	movs r7, #0x30
	mov r8, r7
	ldr r6, [sp, #0x84]
.L0805BD40:
	ldr r0, [sp, #0x98]
	mov r1, sl
	bl func_0805E860
	ldr r0, [sp, #0x98]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	adds r0, r6, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r7, .L0805BE90 @ =0x000013EC
	adds r0, r5, r7
	ldrh r1, [r0]
	movs r2, #0xdb
	lsls r2, r2, #3
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4]
	mov r3, r8
	strh r3, [r4, #2]
	movs r7, #0xb9
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sl
	lsls r1, r2, #2
	adds r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #2
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805BDD0
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805BDD0:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	movs r0, #0x18
	add r8, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #3
	ble .L0805BD40
.L0805BDE6:
	ldr r3, .L0805BE8C @ =0x00001427
	adds r0, r5, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L0805BDF6
	b .L0805BF60
.L0805BDF6:
	movs r6, #0x8e
	lsls r6, r6, #2
	adds r4, r5, r6
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r5, r7
	bl func_0805E8F0
	str r0, [r4]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r5, r1
	bl func_0805E8F0
	str r0, [r4]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r4, r5, r2
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r5, r3
	bl func_0805E8F0
	str r0, [r4]
	adds r6, #0xa8
	adds r4, r5, r6
	adds r7, #0xa8
	adds r0, r5, r7
	bl func_0805E8F0
	str r0, [r4]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r5, r1
	bl func_0805E8F0
	str r0, [r4]
	ldr r2, .L0805BE98 @ =0x0000140E
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0805BEB6
	ldr r3, .L0805BE9C @ =0x0000149E
	adds r0, r5, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r2, #0
	cmp r0, #0xab
	bgt .L0805BE6C
	movs r2, #2
	cmp r0, #0x55
	ble .L0805BE6C
	movs r2, #1
.L0805BE6C:
	ldr r6, .L0805BEA0 @ =0x00001408
	adds r1, r5, r6
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r2
	beq .L0805BEA4
	strh r2, [r1]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl func_0805E860
	b .L0805BEB6
	.align 2, 0
.L0805BE8C: .4byte 0x00001427
.L0805BE90: .4byte 0x000013EC
.L0805BE94: .4byte 0x0000058C
.L0805BE98: .4byte 0x0000140E
.L0805BE9C: .4byte 0x0000149E
.L0805BEA0: .4byte 0x00001408
.L0805BEA4:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r4, r5, r6
	movs r7, #0xc8
	lsls r7, r7, #2
	adds r0, r5, r7
	bl func_0805E8F0
	str r0, [r4]
.L0805BEB6:
	ldr r1, .L0805BF14 @ =0x00001424
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x18
	bne .L0805BEEA
	movs r3, #0xe4
	lsls r3, r3, #2
	adds r0, r5, r3
	bl func_0805E8F0
	movs r4, #0xf2
	lsls r4, r4, #2
	adds r0, r5, r4
	bl func_0805E8F0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r5, r6
	bl func_0805E8F0
	movs r7, #0x87
	lsls r7, r7, #3
	adds r0, r5, r7
	bl func_0805E8F0
.L0805BEEA:
	movs r0, #0
	mov sl, r0
.L0805BEEE:
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r5, r0
	ldr r2, .L0805BF18 @ =0x0000144E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bls .L0805BF56
	mov r3, sl
	cmp r3, #1
	beq .L0805BF34
	cmp r3, #1
	bgt .L0805BF1C
	cmp r3, #0
	beq .L0805BF28
	b .L0805BF56
	.align 2, 0
.L0805BF14: .4byte 0x00001424
.L0805BF18: .4byte 0x0000144E
.L0805BF1C:
	mov r4, sl
	cmp r4, #2
	beq .L0805BF40
	cmp r4, #3
	beq .L0805BF4C
	b .L0805BF56
.L0805BF28:
	movs r6, #0x8e
	lsls r6, r6, #3
	adds r0, r5, r6
	bl func_0805E8F0
	b .L0805BF56
.L0805BF34:
	movs r7, #0x95
	lsls r7, r7, #3
	adds r0, r5, r7
	bl func_0805E8F0
	b .L0805BF56
.L0805BF40:
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r0, r5, r1
	bl func_0805E8F0
	b .L0805BF56
.L0805BF4C:
	movs r2, #0xa3
	lsls r2, r2, #3
	adds r0, r5, r2
	bl func_0805E8F0
.L0805BF56:
	movs r3, #1
	add sl, r3
	mov r4, sl
	cmp r4, #3
	ble .L0805BEEE
.L0805BF60:
	movs r6, #3
	mov sl, r6
	add r7, sp, #4
	mov r8, r7
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x78]
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r1, r5, r1
	str r1, [sp, #0x7c]
.L0805BF78:
	ldr r2, .L0805BFA0 @ =0x00001424
	adds r0, r5, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sl
	lsls r4, r4, #1
	str r4, [sp, #0x8c]
	cmp r0, #0x18
	beq .L0805BF8C
	b .L0805C17C
.L0805BF8C:
	movs r7, #0
	mov r6, sl
	cmp r6, #1
	beq .L0805BFBE
	cmp r6, #1
	bgt .L0805BFA4
	cmp r6, #0
	beq .L0805BFB0
	b .L0805BFEC
	.align 2, 0
.L0805BFA0: .4byte 0x00001424
.L0805BFA4:
	mov r0, sl
	cmp r0, #2
	beq .L0805BFCE
	cmp r0, #3
	beq .L0805BFDE
	b .L0805BFEC
.L0805BFB0:
	movs r1, #0xe4
	lsls r1, r1, #2
	adds r1, r5, r1
	str r1, [sp, #0x68]
	movs r2, #0x8e
	lsls r2, r2, #3
	b .L0805BFEA
.L0805BFBE:
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r3, r5, r3
	str r3, [sp, #0x68]
	movs r4, #0x95
	lsls r4, r4, #3
	adds r7, r5, r4
	b .L0805BFEC
.L0805BFCE:
	movs r6, #0x80
	lsls r6, r6, #3
	adds r6, r5, r6
	str r6, [sp, #0x68]
	movs r0, #0x9c
	lsls r0, r0, #3
	adds r7, r5, r0
	b .L0805BFEC
.L0805BFDE:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r1, r5, r1
	str r1, [sp, #0x68]
	movs r2, #0xa3
	lsls r2, r2, #3
.L0805BFEA:
	adds r7, r5, r2
.L0805BFEC:
	ldr r3, [sp, #0x68]
	ldr r1, [r3]
	ldr r3, [r1]
	ldr r4, [sp, #0x68]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r4, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	ldr r0, [sp, #0x68]
	adds r0, #0x14
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x2c
	mov r3, sl
	muls r3, r0, r3
	mov sb, r3
	movs r4, #0xa2
	lsls r4, r4, #5
	adds r0, r5, r4
	add r0, sb
	str r0, [sp, #0x6c]
	movs r6, #2
	ldrsh r1, [r0, r6]
	ldr r0, .L0805C18C @ =0x000013EC
	adds r0, r5, r0
	str r0, [sp, #0x70]
	ldrh r0, [r0]
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2]
	mov r3, sl
	lsls r4, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r0, #0x3c
	str r0, [sp, #0x74]
	strh r0, [r2, #2]
	movs r0, #2
	strh r0, [r2, #8]
	movs r1, #0xc7
	lsls r1, r1, #3
	adds r6, r5, r1
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_080074C0
	mov r2, r8
	strh r0, [r2, #4]
	movs r3, #0xc5
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r1, [sp, #0x68]
	ldrh r2, [r1, #0xc]
	lsls r2, r2, #2
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrh r2, [r1]
	lsls r2, r2, #1
	ldr r3, .L0805C190 @ =0x00000BDA
	adds r1, r5, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #6]
	movs r1, #1
	strb r1, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	str r4, [sp, #0x8c]
	cmp r1, #0
	beq .L0805C0BE
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805C0BE:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	mov r1, sb
	adds r0, r5, r1
	ldr r2, .L0805C194 @ =0x0000144E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bls .L0805C17C
	ldr r1, [r7]
	ldr r3, [r1]
	ldrh r2, [r7, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x84]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	adds r0, r7, #0
	adds r0, #0x14
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [sp, #0x6c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x70]
	ldrh r1, [r3]
	subs r0, r0, r1
	adds r0, #0x10
	mov r4, r8
	strh r0, [r4]
	add r0, sp, #0x74
	ldrh r0, [r0]
	strh r0, [r4, #2]
	movs r1, #2
	strh r1, [r4, #8]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_080074C0
	strh r0, [r4, #4]
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldrh r2, [r7, #0xc]
	lsls r2, r2, #2
	ldr r1, [r7, #4]
	adds r1, r1, r2
	ldrh r2, [r1]
	lsls r2, r2, #1
	ldr r3, .L0805C198 @ =0x00000BE2
	adds r1, r5, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	strh r1, [r4, #6]
	movs r6, #1
	strb r6, [r4, #0x18]
	adds r0, r5, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L0805C176
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805C176:
	add r3, sp, #4
	bl func_0805E99C
.L0805C17C:
	mov r0, sl
	cmp r0, #1
	beq .L0805C1B2
	cmp r0, #1
	bgt .L0805C19C
	cmp r0, #0
	beq .L0805C1A8
	b .L0805C1E4
	.align 2, 0
.L0805C18C: .4byte 0x000013EC
.L0805C190: .4byte 0x00000BDA
.L0805C194: .4byte 0x0000144E
.L0805C198: .4byte 0x00000BE2
.L0805C19C:
	mov r1, sl
	cmp r1, #2
	beq .L0805C1BC
	cmp r1, #3
	beq .L0805C1DC
	b .L0805C1E4
.L0805C1A8:
	movs r2, #0x82
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp, #0x68]
	b .L0805C1E4
.L0805C1B2:
	movs r3, #0x90
	lsls r3, r3, #2
	adds r3, r5, r3
	str r3, [sp, #0x68]
	b .L0805C1E4
.L0805C1BC:
	ldr r4, .L0805C1D8 @ =0x0000140E
	adds r0, r5, r4
	ldrb r0, [r0]
	movs r6, #0xba
	lsls r6, r6, #2
	adds r6, r5, r6
	str r6, [sp, #0x68]
	cmp r0, #0
	bne .L0805C1E4
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r7, r5, r7
	str r7, [sp, #0x68]
	b .L0805C1E4
	.align 2, 0
.L0805C1D8: .4byte 0x0000140E
.L0805C1DC:
	movs r0, #0xac
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x68]
.L0805C1E4:
	ldr r2, [sp, #0x68]
	ldr r1, [r2]
	ldr r3, [r1]
	ldrh r2, [r2, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x68]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r0, [sp, #0x68]
	adds r0, #0x14
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	movs r4, #0xa2
	lsls r4, r4, #5
	adds r0, r5, r4
	adds r0, r0, r1
	movs r6, #2
	ldrsh r1, [r0, r6]
	ldr r7, .L0805C2DC @ =0x000013EC
	adds r0, r5, r7
	ldrh r0, [r0]
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0]
	ldr r0, [sp, #0x8c]
	add r0, sl
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	mov r1, r8
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	adds r0, r4, r5
	movs r2, #0xcb
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r3, r8
	strh r0, [r3, #6]
	movs r6, #1
	mov sb, r6
	mov r7, sb
	strb r7, [r3, #0x18]
	ldr r0, [sp, #0x68]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	mov r1, sl
	subs r1, #1
	str r1, [sp, #0x88]
	cmp r0, #0
	blt .L0805C288
	b .L0805C3BA
.L0805C288:
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r7, [sp, #0x28]
	adds r0, r4, r5
	movs r2, #0xcb
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L0805C2AE
	mov r4, sp
	ldrh r3, [r4, #0x2c]
.L0805C2AE:
	lsls r2, r2, #5
	ldr r0, .L0805C2E0 @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0x84]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0805C2E4
	cmp r1, #0
	beq .L0805C2D4
	adds r0, r1, #0
	ldr r1, [sp, #0x84]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805C2D4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0805C3BA
	.align 2, 0
.L0805C2DC: .4byte 0x000013EC
.L0805C2E0: .4byte 0x06010000
.L0805C2E4:
	str r1, [sp, #0x98]
	mov r7, sb
	str r7, [sp, #0x64]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L0805C2FC
	adds r0, r1, #0
.L0805C2FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805C31A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x80]
	cmp r0, #0
	bne .L0805C320
	adds r0, r4, #0
	bl func_080D3BC0
	b .L0805C320
.L0805C31A:
	movs r0, #0
	movs r2, #0
	str r2, [sp, #0x80]
.L0805C320:
	adds r4, r0, #0
	mov sb, r4
	ldr r2, [r6]
	mov ip, sb
	mov r3, sl
	subs r3, #1
	str r3, [sp, #0x88]
	ldr r4, [sp, #0x98]
	cmp r2, r4
	beq .L0805C352
.L0805C334:
	mov r7, ip
	cmp r7, #0
	beq .L0805C346
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805C346:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x98]
	cmp r2, r1
	bne .L0805C334
.L0805C352:
	mov r4, ip
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L0805C36E
	cmp r4, #0
	beq .L0805C36A
	adds r0, r4, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805C36A:
	adds r4, #0x10
	b .L0805C396
.L0805C36E:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805C394
.L0805C376:
	cmp r2, #0
	beq .L0805C386
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805C386:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805C376
.L0805C394:
	adds r4, r2, #0
.L0805C396:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805C3A6
.L0805C3A0:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805C3A0
.L0805C3A6:
	cmp r0, #0
	beq .L0805C3AE
	bl free
.L0805C3AE:
	ldr r0, [sp, #0x80]
	add r0, sb
	mov r2, sb
	str r2, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0805C3BA:
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805C3C8
	mov r3, sp
	ldrh r2, [r3, #0x24]
.L0805C3C8:
	ldr r0, [sp, #0x8c]
	add r0, sl
	lsls r0, r0, #3
	movs r4, #0xcb
	lsls r4, r4, #3
	adds r0, r0, r4
	adds r0, r5, r0
	str r0, [sp]
	adds r0, r5, #0
	add r3, sp, #4
	bl func_0805C63C
	ldr r6, .L0805C628 @ =0x0000140E
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0805C4A2
	mov r7, sl
	cmp r7, #2
	bne .L0805C4A2
	ldr r0, [sp, #0x78]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x7c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xcd
	lsls r3, r3, #2
	adds r0, r5, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r6, .L0805C62C @ =0x00001498
	adds r0, r5, r6
	movs r7, #2
	ldrsh r1, [r0, r7]
	ldr r2, .L0805C630 @ =0x000013EC
	adds r0, r5, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	subs r1, #0x27
	mov r3, r8
	strh r1, [r3]
	movs r0, #0x4c
	strh r0, [r3, #2]
	movs r4, #0xbd
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r6, r8
	strh r0, [r6, #4]
	mov r7, sl
	strh r7, [r6, #8]
	movs r0, #1
	strb r0, [r6, #0x18]
	movs r1, #0xbc
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x7c]
	ldr r1, [r4]
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r0, [r6, #6]
	adds r0, r5, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L0805C49C
	mov r6, sp
	ldrh r2, [r6, #0x24]
.L0805C49C:
	add r3, sp, #4
	bl func_0805E99C
.L0805C4A2:
	movs r7, #0xb1
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x90]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r3, .L0805C634 @ =0x0000059C
	adds r0, r5, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	movs r6, #0xa2
	lsls r6, r6, #5
	adds r0, r5, r6
	adds r0, r0, r1
	movs r7, #2
	ldrsh r1, [r0, r7]
	ldr r2, .L0805C630 @ =0x000013EC
	adds r0, r5, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3]
	ldr r0, [sp, #0x8c]
	add r0, sl
	lsls r0, r0, #3
	adds r0, #0x3c
	strh r0, [r3, #2]
	movs r0, #2
	strh r0, [r3, #8]
	movs r4, #0xbb
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r6, r8
	strh r0, [r6, #4]
	movs r7, #0xca
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r6, #6]
	movs r0, #1
	strb r0, [r6, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805C550
	mov r0, sp
	ldrh r2, [r0, #0x24]
.L0805C550:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	ldr r1, [sp, #0x88]
	mov sl, r1
	cmp r1, #0
	blt .L0805C562
	b .L0805BF78
.L0805C562:
	movs r2, #0
	mov sl, r2
	movs r3, #1
	mov sb, r3
	add r7, sp, #4
	ldr r4, [sp, #0x84]
	mov r8, r4
.L0805C570:
	mov r6, sl
	lsls r6, r6, #2
	str r6, [sp, #0x9c]
	movs r1, #0xd7
	lsls r1, r1, #3
	adds r0, r5, r1
	adds r0, r0, r6
	str r0, [sp, #0xa0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq .L0805C60E
	mov r4, sl
	mov r6, sb
	ands r4, r6
	mov r0, r8
	adds r1, r5, #0
	adds r1, #0x50
	adds r2, r4, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, r8
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r6, .L0805C630 @ =0x000013EC
	adds r1, r5, r6
	ldr r2, [sp, #0xa0]
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r7]
	ldr r3, .L0805C638 @ =0x000006BA
	adds r0, r5, r3
	ldr r6, [sp, #0x9c]
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r7, #2]
	movs r1, #0xbb
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r7, #4]
	movs r2, #0xba
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r4, r4, #3
	adds r0, r0, r4
	strh r0, [r7, #6]
	movs r0, #2
	strh r0, [r7, #8]
	mov r3, sb
	strb r3, [r7, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805C606
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805C606:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L0805C60E:
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #0x1f
	ble .L0805C570
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805C628: .4byte 0x0000140E
.L0805C62C: .4byte 0x00001498
.L0805C630: .4byte 0x000013EC
.L0805C634: .4byte 0x0000059C
.L0805C638: .4byte 0x000006BA

	thumb_func_start func_0805C63C
func_0805C63C: @ 0x0805C63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	mov r8, r3
	mov sb, r1
	lsls r2, r2, #3
	add r2, sb
	str r2, [sp, #0xc]
	cmp sb, r2
	bne .L0805C65A
	b .L0805C7D4
.L0805C65A:
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp]
	lsls r0, r1, #7
	asrs r3, r0, #0x17
	mov r0, sp
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1e
	adds r4, r0, #0
	lsrs r1, r1, #0x1e
	cmp r4, #0
	bne .L0805C684
	movs r6, #8
	lsls r6, r1
	adds r4, r6, #0
	b .L0805C6A4
.L0805C684:
	adds r0, r1, #1
	lsrs r0, r0, #1
	adds r0, #1
	movs r2, #8
	lsls r2, r0
	movs r0, #8
	cmp r1, #1
	beq .L0805C696
	lsrs r0, r2, #1
.L0805C696:
	cmp r4, #1
	beq .L0805C6A0
	adds r6, r2, #0
	adds r4, r0, #0
	b .L0805C6A4
.L0805C6A0:
	adds r6, r0, #0
	adds r4, r2, #0
.L0805C6A4:
	mov r0, r8
	ldrb r7, [r0, #0x10]
	movs r1, #1
	mov sl, r1
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq .L0805C6CE
	adds r0, r3, r4
	rsbs r3, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #3
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1c
	ldr r0, .L0805C7E4 @ =0xEFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L0805C6CE:
	movs r0, #2
	ands r0, r7
	cmp r0, #0
	beq .L0805C6F0
	adds r0, r5, r6
	rsbs r5, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #2
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1d
	ldr r0, .L0805C7E8 @ =0xDFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L0805C6F0:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r3, r0
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r3, r4
	cmp r0, #0
	ble .L0805C7C8
	cmp r3, #0xef
	bgt .L0805C7C8
	adds r0, r5, r6
	cmp r0, #0
	ble .L0805C7C8
	cmp r5, #0x9f
	bgt .L0805C7C8
	ldr r0, .L0805C7EC @ =0x000001FF
	ands r3, r0
	lsls r2, r3, #0x10
	ldr r1, .L0805C7F0 @ =0xFE00FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	ldr r1, .L0805C7F4 @ =0xFFFFFF00
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r4, sp
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldr r3, [sp, #0x30]
	adds r0, r0, r3
	adds r0, #8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, .L0805C7F8 @ =0xFFFF0FFF
	ldr r2, [sp, #4]
	ands r2, r1
	orrs r2, r0
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x16
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, .L0805C7FC @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r2, .L0805C800 @ =0xFFFFF3FF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	mov r3, r8
	ldr r2, [r3, #0x14]
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #8
	ldr r0, .L0805C804 @ =0xFFFFFCFF
	ands r1, r0
	orrs r1, r2
	ldrb r2, [r3, #0x18]
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #0xc
	ldr r0, .L0805C808 @ =0xFFFFEFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805C7C8
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805C7C8:
	movs r0, #8
	add sb, r0
	ldr r1, [sp, #0xc]
	cmp sb, r1
	beq .L0805C7D4
	b .L0805C65A
.L0805C7D4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805C7E4: .4byte 0xEFFFFFFF
.L0805C7E8: .4byte 0xDFFFFFFF
.L0805C7EC: .4byte 0x000001FF
.L0805C7F0: .4byte 0xFE00FFFF
.L0805C7F4: .4byte 0xFFFFFF00
.L0805C7F8: .4byte 0xFFFF0FFF
.L0805C7FC: .4byte 0xFFFFFC00
.L0805C800: .4byte 0xFFFFF3FF
.L0805C804: .4byte 0xFFFFFCFF
.L0805C808: .4byte 0xFFFFEFFF

	thumb_func_start func_0805C80C
func_0805C80C: @ 0x0805C80C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r6, .L0805C90C @ =0x0000142C
	add r6, r8
	ldr r0, .L0805C910 @ =0x0000140E
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805C872
	ldr r1, .L0805C914 @ =0x000014A4
	add r1, r8
	movs r0, #0x80
	strh r0, [r1]
	ldr r4, .L0805C918 @ =0x000014DC
	add r4, r8
	ldr r0, [r4]
	bl GetAdequacy__C3Pet
	ldr r5, .L0805C91C @ =0x000014A1
	add r5, r8
	strb r0, [r5]
	ldr r0, [r4]
	bl GetAffection__C6Animal
	ldr r1, .L0805C920 @ =0x000014A2
	add r1, r8
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0xfa
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r4, r0, #0
	bl rand
	movs r1, #3
	ands r0, r1
	adds r0, #1
	adds r4, r4, r0
	ldr r0, .L0805C924 @ =0x000014AC
	add r0, r8
	strh r4, [r0]
.L0805C872:
	movs r5, #0
	ldr r0, .L0805C928 @ =0x00000C49
	mov sl, r0
	mov sb, r5
.L0805C87A:
	ldrb r0, [r6, #0x1d]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xb0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	movs r1, #0x3c
	bl __divsi3
	adds r4, r0, #0
	str r4, [r6]
	ldrb r0, [r6, #0x1e]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	movs r1, #0x3c
	bl __divsi3
	adds r0, r0, r4
	str r0, [r6, #4]
	subs r0, r0, r4
	movs r1, #0x3c
	bl __divsi3
	str r0, [r6, #8]
	mov r0, sb
	str r0, [r6, #0xc]
	movs r0, #0xc
	strh r0, [r6, #0x18]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	mov r1, sb
	strb r1, [r6, #0x1c]
	str r4, [r6, #0x10]
	movs r0, #0xd7
	lsls r0, r0, #0x13
	str r0, [r6, #0x14]
	movs r0, #0xff
	strb r0, [r6, #0x1f]
	mov r0, sb
	strh r0, [r6, #0x22]
	strh r0, [r6, #0x2a]
	ldr r0, .L0805C92C @ =0x00001424
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #1
	adds r7, r6, #0
	adds r7, #0x2c
	cmp r0, #0
	bne .L0805C952
	ldr r0, .L0805C910 @ =0x0000140E
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805C930
	cmp r5, #2
	bne .L0805C930
	adds r1, r6, #0
	adds r1, #0x24
	movs r2, #0
	adds r0, r6, #0
	adds r0, #0x27
.L0805C900:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge .L0805C900
	b .L0805C952
	.align 2, 0
.L0805C90C: .4byte 0x0000142C
.L0805C910: .4byte 0x0000140E
.L0805C914: .4byte 0x000014A4
.L0805C918: .4byte 0x000014DC
.L0805C91C: .4byte 0x000014A1
.L0805C920: .4byte 0x000014A2
.L0805C924: .4byte 0x000014AC
.L0805C928: .4byte 0x00000C49
.L0805C92C: .4byte 0x00001424
.L0805C930:
	movs r2, #0
	adds r4, r5, #1
	adds r7, r6, #0
	adds r7, #0x2c
	adds r3, r6, #0
	adds r3, #0x24
	ldr r5, .L0805C968 @ =gUnk_080FA99E
.L0805C93E:
	adds r0, r3, r2
	ldrh r1, [r6, #0x20]
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r1, r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #3
	ble .L0805C93E
.L0805C952:
	adds r5, r4, #0
	adds r6, r7, #0
	cmp r5, #3
	ble .L0805C87A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805C968: .4byte gUnk_080FA99E

	thumb_func_start func_0805C96C
func_0805C96C: @ 0x0805C96C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, .L0805C9C4 @ =0x0000142C
	adds r5, r6, r0
	movs r1, #0xd7
	lsls r1, r1, #0x13
	str r1, [sp, #0x20]
	movs r2, #0
	mov r8, r2
	add r3, sp, #0x10
	mov sl, r3
.L0805C98C:
	ldrb r0, [r5, #0x1c]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls .L0805C9B0
	strb r1, [r5, #0x1c]
	ldrh r0, [r5, #0x1a]
	adds r0, #3
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfe
	ble .L0805C9B0
	movs r0, #0xff
	strh r0, [r5, #0x1a]
.L0805C9B0:
	ldrh r0, [r5, #0x22]
	cmp r0, #4
	bls .L0805C9B8
	b .L0805CBA6
.L0805C9B8:
	lsls r0, r0, #2
	ldr r1, .L0805C9C8 @ =.L0805C9CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805C9C4: .4byte 0x0000142C
.L0805C9C8: .4byte .L0805C9CC
.L0805C9CC: @ jump table
	.4byte .L0805CBA6 @ case 0
	.4byte .L0805C9E0 @ case 1
	.4byte .L0805CA96 @ case 2
	.4byte .L0805CAC4 @ case 3
	.4byte .L0805CAF4 @ case 4
.L0805C9E0:
	mov r7, r8
	cmp r7, #1
	beq .L0805CA16
	cmp r7, #1
	bgt .L0805C9F0
	cmp r7, #0
	beq .L0805C9FC
	b .L0805CA8E
.L0805C9F0:
	mov r0, r8
	cmp r0, #2
	beq .L0805CA32
	cmp r0, #3
	beq .L0805CA6E
	b .L0805CA8E
.L0805C9FC:
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	subs r1, #0x88
	strh r1, [r0, #0x10]
	movs r2, #0xe4
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0, #0x10]
	movs r3, #0x8e
	lsls r3, r3, #3
	adds r0, r6, r3
	b .L0805CA66
.L0805CA16:
	movs r7, #0x90
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0, #0x10]
	movs r3, #0x95
	lsls r3, r3, #3
	adds r0, r6, r3
	b .L0805CA66
.L0805CA32:
	ldr r7, .L0805CA44 @ =0x0000140E
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CA48
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r6, r0
	b .L0805CA4E
	.align 2, 0
.L0805CA44: .4byte 0x0000140E
.L0805CA48:
	movs r2, #0xba
	lsls r2, r2, #2
	adds r1, r6, r2
.L0805CA4E:
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r7, #0x9c
	lsls r7, r7, #3
	adds r0, r6, r7
.L0805CA66:
	movs r1, #0
	bl func_0805E860
	b .L0805CA8E
.L0805CA6E:
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r0, r6, r2
	strh r1, [r0, #0x10]
	movs r3, #0xa3
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #0
	bl func_0805E860
.L0805CA8E:
	movs r0, #0x3c
	strh r0, [r5, #0x18]
	movs r0, #2
	strh r0, [r5, #0x22]
.L0805CA96:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	subs r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	ldr r0, [r5, #4]
	adds r2, r0, #0
	cmp r1, r2
	blt .L0805CAB0
	strh r3, [r5, #0x18]
.L0805CAB0:
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bgt .L0805CBA6
	movs r0, #3
	strh r0, [r5, #0x22]
	str r2, [r5, #0x10]
	movs r0, #0x3c
	strh r0, [r5, #0x18]
	b .L0805CBA6
.L0805CAC4:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt .L0805CBA6
	movs r0, #4
	strh r0, [r5, #0x22]
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	movs r0, #0x3c
	bl __divsi3
	adds r0, #0x1e
	strh r0, [r5, #0x18]
	ldr r0, [r5, #4]
	ldr r1, [r5]
	subs r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	bl __divsi3
	str r0, [r5, #0xc]
	b .L0805CBA6
.L0805CAF4:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	subs r1, r1, r0
	str r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	subs r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	ldr r0, [r5]
	adds r2, r0, #0
	cmp r1, r2
	bgt .L0805CB0E
	strh r3, [r5, #0x18]
.L0805CB0E:
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bgt .L0805CBA6
	strh r3, [r5, #0x22]
	str r2, [r5, #0x10]
	movs r0, #0xc
	strh r0, [r5, #0x18]
	mov r0, r8
	cmp r0, #1
	beq .L0805CB4E
	cmp r0, #1
	bgt .L0805CB2E
	cmp r0, #0
	beq .L0805CB3A
	b .L0805CBA6
.L0805CB2E:
	mov r1, r8
	cmp r1, #2
	beq .L0805CB62
	cmp r1, #3
	beq .L0805CB92
	b .L0805CBA6
.L0805CB3A:
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r3, #0xe4
	lsls r3, r3, #2
	adds r0, r6, r3
	b .L0805CBA4
.L0805CB4E:
	movs r7, #0x90
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r6, r2
	b .L0805CBA4
.L0805CB62:
	ldr r3, .L0805CB74 @ =0x0000140E
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CB78
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r1, r6, r7
	b .L0805CB7E
	.align 2, 0
.L0805CB74: .4byte 0x0000140E
.L0805CB78:
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r6, r0
.L0805CB7E:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	b .L0805CBA6
.L0805CB92:
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r7, #0x87
	lsls r7, r7, #3
	adds r0, r6, r7
.L0805CBA4:
	strh r1, [r0, #0x10]
.L0805CBA6:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	mov r2, r8
	lsls r0, r2, #2
	add r0, sl
	str r1, [r0]
	ldr r3, [sp, #0x20]
	cmp r3, r1
	ble .L0805CBBE
	str r1, [sp, #0x20]
.L0805CBBE:
	lsrs r7, r1, #0x10
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x1f
	ble .L0805CBF0
	asrs r0, r0, #0x15
	movs r2, #7
	mov r3, r8
	lsls r1, r3, #3
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0xd7
	lsls r2, r2, #3
	adds r0, r6, r2
	adds r3, r0, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, .L0805CC9C @ =0x0000FFE0
	ands r1, r2
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq .L0805CBF0
	strh r7, [r3]
.L0805CBF0:
	movs r1, #1
	add r8, r1
	adds r5, #0x2c
	mov r2, r8
	cmp r2, #3
	bgt .L0805CBFE
	b .L0805C98C
.L0805CBFE:
	movs r3, #0
	mov r8, r3
	mov r7, sl
	mov r5, sl
.L0805CC06:
	movs r0, #0
	mov sb, r0
	movs r3, #0
	adds r4, r5, #0
	adds r2, r7, #0
.L0805CC10:
	cmp r8, r3
	beq .L0805CC20
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	ble .L0805CC20
	movs r1, #1
	add sb, r1
.L0805CC20:
	adds r2, #4
	adds r3, #1
	cmp r3, #3
	ble .L0805CC10
	mov r2, sb
	lsls r0, r2, #2
	add r0, sp
	mov r3, r8
	str r3, [r0]
	adds r5, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	ble .L0805CC06
	movs r2, #0
	mov sb, r2
	mov r8, r2
.L0805CC44:
	mov r3, r8
	lsls r1, r3, #2
	mov r7, sp
	adds r4, r7, r1
	ldr r3, [r4]
	movs r0, #0x2c
	muls r0, r3, r0
	ldr r2, .L0805CCA0 @ =0x0000142C
	adds r0, r0, r2
	adds r5, r6, r0
	ldrb r0, [r5, #0x1f]
	cmp r0, #0xff
	beq .L0805CC60
	b .L0805CE26
.L0805CC60:
	movs r0, #0xb8
	lsls r0, r0, #0x10
	ldr r7, [r5, #0x14]
	cmp r7, r0
	bgt .L0805CD18
	ldr r7, .L0805CCA4 @ =0x000013FC
	adds r2, r6, r7
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #1
	adds r7, #2
	adds r0, r6, r7
	adds r0, r0, r1
	strh r3, [r0]
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	strb r1, [r5, #0x1f]
	lsls r1, r1, #0x18
	cmp r1, #0
	beq .L0805CC8C
	b .L0805CE34
.L0805CC8C:
	ldr r0, [r4]
	cmp r0, #1
	beq .L0805CCC0
	cmp r0, #1
	bgt .L0805CCA8
	cmp r0, #0
	beq .L0805CCB2
	b .L0805CE34
	.align 2, 0
.L0805CC9C: .4byte 0x0000FFE0
.L0805CCA0: .4byte 0x0000142C
.L0805CCA4: .4byte 0x000013FC
.L0805CCA8:
	cmp r0, #2
	beq .L0805CCD0
	cmp r0, #3
	beq .L0805CCFC
	b .L0805CE34
.L0805CCB2:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, .L0805CCBC @ =0x0000076A
	b .L0805CD04
	.align 2, 0
.L0805CCBC: .4byte 0x0000076A
.L0805CCC0:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, .L0805CCCC @ =0x00000746
	b .L0805CD04
	.align 2, 0
.L0805CCCC: .4byte 0x00000746
.L0805CCD0:
	ldr r2, .L0805CCE4 @ =0x0000140E
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CCEC
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, .L0805CCE8 @ =0x00000752
	b .L0805CD04
	.align 2, 0
.L0805CCE4: .4byte 0x0000140E
.L0805CCE8: .4byte 0x00000752
.L0805CCEC:
	movs r7, #0xba
	lsls r7, r7, #2
	adds r4, r6, r7
	ldr r1, .L0805CCF8 @ =0x00000776
	b .L0805CD04
	.align 2, 0
.L0805CCF8: .4byte 0x00000776
.L0805CCFC:
	movs r0, #0xac
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, .L0805CD14 @ =0x0000075E
.L0805CD04:
	adds r0, r4, #0
	bl func_0805E860
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x10]
	b .L0805CE34
	.align 2, 0
.L0805CD14: .4byte 0x0000075E
.L0805CD18:
	ldr r2, .L0805CD58 @ =0x0000140E
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805CD88
	cmp r3, #2
	bne .L0805CD88
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0805CD36
	b .L0805CE34
.L0805CD36:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa8
	bl func_08008B6C
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	cmp r0, #0x28
	ble .L0805CE34
	ldrh r0, [r5, #0x22]
	cmp r0, #4
	bhi .L0805CE34
	lsls r0, r0, #2
	ldr r1, .L0805CD5C @ =.L0805CD60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805CD58: .4byte 0x0000140E
.L0805CD5C: .4byte .L0805CD60
.L0805CD60: @ jump table
	.4byte .L0805CD74 @ case 0
	.4byte .L0805CE34 @ case 1
	.4byte .L0805CE34 @ case 2
	.4byte .L0805CD7A @ case 3
	.4byte .L0805CD74 @ case 4
.L0805CD74:
	movs r0, #1
	strh r0, [r5, #0x22]
	b .L0805CD80
.L0805CD7A:
	ldrh r0, [r5, #0x18]
	adds r0, #0x3c
	strh r0, [r5, #0x18]
.L0805CD80:
	ldrh r0, [r5, #0x1a]
	subs r0, #0x28
	strh r0, [r5, #0x1a]
	b .L0805CE34
.L0805CD88:
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	bne .L0805CE34
	ldrh r2, [r5, #0x18]
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L0805CD9E
	subs r0, r2, #1
	strh r0, [r5, #0x18]
	b .L0805CE34
.L0805CD9E:
	movs r2, #0
	mov r0, r8
	cmp r0, #0
	ble .L0805CDCC
	mov r3, sp
	adds r0, r3, r1
	ldr r1, [r0]
	lsls r1, r1, #2
	add r1, sl
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, .L0805CE14 @ =0x001FFFFF
	cmp r1, r0
	ble .L0805CDCC
	movs r2, #1
.L0805CDCC:
	ldr r0, .L0805CE18 @ =0x02FFFFFF
	cmp r7, r0
	bgt .L0805CDD4
	adds r2, #2
.L0805CDD4:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r2
	ldrb r4, [r0]
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble .L0805CE20
	ldrh r1, [r5, #0x1a]
	movs r7, #0x1a
	ldrsh r0, [r5, r7]
	cmp r0, #0x27
	ble .L0805CE34
	adds r0, r1, #0
	subs r0, #0x28
	strh r0, [r5, #0x1a]
	movs r0, #1
	strh r0, [r5, #0x22]
	ldr r1, .L0805CE1C @ =0x0000140E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CE34
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa8
	bl func_08008B6C
	b .L0805CE34
	.align 2, 0
.L0805CE14: .4byte 0x001FFFFF
.L0805CE18: .4byte 0x02FFFFFF
.L0805CE1C: .4byte 0x0000140E
.L0805CE20:
	movs r0, #0xc
	strh r0, [r5, #0x18]
	b .L0805CE34
.L0805CE26:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bge .L0805CE34
	movs r0, #0
	str r0, [r5, #0x10]
	movs r2, #1
	add sb, r2
.L0805CE34:
	movs r3, #1
	add r8, r3
	mov r7, r8
	cmp r7, #3
	bgt .L0805CE40
	b .L0805CC44
.L0805CE40:
	ldr r1, .L0805CEA8 @ =0x0000140E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805CE50
	mov r2, sl
	ldr r2, [r2, #8]
	str r2, [sp, #0x20]
.L0805CE50:
	ldr r3, .L0805CEAC @ =0x000013EC
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0x30
	bls .L0805CE94
	ldr r7, [sp, #0x20]
	asrs r7, r7, #0x10
	str r7, [sp, #0x20]
	ldrh r0, [r2]
	adds r0, #0x78
	cmp r7, r0
	bge .L0805CE94
	adds r0, r7, #0
	subs r0, #0x78
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bhi .L0805CE7A
	movs r0, #0x30
	strh r0, [r2]
.L0805CE7A:
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #3
	subs r0, r1, r0
	lsls r0, r0, #1
	subs r1, r1, r0
	ldr r3, .L0805CEB0 @ =0x000013EA
	adds r0, r6, r3
	strh r1, [r0]
	ldrh r1, [r2]
	ldr r7, .L0805CEB4 @ =0x000013EE
	adds r0, r6, r7
	strh r1, [r0]
.L0805CE94:
	mov r0, sb
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805CEA8: .4byte 0x0000140E
.L0805CEAC: .4byte 0x000013EC
.L0805CEB0: .4byte 0x000013EA
.L0805CEB4: .4byte 0x000013EE

	thumb_func_start func_0805CEB8
func_0805CEB8: @ 0x0805CEB8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L0805CEF4 @ =vtable_unk_080E798C
	str r0, [r5]
	ldr r0, .L0805CEF8 @ =0x000014FC
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_0805806C
	str r0, [r5, #4]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r5, #8]
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0805CEF4: .4byte vtable_unk_080E798C
.L0805CEF8: .4byte 0x000014FC

	thumb_func_start func_0805CEFC
func_0805CEFC: @ 0x0805CEFC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0805CF38 @ =vtable_unk_080E798C
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0805CF18
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF18:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0805CF2A
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF2A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0805CF38: .4byte vtable_unk_080E798C

	thumb_func_start func_0805CF3C
func_0805CF3C: @ 0x0805CF3C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_080588AC
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805CF5E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF5E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0805CF70
func_0805CF70: @ 0x0805CF70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	movs r5, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L0805D154 @ =vtable_unk_080E799C
	str r0, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #0xc]
	movs r0, #4
	bl __builtin_new
	adds r6, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	ldr r0, [r7, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	str r0, [r7, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x20
	ldr r1, .L0805D158 @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	adds r6, r7, #0
	adds r6, #0x50
	ldr r1, .L0805D15C @ =gUnk_08728208
	adds r0, r6, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x80
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x94
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	adds r0, #0x1c
	strb r1, [r0]
	adds r0, #4
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xc8
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r3, [r0, #0x18]
	adds r0, #0x1c
	strb r3, [r0]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xfc
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r0, .L0805D160 @ =0x00000AEC
	adds r1, r7, r0
	ldr r0, .L0805D164 @ =vtable_unk_080E79A8
	str r0, [r1]
	str r5, [r1, #4]
	movs r1, #0xad
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r0, [r7, #8]
	ldr r3, .L0805D168 @ =0x00002C48
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xf
	str r0, [r2]
	ldr r1, .L0805D16C @ =0x0001869F
	cmp r0, r1
	ble .L0805D13C
	str r1, [r2]
.L0805D13C:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r5, [r0]
	adds r0, r7, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805D154: .4byte vtable_unk_080E799C
.L0805D158: .4byte gUnk_08527094
.L0805D15C: .4byte gUnk_08728208
.L0805D160: .4byte 0x00000AEC
.L0805D164: .4byte vtable_unk_080E79A8
.L0805D168: .4byte 0x00002C48
.L0805D16C: .4byte 0x0001869F

	thumb_func_start func_0805D170
func_0805D170: @ 0x0805D170
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0805D278 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	add r7, sp, #8
	add r0, sp, #0x14
	mov sl, r0
	movs r1, #9
	ldr r2, .L0805D27C @ =0x00000AE9
	adds r0, r6, r2
.L0805D1CE:
	strb r1, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L0805D1CE
	ldr r0, [r6, #8]
	ldr r2, .L0805D280 @ =0x00002C4A
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0805D1F0
	movs r3, #0xae
	lsls r3, r3, #4
	adds r1, r6, r3
	movs r0, #0xa
	strb r0, [r1]
.L0805D1F0:
	ldr r0, [r6, #8]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0805D204
	ldr r4, .L0805D284 @ =0x00000AE1
	adds r1, r6, r4
	movs r0, #0xb
	strb r0, [r1]
.L0805D204:
	adds r0, r6, #0
	bl func_0805D9C0
	adds r0, r6, #0
	bl func_0805DC24
	ldr r1, .L0805D288 @ =0x00000AD4
	adds r0, r6, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, .L0805D28C @ =0x00000AD6
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L0805D290 @ =0x00000AD8
	adds r0, r6, r3
	strh r1, [r0]
	ldr r4, .L0805D294 @ =0x00000ADC
	adds r2, r6, r4
	movs r0, #2
	strh r0, [r2]
	ldr r2, .L0805D298 @ =0x00000ADA
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L0805D29C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #0
	mov r8, r3
.L0805D254:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r4, .L0805D298 @ =0x00000ADA
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xc
	bls .L0805D26E
	b .L0805D6EC
.L0805D26E:
	lsls r0, r0, #2
	ldr r1, .L0805D2A0 @ =.L0805D2A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D278: .4byte vtable_unk_080E5B80
.L0805D27C: .4byte 0x00000AE9
.L0805D280: .4byte 0x00002C4A
.L0805D284: .4byte 0x00000AE1
.L0805D288: .4byte 0x00000AD4
.L0805D28C: .4byte 0x00000AD6
.L0805D290: .4byte 0x00000AD8
.L0805D294: .4byte 0x00000ADC
.L0805D298: .4byte 0x00000ADA
.L0805D29C: .4byte 0x00000889
.L0805D2A0: .4byte .L0805D2A4
.L0805D2A4: @ jump table
	.4byte .L0805D2D8 @ case 0
	.4byte .L0805D2F0 @ case 1
	.4byte .L0805D488 @ case 2
	.4byte .L0805D488 @ case 3
	.4byte .L0805D488 @ case 4
	.4byte .L0805D4BC @ case 5
	.4byte .L0805D4D4 @ case 6
	.4byte .L0805D4F4 @ case 7
	.4byte .L0805D510 @ case 8
	.4byte .L0805D510 @ case 9
	.4byte .L0805D510 @ case 10
	.4byte .L0805D6A8 @ case 11
	.4byte .L0805D6DC @ case 12
.L0805D2D8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0805D2E6
	b .L0805D6EC
.L0805D2E6:
	ldr r2, .L0805D2EC @ =0x00000ADA
	adds r1, r6, r2
	b .L0805D6CA
	.align 2, 0
.L0805D2EC: .4byte 0x00000ADA
.L0805D2F0:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0805D35C
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	ldr r3, .L0805D320 @ =0x00000AD4
	adds r1, r6, r3
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble .L0805D324
	subs r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L0805D326
	.align 2, 0
.L0805D320: .4byte 0x00000AD4
.L0805D324:
	movs r1, #0
.L0805D326:
	ldr r2, .L0805D350 @ =0x00000AD4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L0805D354 @ =0x00000AD6
	adds r2, r6, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt .L0805D340
	b .L0805D6EC
.L0805D340:
	subs r0, r3, #1
	strh r0, [r2]
	ldr r0, .L0805D358 @ =0x00000ADA
	adds r1, r6, r0
	movs r0, #5
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D350: .4byte 0x00000AD4
.L0805D354: .4byte 0x00000AD6
.L0805D358: .4byte 0x00000ADA
.L0805D35C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq .L0805D3CC
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	ldr r2, .L0805D390 @ =0x00000AD4
	adds r1, r6, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #8
	bgt .L0805D394
	adds r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L0805D396
	.align 2, 0
.L0805D390: .4byte 0x00000AD4
.L0805D394:
	movs r1, #9
.L0805D396:
	ldr r4, .L0805D3C0 @ =0x00000AD4
	adds r0, r6, r4
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L0805D3C4 @ =0x00000AD6
	adds r2, r6, r3
	movs r4, #0
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	cmp r1, #7
	bgt .L0805D3B0
	b .L0805D6EC
.L0805D3B0:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, .L0805D3C8 @ =0x00000ADA
	adds r1, r6, r0
	movs r0, #6
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D3C0: .4byte 0x00000AD4
.L0805D3C4: .4byte 0x00000AD6
.L0805D3C8: .4byte 0x00000ADA
.L0805D3CC:
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq .L0805D454
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc5
	bl func_08008B6C
	ldr r1, .L0805D434 @ =0x00000ADC
	adds r0, r6, r1
	strh r5, [r0]
	ldr r2, .L0805D438 @ =0x00000AD4
	adds r0, r6, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r4, #0xae
	lsls r4, r4, #4
	adds r0, r6, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #4
	adds r1, r6, r2
	strh r0, [r1]
	ldr r2, .L0805D43C @ =gUnk_080FB000
	movs r4, #0
	ldrsh r3, [r1, r4]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	movs r4, #0xad
	lsls r4, r4, #4
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r1, r0
	bgt .L0805D444
	movs r1, #0xaf
	lsls r1, r1, #4
	adds r0, r6, r1
	str r3, [r0]
	ldr r2, .L0805D440 @ =0x00000ADA
	adds r1, r6, r2
	movs r0, #8
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D434: .4byte 0x00000ADC
.L0805D438: .4byte 0x00000AD4
.L0805D43C: .4byte gUnk_080FB000
.L0805D440: .4byte 0x00000ADA
.L0805D444:
	ldr r3, .L0805D450 @ =0x00000ADA
	adds r1, r6, r3
	movs r0, #7
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D450: .4byte 0x00000ADA
.L0805D454:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L0805D464
	b .L0805D6EC
.L0805D464:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc6
	bl func_08008B6C
	ldr r1, .L0805D480 @ =0x00000ADC
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, .L0805D484 @ =0x00000ADA
	adds r1, r6, r2
	movs r0, #2
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D480: .4byte 0x00000ADC
.L0805D484: .4byte 0x00000ADA
.L0805D488:
	ldr r3, .L0805D4A8 @ =0x00000ADC
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L0805D496
	b .L0805D6EC
.L0805D496:
	ldr r1, .L0805D4AC @ =0x00000ADE
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L0805D4B0
	subs r3, #2
	adds r1, r6, r3
	b .L0805D660
	.align 2, 0
.L0805D4A8: .4byte 0x00000ADC
.L0805D4AC: .4byte 0x00000ADE
.L0805D4B0:
	ldr r4, .L0805D4B8 @ =0x00000ADA
	adds r1, r6, r4
	b .L0805D69C
	.align 2, 0
.L0805D4B8: .4byte 0x00000ADA
.L0805D4BC:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	subs r1, #4
	strh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq .L0805D4D2
	b .L0805D6EC
.L0805D4D2:
	b .L0805D698
.L0805D4D4:
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r1, #4
	strh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq .L0805D4EA
	b .L0805D6EC
.L0805D4EA:
	ldr r4, .L0805D4F0 @ =0x00000ADA
	adds r1, r6, r4
	b .L0805D69C
	.align 2, 0
.L0805D4F0: .4byte 0x00000ADA
.L0805D4F4:
	ldr r1, .L0805D508 @ =0x00000ADC
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	beq .L0805D502
	b .L0805D6EC
.L0805D502:
	ldr r3, .L0805D50C @ =0x00000ADA
	adds r1, r6, r3
	b .L0805D69C
	.align 2, 0
.L0805D508: .4byte 0x00000ADC
.L0805D50C: .4byte 0x00000ADA
.L0805D510:
	ldr r4, .L0805D544 @ =0x00000ADC
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	beq .L0805D51E
	b .L0805D6EC
.L0805D51E:
	ldr r2, .L0805D548 @ =0x00000ADE
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq .L0805D52C
	b .L0805D698
.L0805D52C:
	subs r4, #4
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq .L0805D552
	cmp r0, #1
	bgt .L0805D54C
	cmp r0, #0
	beq .L0805D5C8
	b .L0805D600
	.align 2, 0
.L0805D544: .4byte 0x00000ADC
.L0805D548: .4byte 0x00000ADE
.L0805D54C:
	cmp r0, #8
	beq .L0805D588
	b .L0805D600
.L0805D552:
	ldr r0, [r6, #8]
	ldr r2, .L0805D578 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800EAFC
	ldr r2, [r6, #8]
	ldr r3, .L0805D57C @ =0x00002C4A
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #8]
	ldr r4, .L0805D580 @ =0x00001C2C
	adds r0, r0, r4
	ldr r1, .L0805D584 @ =0x0000015F
	bl func_0800F510
	b .L0805D624
	.align 2, 0
.L0805D578: .4byte 0x00001BD8
.L0805D57C: .4byte 0x00002C4A
.L0805D580: .4byte 0x00001C2C
.L0805D584: .4byte 0x0000015F
.L0805D588:
	ldr r0, .L0805D5C0 @ =gUnk_080FB0F0
	ldrh r1, [r0, #0x10]
	adds r0, r7, #0
	bl __4FoodUi
	ldr r5, [r6, #8]
	ldr r0, .L0805D5C4 @ =0x00001C2C
	adds r5, r5, r0
	add r4, sp, #0xc
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0xd
	ldrb r2, [r0]
	lsls r2, r2, #8
	orrs r2, r1
	adds r0, #1
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	orrs r1, r2
	adds r0, r5, #0
	bl func_0800F3B0
	b .L0805D624
	.align 2, 0
.L0805D5C0: .4byte gUnk_080FB0F0
.L0805D5C4: .4byte 0x00001C2C
.L0805D5C8:
	ldr r2, [r6, #8]
	ldr r1, .L0805D668 @ =0x00002C4A
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r6, #8]
	ldr r3, .L0805D66C @ =0x0000218C
	adds r2, r2, r3
	ldr r3, [r2]
	lsls r1, r3, #0xf
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xd
	ldr r0, .L0805D670 @ =0xFFFE1FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
	ldr r2, [r6, #8]
	ldr r4, .L0805D674 @ =0x000021C7
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
.L0805D600:
	add r4, sp, #0x10
	ldr r1, .L0805D678 @ =gUnk_080FB0F0
	ldr r2, .L0805D67C @ =0x00000AD8
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __7ArticleUi
	ldr r0, [r6, #8]
	ldr r1, .L0805D680 @ =0x00001C2C
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800F3E8
.L0805D624:
	movs r2, #0xad
	lsls r2, r2, #4
	adds r3, r6, r2
	ldr r2, .L0805D684 @ =gUnk_080FB000
	ldr r4, .L0805D67C @ =0x00000AD8
	adds r0, r6, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r2, [r3]
	subs r2, r2, r0
	str r2, [r3]
	ldr r3, [r6, #8]
	ldr r4, .L0805D688 @ =0x00002C48
	adds r3, r3, r4
	ldr r0, .L0805D68C @ =0x0001FFFF
	ands r2, r0
	lsls r2, r2, #2
	ldr r0, [r3]
	ldr r1, .L0805D690 @ =0xFFF80003
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r0, .L0805D694 @ =0x00000ADA
	adds r1, r6, r0
.L0805D660:
	movs r0, #0xb
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D668: .4byte 0x00002C4A
.L0805D66C: .4byte 0x0000218C
.L0805D670: .4byte 0xFFFE1FFF
.L0805D674: .4byte 0x000021C7
.L0805D678: .4byte gUnk_080FB0F0
.L0805D67C: .4byte 0x00000AD8
.L0805D680: .4byte 0x00001C2C
.L0805D684: .4byte gUnk_080FB000
.L0805D688: .4byte 0x00002C48
.L0805D68C: .4byte 0x0001FFFF
.L0805D690: .4byte 0xFFF80003
.L0805D694: .4byte 0x00000ADA
.L0805D698:
	ldr r2, .L0805D6A4 @ =0x00000ADA
	adds r1, r6, r2
.L0805D69C:
	movs r0, #1
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D6A4: .4byte 0x00000ADA
.L0805D6A8:
	ldr r0, [sp, #4]
	ldr r1, .L0805D6D4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r3, .L0805D6D8 @ =0x00000ADA
	adds r1, r6, r3
.L0805D6CA:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D6D4: .4byte 0x00000889
.L0805D6D8: .4byte 0x00000ADA
.L0805D6DC:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805D6EC
	movs r4, #1
	mov r8, r4
.L0805D6EC:
	adds r0, r6, #0
	bl func_0805D760
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r6, #0
	bl func_0805DE24
	adds r0, r6, #0
	bl func_0805DFC4
	mov r4, r8
	cmp r4, #1
	beq .L0805D71A
	b .L0805D254
.L0805D71A:
	movs r0, #0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	mov r1, sl
	str r0, [r1, #4]
	str r0, [r7]
	mov r2, sb
	str r0, [r2]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805D73C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805D73C:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0805D74E
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805D74E:
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0805D760
func_0805D760: @ 0x0805D760
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r1, r7, #0
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L0805D7B2
	b .L0805D9A8
.L0805D7B2:
	lsls r0, r0, #2
	ldr r1, .L0805D7BC @ =.L0805D7C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D7BC: .4byte .L0805D7C0
.L0805D7C0: @ jump table
	.4byte .L0805D7DC @ case 0
	.4byte .L0805D9A8 @ case 1
	.4byte .L0805D9A8 @ case 2
	.4byte .L0805D7FE @ case 3
	.4byte .L0805D9A8 @ case 4
	.4byte .L0805D9A8 @ case 5
	.4byte .L0805D9A8 @ case 6
.L0805D7DC:
	ldr r1, .L0805D7F4 @ =0x00000ADC
	adds r4, r7, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne .L0805D7F8
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0805D9A8
	.align 2, 0
.L0805D7F4: .4byte 0x00000ADC
.L0805D7F8:
	movs r0, #2
	strh r0, [r4]
	b .L0805D9A8
.L0805D7FE:
	ldr r4, .L0805D818 @ =0x00000ADC
	adds r5, r7, r4
	movs r6, #0
	ldrsh r4, [r5, r6]
	cmp r4, #5
	bne .L0805D81C
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strh r0, [r5]
	b .L0805D9A8
	.align 2, 0
.L0805D818: .4byte 0x00000ADC
.L0805D81C:
	cmp r4, #4
	bne .L0805D8A4
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r1, #0
	mov r8, r1
	movs r3, #3
	strh r3, [r5]
	ldr r6, .L0805D840 @ =0x00000ADA
	adds r2, r7, r6
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r1, #2
	beq .L0805D844
	cmp r1, #8
	beq .L0805D870
	b .L0805D9A8
	.align 2, 0
.L0805D840: .4byte 0x00000ADA
.L0805D844:
	cmp r0, #1
	bne .L0805D858
	ldr r1, .L0805D854 @ =0x00000ADE
	adds r0, r7, r1
	mov r4, r8
	strh r4, [r0]
	strh r3, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D854: .4byte 0x00000ADE
.L0805D858:
	cmp r0, #2
	beq .L0805D85E
	b .L0805D9A8
.L0805D85E:
	ldr r6, .L0805D86C @ =0x00000ADE
	adds r1, r7, r6
	movs r0, #1
	strh r0, [r1]
	strh r4, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D86C: .4byte 0x00000ADE
.L0805D870:
	cmp r0, #1
	bne .L0805D88C
	ldr r1, .L0805D888 @ =0x00000ADE
	adds r0, r7, r1
	mov r3, r8
	strh r3, [r0]
	movs r0, #5
	strh r0, [r5]
	movs r0, #9
	strh r0, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D888: .4byte 0x00000ADE
.L0805D88C:
	cmp r0, #2
	beq .L0805D892
	b .L0805D9A8
.L0805D892:
	ldr r4, .L0805D8A0 @ =0x00000ADE
	adds r0, r7, r4
	movs r1, #1
	strh r1, [r0]
	movs r0, #0xa
	strh r0, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D8A0: .4byte 0x00000ADE
.L0805D8A4:
	cmp r4, #3
	beq .L0805D8AA
	b .L0805D9A8
.L0805D8AA:
	movs r0, #5
	strh r0, [r5]
	ldr r6, .L0805D8C8 @ =0x00000ADA
	adds r0, r7, r6
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bhi .L0805D9A8
	lsls r0, r0, #2
	ldr r1, .L0805D8CC @ =.L0805D8D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D8C8: .4byte 0x00000ADA
.L0805D8CC: .4byte .L0805D8D0
.L0805D8D0: @ jump table
	.4byte .L0805D8F4 @ case 0
	.4byte .L0805D928 @ case 1
	.4byte .L0805D934 @ case 2
	.4byte .L0805D9A8 @ case 3
	.4byte .L0805D9A8 @ case 4
	.4byte .L0805D99C @ case 5
	.4byte .L0805D94C @ case 6
	.4byte .L0805D9A8 @ case 7
	.4byte .L0805D984 @ case 8
.L0805D8F4:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D914 @ =gUnk_080FB108
	ldr r2, .L0805D918 @ =gUnk_080FB120
	ldr r3, .L0805D91C @ =gUnk_080FB124
	ldr r4, .L0805D920 @ =0x00000AEC
	adds r5, r7, r4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r6, .L0805D924 @ =0x00000ADC
	adds r1, r7, r6
	b .L0805D968
	.align 2, 0
.L0805D914: .4byte gUnk_080FB108
.L0805D918: .4byte gUnk_080FB120
.L0805D91C: .4byte gUnk_080FB124
.L0805D920: .4byte 0x00000AEC
.L0805D924: .4byte 0x00000ADC
.L0805D928:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D930 @ =gUnk_080FB128
	b .L0805D988
	.align 2, 0
.L0805D930: .4byte gUnk_080FB128
.L0805D934:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D944 @ =gUnk_080FB140
	ldr r4, .L0805D948 @ =0x00000AEC
	adds r2, r7, r4
	bl func_08050DA0
	b .L0805D9A8
	.align 2, 0
.L0805D944: .4byte gUnk_080FB140
.L0805D948: .4byte 0x00000AEC
.L0805D94C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D970 @ =gUnk_080FB158
	ldr r2, .L0805D974 @ =gUnk_080FB120
	ldr r3, .L0805D978 @ =gUnk_080FB124
	ldr r6, .L0805D97C @ =0x00000AEC
	adds r5, r7, r6
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r0, .L0805D980 @ =0x00000ADC
	adds r1, r7, r0
.L0805D968:
	movs r0, #4
	strh r0, [r1]
	b .L0805D9A8
	.align 2, 0
.L0805D970: .4byte gUnk_080FB158
.L0805D974: .4byte gUnk_080FB120
.L0805D978: .4byte gUnk_080FB124
.L0805D97C: .4byte 0x00000AEC
.L0805D980: .4byte 0x00000ADC
.L0805D984:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D994 @ =gUnk_080FB164
.L0805D988:
	ldr r3, .L0805D998 @ =0x00000AEC
	adds r2, r7, r3
	bl func_08050DA0
	b .L0805D9A8
	.align 2, 0
.L0805D994: .4byte gUnk_080FB164
.L0805D998: .4byte 0x00000AEC
.L0805D99C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D9B8 @ =gUnk_080FB17C
	ldr r4, .L0805D9BC @ =0x00000AEC
	adds r2, r7, r4
	bl func_08050DA0
.L0805D9A8:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805D9B8: .4byte gUnk_080FB17C
.L0805D9BC: .4byte 0x00000AEC

	thumb_func_start func_0805D9C0
func_0805D9C0: @ 0x0805D9C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r6, r0, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r1, .L0805DBDC @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L0805DBE0 @ =0x0600E000
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	adds r0, r4, #0
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	ldr r2, .L0805DBE4 @ =0x0600E800
	mov sl, r2
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl func_08008EB8
	ldr r1, .L0805DBE8 @ =0x0600F000
	adds r0, r4, #0
	mov r2, r8
	bl func_08008EB8
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r5, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBEC @ =0x00005C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBF0 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBF4 @ =0x00005E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L0805DBF8 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L0805DBFC @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L0805DC00 @ =0x00030003
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x1e]
	movs r0, #3
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, sl
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x16]
	ldr r0, .L0805DC04 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L0805DC08 @ =0x05000040
	movs r1, #0xf8
	lsls r1, r1, #2
	mov r8, r1
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	ldr r2, .L0805DC0C @ =0x00004218
	mov sb, r2
	strh r2, [r0]
	movs r3, #0x92
	lsls r3, r3, #1
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805DC10 @ =0x05000200
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0805DC14 @ =0x05000202
	adds r0, r0, r3
	strh r5, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805DC18 @ =0x05000204
	adds r0, r0, r1
	mov r2, sb
	strh r2, [r0]
	add r3, sp, #0x54
	mov sb, r3
	add r0, sp, #0x14
	mov r8, r0
	movs r7, #1
	movs r1, #2
	mov sl, r1
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r6, r6, r2
.L0805DB84:
	ldr r0, .L0805DC1C @ =gUnk_080FB1A6
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	add r0, sp, #0x54
	strh r7, [r0]
	mov r0, sl
	mov r3, sb
	strh r0, [r3, #2]
	ldr r0, [sp, #0x54]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r7, [sp, #8]
	add r1, sp, #0x14
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r1, r0, #0
	adds r1, r1, r4
	lsls r1, r1, #5
	ldr r2, .L0805DC20 @ =0x06010000
	adds r1, r1, r2
	mov r0, r8
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x17
	ble .L0805DB84
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DBDC: .4byte 0x06007FE0
.L0805DBE0: .4byte 0x0600E000
.L0805DBE4: .4byte 0x0600E800
.L0805DBE8: .4byte 0x0600F000
.L0805DBEC: .4byte 0x00005C43
.L0805DBF0: .4byte 0x00001D41
.L0805DBF4: .4byte 0x00005E42
.L0805DBF8: .4byte gUnk_080F9F70
.L0805DBFC: .4byte gUnk_080F9F74
.L0805DC00: .4byte 0x00030003
.L0805DC04: .4byte gUnk_080F9F78
.L0805DC08: .4byte 0x05000040
.L0805DC0C: .4byte 0x00004218
.L0805DC10: .4byte 0x05000200
.L0805DC14: .4byte 0x05000202
.L0805DC18: .4byte 0x05000204
.L0805DC1C: .4byte gUnk_080FB1A6
.L0805DC20: .4byte 0x06010000

	thumb_func_start func_0805DC24
func_0805DC24: @ 0x0805DC24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805DE0C @ =0xFFFFFC20
	add sp, r4
	mov r8, r0
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	add r1, sp, #0x14
	mov sb, r1
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	add r6, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r6, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	mov r0, r8
	adds r0, #0x80
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	adds r0, #4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x2c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	ldr r5, [sp, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r7, .L0805DE10 @ =0x05000200
	adds r1, r0, r7
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805DCA6
	ldrh r2, [r6, #4]
.L0805DCA6:
	adds r0, r5, #0
	bl func_08008E64
	mov r1, r8
	adds r1, #0x50
	adds r0, r4, #0
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r4, [sp, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r7
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805DCE4
	ldrh r2, [r6, #4]
.L0805DCE4:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x14]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r7, .L0805DE14 @ =0x06010000
	adds r1, r0, r7
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L0805DD0A
	mov r0, sb
	ldrh r2, [r0, #4]
.L0805DD0A:
	adds r0, r4, #0
	bl func_08008E64
	movs r4, #0
	add r6, sp, #0x3d0
	movs r1, #0xf5
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x3d8]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0x3dc]
	movs r3, #0xe
	mov sl, r3
	movs r5, #2
	mov sb, r5
	ldr r5, .L0805DE18 @ =0x06002800
	adds r7, r6, #0
.L0805DD2E:
	mov r0, sl
	strh r0, [r7]
	mov r1, sb
	strh r1, [r6, #2]
	ldr r0, [r7]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E7A0
	movs r0, #0xae
	lsls r0, r0, #4
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, .L0805DE1C @ =gUnk_080FB000
	adds r1, r1, r0
	add r0, sp, #0x3d4
	mov r2, sl
	strh r2, [r0]
	mov r2, sb
	ldr r3, [sp, #0x3d8]
	strh r2, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E958
	ldr r0, [sp, #0x3dc]
	adds r1, r5, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl func_08008E64
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r5, r5, r2
	adds r4, #1
	cmp r4, #9
	ble .L0805DD2E
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0xb4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008EB8
	movs r5, #0x85
	lsls r5, r5, #6
	movs r1, #0
	movs r3, #0xb5
	lsls r3, r3, #2
	add r3, r8
	mov ip, r3
.L0805DDAC:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x1c
	adds r1, #1
	mov sb, r1
	adds r1, r0, #4
	lsls r1, r1, #6
	adds r0, #5
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0xe
	mov r7, ip
	adds r2, r0, r7
	add r1, ip
.L0805DDCA:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0xd
	ble .L0805DDCA
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	cmp r1, #9
	ble .L0805DDAC
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, r8
	ldr r1, .L0805DE20 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r3, #0xf8
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DE0C: .4byte 0xFFFFFC20
.L0805DE10: .4byte 0x05000200
.L0805DE14: .4byte 0x06010000
.L0805DE18: .4byte 0x06002800
.L0805DE1C: .4byte gUnk_080FB000
.L0805DE20: .4byte 0x0600F000

	thumb_func_start func_0805DE24
func_0805DE24: @ 0x0805DE24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, .L0805DEB8 @ =0x000002CE
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	ldr r6, .L0805DEBC @ =gUnk_080FB000
.L0805DE36:
	lsls r2, r4, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #0x20
	subs r2, r2, r0
	movs r1, #0xae
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x90
	movs r3, #3
	bl func_0805DEC0
	adds r4, #1
	cmp r4, #9
	ble .L0805DE36
	movs r4, #0
	movs r7, #1
	movs r6, #8
.L0805DE7A:
	adds r3, r4, #0
	adds r3, #0xd
	str r7, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #4
	bl func_0805DF68
	adds r6, #8
	adds r4, #1
	cmp r4, #0xa
	ble .L0805DE7A
	movs r1, #0xad
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x88
	movs r2, #4
	movs r3, #1
	bl func_0805DEC0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DEB8: .4byte 0x000002CE
.L0805DEBC: .4byte gUnk_080FB000

	thumb_func_start func_0805DEC0
func_0805DEC0: @ 0x0805DEC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp, #4]
	mov sb, r3
	ldr r0, [sp, #0x28]
	mov r8, r0
	ldr r4, [sp, #0x2c]
	cmp r4, #1
	ble .L0805DEF6
	subs r4, #1
	movs r5, #0xa
	cmp r4, #1
	ble .L0805DEF2
.L0805DEE6:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r5, r0, #1
	subs r4, #1
	cmp r4, #1
	bgt .L0805DEE6
.L0805DEF2:
	adds r4, r5, #0
	b .L0805DEF8
.L0805DEF6:
	movs r4, #1
.L0805DEF8:
	movs r7, #0
	cmp r4, #0
	ble .L0805DF42
.L0805DEFE:
	cmp r4, #1
	bne .L0805DF04
	movs r7, #1
.L0805DF04:
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	bne .L0805DF16
	cmp r7, #0
	beq .L0805DF28
.L0805DF16:
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	adds r3, r5, #0
	bl func_0805DF68
	movs r7, #1
.L0805DF28:
	adds r6, #8
	adds r0, r5, #0
	muls r0, r4, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bgt .L0805DEFE
.L0805DF42:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq .L0805DF58
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x30]
	bl func_0805DF68
.L0805DF58:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805DF68
func_0805DF68: @ 0x0805DF68
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, [sp, #0x10]
	ldr r5, .L0805DFC0 @ =0x000002CE
	add r5, ip
	movs r0, #0
	ldrsh r4, [r5, r0]
	lsls r4, r4, #3
	movs r0, #0xa7
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r4
	strh r1, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xa9
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xaa
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DFC0: .4byte 0x000002CE

	thumb_func_start func_0805DFC4
func_0805DFC4: @ 0x0805DFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r3, #4]
	add r2, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r2, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L0805E1C0 @ =0x00000ADA
	adds r0, r6, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble .L0805E0C8
	adds r4, r6, #0
	adds r4, #0xe8
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0xec
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x3c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x1c
	ldm r4!, {r1, r5, r7}
	stm r0!, {r1, r5, r7}
	ldm r4!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r4!, {r1, r7}
	stm r0!, {r1, r7}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xfc
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xc
	strh r0, [r1]
	mov r2, sp
	ldr r3, .L0805E1C4 @ =0x00000AD4
	adds r0, r6, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #4
	ldr r5, .L0805E1C8 @ =0x00000AD6
	adds r0, r6, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #4
	subs r0, #0x28
	subs r1, r1, r0
	strh r1, [r2, #2]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E0C0
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0805E0C0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E0C8:
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r0, r6, r5
	ldrh r0, [r0]
	mov r7, sp
	adds r7, #0x6c
	str r7, [sp, #0x74]
	cmp r0, #0
	bne .L0805E0DC
	b .L0805E2C8
.L0805E0DC:
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x84
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r7, sp, #0x3c
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x94
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x1a
	strh r0, [r1, #2]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #4
	strh r0, [r1, #6]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0805E18C
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0805E18C:
	str r5, [sp, #0x78]
	lsls r2, r2, #5
	ldr r4, .L0805E1CC @ =0x06010080
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805E1D0
	cmp r1, #0
	beq .L0805E1B6
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E1B6:
	ldr r3, [sp, #0x78]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0805E2AA
	.align 2, 0
.L0805E1C0: .4byte 0x00000ADA
.L0805E1C4: .4byte 0x00000AD4
.L0805E1C8: .4byte 0x00000AD6
.L0805E1CC: .4byte 0x06010080
.L0805E1D0:
	str r1, [sp, #0x7c]
	mov r4, sb
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L0805E1EC
	adds r0, r1, #0
.L0805E1EC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805E20A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805E20E
	mov r0, sb
	bl func_080D3BC0
	b .L0805E20E
.L0805E20A:
	movs r0, #0
	mov sb, r0
.L0805E20E:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x78]
	ldr r2, [r0]
	mov r3, r8
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0x74]
	ldr r4, [sp, #0x7c]
	cmp r2, r4
	beq .L0805E23E
.L0805E224:
	cmp r3, #0
	beq .L0805E234
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E234:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x7c]
	cmp r2, r5
	bne .L0805E224
.L0805E23E:
	adds r4, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L0805E25A
	cmp r4, #0
	beq .L0805E256
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E256:
	adds r4, #0x10
	b .L0805E282
.L0805E25A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805E280
.L0805E262:
	cmp r2, #0
	beq .L0805E272
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E272:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805E262
.L0805E280:
	adds r4, r2, #0
.L0805E282:
	ldr r3, [sp, #0x78]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805E294
.L0805E28E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805E28E
.L0805E294:
	cmp r0, #0
	beq .L0805E29C
	bl free
.L0805E29C:
	mov r0, sb
	add r0, r8
	mov r5, r8
	ldr r7, [sp, #0x78]
	str r5, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
.L0805E2AA:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E2C0
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0805E2C0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E2C8:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0x1f
	bls .L0805E2D6
	b .L0805E4B2
.L0805E2D6:
	adds r4, r6, #0
	adds r4, #0xb4
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0xb8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r7, sp, #0x3c
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xc8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #8
	strh r0, [r1, #6]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0805E386
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0805E386:
	str r5, [sp, #0x78]
	lsls r2, r2, #5
	ldr r4, .L0805E3BC @ =0x06010100
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805E3C0
	cmp r1, #0
	beq .L0805E3B0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E3B0:
	ldr r3, [sp, #0x78]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0805E494
	.align 2, 0
.L0805E3BC: .4byte 0x06010100
.L0805E3C0:
	str r1, [sp, #0x7c]
	mov r4, sb
	str r4, [sp, #0x68]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L0805E3DC
	adds r0, r1, #0
.L0805E3DC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805E3FA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805E3FE
	mov r0, sb
	bl func_080D3BC0
	b .L0805E3FE
.L0805E3FA:
	movs r0, #0
	mov sb, r0
.L0805E3FE:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x78]
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [sp, #0x7c]
	cmp r2, r1
	beq .L0805E428
.L0805E40E:
	cmp r3, #0
	beq .L0805E41E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E41E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L0805E40E
.L0805E428:
	adds r4, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L0805E444
	cmp r4, #0
	beq .L0805E440
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0805E440:
	adds r4, #0x10
	b .L0805E46C
.L0805E444:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805E46A
.L0805E44C:
	cmp r2, #0
	beq .L0805E45C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E45C:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805E44C
.L0805E46A:
	adds r4, r2, #0
.L0805E46C:
	ldr r0, [sp, #0x78]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805E47E
.L0805E478:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805E478
.L0805E47E:
	cmp r0, #0
	beq .L0805E486
	bl free
.L0805E486:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x78]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L0805E494:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E4AA
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0805E4AA:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E4B2:
	ldr r1, .L0805E5E8 @ =0xFFFFFCFF
	ldr r0, [sp, #0x6c]
	ands r0, r1
	ldr r1, .L0805E5EC @ =0xFFFFF3FF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #5
	orrs r0, r4
	ldr r1, .L0805E5F0 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0805E5F4 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0805E5F8 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0805E5FC @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0805E600 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0805E604 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x6c]
	movs r5, #0x92
	lsls r5, r5, #1
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805E608 @ =0xFFFF0FFF
	ldr r7, [sp, #0x74]
	ldr r1, [r7, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0805E60C @ =0x0000FFFF
	ands r1, r0
	str r1, [r7, #4]
	ldr r0, [sp, #0x6c]
	orrs r0, r4
	str r0, [sp, #0x6c]
	ldr r0, .L0805E610 @ =0x000002CE
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805E5D8
	adds r4, r1, #0
	ldr r5, [sp, #0x74]
.L0805E522:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r2, .L0805E5EC @ =0xFFFFF3FF
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #3
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, .L0805E614 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0805E618 @ =0xFE00FFFF
	ldr r2, [sp, #0x6c]
	ands r2, r0
	orrs r2, r1
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #3
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, .L0805E61C @ =0xFFFFFF00
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x6c]
	movs r7, #0x8e
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #3
	movs r3, #0xa9
	lsls r3, r3, #1
	adds r1, r6, r3
	adds r1, r1, r2
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0805E620 @ =0xFFFFFC00
	ldr r1, [r5, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #4]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805E5CC
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x6c]
	str r0, [r1]
	ldr r7, [sp, #0x74]
	ldrh r0, [r7, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805E5CC:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805E522
.L0805E5D8:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805E5E8: .4byte 0xFFFFFCFF
.L0805E5EC: .4byte 0xFFFFF3FF
.L0805E5F0: .4byte 0xFFFFDFFF
.L0805E5F4: .4byte 0xFFFF3FFF
.L0805E5F8: .4byte 0xF1FFFFFF
.L0805E5FC: .4byte 0xEFFFFFFF
.L0805E600: .4byte 0xDFFFFFFF
.L0805E604: .4byte 0x3FFFFFFF
.L0805E608: .4byte 0xFFFF0FFF
.L0805E60C: .4byte 0x0000FFFF
.L0805E610: .4byte 0x000002CE
.L0805E614: .4byte 0x000001FF
.L0805E618: .4byte 0xFE00FFFF
.L0805E61C: .4byte 0xFFFFFF00
.L0805E620: .4byte 0xFFFFFC00

	thumb_func_start func_0805E624
func_0805E624: @ 0x0805E624
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0805E650 @ =vtable_unk_080E79B8
	str r0, [r4]
	ldr r0, .L0805E654 @ =0x00000AF4
	bl __builtin_new
	adds r1, r5, #0
	bl func_0805CF70
	str r0, [r4, #4]
	ldr r1, [r6]
	movs r0, #0
	str r0, [r6]
	str r1, [r4, #8]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0805E650: .4byte vtable_unk_080E79B8
.L0805E654: .4byte 0x00000AF4

	thumb_func_start func_0805E658
func_0805E658: @ 0x0805E658
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0805E694 @ =vtable_unk_080E79B8
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0805E674
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E674:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0805E686
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E686:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0805E694: .4byte vtable_unk_080E79B8

	thumb_func_start func_0805E698
func_0805E698: @ 0x0805E698
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_0805D170
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805E6BA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E6BA:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
