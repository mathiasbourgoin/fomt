	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080521FC
func_080521FC: @ 0x080521FC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_08051504
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805221E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805221E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08052230
func_08052230: @ 0x08052230
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	cmp r1, #0
	beq .L0805224C
	subs r0, r1, #1
	movs r1, #0x19
	bl __udivsi3
	b .L0805224E
.L0805224C:
	movs r0, #0
.L0805224E:
	mov sl, r0
	movs r4, #0
	mov r1, sl
	lsls r1, r1, #2
	str r1, [sp]
.L08052258:
	lsls r6, r4, #2
	mov r8, r6
	lsls r0, r4, #1
	mov sb, r0
	adds r1, r4, #1
	str r1, [sp, #4]
	adds r5, r7, r6
	str r5, [sp, #8]
.L08052268:
	bl rand
	asrs r0, r0, #8
	movs r1, #0x1e
	bl __modsi3
	adds r0, #1
	strb r0, [r5]
	movs r3, #1
	movs r2, #0
	adds r1, r7, #0
.L0805227E:
	cmp r4, r2
	beq .L0805228E
	ldr r6, [sp, #8]
	ldrb r0, [r6]
	ldrb r6, [r1]
	cmp r0, r6
	bne .L0805228E
	movs r3, #0
.L0805228E:
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	ble .L0805227E
	cmp r3, #0
	beq .L08052268
	bl rand
	mov r1, r8
	adds r5, r7, r1
	ldr r4, [sp]
	add r4, sl
	lsls r4, r4, #2
	add r4, sb
	ldr r6, .L080522D4 @ =gUnk_080FA174
	adds r4, r4, r6
	asrs r0, r0, #8
	movs r1, #0xa
	bl __modsi3
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r5, #2]
	ldr r4, [sp, #4]
	cmp r4, #9
	ble .L08052258
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080522D4: .4byte gUnk_080FA174

	thumb_func_start func_080522D8
func_080522D8: @ 0x080522D8
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r2, [r0]
	strb r2, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_080522E8
func_080522E8: @ 0x080522E8
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r2, [r1]
	strb r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_080522F8
func_080522F8: @ 0x080522F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x18]
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r4, #0
	movs r5, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L08052710 @ =vtable_unk_080E7944
	str r0, [r7, #4]
	str r6, [r7, #8]
	str r5, [r7, #0xc]
	movs r0, #4
	bl __builtin_new
	mov r8, r0
	add r0, sp, #0xc
	bl func_0800835C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl func_0800770C
	ldr r0, [r7, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	str r0, [r7, #0x10]
	adds r0, r6, #0
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
	adds r6, r7, #0
	adds r6, #0x20
	ldr r1, .L08052714 @ =gUnk_0858BA28
	adds r0, r6, #0
	bl func_0805E6CC
	movs r1, #0x50
	adds r1, r1, r7
	mov sl, r1
	ldr r1, .L08052718 @ =gUnk_0872DE44
	mov r0, sl
	bl func_0805E6CC
	adds r2, r7, #0
	adds r2, #0x80
	str r2, [sp, #0x1c]
	ldr r1, .L0805271C @ =gUnk_08740454
	adds r0, r2, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, .L08052720 @ =gUnk_0873E5B0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r1, .L08052724 @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L08052728 @ =gUnk_0873D6D8
	bl func_0805E6CC
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldr r1, .L0805272C @ =gUnk_086678A0
	mov r0, sb
	bl func_0805E6CC
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L08052730 @ =gUnk_0873A6E8
	bl func_0805E6CC
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r1, .L08052734 @ =gUnk_0873ED1C
	mov r0, r8
	bl func_0805E6CC
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x20]
	ldr r1, .L08052738 @ =gUnk_0871D51C
	bl func_0805E6CC
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r6, #0
	movs r2, #0x8e
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	adds r1, r6, #0
	ldr r2, .L0805273C @ =0x0000033B
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	ldr r1, [sp, #0x1c]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	adds r1, r6, #0
	ldr r2, .L08052740 @ =0x0000091A
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xbd
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	mov r1, sb
	movs r2, #0xc9
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	mov r1, r8
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	mov r1, r8
	movs r2, #2
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0xef
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	adds r1, r6, #0
	ldr r2, .L08052744 @ =0x00000641
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	ldr r1, [sp, #0x20]
	movs r2, #2
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r1, .L08052748 @ =0x0000040C
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	ldr r2, .L0805274C @ =0x0000042C
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	mov r1, sb
	movs r2, #0xa7
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r2, .L08052750 @ =0x00000444
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	ldr r1, .L08052754 @ =0x00000464
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0x91
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x92
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0x93
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x94
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x95
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r2, #0x96
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0x97
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	b .L08052758
	.align 2, 0
.L08052710: .4byte vtable_unk_080E7944
.L08052714: .4byte gUnk_0858BA28
.L08052718: .4byte gUnk_0872DE44
.L0805271C: .4byte gUnk_08740454
.L08052720: .4byte gUnk_0873E5B0
.L08052724: .4byte gUnk_0873DE44
.L08052728: .4byte gUnk_0873D6D8
.L0805272C: .4byte gUnk_086678A0
.L08052730: .4byte gUnk_0873A6E8
.L08052734: .4byte gUnk_0873ED1C
.L08052738: .4byte gUnk_0871D51C
.L0805273C: .4byte 0x0000033B
.L08052740: .4byte 0x0000091A
.L08052744: .4byte 0x00000641
.L08052748: .4byte 0x0000040C
.L0805274C: .4byte 0x0000042C
.L08052750: .4byte 0x00000444
.L08052754: .4byte 0x00000464
.L08052758:
	str r0, [r4, #4]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0x99
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9a
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9d
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	str r5, [r4, #4]
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	str r5, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r5, r7, r0
	movs r6, #3
.L080527FE:
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	adds r4, r5, #0
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	movs r0, #0
	str r0, [r4, #4]
	adds r5, #0x10
	subs r6, #1
	subs r0, #1
	cmp r6, r0
	bne .L080527FE
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r1, r1, r7
	mov r8, r1
	mov r0, r8
	bl func_08007874
	mov r0, r8
	movs r1, #4
	bl func_08007B54
	mov r2, r8
	str r0, [r2, #4]
	movs r0, #0xa9
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r5, #1
	movs r1, #0
	mov sb, r1
.L0805284C:
	adds r0, r4, #0
	bl func_08007128
	mov r2, sb
	str r2, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L0805284C
	movs r6, #0
	mov r5, r8
	adds r5, #0xc
.L08052864:
	lsls r4, r6, #3
	add r4, r8
	adds r4, #8
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r5]
	adds r5, #8
	adds r6, #1
	cmp r6, #1
	bls .L08052864
	movs r0, #2
	mov r8, r0
	ldr r1, .L08052940 @ =0x00002324
	adds r0, r7, r1
	movs r4, #0
	mov r2, sp
	ldrb r2, [r2, #0x18]
	strb r2, [r0]
	ldr r0, .L08052944 @ =0x000023A0
	adds r1, r7, r0
	ldr r0, .L08052948 @ =vtable_unk_080E7950
	str r0, [r1]
	movs r5, #0
	strh r4, [r1, #4]
	ldr r0, [r7, #8]
	ldr r6, .L0805294C @ =0x00001C9C
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	ldr r2, .L08052950 @ =0x00002264
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, [r7, #8]
	ldr r1, .L08052954 @ =0x00001C70
	adds r0, r0, r1
	bl GetAffection__C6Animal
	ldr r2, .L08052958 @ =0x00002266
	adds r1, r7, r2
	strh r0, [r1]
	ldr r1, .L0805295C @ =0x0000225C
	adds r0, r7, r1
	str r4, [r0]
	subs r2, #6
	adds r0, r7, r2
	str r4, [r0]
	ldr r1, .L08052960 @ =0x00001D58
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, .L08052964 @ =0x00001D59
	adds r0, r7, r2
	strb r5, [r0]
	ldr r1, .L08052968 @ =0x000022C8
	adds r0, r7, r1
	strh r4, [r0]
	ldr r2, .L0805296C @ =0x000022CA
	adds r0, r7, r2
	strh r4, [r0]
	ldr r0, [r7, #8]
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	subs r2, #4
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, .L08052970 @ =0x000022CC
	adds r1, r7, r0
	movs r0, #7
	strb r0, [r1]
	ldr r1, .L08052974 @ =0x000022CD
	adds r0, r7, r1
	strb r5, [r0]
	adds r2, #8
	adds r0, r7, r2
	strb r5, [r0]
	adds r1, #0x58
	adds r0, r7, r1
	strb r5, [r0]
	ldr r0, [r7, #8]
	ldr r2, .L08052978 @ =0x00001C9D
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	ldr r2, .L0805297C @ =0x00002326
	adds r1, r7, r2
	strb r0, [r1]
	ldr r1, .L08052980 @ =0x00002321
	adds r0, r7, r1
	strb r5, [r0]
	adds r2, #6
	adds r0, r7, r2
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08052940: .4byte 0x00002324
.L08052944: .4byte 0x000023A0
.L08052948: .4byte vtable_unk_080E7950
.L0805294C: .4byte 0x00001C9C
.L08052950: .4byte 0x00002264
.L08052954: .4byte 0x00001C70
.L08052958: .4byte 0x00002266
.L0805295C: .4byte 0x0000225C
.L08052960: .4byte 0x00001D58
.L08052964: .4byte 0x00001D59
.L08052968: .4byte 0x000022C8
.L0805296C: .4byte 0x000022CA
.L08052970: .4byte 0x000022CC
.L08052974: .4byte 0x000022CD
.L08052978: .4byte 0x00001C9D
.L0805297C: .4byte 0x00002326
.L08052980: .4byte 0x00002321

	thumb_func_start func_08052984
func_08052984: @ 0x08052984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x2c]
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp, #0x30]
	adds r0, r5, #0
	bl func_08008724
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0xbf
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x10
	strh r2, [r1]
	adds r0, #0x54
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r5, #0
	bl func_08008918
	adds r1, r0, #0
	ldr r2, [sp, #0x30]
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L08052A70 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r5, #0
	bl func_08054F40
	adds r0, r5, #0
	bl func_08055264
	ldr r3, .L08052A74 @ =0x0000228A
	adds r1, r5, r3
	ldr r0, .L08052A78 @ =0x0000033B
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x21
	bl func_08008B6C
	ldr r4, .L08052A7C @ =0x00002328
	adds r0, r5, r4
	mov r6, sp
	ldrh r6, [r6, #0x30]
	strh r6, [r0]
	movs r7, #0
	str r7, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x38]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x3c]
	mov r2, sp
	adds r2, #0x24
	str r2, [sp, #0x40]

	non_word_aligned_thumb_func_start sub_08052A1E
sub_08052A1E: @ 0x08052A1E
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	bl rand
	ldr r3, .L08052A80 @ =0x00002321
	adds r4, r5, r3
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L08052A84
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08052A5C
	ldrb r0, [r4]
	movs r1, #1
	eors r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xb8
	bl func_08008B6C
.L08052A5C:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08052A84
	adds r0, r5, #0
	bl func_080558C4
	bl .L080535E0
	.align 2, 0
.L08052A70: .4byte vtable_unk_080E5B80
.L08052A74: .4byte 0x0000228A
.L08052A78: .4byte 0x0000033B
.L08052A7C: .4byte 0x00002328
.L08052A80: .4byte 0x00002321
.L08052A84:
	ldr r4, .L08052AA0 @ =0x00002328
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0x1c
	bls .L08052A94
	bl .L08053462
.L08052A94:
	lsls r0, r0, #2
	ldr r1, .L08052AA4 @ =.L08052AA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08052AA0: .4byte 0x00002328
.L08052AA4: .4byte .L08052AA8
.L08052AA8: @ jump table
	.4byte .L08052B1C @ case 0
	.4byte .L08052C04 @ case 1
	.4byte .L08052C44 @ case 2
	.4byte .L08052C9C @ case 3
	.4byte .L08052CCC @ case 4
	.4byte .L08052D14 @ case 5
	.4byte .L08052D38 @ case 6
	.4byte .L08052D7C @ case 7
	.4byte .L08052D7C @ case 8
	.4byte .L08052D7C @ case 9
	.4byte .L08052B1C @ case 10
	.4byte .L08052DC8 @ case 11
	.4byte .L08052E08 @ case 12
	.4byte .L08052E50 @ case 13
	.4byte .L08052E88 @ case 14
	.4byte .L08053462 @ case 15
	.4byte .L08052EB4 @ case 16
	.4byte .L0805305C @ case 17
	.4byte .L0805311C @ case 18
	.4byte .L08053158 @ case 19
	.4byte .L08053190 @ case 20
	.4byte .L080531BC @ case 21
	.4byte .L080531E0 @ case 22
	.4byte .L08053240 @ case 23
	.4byte .L08053274 @ case 24
	.4byte .L08053294 @ case 25
	.4byte .L08053294 @ case 26
	.4byte .L080532B8 @ case 27
	.4byte .L080532EC @ case 28
.L08052B1C:
	ldr r7, .L08052B78 @ =0x00002268
	adds r1, r5, r7
	movs r0, #0xc0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r0, .L08052B7C @ =0x0000226C
	adds r1, r5, r0
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r1, .L08052B80 @ =0x00002290
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	ldr r3, .L08052B84 @ =0x0000228E
	adds r0, r5, r3
	strh r2, [r0]
	ldr r4, .L08052B88 @ =0x00002288
	adds r1, r5, r4
	ldr r0, .L08052B8C @ =0x0000033B
	strh r0, [r1]
	ldr r6, .L08052B90 @ =0x00002330
	adds r0, r5, r6
	strh r2, [r0]
	adds r7, #0x70
	adds r1, r5, r7
	movs r0, #0x8f
	strh r0, [r1]
	ldr r1, .L08052B94 @ =0x000022C4
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, [sp, #0x38]
	cmp r2, #1
	bne .L08052B98
	subs r3, #0x2a
	adds r0, r5, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r5, #0
	bl func_080550AC
	subs r6, #8
	adds r1, r5, r6
	movs r0, #0xb
	b .L08052BA6
	.align 2, 0
.L08052B78: .4byte 0x00002268
.L08052B7C: .4byte 0x0000226C
.L08052B80: .4byte 0x00002290
.L08052B84: .4byte 0x0000228E
.L08052B88: .4byte 0x00002288
.L08052B8C: .4byte 0x0000033B
.L08052B90: .4byte 0x00002330
.L08052B94: .4byte 0x000022C4
.L08052B98:
	adds r0, r5, #0
	movs r1, #0x80
	bl func_080550AC
	ldr r7, .L08052BF0 @ =0x00002328
	adds r1, r5, r7
	movs r0, #1
.L08052BA6:
	strh r0, [r1]
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L08052BF4 @ =0x000022C2
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, .L08052BF8 @ =0x0000232A
	adds r0, r5, r3
	strh r1, [r0]
	movs r4, #0x8b
	lsls r4, r4, #6
	adds r0, r5, r4
	strh r1, [r0]
	ldr r6, .L08052BFC @ =0x00002292
	adds r0, r5, r6
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L08052C00 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	bl .L08053462
	.align 2, 0
.L08052BF0: .4byte 0x00002328
.L08052BF4: .4byte 0x000022C2
.L08052BF8: .4byte 0x0000232A
.L08052BFC: .4byte 0x00002292
.L08052C00: .4byte 0x00000889
.L08052C04:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08052C16
	bl .L08053462
.L08052C16:
	ldr r7, .L08052C30 @ =0x0000232C
	adds r0, r5, r7
	strh r1, [r0]
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne .L08052C38
	ldr r2, .L08052C34 @ =0x00002328
	adds r1, r5, r2
	movs r0, #2
	strh r0, [r1]
	bl .L08053462
	.align 2, 0
.L08052C30: .4byte 0x0000232C
.L08052C34: .4byte 0x00002328
.L08052C38:
	ldr r3, .L08052C40 @ =0x00002328
	adds r1, r5, r3
	b .L08052C8C
	.align 2, 0
.L08052C40: .4byte 0x00002328
.L08052C44:
	ldr r4, .L08052C74 @ =0x0000232C
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #2
	beq .L08052C54
	bl .L08053462
.L08052C54:
	ldr r7, .L08052C78 @ =0x0000232E
	adds r0, r5, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne .L08052C80
	ldr r2, .L08052C7C @ =0x00002321
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	movs r3, #1
	str r3, [sp, #0x38]
	subs r4, #4
	adds r1, r5, r4
	b .L080532AA
	.align 2, 0
.L08052C74: .4byte 0x0000232C
.L08052C78: .4byte 0x0000232E
.L08052C7C: .4byte 0x00002321
.L08052C80:
	ldr r6, .L08052C94 @ =0x0000232A
	adds r1, r5, r6
	movs r0, #4
	strh r0, [r1]
	ldr r7, .L08052C98 @ =0x00002328
	adds r1, r5, r7
.L08052C8C:
	movs r0, #3
	strh r0, [r1]
	bl .L08053462
	.align 2, 0
.L08052C94: .4byte 0x0000232A
.L08052C98: .4byte 0x00002328
.L08052C9C:
	ldr r1, .L08052CC0 @ =0x0000232C
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	beq .L08052CAC
	bl .L08053462
.L08052CAC:
	ldr r3, .L08052CC4 @ =0x0000232A
	adds r0, r5, r3
	movs r1, #4
	strh r1, [r0]
	ldr r4, .L08052CC8 @ =0x00002328
	adds r0, r5, r4
	strh r1, [r0]
	bl .L08053462
	.align 2, 0
.L08052CC0: .4byte 0x0000232C
.L08052CC4: .4byte 0x0000232A
.L08052CC8: .4byte 0x00002328
.L08052CCC:
	ldr r6, .L08052D04 @ =0x000022DE
	adds r0, r5, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	bgt .L08052CDA
	b .L08053462
.L08052CDA:
	ldr r1, .L08052D08 @ =0x000022D8
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x6f
	ble .L08052CE8
	b .L08053462
.L08052CE8:
	ldr r3, .L08052D0C @ =0x00002321
	adds r1, r5, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r4, .L08052D10 @ =0x0000232C
	adds r0, r5, r4
	strh r2, [r0]
	adds r6, #0x4a
	adds r1, r5, r6
	movs r0, #5
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D04: .4byte 0x000022DE
.L08052D08: .4byte 0x000022D8
.L08052D0C: .4byte 0x00002321
.L08052D10: .4byte 0x0000232C
.L08052D14:
	ldr r7, .L08052D30 @ =0x0000232C
	adds r1, r5, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	beq .L08052D22
	b .L08053462
.L08052D22:
	movs r0, #0
	strh r0, [r1]
	ldr r3, .L08052D34 @ =0x00002328
	adds r1, r5, r3
	movs r0, #6
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D30: .4byte 0x0000232C
.L08052D34: .4byte 0x00002328
.L08052D38:
	ldr r4, .L08052D60 @ =0x0000232C
	adds r1, r5, r4
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #2
	beq .L08052D46
	b .L08053462
.L08052D46:
	movs r0, #0
	strh r0, [r1]
	ldr r7, .L08052D64 @ =0x00002324
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08052D6C
	ldr r0, .L08052D68 @ =0x00002328
	adds r1, r5, r0
	movs r0, #7
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D60: .4byte 0x0000232C
.L08052D64: .4byte 0x00002324
.L08052D68: .4byte 0x00002328
.L08052D6C:
	ldr r2, .L08052D78 @ =0x00002328
	adds r1, r5, r2
	movs r0, #8
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D78: .4byte 0x00002328
.L08052D7C:
	ldr r3, .L08052D9C @ =0x0000232C
	adds r0, r5, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	cmp r2, #2
	beq .L08052D8A
	b .L08053462
.L08052D8A:
	ldr r6, .L08052DA0 @ =0x0000232E
	adds r0, r5, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne .L08052DA4
	movs r0, #1
	str r0, [sp, #0x38]
	b .L08052DB6
	.align 2, 0
.L08052D9C: .4byte 0x0000232C
.L08052DA0: .4byte 0x0000232E
.L08052DA4:
	ldr r1, .L08052DBC @ =0x00002321
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r3, .L08052DC0 @ =0x0000232A
	adds r0, r5, r3
	strh r2, [r0]
	movs r4, #2
	str r4, [sp, #0x38]
.L08052DB6:
	ldr r6, .L08052DC4 @ =0x00002328
	adds r1, r5, r6
	b .L080532AA
	.align 2, 0
.L08052DBC: .4byte 0x00002321
.L08052DC0: .4byte 0x0000232A
.L08052DC4: .4byte 0x00002328
.L08052DC8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08052DD8
	b .L08053462
.L08052DD8:
	ldr r7, .L08052DF8 @ =0x00002321
	adds r0, r5, r7
	strb r1, [r0]
	ldr r0, .L08052DFC @ =0x0000232A
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	ldr r2, .L08052E00 @ =0x00002322
	adds r1, r5, r2
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, .L08052E04 @ =0x00002328
	adds r1, r5, r3
	movs r0, #0xc
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052DF8: .4byte 0x00002321
.L08052DFC: .4byte 0x0000232A
.L08052E00: .4byte 0x00002322
.L08052E04: .4byte 0x00002328
.L08052E08:
	ldr r6, .L08052E40 @ =0x00002322
	adds r4, r5, r6
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08052E1A
	b .L08053462
.L08052E1A:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xbb
	bl func_08008B6C
	ldr r7, .L08052E44 @ =0x000022D8
	adds r1, r5, r7
	movs r0, #0x8f
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r4]
	ldr r0, .L08052E48 @ =0x0000225C
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	ldr r2, .L08052E4C @ =0x00002328
	adds r1, r5, r2
	b .L080532DA
	.align 2, 0
.L08052E40: .4byte 0x00002322
.L08052E44: .4byte 0x000022D8
.L08052E48: .4byte 0x0000225C
.L08052E4C: .4byte 0x00002328
.L08052E50:
	ldr r3, .L08052E78 @ =0x00002322
	adds r1, r5, r3
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08052E64
	b .L08053462
.L08052E64:
	ldr r4, .L08052E7C @ =0x0000225C
	adds r0, r5, r4
	str r2, [r0]
	ldr r6, .L08052E80 @ =0x0000232A
	adds r1, r5, r6
	movs r0, #4
	strh r0, [r1]
	ldr r7, .L08052E84 @ =0x00002328
	adds r1, r5, r7
	b .L080532DA
	.align 2, 0
.L08052E78: .4byte 0x00002322
.L08052E7C: .4byte 0x0000225C
.L08052E80: .4byte 0x0000232A
.L08052E84: .4byte 0x00002328
.L08052E88:
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08052E98
	b .L08053462
.L08052E98:
	ldr r0, .L08052EAC @ =0x00002328
	adds r1, r5, r0
	movs r0, #0x10
	strh r0, [r1]
	ldr r2, .L08052EB0 @ =0x00002321
	adds r1, r5, r2
	movs r0, #2
	strb r0, [r1]
	b .L08053462
	.align 2, 0
.L08052EAC: .4byte 0x00002328
.L08052EB0: .4byte 0x00002321
.L08052EB4:
	ldr r3, [sp, #0x30]
	cmp r3, #0
	bne .L08052EBC
	b .L08053462
.L08052EBC:
	ldr r4, .L08052EE0 @ =0x00002321
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	ldr r6, .L08052EE4 @ =0x00002290
	adds r0, r5, r6
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bls .L08052ED6
	b .L08053462
.L08052ED6:
	lsls r0, r0, #2
	ldr r1, .L08052EE8 @ =.L08052EEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08052EE0: .4byte 0x00002321
.L08052EE4: .4byte 0x00002290
.L08052EE8: .4byte .L08052EEC
.L08052EEC: @ jump table
	.4byte .L08052F10 @ case 0
	.4byte .L08052F10 @ case 1
	.4byte .L08052F88 @ case 2
	.4byte .L08052F88 @ case 3
	.4byte .L08052F88 @ case 4
	.4byte .L08052FF8 @ case 5
	.4byte .L08052F88 @ case 6
	.4byte .L08053014 @ case 7
	.4byte .L08053038 @ case 8
.L08052F10:
	ldr r7, .L08052F2C @ =0x000022D8
	adds r0, r5, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L08052F30 @ =0x000022DC
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge .L08052F38
	ldr r4, .L08052F34 @ =0x00002264
	adds r1, r5, r4
	ldrh r0, [r1]
	adds r0, #2
	b .L08052F40
	.align 2, 0
.L08052F2C: .4byte 0x000022D8
.L08052F30: .4byte 0x000022DC
.L08052F34: .4byte 0x00002264
.L08052F38:
	ldr r6, .L08052F78 @ =0x00002264
	adds r1, r5, r6
	ldrh r0, [r1]
	adds r0, #1
.L08052F40:
	strh r0, [r1]
	ldr r7, .L08052F78 @ =0x00002264
	adds r1, r5, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xfa
	ble .L08052F52
	movs r0, #0xfa
	strh r0, [r1]
.L08052F52:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xbc
	bl func_08008B6C
	ldr r3, .L08052F7C @ =0x00002322
	adds r1, r5, r3
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, .L08052F80 @ =0x0000225C
	adds r1, r5, r4
	movs r0, #3
	str r0, [r1]
	ldr r6, .L08052F84 @ =0x00002328
	adds r1, r5, r6
	movs r0, #0x11
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052F78: .4byte 0x00002264
.L08052F7C: .4byte 0x00002322
.L08052F80: .4byte 0x0000225C
.L08052F84: .4byte 0x00002328
.L08052F88:
	ldr r7, .L08052FB0 @ =0x000022D8
	adds r0, r5, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L08052FB4 @ =0x000022DC
	adds r0, r5, r3
	ldrb r0, [r0]
	adds r0, #0x10
	cmp r1, r0
	bge .L08052FC4
	ldr r4, .L08052FB8 @ =0x00002266
	adds r0, r5, r4
	ldrh r1, [r0]
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble .L08052FBC
	subs r1, #1
	b .L08052FBE
	.align 2, 0
.L08052FB0: .4byte 0x000022D8
.L08052FB4: .4byte 0x000022DC
.L08052FB8: .4byte 0x00002266
.L08052FBC:
	movs r1, #0
.L08052FBE:
	ldr r7, .L08052FE8 @ =0x00002266
	adds r0, r5, r7
	strh r1, [r0]
.L08052FC4:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xb7
	bl func_08008B6C
	ldr r0, .L08052FEC @ =0x00002322
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r2, .L08052FF0 @ =0x0000225C
	adds r1, r5, r2
	movs r0, #2
	str r0, [r1]
	ldr r3, .L08052FF4 @ =0x00002328
	adds r1, r5, r3
	movs r0, #0x13
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052FE8: .4byte 0x00002266
.L08052FEC: .4byte 0x00002322
.L08052FF0: .4byte 0x0000225C
.L08052FF4: .4byte 0x00002328
.L08052FF8:
	ldr r4, .L0805300C @ =0x0000232C
	adds r1, r5, r4
	movs r0, #0
	strh r0, [r1]
	ldr r6, .L08053010 @ =0x00002328
	adds r1, r5, r6
	movs r0, #0x1a
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805300C: .4byte 0x0000232C
.L08053010: .4byte 0x00002328
.L08053014:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xbc
	bl func_08008B6C
	ldr r7, .L08053030 @ =0x0000232C
	adds r1, r5, r7
	movs r0, #0
	strh r0, [r1]
	ldr r0, .L08053034 @ =0x00002328
	adds r1, r5, r0
	movs r0, #0x14
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08053030: .4byte 0x0000232C
.L08053034: .4byte 0x00002328
.L08053038:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xb7
	bl func_08008B6C
	ldr r2, .L08053054 @ =0x0000232C
	adds r1, r5, r2
	movs r0, #0
	strh r0, [r1]
	ldr r3, .L08053058 @ =0x00002328
	adds r1, r5, r3
	movs r0, #0x15
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08053054: .4byte 0x0000232C
.L08053058: .4byte 0x00002328
.L0805305C:
	ldr r4, .L080530A8 @ =0x00002322
	adds r1, r5, r4
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08053070
	b .L08053462
.L08053070:
	ldr r6, .L080530AC @ =0x0000225C
	adds r0, r5, r6
	str r2, [r0]
	movs r0, #0x80
	strh r0, [r1]
	ldr r7, .L080530B0 @ =0x000022C4
	adds r4, r5, r7
	ldr r0, .L080530B4 @ =0x000022C6
	adds r2, r5, r0
	ldrh r3, [r4]
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble .L08053092
	strh r3, [r2]
.L08053092:
	ldr r1, .L080530B8 @ =0x00002324
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080530C0
	ldr r2, .L080530BC @ =0x000022CD
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	b .L080530F8
	.align 2, 0
.L080530A8: .4byte 0x00002322
.L080530AC: .4byte 0x0000225C
.L080530B0: .4byte 0x000022C4
.L080530B4: .4byte 0x000022C6
.L080530B8: .4byte 0x00002324
.L080530BC: .4byte 0x000022CD
.L080530C0:
	ldr r3, .L080530DC @ =0x00002325
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080530E8
	ldr r6, .L080530E0 @ =0x000022CD
	adds r1, r5, r6
	movs r0, #2
	strb r0, [r1]
	ldrh r1, [r4]
	ldr r7, .L080530E4 @ =0x000022C8
	adds r0, r5, r7
	b .L080530F6
	.align 2, 0
.L080530DC: .4byte 0x00002325
.L080530E0: .4byte 0x000022CD
.L080530E4: .4byte 0x000022C8
.L080530E8:
	ldr r0, .L0805310C @ =0x000022CD
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1]
	ldrh r1, [r4]
	ldr r2, .L08053110 @ =0x000022CA
	adds r0, r5, r2
.L080530F6:
	strh r1, [r0]
.L080530F8:
	ldr r3, .L08053114 @ =0x000022CE
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L08053118 @ =0x00002328
	adds r1, r5, r4
	movs r0, #0x12
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805310C: .4byte 0x000022CD
.L08053110: .4byte 0x000022CA
.L08053114: .4byte 0x000022CE
.L08053118: .4byte 0x00002328
.L0805311C:
	ldr r6, .L08053148 @ =0x00002322
	adds r1, r5, r6
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08053132
	b .L08053462
.L08053132:
	ldr r7, .L0805314C @ =0x000022CC
	adds r1, r5, r7
	movs r0, #7
	strb r0, [r1]
	ldr r1, .L08053150 @ =0x000022CD
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, .L08053154 @ =0x0000232C
	adds r0, r5, r2
	strh r3, [r0]
	b .L080531CE
	.align 2, 0
.L08053148: .4byte 0x00002322
.L0805314C: .4byte 0x000022CC
.L08053150: .4byte 0x000022CD
.L08053154: .4byte 0x0000232C
.L08053158:
	ldr r4, .L08053180 @ =0x00002322
	adds r1, r5, r4
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805316C
	b .L08053462
.L0805316C:
	ldr r6, .L08053184 @ =0x0000225C
	adds r0, r5, r6
	str r2, [r0]
	ldr r7, .L08053188 @ =0x0000232C
	adds r0, r5, r7
	strh r2, [r0]
	ldr r0, .L0805318C @ =0x00002328
	adds r1, r5, r0
	b .L080531D2
	.align 2, 0
.L08053180: .4byte 0x00002322
.L08053184: .4byte 0x0000225C
.L08053188: .4byte 0x0000232C
.L0805318C: .4byte 0x00002328
.L08053190:
	ldr r1, .L080531B0 @ =0x0000232C
	adds r2, r5, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #2
	beq .L0805319E
	b .L08053462
.L0805319E:
	ldr r4, .L080531B4 @ =0x00000464
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	strh r0, [r2]
	ldr r6, .L080531B8 @ =0x00002328
	adds r1, r5, r6
	b .L080531D2
	.align 2, 0
.L080531B0: .4byte 0x0000232C
.L080531B4: .4byte 0x00000464
.L080531B8: .4byte 0x00002328
.L080531BC:
	ldr r7, .L080531D8 @ =0x0000232C
	adds r1, r5, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	beq .L080531CA
	b .L08053462
.L080531CA:
	movs r0, #0
	strh r0, [r1]
.L080531CE:
	ldr r3, .L080531DC @ =0x00002328
	adds r1, r5, r3
.L080531D2:
	movs r0, #0x16
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L080531D8: .4byte 0x0000232C
.L080531DC: .4byte 0x00002328
.L080531E0:
	ldr r4, .L08053208 @ =0x00002326
	adds r1, r5, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r6, .L0805320C @ =0x00002325
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	ldr r7, .L08053210 @ =0x00002324
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08053218
	ldr r0, .L08053214 @ =0x00002328
	adds r1, r5, r0
	movs r0, #0x17
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08053208: .4byte 0x00002326
.L0805320C: .4byte 0x00002325
.L08053210: .4byte 0x00002324
.L08053214: .4byte 0x00002328
.L08053218:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne .L08053230
	ldr r2, .L0805322C @ =0x00002328
	adds r1, r5, r2
	movs r0, #0x18
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805322C: .4byte 0x00002328
.L08053230:
	ldr r3, .L0805323C @ =0x00002328
	adds r1, r5, r3
	movs r0, #0x19
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805323C: .4byte 0x00002328
.L08053240:
	ldr r4, .L08053268 @ =0x0000232C
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #2
	beq .L0805324E
	b .L08053462
.L0805324E:
	ldr r7, .L0805326C @ =0x0000232E
	adds r0, r5, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	str r2, [sp, #0x38]
	cmp r0, #0
	bne .L08053262
	movs r3, #1
	str r3, [sp, #0x38]
.L08053262:
	ldr r4, .L08053270 @ =0x00002328
	adds r1, r5, r4
	b .L080532AA
	.align 2, 0
.L08053268: .4byte 0x0000232C
.L0805326C: .4byte 0x0000232E
.L08053270: .4byte 0x00002328
.L08053274:
	ldr r6, .L0805328C @ =0x0000232C
	adds r0, r5, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	beq .L08053282
	b .L08053462
.L08053282:
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r2, .L08053290 @ =0x00002328
	adds r1, r5, r2
	b .L080532AA
	.align 2, 0
.L0805328C: .4byte 0x0000232C
.L08053290: .4byte 0x00002328
.L08053294:
	ldr r3, .L080532B0 @ =0x0000232C
	adds r0, r5, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L080532A2
	b .L08053462
.L080532A2:
	movs r6, #0
	str r6, [sp, #0x38]
	ldr r7, .L080532B4 @ =0x00002328
	adds r1, r5, r7
.L080532AA:
	movs r0, #0x1b
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L080532B0: .4byte 0x0000232C
.L080532B4: .4byte 0x00002328
.L080532B8:
	ldr r0, [sp, #4]
	ldr r1, .L080532E4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L080532E8 @ =0x00002328
	adds r1, r5, r0
.L080532DA:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L080532E4: .4byte 0x00000889
.L080532E8: .4byte 0x00002328
.L080532EC:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L080532FC
	b .L08053462
.L080532FC:
	ldr r2, [sp, #0x38]
	cmp r2, #0
	beq .L08053310
	ldr r3, .L0805330C @ =0x00002328
	adds r0, r5, r3
	strh r1, [r0]
	b .L08053462
	.align 2, 0
.L0805330C: .4byte 0x00002328
.L08053310:
	ldr r3, [r5, #8]
	ldr r4, .L080533AC @ =0x00002264
	adds r0, r5, r4
	ldr r4, .L080533B0 @ =0x00001C9C
	adds r3, r3, r4
	ldrb r2, [r0]
	lsls r2, r2, #0xd
	ldr r0, [r3]
	ldr r1, .L080533B4 @ =0xFFE01FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r3, [r5, #8]
	ldr r6, .L080533B8 @ =0x00002326
	adds r1, r5, r6
	ldrb r0, [r1]
	movs r2, #7
	cmp r0, #6
	bhi .L08053338
	adds r2, r0, #0
.L08053338:
	ldr r7, .L080533BC @ =0x00001C9D
	adds r3, r3, r7
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r3, [r5, #8]
	ldr r1, .L080533C0 @ =0x000022C6
	adds r0, r5, r1
	movs r6, #0
	ldrsh r2, [r0, r6]
	adds r3, r3, r4
	ldr r7, .L080533C4 @ =0x000003FF
	adds r0, r7, #0
	ands r2, r0
	ldrh r1, [r3]
	ldr r0, .L080533C8 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldr r1, .L080533CC @ =0x00002324
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805345E
	add r1, sp, #0x18
	add r2, sp, #0x38
	ldrb r2, [r2]
	strb r2, [r1]
	mov r3, sp
	ldrh r3, [r3, #0x38]
	strh r3, [r1, #2]
	movs r4, #0xa
	mov sb, r4
	ldr r6, .L080533D0 @ =0x000022C8
	adds r3, r5, r6
	ldr r7, .L080533D4 @ =0x000022CA
	adds r0, r5, r7
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldrh r4, [r0]
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov sl, r1
	cmp r2, r0
	bge .L080533A0
	strh r4, [r3]
.L080533A0:
	movs r4, #0
	mov r6, sl
	ldr r0, .L080533D0 @ =0x000022C8
	adds r7, r5, r0
	b .L080533DA
	.align 2, 0
.L080533AC: .4byte 0x00002264
.L080533B0: .4byte 0x00001C9C
.L080533B4: .4byte 0xFFE01FFF
.L080533B8: .4byte 0x00002326
.L080533BC: .4byte 0x00001C9D
.L080533C0: .4byte 0x000022C6
.L080533C4: .4byte 0x000003FF
.L080533C8: .4byte 0xFFFFFC00
.L080533CC: .4byte 0x00002324
.L080533D0: .4byte 0x000022C8
.L080533D4: .4byte 0x000022CA
.L080533D8:
	adds r4, #1
.L080533DA:
	cmp r4, #9
	bgt .L080533FC
	ldr r0, [r5, #8]
	ldr r1, .L08053490 @ =0x00002C4C
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080522D8
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	cmp r0, r1
	bgt .L080533D8
	mov sb, r4
.L080533FC:
	mov r3, sb
	cmp r3, #9
	bgt .L0805345E
	cmp r3, #8
	bgt .L08053432
	movs r6, #9
	cmp r6, sb
	ble .L08053432
	ldr r4, .L08053490 @ =0x00002C4C
	mov r8, r4
	mov r7, sl
.L08053412:
	ldr r0, [r5, #8]
	add r0, r8
	subs r4, r6, #1
	adds r1, r7, #0
	adds r2, r4, #0
	bl func_080522D8
	ldr r0, [r5, #8]
	add r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	bl func_080522E8
	adds r6, r4, #0
	cmp r6, sb
	bgt .L08053412
.L08053432:
	movs r0, #0
	mov r6, sl
	strb r0, [r6]
	ldr r7, .L08053494 @ =0x000022C8
	adds r0, r5, r7
	ldrh r0, [r0]
	add r1, sp, #0x18
	strh r0, [r1, #2]
	ldr r0, [r5, #8]
	ldr r2, .L08053490 @ =0x00002C4C
	adds r0, r0, r2
	mov r2, sb
	bl func_080522E8
	mov r3, sb
	cmp r3, #0
	bne .L0805345E
	ldr r0, [r5, #8]
	ldr r4, .L08053498 @ =0x00001C70
	adds r0, r0, r4
	bl SetFestivalWinner__6Animal
.L0805345E:
	movs r6, #1
	str r6, [sp, #0x34]
.L08053462:
	adds r0, r5, #0
	bl func_08053960
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	ldr r7, .L0805349C @ =0x00002330
	adds r1, r5, r7
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x1c]
	ldr r0, .L080534A0 @ =0x00001D59
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0x13
	bhi .L080534A4
	adds r0, #1
	strb r0, [r1]
	b .L080535D4
	.align 2, 0
.L08053490: .4byte 0x00002C4C
.L08053494: .4byte 0x000022C8
.L08053498: .4byte 0x00001C70
.L0805349C: .4byte 0x00002330
.L080534A0: .4byte 0x00001D59
.L080534A4:
	movs r0, #0
	strb r0, [r1]
	ldr r1, .L08053500 @ =0x00001D58
	adds r4, r5, r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl func_08008910
	ldrb r2, [r4]
	adds r6, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #9
	adds r1, r1, r5
	movs r2, #0xab
	lsls r2, r2, #3
	adds r1, r1, r2
	add r0, sp, #8
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r3, #0xc0
	lsls r3, r3, #3
	bl func_08008F0C
	ldr r3, [sp, #0x3c]
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08053504
	cmp r1, #0
	beq .L080534F8
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r4, r7}
	stm r0!, {r2, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080534F8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080535D4
	.align 2, 0
.L08053500: .4byte 0x00001D58
.L08053504:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r6]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L0805351E
	adds r0, r1, #0
.L0805351E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805353C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08053540
	mov r0, sb
	bl func_080D3BC0
	b .L08053540
.L0805353C:
	movs r0, #0
	mov sb, r0
.L08053540:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r6]
	mov ip, r8
	ldr r4, [sp, #0x44]
	cmp r2, r4
	beq .L0805356C
.L0805354E:
	mov r7, ip
	cmp r7, #0
	beq .L08053560
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08053560:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x44]
	cmp r2, r1
	bne .L0805354E
.L0805356C:
	mov r4, ip
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L08053588
	cmp r4, #0
	beq .L08053584
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08053584:
	adds r4, #0x10
	b .L080535B0
.L08053588:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080535AE
.L08053590:
	cmp r2, #0
	beq .L080535A0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080535A0:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08053590
.L080535AE:
	adds r4, r2, #0
.L080535B0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080535C0
.L080535BA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080535BA
.L080535C0:
	cmp r0, #0
	beq .L080535C8
	bl free
.L080535C8:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080535D4:
	adds r0, r5, #0
	bl func_08053634
	adds r0, r5, #0
	bl func_080558C4
.L080535E0:
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bne .L080535EA
	bl sub_08052A1E
.L080535EA:
	movs r0, #0
	str r0, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0x24]
	ldr r6, [sp, #0x40]
	str r0, [r6, #4]
	str r0, [r4]
	ldr r7, [sp, #0x2c]
	str r0, [r7]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805360E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805360E:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08053620
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08053620:
	ldr r0, [sp, #0x2c]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08053634
func_08053634: @ 0x08053634
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
	bls .L08053686
	b .L0805394C
.L08053686:
	lsls r0, r0, #2
	ldr r1, .L08053690 @ =.L08053694
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08053690: .4byte .L08053694
.L08053694: @ jump table
	.4byte .L080536B0 @ case 0
	.4byte .L0805394C @ case 1
	.4byte .L0805394C @ case 2
	.4byte .L080536D2 @ case 3
	.4byte .L0805394C @ case 4
	.4byte .L0805394C @ case 5
	.4byte .L0805394C @ case 6
.L080536B0:
	ldr r1, .L080536C8 @ =0x0000232C
	adds r4, r7, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne .L080536CC
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0805394C
	.align 2, 0
.L080536C8: .4byte 0x0000232C
.L080536CC:
	movs r0, #2
	strh r0, [r4]
	b .L0805394C
.L080536D2:
	ldr r6, .L080536EC @ =0x0000232C
	adds r4, r7, r6
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne .L080536F0
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strh r0, [r4]
	b .L0805394C
	.align 2, 0
.L080536EC: .4byte 0x0000232C
.L080536F0:
	cmp r0, #4
	bne .L08053784
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r3, #0
	movs r5, #3
	strh r5, [r4]
	ldr r6, .L08053718 @ =0x00002328
	adds r2, r7, r6
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r1, #9
	beq .L0805374C
	cmp r1, #9
	bgt .L0805371C
	cmp r1, #2
	beq .L08053722
	b .L0805394C
	.align 2, 0
.L08053718: .4byte 0x00002328
.L0805371C:
	cmp r1, #0x17
	beq .L08053752
	b .L0805394C
.L08053722:
	cmp r0, #1
	bne .L08053734
	ldr r1, .L08053730 @ =0x0000232E
	adds r0, r7, r1
	strh r3, [r0]
	strh r5, [r2]
	b .L0805394C
	.align 2, 0
.L08053730: .4byte 0x0000232E
.L08053734:
	cmp r0, #2
	beq .L0805373A
	b .L0805394C
.L0805373A:
	ldr r3, .L08053748 @ =0x0000232E
	adds r0, r7, r3
	movs r1, #1
	strh r1, [r0]
	movs r0, #5
	strh r0, [r4]
	b .L0805394C
	.align 2, 0
.L08053748: .4byte 0x0000232E
.L0805374C:
	cmp r0, #1
	beq .L08053756
	b .L08053764
.L08053752:
	cmp r0, #1
	bne .L08053764
.L08053756:
	ldr r6, .L08053760 @ =0x0000232E
	adds r0, r7, r6
	strh r3, [r0]
	b .L08053770
	.align 2, 0
.L08053760: .4byte 0x0000232E
.L08053764:
	cmp r0, #2
	bne .L08053770
	ldr r0, .L0805377C @ =0x0000232E
	adds r1, r7, r0
	movs r0, #1
	strh r0, [r1]
.L08053770:
	ldr r3, .L08053780 @ =0x0000232C
	adds r1, r7, r3
	movs r0, #5
	strh r0, [r1]
	b .L0805394C
	.align 2, 0
.L0805377C: .4byte 0x0000232E
.L08053780: .4byte 0x0000232C
.L08053784:
	cmp r0, #3
	beq .L0805378A
	b .L0805394C
.L0805378A:
	movs r0, #5
	strh r0, [r4]
	ldr r6, .L080537AC @ =0x00002328
	adds r0, r7, r6
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bls .L080537A0
	b .L0805394C
.L080537A0:
	lsls r0, r0, #2
	ldr r1, .L080537B0 @ =.L080537B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080537AC: .4byte 0x00002328
.L080537B0: .4byte .L080537B4
.L080537B4: @ jump table
	.4byte .L08053818 @ case 0
	.4byte .L08053824 @ case 1
	.4byte .L0805394C @ case 2
	.4byte .L08053834 @ case 3
	.4byte .L08053844 @ case 4
	.4byte .L08053854 @ case 5
	.4byte .L08053878 @ case 6
	.4byte .L080538A0 @ case 7
	.4byte .L0805394C @ case 8
	.4byte .L0805394C @ case 9
	.4byte .L0805394C @ case 10
	.4byte .L0805394C @ case 11
	.4byte .L0805394C @ case 12
	.4byte .L0805394C @ case 13
	.4byte .L0805394C @ case 14
	.4byte .L0805394C @ case 15
	.4byte .L0805394C @ case 16
	.4byte .L0805394C @ case 17
	.4byte .L0805392C @ case 18
	.4byte .L08053944 @ case 19
	.4byte .L0805394C @ case 20
	.4byte .L080538EC @ case 21
	.4byte .L080538CC @ case 22
	.4byte .L080538DC @ case 23
	.4byte .L0805391C @ case 24
.L08053818:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053820 @ =gUnk_080FA39C
	b .L080538F0
	.align 2, 0
.L08053820: .4byte gUnk_080FA39C
.L08053824:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053830 @ =gUnk_080FA3C0
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053830: .4byte gUnk_080FA3C0
.L08053834:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053840 @ =gUnk_080FA458
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053840: .4byte gUnk_080FA458
.L08053844:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053850 @ =gUnk_080FA49C
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053850: .4byte gUnk_080FA49C
.L08053854:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805386C @ =gUnk_080FA510
	bl func_08050D8C
	ldr r3, .L08053870 @ =0x00002328
	adds r1, r7, r3
	movs r0, #9
	strh r0, [r1]
	ldr r6, .L08053874 @ =0x0000232C
	adds r1, r7, r6
	b .L0805388C
	.align 2, 0
.L0805386C: .4byte gUnk_080FA510
.L08053870: .4byte 0x00002328
.L08053874: .4byte 0x0000232C
.L08053878:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053894 @ =gUnk_080FA614
	bl func_08050D8C
	ldr r0, .L08053898 @ =0x00002328
	adds r1, r7, r0
	movs r0, #9
	strh r0, [r1]
	ldr r3, .L0805389C @ =0x0000232C
	adds r1, r7, r3
.L0805388C:
	movs r0, #3
	strh r0, [r1]
	b .L0805394C
	.align 2, 0
.L08053894: .4byte gUnk_080FA614
.L08053898: .4byte 0x00002328
.L0805389C: .4byte 0x0000232C
.L080538A0:
	ldr r0, [r7, #0x10]
	ldr r1, .L080538BC @ =gUnk_080FA660
	ldr r2, .L080538C0 @ =gUnk_080FA3BC
	ldr r3, .L080538C4 @ =gUnk_080FA3B8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r6, .L080538C8 @ =0x0000232C
	adds r1, r7, r6
	b .L08053904
	.align 2, 0
.L080538BC: .4byte gUnk_080FA660
.L080538C0: .4byte gUnk_080FA3BC
.L080538C4: .4byte gUnk_080FA3B8
.L080538C8: .4byte 0x0000232C
.L080538CC:
	ldr r0, [r7, #0x10]
	ldr r1, .L080538D8 @ =gUnk_080FA670
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L080538D8: .4byte gUnk_080FA670
.L080538DC:
	ldr r0, [r7, #0x10]
	ldr r1, .L080538E8 @ =gUnk_080FA684
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L080538E8: .4byte gUnk_080FA684
.L080538EC:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805390C @ =gUnk_080FA6A0
.L080538F0:
	ldr r2, .L08053910 @ =gUnk_080FA3B8
	ldr r3, .L08053914 @ =gUnk_080FA3BC
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r0, .L08053918 @ =0x0000232C
	adds r1, r7, r0
.L08053904:
	movs r0, #4
	strh r0, [r1]
	b .L0805394C
	.align 2, 0
.L0805390C: .4byte gUnk_080FA6A0
.L08053910: .4byte gUnk_080FA3B8
.L08053914: .4byte gUnk_080FA3BC
.L08053918: .4byte 0x0000232C
.L0805391C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053928 @ =gUnk_080FA6AC
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053928: .4byte gUnk_080FA6AC
.L0805392C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805393C @ =gUnk_080FA6E0
	ldr r3, .L08053940 @ =0x000023A0
	adds r2, r7, r3
	bl func_08050DA0
	b .L0805394C
	.align 2, 0
.L0805393C: .4byte gUnk_080FA6E0
.L08053940: .4byte 0x000023A0
.L08053944:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805395C @ =gUnk_080FA6F4
	bl func_08050D8C
.L0805394C:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805395C: .4byte gUnk_080FA6F4

	thumb_func_start func_08053960
func_08053960: @ 0x08053960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x44]
	ldr r1, .L08053988 @ =0x00002321
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L0805398C
	movs r0, #0
	bl .L08054D0A
	.align 2, 0
.L08053988: .4byte 0x00002321
.L0805398C:
	ldr r2, .L080539A4 @ =0x0000232A
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #9
	bls .L0805399A
	b .L08053D42
.L0805399A:
	lsls r0, r0, #2
	ldr r1, .L080539A8 @ =.L080539AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080539A4: .4byte 0x0000232A
.L080539A8: .4byte .L080539AC
.L080539AC: @ jump table
	.4byte .L080539D4 @ case 0
	.4byte .L08053D42 @ case 1
	.4byte .L080539EC @ case 2
	.4byte .L08053D42 @ case 3
	.4byte .L080539FA @ case 4
	.4byte .L08053A38 @ case 5
	.4byte .L08053D42 @ case 6
	.4byte .L08053AF8 @ case 7
	.4byte .L08053B2C @ case 8
	.4byte .L08053D42 @ case 9
.L080539D4:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0x8a
	bl func_0805E860
	ldr r5, .L080539E8 @ =0x0000232A
	adds r1, r6, r5
	b .L08053D3C
	.align 2, 0
.L080539E8: .4byte 0x0000232A
.L080539EC:
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0x8a
	bl func_0805E860
	b .L08053D42
.L080539FA:
	ldr r0, .L08053A28 @ =0x000022D0
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	ldr r2, .L08053A2C @ =0x000022D4
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1]
	ldr r3, .L08053A30 @ =0x000022DE
	adds r1, r6, r3
	movs r0, #0
	strh r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0x92
	bl func_0805E860
	ldr r5, .L08053A34 @ =0x0000232A
	adds r1, r6, r5
	b .L08053D3C
	.align 2, 0
.L08053A28: .4byte 0x000022D0
.L08053A2C: .4byte 0x000022D4
.L08053A30: .4byte 0x000022DE
.L08053A34: .4byte 0x0000232A
.L08053A38:
	ldr r7, .L08053AE0 @ =0x000022D8
	adds r3, r6, r7
	ldrh r0, [r3]
	ldr r1, .L08053AE4 @ =0x000022DA
	adds r5, r6, r1
	strh r0, [r5]
	ldr r4, .L08053AE8 @ =0x000022D0
	adds r2, r6, r4
	subs r7, #4
	adds r4, r6, r7
	ldr r0, [r2]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	ble .L08053A5E
	str r1, [r2]
.L08053A5E:
	movs r0, #2
	ldrsh r1, [r2, r0]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	bgt .L08053A8A
	movs r0, #0x8f
	strh r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4]
	ldr r2, .L08053AEC @ =0x000022DE
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
.L08053A8A:
	ldr r4, .L08053AF0 @ =0x00002328
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0x10
	beq .L08053A98
	b .L08053D42
.L08053A98:
	movs r0, #0
	ldrsh r2, [r5, r0]
	ldrh r1, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	bge .L08053AA8
	movs r1, #0x30
.L08053AA8:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	subs r0, r2, r5
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #1
	ble .L08053AD0
	bl rand
	asrs r0, r0, #8
	adds r1, r4, #0
	bl __modsi3
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	bgt .L08053AD0
	movs r1, #0x30
.L08053AD0:
	ldr r5, .L08053AE0 @ =0x000022D8
	adds r0, r6, r5
	strh r1, [r0]
	ldr r7, .L08053AF4 @ =0x0000232A
	adds r1, r6, r7
	movs r0, #7
	b .L08053D40
	.align 2, 0
.L08053AE0: .4byte 0x000022D8
.L08053AE4: .4byte 0x000022DA
.L08053AE8: .4byte 0x000022D0
.L08053AEC: .4byte 0x000022DE
.L08053AF0: .4byte 0x00002328
.L08053AF4: .4byte 0x0000232A
.L08053AF8:
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt .L08053B08
	b .L08053D42
.L08053B08:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x96
	bl func_0805E860
	ldr r3, .L08053B24 @ =0x00002320
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L08053B28 @ =0x0000232A
	adds r1, r6, r4
	b .L08053D3C
	.align 2, 0
.L08053B24: .4byte 0x00002320
.L08053B28: .4byte 0x0000232A
.L08053B2C:
	movs r5, #0x8c
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08053B3C
	b .L08053D1E
.L08053B3C:
	ldr r7, .L08053B7C @ =0x00002320
	adds r1, r6, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq .L08053B50
	b .L08053D1E
.L08053B50:
	ldr r0, .L08053B80 @ =0x00002294
	adds r1, r6, r0
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r2, .L08053B84 @ =0x00002298
	adds r1, r6, r2
	movs r0, #0x88
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r3, .L08053B88 @ =0x000022D8
	adds r4, r6, r3
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #0x30
	bne .L08053B90
	subs r7, #0xb0
	adds r1, r6, r7
	ldr r0, .L08053B8C @ =0x000003E7
	str r0, [r1]
	b .L08053BB2
	.align 2, 0
.L08053B7C: .4byte 0x00002320
.L08053B80: .4byte 0x00002294
.L08053B84: .4byte 0x00002298
.L08053B88: .4byte 0x000022D8
.L08053B8C: .4byte 0x000003E7
.L08053B90:
	bl rand
	ldr r1, .L08053BD0 @ =0x00002270
	adds r5, r6, r1
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r1, #0x8f
	subs r1, r1, r2
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #1
	asrs r0, r0, #8
	movs r1, #0xa
	bl __modsi3
	adds r4, r4, r0
	str r4, [r5]
.L08053BB2:
	adds r0, r6, #0
	bl func_08054D34
	ldr r4, .L08053BD4 @ =0x00002290
	adds r1, r6, r4
	strh r0, [r1]
	ldr r5, .L08053BD0 @ =0x00002270
	adds r0, r6, r5
	ldr r1, [r0]
	cmp r1, #0
	bne .L08053BD8
	movs r2, #0xa
	rsbs r2, r2, #0
	b .L08053BEA
	.align 2, 0
.L08053BD0: .4byte 0x00002270
.L08053BD4: .4byte 0x00002290
.L08053BD8:
	cmp r1, #0xdb
	bgt .L08053BE0
	movs r2, #0x10
	b .L08053BEA
.L08053BE0:
	ldr r0, .L08053C5C @ =0x000002BB
	movs r2, #0x30
	cmp r1, r0
	bgt .L08053BEA
	movs r2, #0x20
.L08053BEA:
	ldr r7, .L08053C60 @ =0x000022A0
	adds r4, r6, r7
	ldr r0, .L08053C64 @ =0x00002270
	adds r1, r6, r0
	adds r2, #0x10
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r4]
	ldr r0, [r1]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r0, [r4]
	lsls r0, r0, #0x10
	str r0, [r4]
	ldr r2, .L08053C68 @ =0x000022A8
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	ldr r0, [r4]
	asrs r0, r0, #8
	lsls r0, r0, #2
	bl Sqrt
	ldr r3, .L08053C6C @ =0x000022A4
	adds r1, r6, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r1]
	ldr r5, .L08053C70 @ =0x00002274
	adds r2, r6, r5
	asrs r0, r0, #3
	lsls r1, r0, #2
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, .L08053C74 @ =0x0000FFFF
	cmp r1, r0
	bgt .L08053C3A
	adds r0, #1
	str r0, [r2]
.L08053C3A:
	ldr r7, .L08053C78 @ =0x00002278
	adds r1, r6, r7
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, .L08053C7C @ =0x000022B4
	adds r1, r6, r0
	ldr r0, [r4]
	asrs r0, r0, #2
	str r0, [r1]
	ldr r1, [r4]
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	ble .L08053C80
	movs r7, #0x10
	b .L08053C8C
	.align 2, 0
.L08053C5C: .4byte 0x000002BB
.L08053C60: .4byte 0x000022A0
.L08053C64: .4byte 0x00002270
.L08053C68: .4byte 0x000022A8
.L08053C6C: .4byte 0x000022A4
.L08053C70: .4byte 0x00002274
.L08053C74: .4byte 0x0000FFFF
.L08053C78: .4byte 0x00002278
.L08053C7C: .4byte 0x000022B4
.L08053C80:
	movs r0, #0xc8
	lsls r0, r0, #0x10
	movs r7, #8
	cmp r1, r0
	ble .L08053C8C
	movs r7, #0xc
.L08053C8C:
	ldr r1, .L08053CC8 @ =0x000022AC
	adds r4, r6, r1
	ldr r2, .L08053CCC @ =0x000022B4
	adds r5, r6, r2
	ldr r0, [r5]
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4]
	ldr r3, .L08053CD0 @ =0x000022B0
	adds r1, r6, r3
	str r0, [r1]
	ldr r4, .L08053CD4 @ =0x000022B8
	adds r2, r6, r4
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r1, r0, r1
	str r1, [r2]
	subs r3, #0x20
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L08053CDC
	ldr r0, .L08053CD8 @ =0x000022BC
	adds r4, r6, r0
	adds r1, r7, #0
	adds r1, #0xc
	ldr r0, [r5]
	b .L08053CF2
	.align 2, 0
.L08053CC8: .4byte 0x000022AC
.L08053CCC: .4byte 0x000022B4
.L08053CD0: .4byte 0x000022B0
.L08053CD4: .4byte 0x000022B8
.L08053CD8: .4byte 0x000022BC
.L08053CDC:
	ldr r0, [r5]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r2]
	ldr r1, .L08053D5C @ =0x000022BC
	adds r4, r6, r1
	ldr r0, [r5]
	asrs r1, r0, #1
	subs r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xc
.L08053CF2:
	bl __divsi3
	str r0, [r4]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0x95
	bl func_08008B6C
	ldr r2, .L08053D60 @ =0x0000229C
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	movs r3, #0x8b
	lsls r3, r3, #6
	adds r1, r6, r3
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	movs r4, #0xd3
	lsls r4, r4, #2
	adds r0, r6, r4
	strb r2, [r0]
.L08053D1E:
	movs r5, #0x8c
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L08053D42
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, .L08053D64 @ =0x00000195
	bl func_0805E860
	ldr r0, .L08053D68 @ =0x0000232A
	adds r1, r6, r0
.L08053D3C:
	ldrh r0, [r1]
	adds r0, #1
.L08053D40:
	strh r0, [r1]
.L08053D42:
	movs r1, #0x8b
	lsls r1, r1, #6
	adds r0, r6, r1
	movs r2, #0
	ldrsh r4, [r0, r2]
	cmp r4, #1
	beq .L08053D74
	cmp r4, #1
	bgt .L08053D6C
	cmp r4, #0
	bne .L08053D5A
	b .L08053E5C
.L08053D5A:
	b .L08053FA6
	.align 2, 0
.L08053D5C: .4byte 0x000022BC
.L08053D60: .4byte 0x0000229C
.L08053D64: .4byte 0x00000195
.L08053D68: .4byte 0x0000232A
.L08053D6C:
	cmp r4, #2
	bne .L08053D72
	b .L08053E6A
.L08053D72:
	b .L08053FA6
.L08053D74:
	ldr r3, .L08053DC0 @ =0x0000229C
	adds r2, r6, r3
	ldr r5, .L08053DC4 @ =0x000022A4
	adds r1, r6, r5
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r7, .L08053DC8 @ =0x00002294
	adds r1, r6, r7
	movs r5, #0xa0
	lsls r5, r5, #0xf
	adds r0, r0, r5
	str r0, [r1]
	ldr r1, .L08053DCC @ =0x000022B4
	adds r0, r6, r1
	ldr r2, [r2]
	ldr r0, [r0]
	cmp r2, r0
	bge .L08053DE0
	ldr r4, .L08053DD0 @ =0x000022B0
	adds r3, r6, r4
	ldr r0, [r3]
	cmp r2, r0
	ble .L08053E24
	ldr r5, .L08053DD4 @ =0x00002298
	adds r1, r6, r5
	ldr r0, [r1]
	ldr r7, .L08053DD8 @ =0xFFFF0000
	adds r0, r0, r7
	str r0, [r1]
	ldr r0, .L08053DDC @ =0x000022AC
	adds r1, r6, r0
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	b .L08053E24
	.align 2, 0
.L08053DC0: .4byte 0x0000229C
.L08053DC4: .4byte 0x000022A4
.L08053DC8: .4byte 0x00002294
.L08053DCC: .4byte 0x000022B4
.L08053DD0: .4byte 0x000022B0
.L08053DD4: .4byte 0x00002298
.L08053DD8: .4byte 0xFFFF0000
.L08053DDC: .4byte 0x000022AC
.L08053DE0:
	ldr r1, .L08053E48 @ =0x000022B8
	adds r3, r6, r1
	ldr r0, [r3]
	cmp r2, r0
	blt .L08053E24
	ldr r7, .L08053E4C @ =0x00002298
	adds r2, r6, r7
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r2]
	adds r7, #0x24
	adds r1, r6, r7
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0x50
	ble .L08053E24
	str r5, [r2]
	ldr r2, .L08053E50 @ =0x000022C2
	adds r1, r6, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne .L08053E24
	movs r5, #0xef
	lsls r5, r5, #2
	adds r0, r6, r5
	strb r4, [r0]
	strh r4, [r1]
.L08053E24:
	ldr r7, .L08053E54 @ =0x000022A4
	adds r2, r6, r7
	ldr r1, .L08053E58 @ =0x000022A8
	adds r0, r6, r1
	ldr r1, [r2]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r2]
	cmp r1, #0
	blt .L08053E3A
	b .L08053FA6
.L08053E3A:
	movs r1, #0
	str r1, [r2]
	movs r2, #0x8b
	lsls r2, r2, #6
	adds r0, r6, r2
	strh r1, [r0]
	b .L08053FA6
	.align 2, 0
.L08053E48: .4byte 0x000022B8
.L08053E4C: .4byte 0x00002298
.L08053E50: .4byte 0x000022C2
.L08053E54: .4byte 0x000022A4
.L08053E58: .4byte 0x000022A8
.L08053E5C:
	movs r3, #0xc6
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0xc9
	bl func_0805E860
	b .L08053FA6
.L08053E6A:
	ldr r4, .L08053EA4 @ =0x00002294
	adds r1, r6, r4
	ldr r5, .L08053EA8 @ =0x00002268
	adds r0, r6, r5
	ldr r0, [r0]
	str r0, [r1]
	ldr r7, .L08053EAC @ =0x00002298
	adds r1, r6, r7
	ldr r2, .L08053EB0 @ =0x0000226C
	adds r0, r6, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0xb9
	ldr r3, .L08053EB4 @ =0x00002288
	adds r1, r6, r3
	ldr r4, .L08053EB8 @ =0xFFFFFCC1
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bls .L08053E9A
	b .L08053F9A
.L08053E9A:
	lsls r0, r0, #2
	ldr r1, .L08053EBC @ =.L08053EC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08053EA4: .4byte 0x00002294
.L08053EA8: .4byte 0x00002268
.L08053EAC: .4byte 0x00002298
.L08053EB0: .4byte 0x0000226C
.L08053EB4: .4byte 0x00002288
.L08053EB8: .4byte 0xFFFFFCC1
.L08053EBC: .4byte .L08053EC0
.L08053EC0: @ jump table
	.4byte .L08053F8C @ case 0
	.4byte .L08053F9A @ case 1
	.4byte .L08053F9A @ case 2
	.4byte .L08053F9A @ case 3
	.4byte .L08053F9A @ case 4
	.4byte .L08053F9A @ case 5
	.4byte .L08053F9A @ case 6
	.4byte .L08053F9A @ case 7
	.4byte .L08053F9A @ case 8
	.4byte .L08053F9A @ case 9
	.4byte .L08053F9A @ case 10
	.4byte .L08053F9A @ case 11
	.4byte .L08053F9A @ case 12
	.4byte .L08053F84 @ case 13
	.4byte .L08053F9A @ case 14
	.4byte .L08053F9A @ case 15
	.4byte .L08053F88 @ case 16
	.4byte .L08053F9A @ case 17
	.4byte .L08053F9A @ case 18
	.4byte .L08053F9A @ case 19
	.4byte .L08053F9A @ case 20
	.4byte .L08053F9A @ case 21
	.4byte .L08053F9A @ case 22
	.4byte .L08053F9A @ case 23
	.4byte .L08053F9A @ case 24
	.4byte .L08053F9A @ case 25
	.4byte .L08053F9A @ case 26
	.4byte .L08053F9A @ case 27
	.4byte .L08053F9A @ case 28
	.4byte .L08053F9A @ case 29
	.4byte .L08053F9A @ case 30
	.4byte .L08053F9A @ case 31
	.4byte .L08053F9A @ case 32
	.4byte .L08053F9A @ case 33
	.4byte .L08053F9A @ case 34
	.4byte .L08053F9A @ case 35
	.4byte .L08053F9A @ case 36
	.4byte .L08053F9A @ case 37
	.4byte .L08053F9A @ case 38
	.4byte .L08053F9A @ case 39
	.4byte .L08053F90 @ case 40
	.4byte .L08053F9A @ case 41
	.4byte .L08053F9A @ case 42
	.4byte .L08053F9A @ case 43
	.4byte .L08053F94 @ case 44
	.4byte .L08053F9A @ case 45
	.4byte .L08053F9A @ case 46
	.4byte .L08053F9A @ case 47
	.4byte .L08053F98 @ case 48
.L08053F84:
	movs r2, #0xb9
	b .L08053F9A
.L08053F88:
	movs r2, #0xbc
	b .L08053F9A
.L08053F8C:
	movs r2, #0xb0
	b .L08053F9A
.L08053F90:
	movs r2, #0xc0
	b .L08053F9A
.L08053F94:
	movs r2, #0xc4
	b .L08053F9A
.L08053F98:
	movs r2, #0xc8
.L08053F9A:
	movs r5, #0xc6
	lsls r5, r5, #2
	adds r0, r6, r5
	adds r1, r2, #0
	bl func_0805E860
.L08053FA6:
	ldr r7, .L0805400C @ =0x0000228A
	adds r5, r6, r7
	ldr r0, .L08054010 @ =0x00002288
	adds r4, r6, r0
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq .L08053FCC
	movs r7, #0x8e
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl func_0805E860
	ldrh r0, [r4]
	strh r0, [r5]
.L08053FCC:
	ldr r3, .L08054014 @ =0x0000228E
	adds r0, r6, r3
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L08054094
	ldr r4, .L08054018 @ =0x00002268
	adds r1, r6, r4
	ldr r5, .L0805401C @ =0x00002294
	adds r0, r6, r5
	ldr r0, [r0]
	ldr r7, .L08054020 @ =0xFFF00000
	adds r0, r0, r7
	ldr r1, [r1]
	cmp r1, r0
	ble .L0805402C
	ldr r0, .L08054024 @ =0x0000227C
	adds r3, r6, r0
	ldr r1, .L08054028 @ =0x00002274
	adds r2, r6, r1
	ldr r0, [r2]
	asrs r0, r0, #4
	ldr r1, [r3]
	subs r1, r1, r0
	str r1, [r3]
	ldr r0, [r2]
	asrs r0, r0, #1
	cmp r1, r0
	bge .L08054046
	b .L08054044
	.align 2, 0
.L0805400C: .4byte 0x0000228A
.L08054010: .4byte 0x00002288
.L08054014: .4byte 0x0000228E
.L08054018: .4byte 0x00002268
.L0805401C: .4byte 0x00002294
.L08054020: .4byte 0xFFF00000
.L08054024: .4byte 0x0000227C
.L08054028: .4byte 0x00002274
.L0805402C:
	ldr r2, .L08054080 @ =0x0000227C
	adds r3, r6, r2
	ldr r4, .L08054084 @ =0x00002274
	adds r0, r6, r4
	ldr r1, [r0]
	asrs r1, r1, #4
	ldr r2, [r3]
	adds r2, r2, r1
	str r2, [r3]
	ldr r0, [r0]
	cmp r2, r0
	ble .L08054046
.L08054044:
	str r0, [r3]
.L08054046:
	ldr r5, .L08054088 @ =0x00002268
	adds r2, r6, r5
	ldr r7, .L08054080 @ =0x0000227C
	adds r1, r6, r7
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #0x10
	subs r0, #0x60
	ldr r1, .L0805408C @ =0x000022C4
	adds r2, r6, r1
	strh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, .L08054090 @ =0x00002270
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	ble .L08054072
	strh r0, [r2]
.L08054072:
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r1, r6, r7
	movs r0, #1
	strb r0, [r1]
	b .L0805409C
	.align 2, 0
.L08054080: .4byte 0x0000227C
.L08054084: .4byte 0x00002274
.L08054088: .4byte 0x00002268
.L0805408C: .4byte 0x000022C4
.L08054090: .4byte 0x00002270
.L08054094:
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
.L0805409C:
	ldr r3, .L080540B8 @ =0x00002292
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x11
	bls .L080540AC
	bl .L08054C4A
.L080540AC:
	lsls r0, r0, #2
	ldr r1, .L080540BC @ =.L080540C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080540B8: .4byte 0x00002292
.L080540BC: .4byte .L080540C0
.L080540C0: @ jump table
	.4byte .L08054108 @ case 0
	.4byte .L080541A8 @ case 1
	.4byte .L0805432C @ case 2
	.4byte .L080543A8 @ case 3
	.4byte .L080543F8 @ case 4
	.4byte .L08054400 @ case 5
	.4byte .L0805445C @ case 6
	.4byte .L08054598 @ case 7
	.4byte .L08054638 @ case 8
	.4byte .L080546B4 @ case 9
	.4byte .L080546D0 @ case 10
	.4byte .L08054774 @ case 11
	.4byte .L080547C4 @ case 12
	.4byte .L080547F8 @ case 13
	.4byte .L08054828 @ case 14
	.4byte .L08054868 @ case 15
	.4byte .L0805489C @ case 16
	.4byte .L08054C1C @ case 17
.L08054108:
	ldr r5, .L08054128 @ =0x00002290
	adds r0, r6, r5
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bls .L0805411C
	bl .L08054C4A
.L0805411C:
	lsls r0, r0, #2
	ldr r1, .L0805412C @ =.L08054130
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08054128: .4byte 0x00002290
.L0805412C: .4byte .L08054130
.L08054130: @ jump table
	.4byte .L08054150 @ case 0
	.4byte .L08054150 @ case 1
	.4byte .L08054150 @ case 2
	.4byte .L08054150 @ case 3
	.4byte .L08054150 @ case 4
	.4byte .L08054160 @ case 5
	.4byte .L08054190 @ case 6
	.4byte .L08054150 @ case 7
.L08054150:
	ldr r7, .L0805415C @ =0x00002292
	adds r1, r6, r7
	movs r0, #1
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L0805415C: .4byte 0x00002292
.L08054160:
	ldr r0, .L0805417C @ =0x00002288
	adds r1, r6, r0
	movs r2, #0
	ldr r0, .L08054180 @ =0x0000033B
	strh r0, [r1]
	ldr r1, .L08054184 @ =0x0000228E
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L08054188 @ =0x00002284
	adds r1, r6, r2
	movs r0, #0x3c
	str r0, [r1]
	ldr r3, .L0805418C @ =0x00002292
	b .L080545CA
	.align 2, 0
.L0805417C: .4byte 0x00002288
.L08054180: .4byte 0x0000033B
.L08054184: .4byte 0x0000228E
.L08054188: .4byte 0x00002284
.L0805418C: .4byte 0x00002292
.L08054190:
	ldr r4, .L080541A0 @ =0x00002284
	adds r1, r6, r4
	movs r0, #0x3c
	str r0, [r1]
	ldr r5, .L080541A4 @ =0x00002292
	adds r1, r6, r5
	b .L080547E6
	.align 2, 0
.L080541A0: .4byte 0x00002284
.L080541A4: .4byte 0x00002292
.L080541A8:
	ldr r7, .L080541F8 @ =0x00002294
	adds r0, r6, r7
	ldr r0, [r0]
	ldr r1, .L080541FC @ =0xFFF00000
	adds r0, r0, r1
	ldr r2, .L08054200 @ =0x00002268
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	bgt .L080541C0
	bl .L08054C4A
.L080541C0:
	ldr r3, .L08054204 @ =0x00002288
	adds r1, r6, r3
	movs r2, #0
	ldr r0, .L08054208 @ =0x00000343
	strh r0, [r1]
	ldr r4, .L0805420C @ =0x0000227C
	adds r0, r6, r4
	str r2, [r0]
	ldr r5, .L08054210 @ =0x0000228E
	adds r1, r6, r5
	movs r0, #3
	strh r0, [r1]
	subs r7, #4
	adds r0, r6, r7
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bls .L080541EC
	bl .L08054C4A
.L080541EC:
	lsls r0, r0, #2
	ldr r1, .L08054214 @ =.L08054218
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080541F8: .4byte 0x00002294
.L080541FC: .4byte 0xFFF00000
.L08054200: .4byte 0x00002268
.L08054204: .4byte 0x00002288
.L08054208: .4byte 0x00000343
.L0805420C: .4byte 0x0000227C
.L08054210: .4byte 0x0000228E
.L08054214: .4byte .L08054218
.L08054218: @ jump table
	.4byte .L08054238 @ case 0
	.4byte .L08054254 @ case 1
	.4byte .L08054264 @ case 2
	.4byte .L080542E8 @ case 3
	.4byte .L0805431C @ case 4
	.4byte .L08054C4A @ case 5
	.4byte .L08054C4A @ case 6
	.4byte .L0805431C @ case 7
.L08054238:
	ldr r0, .L0805424C @ =0x00002284
	adds r1, r6, r0
	movs r0, #0
	str r0, [r1]
	ldr r2, .L08054250 @ =0x00002292
	adds r1, r6, r2
	movs r0, #2
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L0805424C: .4byte 0x00002284
.L08054250: .4byte 0x00002292
.L08054254:
	ldr r3, .L08054260 @ =0x00002284
	adds r1, r6, r3
	movs r0, #0
	str r0, [r1]
	b .L0805430C
	.align 2, 0
.L08054260: .4byte 0x00002284
.L08054264:
	ldr r5, .L0805427C @ =0x00002270
	adds r2, r6, r5
	ldr r1, [r2]
	ldr r0, .L08054280 @ =0x00DBFFFF
	cmp r1, r0
	bgt .L08054290
	ldr r0, .L08054284 @ =0x0013FFFF
	cmp r1, r0
	ble .L0805428C
	ldr r7, .L08054288 @ =0xFFEC0000
	adds r0, r1, r7
	b .L0805428E
	.align 2, 0
.L0805427C: .4byte 0x00002270
.L08054280: .4byte 0x00DBFFFF
.L08054284: .4byte 0x0013FFFF
.L08054288: .4byte 0xFFEC0000
.L0805428C:
	movs r0, #0
.L0805428E:
	str r0, [r2]
.L08054290:
	ldr r1, .L080542AC @ =0x00002270
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r0, .L080542B0 @ =0x0013FFFF
	cmp r1, r0
	bgt .L080542BC
	ldr r3, .L080542B4 @ =0x00002274
	adds r2, r6, r3
	ldr r4, .L080542B8 @ =0x000022A4
	adds r0, r6, r4
	ldr r1, [r0]
	asrs r1, r1, #3
	b .L080542C8
	.align 2, 0
.L080542AC: .4byte 0x00002270
.L080542B0: .4byte 0x0013FFFF
.L080542B4: .4byte 0x00002274
.L080542B8: .4byte 0x000022A4
.L080542BC:
	ldr r5, .L080542DC @ =0x00002274
	adds r2, r6, r5
	ldr r7, .L080542E0 @ =0x000022A4
	adds r0, r6, r7
	ldr r1, [r0]
	asrs r1, r1, #4
.L080542C8:
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, .L080542E4 @ =0x00002292
	adds r1, r6, r0
	movs r0, #0xa
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L080542DC: .4byte 0x00002274
.L080542E0: .4byte 0x000022A4
.L080542E4: .4byte 0x00002292
.L080542E8:
	ldr r1, .L080542FC @ =0x00002270
	adds r2, r6, r1
	ldr r1, [r2]
	ldr r0, .L08054300 @ =0x003BFFFF
	cmp r1, r0
	ble .L08054308
	ldr r3, .L08054304 @ =0xFFE20000
	adds r0, r1, r3
	b .L0805430A
	.align 2, 0
.L080542FC: .4byte 0x00002270
.L08054300: .4byte 0x003BFFFF
.L08054304: .4byte 0xFFE20000
.L08054308:
	movs r0, #0
.L0805430A:
	str r0, [r2]
.L0805430C:
	ldr r4, .L08054318 @ =0x00002292
	adds r1, r6, r4
	movs r0, #5
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L08054318: .4byte 0x00002292
.L0805431C:
	ldr r5, .L08054328 @ =0x00002292
	adds r1, r6, r5
	movs r0, #7
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L08054328: .4byte 0x00002292
.L0805432C:
	ldr r7, .L08054380 @ =0x00002268
	adds r2, r6, r7
	ldr r0, [r2]
	ldr r1, .L08054384 @ =0xFFA00000
	adds r0, r0, r1
	ldr r3, .L08054388 @ =0x00002270
	adds r1, r6, r3
	ldr r1, [r1]
	cmp r0, r1
	blt .L0805439C
	movs r4, #0xc0
	lsls r4, r4, #0xf
	adds r0, r1, r4
	str r0, [r2]
	ldr r5, .L0805438C @ =0x0000227C
	adds r1, r6, r5
	adds r7, #0xc
	adds r0, r6, r7
	ldr r0, [r0]
	asrs r0, r0, #1
	str r0, [r1]
	ldr r0, .L08054390 @ =0x00002284
	adds r1, r6, r0
	movs r0, #0x3c
	str r0, [r1]
	ldr r2, .L08054394 @ =0x0000228E
	adds r1, r6, r2
	movs r0, #0
	strh r0, [r1]
	adds r3, #0x18
	adds r1, r6, r3
	ldr r0, .L08054398 @ =0x0000033F
	strh r0, [r1]
	movs r4, #0x8b
	lsls r4, r4, #6
	adds r1, r6, r4
	movs r0, #2
	strh r0, [r1]
	adds r5, #0x16
	adds r1, r6, r5
	b .L080544BC
	.align 2, 0
.L08054380: .4byte 0x00002268
.L08054384: .4byte 0xFFA00000
.L08054388: .4byte 0x00002270
.L0805438C: .4byte 0x0000227C
.L08054390: .4byte 0x00002284
.L08054394: .4byte 0x0000228E
.L08054398: .4byte 0x0000033F
.L0805439C:
	ldr r7, .L080543A4 @ =0x00002284
	adds r0, r6, r7
	b .L08054744
	.align 2, 0
.L080543A4: .4byte 0x00002284
.L080543A8:
	ldr r0, .L080543E0 @ =0x00002268
	adds r2, r6, r0
	ldr r3, .L080543E4 @ =0x0000227C
	adds r1, r6, r3
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r4, .L080543E8 @ =0x00002284
	adds r1, r6, r4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080543CA
	bl .L08054C4A
.L080543CA:
	ldr r5, .L080543EC @ =0x00002288
	adds r1, r6, r5
	ldr r0, .L080543F0 @ =0x0000034F
	strh r0, [r1]
	ldr r7, .L080543F4 @ =0x00002292
	adds r1, r6, r7
	movs r0, #4
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L080543E0: .4byte 0x00002268
.L080543E4: .4byte 0x0000227C
.L080543E8: .4byte 0x00002284
.L080543EC: .4byte 0x00002288
.L080543F0: .4byte 0x0000034F
.L080543F4: .4byte 0x00002292
.L080543F8:
	movs r0, #1
	str r0, [sp, #0x44]
	bl .L08054C4A
.L08054400:
	ldr r1, .L0805443C @ =0x00002268
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r2, .L08054440 @ =0xFFA00000
	adds r1, r1, r2
	ldr r3, .L08054444 @ =0x00002270
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r4, .L08054448 @ =0xFFF00000
	adds r0, r0, r4
	cmp r1, r0
	blt .L08054450
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa9
	bl func_08008B6C
	movs r5, #0x8a
	lsls r5, r5, #6
	adds r1, r6, r5
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	ldr r7, .L0805444C @ =0x00002292
	adds r1, r6, r7
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L0805443C: .4byte 0x00002268
.L08054440: .4byte 0xFFA00000
.L08054444: .4byte 0x00002270
.L08054448: .4byte 0xFFF00000
.L0805444C: .4byte 0x00002292
.L08054450:
	ldr r1, .L08054458 @ =0x00002284
	adds r0, r6, r1
	b .L08054744
	.align 2, 0
.L08054458: .4byte 0x00002284
.L0805445C:
	ldr r2, .L080544C4 @ =0x0000226C
	adds r3, r6, r2
	movs r5, #0x8a
	lsls r5, r5, #6
	adds r4, r6, r5
	ldr r0, [r3]
	ldr r1, [r4]
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [r4]
	ldr r7, .L080544C8 @ =0xFFFFF000
	adds r2, r0, r7
	str r2, [r4]
	ldr r1, [r3]
	ldr r0, .L080544CC @ =0x004FFFFF
	cmp r1, r0
	ble .L08054520
	ldr r1, .L080544D0 @ =0x00002290
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	bne .L080544EC
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r3]
	movs r2, #0
	str r2, [r4]
	ldr r3, .L080544D4 @ =0x0000227C
	adds r1, r6, r3
	ldr r4, .L080544D8 @ =0x00002274
	adds r0, r6, r4
	ldr r0, [r0]
	asrs r0, r0, #1
	str r0, [r1]
	adds r5, #4
	adds r1, r6, r5
	movs r0, #0x3c
	str r0, [r1]
	ldr r7, .L080544DC @ =0x0000228E
	adds r0, r6, r7
	strh r2, [r0]
	ldr r0, .L080544E0 @ =0x00002288
	adds r1, r6, r0
	ldr r0, .L080544E4 @ =0x0000033F
	strh r0, [r1]
	ldr r2, .L080544E8 @ =0x00002292
	adds r1, r6, r2
.L080544BC:
	movs r0, #3
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080544C4: .4byte 0x0000226C
.L080544C8: .4byte 0xFFFFF000
.L080544CC: .4byte 0x004FFFFF
.L080544D0: .4byte 0x00002290
.L080544D4: .4byte 0x0000227C
.L080544D8: .4byte 0x00002274
.L080544DC: .4byte 0x0000228E
.L080544E0: .4byte 0x00002288
.L080544E4: .4byte 0x0000033F
.L080544E8: .4byte 0x00002292
.L080544EC:
	ldr r3, .L0805450C @ =0x00002288
	adds r1, r6, r3
	movs r2, #0
	ldr r0, .L08054510 @ =0x0000033B
	strh r0, [r1]
	ldr r4, .L08054514 @ =0x0000228E
	adds r0, r6, r4
	strh r2, [r0]
	ldr r5, .L08054518 @ =0x00002284
	adds r1, r6, r5
	movs r0, #0x3c
	str r0, [r1]
	ldr r7, .L0805451C @ =0x00002292
	adds r1, r6, r7
	b .L080547A4
	.align 2, 0
.L0805450C: .4byte 0x00002288
.L08054510: .4byte 0x0000033B
.L08054514: .4byte 0x0000228E
.L08054518: .4byte 0x00002284
.L0805451C: .4byte 0x00002292
.L08054520:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	ble .L0805453C
	ldr r0, .L08054534 @ =0x00002288
	adds r1, r6, r0
	ldr r0, .L08054538 @ =0x00000367
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054534: .4byte 0x00002288
.L08054538: .4byte 0x00000367
.L0805453C:
	ldr r0, .L0805454C @ =0xFFFF8000
	cmp r2, r0
	bge .L08054558
	ldr r2, .L08054550 @ =0x00002288
	adds r1, r6, r2
	ldr r0, .L08054554 @ =0x0000036F
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L0805454C: .4byte 0xFFFF8000
.L08054550: .4byte 0x00002288
.L08054554: .4byte 0x0000036F
.L08054558:
	ldr r3, .L08054584 @ =0x0000228E
	adds r2, r6, r3
	ldrh r1, [r2]
	ldr r0, .L08054588 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r4, .L0805458C @ =0x00002288
	adds r1, r6, r4
	ldr r0, .L08054590 @ =0x0000036B
	strh r0, [r1]
	ldr r5, .L08054594 @ =0x00002290
	adds r0, r6, r5
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r1, #2
	beq .L0805457A
	b .L08054C4A
.L0805457A:
	movs r2, #0x8b
	lsls r2, r2, #6
	adds r0, r6, r2
	strh r1, [r0]
	b .L08054C4A
	.align 2, 0
.L08054584: .4byte 0x0000228E
.L08054588: .4byte 0x0000FFFD
.L0805458C: .4byte 0x00002288
.L08054590: .4byte 0x0000036B
.L08054594: .4byte 0x00002290
.L08054598:
	ldr r3, .L080545D4 @ =0x00002268
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r4, .L080545D8 @ =0xFFA00000
	adds r0, r0, r4
	ldr r1, .L080545DC @ =0x00C7FFFF
	cmp r0, r1
	ble .L0805462C
	ldr r5, .L080545E0 @ =0x0000227C
	adds r0, r6, r5
	ldr r2, [r0]
	cmp r2, #0
	bne .L080545F4
	ldr r7, .L080545E4 @ =0x00002288
	adds r1, r6, r7
	ldr r0, .L080545E8 @ =0x0000033B
	strh r0, [r1]
	ldr r1, .L080545EC @ =0x0000228E
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L080545F0 @ =0x00002284
	adds r1, r6, r2
	movs r0, #0x3c
	str r0, [r1]
	adds r3, #0x2a
.L080545CA:
	adds r1, r6, r3
	movs r0, #8
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080545D4: .4byte 0x00002268
.L080545D8: .4byte 0xFFA00000
.L080545DC: .4byte 0x00C7FFFF
.L080545E0: .4byte 0x0000227C
.L080545E4: .4byte 0x00002288
.L080545E8: .4byte 0x0000033B
.L080545EC: .4byte 0x0000228E
.L080545F0: .4byte 0x00002284
.L080545F4:
	ldr r4, .L0805461C @ =0x00002288
	adds r1, r6, r4
	ldr r0, .L08054620 @ =0x0000033F
	strh r0, [r1]
	ldr r5, .L08054624 @ =0x00002274
	adds r2, r6, r5
	ldr r7, .L08054628 @ =0x00002278
	adds r0, r6, r7
	ldr r1, [r0]
	asrs r1, r1, #6
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	blt .L08054614
	b .L08054C4A
.L08054614:
	movs r0, #0
	str r0, [r2]
	b .L08054C4A
	.align 2, 0
.L0805461C: .4byte 0x00002288
.L08054620: .4byte 0x0000033F
.L08054624: .4byte 0x00002274
.L08054628: .4byte 0x00002278
.L0805462C:
	ldr r1, .L08054634 @ =0x00002284
	adds r0, r6, r1
	b .L08054744
	.align 2, 0
.L08054634: .4byte 0x00002284
.L08054638:
	ldr r2, .L0805466C @ =0x00002284
	adds r1, r6, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054648
	b .L08054C4A
.L08054648:
	ldr r3, .L08054670 @ =0x00002290
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #8
	beq .L0805467C
	movs r0, #0x3c
	str r0, [r1]
	ldr r5, .L08054674 @ =0x00002288
	adds r1, r6, r5
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r7, .L08054678 @ =0x00002292
	adds r1, r6, r7
	movs r0, #9
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L0805466C: .4byte 0x00002284
.L08054670: .4byte 0x00002290
.L08054674: .4byte 0x00002288
.L08054678: .4byte 0x00002292
.L0805467C:
	movs r0, #0x1e
	str r0, [r1]
	ldr r0, .L080546A8 @ =0x00002288
	adds r1, r6, r0
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, .L080546AC @ =0x00002292
	adds r1, r6, r2
	movs r0, #0xe
	strh r0, [r1]
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #2
	bl func_0805E860
	ldr r4, .L080546B0 @ =0x0000042C
	adds r1, r6, r4
	movs r0, #1
	strb r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080546A8: .4byte 0x00002288
.L080546AC: .4byte 0x00002292
.L080546B0: .4byte 0x0000042C
.L080546B4:
	ldr r5, .L080546CC @ =0x00002284
	adds r1, r6, r5
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080546C4
	b .L08054C4A
.L080546C4:
	movs r0, #0
	str r0, [r1]
	b .L08054C46
	.align 2, 0
.L080546CC: .4byte 0x00002284
.L080546D0:
	ldr r1, .L0805471C @ =0x00002268
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, .L08054720 @ =0xFFA00000
	adds r0, r0, r2
	ldr r3, .L08054724 @ =0x00002270
	adds r2, r6, r3
	ldr r1, [r2]
	cmp r0, r1
	blt .L08054740
	ldr r4, .L08054728 @ =0x0000227C
	adds r1, r6, r4
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
	ldr r5, .L0805472C @ =0x00002284
	adds r1, r6, r5
	movs r0, #0x1e
	str r0, [r1]
	movs r7, #2
	ldrsh r0, [r2, r7]
	cmp r0, #0x13
	bgt .L08054702
	movs r0, #0xf
	str r0, [r1]
.L08054702:
	ldr r0, .L08054730 @ =0x0000228E
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, .L08054734 @ =0x00002288
	adds r1, r6, r2
	ldr r0, .L08054738 @ =0x0000033F
	strh r0, [r1]
	ldr r3, .L0805473C @ =0x00002292
	adds r1, r6, r3
	movs r0, #0xb
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L0805471C: .4byte 0x00002268
.L08054720: .4byte 0xFFA00000
.L08054724: .4byte 0x00002270
.L08054728: .4byte 0x0000227C
.L0805472C: .4byte 0x00002284
.L08054730: .4byte 0x0000228E
.L08054734: .4byte 0x00002288
.L08054738: .4byte 0x0000033F
.L0805473C: .4byte 0x00002292
.L08054740:
	ldr r4, .L08054770 @ =0x00002284
	adds r0, r6, r4
.L08054744:
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	beq .L08054754
	b .L08054C4A
.L08054754:
	bl rand
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L08054762
	b .L08054C4A
.L08054762:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa9
	bl func_08008B6C
	b .L08054C4A
	.align 2, 0
.L08054770: .4byte 0x00002284
.L08054774:
	ldr r5, .L080547AC @ =0x00002268
	adds r2, r6, r5
	ldr r7, .L080547B0 @ =0x0000227C
	adds r1, r6, r7
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, .L080547B4 @ =0x00002284
	adds r1, r6, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054794
	b .L08054C4A
.L08054794:
	movs r0, #0x3c
	str r0, [r1]
	ldr r2, .L080547B8 @ =0x00002288
	adds r1, r6, r2
	ldr r0, .L080547BC @ =0x00000347
	strh r0, [r1]
	ldr r3, .L080547C0 @ =0x00002292
	adds r1, r6, r3
.L080547A4:
	movs r0, #0xc
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080547AC: .4byte 0x00002268
.L080547B0: .4byte 0x0000227C
.L080547B4: .4byte 0x00002284
.L080547B8: .4byte 0x00002288
.L080547BC: .4byte 0x00000347
.L080547C0: .4byte 0x00002292
.L080547C4:
	ldr r4, .L080547EC @ =0x00002284
	adds r1, r6, r4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080547D4
	b .L08054C4A
.L080547D4:
	movs r0, #0x3c
	str r0, [r1]
	ldr r5, .L080547F0 @ =0x00002288
	adds r1, r6, r5
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r7, .L080547F4 @ =0x00002292
	adds r1, r6, r7
.L080547E6:
	movs r0, #0xd
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080547EC: .4byte 0x00002284
.L080547F0: .4byte 0x00002288
.L080547F4: .4byte 0x00002292
.L080547F8:
	ldr r0, .L08054824 @ =0x00002284
	adds r1, r6, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054808
	b .L08054C4A
.L08054808:
	movs r0, #0
	str r0, [r1]
	movs r1, #0x8b
	lsls r1, r1, #6
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq .L0805481C
	b .L08054C4A
.L0805481C:
	movs r3, #1
	str r3, [sp, #0x44]
	b .L08054C4A
	.align 2, 0
.L08054824: .4byte 0x00002284
.L08054828:
	ldr r4, .L08054858 @ =0x00002284
	adds r2, r6, r4
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	cmp r0, #0
	blt .L08054838
	b .L08054C4A
.L08054838:
	ldr r5, .L0805485C @ =0x0000042C
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	str r0, [r2]
	ldr r7, .L08054860 @ =0x00002288
	adds r1, r6, r7
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, .L08054864 @ =0x00002292
	adds r1, r6, r0
	movs r0, #0xf
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054858: .4byte 0x00002284
.L0805485C: .4byte 0x0000042C
.L08054860: .4byte 0x00002288
.L08054864: .4byte 0x00002292
.L08054868:
	ldr r2, .L08054890 @ =0x00002284
	adds r1, r6, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054878
	b .L08054C4A
.L08054878:
	movs r0, #0x3c
	str r0, [r1]
	ldr r3, .L08054894 @ =0x00002288
	adds r1, r6, r3
	movs r0, #0xd1
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r4, .L08054898 @ =0x00002292
	adds r1, r6, r4
	movs r0, #0x10
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054890: .4byte 0x00002284
.L08054894: .4byte 0x00002288
.L08054898: .4byte 0x00002292
.L0805489C:
	ldr r5, .L080548F4 @ =0x00002284
	adds r1, r6, r5
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080548AC
	b .L08054C4A
.L080548AC:
	bl rand
	asrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L080548BC
	b .L08054BDC
.L080548BC:
	bl rand
	asrs r0, r0, #4
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	movs r4, #7
	movs r2, #0
	ldr r0, .L080548F8 @ =gUnk_080FA372
	add r7, sp, #0x30
	ldr r3, .L080548FC @ =0x00000434
	adds r3, r3, r6
	mov sb, r3
	add r5, sp, #0x10
	mov r8, r5
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0x4c]
	mov r5, sp
	adds r5, #8
	str r5, [sp, #0x48]
	ldrb r0, [r0]
	cmp r1, r0
	bge .L08054900
	movs r4, #0
	b .L08054918
	.align 2, 0
.L080548F4: .4byte 0x00002284
.L080548F8: .4byte gUnk_080FA372
.L080548FC: .4byte 0x00000434
.L08054900:
	ldr r3, .L080549C8 @ =gUnk_080FA372
	adds r0, r2, r3
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r2, #1
	cmp r2, #7
	bgt .L08054918
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge .L08054900
	adds r4, r2, #0
.L08054918:
	ldr r1, .L080549CC @ =gUnk_080FA37C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, .L080549D0 @ =0x000023A4
	adds r0, r6, r1
	strh r4, [r0]
	ldr r0, [r6, #8]
	ldr r2, .L080549D4 @ =0x00001C38
	adds r0, r0, r2
	adds r1, r4, #0
	movs r2, #1
	bl AddAmountOfArticle__8RucksackUiUi
	movs r3, #0x86
	lsls r3, r3, #3
	adds r5, r6, r3
	adds r0, r7, #0
	adds r1, r4, #0
	bl __7ArticleUi
	adds r0, r7, #0
	bl GetIconId__C7Article
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	movs r7, #0x9f
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	movs r3, #0
	cmp r0, #0
	beq .L08054990
	mov r0, r8
	ldrh r3, [r0, #4]
.L08054990:
	str r4, [sp, #0x50]
	lsls r2, r2, #5
	ldr r1, .L080549D8 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x20
	adds r1, r5, #0
	bl func_08008F0C
	ldr r2, [sp, #0x4c]
	mov sl, r2
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080549DC
	cmp r1, #0
	beq .L080549BC
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080549BC:
	ldr r7, [sp, #0x50]
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08054AA6
	.align 2, 0
.L080549C8: .4byte gUnk_080FA372
.L080549CC: .4byte gUnk_080FA37C
.L080549D0: .4byte 0x000023A4
.L080549D4: .4byte 0x00001C38
.L080549D8: .4byte 0x05000200
.L080549DC:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L080549F8
	adds r0, r1, #0
.L080549F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08054A16
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08054A1A
	mov r0, sb
	bl func_080D3BC0
	b .L08054A1A
.L08054A16:
	movs r0, #0
	mov sb, r0
.L08054A1A:
	adds r5, r0, #0
	str r5, [sp, #0x54]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08054A40
.L08054A28:
	cmp r3, #0
	beq .L08054A38
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054A38:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08054A28
.L08054A40:
	adds r5, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L08054A5C
	cmp r5, #0
	beq .L08054A58
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08054A58:
	adds r5, #0x10
	b .L08054A7E
.L08054A5C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08054A7C
.L08054A64:
	cmp r2, #0
	beq .L08054A74
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054A74:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08054A64
.L08054A7C:
	adds r5, r2, #0
.L08054A7E:
	ldr r7, [sp, #0x50]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08054A90
.L08054A8A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08054A8A
.L08054A90:
	cmp r0, #0
	beq .L08054A98
	bl free
.L08054A98:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x50]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08054AA6:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #8]
	movs r3, #0x9e
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #8]
	movs r3, #0
	cmp r0, #0
	beq .L08054ACA
	ldr r7, [sp, #0x48]
	ldrh r3, [r7, #4]
.L08054ACA:
	str r4, [sp, #0x50]
	lsls r2, r2, #5
	ldr r0, .L08054B00 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x20
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [sp, #0x4c]
	mov sb, r1
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08054B04
	cmp r1, #0
	beq .L08054AF6
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08054AF6:
	ldr r5, [sp, #0x50]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08054BCC
	.align 2, 0
.L08054B00: .4byte 0x06010000
.L08054B04:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r7, [sp, #0x50]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L08054B1E
	adds r0, r1, #0
.L08054B1E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08054B3C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08054B40
	mov r0, sl
	bl func_080D3BC0
	b .L08054B40
.L08054B3C:
	movs r0, #0
	mov sl, r0
.L08054B40:
	adds r5, r0, #0
	str r5, [sp, #0x54]
	ldr r0, [sp, #0x50]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08054B66
.L08054B4E:
	cmp r3, #0
	beq .L08054B5E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054B5E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08054B4E
.L08054B66:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L08054B82
	cmp r5, #0
	beq .L08054B7E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08054B7E:
	adds r5, #0x10
	b .L08054BA4
.L08054B82:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08054BA2
.L08054B8A:
	cmp r2, #0
	beq .L08054B9A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054B9A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08054B8A
.L08054BA2:
	adds r5, r2, #0
.L08054BA4:
	ldr r7, [sp, #0x50]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08054BB6
.L08054BB0:
	adds r1, #0x10
	cmp r1, r2
	bne .L08054BB0
.L08054BB6:
	cmp r0, #0
	beq .L08054BBE
	bl free
.L08054BBE:
	ldr r0, [sp, #0x54]
	add r0, sl
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x50]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08054BCC:
	ldr r3, .L08054BD8 @ =0x00000464
	adds r1, r6, r3
	movs r0, #1
	strb r0, [r1]
	b .L08054BE4
	.align 2, 0
.L08054BD8: .4byte 0x00000464
.L08054BDC:
	ldr r4, .L08054C08 @ =0x00002290
	adds r1, r6, r4
	movs r0, #9
	strh r0, [r1]
.L08054BE4:
	ldr r5, .L08054C0C @ =0x0000228C
	adds r1, r6, r5
	movs r0, #0
	strh r0, [r1]
	ldr r7, .L08054C10 @ =0x00002284
	adds r1, r6, r7
	movs r0, #0x1e
	str r0, [r1]
	ldr r0, .L08054C14 @ =0x00002288
	adds r1, r6, r0
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, .L08054C18 @ =0x00002292
	adds r1, r6, r2
	movs r0, #0x11
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054C08: .4byte 0x00002290
.L08054C0C: .4byte 0x0000228C
.L08054C10: .4byte 0x00002284
.L08054C14: .4byte 0x00002288
.L08054C18: .4byte 0x00002292
.L08054C1C:
	ldr r3, .L08054D1C @ =0x00002284
	adds r2, r6, r3
	ldr r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08054C34
	ldr r4, .L08054D20 @ =0x0000228C
	adds r1, r6, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
.L08054C34:
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	cmp r0, #0
	bge .L08054C4A
	ldr r5, .L08054D24 @ =0x00002292
	adds r1, r6, r5
	movs r0, #4
	strh r0, [r1]
.L08054C46:
	movs r7, #1
	str r7, [sp, #0x44]
.L08054C4A:
	ldr r1, .L08054D28 @ =0x00002268
	adds r0, r6, r1
	movs r3, #2
	ldrsh r2, [r0, r3]
	ldr r4, .L08054D2C @ =0x00002330
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, r2, r0
	cmp r0, #0x7f
	ble .L08054C64
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
.L08054C64:
	movs r5, #0x8c
	lsls r5, r5, #2
	adds r4, r6, r5
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r6, r7
	bl func_0805E8F0
	str r0, [r4]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r6, r1
	bl func_0805E8F0
	str r0, [r4]
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08054CA4
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r4, r6, r3
	adds r5, #0xe8
	adds r0, r6, r5
	bl func_0805E8F0
	str r0, [r4]
.L08054CA4:
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08054CC2
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	bl func_0805E8F0
	str r0, [r4]
.L08054CC2:
	movs r2, #0xef
	lsls r2, r2, #2
	adds r5, r6, r2
	ldrb r0, [r5]
	cmp r0, #1
	bne .L08054CEC
	movs r3, #0xee
	lsls r3, r3, #2
	adds r4, r6, r3
	movs r7, #0xe2
	lsls r7, r7, #2
	adds r0, r6, r7
	bl func_0805E8F0
	str r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L08054CEC
	movs r0, #0
	strb r0, [r5]
.L08054CEC:
	ldr r1, .L08054D30 @ =0x0000042C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08054D08
	movs r2, #0x85
	lsls r2, r2, #3
	adds r4, r6, r2
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r6, r3
	bl func_0805E8F0
	str r0, [r4]
.L08054D08:
	ldr r0, [sp, #0x44]
.L08054D0A:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08054D1C: .4byte 0x00002284
.L08054D20: .4byte 0x0000228C
.L08054D24: .4byte 0x00002292
.L08054D28: .4byte 0x00002268
.L08054D2C: .4byte 0x00002330
.L08054D30: .4byte 0x0000042C

	thumb_func_start func_08054D34
func_08054D34: @ 0x08054D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, .L08054D64 @ =0x00002324
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08054DB0
	ldr r2, .L08054D68 @ =0x00002266
	adds r1, r6, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq .L08054D6C
	subs r0, #1
	movs r1, #0x32
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b .L08054D6E
	.align 2, 0
.L08054D64: .4byte 0x00002324
.L08054D68: .4byte 0x00002266
.L08054D6C:
	movs r0, #0
.L08054D6E:
	adds r7, r0, #0
	ldr r0, .L08054DA8 @ =0x00002326
	adds r5, r6, r0
	ldrb r0, [r5]
	movs r3, #5
	cmp r0, #5
	bhi .L08054D7E
	adds r3, r0, #0
.L08054D7E:
	ldr r2, .L08054DAC @ =gUnk_080FA246
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r3, r0
	adds r0, r0, r2
	ldrb r4, [r0]
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble .L08054DB0
	movs r0, #5
	strb r0, [r5]
	movs r0, #6
	b .L08054F34
	.align 2, 0
.L08054DA8: .4byte 0x00002326
.L08054DAC: .4byte gUnk_080FA246
.L08054DB0:
	ldr r2, .L08054DC0 @ =0x000022D8
	adds r1, r6, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x8f
	bne .L08054DC4
	movs r0, #7
	b .L08054F34
	.align 2, 0
.L08054DC0: .4byte 0x000022D8
.L08054DC4:
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldr r1, .L08054DD8 @ =0x000022DC
	adds r0, r6, r1
	ldrb r1, [r0]
	cmp r2, r1
	ble .L08054DDC
	movs r4, #0x64
	b .L08054DF4
	.align 2, 0
.L08054DD8: .4byte 0x000022DC
.L08054DDC:
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	ble .L08054DE8
	movs r4, #0x46
	b .L08054DF4
.L08054DE8:
	adds r0, r1, #0
	subs r0, #0x10
	movs r4, #0
	cmp r2, r0
	ble .L08054DF4
	movs r4, #0x1e
.L08054DF4:
	ldr r2, .L08054E28 @ =0x000022D8
	adds r0, r6, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	subs r0, #0x30
	cmp r0, #0
	bge .L08054E06
	adds r0, #7
.L08054E06:
	lsls r0, r0, #0xd
	lsrs r7, r0, #0x10
	ldr r0, .L08054E2C @ =0x00002264
	adds r1, r6, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq .L08054E30
	subs r0, #1
	movs r1, #0x19
	bl __divsi3
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b .L08054E32
	.align 2, 0
.L08054E28: .4byte 0x000022D8
.L08054E2C: .4byte 0x00002264
.L08054E30:
	movs r5, #0
.L08054E32:
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble .L08054EE8
	ldr r3, .L08054E64 @ =gUnk_080FA2E8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08054E6E
	cmp r0, #2
	bgt .L08054E68
	cmp r0, #1
	beq .L08054E86
	b .L08054E8A
	.align 2, 0
.L08054E64: .4byte gUnk_080FA2E8
.L08054E68:
	cmp r0, #3
	beq .L08054E74
	b .L08054E8A
.L08054E6E:
	movs r1, #2
	mov r8, r1
	b .L08054E8A
.L08054E74:
	bl rand
	movs r1, #0x64
	bl __modsi3
	movs r2, #2
	mov r8, r2
	cmp r0, #0x45
	bgt .L08054E8A
.L08054E86:
	movs r0, #1
	mov r8, r0
.L08054E8A:
	ldr r1, .L08054ED4 @ =0x00002324
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08054F32
	ldr r0, [r6, #8]
	ldr r2, .L08054ED8 @ =0x00001C38
	adds r0, r0, r2
	bl GetFirstFreeItemSlot__C8Rucksack
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08054F32
	ldr r1, .L08054EDC @ =0x00002270
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r0, .L08054EE0 @ =0x0000012B
	cmp r1, r0
	ble .L08054F32
	ldr r2, .L08054EE4 @ =0x00002264
	adds r0, r6, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	ble .L08054F32
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r0, #4
	bgt .L08054F32
	movs r2, #8
	mov r8, r2
	b .L08054F32
	.align 2, 0
.L08054ED4: .4byte 0x00002324
.L08054ED8: .4byte 0x00001C38
.L08054EDC: .4byte 0x00002270
.L08054EE0: .4byte 0x0000012B
.L08054EE4: .4byte 0x00002264
.L08054EE8:
	ldr r3, .L08054F0C @ =gUnk_080FA264
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08054F16
	cmp r0, #2
	bgt .L08054F10
	cmp r0, #1
	beq .L08054F2E
	b .L08054F32
	.align 2, 0
.L08054F0C: .4byte gUnk_080FA264
.L08054F10:
	cmp r0, #3
	beq .L08054F1C
	b .L08054F32
.L08054F16:
	movs r1, #5
	mov r8, r1
	b .L08054F32
.L08054F1C:
	bl rand
	movs r1, #0x64
	bl __modsi3
	movs r2, #4
	mov r8, r2
	cmp r0, #0x45
	bgt .L08054F32
.L08054F2E:
	movs r0, #3
	mov r8, r0
.L08054F32:
	mov r0, r8
.L08054F34:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08054F40
func_08054F40: @ 0x08054F40
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, .L08055074 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L08055078 @ =0x0600E000
	mov sb, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805507C @ =0x0600E800
	mov r8, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L08055080 @ =0x0600F000
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L08055084 @ =gUnk_08738AD8
	ldr r2, .L08055088 @ =0x00001D5A
	adds r4, r6, r2
	adds r1, r4, #0
	bl Unpack
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r4, #0
	mov r1, sb
	bl func_08008E64
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xc0
	bl func_08008E64
	ldr r0, .L0805508C @ =gUnk_08738CC8
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L08055090 @ =gUnk_08738CF0
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L08055094 @ =gUnk_08738D1C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L08055098 @ =gUnk_087399C4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	ldr r0, .L0805509C @ =gUnk_08739A64
	movs r3, #0xab
	lsls r3, r3, #3
	adds r1, r6, r3
	bl Unpack
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080550A0 @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080550A4 @ =0x00001D42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080550A8 @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08055074: .4byte 0x06007FE0
.L08055078: .4byte 0x0600E000
.L0805507C: .4byte 0x0600E800
.L08055080: .4byte 0x0600F000
.L08055084: .4byte gUnk_08738AD8
.L08055088: .4byte 0x00001D5A
.L0805508C: .4byte gUnk_08738CC8
.L08055090: .4byte gUnk_08738CF0
.L08055094: .4byte gUnk_08738D1C
.L08055098: .4byte gUnk_087399C4
.L0805509C: .4byte gUnk_08739A64
.L080550A0: .4byte 0x00001C43
.L080550A4: .4byte 0x00001D42
.L080550A8: .4byte 0x00001E41

	thumb_func_start func_080550AC
func_080550AC: @ 0x080550AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r4, #0x11
	cmp r1, #0
	ble .L080550D6
	ldr r3, .L08055160 @ =0x00003046
	ldr r2, .L08055164 @ =0x00003047
	ldr r6, .L08055168 @ =0x0000219E
	adds r0, r5, r6
.L080550C8:
	strh r3, [r0]
	strh r2, [r0, #2]
	subs r1, #0x19
	subs r0, #0x40
	subs r4, #1
	cmp r1, #0
	bgt .L080550C8
.L080550D6:
	lsls r0, r4, #3
	adds r0, #8
	ldr r7, .L0805516C @ =0x000022DC
	adds r1, r5, r7
	strb r0, [r1]
	lsls r1, r4, #6
	ldr r6, .L08055170 @ =0x00001D5E
	adds r3, r5, r6
	adds r2, r3, r1
	ldr r0, .L08055174 @ =0x0000304A
	strh r0, [r2]
	movs r0, #0xeb
	lsls r0, r0, #5
	adds r2, r5, r0
	adds r1, r2, r1
	ldr r0, .L08055178 @ =0x0000304B
	strh r0, [r1]
	subs r4, #1
	lsls r1, r4, #6
	adds r3, r3, r1
	subs r0, #3
	strh r0, [r3]
	adds r2, r2, r1
	adds r0, #1
	strh r0, [r2]
	subs r4, #1
	cmp r4, #5
	ble .L08055124
	ldr r2, .L0805517C @ =0x00003044
	ldr r1, .L08055180 @ =0x00003045
	lsls r0, r4, #6
	adds r0, r0, r6
	adds r0, r0, r5
.L08055118:
	strh r2, [r0]
	strh r1, [r0, #2]
	subs r0, #0x40
	subs r4, #1
	cmp r4, #5
	bgt .L08055118
.L08055124:
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r2, .L08055184 @ =0x00001D5A
	adds r1, r5, r2
	mov r0, sp
	ldr r2, .L08055188 @ =0x0600F000
	movs r3, #0xa0
	lsls r3, r3, #3
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0805518C
	cmp r1, #0
	beq .L08055156
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08055156:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08055252
	.align 2, 0
.L08055160: .4byte 0x00003046
.L08055164: .4byte 0x00003047
.L08055168: .4byte 0x0000219E
.L0805516C: .4byte 0x000022DC
.L08055170: .4byte 0x00001D5E
.L08055174: .4byte 0x0000304A
.L08055178: .4byte 0x0000304B
.L0805517C: .4byte 0x00003044
.L08055180: .4byte 0x00003045
.L08055184: .4byte 0x00001D5A
.L08055188: .4byte 0x0600F000
.L0805518C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r6]
	mov r7, sl
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080551A6
	adds r0, r2, #0
.L080551A6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080551C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080551C2
	mov r0, r8
	bl func_080D3BC0
.L080551C2:
	ldr r1, [r6]
	b .L080551CA
.L080551C6:
	movs r0, #0
	mov r8, r0
.L080551CA:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080551EE
.L080551D6:
	cmp r3, #0
	beq .L080551E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080551E6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080551D6
.L080551EE:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L0805520A
	cmp r4, #0
	beq .L08055206
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08055206:
	adds r4, #0x10
	b .L0805522C
.L0805520A:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0805522A
.L08055212:
	cmp r2, #0
	beq .L08055222
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055222:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055212
.L0805522A:
	adds r4, r2, #0
.L0805522C:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0805523C
.L08055236:
	adds r0, #0x10
	cmp r0, r2
	bne .L08055236
.L0805523C:
	cmp r1, #0
	beq .L08055246
	adds r0, r1, #0
	bl free
.L08055246:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r7, [sp, #0x18]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L08055252:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08055264
func_08055264: @ 0x08055264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	strh r0, [r1, #4]
	add r1, sp, #8
	str r0, [sp, #8]
	strh r0, [r1, #4]
	add r5, sp, #0x10
	str r0, [sp, #0x10]
	strh r0, [r5, #4]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r0, r7, r4
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
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r3, [sp, #0x10]
	mov r8, r3
	movs r6, #0x8e
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805568C @ =0x05000200
	mov sb, r1
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	movs r2, #0
	mov sl, r4
	cmp r0, #0
	beq .L080552F0
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L080552F0:
	mov r0, r8
	bl func_08008E64
	movs r4, #0x9c
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r5, #0x9d
	lsls r5, r5, #2
	adds r4, r7, r5
	lsls r2, r2, #2
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	ldr r5, [sp, #0x10]
	movs r6, #0x90
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	str r4, [sp, #0x60]
	cmp r0, #0
	beq .L08055354
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L08055354:
	adds r0, r5, #0
	bl func_08008E64
	movs r6, #0
	movs r5, #0
	movs r4, #0xab
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0x48]
	adds r0, r7, #0
	adds r0, #0x80
	str r0, [sp, #0x54]
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r1, r7, r1
	str r1, [sp, #0x4c]
	movs r2, #0xc7
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #0x50]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r3, r7, r3
	str r3, [sp, #0x58]
	movs r4, #0x9c
	lsls r4, r4, #2
	adds r4, r4, r7
	mov r8, r4
	mov sb, sl
.L0805538E:
	mov r0, r8
	adds r1, r5, #0
	bl func_0805E860
	mov r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x60]
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
	lsls r1, r5, #2
	ldr r4, .L08055690 @ =0x00002334
	adds r0, r7, r4
	adds r0, r0, r1
	str r6, [r0]
	ldr r4, [sp, #8]
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r2, .L08055694 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L080553F6
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L080553F6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L08055408
	mov r4, sp
	ldrh r1, [r4, #0xc]
.L08055408:
	lsrs r0, r1, #5
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #0x1a
	ble .L0805538E
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x48]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r5, #0x92
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L0805568C @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805546A
	mov r0, sp
	ldrh r2, [r0, #0x14]
.L0805546A:
	adds r0, r4, #0
	bl func_08008E64
	movs r6, #0
	movs r5, #0
	mov sb, sl
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x40]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r2, r2, r7
	mov r8, r2
.L08055484:
	mov r0, sb
	ldr r1, [sp, #0x54]
	adds r2, r5, #0
	bl func_0805E790
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #8]
	mov r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r2, .L08055694 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L080554BC
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L080554BC:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L080554CE
	ldr r4, [sp, #0x40]
	ldrh r1, [r4, #4]
.L080554CE:
	lsrs r0, r1, #5
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #2
	ble .L08055484
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r1, .L08055698 @ =0x0000091A
	adds r0, r6, #0
	bl func_0805E860
	ldr r1, [r6]
	ldr r3, [r1]
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x4c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sl
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x44]
	ldr r5, [sp, #0x10]
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805568C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L08055540
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #4]
.L08055540:
	adds r0, r5, #0
	bl func_08008E64
	add r5, sp, #8
	mov sb, r5
	ldr r0, [sp, #8]
	mov r8, r0
	movs r1, #0x95
	lsls r1, r1, #3
	adds r5, r7, r1
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L08055694 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805556E
	mov r3, sb
	ldrh r2, [r3, #4]
.L0805556E:
	mov r0, r8
	bl func_08008E64
	ldr r1, .L0805569C @ =0x0000091B
	adds r0, r6, #0
	bl func_0805E860
	ldr r1, [r6]
	ldr r3, [r1]
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x4c]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r6, [sp, #8]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r5, .L080556A0 @ =0x06010040
	adds r1, r0, r5
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L080555CA
	mov r0, sb
	ldrh r2, [r0, #4]
.L080555CA:
	adds r0, r6, #0
	bl func_08008E64
	movs r1, #0xc6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x50]
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
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	ldr r5, [sp, #0x10]
	movs r6, #0x98
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805568C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L08055628
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #4]
.L08055628:
	adds r0, r5, #0
	bl func_08008E64
	movs r5, #0xd3
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r6, #0
	strb r6, [r0]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x58]
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
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r4, [sp, #0x10]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805568C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	b .L080556A4
	.align 2, 0
.L0805568C: .4byte 0x05000200
.L08055690: .4byte 0x00002334
.L08055694: .4byte 0x06010000
.L08055698: .4byte 0x0000091A
.L0805569C: .4byte 0x0000091B
.L080556A0: .4byte 0x06010040
.L080556A4:
	beq .L080556AA
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #4]
.L080556AA:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, .L080557A4 @ =0x00002324
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq .L080556BC
	b .L080557E8
.L080556BC:
	movs r5, #0
	mov sb, r5
	movs r6, #0xf1
	lsls r6, r6, #2
	adds r6, r7, r6
	str r6, [sp, #0x5c]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r5, r7, r1
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r6, r7, r2
.L080556DC:
	ldr r1, [r5, #0xc]
	adds r0, r6, #0
	bl func_080073E0
	adds r0, r6, #0
	bl func_0800736C
	str r0, [r5, #0xc]
	ldr r1, .L080557A8 @ =gUnk_080FA36C
	mov r3, sb
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r0, r8
	bl func_0805E860
	mov r4, r8
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x5c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	ldr r1, [r5, #0xc]
	adds r0, r6, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L080557AC @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805574C
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805574C:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L080557B0 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805576E
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805576E:
	adds r0, r4, #0
	bl func_08008E64
	adds r5, #0x10
	adds r6, #0x10
	movs r4, #1
	add sb, r4
	mov r0, sb
	cmp r0, #2
	ble .L080556DC
	movs r6, #0x28
	movs r5, #0
	mov r8, r4
	ldr r1, .L080557B4 @ =0x000022E0
	adds r4, r7, r1
.L0805578C:
	adds r0, r5, #0
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq .L080557B8
	bl rand
	asrs r0, r0, #8
	mov r3, r8
	ands r0, r3
	adds r0, #1
	b .L080557C4
	.align 2, 0
.L080557A4: .4byte 0x00002324
.L080557A8: .4byte gUnk_080FA36C
.L080557AC: .4byte 0x05000200
.L080557B0: .4byte 0x06010000
.L080557B4: .4byte 0x000022E0
.L080557B8:
	bl rand
	asrs r0, r0, #8
	movs r1, #3
	ands r0, r1
	adds r0, #4
.L080557C4:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r6, [r4]
	adds r0, r5, #0
	movs r1, #3
	bl __modsi3
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #1
	cmp r5, #0xf
	ble .L0805578C
	b .L080558A2
.L080557E8:
	movs r5, #0x9d
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	subs r5, #0xec
	adds r0, r7, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, [sp, #0x10]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r4, .L080558B4 @ =0x05000200
	adds r1, r0, r4
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L08055854
	mov r0, sp
	ldrh r2, [r0, #0x14]
.L08055854:
	adds r0, r5, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L080558B8 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805587A
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805587A:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, .L080558BC @ =0x0000042C
	adds r0, r7, r4
	strb r6, [r0]
	movs r5, #0x9f
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r1, .L080558C0 @ =0x00000464
	adds r0, r7, r1
	strb r6, [r0]
.L080558A2:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080558B4: .4byte 0x05000200
.L080558B8: .4byte 0x06010000
.L080558BC: .4byte 0x0000042C
.L080558C0: .4byte 0x00000464

	thumb_func_start func_080558C4
func_080558C4: @ 0x080558C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	adds r6, r0, #0
	add r1, sp, #4
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0x10]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x18]
	strb r2, [r1, #0x18]
	add r4, sp, #0x20
	str r0, [sp, #0x20]
	strh r0, [r4, #4]
	add r3, sp, #0x28
	str r0, [sp, #0x28]
	strh r0, [r3, #4]
	add r2, sp, #0x30
	str r0, [sp, #0x30]
	strh r0, [r2, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	ldr r1, .L0805598C @ =0x00002321
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	add r2, sp, #0x40
	mov sb, r2
	cmp r0, #3
	beq .L08055918
	b .L08055BD2
.L08055918:
	adds r1, r6, #0
	adds r1, #0xe0
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x28]
	movs r7, #0x93
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08055958
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08055958:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08055990 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055994
	cmp r1, #0
	beq .L08055980
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055980:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055A5C
	.align 2, 0
.L0805598C: .4byte 0x00002321
.L08055990: .4byte 0x06010000
.L08055994:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x64]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L080559AE
	adds r0, r1, #0
.L080559AE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080559CC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080559D0
	mov r0, sl
	bl func_080D3BC0
	b .L080559D0
.L080559CC:
	movs r0, #0
	mov sl, r0
.L080559D0:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080559F6
.L080559DE:
	cmp r3, #0
	beq .L080559EE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080559EE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080559DE
.L080559F6:
	adds r5, r3, #0
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L08055A12
	cmp r5, #0
	beq .L08055A0E
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055A0E:
	adds r5, #0x10
	b .L08055A34
.L08055A12:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055A32
.L08055A1A:
	cmp r2, #0
	beq .L08055A2A
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055A2A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055A1A
.L08055A32:
	adds r5, r2, #0
.L08055A34:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055A46
.L08055A40:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055A40
.L08055A46:
	cmp r0, #0
	beq .L08055A4E
	bl free
.L08055A4E:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055A5C:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L08055A80
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L08055A80:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08055AB8 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xe8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055ABC
	cmp r1, #0
	beq .L08055AAC
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055AAC:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055B84
	.align 2, 0
.L08055AB8: .4byte 0x05000200
.L08055ABC:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r1, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L08055AD6
	adds r0, r1, #0
.L08055AD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055AF4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055AF8
	mov r0, sl
	bl func_080D3BC0
	b .L08055AF8
.L08055AF4:
	movs r0, #0
	mov sl, r0
.L08055AF8:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08055B1E
.L08055B06:
	cmp r3, #0
	beq .L08055B16
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055B16:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055B06
.L08055B1E:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L08055B3A
	cmp r5, #0
	beq .L08055B36
	adds r0, r5, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055B36:
	adds r5, #0x10
	b .L08055B5C
.L08055B3A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055B5A
.L08055B42:
	cmp r2, #0
	beq .L08055B52
	adds r0, r2, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055B52:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055B42
.L08055B5A:
	adds r5, r2, #0
.L08055B5C:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055B6E
.L08055B68:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055B68
.L08055B6E:
	cmp r0, #0
	beq .L08055B76
	bl free
.L08055B76:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055B84:
	add r0, sp, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r4, #0x93
	lsls r4, r4, #3
	adds r0, r6, r4
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08055BCA
	mov r5, sp
	ldrh r2, [r5, #0x24]
.L08055BCA:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08055BD2:
	ldr r7, .L08055C0C @ =0x0000225C
	adds r0, r6, r7
	ldr r4, [r0]
	movs r0, #0xab
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0x114]
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0x118]
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r2, r6, r2
	str r2, [sp, #0x110]
	cmp r4, #0
	bne .L08055BF8
	bl sub_08056442
.L08055BF8:
	cmp r4, #2
	bne .L08055BFE
	b .L08055EB0
.L08055BFE:
	cmp r4, #2
	bgt .L08055C10
	cmp r4, #1
	beq .L08055C18
	bl .L080563F4
	.align 2, 0
.L08055C0C: .4byte 0x0000225C
.L08055C10:
	cmp r4, #3
	bne .L08055C16
	b .L08056154
.L08055C16:
	b .L080563F4
.L08055C18:
	adds r1, r6, #0
	adds r1, #0xb0
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r3, .L08055C98 @ =0x00002260
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #1
	bne .L08055C40
	b .L080563F4
.L08055C40:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08055C66
	mov r7, sp
	ldrh r3, [r7, #0x2c]
.L08055C66:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08055C9C @ =0x06010000
	adds r2, r2, r0
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08055CA0
	cmp r1, #0
	beq .L08055C8E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055C8E:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055D7E
	.align 2, 0
.L08055C98: .4byte 0x00002260
.L08055C9C: .4byte 0x06010000
.L08055CA0:
	mov r8, r1
	str r4, [sp, #0x74]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L08055CB8
	adds r0, r1, #0
.L08055CB8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055CD6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055CDA
	mov r0, sl
	bl func_080D3BC0
	b .L08055CDA
.L08055CD6:
	movs r0, #0
	mov sl, r0
.L08055CDA:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0x114]
	movs r4, #0xb9
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x118]
	movs r5, #0x8f
	lsls r5, r5, #2
	adds r5, r6, r5
	str r5, [sp, #0x110]
	cmp r2, r8
	beq .L08055D18
.L08055D00:
	cmp r3, #0
	beq .L08055D10
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055D10:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055D00
.L08055D18:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L08055D34
	cmp r5, #0
	beq .L08055D30
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055D30:
	adds r5, #0x10
	b .L08055D56
.L08055D34:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055D54
.L08055D3C:
	cmp r2, #0
	beq .L08055D4C
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055D4C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055D3C
.L08055D54:
	adds r5, r2, #0
.L08055D56:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055D68
.L08055D62:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055D62
.L08055D68:
	cmp r0, #0
	beq .L08055D70
	bl free
.L08055D70:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055D7E:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L08055DA2
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L08055DA2:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08055DD8 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xec]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055DDC
	cmp r1, #0
	beq .L08055DCE
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055DCE:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055EA4
	.align 2, 0
.L08055DD8: .4byte 0x05000200
.L08055DDC:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L08055DF6
	adds r0, r1, #0
.L08055DF6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055E14
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055E18
	mov r0, sl
	bl func_080D3BC0
	b .L08055E18
.L08055E14:
	movs r0, #0
	mov sl, r0
.L08055E18:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08055E3E
.L08055E26:
	cmp r3, #0
	beq .L08055E36
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055E36:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055E26
.L08055E3E:
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L08055E5A
	cmp r5, #0
	beq .L08055E56
	adds r0, r5, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055E56:
	adds r5, #0x10
	b .L08055E7C
.L08055E5A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055E7A
.L08055E62:
	cmp r2, #0
	beq .L08055E72
	adds r0, r2, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055E72:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055E62
.L08055E7A:
	adds r5, r2, #0
.L08055E7C:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055E8E
.L08055E88:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055E88
.L08055E8E:
	cmp r0, #0
	beq .L08055E96
	bl free
.L08055E96:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055EA4:
	ldr r3, .L08055EAC @ =0x00002260
	adds r1, r6, r3
	movs r0, #1
	b .L080563F2
	.align 2, 0
.L08055EAC: .4byte 0x00002260
.L08055EB0:
	movs r4, #0x88
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r3, .L08055F30 @ =0x00002260
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #2
	bne .L08055EDA
	b .L080563F4
.L08055EDA:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x28]
	movs r7, #0x93
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08055EFE
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08055EFE:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08055F34 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055F38
	cmp r1, #0
	beq .L08055F26
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055F26:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0805601C
	.align 2, 0
.L08055F30: .4byte 0x00002260
.L08055F34: .4byte 0x06010000
.L08055F38:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x84
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x80]
	ldr r0, [r1]
	add r2, sp, #0x80
	cmp r4, r0
	bhs .L08055F56
	adds r2, r1, #0
.L08055F56:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055F74
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055F78
	mov r0, sl
	bl func_080D3BC0
	b .L08055F78
.L08055F74:
	movs r0, #0
	mov sl, r0
.L08055F78:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	movs r4, #0xab
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x114]
	movs r5, #0xb9
	lsls r5, r5, #2
	adds r5, r6, r5
	str r5, [sp, #0x118]
	movs r7, #0x8f
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x110]
	cmp r2, r8
	beq .L08055FB6
.L08055F9E:
	cmp r3, #0
	beq .L08055FAE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055FAE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055F9E
.L08055FB6:
	adds r5, r3, #0
	ldr r1, [sp, #0x84]
	cmp r1, #1
	bne .L08055FD2
	cmp r5, #0
	beq .L08055FCE
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055FCE:
	adds r5, #0x10
	b .L08055FF4
.L08055FD2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055FF2
.L08055FDA:
	cmp r2, #0
	beq .L08055FEA
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055FEA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055FDA
.L08055FF2:
	adds r5, r2, #0
.L08055FF4:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056006
.L08056000:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056000
.L08056006:
	cmp r0, #0
	beq .L0805600E
	bl free
.L0805600E:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0805601C:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L08056040
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L08056040:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08056078 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xf0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0805607C
	cmp r1, #0
	beq .L0805606C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805606C:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056148
	.align 2, 0
.L08056078: .4byte 0x05000200
.L0805607C:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805609A
	adds r0, r1, #0
.L0805609A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080560B8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080560BC
	mov r0, sl
	bl func_080D3BC0
	b .L080560BC
.L080560B8:
	movs r0, #0
	mov sl, r0
.L080560BC:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080560E2
.L080560CA:
	cmp r3, #0
	beq .L080560DA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080560DA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080560CA
.L080560E2:
	adds r5, r3, #0
	ldr r1, [sp, #0x8c]
	cmp r1, #1
	bne .L080560FE
	cmp r5, #0
	beq .L080560FA
	adds r0, r5, #0
	ldr r1, [sp, #0xf0]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080560FA:
	adds r5, #0x10
	b .L08056120
.L080560FE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805611E
.L08056106:
	cmp r2, #0
	beq .L08056116
	adds r0, r2, #0
	ldr r1, [sp, #0xf0]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056116:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056106
.L0805611E:
	adds r5, r2, #0
.L08056120:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056132
.L0805612C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805612C
.L08056132:
	cmp r0, #0
	beq .L0805613A
	bl free
.L0805613A:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056148:
	ldr r3, .L08056150 @ =0x00002260
	adds r1, r6, r3
	movs r0, #2
	b .L080563F2
	.align 2, 0
.L08056150: .4byte 0x00002260
.L08056154:
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r3, .L080561D4 @ =0x00002260
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L0805617E
	b .L080563F4
.L0805617E:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x28]
	movs r7, #0x93
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L080561A2
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L080561A2:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L080561D8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080561DC
	cmp r1, #0
	beq .L080561CA
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080561CA:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080562C0
	.align 2, 0
.L080561D4: .4byte 0x00002260
.L080561D8: .4byte 0x06010000
.L080561DC:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080561FA
	adds r0, r1, #0
.L080561FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056218
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0805621C
	mov r0, sl
	bl func_080D3BC0
	b .L0805621C
.L08056218:
	movs r0, #0
	mov sl, r0
.L0805621C:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	movs r4, #0xab
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x114]
	movs r5, #0xb9
	lsls r5, r5, #2
	adds r5, r6, r5
	str r5, [sp, #0x118]
	movs r7, #0x8f
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x110]
	cmp r2, r8
	beq .L0805625A
.L08056242:
	cmp r3, #0
	beq .L08056252
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056252:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056242
.L0805625A:
	adds r5, r3, #0
	ldr r1, [sp, #0x94]
	cmp r1, #1
	bne .L08056276
	cmp r5, #0
	beq .L08056272
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056272:
	adds r5, #0x10
	b .L08056298
.L08056276:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056296
.L0805627E:
	cmp r2, #0
	beq .L0805628E
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805628E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0805627E
.L08056296:
	adds r5, r2, #0
.L08056298:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080562AA
.L080562A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080562A4
.L080562AA:
	cmp r0, #0
	beq .L080562B2
	bl free
.L080562B2:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080562C0:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L080562E4
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L080562E4:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L0805631C @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xf4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08056320
	cmp r1, #0
	beq .L08056310
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056310:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080563EC
	.align 2, 0
.L0805631C: .4byte 0x05000200
.L08056320:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805633E
	adds r0, r1, #0
.L0805633E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805635C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056360
	mov r0, sl
	bl func_080D3BC0
	b .L08056360
.L0805635C:
	movs r0, #0
	mov sl, r0
.L08056360:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056386
.L0805636E:
	cmp r3, #0
	beq .L0805637E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805637E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0805636E
.L08056386:
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080563A2
	cmp r5, #0
	beq .L0805639E
	adds r0, r5, #0
	ldr r1, [sp, #0xf4]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805639E:
	adds r5, #0x10
	b .L080563C4
.L080563A2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080563C2
.L080563AA:
	cmp r2, #0
	beq .L080563BA
	adds r0, r2, #0
	ldr r1, [sp, #0xf4]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080563BA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080563AA
.L080563C2:
	adds r5, r2, #0
.L080563C4:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080563D6
.L080563D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080563D0
.L080563D6:
	cmp r0, #0
	beq .L080563DE
	bl free
.L080563DE:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080563EC:
	ldr r3, .L080567A8 @ =0x00002260
	adds r1, r6, r3
	movs r0, #3
.L080563F2:
	str r0, [r1]
.L080563F4:
	add r0, sp, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r4, #0x94
	lsls r4, r4, #3
	adds r0, r6, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r5, #0x93
	lsls r5, r5, #3
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805643A
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805643A:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C

	non_word_aligned_thumb_func_start sub_08056442
sub_08056442: @ 0x08056442
	adds r0, r6, #0
	bl func_08057B84
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r5, r6, r1
	adds r0, r5, #0
	bl func_0805E8F0
	str r0, [r4]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x114]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	movs r7, #0xaf
	lsls r7, r7, #2
	adds r0, r6, r7
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #4
	movs r0, #0x18
	strh r0, [r1]
	ldr r4, .L080567AC @ =0x000022D8
	adds r0, r6, r4
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x92
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r3, [sp, #0x114]
	ldr r1, [r3]
	adds r1, r1, r2
	ldrh r1, [r1]
	add r2, sp, #4
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r2, #6]
	adds r1, r2, #0
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056500
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056500:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	ldr r5, .L080567B0 @ =0x00002324
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq .L08056514
	b .L080566A8
.L08056514:
	movs r7, #0xf1
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x11c]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0xfc]
	mov r8, sb
	add r5, sp, #4
	ldr r1, .L080567B4 @ =0x000022E0
	adds r7, r6, r1
	ldr r2, .L080567B8 @ =0x00002330
	adds r2, r6, r2
	str r2, [sp, #0x100]
	movs r3, #0xf
	str r3, [sp, #0xf8]
.L08056536:
	ldr r1, .L080567BC @ =gUnk_080FA36C
	ldrh r0, [r7, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [sp, #0xfc]
	bl func_0805E860
	ldr r4, [sp, #0xfc]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x11c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, r8
	mov r1, r8
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r1, sp, #4
	movs r4, #0xf5
	lsls r4, r4, #2
	adds r0, r6, r4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldrh r0, [r7]
	ldr r2, [sp, #0x100]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5]
	adds r0, #0x18
	lsls r0, r0, #0x10
	movs r1, #0x88
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi .L0805669A
	movs r3, #0x90
	strh r3, [r5, #2]
	movs r4, #2
	strh r4, [r5, #8]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r5, #6]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r5, #4]
	movs r3, #1
	mov sl, r3
	mov r4, sl
	strb r4, [r5, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080565F2
	mov r0, sp
	ldrh r2, [r0, #0x24]
.L080565F2:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r4, r6, r1
	adds r0, r4, #0
	ldr r1, .L080567C0 @ =0x0000091B
	bl func_0805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x118]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, r8
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, r8
	mov r1, r8
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r1, sp, #4
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r0, r6, r4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldrh r0, [r7]
	ldr r2, [sp, #0x100]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5]
	movs r3, #0x90
	strh r3, [r5, #2]
	movs r4, #2
	strh r4, [r5, #8]
	movs r1, #0x95
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, #2
	strh r0, [r5, #6]
	movs r2, #0x96
	lsls r2, r2, #3
	adds r0, r6, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r5, #4]
	mov r3, sl
	strb r3, [r5, #0x18]
	adds r0, r6, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L08056694
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056694:
	add r3, sp, #4
	bl func_0805E99C
.L0805669A:
	adds r7, #4
	ldr r0, [sp, #0xf8]
	subs r0, #1
	str r0, [sp, #0xf8]
	cmp r0, #0
	blt .L080566A8
	b .L08056536
.L080566A8:
	ldr r1, .L080567B8 @ =0x00002330
	adds r4, r6, r1
	ldrh r0, [r4]
	cmp r0, #0xff
	bls .L080566B4
	b .L08056B1A
.L080566B4:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r5, #0x81
	lsls r5, r5, #2
	adds r0, r6, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	add r1, sp, #4
	movs r7, #0x85
	lsls r7, r7, #2
	adds r0, r6, r7
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldrh r1, [r4]
	movs r0, #0x40
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	movs r0, #0x50
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r5, #0xa8
	lsls r5, r5, #3
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r7, #0xa9
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	movs r1, #1
	mov sl, r1
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056754
	b .L08056AFC
.L08056754:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08056776
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08056776:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L080567C4 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080567C8
	cmp r1, #0
	beq .L0805679E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805679E:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056894
	.align 2, 0
.L080567A8: .4byte 0x00002260
.L080567AC: .4byte 0x000022D8
.L080567B0: .4byte 0x00002324
.L080567B4: .4byte 0x000022E0
.L080567B8: .4byte 0x00002330
.L080567BC: .4byte gUnk_080FA36C
.L080567C0: .4byte 0x0000091B
.L080567C4: .4byte 0x06010000
.L080567C8:
	mov r8, r1
	add r1, sp, #0xa4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080567E6
	adds r0, r1, #0
.L080567E6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056804
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056808
	mov r0, sl
	bl func_080D3BC0
	b .L08056808
.L08056804:
	movs r0, #0
	mov sl, r0
.L08056808:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0805682E
.L08056816:
	cmp r3, #0
	beq .L08056826
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056826:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056816
.L0805682E:
	adds r5, r3, #0
	ldr r1, [sp, #0xa4]
	cmp r1, #1
	bne .L0805684A
	cmp r5, #0
	beq .L08056846
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056846:
	adds r5, #0x10
	b .L0805686C
.L0805684A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805686A
.L08056852:
	cmp r2, #0
	beq .L08056862
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056862:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056852
.L0805686A:
	adds r5, r2, #0
.L0805686C:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805687E
.L08056878:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056878
.L0805687E:
	cmp r0, #0
	beq .L08056886
	bl free
.L08056886:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056894:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0xa9
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L080568B8
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L080568B8:
	lsrs r3, r3, #1
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L080568F0 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0x104]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080568F4
	cmp r1, #0
	beq .L080568E6
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080568E6:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080569C0
	.align 2, 0
.L080568F0: .4byte 0x05000200
.L080568F4:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056912
	adds r0, r1, #0
.L08056912:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056930
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056934
	mov r0, sl
	bl func_080D3BC0
	b .L08056934
.L08056930:
	movs r0, #0
	mov sl, r0
.L08056934:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0805695A
.L08056942:
	cmp r3, #0
	beq .L08056952
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056952:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056942
.L0805695A:
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L08056976
	cmp r5, #0
	beq .L08056972
	adds r0, r5, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056972:
	adds r5, #0x10
	b .L08056998
.L08056976:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056996
.L0805697E:
	cmp r2, #0
	beq .L0805698E
	adds r0, r2, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805698E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0805697E
.L08056996:
	adds r5, r2, #0
.L08056998:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080569AA
.L080569A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080569A4
.L080569AA:
	cmp r0, #0
	beq .L080569B2
	bl free
.L080569B2:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080569C0:
	adds r0, r6, #0
	bl func_08008910
	adds r7, r0, #0
	ldr r0, [sp, #0x30]
	adds r4, r0, #0
	add r0, sp, #0x30
	movs r1, #0
	cmp r4, #0
	beq .L080569D6
	ldrh r1, [r0, #4]
.L080569D6:
	lsrs r5, r1, #1
	movs r3, #0xaa
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L080569F2
	mov r0, sp
	ldrh r3, [r0, #0x34]
.L080569F2:
	lsrs r3, r3, #1
	str r7, [sp, #0x120]
	adds r1, r4, r5
	lsls r2, r2, #5
	ldr r4, .L08056A2C @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x40
	bl func_08008F0C
	mov r5, sb
	str r5, [sp, #0x108]
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08056A30
	cmp r1, #0
	beq .L08056A20
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056A20:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056AFC
	.align 2, 0
.L08056A2C: .4byte 0x05000200
.L08056A30:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xb4
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056A4E
	adds r0, r1, #0
.L08056A4E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056A6C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056A70
	mov r0, sl
	bl func_080D3BC0
	b .L08056A70
.L08056A6C:
	movs r0, #0
	mov sl, r0
.L08056A70:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056A96
.L08056A7E:
	cmp r3, #0
	beq .L08056A8E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056A8E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056A7E
.L08056A96:
	adds r5, r3, #0
	ldr r1, [sp, #0xb4]
	cmp r1, #1
	bne .L08056AB2
	cmp r5, #0
	beq .L08056AAE
	adds r0, r5, #0
	ldr r1, [sp, #0x108]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056AAE:
	adds r5, #0x10
	b .L08056AD4
.L08056AB2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056AD2
.L08056ABA:
	cmp r2, #0
	beq .L08056ACA
	adds r0, r2, #0
	ldr r1, [sp, #0x108]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056ACA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056ABA
.L08056AD2:
	adds r5, r2, #0
.L08056AD4:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056AE6
.L08056AE0:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056AE0
.L08056AE6:
	cmp r0, #0
	beq .L08056AEE
	bl free
.L08056AEE:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056AFC:
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056B0A
	mov r3, sp
	ldrh r2, [r3, #0x24]
.L08056B0A:
	movs r4, #0xa8
	lsls r4, r4, #3
	adds r0, r6, r4
	str r0, [sp]
	adds r0, r6, #0
	add r3, sp, #4
	bl func_080579B4
.L08056B1A:
	movs r5, #0xe1
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08056B2A
	b .L08056D26
.L08056B2A:
	movs r7, #0xd4
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08056C2C @ =0x00002268
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L08056C30 @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L08056C34 @ =0x0000226C
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x99
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056BD6
	b .L08056D08
.L08056BD6:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08056BF8
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08056BF8:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08056C38 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08056C3C
	cmp r1, #0
	beq .L08056C20
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056C20:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056D08
	.align 2, 0
.L08056C2C: .4byte 0x00002268
.L08056C30: .4byte 0x00002330
.L08056C34: .4byte 0x0000226C
.L08056C38: .4byte 0x06010000
.L08056C3C:
	mov r8, r1
	add r1, sp, #0xbc
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xb8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056C5A
	adds r0, r1, #0
.L08056C5A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056C78
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056C7C
	mov r0, sl
	bl func_080D3BC0
	b .L08056C7C
.L08056C78:
	movs r0, #0
	mov sl, r0
.L08056C7C:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056CA2
.L08056C8A:
	cmp r3, #0
	beq .L08056C9A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056C9A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056C8A
.L08056CA2:
	adds r5, r3, #0
	ldr r1, [sp, #0xbc]
	cmp r1, #1
	bne .L08056CBE
	cmp r5, #0
	beq .L08056CBA
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056CBA:
	adds r5, #0x10
	b .L08056CE0
.L08056CBE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056CDE
.L08056CC6:
	cmp r2, #0
	beq .L08056CD6
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056CD6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056CC6
.L08056CDE:
	adds r5, r2, #0
.L08056CE0:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056CF2
.L08056CEC:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056CEC
.L08056CF2:
	cmp r0, #0
	beq .L08056CFA
	bl free
.L08056CFA:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056D08:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056D1E
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056D1E:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08056D26:
	movs r5, #0x8e
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r7, [sp, #0x110]
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	movs r5, #0x93
	lsls r5, r5, #2
	adds r0, r6, r5
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r1, .L08056E28 @ =0x00002268
	adds r0, r6, r1
	movs r3, #2
	ldrsh r0, [r0, r3]
	ldr r4, .L08056E2C @ =0x00002330
	adds r1, r6, r4
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r5, .L08056E30 @ =0x0000226C
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	movs r2, #1
	mov sl, r2
	mov r3, sl
	strb r3, [r0, #0x18]
	movs r5, #0x9a
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056DD2
	b .L08056F04
.L08056DD2:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08056DF4
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08056DF4:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08056E34 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08056E38
	cmp r1, #0
	beq .L08056E1C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056E1C:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056F04
	.align 2, 0
.L08056E28: .4byte 0x00002268
.L08056E2C: .4byte 0x00002330
.L08056E30: .4byte 0x0000226C
.L08056E34: .4byte 0x06010000
.L08056E38:
	mov r8, r1
	add r1, sp, #0xc4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xc0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056E56
	adds r0, r1, #0
.L08056E56:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056E74
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056E78
	mov r0, sl
	bl func_080D3BC0
	b .L08056E78
.L08056E74:
	movs r0, #0
	mov sl, r0
.L08056E78:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056E9E
.L08056E86:
	cmp r3, #0
	beq .L08056E96
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056E96:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056E86
.L08056E9E:
	adds r5, r3, #0
	ldr r1, [sp, #0xc4]
	cmp r1, #1
	bne .L08056EBA
	cmp r5, #0
	beq .L08056EB6
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056EB6:
	adds r5, #0x10
	b .L08056EDC
.L08056EBA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056EDA
.L08056EC2:
	cmp r2, #0
	beq .L08056ED2
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056ED2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056EC2
.L08056EDA:
	adds r5, r2, #0
.L08056EDC:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056EEE
.L08056EE8:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056EE8
.L08056EEE:
	cmp r0, #0
	beq .L08056EF6
	bl free
.L08056EF6:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056F04:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056F1A
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056F1A:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	ldr r5, .L08057034 @ =0x0000042C
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08056F30
	b .L08057136
.L08056F30:
	movs r7, #0xfe
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xff
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r3, .L08057038 @ =0x0000040C
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L0805703C @ =0x00002268
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L08057040 @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	subs r0, #8
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L08057044 @ =0x0000226C
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	subs r0, #0x18
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x9c
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9d
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056FDE
	b .L08057118
.L08056FDE:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057000
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057000:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057048 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805704C
	cmp r1, #0
	beq .L08057028
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08057028:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057118
	.align 2, 0
.L08057034: .4byte 0x0000042C
.L08057038: .4byte 0x0000040C
.L0805703C: .4byte 0x00002268
.L08057040: .4byte 0x00002330
.L08057044: .4byte 0x0000226C
.L08057048: .4byte 0x06010000
.L0805704C:
	mov r8, r1
	add r1, sp, #0xcc
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805706A
	adds r0, r1, #0
.L0805706A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08057088
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0805708C
	mov r0, sl
	bl func_080D3BC0
	b .L0805708C
.L08057088:
	movs r0, #0
	mov sl, r0
.L0805708C:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080570B2
.L0805709A:
	cmp r3, #0
	beq .L080570AA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080570AA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0805709A
.L080570B2:
	adds r5, r3, #0
	ldr r1, [sp, #0xcc]
	cmp r1, #1
	bne .L080570CE
	cmp r5, #0
	beq .L080570CA
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080570CA:
	adds r5, #0x10
	b .L080570F0
.L080570CE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080570EE
.L080570D6:
	cmp r2, #0
	beq .L080570E6
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080570E6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080570D6
.L080570EE:
	adds r5, r2, #0
.L080570F0:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08057102
.L080570FC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080570FC
.L08057102:
	cmp r0, #0
	beq .L0805710A
	bl free
.L0805710A:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057118:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805712E
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805712E:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057136:
	ldr r5, .L0805724C @ =0x00000464
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08057144
	b .L08057356
.L08057144:
	movs r7, #0x86
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	ldr r4, .L08057250 @ =0x00000434
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r3, .L08057254 @ =0x00000444
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08057258 @ =0x00002268
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L0805725C @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r4, .L08057260 @ =0x0000226C
	adds r0, r6, r4
	movs r5, #2
	ldrsh r1, [r0, r5]
	ldr r7, .L08057264 @ =0x0000228C
	adds r0, r6, r7
	ldrh r0, [r0]
	adds r0, #8
	subs r1, r1, r0
	strh r1, [r2, #2]
	adds r1, r2, #0
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #0x9e
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9f
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080571F6
	b .L08057338
.L080571F6:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057218
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057218:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057268 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805726C
	cmp r1, #0
	beq .L08057240
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08057240:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057338
	.align 2, 0
.L0805724C: .4byte 0x00000464
.L08057250: .4byte 0x00000434
.L08057254: .4byte 0x00000444
.L08057258: .4byte 0x00002268
.L0805725C: .4byte 0x00002330
.L08057260: .4byte 0x0000226C
.L08057264: .4byte 0x0000228C
.L08057268: .4byte 0x06010000
.L0805726C:
	mov r8, r1
	add r1, sp, #0xd4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xd0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805728A
	adds r0, r1, #0
.L0805728A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080572A8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080572AC
	mov r0, sl
	bl func_080D3BC0
	b .L080572AC
.L080572A8:
	movs r0, #0
	mov sl, r0
.L080572AC:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080572D2
.L080572BA:
	cmp r3, #0
	beq .L080572CA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080572CA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080572BA
.L080572D2:
	adds r5, r3, #0
	ldr r1, [sp, #0xd4]
	cmp r1, #1
	bne .L080572EE
	cmp r5, #0
	beq .L080572EA
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080572EA:
	adds r5, #0x10
	b .L08057310
.L080572EE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805730E
.L080572F6:
	cmp r2, #0
	beq .L08057306
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08057306:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080572F6
.L0805730E:
	adds r5, r2, #0
.L08057310:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08057322
.L0805731C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805731C
.L08057322:
	cmp r0, #0
	beq .L0805732A
	bl free
.L0805732A:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057338:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805734E
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805734E:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057356:
	movs r5, #0xef
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08057366
	b .L08057562
.L08057366:
	movs r7, #0xe2
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xe7
	lsls r3, r3, #2
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08057468 @ =0x00002294
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L0805746C @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L08057470 @ =0x00002298
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x9a
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0xee
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08057412
	b .L08057544
.L08057412:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057434
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057434:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057474 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08057478
	cmp r1, #0
	beq .L0805745C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805745C:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057544
	.align 2, 0
.L08057468: .4byte 0x00002294
.L0805746C: .4byte 0x00002330
.L08057470: .4byte 0x00002298
.L08057474: .4byte 0x06010000
.L08057478:
	mov r8, r1
	add r1, sp, #0xdc
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08057496
	adds r0, r1, #0
.L08057496:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080574B4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080574B8
	mov r0, sl
	bl func_080D3BC0
	b .L080574B8
.L080574B4:
	movs r0, #0
	mov sl, r0
.L080574B8:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080574DE
.L080574C6:
	cmp r3, #0
	beq .L080574D6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080574D6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080574C6
.L080574DE:
	adds r5, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L080574FA
	cmp r5, #0
	beq .L080574F6
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080574F6:
	adds r5, #0x10
	b .L0805751C
.L080574FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805751A
.L08057502:
	cmp r2, #0
	beq .L08057512
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08057512:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08057502
.L0805751A:
	adds r5, r2, #0
.L0805751C:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805752E
.L08057528:
	adds r1, #0x10
	cmp r1, r2
	bne .L08057528
.L0805752E:
	cmp r0, #0
	beq .L08057536
	bl free
.L08057536:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057544:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805755A
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805755A:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057562:
	movs r5, #0xd3
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08057572
	b .L0805776E
.L08057572:
	movs r7, #0xc6
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xc7
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08057674 @ =0x00002294
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L08057678 @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L0805767C @ =0x00002298
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x97
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0805761E
	b .L08057750
.L0805761E:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057640
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057640:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057680 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08057684
	cmp r1, #0
	beq .L08057668
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08057668:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057750
	.align 2, 0
.L08057674: .4byte 0x00002294
.L08057678: .4byte 0x00002330
.L0805767C: .4byte 0x00002298
.L08057680: .4byte 0x06010000
.L08057684:
	mov r8, r1
	add r1, sp, #0xe4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xe0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080576A2
	adds r0, r1, #0
.L080576A2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080576C0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080576C4
	mov r0, sl
	bl func_080D3BC0
	b .L080576C4
.L080576C0:
	movs r0, #0
	mov sl, r0
.L080576C4:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080576EA
.L080576D2:
	cmp r3, #0
	beq .L080576E2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080576E2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080576D2
.L080576EA:
	adds r5, r3, #0
	ldr r1, [sp, #0xe4]
	cmp r1, #1
	bne .L08057706
	cmp r5, #0
	beq .L08057702
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08057702:
	adds r5, #0x10
	b .L08057728
.L08057706:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08057726
.L0805770E:
	cmp r2, #0
	beq .L0805771E
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805771E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0805770E
.L08057726:
	adds r5, r2, #0
.L08057728:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805773A
.L08057734:
	adds r1, #0x10
	cmp r1, r2
	bne .L08057734
.L0805773A:
	cmp r0, #0
	beq .L08057742
	bl free
.L08057742:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057750:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08057766
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08057766:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L0805776E:
	ldr r7, .L080579A0 @ =0x00002330
	adds r5, r6, r7
	ldrh r0, [r5]
	cmp r0, #0xff
	bhi .L08057824
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, .L080579A4 @ =0x0000091B
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x118]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	movs r7, #0xbd
	lsls r7, r7, #2
	adds r0, r6, r7
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldrh r1, [r5]
	movs r0, #0x40
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	movs r0, #0x50
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r4, #0x95
	lsls r4, r4, #3
	adds r0, r6, r4
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	adds r0, #2
	strh r0, [r1, #6]
	movs r5, #0x96
	lsls r5, r5, #3
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805781C
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805781C:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057824:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r5, r6, r0
	adds r0, r5, #0
	ldr r1, .L080579A8 @ =0x0000091A
	bl func_0805E860
	add r1, sp, #0x20
	mov r8, r1
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x118]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r7}
	stm r0!, {r1, r2, r7}
	ldm r4!, {r1, r3, r7}
	stm r0!, {r1, r3, r7}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x10c]
	add r1, sp, #4
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r3, .L080579AC @ =0x00002268
	adds r0, r6, r3
	movs r4, #2
	ldrsh r0, [r0, r4]
	ldr r7, .L080579A0 @ =0x00002330
	adds r7, r7, r6
	mov sl, r7
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	movs r1, #0x50
	strh r1, [r0, #2]
	movs r2, #2
	strh r2, [r0, #8]
	movs r3, #0x95
	lsls r3, r3, #3
	adds r7, r6, r3
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080578DE
	mov r0, r8
	ldrh r2, [r0, #4]
.L080578DE:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #1
	bne .L08057990
	adds r0, r5, #0
	ldr r1, .L080579A8 @ =0x0000091A
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x118]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r1, sp, #4
	ldr r0, [sp, #0x10c]
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L080579B0 @ =0x00002294
	adds r0, r6, r5
	movs r1, #2
	ldrsh r0, [r0, r1]
	mov r3, sl
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	movs r5, #0x50
	strh r5, [r0, #2]
	movs r1, #2
	strh r1, [r0, #8]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, r8
	strb r2, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L0805798A
	mov r3, sp
	ldrh r2, [r3, #0x24]
.L0805798A:
	add r3, sp, #4
	bl func_0805E99C
.L08057990:
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080579A0: .4byte 0x00002330
.L080579A4: .4byte 0x0000091B
.L080579A8: .4byte 0x0000091A
.L080579AC: .4byte 0x00002268
.L080579B0: .4byte 0x00002294

	thumb_func_start func_080579B4
func_080579B4: @ 0x080579B4
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
	bne .L080579D2
	b .L08057B4C
.L080579D2:
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
	bne .L080579FC
	movs r6, #8
	lsls r6, r1
	adds r4, r6, #0
	b .L08057A1C
.L080579FC:
	adds r0, r1, #1
	lsrs r0, r0, #1
	adds r0, #1
	movs r2, #8
	lsls r2, r0
	movs r0, #8
	cmp r1, #1
	beq .L08057A0E
	lsrs r0, r2, #1
.L08057A0E:
	cmp r4, #1
	beq .L08057A18
	adds r6, r2, #0
	adds r4, r0, #0
	b .L08057A1C
.L08057A18:
	adds r6, r0, #0
	adds r4, r2, #0
.L08057A1C:
	mov r0, r8
	ldrb r7, [r0, #0x10]
	movs r1, #1
	mov sl, r1
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq .L08057A46
	adds r0, r3, r4
	rsbs r3, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #3
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1c
	ldr r0, .L08057B5C @ =0xEFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L08057A46:
	movs r0, #2
	ands r0, r7
	cmp r0, #0
	beq .L08057A68
	adds r0, r5, r6
	rsbs r5, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #2
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1d
	ldr r0, .L08057B60 @ =0xDFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L08057A68:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r3, r0
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r3, r4
	cmp r0, #0
	ble .L08057B40
	cmp r3, #0xef
	bgt .L08057B40
	adds r0, r5, r6
	cmp r0, #0
	ble .L08057B40
	cmp r5, #0x9f
	bgt .L08057B40
	ldr r0, .L08057B64 @ =0x000001FF
	ands r3, r0
	lsls r2, r3, #0x10
	ldr r1, .L08057B68 @ =0xFE00FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	ldr r1, .L08057B6C @ =0xFFFFFF00
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
	ldr r1, .L08057B70 @ =0xFFFF0FFF
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
	ldr r1, .L08057B74 @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r2, .L08057B78 @ =0xFFFFF3FF
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
	ldr r0, .L08057B7C @ =0xFFFFFCFF
	ands r1, r0
	orrs r1, r2
	ldrb r2, [r3, #0x18]
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #0xc
	ldr r0, .L08057B80 @ =0xFFFFEFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08057B40
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08057B40:
	movs r0, #8
	add sb, r0
	ldr r1, [sp, #0xc]
	cmp sb, r1
	beq .L08057B4C
	b .L080579D2
.L08057B4C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08057B5C: .4byte 0xEFFFFFFF
.L08057B60: .4byte 0xDFFFFFFF
.L08057B64: .4byte 0x000001FF
.L08057B68: .4byte 0xFE00FFFF
.L08057B6C: .4byte 0xFFFFFF00
.L08057B70: .4byte 0xFFFF0FFF
.L08057B74: .4byte 0xFFFFFC00
.L08057B78: .4byte 0xFFFFF3FF
.L08057B7C: .4byte 0xFFFFFCFF
.L08057B80: .4byte 0xFFFFEFFF

	thumb_func_start func_08057B84
func_08057B84: @ 0x08057B84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, .L08057BF4 @ =0x000022C4
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0xc
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x14
	movs r3, #0xb
	bl func_08057D34
	ldr r1, .L08057BF8 @ =0x00002324
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08057C00
	subs r1, #0x58
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq .L08057C74
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x10
	movs r3, #0x1a
	bl func_08057D34
	ldr r1, .L08057BFC @ =0x000022C6
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0x10
	movs r3, #0x17
	bl func_08057D34
	b .L08057C74
	.align 2, 0
.L08057BF4: .4byte 0x000022C4
.L08057BF8: .4byte 0x00002324
.L08057BFC: .4byte 0x000022C6
.L08057C00:
	ldr r0, .L08057CA0 @ =0x000022CC
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L08057C3C
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #8
	movs r3, #0x18
	bl func_08057D34
	ldr r1, .L08057CA4 @ =0x000022C8
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #8
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #8
	movs r3, #0x17
	bl func_08057D34
.L08057C3C:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08057C74
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x18
	movs r3, #0x19
	bl func_08057D34
	ldr r1, .L08057CA8 @ =0x000022CA
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x16
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0x16
	movs r3, #0x17
	bl func_08057D34
.L08057C74:
	ldr r1, .L08057CAC @ =0x000022CE
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne .L08057C96
	ldr r0, .L08057CA0 @ =0x000022CC
	adds r2, r4, r0
	adds r0, #1
	adds r1, r4, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2]
.L08057C96:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08057CA0: .4byte 0x000022CC
.L08057CA4: .4byte 0x000022C8
.L08057CA8: .4byte 0x000022CA
.L08057CAC: .4byte 0x000022CE

	thumb_func_start func_08057CB0
func_08057CB0: @ 0x08057CB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	mov sl, r2
	mov sb, r3
	ldr r1, [sp, #0x24]
	movs r6, #0x64
	movs r3, #0
	cmp r1, #0
	beq .L08057CD0
	movs r3, #0xc
.L08057CD0:
	movs r0, #8
	cmp r1, #0
	bne .L08057CD8
	movs r0, #0x10
.L08057CD8:
	mov r8, r3
	adds r7, r0, #0
.L08057CDC:
	mov r0, sb
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	adds r3, r4, r0
	ldr r0, [sp]
	adds r1, r5, #0
	mov r2, sl
	bl func_08057D34
	adds r5, r5, r7
	adds r0, r4, #0
	muls r0, r6, r0
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #1
	bne .L08057D20
	ldr r0, [sp]
	adds r1, r5, #0
	mov r3, sl
	adds r2, r3, r7
	mov r3, r8
	adds r3, #0xa
	bl func_08057D34
	adds r5, #8
.L08057D20:
	cmp r6, #0
	bgt .L08057CDC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08057D34
func_08057D34: @ 0x08057D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x3c
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
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
	add r7, sp, #0x1c
	adds r1, r5, #0
	adds r1, #0x50
	adds r0, r7, #0
	adds r2, r4, #0
	bl func_0805E790
	mov r0, sp
	strh r6, [r0]
	mov r1, r8
	strh r1, [r0, #2]
	movs r3, #0x90
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sp
	lsls r4, r4, #2
	ldr r3, .L08057DD4 @ =0x00002334
	adds r1, r5, r3
	adds r1, r1, r4
	ldr r1, [r1]
	adds r1, r1, r0
	strh r1, [r2, #6]
	mov r1, sp
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	mov r0, sp
	strb r2, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08057DC0
	ldrh r2, [r7, #4]
.L08057DC0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08057DD4: .4byte 0x00002334

	thumb_func_start func_08057DD8
func_08057DD8: @ 0x08057DD8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L08057E14 @ =vtable_unk_080E7960
	str r0, [r5]
	ldr r0, .L08057E18 @ =0x000023A8
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080522F8
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
.L08057E14: .4byte vtable_unk_080E7960
.L08057E18: .4byte 0x000023A8

