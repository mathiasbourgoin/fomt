	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080ADF40
func_080ADF40: @ 0x080ADF40
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	adds r5, r0, #0
	ldrh r0, [r2, #4]
	adds r1, r5, r0
	adds r4, r1, #0
	movs r0, #0xff
	ands r0, r1
	movs r3, #0
	cmp r0, #0
	beq .L080ADF5A
	adds r3, r1, #0
.L080ADF5A:
	strh r3, [r2, #6]
	adds r0, r4, #0
	asrs r1, r0, #8
	adds r0, r5, #0
	asrs r0, r0, #8
	subs r0, r1, r0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080ADF6C
func_080ADF6C: @ 0x080ADF6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r6, r0, #0
	str r1, [sp, #0x14]
	bl func_08008444
	ldr r0, .L080AE340 @ =vtable_unk_080E8500
	str r0, [r6, #4]
	movs r0, #2
	add r7, sp, #0x10
	movs r1, #1
	rsbs r1, r1, #0
.L080ADF8C:
	subs r0, #1
	cmp r0, r1
	bne .L080ADF8C
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	adds r0, r7, #0
	bl func_0800770C
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x18
	movs r3, #0
	bl func_08050CC0
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	adds r0, r7, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE344 @ =gUnk_0873E5B0
	bl func_0805E6CC
	ldr r2, .L080AE348 @ =0x0000041C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE34C @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE350 @ =gUnk_087405A0
	bl func_0805E6CC
	ldr r2, .L080AE354 @ =0x00000424
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE358 @ =gUnk_0858BA28
	bl func_0805E6CC
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE35C @ =gUnk_0873AE54
	bl func_0805E6CC
	ldr r2, .L080AE360 @ =0x0000042C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE364 @ =gUnk_0871D51C
	bl func_0805E6CC
	movs r2, #0x86
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE368 @ =gUnk_0872BE64
	bl func_0805E6CC
	ldr r2, .L080AE36C @ =0x00000434
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE370 @ =gUnk_0873D6D8
	bl func_0805E6CC
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x10
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	str r4, [r5]
	str r4, [r5, #4]
	ldr r0, .L080AE374 @ =vtable_unk_080E5B80
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xc
	bl func_08009300
	ldr r1, .L080AE378 @ =0x0000043C
	adds r0, r6, r1
	str r5, [r0]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0x28
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r3, r6, r2
	movs r0, #4
	ldr r4, .L080AE37C @ =0x000007CC
	adds r5, r6, r4
	ldr r1, .L080AE380 @ =0x000007D4
	adds r7, r6, r1
	ldr r2, .L080AE384 @ =0x000007DC
	adds r2, r2, r6
	mov ip, r2
	adds r4, #0x28
	adds r4, r4, r6
	mov r8, r4
	adds r1, #0x28
	adds r1, r1, r6
	mov sb, r1
	ldr r2, .L080AE388 @ =0x00000804
	adds r2, r2, r6
	mov sl, r2
	movs r4, #0x89
	lsls r4, r4, #4
	adds r4, r6, r4
	str r4, [sp, #0x18]
	ldr r1, .L080AE38C @ =0x00000898
	adds r1, r6, r1
	str r1, [sp, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0x20]
	ldr r4, .L080AE390 @ =0x000008A8
	adds r4, r6, r4
	str r4, [sp, #0x24]
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0x28]
	ldr r2, .L080AE394 @ =0x000008B8
	adds r2, r6, r2
	str r2, [sp, #0x2c]
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r4, r6, r4
	str r4, [sp, #0x30]
	ldr r1, .L080AE398 @ =0x000008C8
	adds r1, r6, r1
	str r1, [sp, #0x34]
	movs r2, #0x8d
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0x38]
	ldr r4, .L080AE39C @ =0x000008D8
	adds r4, r6, r4
	str r4, [sp, #0x3c]
	movs r2, #0
	movs r1, #1
	rsbs r1, r1, #0
.L080AE20E:
	stm r3!, {r2}
	subs r0, #1
	cmp r0, r1
	bne .L080AE20E
	ldr r0, .L080AE3A0 @ =0x00000564
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE222:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE222
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #0xaf
	lsls r4, r4, #3
	adds r0, r6, r4
.L080AE238:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AE238
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE25E:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE25E
	ldr r2, .L080AE3A4 @ =0x0000062C
	adds r1, r6, r2
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE272:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE272
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #0xc8
	lsls r4, r4, #3
	adds r0, r6, r4
.L080AE288:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AE288
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE2AE:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE2AE
	ldr r2, .L080AE3A8 @ =0x000006F4
	adds r1, r6, r2
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE2C2:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE2C2
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE2D8:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE2D8
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r4, .L080AE3AC @ =0x0000071C
	adds r0, r6, r4
.L080AE2EC:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AE2EC
	movs r4, #0
	ldr r1, .L080AE3B0 @ =0x000007BC
	adds r0, r6, r1
	str r4, [r0]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	str r4, [r5]
	strh r4, [r5, #4]
	str r4, [r7]
	strh r4, [r7, #4]
	mov r2, ip
	str r4, [r2]
	strh r4, [r2, #4]
	adds r1, #0x20
	adds r0, r6, r1
	str r4, [r0]
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r6, r1
	b .L080AE3B4
	.align 2, 0
.L080AE340: .4byte vtable_unk_080E8500
.L080AE344: .4byte gUnk_0873E5B0
.L080AE348: .4byte 0x0000041C
.L080AE34C: .4byte gUnk_0873DE44
.L080AE350: .4byte gUnk_087405A0
.L080AE354: .4byte 0x00000424
.L080AE358: .4byte gUnk_0858BA28
.L080AE35C: .4byte gUnk_0873AE54
.L080AE360: .4byte 0x0000042C
.L080AE364: .4byte gUnk_0871D51C
.L080AE368: .4byte gUnk_0872BE64
.L080AE36C: .4byte 0x00000434
.L080AE370: .4byte gUnk_0873D6D8
.L080AE374: .4byte vtable_unk_080E5B80
.L080AE378: .4byte 0x0000043C
.L080AE37C: .4byte 0x000007CC
.L080AE380: .4byte 0x000007D4
.L080AE384: .4byte 0x000007DC
.L080AE388: .4byte 0x00000804
.L080AE38C: .4byte 0x00000898
.L080AE390: .4byte 0x000008A8
.L080AE394: .4byte 0x000008B8
.L080AE398: .4byte 0x000008C8
.L080AE39C: .4byte 0x000008D8
.L080AE3A0: .4byte 0x00000564
.L080AE3A4: .4byte 0x0000062C
.L080AE3A8: .4byte 0x000006F4
.L080AE3AC: .4byte 0x0000071C
.L080AE3B0: .4byte 0x000007BC
.L080AE3B4:
	str r4, [r0]
	strh r4, [r0, #4]
	mov r2, r8
	str r4, [r2]
	strh r4, [r2, #4]
	mov r0, sb
	str r4, [r0]
	strh r4, [r0, #4]
	mov r1, sl
	str r4, [r1]
	strh r4, [r1, #4]
	ldr r2, .L080AE4B8 @ =0x0000080C
	adds r0, r6, r2
	movs r1, #0
	bl func_08008B54
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #1
	bl func_08008B54
	ldr r2, .L080AE4BC @ =0x00000814
	adds r0, r6, r2
	movs r1, #2
	bl func_08008B54
	ldr r1, .L080AE4C0 @ =0x00000818
	adds r0, r6, r1
	movs r1, #3
	bl func_08008B54
	ldr r2, .L080AE4C4 @ =0x0000081C
	adds r0, r6, r2
	movs r1, #4
	bl func_08008B54
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r6, r1
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080AE4C8 @ =vtable_unk_080E5B70
	str r1, [r0, #8]
	ldr r2, .L080AE4CC @ =0x0000082C
	adds r0, r6, r2
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080AE4D0 @ =vtable_unk_080E5B60
	str r1, [r0, #8]
	ldr r0, .L080AE4D4 @ =0x00000888
	adds r5, r6, r0
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	ldr r0, [sp, #0x18]
	bl func_08007874
	ldr r1, [sp, #0x18]
	str r4, [r1, #4]
	ldr r0, [sp, #0x1c]
	bl func_08007874
	ldr r2, [sp, #0x1c]
	str r4, [r2, #4]
	ldr r0, [sp, #0x20]
	bl func_08007874
	ldr r0, [sp, #0x20]
	str r4, [r0, #4]
	ldr r0, [sp, #0x24]
	bl func_08007874
	ldr r1, [sp, #0x24]
	str r4, [r1, #4]
	ldr r0, [sp, #0x28]
	bl func_08007874
	ldr r2, [sp, #0x28]
	str r4, [r2, #4]
	ldr r0, [sp, #0x2c]
	bl func_08007874
	ldr r0, [sp, #0x2c]
	str r4, [r0, #4]
	ldr r0, [sp, #0x30]
	bl func_08007874
	ldr r1, [sp, #0x30]
	str r4, [r1, #4]
	ldr r0, [sp, #0x34]
	bl func_08007874
	ldr r2, [sp, #0x34]
	str r4, [r2, #4]
	ldr r0, [sp, #0x38]
	bl func_08007874
	ldr r0, [sp, #0x38]
	str r4, [r0, #4]
	ldr r0, [sp, #0x3c]
	bl func_08007874
	ldr r1, [sp, #0x3c]
	str r4, [r1, #4]
	movs r2, #0x91
	lsls r2, r2, #4
	adds r0, r6, r2
	str r4, [r0]
	movs r4, #0x93
	lsls r4, r4, #4
	adds r1, r6, r4
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	str r0, [r1]
	ldrb r1, [r2, #4]
	adds r4, #8
	adds r0, r6, r4
	strb r1, [r0]
	adds r0, r6, #0
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AE4B8: .4byte 0x0000080C
.L080AE4BC: .4byte 0x00000814
.L080AE4C0: .4byte 0x00000818
.L080AE4C4: .4byte 0x0000081C
.L080AE4C8: .4byte vtable_unk_080E5B70
.L080AE4CC: .4byte 0x0000082C
.L080AE4D0: .4byte vtable_unk_080E5B60
.L080AE4D4: .4byte 0x00000888

	thumb_func_start func_080AE4D8
func_080AE4D8: @ 0x080AE4D8
	ldr r1, .L080AE4E0 @ =0x0000092C
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
.L080AE4E0: .4byte 0x0000092C

	thumb_func_start func_080AE4E4
func_080AE4E4: @ 0x080AE4E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x1c]
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_080AE6C0
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	ldr r0, .L080AE57C @ =0x0000043C
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080AE580 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	adds r0, r7, #0
	bl func_080B09B0
	adds r0, r7, #0
	bl func_080B0AA0
	adds r0, r7, #0
	bl func_080AE7D0
	adds r0, r7, #0
	bl func_080AE894
	ldr r1, .L080AE584 @ =0x0000080C
	adds r0, r7, r1
	movs r1, #0x22
	bl func_08008B6C
	ldr r1, .L080AE588 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	cmp r0, #5
	beq .L080AE5D4
.L080AE562:
	adds r0, r7, #0
	bl func_080087C8
	ldr r1, .L080AE588 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L080AE5CA
	lsls r0, r0, #2
	ldr r1, .L080AE58C @ =.L080AE590
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AE57C: .4byte 0x0000043C
.L080AE580: .4byte 0x00000889
.L080AE584: .4byte 0x0000080C
.L080AE588: .4byte 0x00000838
.L080AE58C: .4byte .L080AE590
.L080AE590: @ jump table
	.4byte .L080AE5A4 @ case 0
	.4byte .L080AE5AC @ case 1
	.4byte .L080AE5B4 @ case 2
	.4byte .L080AE5BC @ case 3
	.4byte .L080AE5C4 @ case 4
.L080AE5A4:
	adds r0, r7, #0
	bl func_080B0BB8
	b .L080AE5CA
.L080AE5AC:
	adds r0, r7, #0
	bl func_080B1B40
	b .L080AE5CA
.L080AE5B4:
	adds r0, r7, #0
	bl func_080B1D34
	b .L080AE5CA
.L080AE5BC:
	adds r0, r7, #0
	bl func_080B1D94
	b .L080AE5CA
.L080AE5C4:
	adds r0, r7, #0
	bl func_080B2114
.L080AE5CA:
	ldr r1, .L080AE6B4 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #5
	bne .L080AE562
.L080AE5D4:
	ldr r0, .L080AE6B8 @ =0x0000043C
	adds r4, r7, r0
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080AE602
	ldr r1, .L080AE6BC @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080AE602:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	bge .L080AE67A
	movs r1, #0x83
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x20]
	movs r0, #0x81
	lsls r0, r0, #4
	adds r0, r0, r7
	mov sl, r0
.L080AE61E:
	adds r0, r7, #0
	bl func_080087C8
	ldr r1, [sp, #0x20]
	ldr r1, [r1]
	mov sb, r1
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
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	adds r0, r7, #0
	bl func_080AF814
	ldr r1, .L080AE6B8 @ =0x0000043C
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080AE61E
.L080AE67A:
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x28]
	str r0, [r1, #4]
	ldr r1, [sp, #0x24]
	str r0, [r1]
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq .L080AE6A0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AE6A0:
	ldr r0, [sp, #0x1c]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AE6B4: .4byte 0x00000838
.L080AE6B8: .4byte 0x0000043C
.L080AE6BC: .4byte 0x00000889

	thumb_func_start func_080AE6C0
func_080AE6C0: @ 0x080AE6C0
	push {lr}
	bl func_08008724
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AE6CC
func_080AE6CC: @ 0x080AE6CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, .L080AE7BC @ =0x00000888
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x89
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8a
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7C0 @ =0x000008A8
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7C4 @ =0x000008B8
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7C8 @ =0x000008C8
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8d
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7CC @ =0x000008D8
	adds r5, r5, r0
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080AE7BC: .4byte 0x00000888
.L080AE7C0: .4byte 0x000008A8
.L080AE7C4: .4byte 0x000008B8
.L080AE7C8: .4byte 0x000008C8
.L080AE7CC: .4byte 0x000008D8

	thumb_func_start func_080AE7D0
func_080AE7D0: @ 0x080AE7D0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	ldr r1, .L080AE870 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, .L080AE874 @ =0x0600F000
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	ldr r4, .L080AE878 @ =0x0600F800
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_08008EB8
	ldr r0, .L080AE87C @ =gUnk_0872FC34
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L080AE880 @ =gUnk_0872FE6C
	mov r1, r8
	bl Unpack
	ldr r0, .L080AE884 @ =gUnk_0872FEF8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080AE888 @ =gUnk_08731940
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	mov r0, sb
	bl func_08008918
	mov r2, sp
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	mov r0, sb
	bl func_08008918
	mov r2, sp
	ldr r3, .L080AE88C @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sb
	bl func_08008918
	mov r2, sp
	ldr r3, .L080AE890 @ =0x00001F42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080AE870: .4byte 0x06007FE0
.L080AE874: .4byte 0x0600F000
.L080AE878: .4byte 0x0600F800
.L080AE87C: .4byte gUnk_0872FC34
.L080AE880: .4byte gUnk_0872FE6C
.L080AE884: .4byte gUnk_0872FEF8
.L080AE888: .4byte gUnk_08731940
.L080AE88C: .4byte 0x00001E41
.L080AE890: .4byte 0x00001F42

	thumb_func_start func_080AE894
func_080AE894: @ 0x080AE894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xdc
	mov sb, r0
	ldr r0, .L080AE9B8 @ =gUnk_080F9F78
	ldr r0, [r0]
	ldr r1, .L080AE9BC @ =0x050003C0
	movs r2, #0x20
	bl func_08008E64
	mov r0, sb
	bl func_080AE6CC
	ldr r1, .L080AE9C0 @ =0x0500024A
	ldr r0, .L080AE9C4 @ =0x050003C2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, .L080AE9C8 @ =0x050003C4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	ldr r2, .L080AE9CC @ =0x0000675E
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	ldr r0, .L080AE9D0 @ =0x0000090B
	add r0, sb
	ldrb r0, [r0]
	add r1, sp, #0x10
	movs r2, #0
	bl func_0804EC84
	ldr r1, .L080AE9D4 @ =0x05000240
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, .L080AE9D8 @ =0x00000303
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, .L080AE9DC @ =0x00004F15
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	ldr r6, .L080AE9E0 @ =0x00007FFF
	adds r0, r6, #0
	strh r0, [r1]
	adds r1, #2
	ldr r7, .L080AE9E4 @ =0x000052F8
	adds r0, r7, #0
	strh r0, [r1]
	add r0, sp, #0x6c
	movs r5, #4
	movs r6, #2
	movs r1, #0
	mov r8, r1
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x6c]
	mov r4, sb
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	movs r2, #1
	mov sl, r2
	add r0, sp, #0x70
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x70]
	add r3, sp, #0x10
	str r3, [sp]
	mov r5, r8
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	ldr r0, .L080AE9E8 @ =0x00000888
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r6, .L080AE9EC @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x14
	adds r1, r4, #0
	bl func_08008F0C
	add r7, sp, #0x14
	mov r8, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080AE9F0
	cmp r1, #0
	beq .L080AE996
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AE996:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r5, sp
	adds r5, #0x7c
	str r5, [sp, #0xc0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0xb4]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0xbc]
	b .L080AEACE
	.align 2, 0
.L080AE9B8: .4byte gUnk_080F9F78
.L080AE9BC: .4byte 0x050003C0
.L080AE9C0: .4byte 0x0500024A
.L080AE9C4: .4byte 0x050003C2
.L080AE9C8: .4byte 0x050003C4
.L080AE9CC: .4byte 0x0000675E
.L080AE9D0: .4byte 0x0000090B
.L080AE9D4: .4byte 0x05000240
.L080AE9D8: .4byte 0x00000303
.L080AE9DC: .4byte 0x00004F15
.L080AE9E0: .4byte 0x00007FFF
.L080AE9E4: .4byte 0x000052F8
.L080AE9E8: .4byte 0x00000888
.L080AE9EC: .4byte 0x06010000
.L080AE9F0:
	str r1, [sp, #0xd4]
	mov r1, sl
	str r1, [sp, #0x78]
	ldr r0, [r5]
	ldr r2, [sp, #0xd4]
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080AEA0A
	adds r0, r1, #0
.L080AEA0A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AEA28
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080AEA2C
	mov r0, sl
	bl func_080D3BC0
	b .L080AEA2C
.L080AEA28:
	movs r0, #0
	mov sl, r0
.L080AEA2C:
	adds r6, r0, #0
	str r6, [sp, #0xd8]
	ldr r2, [r5]
	adds r3, r6, #0
	mov r4, sp
	adds r4, #0x7c
	str r4, [sp, #0xc0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0xb4]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0xbc]
	ldr r1, [sp, #0xd4]
	cmp r2, r1
	beq .L080AEA6C
.L080AEA52:
	cmp r3, #0
	beq .L080AEA62
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEA62:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AEA52
.L080AEA6C:
	adds r6, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L080AEA88
	cmp r6, #0
	beq .L080AEA84
	adds r0, r6, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEA84:
	adds r6, #0x10
	b .L080AEAAA
.L080AEA88:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080AEAA8
.L080AEA90:
	cmp r2, #0
	beq .L080AEAA0
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEAA0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AEA90
.L080AEAA8:
	adds r6, r2, #0
.L080AEAAA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AEABA
.L080AEAB4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AEAB4
.L080AEABA:
	cmp r0, #0
	beq .L080AEAC2
	bl free
.L080AEAC2:
	ldr r0, [sp, #0xd8]
	add r0, sl
	ldr r7, [sp, #0xd8]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080AEACE:
	movs r4, #0x88
	lsls r4, r4, #3
	add r4, sb
	ldr r0, .L080AEC10 @ =0x00000888
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r3, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xc0]
	movs r1, #0xd0
	movs r2, #8
	bl func_0804EA94
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	str r0, [r4]
	str r1, [r4, #4]
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080AEC14 @ =0x0000041C
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x96
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080AEB2A
	bl __builtin_delete
.L080AEB2A:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	ldr r6, .L080AEC18 @ =0x000004B4
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080AEB58
	bl __builtin_delete
.L080AEB58:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r0, [r6]
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r6]
	strh r1, [r0, #2]
	ldr r4, [r6]
	movs r5, #0x89
	lsls r5, r5, #4
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #3
	strh r0, [r1, #4]
	movs r4, #0x97
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x24
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0xb4]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0xb4]
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x98
	lsls r4, r4, #3
	add r4, sb
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AEBDE
	ldrh r3, [r4, #4]
.L080AEBDE:
	lsls r2, r2, #5
	ldr r4, .L080AEC1C @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AEC20
	cmp r1, #0
	beq .L080AEC08
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEC08:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AECE6
	.align 2, 0
.L080AEC10: .4byte 0x00000888
.L080AEC14: .4byte 0x0000041C
.L080AEC18: .4byte 0x000004B4
.L080AEC1C: .4byte 0x06010000
.L080AEC20:
	str r1, [sp, #0xd4]
	mov r4, r8
	str r4, [sp, #0x88]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x84]
	add r1, sp, #0x88
	add r0, sp, #0x84
	cmp r4, #1
	bhs .L080AEC3A
	adds r0, r1, #0
.L080AEC3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AEC58
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AEC5C
	mov r0, r8
	bl func_080D3BC0
	b .L080AEC5C
.L080AEC58:
	movs r0, #0
	mov r8, r0
.L080AEC5C:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AEC84
.L080AEC6A:
	cmp r3, #0
	beq .L080AEC7A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEC7A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AEC6A
.L080AEC84:
	adds r5, r3, #0
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne .L080AECA0
	cmp r5, #0
	beq .L080AEC9C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEC9C:
	adds r5, #0x10
	b .L080AECC2
.L080AECA0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AECC0
.L080AECA8:
	cmp r2, #0
	beq .L080AECB8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AECB8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AECA8
.L080AECC0:
	adds r5, r2, #0
.L080AECC2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AECD2
.L080AECCC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AECCC
.L080AECD2:
	cmp r0, #0
	beq .L080AECDA
	bl free
.L080AECDA:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AECE6:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x99
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AED00
	ldrh r3, [r2, #4]
.L080AED00:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080AED30 @ =0x05000260
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AED34
	cmp r1, #0
	beq .L080AED26
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AED26:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AEDFC
	.align 2, 0
.L080AED30: .4byte 0x05000260
.L080AED34:
	str r1, [sp, #0xd4]
	movs r0, #1
	add r1, sp, #0x90
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x8c]
	ldr r0, [r1]
	add r2, sp, #0x8c
	cmp r4, r0
	bhs .L080AED50
	adds r2, r1, #0
.L080AED50:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AED6E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AED72
	mov r0, r8
	bl func_080D3BC0
	b .L080AED72
.L080AED6E:
	movs r0, #0
	mov r8, r0
.L080AED72:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AED9A
.L080AED80:
	cmp r3, #0
	beq .L080AED90
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AED90:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AED80
.L080AED9A:
	adds r5, r3, #0
	ldr r1, [sp, #0x90]
	cmp r1, #1
	bne .L080AEDB6
	cmp r5, #0
	beq .L080AEDB2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEDB2:
	adds r5, #0x10
	b .L080AEDD8
.L080AEDB6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AEDD6
.L080AEDBE:
	cmp r2, #0
	beq .L080AEDCE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEDCE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AEDBE
.L080AEDD6:
	adds r5, r2, #0
.L080AEDD8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AEDE8
.L080AEDE2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AEDE2
.L080AEDE8:
	cmp r0, #0
	beq .L080AEDF0
	bl free
.L080AEDF0:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AEDFC:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080AEF1C @ =0x00000424
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x9b
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080AEE24
	bl __builtin_delete
.L080AEE24:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	movs r5, #0
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	ldr r6, .L080AEF20 @ =0x000004DC
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080AEE54
	bl __builtin_delete
.L080AEE54:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r6]
	strh r5, [r0, #2]
	ldr r4, [r6]
	movs r5, #0x8a
	lsls r5, r5, #4
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #4
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #8]
	ldr r0, [r6]
	strb r1, [r0, #0x18]
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x14
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x14
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x14
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x9d
	lsls r4, r4, #3
	add r4, sb
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AEEEA
	ldrh r3, [r4, #4]
.L080AEEEA:
	lsls r2, r2, #5
	ldr r4, .L080AEF24 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AEF28
	cmp r1, #0
	beq .L080AEF14
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEF14:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AEFF0
	.align 2, 0
.L080AEF1C: .4byte 0x00000424
.L080AEF20: .4byte 0x000004DC
.L080AEF24: .4byte 0x06010000
.L080AEF28:
	str r1, [sp, #0xd4]
	add r1, sp, #0x98
	mov r4, r8
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AEF44
	adds r0, r1, #0
.L080AEF44:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AEF62
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AEF66
	mov r0, r8
	bl func_080D3BC0
	b .L080AEF66
.L080AEF62:
	movs r0, #0
	mov r8, r0
.L080AEF66:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AEF8E
.L080AEF74:
	cmp r3, #0
	beq .L080AEF84
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEF84:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AEF74
.L080AEF8E:
	adds r5, r3, #0
	ldr r1, [sp, #0x98]
	cmp r1, #1
	bne .L080AEFAA
	cmp r5, #0
	beq .L080AEFA6
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEFA6:
	adds r5, #0x10
	b .L080AEFCC
.L080AEFAA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AEFCA
.L080AEFB2:
	cmp r2, #0
	beq .L080AEFC2
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEFC2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AEFB2
.L080AEFCA:
	adds r5, r2, #0
.L080AEFCC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AEFDC
.L080AEFD6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AEFD6
.L080AEFDC:
	cmp r0, #0
	beq .L080AEFE4
	bl free
.L080AEFE4:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AEFF0:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x9e
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AF00A
	ldrh r3, [r2, #4]
.L080AF00A:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080AF038 @ =0x05000280
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AF03C
	cmp r1, #0
	beq .L080AF030
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF030:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AF104
	.align 2, 0
.L080AF038: .4byte 0x05000280
.L080AF03C:
	str r1, [sp, #0xd4]
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AF058
	adds r0, r1, #0
.L080AF058:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AF076
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AF07A
	mov r0, r8
	bl func_080D3BC0
	b .L080AF07A
.L080AF076:
	movs r0, #0
	mov r8, r0
.L080AF07A:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AF0A2
.L080AF088:
	cmp r3, #0
	beq .L080AF098
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF098:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AF088
.L080AF0A2:
	adds r5, r3, #0
	ldr r1, [sp, #0xa0]
	cmp r1, #1
	bne .L080AF0BE
	cmp r5, #0
	beq .L080AF0BA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF0BA:
	adds r5, #0x10
	b .L080AF0E0
.L080AF0BE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AF0DE
.L080AF0C6:
	cmp r2, #0
	beq .L080AF0D6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF0D6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AF0C6
.L080AF0DE:
	adds r5, r2, #0
.L080AF0E0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AF0F0
.L080AF0EA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AF0EA
.L080AF0F0:
	cmp r0, #0
	beq .L080AF0F8
	bl free
.L080AF0F8:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AF104:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x85
	lsls r1, r1, #3
	add r1, sb
	mov r8, r1
	ldr r1, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	movs r2, #0
	adds r3, r7, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r6, #0xa0
	lsls r6, r6, #3
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080AF132
	bl __builtin_delete
.L080AF132:
	str r4, [r6]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r5, .L080AF258 @ =0x00000504
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF162
	bl __builtin_delete
.L080AF162:
	str r4, [r5]
	ldr r0, [r6]
	strh r7, [r0, #0x10]
	ldr r1, [r5]
	movs r0, #0x8e
	lsls r0, r0, #4
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #0x40
	strh r0, [r1, #2]
	ldr r4, [r5]
	movs r0, #0x8b
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #1
	strh r1, [r0, #8]
	ldr r0, [r5]
	strb r1, [r0, #0x18]
	movs r0, #0x14
	bl __builtin_new
	mov r2, r8
	ldr r1, [r2]
	movs r2, #0
	adds r3, r7, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r5, #0xa5
	lsls r5, r5, #3
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF1BE
	bl __builtin_delete
.L080AF1BE:
	str r4, [r5]
	ldr r1, .L080AF25C @ =0x0000091A
	adds r0, r4, #0
	bl func_0805E860
	movs r4, #0xa6
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x14
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x14
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x14
	ldm r0!, {r3, r5, r6}
	stm r4!, {r3, r5, r6}
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r5}
	stm r4!, {r3, r5}
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xa7
	lsls r4, r4, #3
	add r4, sb
	ldr r7, [r4]
	ldr r0, .L080AF260 @ =0x000008A8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AF224
	ldrh r3, [r4, #4]
.L080AF224:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r0, .L080AF264 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x14
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AF268
	cmp r1, #0
	beq .L080AF250
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF250:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AF32C
	.align 2, 0
.L080AF258: .4byte 0x00000504
.L080AF25C: .4byte 0x0000091A
.L080AF260: .4byte 0x000008A8
.L080AF264: .4byte 0x06010000
.L080AF268:
	str r1, [sp, #0xd4]
	add r1, sp, #0xa8
	movs r5, #1
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0xd4]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AF284
	adds r0, r1, #0
.L080AF284:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AF2A2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AF2A6
	mov r0, r8
	bl func_080D3BC0
	b .L080AF2A6
.L080AF2A2:
	movs r0, #0
	mov r8, r0
.L080AF2A6:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080AF2C4
.L080AF2B0:
	cmp r3, #0
	beq .L080AF2C0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF2C0:
	adds r2, #0x10
	adds r3, #0x10
.L080AF2C4:
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AF2B0
	adds r5, r3, #0
	ldr r1, [sp, #0xa8]
	cmp r1, #1
	bne .L080AF2E6
	cmp r5, #0
	beq .L080AF2E2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF2E2:
	adds r5, #0x10
	b .L080AF308
.L080AF2E6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AF306
.L080AF2EE:
	cmp r2, #0
	beq .L080AF2FE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF2FE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AF2EE
.L080AF306:
	adds r5, r2, #0
.L080AF308:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AF318
.L080AF312:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AF312
.L080AF318:
	cmp r0, #0
	beq .L080AF320
	bl free
.L080AF320:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AF32C:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xa8
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AF346
	ldrh r3, [r2, #4]
.L080AF346:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080AF374 @ =0x050003A0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AF378
	cmp r1, #0
	beq .L080AF36C
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF36C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AF440
	.align 2, 0
.L080AF374: .4byte 0x050003A0
.L080AF378:
	str r1, [sp, #0xd4]
	movs r0, #1
	add r1, sp, #0xb0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AF394
	adds r0, r1, #0
.L080AF394:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AF3B2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AF3B6
	mov r0, r8
	bl func_080D3BC0
	b .L080AF3B6
.L080AF3B2:
	movs r0, #0
	mov r8, r0
.L080AF3B6:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AF3DE
.L080AF3C4:
	cmp r3, #0
	beq .L080AF3D4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF3D4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AF3C4
.L080AF3DE:
	adds r5, r3, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #1
	bne .L080AF3FA
	cmp r5, #0
	beq .L080AF3F6
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF3F6:
	adds r5, #0x10
	b .L080AF41C
.L080AF3FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AF41A
.L080AF402:
	cmp r2, #0
	beq .L080AF412
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF412:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AF402
.L080AF41A:
	adds r5, r2, #0
.L080AF41C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AF42C
.L080AF426:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AF426
.L080AF42C:
	cmp r0, #0
	beq .L080AF434
	bl free
.L080AF434:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AF440:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r5, .L080AF7E8 @ =0x0000052C
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF46E
	bl __builtin_delete
.L080AF46E:
	str r4, [r5]
	ldr r0, .L080AF7EC @ =0x000008A8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #0xd
	strh r0, [r1, #4]
	ldr r1, [r5]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	ldr r0, [r5]
	strb r2, [r0, #0x18]
	ldr r1, [r5]
	movs r0, #0x40
	strh r0, [r1, #2]
	add r1, sp, #0x14
	ldr r0, .L080AF7F0 @ =gUnk_0810752C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	movs r7, #0
	mov sl, r7
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r5, #0xdc
	lsls r5, r5, #3
	add r5, sb
	ldr r7, .L080AF7EC @ =0x000008A8
	add r7, sb
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0xd0]
.L080AF4BA:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	str r6, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x10]
	strb r2, [r4, #0x11]
	str r6, [r4, #0x14]
	strb r2, [r4, #0x18]
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF4E2
	bl __builtin_delete
.L080AF4E2:
	str r4, [r5]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #0xd
	strh r0, [r1, #4]
	ldr r1, [r5]
	movs r0, #1
	strh r0, [r1, #8]
	ldr r0, [r5]
	movs r3, #1
	strb r3, [r0, #0x18]
	ldm r5!, {r1}
	ldr r4, [sp, #0xd0]
	ldm r4!, {r0}
	str r4, [sp, #0xd0]
	strh r0, [r1]
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	ble .L080AF4BA
	ldr r0, [sp, #0xb8]
	ldr r1, .L080AF7F4 @ =gUnk_08107540
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r5, #0
	mov sl, r5
	mov r6, sb
	str r6, [sp, #0xcc]
	movs r7, #0xaa
	lsls r7, r7, #3
	add r7, sb
	mov r8, r7
.L080AF538:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080AF7F8 @ =0x0000042C
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	mov r0, sl
	lsls r6, r0, #2
	mov r1, r8
	ldr r0, [r1]
	cmp r4, r0
	beq .L080AF560
	bl __builtin_delete
.L080AF560:
	mov r2, r8
	str r4, [r2]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r3, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	movs r5, #0
	str r5, [r4, #0xc]
	movs r7, #0
	strb r7, [r4, #0x10]
	movs r0, #0
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	mov r1, sb
	adds r5, r6, r1
	ldr r7, .L080AF7FC @ =0x00000564
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF59A
	bl __builtin_delete
.L080AF59A:
	str r4, [r5]
	ldr r2, [sp, #0xcc]
	adds r0, r2, r7
	ldr r2, [r0]
	mov r3, sl
	lsls r1, r3, #3
	ldr r4, [sp, #0xb8]
	adds r0, r4, r1
	ldr r0, [r0]
	strh r0, [r2]
	mov r5, sb
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r2, [r0]
	ldr r0, [sp, #0xbc]
	adds r1, r0, r1
	ldr r0, [r1]
	strh r0, [r2, #2]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r0, .L080AF800 @ =0x000008B8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	strh r0, [r4, #6]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #9
	strh r0, [r1, #4]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	strb r1, [r0, #0x18]
	ldr r2, [sp, #0xcc]
	adds r2, #4
	str r2, [sp, #0xcc]
	movs r3, #4
	add r8, r3
	movs r4, #1
	add sl, r4
	mov r5, sl
	cmp r5, #4
	ble .L080AF538
	movs r6, #0
	mov sl, r6
	mov r7, sb
	str r7, [sp, #0xc8]
	movs r0, #0xc3
	lsls r0, r0, #3
	add r0, sb
	mov r8, r0
.L080AF614:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x85
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	mov r1, sl
	lsls r6, r1, #2
	mov r2, r8
	ldr r0, [r2]
	cmp r4, r0
	beq .L080AF63E
	bl __builtin_delete
.L080AF63E:
	mov r3, r8
	str r4, [r3]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r5, #0
	strb r5, [r4, #0x10]
	strb r5, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r5, [r4, #0x18]
	mov r7, sb
	adds r5, r6, r7
	ldr r7, .L080AF804 @ =0x0000062C
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF674
	bl __builtin_delete
.L080AF674:
	str r4, [r5]
	ldr r1, [sp, #0xc8]
	movs r2, #0xc3
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r0, #0x10]
	mov r4, sb
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x14
	ldr r0, [r0]
	strh r0, [r1]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r0, .L080AF808 @ =0x000008E1
	add r0, sb
	add r0, sl
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r4, [r0]
	movs r0, #0x8c
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	strh r0, [r4, #6]
	mov r5, sb
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0xa
	strh r0, [r1, #4]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r0, [r0]
	movs r6, #1
	strb r6, [r0, #0x18]
	ldr r7, [sp, #0xc8]
	adds r7, #4
	str r7, [sp, #0xc8]
	movs r0, #4
	add r8, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #4
	ble .L080AF614
	movs r3, #0
	mov sl, r3
	mov r4, sb
	str r4, [sp, #0xc4]
	ldr r5, .L080AF80C @ =0x000006F4
	add r5, sb
	mov r8, r5
.L080AF700:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	mov r7, sl
	lsls r6, r7, #2
	mov r1, r8
	ldr r0, [r1]
	cmp r4, r0
	beq .L080AF72A
	bl __builtin_delete
.L080AF72A:
	mov r2, r8
	str r4, [r2]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r3, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	movs r5, #0
	str r5, [r4, #0xc]
	movs r7, #0
	strb r7, [r4, #0x10]
	movs r0, #0
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	mov r1, sb
	adds r5, r6, r1
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF766
	bl __builtin_delete
.L080AF766:
	str r4, [r5]
	ldr r2, [sp, #0xc4]
	adds r0, r2, r7
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x14
	ldr r0, [r0]
	subs r0, #0x11
	strh r0, [r1]
	mov r3, sb
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r0, .L080AF808 @ =0x000008E1
	add r0, sb
	add r0, sl
	ldrb r0, [r0]
	subs r0, #0x18
	strh r0, [r1, #2]
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r0, .L080AF810 @ =0x000008C8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	strh r0, [r4, #6]
	mov r4, sb
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0xb
	strh r0, [r1, #4]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r0, [r0]
	movs r5, #1
	strb r5, [r0, #0x18]
	ldr r6, [sp, #0xc4]
	adds r6, #4
	str r6, [sp, #0xc4]
	movs r7, #4
	add r8, r7
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	ble .L080AF700
	add sp, #0xdc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AF7E8: .4byte 0x0000052C
.L080AF7EC: .4byte 0x000008A8
.L080AF7F0: .4byte gUnk_0810752C
.L080AF7F4: .4byte gUnk_08107540
.L080AF7F8: .4byte 0x0000042C
.L080AF7FC: .4byte 0x00000564
.L080AF800: .4byte 0x000008B8
.L080AF804: .4byte 0x0000062C
.L080AF808: .4byte 0x000008E1
.L080AF80C: .4byte 0x000006F4
.L080AF810: .4byte 0x000008C8

	thumb_func_start func_080AF814
func_080AF814: @ 0x080AF814
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r7, r0, #0
	ldr r1, .L080AFA28 @ =0x0000092A
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080AF8AA
	movs r2, #0x89
	lsls r2, r2, #3
	adds r4, r7, r2
	movs r3, #2
	str r3, [sp, #0x60]
.L080AF836:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080AF856
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [r4]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080AF856:
	adds r4, #8
	ldr r5, [sp, #0x60]
	subs r5, #1
	str r5, [sp, #0x60]
	cmp r5, #0
	bge .L080AF836
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r6, #0x8d
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080AF87A
	ldrh r2, [r0, #4]
.L080AF87A:
	ldr r3, .L080AFA2C @ =0x00000464
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r5, #0x92
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080AF89E
	ldrh r2, [r0, #4]
.L080AF89E:
	ldr r6, .L080AFA30 @ =0x0000048C
	adds r0, r7, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080AF8AA:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r7, r0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080AF8D4
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r1]
	str r1, [r0]
	ldr r4, .L080AFA34 @ =0x00000444
	adds r1, r7, r4
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080AF8D4:
	ldr r5, .L080AFA38 @ =0x0000083C
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #1
	beq .L080AF8E8
	ldr r6, .L080AFA3C @ =0x00000838
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #2
	bne .L080AF90C
.L080AF8E8:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080AF900
	ldrh r2, [r0, #4]
.L080AF900:
	ldr r3, .L080AFA40 @ =0x000004B4
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080AF90C:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r5, #0x9c
	lsls r5, r5, #3
	adds r3, r7, r5
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080AF926
	ldrh r2, [r3, #4]
.L080AF926:
	ldr r6, .L080AFA44 @ =0x000004DC
	adds r0, r7, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r1, .L080AFA48 @ =0x00000504
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r0, r7, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r3, .L080AFA3C @ =0x00000838
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080AF956
	ldr r4, .L080AFA38 @ =0x0000083C
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080AF97E
.L080AF956:
	ldr r6, .L080AFA4C @ =0x00000929
	adds r5, r7, r6
	ldrb r0, [r5]
	cmp r0, #0
	beq .L080AF97E
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	bl func_080B3990
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r0, #0
	strb r0, [r5]
.L080AF97E:
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r5, r7, r2
	ldr r0, [r5]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080AF992
	b .L080AFC3E
.L080AF992:
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r5, r6}
	stm r4!, {r1, r5, r6}
	ldm r0!, {r2, r3, r5}
	stm r4!, {r2, r3, r5}
	ldm r0!, {r1, r6}
	stm r4!, {r1, r6}
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r3, [r4]
	mov r8, r3
	movs r6, #0x8b
	lsls r6, r6, #4
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AF9F2
	ldrh r3, [r4, #4]
.L080AF9F2:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r0, .L080AFA50 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	mov r1, r8
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080AFA54
	cmp r1, #0
	beq .L080AFA1C
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFA1C:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080AFB22
	.align 2, 0
.L080AFA28: .4byte 0x0000092A
.L080AFA2C: .4byte 0x00000464
.L080AFA30: .4byte 0x0000048C
.L080AFA34: .4byte 0x00000444
.L080AFA38: .4byte 0x0000083C
.L080AFA3C: .4byte 0x00000838
.L080AFA40: .4byte 0x000004B4
.L080AFA44: .4byte 0x000004DC
.L080AFA48: .4byte 0x00000504
.L080AFA4C: .4byte 0x00000929
.L080AFA50: .4byte 0x06010000
.L080AFA54:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r6, [sp, #0x90]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080AFA6E
	adds r0, r1, #0
.L080AFA6E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFA8C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFA90
	mov r0, sb
	bl func_080D3BC0
	b .L080AFA90
.L080AFA8C:
	movs r0, #0
	mov sb, r0
.L080AFA90:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r0, [sp, #0x90]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080AFAB6
.L080AFA9E:
	cmp r3, #0
	beq .L080AFAAE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFAAE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080AFA9E
.L080AFAB6:
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080AFAD2
	cmp r5, #0
	beq .L080AFACE
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFACE:
	adds r5, #0x10
	b .L080AFAFA
.L080AFAD2:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFAF8
.L080AFADA:
	cmp r2, #0
	beq .L080AFAEA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFAEA:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080AFADA
.L080AFAF8:
	adds r5, r2, #0
.L080AFAFA:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFB0C
.L080AFB06:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFB06
.L080AFB0C:
	cmp r0, #0
	beq .L080AFB14
	bl free
.L080AFB14:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080AFB22:
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xa3
	lsls r3, r3, #3
	adds r2, r7, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AFB3C
	ldrh r3, [r2, #4]
.L080AFB3C:
	str r4, [sp, #0x90]
	mov r0, sp
	ldr r2, .L080AFB6C @ =0x050002A0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080AFB70
	cmp r1, #0
	beq .L080AFB60
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFB60:
	ldr r1, [sp, #0x90]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080AFC3E
	.align 2, 0
.L080AFB6C: .4byte 0x050002A0
.L080AFB70:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x90]
	ldr r0, [r2]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080AFB8A
	adds r0, r1, #0
.L080AFB8A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFBA8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFBAC
	mov r0, sb
	bl func_080D3BC0
	b .L080AFBAC
.L080AFBA8:
	movs r0, #0
	mov sb, r0
.L080AFBAC:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080AFBD2
.L080AFBBA:
	cmp r3, #0
	beq .L080AFBCA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFBCA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080AFBBA
.L080AFBD2:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080AFBEE
	cmp r5, #0
	beq .L080AFBEA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFBEA:
	adds r5, #0x10
	b .L080AFC16
.L080AFBEE:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFC14
.L080AFBF6:
	cmp r2, #0
	beq .L080AFC06
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFC06:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080AFBF6
.L080AFC14:
	adds r5, r2, #0
.L080AFC16:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFC28
.L080AFC22:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFC22
.L080AFC28:
	cmp r0, #0
	beq .L080AFC30
	bl free
.L080AFC30:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080AFC3E:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r5, #0xa1
	lsls r5, r5, #3
	adds r3, r7, r5
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080AFC58
	ldrh r2, [r3, #4]
.L080AFC58:
	ldr r6, .L080AFD68 @ =0x00000504
	adds r0, r7, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	movs r0, #0
	str r0, [sp, #0x60]
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x80]
	movs r2, #0
	str r2, [sp, #0x84]
	movs r3, #0
	str r3, [sp, #0x88]
	ldr r4, .L080AFD6C @ =0x0000071C
	adds r4, r7, r4
	str r4, [sp, #0x8c]
.L080AFC7E:
	ldr r5, [sp, #0x80]
	ldr r1, [r5]
	ldr r6, .L080AFD70 @ =0x000008E1
	adds r0, r7, r6
	ldr r2, [sp, #0x60]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #0x18
	strh r0, [r1, #2]
	ldr r3, .L080AFD74 @ =0x0000085C
	adds r0, r7, r3
	ldr r4, [sp, #0x84]
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080AFCA0
	b .L080AFF9C
.L080AFCA0:
	ldr r5, .L080AFD78 @ =0x0000091F
	adds r0, r7, r5
	adds r6, r0, r2
	ldrb r0, [r6]
	adds r5, r4, r7
	cmp r0, #0
	beq .L080AFCCC
	ldr r1, .L080AFD7C @ =0x000006F4
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x60]
	bl func_080B39F4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r2, #0
	strb r2, [r6]
.L080AFCCC:
	ldr r3, .L080AFD7C @ =0x000006F4
	adds r4, r5, r3
	ldr r0, [r4]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080AFCDE
	b .L080AFF70
.L080AFCDE:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x8c]
	mov r0, sp
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r0, [sp, #0x8c]
	ldr r5, [r0, #8]
	ldr r1, .L080AFD80 @ =0x000008C8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x84]
	adds r2, r3, r0
	ldr r6, [sp, #0x8c]
	ldr r0, [r6, #8]
	movs r3, #0
	cmp r0, #0
	beq .L080AFD36
	ldrh r3, [r6, #0xc]
.L080AFD36:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080AFD84 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	adds r1, r5, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AFD88
	cmp r1, #0
	beq .L080AFD60
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFD60:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AFE52
	.align 2, 0
.L080AFD68: .4byte 0x00000504
.L080AFD6C: .4byte 0x0000071C
.L080AFD70: .4byte 0x000008E1
.L080AFD74: .4byte 0x0000085C
.L080AFD78: .4byte 0x0000091F
.L080AFD7C: .4byte 0x000006F4
.L080AFD80: .4byte 0x000008C8
.L080AFD84: .4byte 0x06010000
.L080AFD88:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080AFDA0
	adds r0, r1, #0
.L080AFDA0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFDBE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFDC2
	mov r0, sb
	bl func_080D3BC0
	b .L080AFDC2
.L080AFDBE:
	movs r0, #0
	mov sb, r0
.L080AFDC2:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080AFDEA
.L080AFDCE:
	mov r5, ip
	cmp r5, #0
	beq .L080AFDE0
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFDE0:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080AFDCE
.L080AFDEA:
	mov r5, ip
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080AFE06
	cmp r5, #0
	beq .L080AFE02
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFE02:
	adds r5, #0x10
	b .L080AFE2E
.L080AFE06:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFE2C
.L080AFE0E:
	cmp r2, #0
	beq .L080AFE1E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFE1E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080AFE0E
.L080AFE2C:
	adds r5, r2, #0
.L080AFE2E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFE3E
.L080AFE38:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFE38
.L080AFE3E:
	cmp r0, #0
	beq .L080AFE46
	bl free
.L080AFE46:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AFE52:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r2, [sp, #0x88]
	adds r0, r2, r7
	ldr r1, .L080AFEA0 @ =0x0000072C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080AFE72
	ldrh r3, [r2, #4]
.L080AFE72:
	adds r6, r5, #0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, .L080AFEA4 @ =0x05000360
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AFEA8
	cmp r1, #0
	beq .L080AFE98
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFE98:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AFF70
	.align 2, 0
.L080AFEA0: .4byte 0x0000072C
.L080AFEA4: .4byte 0x05000360
.L080AFEA8:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080AFEC0
	adds r0, r1, #0
.L080AFEC0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFEDE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFEE2
	mov r0, sb
	bl func_080D3BC0
	b .L080AFEE2
.L080AFEDE:
	movs r0, #0
	mov sb, r0
.L080AFEE2:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080AFF08
.L080AFEEE:
	mov r0, ip
	cmp r0, #0
	beq .L080AFEFE
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFEFE:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080AFEEE
.L080AFF08:
	mov r5, ip
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080AFF24
	cmp r5, #0
	beq .L080AFF20
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFF20:
	adds r5, #0x10
	b .L080AFF4C
.L080AFF24:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFF4A
.L080AFF2C:
	cmp r2, #0
	beq .L080AFF3C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFF3C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080AFF2C
.L080AFF4A:
	adds r5, r2, #0
.L080AFF4C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFF5C
.L080AFF56:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFF56
.L080AFF5C:
	cmp r0, #0
	beq .L080AFF64
	bl free
.L080AFF64:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AFF70:
	adds r0, r7, #0
	bl func_08008920
	adds r5, r0, #0
	ldr r2, [sp, #0x88]
	adds r0, r2, r7
	ldr r1, .L080B00C8 @ =0x0000071C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r3, r2, r7
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080AFF90
	ldrh r2, [r3, #4]
.L080AFF90:
	ldr r6, [sp, #0x80]
	ldr r3, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080AFF9C:
	ldr r0, [sp, #0x80]
	adds r0, #4
	str r0, [sp, #0x80]
	ldr r1, [sp, #0x84]
	adds r1, #4
	str r1, [sp, #0x84]
	ldr r2, [sp, #0x88]
	adds r2, #0x20
	str r2, [sp, #0x88]
	ldr r3, [sp, #0x8c]
	adds r3, #0x20
	str r3, [sp, #0x8c]
	ldr r4, [sp, #0x60]
	adds r4, #1
	str r4, [sp, #0x60]
	cmp r4, #4
	bgt .L080AFFC0
	b .L080AFC7E
.L080AFFC0:
	movs r5, #0
	str r5, [sp, #0x60]
	ldr r6, .L080B00CC @ =0x0000062C
	adds r6, r7, r6
	str r6, [sp, #0x70]
	movs r0, #0
	str r0, [sp, #0x74]
	movs r1, #0
	str r1, [sp, #0x78]
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r2, r7, r2
	str r2, [sp, #0x7c]
.L080AFFDA:
	ldr r3, [sp, #0x70]
	ldr r1, [r3]
	ldr r4, .L080B00D0 @ =0x000008E1
	adds r0, r7, r4
	ldr r5, [sp, #0x60]
	adds r0, r0, r5
	ldrb r0, [r0]
	strh r0, [r1, #2]
	ldr r6, .L080B00D4 @ =0x00000848
	adds r0, r7, r6
	ldr r1, [sp, #0x74]
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #5
	cmp r0, #1
	bhi .L080AFFFC
	b .L080B02F6
.L080AFFFC:
	ldr r2, .L080B00D8 @ =0x0000091A
	adds r0, r7, r2
	adds r6, r0, r5
	ldrb r0, [r6]
	adds r5, r1, r7
	cmp r0, #0
	beq .L080B002A
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x60]
	bl func_080B39D8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r4, #0
	strb r4, [r6]
.L080B002A:
	movs r6, #0xc3
	lsls r6, r6, #3
	adds r4, r5, r6
	ldr r0, [r4]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080B003E
	b .L080B02C8
.L080B003E:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x7c]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r6, [sp, #0x7c]
	ldr r5, [r6, #8]
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x74]
	adds r2, r3, r0
	ldr r0, [r6, #8]
	movs r3, #0
	cmp r0, #0
	beq .L080B0096
	ldrh r3, [r6, #0xc]
.L080B0096:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080B00DC @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r5, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B00E0
	cmp r1, #0
	beq .L080B00C0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B00C0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B01AA
	.align 2, 0
.L080B00C8: .4byte 0x0000071C
.L080B00CC: .4byte 0x0000062C
.L080B00D0: .4byte 0x000008E1
.L080B00D4: .4byte 0x00000848
.L080B00D8: .4byte 0x0000091A
.L080B00DC: .4byte 0x06010000
.L080B00E0:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x44]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r1, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L080B00F8
	adds r0, r1, #0
.L080B00F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B0116
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B011A
	mov r0, sb
	bl func_080D3BC0
	b .L080B011A
.L080B0116:
	movs r0, #0
	mov sb, r0
.L080B011A:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B0142
.L080B0126:
	mov r4, ip
	cmp r4, #0
	beq .L080B0138
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0138:
	adds r2, #0x10
	movs r5, #0x10
	add ip, r5
	cmp r2, r8
	bne .L080B0126
.L080B0142:
	mov r5, ip
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L080B015E
	cmp r5, #0
	beq .L080B015A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B015A:
	adds r5, #0x10
	b .L080B0186
.L080B015E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B0184
.L080B0166:
	cmp r2, #0
	beq .L080B0176
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0176:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B0166
.L080B0184:
	adds r5, r2, #0
.L080B0186:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B0196
.L080B0190:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B0190
.L080B0196:
	cmp r0, #0
	beq .L080B019E
	bl free
.L080B019E:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B01AA:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r2, [sp, #0x78]
	adds r0, r2, r7
	movs r1, #0xca
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B01CC
	ldrh r3, [r2, #4]
.L080B01CC:
	adds r6, r5, #0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, .L080B01FC @ =0x05000340
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B0200
	cmp r1, #0
	beq .L080B01F2
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B01F2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B02C8
	.align 2, 0
.L080B01FC: .4byte 0x05000340
.L080B0200:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L080B0218
	adds r0, r1, #0
.L080B0218:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B0236
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B023A
	mov r0, sb
	bl func_080D3BC0
	b .L080B023A
.L080B0236:
	movs r0, #0
	mov sb, r0
.L080B023A:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B0260
.L080B0246:
	mov r0, ip
	cmp r0, #0
	beq .L080B0256
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0256:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B0246
.L080B0260:
	mov r5, ip
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L080B027C
	cmp r5, #0
	beq .L080B0278
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B0278:
	adds r5, #0x10
	b .L080B02A4
.L080B027C:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B02A2
.L080B0284:
	cmp r2, #0
	beq .L080B0294
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0294:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B0284
.L080B02A2:
	adds r5, r2, #0
.L080B02A4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B02B4
.L080B02AE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B02AE
.L080B02B4:
	cmp r0, #0
	beq .L080B02BC
	bl free
.L080B02BC:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B02C8:
	adds r0, r7, #0
	bl func_08008920
	adds r5, r0, #0
	ldr r2, [sp, #0x78]
	adds r0, r2, r7
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r3, r2, r7
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080B02EA
	ldrh r2, [r3, #4]
.L080B02EA:
	ldr r6, [sp, #0x70]
	ldr r3, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080B02F6:
	ldr r0, [sp, #0x70]
	adds r0, #4
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	adds r1, #4
	str r1, [sp, #0x74]
	ldr r2, [sp, #0x78]
	adds r2, #0x20
	str r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	adds r3, #0x20
	str r3, [sp, #0x7c]
	ldr r4, [sp, #0x60]
	adds r4, #1
	str r4, [sp, #0x60]
	cmp r4, #4
	bgt .L080B031A
	b .L080AFFDA
.L080B031A:
	ldr r6, .L080B0480 @ =0x0000052C
	adds r5, r7, r6
	ldr r1, [r5]
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r0, r7, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	adds r6, #4
	adds r3, r7, r6
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B0342
	ldrh r2, [r3, #4]
.L080B0342:
	ldr r3, [r5]
	adds r0, r4, #0
	bl func_0805E99C
	movs r0, #0
	str r0, [sp, #0x60]
	movs r1, #0xa6
	lsls r1, r1, #3
	adds r6, r7, r1
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r5, r7, r2
.L080B035A:
	ldr r1, [r5]
	ldr r3, .L080B0484 @ =0x000008E1
	adds r0, r7, r3
	ldr r4, [sp, #0x60]
	adds r0, r0, r4
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r0, [r6]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B037C
	ldrh r2, [r6, #4]
.L080B037C:
	ldm r5!, {r3}
	adds r0, r4, #0
	bl func_0805E99C
	ldr r0, [sp, #0x60]
	adds r0, #1
	str r0, [sp, #0x60]
	cmp r0, #4
	ble .L080B035A
	movs r1, #0
	str r1, [sp, #0x60]
.L080B0392:
	ldr r2, [sp, #0x60]
	lsls r0, r2, #2
	movs r3, #0x87
	lsls r3, r3, #4
	adds r1, r7, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r2, #1
	str r2, [sp, #0x64]
	str r0, [sp, #0x68]
	cmp r1, #2
	bne .L080B03AC
	b .L080B06B0
.L080B03AC:
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #3
	adds r0, r0, r5
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x60]
	bl func_080B39BC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	ldr r4, [sp, #0x68]
	adds r0, r4, r7
	adds r0, r0, r5
	ldr r0, [r0]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	ldr r5, [sp, #0x60]
	lsls r5, r5, #5
	str r5, [sp, #0x6c]
	adds r1, r4, r7
	cmp r0, #0
	blt .L080B03E6
	b .L080B067C
.L080B03E6:
	adds r5, r5, r7
	movs r6, #0xaf
	lsls r6, r6, #3
	adds r4, r5, r6
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r3, r6}
	stm r4!, {r1, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r6, [r5]
	mov r8, r6
	ldr r1, .L080B0488 @ =0x000008B8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x68]
	adds r2, r3, r0
	ldr r0, [r5]
	movs r3, #0
	cmp r0, #0
	beq .L080B044E
	ldrh r3, [r5, #4]
.L080B044E:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080B048C @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	mov r1, r8
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B0490
	cmp r1, #0
	beq .L080B0478
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0478:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B0560
	.align 2, 0
.L080B0480: .4byte 0x0000052C
.L080B0484: .4byte 0x000008E1
.L080B0488: .4byte 0x000008B8
.L080B048C: .4byte 0x06010000
.L080B0490:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x54]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r1, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L080B04A8
	adds r0, r1, #0
.L080B04A8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B04C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B04CA
	mov r0, sb
	bl func_080D3BC0
	b .L080B04CA
.L080B04C6:
	movs r0, #0
	mov sb, r0
.L080B04CA:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	ldr r4, [sp, #0x60]
	adds r4, #1
	str r4, [sp, #0x64]
	cmp r2, r8
	beq .L080B04F8
.L080B04DC:
	mov r5, ip
	cmp r5, #0
	beq .L080B04EE
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B04EE:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B04DC
.L080B04F8:
	mov r5, ip
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L080B0514
	cmp r5, #0
	beq .L080B0510
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B0510:
	adds r5, #0x10
	b .L080B053C
.L080B0514:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B053A
.L080B051C:
	cmp r2, #0
	beq .L080B052C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B052C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B051C
.L080B053A:
	adds r5, r2, #0
.L080B053C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B054C
.L080B0546:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B0546
.L080B054C:
	cmp r0, #0
	beq .L080B0554
	bl free
.L080B0554:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B0560:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r2, [sp, #0x6c]
	adds r0, r2, r7
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B0582
	ldrh r3, [r2, #4]
.L080B0582:
	adds r6, r5, #0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, .L080B05B0 @ =0x05000320
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B05B4
	cmp r1, #0
	beq .L080B05A8
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B05A8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B067C
	.align 2, 0
.L080B05B0: .4byte 0x05000320
.L080B05B4:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x58]
	add r1, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L080B05CC
	adds r0, r1, #0
.L080B05CC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B05EA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B05EE
	mov r0, sb
	bl func_080D3BC0
	b .L080B05EE
.L080B05EA:
	movs r0, #0
	mov sb, r0
.L080B05EE:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B0614
.L080B05FA:
	mov r0, ip
	cmp r0, #0
	beq .L080B060A
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B060A:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B05FA
.L080B0614:
	mov r5, ip
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne .L080B0630
	cmp r5, #0
	beq .L080B062C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B062C:
	adds r5, #0x10
	b .L080B0658
.L080B0630:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B0656
.L080B0638:
	cmp r2, #0
	beq .L080B0648
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0648:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B0638
.L080B0656:
	adds r5, r2, #0
.L080B0658:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B0668
.L080B0662:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B0662
.L080B0668:
	cmp r0, #0
	beq .L080B0670
	bl free
.L080B0670:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B067C:
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	ldr r2, [sp, #0x6c]
	adds r0, r2, r7
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r2, r7
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0
	cmp r0, #0
	beq .L080B069E
	ldrh r2, [r5, #4]
.L080B069E:
	ldr r3, [sp, #0x68]
	adds r0, r3, r7
	ldr r5, .L080B06FC @ =0x00000564
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080B06B0:
	ldr r6, [sp, #0x64]
	str r6, [sp, #0x60]
	cmp r6, #4
	bgt .L080B06BA
	b .L080B0392
.L080B06BA:
	ldr r1, .L080B0700 @ =0x0000092B
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B06EA
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r2, .L080B0704 @ =0x000007EC
	adds r3, r7, r2
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B06DC
	ldrh r2, [r3, #4]
.L080B06DC:
	movs r3, #0xfd
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B06EA:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B06FC: .4byte 0x00000564
.L080B0700: .4byte 0x0000092B
.L080B0704: .4byte 0x000007EC

	thumb_func_start func_080B0708
func_080B0708: @ 0x080B0708
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sb, r0
	cmp r1, #0x3c
	beq .L080B071C
	b .L080B0912
.L080B071C:
	ldr r5, .L080B07A4 @ =0x0000090B
	add r5, sb
	ldrb r0, [r5]
	subs r0, #1
	movs r1, #0
	mov sl, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bne .L080B073E
	ldr r0, .L080B07A8 @ =0x0000080C
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	bl func_08008C28
.L080B073E:
	ldrb r0, [r5]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	ldrb r0, [r5]
	cmp r0, #9
	bhi .L080B0764
	add r0, sp, #0x10
	ldr r1, .L080B07AC @ =gUnk_08107568
	movs r2, #2
	bl memcpy
	add r1, sp, #0xc
	adds r0, r1, #0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	movs r0, #0x30
	strb r0, [r1]
.L080B0764:
	add r0, sp, #0x24
	movs r6, #4
	movs r7, #2
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x24]
	mov r4, sb
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldrb r0, [r5]
	mov r8, r4
	cmp r0, #9
	bls .L080B07B0
	movs r1, #1
	add r0, sp, #0x28
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x28]
	add r2, sp, #0xc
	str r2, [sp]
	mov r3, sl
	str r3, [sp, #4]
	str r1, [sp, #8]
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L080B07CE
	.align 2, 0
.L080B07A4: .4byte 0x0000090B
.L080B07A8: .4byte 0x0000080C
.L080B07AC: .4byte gUnk_08107568
.L080B07B0:
	movs r1, #3
	add r0, sp, #0x2c
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x2c]
	add r4, sp, #0xc
	str r4, [sp]
	mov r6, sl
	str r6, [sp, #4]
	str r1, [sp, #8]
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L080B07CE:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	ldr r0, .L080B081C @ =0x00000888
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r4, #0
	lsls r2, r2, #5
	ldr r7, .L080B0820 @ =0x06010000
	adds r2, r2, r7
	add r0, sp, #0x14
	mov r1, r8
	bl func_08008F0C
	add r0, sp, #0x14
	mov r8, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B0824
	cmp r1, #0
	beq .L080B0812
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B0812:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B08EA
	.align 2, 0
.L080B081C: .4byte 0x00000888
.L080B0820: .4byte 0x06010000
.L080B0824:
	str r1, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080B083E
	adds r0, r1, #0
.L080B083E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B085C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080B0860
	mov r0, sl
	bl func_080D3BC0
	b .L080B0860
.L080B085C:
	movs r0, #0
	mov sl, r0
.L080B0860:
	adds r4, r0, #0
	str r4, [sp, #0x3c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x38]
	cmp r2, r7
	beq .L080B0888
.L080B086E:
	cmp r3, #0
	beq .L080B087E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B087E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080B086E
.L080B0888:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080B08A4
	cmp r4, #0
	beq .L080B08A0
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B08A0:
	adds r4, #0x10
	b .L080B08C6
.L080B08A4:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080B08C4
.L080B08AC:
	cmp r2, #0
	beq .L080B08BC
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B08BC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B08AC
.L080B08C4:
	adds r4, r2, #0
.L080B08C6:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B08D6
.L080B08D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B08D0
.L080B08D6:
	cmp r0, #0
	beq .L080B08DE
	bl free
.L080B08DE:
	ldr r0, [sp, #0x3c]
	add r0, sl
	ldr r7, [sp, #0x3c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080B08EA:
	ldr r0, .L080B0924 @ =0x0000090B
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B0912
	ldr r1, .L080B0928 @ =0x00000838
	add r1, sb
	movs r0, #4
	str r0, [r1]
	ldr r0, .L080B092C @ =0x0000080C
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #1
	bl func_08008C28
	ldr r0, .L080B0930 @ =0x00000814
	add r0, sb
	movs r1, #0xbb
	bl func_08008B6C
.L080B0912:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B0924: .4byte 0x0000090B
.L080B0928: .4byte 0x00000838
.L080B092C: .4byte 0x0000080C
.L080B0930: .4byte 0x00000814

	thumb_func_start func_080B0934
func_080B0934: @ 0x080B0934
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r2, #0
	movs r6, #0xc3
	lsls r6, r6, #3
	movs r4, #0
	ldr r5, .L080B096C @ =0x000006F4
.L080B094E:
	lsls r1, r2, #2
	adds r0, r1, r3
	adds r0, r0, r6
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	adds r1, r1, r3
	adds r1, r1, r5
	ldr r0, [r1]
	strh r4, [r0, #0x10]
	adds r2, #1
	cmp r2, #4
	ble .L080B094E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B096C: .4byte 0x000006F4

	thumb_func_start func_080B0970
func_080B0970: @ 0x080B0970
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0
	movs r6, #0xc3
	lsls r6, r6, #3
	adds r4, r1, #0
	ldr r5, .L080B09AC @ =0x000006F4
.L080B098C:
	lsls r1, r2, #2
	adds r0, r1, r3
	adds r0, r0, r6
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	adds r1, r1, r3
	adds r1, r1, r5
	ldr r0, [r1]
	strh r4, [r0, #0x10]
	adds r2, #1
	cmp r2, #4
	ble .L080B098C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B09AC: .4byte 0x000006F4

	thumb_func_start func_080B09B0
func_080B09B0: @ 0x080B09B0
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r2, r0, #0
	mov r1, sp
	ldr r0, .L080B09EC @ =gUnk_0810756C
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, .L080B09F0 @ =0x00000934
	adds r1, r2, r0
	movs r3, #0x93
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	ldr r4, .L080B09F4 @ =0x00000938
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #2
	bhi .L080B09FC
	ldr r5, .L080B09F8 @ =0x0000090E
	adds r1, r2, r5
	movs r0, #0xa
	b .L080B0A92
	.align 2, 0
.L080B09EC: .4byte gUnk_0810756C
.L080B09F0: .4byte 0x00000934
.L080B09F4: .4byte 0x00000938
.L080B09F8: .4byte 0x0000090E
.L080B09FC:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A14
	ldr r0, .L080B0A10 @ =0x0000090E
	adds r1, r2, r0
	movs r0, #0xf
	b .L080B0A92
	.align 2, 0
.L080B0A10: .4byte 0x0000090E
.L080B0A14:
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A2C
	ldr r3, .L080B0A28 @ =0x0000090E
	adds r1, r2, r3
	movs r0, #0x14
	b .L080B0A92
	.align 2, 0
.L080B0A28: .4byte 0x0000090E
.L080B0A2C:
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi .L080B0A44
	ldr r4, .L080B0A40 @ =0x0000090E
	adds r1, r2, r4
	movs r0, #0x1e
	b .L080B0A92
	.align 2, 0
.L080B0A40: .4byte 0x0000090E
.L080B0A44:
	adds r0, r1, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A5C
	ldr r5, .L080B0A58 @ =0x0000090E
	adds r1, r2, r5
	movs r0, #0x23
	b .L080B0A92
	.align 2, 0
.L080B0A58: .4byte 0x0000090E
.L080B0A5C:
	adds r0, r1, #0
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A74
	ldr r0, .L080B0A70 @ =0x0000090E
	adds r1, r2, r0
	movs r0, #0x2d
	b .L080B0A92
	.align 2, 0
.L080B0A70: .4byte 0x0000090E
.L080B0A74:
	adds r0, r1, #0
	subs r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A8C
	ldr r3, .L080B0A88 @ =0x0000090E
	adds r1, r2, r3
	movs r0, #0x37
	b .L080B0A92
	.align 2, 0
.L080B0A88: .4byte 0x0000090E
.L080B0A8C:
	ldr r4, .L080B0A9C @ =0x0000090E
	adds r1, r2, r4
	movs r0, #0x3c
.L080B0A92:
	strb r0, [r1]
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B0A9C: .4byte 0x0000090E

	thumb_func_start func_080B0AA0
func_080B0AA0: @ 0x080B0AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldr r0, .L080B0B94 @ =0x00000844
	adds r1, r3, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0
	movs r5, #0
	movs r7, #1
	ldr r1, .L080B0B98 @ =0x00000848
	adds r4, r3, r1
	ldr r6, .L080B0B9C @ =0x000008E1
	adds r6, r6, r3
	mov r8, r6
	movs r0, #0x8f
	lsls r0, r0, #4
	adds r0, r0, r3
	mov sb, r0
	adds r1, #0x14
	adds r1, r1, r3
	mov ip, r1
.L080B0AD0:
	str r5, [r4]
	str r5, [r4, #0x28]
	mov r6, ip
	adds r6, #4
	mov ip, r6
	subs r6, #4
	stm r6!, {r5}
	mov r0, r8
	adds r1, r0, r2
	movs r0, #0x70
	strb r0, [r1]
	lsls r1, r2, #1
	mov r6, sb
	strh r5, [r6]
	ldr r6, .L080B0BA0 @ =0x00000915
	adds r0, r3, r6
	adds r0, r0, r2
	strb r7, [r0]
	subs r6, #0x19
	adds r0, r3, r6
	adds r0, r0, r1
	strh r5, [r0]
	ldr r1, .L080B0BA4 @ =0x00000906
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r6, #0x1e
	adds r0, r3, r6
	adds r0, r0, r2
	strb r7, [r0]
	adds r1, #0x19
	adds r0, r3, r1
	adds r0, r0, r2
	strb r7, [r0]
	adds r6, #0xa
	adds r0, r3, r6
	adds r0, r0, r2
	strb r7, [r0]
	adds r4, #4
	movs r0, #2
	add sb, r0
	adds r2, #1
	cmp r2, #4
	ble .L080B0AD0
	movs r4, #0x8e
	lsls r4, r4, #4
	adds r1, r3, r4
	movs r2, #0
	movs r0, #0x78
	strb r0, [r1]
	subs r6, #0x19
	adds r1, r3, r6
	movs r0, #0x3c
	strb r0, [r1]
	ldr r1, .L080B0BA8 @ =0x000008FA
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #0x2c
	adds r0, r3, r4
	strb r2, [r0]
	adds r6, #2
	adds r0, r3, r6
	strb r2, [r0]
	ldr r0, .L080B0BAC @ =0x00000884
	adds r1, r3, r0
	movs r0, #2
	str r0, [r1]
	ldr r1, .L080B0BB0 @ =0x00000838
	adds r0, r3, r1
	str r2, [r0]
	subs r4, #0xd0
	adds r0, r3, r4
	str r2, [r0]
	subs r6, #0xcd
	adds r0, r3, r6
	str r2, [r0]
	adds r1, #0xdc
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	adds r4, #0xed
	adds r0, r3, r4
	strb r1, [r0]
	adds r6, #0xea
	adds r0, r3, r6
	strb r2, [r0]
	ldr r1, .L080B0BB4 @ =0x0000092B
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #3
	adds r0, r3, r4
	strb r2, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B0B94: .4byte 0x00000844
.L080B0B98: .4byte 0x00000848
.L080B0B9C: .4byte 0x000008E1
.L080B0BA0: .4byte 0x00000915
.L080B0BA4: .4byte 0x00000906
.L080B0BA8: .4byte 0x000008FA
.L080B0BAC: .4byte 0x00000884
.L080B0BB0: .4byte 0x00000838
.L080B0BB4: .4byte 0x0000092B

	thumb_func_start func_080B0BB8
func_080B0BB8: @ 0x080B0BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x68]
	movs r1, #0
	str r1, [sp, #0x6c]
	movs r2, #0
	str r2, [sp, #0x70]
	mov sl, r2
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0xa8]
	mov r4, sp
	adds r4, #0x34
	str r4, [sp, #0xac]
	mov r5, sp
	adds r5, #0x3c
	str r5, [sp, #0xb0]
	ldr r5, .L080B0CB4 @ =gUnk_08107588
	mov r6, sp
	adds r6, #0x50
	str r6, [sp, #0xb4]
	ldr r0, .L080B0CB8 @ =gUnk_0810759C
	mov r8, r0
	add r4, sp, #0x64
	ldr r2, [sp, #0xac]
.L080B0BF6:
	stm r3!, {r1}
	mov r6, sl
	adds r0, r2, r6
	strb r1, [r0]
	movs r0, #1
	add sl, r0
	mov r6, sl
	cmp r6, #4
	ble .L080B0BF6
	movs r0, #0
	str r0, [sp, #0x74]
	movs r1, #0
	str r1, [sp, #0x78]
	ldr r1, [sp, #0xb0]
	adds r0, r5, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r1, [sp, #0xb4]
	mov r0, r8
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r5, #0
	str r5, [sp, #0x7c]
	movs r6, #0
	str r6, [sp, #0x80]
	movs r0, #0
	str r0, [sp, #0x84]
	movs r1, #0
	str r1, [sp, #0x88]
	movs r2, #0
	str r2, [sp, #0x8c]
	movs r3, #0
	str r3, [sp, #0x90]
	adds r0, r7, #0
	bl func_08008918
	movs r5, #0xba
	lsls r5, r5, #5
	adds r1, r5, #0
	strh r1, [r4]
	strh r1, [r0]
	movs r6, #0x83
	lsls r6, r6, #3
	adds r6, r7, r6
	ldr r0, [r6]
	str r0, [sp, #0x98]
	adds r0, r7, #0
	bl func_080088DC
	str r0, [sp, #0x9c]
	adds r0, r7, #0
	bl func_08008920
	str r0, [sp, #0xa0]
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	ldr r2, [sp, #0xa0]
	adds r3, r5, #0
	bl func_08050D3C
	ldr r4, [r6]
	adds r0, r7, #0
	bl func_080B3A10
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_08050E50
	ldr r3, .L080B0CBC @ =0x00000838
	adds r0, r7, r3
	bl .L080B1B1C
	.align 2, 0
.L080B0CB4: .4byte gUnk_08107588
.L080B0CB8: .4byte gUnk_0810759C
.L080B0CBC: .4byte 0x00000838

	thumb_func_start sub_080B0CC0
sub_080B0CC0: @ 0x080B0CC0
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r5, #0x83
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r0, [r4]
	bl func_08050D34
	adds r6, r0, #0
	ldr r4, [r4]
	mov r8, r4
	adds r0, r7, #0
	bl func_080088DC
	str r0, [sp, #0xa4]
	adds r0, r7, #0
	bl func_08008920
	mov sb, r0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0xa4]
	mov r2, sb
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080B0D22
	b .L080B10E8
.L080B0D22:
	lsls r0, r0, #2
	ldr r1, .L080B0D2C @ =.L080B0D30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B0D2C: .4byte .L080B0D30
.L080B0D30: @ jump table
	.4byte .L080B0D4C @ case 0
	.4byte .L080B10E8 @ case 1
	.4byte .L080B10E8 @ case 2
	.4byte .L080B0F34 @ case 3
	.4byte .L080B10C2 @ case 4
	.4byte .L080B10E8 @ case 5
	.4byte .L080B10E8 @ case 6
.L080B0D4C:
	ldr r3, [sp, #0x68]
	cmp r3, #8
	bne .L080B0D60
	ldr r4, .L080B0D5C @ =0x00000838
	adds r1, r7, r4
	movs r0, #1
	str r0, [r1]
	b .L080B10E8
	.align 2, 0
.L080B0D5C: .4byte 0x00000838
.L080B0D60:
	ldr r5, [sp, #0x68]
	cmp r5, #4
	bne .L080B0DB0
	movs r6, #1
	str r6, [sp, #0x84]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	bne .L080B0D72
	b .L080B10E8
.L080B0D72:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	movs r2, #5
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x70]
	mov sl, r3
	movs r2, #1
	ldr r4, .L080B0DA8 @ =0x0000091A
	adds r3, r7, r4
	ldr r5, .L080B0DAC @ =0x00000848
	adds r1, r7, r5
.L080B0D92:
	stm r1!, {r2}
	mov r6, sl
	adds r0, r3, r6
	strb r2, [r0]
	movs r0, #1
	add sl, r0
	mov r4, sl
	cmp r4, #4
	ble .L080B0D92
	b .L080B10E8
	.align 2, 0
.L080B0DA8: .4byte 0x0000091A
.L080B0DAC: .4byte 0x00000848
.L080B0DB0:
	ldr r5, [sp, #0x68]
	cmp r5, #5
	bne .L080B0E60
	movs r6, #1
	str r6, [sp, #0x88]
	ldr r0, [sp, #0x90]
	cmp r0, #0
	bne .L080B0DC2
	b .L080B10E8
.L080B0DC2:
	adds r0, r7, #0
	bl func_080B0AA0
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	movs r2, #6
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x70]
	ldr r5, .L080B0E10 @ =0x0000043C
	adds r4, r7, r5
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080B0E0A
	ldr r1, .L080B0E14 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080B0E0A:
	ldr r0, [r4]
	b .L080B0E2A
	.align 2, 0
.L080B0E10: .4byte 0x0000043C
.L080B0E14: .4byte 0x00000889
.L080B0E18:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080AF814
	ldr r6, .L080B0E58 @ =0x0000043C
	adds r0, r7, r6
	ldr r0, [r0]
.L080B0E2A:
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080B0E18
	ldr r0, .L080B0E58 @ =0x0000043C
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080B0E5C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L080B10E8
	.align 2, 0
.L080B0E58: .4byte 0x0000043C
.L080B0E5C: .4byte 0x00000889
.L080B0E60:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	ldr r2, [sp, #0x68]
	cmp r2, #0
	beq .L080B0EA4
	cmp r2, #6
	beq .L080B0EA4
	adds r2, #1
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x70]
	cmp r2, #2
	beq .L080B0EA4
	cmp r2, #8
	beq .L080B0EA4
	mov sl, r3
	movs r2, #1
	ldr r4, .L080B0F18 @ =0x0000091A
	adds r3, r7, r4
	ldr r5, .L080B0F1C @ =0x00000848
	adds r1, r7, r5
.L080B0E92:
	stm r1!, {r2}
	mov r6, sl
	adds r0, r3, r6
	strb r2, [r0]
	movs r0, #1
	add sl, r0
	mov r4, sl
	cmp r4, #4
	ble .L080B0E92
.L080B0EA4:
	ldr r5, [sp, #0x68]
	cmp r5, #4
	beq .L080B0EAC
	b .L080B10E8
.L080B0EAC:
	movs r5, #0x3c
	add r4, sp, #0xc
	movs r6, #4
	mov sl, r6
.L080B0EB4:
	bl rand
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r5, r0
	lsrs r0, r0, #0x10
	adds r0, #0x78
	stm r4!, {r0}
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge .L080B0EB4
	movs r1, #0
	movs r2, #4
	mov sl, r2
	movs r3, #0x88
	lsls r3, r3, #4
	adds r0, r7, r3
.L080B0EDC:
	str r1, [r0]
	subs r0, #4
	movs r4, #1
	rsbs r4, r4, #0
	add sl, r4
	mov r5, sl
	cmp r5, #0
	bge .L080B0EDC
	movs r6, #5
	mov sl, r6
	ldr r1, .L080B0F20 @ =0x00000844
	adds r0, r7, r1
	movs r2, #0
	str r2, [r0]
	ldr r3, .L080B0F24 @ =0x00000929
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, .L080B0F28 @ =0x000008E3
	adds r1, r7, r4
	movs r0, #0x70
	strb r0, [r1]
	ldr r5, .L080B0F2C @ =0x00000864
	adds r0, r7, r5
	str r2, [r0]
	ldr r6, .L080B0F30 @ =0x00000878
	adds r0, r7, r6
	str r2, [r0]
	b .L080B10E8
	.align 2, 0
.L080B0F18: .4byte 0x0000091A
.L080B0F1C: .4byte 0x00000848
.L080B0F20: .4byte 0x00000844
.L080B0F24: .4byte 0x00000929
.L080B0F28: .4byte 0x000008E3
.L080B0F2C: .4byte 0x00000864
.L080B0F30: .4byte 0x00000878
.L080B0F34:
	cmp r6, #5
	bgt .L080B0F44
	cmp r6, #4
	blt .L080B0F3E
	b .L080B10E8
.L080B0F3E:
	cmp r6, #1
	beq .L080B0F58
	b .L080B0F4A
.L080B0F44:
	cmp r6, #6
	bne .L080B0F4A
	b .L080B103C
.L080B0F4A:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D74
	b .L080B10E8
.L080B0F58:
	ldr r2, [sp, #0x68]
	cmp r2, #8
	bls .L080B0F60
	b .L080B10E8
.L080B0F60:
	lsls r0, r2, #2
	ldr r1, .L080B0F6C @ =.L080B0F70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B0F6C: .4byte .L080B0F70
.L080B0F70: @ jump table
	.4byte .L080B0F94 @ case 0
	.4byte .L080B10E8 @ case 1
	.4byte .L080B0FB0 @ case 2
	.4byte .L080B0FC4 @ case 3
	.4byte .L080B0FD8 @ case 4
	.4byte .L080B0FEC @ case 5
	.4byte .L080B1000 @ case 6
	.4byte .L080B10E8 @ case 7
	.4byte .L080B1028 @ case 8
.L080B0F94:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080B0FA4 @ =gUnk_081075B0
	ldr r2, .L080B0FA8 @ =gUnk_081075CC
	ldr r3, .L080B0FAC @ =gUnk_081075D0
	b .L080B100E
	.align 2, 0
.L080B0FA4: .4byte gUnk_081075B0
.L080B0FA8: .4byte gUnk_081075CC
.L080B0FAC: .4byte gUnk_081075D0
.L080B0FB0:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, .L080B0FC0 @ =gUnk_081075D4
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FC0: .4byte gUnk_081075D4
.L080B0FC4:
	movs r5, #0x83
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0]
	ldr r1, .L080B0FD4 @ =gUnk_08107608
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FD4: .4byte gUnk_08107608
.L080B0FD8:
	movs r6, #0x83
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r0, [r0]
	ldr r1, .L080B0FE8 @ =gUnk_081076C8
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FE8: .4byte gUnk_081076C8
.L080B0FEC:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, .L080B0FFC @ =gUnk_081077A4
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FFC: .4byte gUnk_081077A4
.L080B1000:
	movs r2, #0x83
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L080B101C @ =gUnk_081077E4
	ldr r2, .L080B1020 @ =gUnk_081077F8
	ldr r3, .L080B1024 @ =gUnk_08107808
.L080B100E:
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L080B10E8
	.align 2, 0
.L080B101C: .4byte gUnk_081077E4
.L080B1020: .4byte gUnk_081077F8
.L080B1024: .4byte gUnk_08107808
.L080B1028:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080B1038 @ =gUnk_08107818
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B1038: .4byte gUnk_08107818
.L080B103C:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	bl func_08050DF0
	cmp r0, #1
	beq .L080B1052
	cmp r0, #2
	beq .L080B106A
	b .L080B10E8
.L080B1052:
	ldr r5, [sp, #0x68]
	cmp r5, #0
	bne .L080B105E
	movs r6, #1
	str r6, [sp, #0x68]
	b .L080B10E8
.L080B105E:
	ldr r0, [sp, #0x68]
	cmp r0, #6
	bne .L080B10E8
	movs r1, #7
	str r1, [sp, #0x68]
	b .L080B10E8
.L080B106A:
	ldr r2, [sp, #0x68]
	cmp r2, #0
	bne .L080B1076
	movs r3, #7
	str r3, [sp, #0x68]
	b .L080B10E8
.L080B1076:
	ldr r4, [sp, #0x68]
	cmp r4, #6
	bne .L080B10E8
	movs r5, #1
	str r5, [sp, #0x68]
	movs r6, #0
	str r6, [sp, #0x6c]
	movs r0, #0
	str r0, [sp, #0x70]
	mov sl, r0
	movs r1, #0
	ldr r2, [sp, #0xac]
	ldr r3, [sp, #0xa8]
.L080B1090:
	stm r3!, {r1}
	mov r4, sl
	adds r0, r2, r4
	strb r1, [r0]
	movs r5, #1
	add sl, r5
	mov r6, sl
	cmp r6, #4
	ble .L080B1090
	movs r0, #0
	str r0, [sp, #0x74]
	movs r1, #0
	str r1, [sp, #0x78]
	movs r2, #0
	str r2, [sp, #0x7c]
	movs r3, #0
	str r3, [sp, #0x84]
	movs r4, #0
	str r4, [sp, #0x88]
	movs r5, #0
	str r5, [sp, #0x8c]
	movs r6, #0
	str r6, [sp, #0x90]
	str r0, [sp, #0x80]
	b .L080B10E8
.L080B10C2:
	ldr r1, [sp, #0x68]
	cmp r1, #3
	bne .L080B10EE
	cmp r6, #5
	bne .L080B10E8
	ldr r2, [sp, #0x6c]
	adds r2, #1
	str r2, [sp, #0x6c]
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne .L080B10E8
	cmp r2, #2
	bne .L080B10E8
	movs r4, #0x83
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	bl func_08050DD8
.L080B10E8:
	ldr r5, [sp, #0x68]
	cmp r5, #3
	beq .L080B1108
.L080B10EE:
	ldr r6, [sp, #0x68]
	cmp r6, #3
	bgt .L080B10F8
	bl .L080B1B0C
.L080B10F8:
	cmp r6, #4
	bne .L080B10FE
	b .L080B13C0
.L080B10FE:
	cmp r6, #5
	bne .L080B1104
	b .L080B1734
.L080B1104:
	bl .L080B1B0C
.L080B1108:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne .L080B113C
	ldr r1, .L080B1130 @ =0x00000844
	adds r0, r7, r1
	ldr r2, [sp, #0x68]
	str r2, [r0]
	ldr r3, .L080B1134 @ =0x00000929
	adds r0, r7, r3
	movs r1, #1
	strb r1, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r7, r4
	str r1, [r0]
	ldr r5, .L080B1138 @ =0x0000091C
	adds r0, r7, r5
	strb r1, [r0]
	b .L080B12E4
	.align 2, 0
.L080B1130: .4byte 0x00000844
.L080B1134: .4byte 0x00000929
.L080B1138: .4byte 0x0000091C
.L080B113C:
	ldr r0, [sp, #0x70]
	cmp r0, #0x1e
	bne .L080B1168
	ldr r1, .L080B115C @ =0x00000864
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L080B1160 @ =0x00000921
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, .L080B1164 @ =0x00000814
	adds r0, r7, r3
	movs r1, #0xc7
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B115C: .4byte 0x00000864
.L080B1160: .4byte 0x00000921
.L080B1164: .4byte 0x00000814
.L080B1168:
	ldr r4, [sp, #0x70]
	cmp r4, #0x3c
	bne .L080B11A8
	ldr r5, .L080B1198 @ =0x00000864
	adds r0, r7, r5
	movs r1, #0
	str r1, [r0]
	ldr r6, .L080B119C @ =0x00000844
	adds r0, r7, r6
	str r1, [r0]
	ldr r1, .L080B11A0 @ =0x00000929
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	movs r2, #0x85
	lsls r2, r2, #4
	adds r0, r7, r2
	str r1, [r0]
	ldr r3, .L080B11A4 @ =0x0000091A
	adds r0, r7, r3
	add r0, sl
	strb r1, [r0]
	b .L080B1384
	.align 2, 0
.L080B1198: .4byte 0x00000864
.L080B119C: .4byte 0x00000844
.L080B11A0: .4byte 0x00000929
.L080B11A4: .4byte 0x0000091A
.L080B11A8:
	ldr r4, [sp, #0x70]
	cmp r4, #0x5a
	bne .L080B11E8
	ldr r5, .L080B11DC @ =0x00000878
	adds r0, r7, r5
	movs r2, #1
	str r2, [r0]
	ldr r6, .L080B11E0 @ =0x00000844
	adds r0, r7, r6
	ldr r1, [sp, #0x68]
	str r1, [r0]
	ldr r3, .L080B11E4 @ =0x00000929
	adds r0, r7, r3
	strb r2, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	adds r5, #0xa2
	adds r0, r7, r5
	add r0, sl
	strb r2, [r0]
	subs r6, #0x30
	b .L080B12E6
	.align 2, 0
.L080B11DC: .4byte 0x00000878
.L080B11E0: .4byte 0x00000844
.L080B11E4: .4byte 0x00000929
.L080B11E8:
	ldr r0, [sp, #0x70]
	cmp r0, #0x78
	bne .L080B1240
	ldr r1, .L080B1228 @ =0x00000878
	adds r0, r7, r1
	movs r2, #0
	str r2, [r0]
	ldr r3, .L080B122C @ =0x00000864
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	ldr r4, .L080B1230 @ =0x00000921
	adds r0, r7, r4
	movs r1, #1
	strb r1, [r0]
	ldr r5, .L080B1234 @ =0x00000844
	adds r0, r7, r5
	str r2, [r0]
	ldr r6, .L080B1238 @ =0x00000929
	adds r0, r7, r6
	strb r1, [r0]
	movs r2, #0x85
	lsls r2, r2, #4
	adds r0, r7, r2
	str r1, [r0]
	adds r3, #0xb6
	adds r0, r7, r3
	add r0, sl
	strb r1, [r0]
	ldr r4, .L080B123C @ =0x0000081C
	adds r0, r7, r4
	b .L080B133A
	.align 2, 0
.L080B1228: .4byte 0x00000878
.L080B122C: .4byte 0x00000864
.L080B1230: .4byte 0x00000921
.L080B1234: .4byte 0x00000844
.L080B1238: .4byte 0x00000929
.L080B123C: .4byte 0x0000081C
.L080B1240:
	ldr r5, [sp, #0x70]
	cmp r5, #0x96
	bne .L080B1254
	ldr r6, .L080B1250 @ =0x00000864
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]
	b .L080B1384
	.align 2, 0
.L080B1250: .4byte 0x00000864
.L080B1254:
	ldr r0, [sp, #0x70]
	cmp r0, #0xb4
	bne .L080B1280
	movs r2, #0x85
	lsls r2, r2, #4
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	ldr r3, .L080B1278 @ =0x0000091A
	adds r0, r7, r3
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080B127C @ =0x00000878
	adds r0, r7, r4
	str r1, [r0]
	b .L080B1384
	.align 2, 0
.L080B1278: .4byte 0x0000091A
.L080B127C: .4byte 0x00000878
.L080B1280:
	ldr r5, [sp, #0x70]
	cmp r5, #0xd2
	bne .L080B12B8
	ldr r6, .L080B12AC @ =0x00000878
	adds r1, r7, r6
	movs r0, #2
	str r0, [r1]
	movs r0, #0x85
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r0, #4
	str r0, [r1]
	ldr r2, .L080B12B0 @ =0x0000091C
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L080B12B4 @ =0x00000814
	adds r0, r7, r3
	movs r1, #0xa6
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B12AC: .4byte 0x00000878
.L080B12B0: .4byte 0x0000091C
.L080B12B4: .4byte 0x00000814
.L080B12B8:
	ldr r4, [sp, #0x70]
	cmp r4, #0xf0
	bne .L080B1300
	ldr r5, .L080B12F0 @ =0x00000844
	adds r0, r7, r5
	ldr r6, [sp, #0x68]
	str r6, [r0]
	ldr r1, .L080B12F4 @ =0x00000929
	adds r0, r7, r1
	movs r1, #0
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080B12F8 @ =0x00000878
	adds r0, r7, r3
	str r1, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r7, r4
	str r6, [r0]
	adds r5, #0xd8
	adds r0, r7, r5
	strb r2, [r0]
.L080B12E4:
	ldr r6, .L080B12FC @ =0x00000814
.L080B12E6:
	adds r0, r7, r6
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B12F0: .4byte 0x00000844
.L080B12F4: .4byte 0x00000929
.L080B12F8: .4byte 0x00000878
.L080B12FC: .4byte 0x00000814
.L080B1300:
	movs r0, #0x87
	lsls r0, r0, #1
	ldr r1, [sp, #0x70]
	cmp r1, r0
	bne .L080B135C
	ldr r2, .L080B1344 @ =0x00000844
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	ldr r3, .L080B1348 @ =0x00000929
	adds r0, r7, r3
	movs r2, #1
	strb r2, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r7, r4
	str r2, [r0]
	ldr r5, .L080B134C @ =0x0000091C
	adds r0, r7, r5
	strb r2, [r0]
	ldr r6, .L080B1350 @ =0x00000864
	adds r1, r7, r6
	movs r0, #2
	str r0, [r1]
	ldr r1, .L080B1354 @ =0x00000921
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, .L080B1358 @ =0x0000081C
	adds r0, r7, r2
.L080B133A:
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B1344: .4byte 0x00000844
.L080B1348: .4byte 0x00000929
.L080B134C: .4byte 0x0000091C
.L080B1350: .4byte 0x00000864
.L080B1354: .4byte 0x00000921
.L080B1358: .4byte 0x0000081C
.L080B135C:
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r3, [sp, #0x70]
	cmp r3, r0
	bne .L080B1384
	ldr r4, .L080B139C @ =0x00000864
	adds r1, r7, r4
	movs r0, #0
	str r0, [r1]
	movs r5, #0x83
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0]
	bl func_08050DE4
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [sp, #0x70]
	movs r0, #1
	str r0, [sp, #0x80]
.L080B1384:
	movs r1, #0x85
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bne .L080B13A4
	ldr r2, .L080B13A0 @ =0x000008E3
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	b .L080B13B0
	.align 2, 0
.L080B139C: .4byte 0x00000864
.L080B13A0: .4byte 0x000008E3
.L080B13A4:
	cmp r0, #3
	bne .L080B13B2
	ldr r3, .L080B13BC @ =0x000008E3
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
.L080B13B0:
	strb r0, [r1]
.L080B13B2:
	ldr r4, [sp, #0x70]
	adds r4, #1
	str r4, [sp, #0x70]
	b .L080B1B0C
	.align 2, 0
.L080B13BC: .4byte 0x000008E3
.L080B13C0:
	ldr r5, [sp, #0x84]
	cmp r5, #0
	bne .L080B13C8
	b .L080B1B0C
.L080B13C8:
	movs r6, #0
	mov sl, r6
	ldr r0, .L080B13F4 @ =0x00000848
	adds r0, r0, r7
	mov r8, r0
.L080B13D2:
	mov r1, sl
	lsls r0, r1, #2
	ldr r2, .L080B13F4 @ =0x00000848
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r1, [r1]
	subs r1, #1
	adds r4, r0, #0
	cmp r1, #4
	bls .L080B13E8
	b .L080B158E
.L080B13E8:
	lsls r0, r1, #2
	ldr r1, .L080B13F8 @ =.L080B13FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B13F4: .4byte 0x00000848
.L080B13F8: .4byte .L080B13FC
.L080B13FC: @ jump table
	.4byte .L080B1410 @ case 0
	.4byte .L080B1458 @ case 1
	.4byte .L080B14EC @ case 2
	.4byte .L080B154C @ case 3
	.4byte .L080B14B0 @ case 4
.L080B1410:
	ldr r5, [sp, #0xa8]
	adds r3, r5, r4
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0xc
	ldr r0, [r0]
	asrs r0, r0, #1
	cmp r1, r0
	beq .L080B142A
	b .L080B158E
.L080B142A:
	ldr r6, .L080B1450 @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r1, .L080B1454 @ =0x0000091A
	adds r0, r7, r1
	add r0, sl
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	str r2, [r3]
	movs r2, #0x87
	lsls r2, r2, #4
	adds r0, r7, r2
	adds r0, r0, r4
	str r1, [r0]
	b .L080B158E
	.align 2, 0
.L080B1450: .4byte 0x00000848
.L080B1454: .4byte 0x0000091A
.L080B1458:
	ldr r5, [sp, #0xa8]
	adds r3, r5, r4
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0xc
	ldr r0, [r0]
	asrs r0, r0, #1
	cmp r1, r0
	beq .L080B1472
	b .L080B158E
.L080B1472:
	ldr r6, .L080B14A4 @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r4
	movs r1, #4
	str r1, [r0]
	ldr r0, .L080B14A8 @ =0x0000091A
	adds r1, r7, r0
	add r1, sl
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r3]
	movs r1, #0x87
	lsls r1, r1, #4
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r2, .L080B14AC @ =0x00000814
	adds r0, r7, r2
	movs r1, #0xa6
	bl func_08008B6C
	b .L080B158E
	.align 2, 0
.L080B14A4: .4byte 0x00000848
.L080B14A8: .4byte 0x0000091A
.L080B14AC: .4byte 0x00000814
.L080B14B0:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B158E
	ldr r3, [sp, #0xa8]
	adds r1, r3, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x78
	bne .L080B158E
	movs r0, #0
	str r0, [r1]
	ldr r5, .L080B14E4 @ =0x00000848
	adds r0, r7, r5
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r6, .L080B14E8 @ =0x0000091A
	adds r0, r7, r6
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	b .L080B158E
	.align 2, 0
.L080B14E4: .4byte 0x00000848
.L080B14E8: .4byte 0x0000091A
.L080B14EC:
	ldr r0, .L080B1534 @ =0x000008E1
	adds r1, r7, r0
	add r1, sl
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x70
	bne .L080B158E
	ldr r1, .L080B1538 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	str r2, [r0]
	ldr r2, .L080B153C @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080B1540 @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r4, .L080B1544 @ =0x0000091F
	adds r0, r7, r4
	add r0, sl
	strb r2, [r0]
	ldr r5, .L080B1548 @ =0x0000081C
	adds r0, r7, r5
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B158E
	.align 2, 0
.L080B1534: .4byte 0x000008E1
.L080B1538: .4byte 0x00000848
.L080B153C: .4byte 0x0000091A
.L080B1540: .4byte 0x0000085C
.L080B1544: .4byte 0x0000091F
.L080B1548: .4byte 0x0000081C
.L080B154C:
	ldr r6, .L080B15DC @ =0x000008E1
	adds r1, r7, r6
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa8
	bne .L080B158E
	ldr r1, .L080B15E0 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #5
	str r1, [r0]
	ldr r2, .L080B15E4 @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	ldr r3, .L080B15E8 @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	str r1, [r0]
	ldr r4, .L080B15EC @ =0x0000091F
	adds r0, r7, r4
	add r0, sl
	strb r1, [r0]
	ldr r5, .L080B15F0 @ =0x00000814
	adds r0, r7, r5
	movs r1, #0xc7
	bl func_08008B6C
.L080B158E:
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #4
	bgt .L080B159A
	b .L080B13D2
.L080B159A:
	ldr r1, [sp, #0x74]
	cmp r1, #0
	bne .L080B15FC
	movs r2, #0
	mov sl, r2
	mov r3, r8
	ldr r0, [r3]
	cmp r0, #5
	bne .L080B15C2
	ldr r4, .L080B15E0 @ =0x00000848
	adds r1, r7, r4
.L080B15B0:
	adds r1, #4
	movs r5, #1
	add sl, r5
	mov r6, sl
	cmp r6, #4
	bgt .L080B15C2
	ldr r0, [r1]
	cmp r0, #5
	beq .L080B15B0
.L080B15C2:
	mov r0, sl
	cmp r0, #5
	beq .L080B15CA
	b .L080B16F4
.L080B15CA:
	movs r1, #1
	str r1, [sp, #0x74]
	ldr r2, .L080B15F4 @ =0x00000844
	adds r0, r7, r2
	str r1, [r0]
	ldr r3, .L080B15F8 @ =0x00000929
	adds r0, r7, r3
	strb r1, [r0]
	b .L080B16F4
	.align 2, 0
.L080B15DC: .4byte 0x000008E1
.L080B15E0: .4byte 0x00000848
.L080B15E4: .4byte 0x0000091A
.L080B15E8: .4byte 0x0000085C
.L080B15EC: .4byte 0x0000091F
.L080B15F0: .4byte 0x00000814
.L080B15F4: .4byte 0x00000844
.L080B15F8: .4byte 0x00000929
.L080B15FC:
	ldr r6, .L080B1614 @ =0x00000844
	adds r5, r7, r6
	ldr r4, [r5]
	cmp r4, #1
	beq .L080B1618
	cmp r4, #1
	ble .L080B16F4
	cmp r4, #2
	beq .L080B166C
	cmp r4, #3
	beq .L080B16C8
	b .L080B16F4
	.align 2, 0
.L080B1614: .4byte 0x00000844
.L080B1618:
	movs r1, #0x8e
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrb r1, [r0]
	subs r1, #2
	movs r6, #0
	strb r1, [r0]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r2, .L080B1650 @ =0x00000884
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080B1658
	movs r0, #3
	str r0, [r5]
	ldr r3, .L080B1654 @ =0x00000929
	adds r0, r7, r3
	strb r4, [r0]
	movs r5, #0x87
	lsls r5, r5, #4
	adds r0, r7, r5
	str r6, [r0]
	ldr r6, [sp, #0xac]
	strb r4, [r6]
	b .L080B16AE
	.align 2, 0
.L080B1650: .4byte 0x00000884
.L080B1654: .4byte 0x00000929
.L080B1658:
	cmp r0, #2
	bne .L080B16F4
	str r6, [r5]
	ldr r2, .L080B1668 @ =0x00000929
	adds r0, r7, r2
	strb r4, [r0]
	b .L080B16F4
	.align 2, 0
.L080B1668: .4byte 0x00000929
.L080B166C:
	movs r3, #0x8e
	lsls r3, r3, #4
	adds r1, r7, r3
	ldrb r0, [r1]
	adds r0, #2
	movs r4, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r6, .L080B16BC @ =0x00000884
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B16F4
	cmp r0, #5
	beq .L080B16F4
	movs r0, #3
	str r0, [r5]
	ldr r2, .L080B16C0 @ =0x00000929
	adds r0, r7, r2
	movs r3, #1
	strb r3, [r0]
	ldr r1, [r1]
	lsls r2, r1, #2
	movs r5, #0x87
	lsls r5, r5, #4
	adds r0, r7, r5
	adds r0, r0, r2
	str r4, [r0]
	ldr r6, [sp, #0xac]
	adds r1, r6, r1
	strb r3, [r1]
.L080B16AE:
	ldr r1, .L080B16C4 @ =0x00000814
	adds r0, r7, r1
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B16F4
	.align 2, 0
.L080B16BC: .4byte 0x00000884
.L080B16C0: .4byte 0x00000929
.L080B16C4: .4byte 0x00000814
.L080B16C8:
	ldr r2, [sp, #0x78]
	adds r2, #1
	str r2, [sp, #0x78]
	cmp r2, #0x1e
	ble .L080B16F4
	ldr r3, .L080B16E0 @ =0x00000884
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #4
	beq .L080B16E4
	movs r0, #2
	b .L080B16E6
	.align 2, 0
.L080B16E0: .4byte 0x00000884
.L080B16E4:
	movs r0, #1
.L080B16E6:
	str r0, [r5]
	ldr r4, .L080B170C @ =0x00000929
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1]
	movs r5, #0
	str r5, [sp, #0x78]
.L080B16F4:
	movs r6, #1
	str r6, [sp, #0x8c]
	movs r0, #0
	mov sl, r0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1710
	movs r2, #0
	str r2, [sp, #0x8c]
	b .L080B1B0C
	.align 2, 0
.L080B170C: .4byte 0x00000929
.L080B1710:
	movs r3, #1
	add sl, r3
	mov r4, sl
	cmp r4, #4
	ble .L080B171C
	b .L080B1B0C
.L080B171C:
	lsls r0, r4, #2
	ldr r5, .L080B1730 @ =0x00000848
	adds r1, r7, r5
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1710
	movs r6, #0
	str r6, [sp, #0x8c]
	b .L080B1B0C
	.align 2, 0
.L080B1730: .4byte 0x00000848
.L080B1734:
	ldr r0, [sp, #0x88]
	cmp r0, #0
	bne .L080B173C
	b .L080B1B0C
.L080B173C:
	ldr r1, .L080B17B4 @ =0x00000848
	adds r1, r1, r7
	mov r8, r1
	ldr r2, [sp, #0x70]
	cmp r2, #0
	bne .L080B1790
	movs r3, #1
	str r3, [sp, #0x70]
	movs r0, #0x78
	str r0, [sp, #0xc]
	movs r1, #0xd2
	str r1, [sp, #0x10]
	movs r0, #0xb4
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r0, #0x3c
	str r0, [sp, #0x1c]
	ldr r4, .L080B17B8 @ =0x00000884
	adds r1, r7, r4
	movs r0, #4
	str r0, [r1]
	movs r5, #0x8e
	lsls r5, r5, #4
	adds r1, r7, r5
	movs r2, #0
	movs r0, #0xa8
	strb r0, [r1]
	ldr r6, .L080B17BC @ =0x00000844
	adds r0, r7, r6
	str r2, [r0]
	ldr r1, .L080B17C0 @ =0x00000929
	adds r0, r7, r1
	strb r3, [r0]
	movs r3, #0
	str r3, [sp, #0x78]
	ldr r1, [sp, #0xac]
	adds r0, r1, #0
	adds r0, #4
.L080B1788:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge .L080B1788
.L080B1790:
	movs r4, #0
	mov sl, r4
.L080B1794:
	mov r5, sl
	lsls r0, r5, #2
	ldr r6, .L080B17B4 @ =0x00000848
	adds r1, r7, r6
	adds r1, r1, r0
	ldr r1, [r1]
	subs r1, #1
	adds r4, r0, #0
	cmp r1, #4
	bls .L080B17AA
	b .L080B199E
.L080B17AA:
	lsls r0, r1, #2
	ldr r1, .L080B17C4 @ =.L080B17C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B17B4: .4byte 0x00000848
.L080B17B8: .4byte 0x00000884
.L080B17BC: .4byte 0x00000844
.L080B17C0: .4byte 0x00000929
.L080B17C4: .4byte .L080B17C8
.L080B17C8: @ jump table
	.4byte .L080B17DC @ case 0
	.4byte .L080B1820 @ case 1
	.4byte .L080B1924 @ case 2
	.4byte .L080B18B4 @ case 3
	.4byte .L080B1980 @ case 4
.L080B17DC:
	ldr r0, [sp, #0xa8]
	adds r2, r0, r4
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	mov r1, sp
	adds r1, r1, r4
	adds r1, #0xc
	ldr r1, [r1]
	cmp r0, r1
	beq .L080B17F4
	b .L080B199E
.L080B17F4:
	movs r0, #0
	str r0, [r2]
	ldr r1, .L080B1818 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r2, .L080B181C @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	movs r3, #0x87
	lsls r3, r3, #4
	adds r0, r7, r3
	adds r0, r0, r4
	str r1, [r0]
	b .L080B199E
	.align 2, 0
.L080B1818: .4byte 0x00000848
.L080B181C: .4byte 0x0000091A
.L080B1820:
	ldr r5, [sp, #0xa8]
	adds r2, r5, r4
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r6, [sp, #0xb0]
	adds r1, r6, r4
	ldr r1, [r1]
	cmp r0, r1
	bne .L080B1862
	movs r0, #0
	str r0, [r2]
	ldr r1, .L080B189C @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #4
	str r1, [r0]
	ldr r2, .L080B18A0 @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	movs r3, #0x87
	lsls r3, r3, #4
	adds r0, r7, r3
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r5, .L080B18A4 @ =0x00000814
	adds r0, r7, r5
	movs r1, #0xa6
	bl func_08008B6C
.L080B1862:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B186E
	b .L080B199E
.L080B186E:
	ldr r6, .L080B189C @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	ldr r1, .L080B18A0 @ =0x0000091A
	adds r0, r7, r1
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080B18A8 @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r4, .L080B18AC @ =0x0000091F
	adds r0, r7, r4
	add r0, sl
	strb r2, [r0]
	ldr r5, .L080B18B0 @ =0x0000081C
	adds r0, r7, r5
	b .L080B1962
	.align 2, 0
.L080B189C: .4byte 0x00000848
.L080B18A0: .4byte 0x0000091A
.L080B18A4: .4byte 0x00000814
.L080B18A8: .4byte 0x0000085C
.L080B18AC: .4byte 0x0000091F
.L080B18B0: .4byte 0x0000081C
.L080B18B4:
	ldr r6, .L080B1910 @ =0x000008E1
	adds r1, r7, r6
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa8
	bne .L080B18F6
	ldr r1, .L080B1914 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #5
	str r1, [r0]
	ldr r2, .L080B1918 @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	ldr r3, .L080B191C @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	str r1, [r0]
	ldr r5, .L080B1920 @ =0x0000091F
	adds r0, r7, r5
	add r0, sl
	strb r1, [r0]
	subs r6, #0xcd
	adds r0, r7, r6
	movs r1, #0xc7
	bl func_08008B6C
.L080B18F6:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B199E
	ldr r1, .L080B1914 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r2, .L080B1918 @ =0x0000091A
	adds r0, r7, r2
	b .L080B1998
	.align 2, 0
.L080B1910: .4byte 0x000008E1
.L080B1914: .4byte 0x00000848
.L080B1918: .4byte 0x0000091A
.L080B191C: .4byte 0x0000085C
.L080B1920: .4byte 0x0000091F
.L080B1924:
	ldr r3, .L080B196C @ =0x000008E1
	adds r1, r7, r3
	add r1, sl
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x70
	bne .L080B199E
	ldr r5, .L080B1970 @ =0x00000848
	adds r0, r7, r5
	adds r0, r0, r4
	str r2, [r0]
	ldr r6, .L080B1974 @ =0x0000091A
	adds r0, r7, r6
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	ldr r1, .L080B1978 @ =0x0000085C
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	adds r3, #0x3e
	adds r0, r7, r3
	add r0, sl
	strb r2, [r0]
	ldr r4, .L080B197C @ =0x0000081C
	adds r0, r7, r4
.L080B1962:
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B199E
	.align 2, 0
.L080B196C: .4byte 0x000008E1
.L080B1970: .4byte 0x00000848
.L080B1974: .4byte 0x0000091A
.L080B1978: .4byte 0x0000085C
.L080B197C: .4byte 0x0000081C
.L080B1980:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B199E
	ldr r5, .L080B19C0 @ =0x00000848
	adds r0, r7, r5
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r6, .L080B19C4 @ =0x0000091A
	adds r0, r7, r6
.L080B1998:
	add r0, sl
	movs r1, #1
	strb r1, [r0]
.L080B199E:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	bgt .L080B19AA
	b .L080B1794
.L080B19AA:
	ldr r2, .L080B19C8 @ =0x00000844
	adds r5, r7, r2
	ldr r4, [r5]
	cmp r4, #1
	beq .L080B1A24
	cmp r4, #1
	bgt .L080B19CC
	cmp r4, #0
	beq .L080B19D6
	b .L080B1AD4
	.align 2, 0
.L080B19C0: .4byte 0x00000848
.L080B19C4: .4byte 0x0000091A
.L080B19C8: .4byte 0x00000844
.L080B19CC:
	cmp r4, #2
	beq .L080B1A60
	cmp r4, #3
	beq .L080B1A9C
	b .L080B1AD4
.L080B19D6:
	ldr r3, [sp, #0x7c]
	lsls r0, r3, #2
	ldr r6, [sp, #0xb4]
	adds r3, r6, r0
	ldr r2, [r3]
	lsls r1, r2, #2
	ldr r6, .L080B1A18 @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	ble .L080B1AD4
	movs r0, #3
	str r0, [r5]
	ldr r1, .L080B1A1C @ =0x00000929
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r5, [sp, #0xac]
	adds r0, r5, r2
	strb r1, [r0]
	ldr r1, [r3]
	lsls r1, r1, #2
	adds r6, #0x28
	adds r0, r7, r6
	adds r0, r0, r1
	str r4, [r0]
	ldr r1, .L080B1A20 @ =0x00000814
	adds r0, r7, r1
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B1AD4
	.align 2, 0
.L080B1A18: .4byte 0x00000848
.L080B1A1C: .4byte 0x00000929
.L080B1A20: .4byte 0x00000814
.L080B1A24:
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #2
	movs r6, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r3, .L080B1A58 @ =0x00000884
	adds r1, r7, r3
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #2
	ldr r3, [sp, #0xb4]
	adds r0, r3, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne .L080B1AD4
	str r6, [r5]
	ldr r5, .L080B1A5C @ =0x00000929
	adds r0, r7, r5
	strb r4, [r0]
	b .L080B1AD4
	.align 2, 0
.L080B1A58: .4byte 0x00000884
.L080B1A5C: .4byte 0x00000929
.L080B1A60:
	movs r6, #0x8e
	lsls r6, r6, #4
	adds r1, r7, r6
	ldrb r0, [r1]
	adds r0, #2
	movs r4, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r0, .L080B1A94 @ =0x00000884
	adds r1, r7, r0
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #2
	ldr r3, [sp, #0xb4]
	adds r0, r3, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne .L080B1AD4
	str r4, [r5]
	ldr r4, .L080B1A98 @ =0x00000929
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1]
	b .L080B1AD4
	.align 2, 0
.L080B1A94: .4byte 0x00000884
.L080B1A98: .4byte 0x00000929
.L080B1A9C:
	ldr r6, [sp, #0x78]
	adds r6, #1
	str r6, [sp, #0x78]
	cmp r6, #0x1e
	bne .L080B1AD4
	movs r0, #0
	str r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	cmp r1, #0
	beq .L080B1AB4
	cmp r1, #2
	bne .L080B1AB8
.L080B1AB4:
	movs r0, #1
	b .L080B1AC4
.L080B1AB8:
	ldr r2, [sp, #0x7c]
	cmp r2, #1
	beq .L080B1AC2
	cmp r2, #3
	bne .L080B1AC6
.L080B1AC2:
	movs r0, #2
.L080B1AC4:
	str r0, [r5]
.L080B1AC6:
	ldr r3, .L080B1AEC @ =0x00000929
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, [sp, #0x7c]
	adds r4, #1
	str r4, [sp, #0x7c]
.L080B1AD4:
	movs r5, #1
	str r5, [sp, #0x90]
	movs r6, #0
	mov sl, r6
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1AF0
	movs r2, #0
	str r2, [sp, #0x90]
	b .L080B1B0C
	.align 2, 0
.L080B1AEC: .4byte 0x00000929
.L080B1AF0:
	movs r3, #1
	add sl, r3
	mov r4, sl
	cmp r4, #4
	bgt .L080B1B0C
	lsls r0, r4, #2
	ldr r5, .L080B1B38 @ =0x00000848
	adds r1, r7, r5
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1AF0
	movs r6, #0
	str r6, [sp, #0x90]
.L080B1B0C:
	adds r0, r7, #0
	bl func_080B3948
	adds r0, r7, #0
	bl func_080AF814
	ldr r1, .L080B1B3C @ =0x00000838
	adds r0, r7, r1
.L080B1B1C:
	ldr r0, [r0]
	cmp r0, #0
	bne .L080B1B26
	bl sub_080B0CC0
.L080B1B26:
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B1B38: .4byte 0x00000848
.L080B1B3C: .4byte 0x00000838

	thumb_func_start func_080B1B40
func_080B1B40: @ 0x080B1B40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	ldr r1, .L080B1C14 @ =0x0000090E
	adds r0, r7, r1
	ldrb r0, [r0]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	add r0, sp, #0x10
	ldr r4, .L080B1C18 @ =gUnk_0810782C
	adds r1, r4, #0
	movs r2, #6
	bl memcpy
	add r0, sp, #0x18
	ldr r6, .L080B1C1C @ =gUnk_08107834
	adds r1, r6, #0
	movs r2, #0xe
	bl memcpy
	add r0, sp, #0x28
	ldr r2, .L080B1C20 @ =gUnk_08107844
	mov r8, r2
	mov r1, r8
	movs r2, #0xa
	bl memcpy
	add r5, sp, #0x34
	ldr r1, [r4]
	str r1, [sp, #0x34]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	str r1, [sp, #0x34]
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl strcat
	adds r0, r5, #0
	add r1, sp, #0xc
	bl strcat
	adds r0, r5, #0
	mov r1, r8
	bl strcat
	movs r3, #1
	str r3, [sp, #0x5c]
	movs r0, #0
	str r0, [sp, #0x60]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x58
	movs r3, #0xba
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050E5C
	ldr r4, [r4]
	mov sl, r4
	adds r0, r7, #0
	bl func_080088DC
	mov sb, r0
	adds r0, r7, #0
	bl func_08008920
	mov r8, r0
	adds r0, r7, #0
	bl func_08008918
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl func_08050D3C
	b .L080B1D0C
	.align 2, 0
.L080B1C14: .4byte 0x0000090E
.L080B1C18: .4byte gUnk_0810782C
.L080B1C1C: .4byte gUnk_08107834
.L080B1C20: .4byte gUnk_08107844
.L080B1C24:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050D34
	mov sl, r0
	ldr r4, [r4]
	mov sb, r4
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
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bhi .L080B1D0C
	lsls r0, r0, #2
	ldr r1, .L080B1C90 @ =.L080B1C94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B1C90: .4byte .L080B1C94
.L080B1C94: @ jump table
	.4byte .L080B1CB0 @ case 0
	.4byte .L080B1CF0 @ case 1
	.4byte .L080B1CF0 @ case 2
	.4byte .L080B1CD2 @ case 3
	.4byte .L080B1CF0 @ case 4
	.4byte .L080B1CF0 @ case 5
	.4byte .L080B1CF0 @ case 6
.L080B1CB0:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	bne .L080B1CC4
	ldr r0, .L080B1CC0 @ =0x00000838
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
	b .L080B1D0C
	.align 2, 0
.L080B1CC0: .4byte 0x00000838
.L080B1CC4:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	b .L080B1D0C
.L080B1CD2:
	mov r2, sl
	cmp r2, #1
	bne .L080B1CF0
	movs r3, #0x83
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r4]
	add r1, sp, #0x34
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	movs r0, #0
	str r0, [sp, #0x5c]
.L080B1CF0:
	ldr r1, [sp, #0x60]
	adds r1, #1
	str r1, [sp, #0x60]
	cmp r1, #0x78
	ble .L080B1D0C
	movs r2, #0x83
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	bl func_08050D74
.L080B1D0C:
	adds r0, r7, #0
	bl func_080AF814
	ldr r3, .L080B1D30 @ =0x00000838
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B1D1E
	b .L080B1C24
.L080B1D1E:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B1D30: .4byte 0x00000838

	thumb_func_start func_080B1D34
func_080B1D34: @ 0x080B1D34
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r4, #0
	bl func_080AF814
	ldr r1, .L080B1D8C @ =0x00000814
	adds r0, r4, r1
	movs r1, #0xbb
	bl func_08008B6C
	ldr r3, .L080B1D90 @ =0x00000838
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B1D84
	adds r5, r4, r3
	movs r7, #3
.L080B1D6A:
	adds r0, r4, #0
	bl func_080087C8
	adds r0, r4, #0
	bl func_080AF814
	adds r6, #1
	cmp r6, #0x78
	ble .L080B1D7E
	str r7, [r5]
.L080B1D7E:
	ldr r0, [r5]
	cmp r0, #2
	beq .L080B1D6A
.L080B1D84:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B1D8C: .4byte 0x00000814
.L080B1D90: .4byte 0x00000838

	thumb_func_start func_080B1D94
func_080B1D94: @ 0x080B1D94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x30]
	movs r1, #0
	movs r2, #1
	ldr r3, .L080B1E84 @ =0x0000091A
	adds r4, r6, r3
	ldr r5, .L080B1E88 @ =0x00000848
	adds r3, r6, r5
.L080B1DB2:
	stm r3!, {r2}
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #4
	ble .L080B1DB2
	movs r0, #0x14
	bl __builtin_new
	movs r7, #0x84
	lsls r7, r7, #3
	adds r1, r6, r7
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r0, #0x96
	lsls r0, r0, #3
	adds r5, r6, r0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B1DE8
	bl __builtin_delete
.L080B1DE8:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r1, #0x97
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r2, r3, r5}
	stm r4!, {r2, r3, r5}
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r5}
	stm r4!, {r3, r5}
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	movs r7, #0x98
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r7, [r4]
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B1E50
	ldrh r3, [r4, #4]
.L080B1E50:
	str r5, [sp, #0x34]
	lsls r2, r2, #5
	ldr r4, .L080B1E8C @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B1E90
	cmp r1, #0
	beq .L080B1E7A
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1E7A:
	ldr r3, [sp, #0x34]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080B1F60
	.align 2, 0
.L080B1E84: .4byte 0x0000091A
.L080B1E88: .4byte 0x00000848
.L080B1E8C: .4byte 0x06010000
.L080B1E90:
	str r1, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x34]
	ldr r0, [r4]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080B1EAC
	adds r0, r1, #0
.L080B1EAC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B1ECA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B1ECE
	mov r0, sb
	bl func_080D3BC0
	b .L080B1ECE
.L080B1ECA:
	movs r0, #0
	mov sb, r0
.L080B1ECE:
	adds r4, r0, #0
	mov r8, r4
	ldr r7, [sp, #0x34]
	ldr r2, [r7]
	mov r3, r8
	b .L080B1EEE
.L080B1EDA:
	cmp r3, #0
	beq .L080B1EEA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1EEA:
	adds r2, #0x10
	adds r3, #0x10
.L080B1EEE:
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080B1EDA
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080B1F10
	cmp r4, #0
	beq .L080B1F0C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B1F0C:
	adds r4, #0x10
	b .L080B1F38
.L080B1F10:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080B1F36
.L080B1F18:
	cmp r2, #0
	beq .L080B1F28
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1F28:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080B1F18
.L080B1F36:
	adds r4, r2, #0
.L080B1F38:
	ldr r0, [sp, #0x34]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B1F4A
.L080B1F44:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B1F44
.L080B1F4A:
	cmp r0, #0
	beq .L080B1F52
	bl free
.L080B1F52:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x34]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080B1F60:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0x99
	lsls r3, r3, #3
	adds r2, r6, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B1F7A
	ldrh r3, [r2, #4]
.L080B1F7A:
	str r4, [sp, #0x34]
	mov r0, sp
	ldr r2, .L080B1FA8 @ =0x05000260
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080B1FAC
	cmp r1, #0
	beq .L080B1F9E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1F9E:
	ldr r1, [sp, #0x34]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080B2080
	.align 2, 0
.L080B1FA8: .4byte 0x05000260
.L080B1FAC:
	str r1, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x34]
	ldr r0, [r2]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080B1FC8
	adds r0, r1, #0
.L080B1FC8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B1FE6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B1FEA
	mov r0, sb
	bl func_080D3BC0
	b .L080B1FEA
.L080B1FE6:
	movs r0, #0
	mov sb, r0
.L080B1FEA:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x34]
	ldr r2, [r4]
	mov r3, r8
	ldr r5, [sp, #0x38]
	cmp r2, r5
	beq .L080B2014
.L080B1FFA:
	cmp r3, #0
	beq .L080B200A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B200A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x38]
	cmp r2, r7
	bne .L080B1FFA
.L080B2014:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080B2030
	cmp r4, #0
	beq .L080B202C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B202C:
	adds r4, #0x10
	b .L080B2058
.L080B2030:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080B2056
.L080B2038:
	cmp r2, #0
	beq .L080B2048
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2048:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080B2038
.L080B2056:
	adds r4, r2, #0
.L080B2058:
	ldr r0, [sp, #0x34]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B206A
.L080B2064:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2064
.L080B206A:
	cmp r0, #0
	beq .L080B2072
	bl free
.L080B2072:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x34]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080B2080:
	adds r0, r6, #0
	bl func_080AF814
	ldr r3, .L080B208C @ =0x00000838
	adds r0, r6, r3
	b .L080B20F8
	.align 2, 0
.L080B208C: .4byte 0x00000838
.L080B2090:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r4, .L080B20AC @ =0x0000083C
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #0
	beq .L080B20B0
	cmp r0, #1
	beq .L080B20DA
	b .L080B20EE
	.align 2, 0
.L080B20AC: .4byte 0x0000083C
.L080B20B0:
	adds r0, r6, #0
	bl func_080B3518
	adds r0, r6, #0
	bl func_080B36B4
	adds r0, r6, #0
	bl func_080B3948
	ldr r5, [sp, #0x30]
	adds r5, #1
	str r5, [sp, #0x30]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080B0708
	cmp r5, #0x3c
	bne .L080B20EE
	movs r7, #0
	str r7, [sp, #0x30]
	b .L080B20EE
.L080B20DA:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq .L080B20EE
	adds r0, r6, #0
	bl func_080B3BA8
.L080B20EE:
	adds r0, r6, #0
	bl func_080AF814
	ldr r1, .L080B2110 @ =0x00000838
	adds r0, r6, r1
.L080B20F8:
	ldr r0, [r0]
	cmp r0, #3
	beq .L080B2090
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B2110: .4byte 0x00000838

	thumb_func_start func_080B2114
func_080B2114: @ 0x080B2114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x13c
	mov sl, r0
	movs r0, #0
	mov sb, r0
	ldr r0, .L080B2338 @ =0x00000844
	add r0, sl
	mov r1, sb
	str r1, [r0]
	ldr r1, .L080B233C @ =0x00000929
	add r1, sl
	movs r0, #1
	strb r0, [r1]
	add r2, sp, #0x1c
	mov r8, r2
	mov r3, sp
	adds r3, #0x28
	str r3, [sp, #0x110]
	add r6, sp, #0x2c
	mov r4, sp
	adds r4, #0x64
	str r4, [sp, #0x128]
	mov r5, sp
	adds r5, #0x34
	str r5, [sp, #0x11c]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0x124]
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0x118]
	movs r3, #0
	ldr r5, .L080B2340 @ =0x0000091A
	add r5, sl
	movs r2, #1
	ldr r1, .L080B2344 @ =0x00000848
	add r1, sl
	ldr r4, .L080B2348 @ =0x0000091F
	add r4, sl
.L080B216A:
	ldr r0, [r1]
	cmp r0, #5
	beq .L080B2178
	str r3, [r1]
	mov r7, sb
	adds r0, r5, r7
	strb r2, [r0]
.L080B2178:
	str r3, [r1, #0x14]
	mov r7, sb
	adds r0, r4, r7
	strb r2, [r0]
	adds r1, #4
	movs r0, #1
	add sb, r0
	mov r7, sb
	cmp r7, #4
	ble .L080B216A
	ldr r2, .L080B234C @ =0x0000090C
	add r2, sl
	ldrb r0, [r2]
	subs r0, #5
	strb r0, [r2]
	movs r3, #0x91
	lsls r3, r3, #4
	add r3, sl
	ldrb r0, [r2]
	ldr r4, .L080B2350 @ =0x0000090D
	add r4, sl
	ldrb r1, [r4]
	subs r0, r0, r1
	str r0, [r3]
	cmp r0, #0
	bge .L080B21B0
	movs r0, #0
	str r0, [r3]
.L080B21B0:
	ldrb r0, [r2]
	cmp r0, #0x63
	bls .L080B21BA
	movs r0, #0x63
	strb r0, [r2]
.L080B21BA:
	ldrb r0, [r4]
	cmp r0, #0x63
	bls .L080B21C4
	movs r0, #0x63
	strb r0, [r4]
.L080B21C4:
	ldr r0, [r3]
	cmp r0, #0x63
	ble .L080B21CE
	movs r0, #0x63
	str r0, [r3]
.L080B21CE:
	ldrb r0, [r2]
	str r0, [sp, #0x28]
	ldrb r0, [r4]
	str r0, [sp, #0x2c]
	ldr r0, [r3]
	str r0, [sp, #0x30]
	mov r0, r8
	ldr r1, [sp, #0x110]
	movs r2, #0xc
	bl memcpy
	add r0, sp, #0x10
	mov r1, r8
	movs r2, #0xc
	bl memcpy
	movs r0, #0
	str r0, [sp, #0xe0]
	mov r0, sl
	bl func_08008918
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	ldr r3, [sp, #0x110]
	strh r1, [r3]
	strh r1, [r0]
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	cmp r0, #0
	beq .L080B221A
	cmp r0, #0
	beq .L080B221A
	movs r1, #3
	bl func_08050D0C
.L080B221A:
	movs r0, #0
	str r0, [r4]
	movs r0, #4
	bl __builtin_new
	adds r4, r0, #0
	ldr r0, [sp, #0x110]
	bl func_0800835C
	adds r0, r6, #0
	bl func_0800770C
	movs r0, #0
	str r0, [sp]
	ldr r5, [sp, #0x110]
	str r5, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	movs r3, #0
	bl func_08050CC0
	movs r5, #0x83
	lsls r5, r5, #3
	add r5, sl
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B2260
	cmp r0, #0
	beq .L080B2260
	movs r1, #3
	bl func_08050D0C
.L080B2260:
	str r4, [r5]
	adds r0, r6, #0
	movs r1, #2
	bl func_08007714
	ldr r0, [sp, #0x110]
	movs r1, #2
	bl func_08008364
	movs r0, #0x83
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	mov sb, r0
	mov r0, sl
	bl func_080088DC
	mov r8, r0
	mov r0, sl
	bl func_08008920
	adds r6, r0, #0
	mov r0, sl
	bl func_08008918
	adds r5, r0, #0
	mov r0, sl
	bl func_08008940
	adds r4, r0, #0
	mov r0, sl
	bl func_0800894C
	movs r1, #0x81
	lsls r1, r1, #4
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	movs r0, #0
	ldr r1, [sp, #0x110]
	movs r2, #0
	bl func_0804EC84
	movs r6, #0
	mov sb, r6
	ldr r7, [sp, #0x110]
	str r7, [sp, #0xe4]
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sl
	str r0, [sp, #0xe8]
.L080B22D4:
	mov r1, sb
	lsls r4, r1, #6
	adds r0, r4, r1
	lsls r5, r0, #2
	mov r2, sl
	adds r1, r5, r2
	add r0, sp, #0x64
	movs r3, #4
	strh r3, [r0]
	movs r7, #2
	ldr r6, [sp, #0x128]
	strh r7, [r6, #2]
	ldr r0, [sp, #0x64]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	mov r3, sb
	cmp r3, #1
	beq .L080B2354
	ldr r0, [sp, #0xe4]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r6, sl
	adds r1, r5, r6
	movs r3, #5
	add r0, sp, #0x68
	movs r7, #4
	strh r7, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [sp, #0x68]
	movs r6, #0x88
	lsls r6, r6, #1
	adds r1, r1, r6
	ldr r7, [sp, #0xe4]
	str r7, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080B2384
	.align 2, 0
.L080B2338: .4byte 0x00000844
.L080B233C: .4byte 0x00000929
.L080B2340: .4byte 0x0000091A
.L080B2344: .4byte 0x00000848
.L080B2348: .4byte 0x0000091F
.L080B234C: .4byte 0x0000090C
.L080B2350: .4byte 0x0000090D
.L080B2354:
	ldr r0, [sp, #0xe4]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0x6c
	movs r6, #4
	strh r6, [r0]
	movs r7, #2
	strh r7, [r0, #2]
	ldr r0, [sp, #0x6c]
	ldr r3, [sp, #0xe4]
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080B2384:
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	add r4, sb
	lsls r4, r4, #2
	add r4, sl
	movs r7, #0x88
	lsls r7, r7, #1
	adds r4, r4, r7
	ldr r0, [sp, #0xe8]
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	mov r1, sb
	lsls r5, r1, #3
	adds r2, r5, r2
	lsls r2, r2, #5
	ldr r3, .L080B23E8 @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x34
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r4, [sp, #0x11c]
	str r4, [sp, #0xec]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	str r5, [sp, #0x114]
	cmp r1, r0
	beq .L080B23EC
	cmp r1, #0
	beq .L080B23D8
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B23D8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x10c]
	b .L080B24B8
	.align 2, 0
.L080B23E8: .4byte 0x06010000
.L080B23EC:
	str r1, [sp, #0x130]
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L080B2406
	adds r0, r1, #0
.L080B2406:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2424
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2428
	mov r0, r8
	bl func_080D3BC0
	b .L080B2428
.L080B2424:
	movs r0, #0
	mov r8, r0
.L080B2428:
	adds r4, r0, #0
	str r4, [sp, #0x134]
	ldr r2, [r6]
	adds r3, r4, #0
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x10c]
	ldr r7, [sp, #0x130]
	cmp r2, r7
	beq .L080B2456
.L080B243C:
	cmp r3, #0
	beq .L080B244C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B244C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x130]
	cmp r2, r0
	bne .L080B243C
.L080B2456:
	adds r4, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L080B2472
	cmp r4, #0
	beq .L080B246E
	adds r0, r4, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B246E:
	adds r4, #0x10
	b .L080B2494
.L080B2472:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080B2492
.L080B247A:
	cmp r2, #0
	beq .L080B248A
	adds r0, r2, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B248A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B247A
.L080B2492:
	adds r4, r2, #0
.L080B2494:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B24A4
.L080B249E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B249E
.L080B24A4:
	cmp r0, #0
	beq .L080B24AC
	bl free
.L080B24AC:
	ldr r0, [sp, #0x134]
	add r0, r8
	ldr r7, [sp, #0x134]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080B24B8:
	ldr r0, [sp, #0x114]
	movs r2, #0x89
	lsls r2, r2, #3
	adds r1, r0, r2
	add r1, sl
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	mov r3, sb
	cmp r3, #2
	beq .L080B250C
	ldr r4, [sp, #0x114]
	add r4, sl
	movs r5, #0x89
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r6, [sp, #0xe8]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r3, r0, #0
	ldr r7, [sp, #0x114]
	adds r3, r3, r7
	mov r0, sb
	lsls r2, r0, #4
	adds r2, #0x6d
	movs r1, #2
	str r1, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r1, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x78
	movs r1, #0x78
	bl func_0804EA94
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	b .L080B253C
.L080B250C:
	movs r4, #0x8b
	lsls r4, r4, #3
	add r4, sl
	ldr r6, [sp, #0xe8]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r3, r0, #0
	adds r3, #0x10
	mov r7, sb
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x80
	movs r1, #0xb8
	movs r2, #0x8d
	bl func_0804EA94
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x84]
.L080B253C:
	str r0, [r4]
	str r1, [r4, #4]
	ldr r1, [sp, #0x10c]
	mov sb, r1
	cmp r1, #2
	bgt .L080B254A
	b .L080B22D4
.L080B254A:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080B2668 @ =0x0000042C
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x8c
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080B2572
	bl __builtin_delete
.L080B2572:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r6, .L080B266C @ =0x00000464
	add r6, sl
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B25A2
	bl __builtin_delete
.L080B25A2:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #1
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0x70
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0x75
	strh r0, [r1, #2]
	ldr r4, [r6]
	movs r5, #0x8d
	lsls r5, r5, #4
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r0, #0x24
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #9
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strb r3, [r0, #0x18]
	movs r4, #0x8d
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x44
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x124]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x124]
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x8e
	lsls r4, r4, #3
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B2636
	ldrh r3, [r4, #4]
.L080B2636:
	lsls r2, r2, #5
	ldr r4, .L080B2670 @ =0x06010480
	adds r2, r2, r4
	add r0, sp, #0x30
	adds r1, r7, #0
	bl func_08008F0C
	ldr r5, [sp, #0x118]
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2674
	cmp r1, #0
	beq .L080B2660
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2660:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B273A
	.align 2, 0
.L080B2668: .4byte 0x0000042C
.L080B266C: .4byte 0x00000464
.L080B2670: .4byte 0x06010480
.L080B2674:
	str r1, [sp, #0x134]
	mov r4, r8
	str r4, [sp, #0x8c]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x88]
	add r1, sp, #0x8c
	add r0, sp, #0x88
	cmp r4, #1
	bhs .L080B268E
	adds r0, r1, #0
.L080B268E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B26AC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B26B0
	mov r0, r8
	bl func_080D3BC0
	b .L080B26B0
.L080B26AC:
	movs r0, #0
	mov r8, r0
.L080B26B0:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B26D8
.L080B26BE:
	cmp r3, #0
	beq .L080B26CE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B26CE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B26BE
.L080B26D8:
	adds r5, r3, #0
	ldr r0, [sp, #0x8c]
	cmp r0, #1
	bne .L080B26F4
	cmp r5, #0
	beq .L080B26F0
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B26F0:
	adds r5, #0x10
	b .L080B2716
.L080B26F4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2714
.L080B26FC:
	cmp r2, #0
	beq .L080B270C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B270C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B26FC
.L080B2714:
	adds r5, r2, #0
.L080B2716:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2726
.L080B2720:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2720
.L080B2726:
	cmp r0, #0
	beq .L080B272E
	bl free
.L080B272E:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B273A:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x8f
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B2754
	ldrh r3, [r2, #4]
.L080B2754:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080B2784 @ =0x05000320
	bl func_08008F0C
	ldr r0, [sp, #0x118]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2788
	cmp r1, #0
	beq .L080B277A
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B277A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2850
	.align 2, 0
.L080B2784: .4byte 0x05000320
.L080B2788:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B27A4
	adds r0, r1, #0
.L080B27A4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B27C2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B27C6
	mov r0, r8
	bl func_080D3BC0
	b .L080B27C6
.L080B27C2:
	movs r0, #0
	mov r8, r0
.L080B27C6:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B27EE
.L080B27D4:
	cmp r3, #0
	beq .L080B27E4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B27E4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B27D4
.L080B27EE:
	adds r5, r3, #0
	ldr r1, [sp, #0x94]
	cmp r1, #1
	bne .L080B280A
	cmp r5, #0
	beq .L080B2806
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2806:
	adds r5, #0x10
	b .L080B282C
.L080B280A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B282A
.L080B2812:
	cmp r2, #0
	beq .L080B2822
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2822:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2812
.L080B282A:
	adds r5, r2, #0
.L080B282C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B283C
.L080B2836:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2836
.L080B283C:
	cmp r0, #0
	beq .L080B2844
	bl free
.L080B2844:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2850:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x91
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080B287A
	bl __builtin_delete
.L080B287A:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r6, .L080B2970 @ =0x0000048C
	add r6, sl
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B28AA
	bl __builtin_delete
.L080B28AA:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0x68
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0x7d
	strh r0, [r1, #2]
	ldr r4, [r6]
	movs r5, #0x8d
	lsls r5, r5, #4
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r0, #0x28
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #0xb
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r4, #0x92
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x118]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x118]
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x93
	lsls r4, r4, #3
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B293E
	ldrh r3, [r4, #4]
.L080B293E:
	lsls r2, r2, #5
	ldr r0, .L080B2974 @ =0x06010500
	adds r2, r2, r0
	ldr r0, [sp, #0x118]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0x118]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2978
	cmp r1, #0
	beq .L080B2968
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2968:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2A3C
	.align 2, 0
.L080B2970: .4byte 0x0000048C
.L080B2974: .4byte 0x06010500
.L080B2978:
	str r1, [sp, #0x134]
	add r1, sp, #0x9c
	mov r5, r8
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x134]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2994
	adds r0, r1, #0
.L080B2994:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B29B2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B29B6
	mov r0, r8
	bl func_080D3BC0
	b .L080B29B6
.L080B29B2:
	movs r0, #0
	mov r8, r0
.L080B29B6:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080B29D4
.L080B29C0:
	cmp r3, #0
	beq .L080B29D0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B29D0:
	adds r2, #0x10
	adds r3, #0x10
.L080B29D4:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B29C0
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080B29F6
	cmp r5, #0
	beq .L080B29F2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B29F2:
	adds r5, #0x10
	b .L080B2A18
.L080B29F6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2A16
.L080B29FE:
	cmp r2, #0
	beq .L080B2A0E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2A0E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B29FE
.L080B2A16:
	adds r5, r2, #0
.L080B2A18:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2A28
.L080B2A22:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2A22
.L080B2A28:
	cmp r0, #0
	beq .L080B2A30
	bl free
.L080B2A30:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2A3C:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x94
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B2A56
	ldrh r3, [r2, #4]
.L080B2A56:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080B2A84 @ =0x05000360
	bl func_08008F0C
	ldr r0, [sp, #0x118]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2A88
	cmp r1, #0
	beq .L080B2A7C
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2A7C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2B50
	.align 2, 0
.L080B2A84: .4byte 0x05000360
.L080B2A88:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xa4
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2AA4
	adds r0, r1, #0
.L080B2AA4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2AC2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2AC6
	mov r0, r8
	bl func_080D3BC0
	b .L080B2AC6
.L080B2AC2:
	movs r0, #0
	mov r8, r0
.L080B2AC6:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B2AEE
.L080B2AD4:
	cmp r3, #0
	beq .L080B2AE4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2AE4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B2AD4
.L080B2AEE:
	adds r5, r3, #0
	ldr r1, [sp, #0xa4]
	cmp r1, #1
	bne .L080B2B0A
	cmp r5, #0
	beq .L080B2B06
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2B06:
	adds r5, #0x10
	b .L080B2B2C
.L080B2B0A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2B2A
.L080B2B12:
	cmp r2, #0
	beq .L080B2B22
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2B22:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2B12
.L080B2B2A:
	adds r5, r2, #0
.L080B2B2C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2B3C
.L080B2B36:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2B36
.L080B2B3C:
	cmp r0, #0
	beq .L080B2B44
	bl free
.L080B2B44:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2B50:
	movs r0, #0x91
	lsls r0, r0, #4
	add r0, sl
	ldr r1, .L080B2B90 @ =0x0000090E
	add r1, sl
	ldr r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bge .L080B2B98
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x87
	lsls r1, r1, #3
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	ldr r4, .L080B2B94 @ =0x000007E4
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B2B8A
	bl __builtin_delete
.L080B2B8A:
	str r5, [r4]
	b .L080B2BC8
	.align 2, 0
.L080B2B90: .4byte 0x0000090E
.L080B2B94: .4byte 0x000007E4
.L080B2B98:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080B2CB8 @ =0x00000434
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	ldr r4, .L080B2CBC @ =0x000007E4
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B2BBE
	bl __builtin_delete
.L080B2BBE:
	str r5, [r4]
	ldr r1, .L080B2CC0 @ =0x0000092C
	add r1, sl
	movs r0, #1
	strb r0, [r1]
.L080B2BC8:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	movs r7, #0xfd
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080B2BF8
	bl __builtin_delete
.L080B2BF8:
	str r4, [r7]
	ldr r6, .L080B2CBC @ =0x000007E4
	add r6, sl
	ldr r0, [r6]
	movs r1, #0
	bl func_0805E860
	ldr r0, [r7]
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r7]
	strh r1, [r0, #2]
	ldr r4, [r7]
	ldr r5, .L080B2CC4 @ =0x000008D8
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r7]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r0, [r7]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	ldr r4, .L080B2CC8 @ =0x000007EC
	add r4, sl
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x118]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x118]
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	ldr r4, .L080B2CCC @ =0x000007F4
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B2C86
	ldrh r3, [r4, #4]
.L080B2C86:
	lsls r2, r2, #5
	ldr r0, .L080B2CD0 @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0x118]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0x118]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2CD4
	cmp r1, #0
	beq .L080B2CB0
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2CB0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2D98
	.align 2, 0
.L080B2CB8: .4byte 0x00000434
.L080B2CBC: .4byte 0x000007E4
.L080B2CC0: .4byte 0x0000092C
.L080B2CC4: .4byte 0x000008D8
.L080B2CC8: .4byte 0x000007EC
.L080B2CCC: .4byte 0x000007F4
.L080B2CD0: .4byte 0x06010000
.L080B2CD4:
	str r1, [sp, #0x134]
	add r1, sp, #0xac
	mov r5, r8
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x134]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2CF0
	adds r0, r1, #0
.L080B2CF0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2D0E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2D12
	mov r0, r8
	bl func_080D3BC0
	b .L080B2D12
.L080B2D0E:
	movs r0, #0
	mov r8, r0
.L080B2D12:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080B2D30
.L080B2D1C:
	cmp r3, #0
	beq .L080B2D2C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2D2C:
	adds r2, #0x10
	adds r3, #0x10
.L080B2D30:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B2D1C
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L080B2D52
	cmp r5, #0
	beq .L080B2D4E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2D4E:
	adds r5, #0x10
	b .L080B2D74
.L080B2D52:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2D72
.L080B2D5A:
	cmp r2, #0
	beq .L080B2D6A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2D6A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2D5A
.L080B2D72:
	adds r5, r2, #0
.L080B2D74:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2D84
.L080B2D7E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2D7E
.L080B2D84:
	cmp r0, #0
	beq .L080B2D8C
	bl free
.L080B2D8C:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2D98:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	ldr r2, .L080B2DE0 @ =0x000007FC
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B2DB0
	ldrh r3, [r2, #4]
.L080B2DB0:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080B2DE4 @ =0x05000380
	bl func_08008F0C
	ldr r0, [sp, #0x118]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2DE8
	cmp r1, #0
	beq .L080B2DD6
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2DD6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2EB0
	.align 2, 0
.L080B2DE0: .4byte 0x000007FC
.L080B2DE4: .4byte 0x05000380
.L080B2DE8:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xb4
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2E04
	adds r0, r1, #0
.L080B2E04:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2E22
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2E26
	mov r0, r8
	bl func_080D3BC0
	b .L080B2E26
.L080B2E22:
	movs r0, #0
	mov r8, r0
.L080B2E26:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B2E4E
.L080B2E34:
	cmp r3, #0
	beq .L080B2E44
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2E44:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B2E34
.L080B2E4E:
	adds r5, r3, #0
	ldr r1, [sp, #0xb4]
	cmp r1, #1
	bne .L080B2E6A
	cmp r5, #0
	beq .L080B2E66
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2E66:
	adds r5, #0x10
	b .L080B2E8C
.L080B2E6A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2E8A
.L080B2E72:
	cmp r2, #0
	beq .L080B2E82
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2E82:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2E72
.L080B2E8A:
	adds r5, r2, #0
.L080B2E8C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2E9C
.L080B2E96:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2E96
.L080B2E9C:
	cmp r0, #0
	beq .L080B2EA4
	bl free
.L080B2EA4:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2EB0:
	mov r0, sl
	bl func_080B0934
	ldr r0, .L080B2EE8 @ =0x0000080C
	add r0, sl
	ldr r2, .L080B2EEC @ =0x0000FFFF
	movs r1, #0xcd
	bl func_08008C38
	mov r0, sl
	bl func_080AF814
	movs r0, #0
	str r0, [sp, #0xf0]
	movs r1, #0
	str r1, [sp, #0xf4]
	ldr r1, [sp, #0x118]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #8
.L080B2ED8:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge .L080B2ED8
	movs r2, #0
	str r2, [sp, #0xf8]
	b .L080B34BA
	.align 2, 0
.L080B2EE8: .4byte 0x0000080C
.L080B2EEC: .4byte 0x0000FFFF
.L080B2EF0:
	mov r0, sl
	bl func_080087C8
	mov r0, sl
	bl func_080088B8
	movs r1, #0x84
	lsls r1, r1, #4
	add r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bne .L080B2F1C
	ldr r3, [sp, #0xf0]
	adds r3, #1
	str r3, [sp, #0xf0]
	cmp r3, #0x78
	beq .L080B2F14
	b .L080B34B4
.L080B2F14:
	movs r4, #0
	str r4, [sp, #0xf0]
	movs r0, #1
	b .L080B34B2
.L080B2F1C:
	mov r0, sl
	bl func_080088D4
	str r0, [sp, #0xfc]
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	bl func_08050D34
	adds r7, r0, #0
	ldr r4, [r4]
	mov sb, r4
	mov r0, sl
	bl func_080088DC
	mov r8, r0
	mov r0, sl
	bl func_08008920
	adds r6, r0, #0
	mov r0, sl
	bl func_08008918
	adds r5, r0, #0
	mov r0, sl
	bl func_08008940
	adds r4, r0, #0
	mov r0, sl
	bl func_0800894C
	movs r1, #0x81
	lsls r1, r1, #4
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bhi .L080B2FD0
	lsls r0, r0, #2
	ldr r1, .L080B2F84 @ =.L080B2F88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B2F84: .4byte .L080B2F88
.L080B2F88: @ jump table
	.4byte .L080B2FA4 @ case 0
	.4byte .L080B2FD0 @ case 1
	.4byte .L080B2FD0 @ case 2
	.4byte .L080B2FB2 @ case 3
	.4byte .L080B2FD0 @ case 4
	.4byte .L080B2FD0 @ case 5
	.4byte .L080B2FD0 @ case 6
.L080B2FA4:
	movs r0, #0x83
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	bl func_08050D5C
	b .L080B2FD0
.L080B2FB2:
	cmp r7, #1
	bne .L080B2FD0
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	ldr r1, .L080B2FE8 @ =gUnk_08107850
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	ldr r0, .L080B2FEC @ =0x0000092A
	add r0, sl
	strb r7, [r0]
.L080B2FD0:
	movs r0, #0x84
	lsls r0, r0, #4
	add r0, sl
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B2FDE
	b .L080B343C
.L080B2FDE:
	cmp r0, #2
	bgt .L080B2FF0
	cmp r0, #1
	beq .L080B2FF8
	b .L080B34B4
	.align 2, 0
.L080B2FE8: .4byte gUnk_08107850
.L080B2FEC: .4byte 0x0000092A
.L080B2FF0:
	cmp r0, #3
	bne .L080B2FF6
	b .L080B3494
.L080B2FF6:
	b .L080B34B4
.L080B2FF8:
	ldr r0, .L080B3094 @ =0x0000092A
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B3004
	b .L080B34B4
.L080B3004:
	ldr r5, [sp, #0xe0]
	adds r5, #1
	str r5, [sp, #0xe0]
	ldr r6, [sp, #0xf8]
	lsls r6, r6, #2
	str r6, [sp, #0x108]
	cmp r5, #0x14
	beq .L080B3016
	b .L080B31F4
.L080B3016:
	movs r7, #0
	str r7, [sp, #0xe0]
	ldr r0, [sp, #0x118]
	adds r4, r0, r6
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, .L080B3098 @ =0x00000814
	add r0, sl
	movs r1, #0xa6
	bl func_08008B6C
	ldr r0, [r4]
	ldr r1, [sp, #0x110]
	movs r2, #0
	bl func_0804EC84
	ldr r1, [sp, #0xf8]
	lsls r4, r1, #6
	adds r0, r4, r1
	lsls r5, r0, #2
	mov r2, sl
	adds r1, r5, r2
	add r0, sp, #0xb8
	movs r6, #4
	movs r7, #2
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0xf8]
	cmp r0, #1
	beq .L080B309C
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r3, sl
	adds r1, r5, r3
	movs r3, #5
	add r0, sp, #0xbc
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	ldr r6, [sp, #0x110]
	str r6, [sp]
	ldr r7, [sp, #0xe0]
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080B30C8
	.align 2, 0
.L080B3094: .4byte 0x0000092A
.L080B3098: .4byte 0x00000814
.L080B309C:
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r3, #7
	add r0, sp, #0xc0
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	ldr r5, [sp, #0x110]
	str r5, [sp]
	ldr r6, [sp, #0xe0]
	str r6, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
.L080B30C8:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0xf8]
	adds r4, r4, r7
	lsls r4, r4, #2
	add r4, sl
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r2, r7, #3
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r1, .L080B3128 @ =0x06010000
	adds r2, r2, r1
	add r0, sp, #0x3c
	adds r1, r4, #0
	bl func_08008F0C
	add r2, sp, #0x3c
	mov sb, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, sb
	str r3, [sp, #0x120]
	cmp r1, r0
	beq .L080B312C
	cmp r1, #0
	beq .L080B3120
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B3120:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B31F4
	.align 2, 0
.L080B3128: .4byte 0x06010000
.L080B312C:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xc8
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x134]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xc4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B3148
	adds r0, r1, #0
.L080B3148:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B3166
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B316A
	mov r0, r8
	bl func_080D3BC0
	b .L080B316A
.L080B3166:
	movs r0, #0
	mov r8, r0
.L080B316A:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x134]
	cmp r2, r4
	beq .L080B3192
.L080B3178:
	cmp r3, #0
	beq .L080B3188
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B3188:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x134]
	cmp r2, r6
	bne .L080B3178
.L080B3192:
	adds r6, r3, #0
	ldr r1, [sp, #0xc8]
	cmp r1, #1
	bne .L080B31AE
	cmp r6, #0
	beq .L080B31AA
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B31AA:
	adds r6, #0x10
	b .L080B31D0
.L080B31AE:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080B31CE
.L080B31B6:
	cmp r2, #0
	beq .L080B31C6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B31C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B31B6
.L080B31CE:
	adds r6, r2, #0
.L080B31D0:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B31E0
.L080B31DA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B31DA
.L080B31E0:
	cmp r0, #0
	beq .L080B31E8
	bl free
.L080B31E8:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r1, [sp, #0x138]
	str r1, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080B31F4:
	ldr r2, [sp, #0x118]
	ldr r3, [sp, #0x108]
	adds r0, r2, r3
	adds r1, r3, #0
	add r1, sp
	adds r1, #0x10
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne .L080B320E
	ldr r4, [sp, #0xf8]
	adds r4, #1
	str r4, [sp, #0xf8]
.L080B320E:
	movs r0, #9
	ldr r5, [sp, #0xfc]
	ands r0, r5
	cmp r0, #0
	bne .L080B321A
	b .L080B3418
.L080B321A:
	movs r6, #0
	mov sb, r6
	mov r7, sp
	adds r7, #0x3c
	str r7, [sp, #0x120]
	mov r0, sp
	adds r0, #0xcc
	str r0, [sp, #0x12c]
	mov r1, sp
	adds r1, #0xd0
	str r1, [sp, #0x100]
.L080B3230:
	mov r2, sb
	lsls r0, r2, #2
	ldr r3, [sp, #0x118]
	adds r1, r3, r0
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [sp, #0x110]
	movs r2, #0
	bl func_0804EC84
	mov r5, sb
	lsls r4, r5, #6
	adds r0, r4, r5
	lsls r5, r0, #2
	mov r6, sl
	adds r1, r5, r6
	add r0, sp, #0xcc
	movs r7, #4
	strh r7, [r0]
	movs r3, #2
	ldr r2, [sp, #0x12c]
	strh r3, [r2, #2]
	ldr r0, [r0]
	movs r6, #0x88
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	bl func_0804E7A0
	mov r7, sb
	cmp r7, #1
	beq .L080B32AA
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r0, sl
	adds r1, r5, r0
	movs r3, #5
	movs r6, #4
	ldr r5, [sp, #0x100]
	strh r6, [r5]
	movs r7, #2
	strh r7, [r5, #2]
	ldr r0, [r5]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	ldr r6, [sp, #0x110]
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080B32DA
.L080B32AA:
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0xd4
	movs r3, #4
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [r0]
	ldr r6, [sp, #0x110]
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080B32DA:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	add r4, sb
	lsls r4, r4, #2
	add r4, sl
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sb
	lsls r2, r1, #3
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r3, .L080B333C @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x3c
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r4, [sp, #0x120]
	str r4, [sp, #0x104]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B3340
	cmp r1, #0
	beq .L080B332E
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B332E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x10c]
	b .L080B340E
	.align 2, 0
.L080B333C: .4byte 0x06010000
.L080B3340:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r0, [r5]
	ldr r4, [sp, #0x134]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B335C
	adds r0, r1, #0
.L080B335C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B337A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B337E
	mov r0, r8
	bl func_080D3BC0
	b .L080B337E
.L080B337A:
	movs r0, #0
	mov r8, r0
.L080B337E:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	mov r6, sb
	adds r6, #1
	str r6, [sp, #0x10c]
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B33AC
.L080B3392:
	cmp r3, #0
	beq .L080B33A2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B33A2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B3392
.L080B33AC:
	adds r6, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L080B33C8
	cmp r6, #0
	beq .L080B33C4
	adds r0, r6, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B33C4:
	adds r6, #0x10
	b .L080B33EA
.L080B33C8:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080B33E8
.L080B33D0:
	cmp r2, #0
	beq .L080B33E0
	adds r0, r2, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B33E0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B33D0
.L080B33E8:
	adds r6, r2, #0
.L080B33EA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B33FA
.L080B33F4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B33F4
.L080B33FA:
	cmp r0, #0
	beq .L080B3402
	bl free
.L080B3402:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080B340E:
	ldr r0, [sp, #0x10c]
	mov sb, r0
	cmp r0, #2
	bgt .L080B3418
	b .L080B3230
.L080B3418:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne .L080B34B4
	ldr r2, [sp, #0x118]
	ldr r1, [r2, #4]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne .L080B34B4
	ldr r1, [r2, #8]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne .L080B34B4
	movs r1, #0x84
	lsls r1, r1, #4
	add r1, sl
	movs r0, #2
	b .L080B34B2
.L080B343C:
	ldr r3, [sp, #0xf4]
	adds r3, #1
	str r3, [sp, #0xf4]
	cmp r3, #0x3c
	bne .L080B347A
	ldr r1, .L080B3464 @ =0x0000092B
	add r1, sl
	movs r0, #1
	strb r0, [r1]
	ldr r0, .L080B3468 @ =0x0000092C
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B3470
	ldr r0, .L080B346C @ =0x00000814
	add r0, sl
	movs r1, #0xb7
	bl func_08008B6C
	b .L080B347A
	.align 2, 0
.L080B3464: .4byte 0x0000092B
.L080B3468: .4byte 0x0000092C
.L080B346C: .4byte 0x00000814
.L080B3470:
	ldr r0, .L080B3490 @ =0x00000814
	add r0, sl
	movs r1, #0xb6
	bl func_08008B6C
.L080B347A:
	ldr r4, [sp, #0xf4]
	cmp r4, #0xf0
	bne .L080B34B4
	movs r5, #0
	str r5, [sp, #0xf4]
	movs r1, #0x84
	lsls r1, r1, #4
	add r1, sl
	movs r0, #3
	b .L080B34B2
	.align 2, 0
.L080B3490: .4byte 0x00000814
.L080B3494:
	ldr r6, [sp, #0xf4]
	adds r6, #1
	str r6, [sp, #0xf4]
	movs r0, #9
	ldr r7, [sp, #0xfc]
	ands r0, r7
	cmp r0, #0
	bne .L080B34AC
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r6, r0
	bne .L080B34B4
.L080B34AC:
	ldr r1, .L080B34D8 @ =0x00000838
	add r1, sl
	movs r0, #5
.L080B34B2:
	str r0, [r1]
.L080B34B4:
	mov r0, sl
	bl func_080AF814
.L080B34BA:
	ldr r0, .L080B34D8 @ =0x00000838
	add r0, sl
	ldr r0, [r0]
	cmp r0, #4
	bne .L080B34C6
	b .L080B2EF0
.L080B34C6:
	add sp, #0x13c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B34D8: .4byte 0x00000838

	thumb_func_start func_080B34DC
func_080B34DC: @ 0x080B34DC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0x8e
	lsls r0, r0, #4
	adds r5, r3, r0
	ldr r6, .L080B34FC @ =gUnk_0810787C
	subs r0, #0x5c
	adds r4, r3, r0
.L080B34EE:
	adds r1, r2, r6
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bne .L080B3500
	str r2, [r4]
	b .L080B350E
	.align 2, 0
.L080B34FC: .4byte gUnk_0810787C
.L080B3500:
	adds r2, #1
	cmp r2, #4
	ble .L080B34EE
	ldr r0, .L080B3514 @ =0x00000884
	adds r1, r3, r0
	movs r0, #5
	str r0, [r1]
.L080B350E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3514: .4byte 0x00000884

	thumb_func_start func_080B3518
func_080B3518: @ 0x080B3518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl func_080088D4
	adds r0, r4, #0
	bl func_080088C4
	adds r7, r0, #0
	adds r0, r4, #0
	bl func_080088CC
	mov r8, r0
	ldr r0, .L080B3548 @ =0x00000844
	adds r6, r4, r0
	ldr r1, [r6]
	cmp r1, #2
	bgt .L080B354C
	cmp r1, #1
	bge .L080B3552
	cmp r1, #0
	beq .L080B35B4
	b .L080B3642
	.align 2, 0
.L080B3548: .4byte 0x00000844
.L080B354C:
	cmp r1, #3
	beq .L080B3614
	b .L080B3642
.L080B3552:
	movs r5, #0x30
	ands r5, r7
	cmp r5, #0
	bne .L080B357C
	adds r0, r4, #0
	bl func_080B34DC
	ldr r1, .L080B3574 @ =0x00000884
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #5
	beq .L080B3642
	str r5, [r6]
	ldr r2, .L080B3578 @ =0x00000929
	adds r1, r4, r2
	b .L080B3608
	.align 2, 0
.L080B3574: .4byte 0x00000884
.L080B3578: .4byte 0x00000929
.L080B357C:
	movs r0, #0x20
	ands r0, r7
	cmp r0, #0
	beq .L080B358E
	cmp r1, #1
	beq .L080B358E
	movs r1, #1
	str r1, [r6]
	b .L080B35E2
.L080B358E:
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq .L080B3642
	ldr r0, .L080B35AC @ =0x00000844
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #2
	beq .L080B3642
	movs r0, #2
	str r0, [r1]
	ldr r2, .L080B35B0 @ =0x00000929
	adds r1, r4, r2
	b .L080B3608
	.align 2, 0
.L080B35AC: .4byte 0x00000844
.L080B35B0: .4byte 0x00000929
.L080B35B4:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L080B35CC
	ldr r1, .L080B35EC @ =0x00000914
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B35CC
	adds r0, r4, #0
	bl func_080B3A28
.L080B35CC:
	ldr r0, .L080B35F0 @ =0x00000844
	adds r2, r4, r0
	ldr r0, [r2]
	cmp r0, #0
	bne .L080B3642
	movs r0, #0x20
	ands r0, r7
	cmp r0, #0
	beq .L080B35F8
	movs r1, #1
	str r1, [r2]
.L080B35E2:
	ldr r2, .L080B35F4 @ =0x00000929
	adds r0, r4, r2
	strb r1, [r0]
	b .L080B3642
	.align 2, 0
.L080B35EC: .4byte 0x00000914
.L080B35F0: .4byte 0x00000844
.L080B35F4: .4byte 0x00000929
.L080B35F8:
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq .L080B3642
	movs r0, #2
	str r0, [r2]
	ldr r0, .L080B3610 @ =0x00000929
	adds r1, r4, r0
.L080B3608:
	movs r0, #1
	strb r0, [r1]
	b .L080B3642
	.align 2, 0
.L080B3610: .4byte 0x00000929
.L080B3614:
	ldr r1, .L080B3670 @ =0x000008FA
	adds r2, r4, r1
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls .L080B3642
	str r3, [r6]
	adds r1, #0x2f
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	strb r3, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq .L080B3642
	ldr r2, .L080B3674 @ =0x00000914
	adds r0, r4, r2
	strb r3, [r0]
.L080B3642:
	ldr r0, .L080B3674 @ =0x00000914
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080B3656
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	bne .L080B3656
	strb r0, [r1]
.L080B3656:
	ldr r1, .L080B3678 @ =0x00000844
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B367C
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0x49
	bls .L080B367C
	subs r0, #2
	b .L080B3694
	.align 2, 0
.L080B3670: .4byte 0x000008FA
.L080B3674: .4byte 0x00000914
.L080B3678: .4byte 0x00000844
.L080B367C:
	ldr r1, .L080B36B0 @ =0x00000844
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B3696
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0xa6
	bhi .L080B3696
	adds r0, #2
.L080B3694:
	strb r0, [r1]
.L080B3696:
	movs r0, #8
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq .L080B36A6
	adds r0, r4, #0
	bl func_080B3BA8
.L080B36A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B36B0: .4byte 0x00000844

	thumb_func_start func_080B36B4
func_080B36B4: @ 0x080B36B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r7, #0
.L080B36BE:
	ldr r1, .L080B3708 @ =0x00000915
	adds r0, r5, r1
	adds r6, r0, r7
	ldrb r0, [r6]
	cmp r0, #0
	beq .L080B36EA
	movs r4, #0xb4
	bl rand
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	asrs r1, r1, #0x10
	lsls r2, r7, #1
	ldr r3, .L080B370C @ =0x000008E6
	adds r0, r5, r3
	adds r0, r0, r2
	movs r2, #0
	adds r1, #0xb4
	strh r1, [r0]
	strb r2, [r6]
.L080B36EA:
	lsls r0, r7, #2
	ldr r4, .L080B3710 @ =0x00000848
	adds r1, r5, r4
	adds r1, r1, r0
	ldr r1, [r1]
	subs r1, #1
	adds r4, r0, #0
	cmp r1, #5
	bls .L080B36FE
	b .L080B3924
.L080B36FE:
	lsls r0, r1, #2
	ldr r1, .L080B3714 @ =.L080B3718
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B3708: .4byte 0x00000915
.L080B370C: .4byte 0x000008E6
.L080B3710: .4byte 0x00000848
.L080B3714: .4byte .L080B3718
.L080B3718: @ jump table
	.4byte .L080B3840 @ case 0
	.4byte .L080B38D0 @ case 1
	.4byte .L080B3730 @ case 2
	.4byte .L080B379C @ case 3
	.4byte .L080B3924 @ case 4
	.4byte .L080B3800 @ case 5
.L080B3730:
	ldr r6, .L080B3784 @ =0x000008E1
	adds r0, r5, r6
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #0x70
	bls .L080B3740
	subs r0, #1
	strb r0, [r1]
.L080B3740:
	ldrb r0, [r1]
	cmp r0, #0x70
	beq .L080B3748
	b .L080B3924
.L080B3748:
	ldr r1, .L080B3788 @ =0x00000848
	adds r0, r5, r1
	adds r0, r0, r4
	movs r3, #1
	str r3, [r0]
	ldr r2, .L080B378C @ =0x0000085C
	adds r0, r5, r2
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r4, .L080B3790 @ =0x00000915
	adds r0, r5, r4
	adds r0, r0, r7
	movs r2, #0
	strb r3, [r0]
	lsls r1, r7, #1
	movs r6, #0x8f
	lsls r6, r6, #4
	adds r0, r5, r6
	adds r0, r0, r1
	strh r2, [r0]
	ldr r1, .L080B3794 @ =0x0000091A
	adds r0, r5, r1
	adds r0, r0, r7
	strb r3, [r0]
	ldr r2, .L080B3798 @ =0x0000091F
	adds r0, r5, r2
	adds r0, r0, r7
	strb r3, [r0]
	b .L080B3924
	.align 2, 0
.L080B3784: .4byte 0x000008E1
.L080B3788: .4byte 0x00000848
.L080B378C: .4byte 0x0000085C
.L080B3790: .4byte 0x00000915
.L080B3794: .4byte 0x0000091A
.L080B3798: .4byte 0x0000091F
.L080B379C:
	ldr r3, .L080B37EC @ =0x000008E1
	adds r1, r5, r3
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa8
	beq .L080B37B2
	b .L080B3924
.L080B37B2:
	ldr r6, .L080B37F0 @ =0x00000848
	adds r0, r5, r6
	adds r0, r0, r4
	movs r1, #5
	str r1, [r0]
	ldr r1, .L080B37F4 @ =0x0000085C
	adds r0, r5, r1
	adds r0, r0, r4
	movs r2, #1
	str r2, [r0]
	adds r3, #0x2c
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r4, .L080B37F8 @ =0x0000091A
	adds r0, r5, r4
	adds r0, r0, r7
	strb r2, [r0]
	adds r6, #0xd7
	adds r0, r5, r6
	adds r0, r0, r7
	strb r2, [r0]
	ldr r1, .L080B37FC @ =0x00000814
	adds r0, r5, r1
	movs r1, #0xc7
	bl func_08008B6C
	b .L080B3924
	.align 2, 0
.L080B37EC: .4byte 0x000008E1
.L080B37F0: .4byte 0x00000848
.L080B37F4: .4byte 0x0000085C
.L080B37F8: .4byte 0x0000091A
.L080B37FC: .4byte 0x00000814
.L080B3800:
	lsls r1, r7, #1
	ldr r2, .L080B3834 @ =0x000008FC
	adds r0, r5, r2
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, #1
	movs r3, #0
	strh r1, [r2]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	beq .L080B381C
	b .L080B3924
.L080B381C:
	strh r3, [r2]
	ldr r3, .L080B3838 @ =0x00000848
	adds r0, r5, r3
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r4, .L080B383C @ =0x0000091A
	adds r0, r5, r4
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	b .L080B3924
	.align 2, 0
.L080B3834: .4byte 0x000008FC
.L080B3838: .4byte 0x00000848
.L080B383C: .4byte 0x0000091A
.L080B3840:
	lsls r2, r7, #1
	movs r6, #0x8f
	lsls r6, r6, #4
	adds r0, r5, r6
	adds r3, r0, r2
	ldrh r1, [r3]
	adds r1, #1
	movs r0, #0
	mov ip, r0
	movs r6, #0
	mov r8, r6
	strh r1, [r3]
	ldr r6, .L080B38B8 @ =0x000008E6
	adds r0, r5, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r0, #1
	cmp r1, r0
	bne .L080B388C
	mov r0, r8
	strh r0, [r3]
	ldr r1, .L080B38BC @ =0x00000848
	adds r0, r5, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	movs r2, #0x87
	lsls r2, r2, #4
	adds r0, r5, r2
	adds r0, r0, r4
	movs r1, #1
	str r1, [r0]
	ldr r3, .L080B38C0 @ =0x0000091A
	adds r0, r5, r3
	adds r0, r0, r7
	strb r1, [r0]
.L080B388C:
	ldr r4, .L080B38C4 @ =0x00000924
	adds r0, r5, r4
	adds r2, r0, r7
	ldrb r0, [r2]
	cmp r0, #0
	beq .L080B3924
	ldr r6, .L080B38C8 @ =0x0000090C
	adds r0, r5, r6
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	mov r1, ip
	strb r1, [r2]
	ldrb r0, [r0]
	cmp r0, #5
	bls .L080B3924
	ldr r2, .L080B38CC @ =0x0000081C
	adds r0, r5, r2
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B3924
	.align 2, 0
.L080B38B8: .4byte 0x000008E6
.L080B38BC: .4byte 0x00000848
.L080B38C0: .4byte 0x0000091A
.L080B38C4: .4byte 0x00000924
.L080B38C8: .4byte 0x0000090C
.L080B38CC: .4byte 0x0000081C
.L080B38D0:
	lsls r2, r7, #1
	movs r3, #0x8f
	lsls r3, r3, #4
	adds r0, r5, r3
	adds r3, r0, r2
	ldrh r1, [r3]
	adds r1, #1
	movs r6, #0
	mov r8, r6
	strh r1, [r3]
	ldr r6, .L080B3938 @ =0x000008E6
	adds r0, r5, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r0, #1
	cmp r1, r0
	bne .L080B3924
	mov r0, r8
	strh r0, [r3]
	ldr r1, .L080B393C @ =0x00000848
	adds r0, r5, r1
	adds r0, r0, r4
	movs r1, #4
	str r1, [r0]
	movs r2, #0x87
	lsls r2, r2, #4
	adds r0, r5, r2
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r3, .L080B3940 @ =0x0000091A
	adds r0, r5, r3
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080B3944 @ =0x00000814
	adds r0, r5, r4
	movs r1, #0xa6
	bl func_08008B6C
.L080B3924:
	adds r7, #1
	cmp r7, #4
	bgt .L080B392C
	b .L080B36BE
.L080B392C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3938: .4byte 0x000008E6
.L080B393C: .4byte 0x00000848
.L080B3940: .4byte 0x0000091A
.L080B3944: .4byte 0x00000814

	thumb_func_start func_080B3948
func_080B3948: @ 0x080B3948
	push {r4, r5, lr}
	ldr r1, .L080B3988 @ =0x0000085C
	adds r2, r0, r1
	ldr r3, .L080B398C @ =0x00000906
	adds r1, r0, r3
	movs r5, #1
	movs r4, #4
.L080B3956:
	ldr r0, [r2]
	cmp r0, #2
	bgt .L080B3976
	cmp r0, #1
	blt .L080B3976
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne .L080B3976
	strb r3, [r1]
	str r3, [r2]
	strb r5, [r1, #0x19]
.L080B3976:
	adds r2, #4
	adds r1, #1
	subs r4, #1
	cmp r4, #0
	bge .L080B3956
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3988: .4byte 0x0000085C
.L080B398C: .4byte 0x00000906

	thumb_func_start func_080B3990
func_080B3990: @ 0x080B3990
	ldr r2, .L080B39B4 @ =gUnk_08107882
	ldr r3, .L080B39B8 @ =0x00000844
	adds r1, r0, r3
	ldr r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0x93
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0x54
	muls r0, r2, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
.L080B39B4: .4byte gUnk_08107882
.L080B39B8: .4byte 0x00000844

	thumb_func_start func_080B39BC
func_080B39BC: @ 0x080B39BC
	ldr r2, .L080B39D4 @ =gUnk_0810788A
	lsls r1, r1, #2
	movs r3, #0x87
	lsls r3, r3, #4
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B39D4: .4byte gUnk_0810788A

	thumb_func_start func_080B39D8
func_080B39D8: @ 0x080B39D8
	ldr r2, .L080B39EC @ =gUnk_08107890
	lsls r1, r1, #2
	ldr r3, .L080B39F0 @ =0x00000848
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B39EC: .4byte gUnk_08107890
.L080B39F0: .4byte 0x00000848

	thumb_func_start func_080B39F4
func_080B39F4: @ 0x080B39F4
	ldr r2, .L080B3A08 @ =gUnk_0810789A
	lsls r1, r1, #2
	ldr r3, .L080B3A0C @ =0x0000085C
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B3A08: .4byte gUnk_0810789A
.L080B3A0C: .4byte 0x0000085C

	thumb_func_start func_080B3A10
func_080B3A10: @ 0x080B3A10
	ldr r1, .L080B3A20 @ =gUnk_081078A0
	ldr r2, .L080B3A24 @ =0x00000934
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B3A20: .4byte gUnk_081078A0
.L080B3A24: .4byte 0x00000934

	thumb_func_start func_080B3A28
func_080B3A28: @ 0x080B3A28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	bl func_080B34DC
	ldr r1, .L080B3AB8 @ =0x00000844
	adds r0, r4, r1
	movs r2, #3
	mov sb, r2
	str r2, [r0]
	ldr r3, .L080B3ABC @ =0x00000929
	adds r0, r4, r3
	movs r1, #0
	mov r8, r1
	movs r7, #1
	strb r7, [r0]
	ldr r2, .L080B3AC0 @ =0x00000884
	adds r5, r4, r2
	ldr r1, [r5]
	lsls r3, r1, #2
	movs r0, #0x87
	lsls r0, r0, #4
	adds r6, r4, r0
	adds r2, r6, r3
	ldr r0, [r2]
	cmp r0, #0
	bne .L080B3AD4
	ldr r2, .L080B3AC4 @ =0x00000848
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B3A70
	b .L080B3B98
.L080B3A70:
	lsls r1, r1, #1
	movs r3, #0x8f
	lsls r3, r3, #4
	adds r0, r4, r3
	adds r0, r0, r1
	movs r2, #0
	mov r1, r8
	strh r1, [r0]
	ldr r1, [r5]
	lsls r1, r1, #2
	subs r3, #0x94
	adds r0, r4, r3
	adds r0, r0, r1
	str r7, [r0]
	ldr r0, .L080B3AC8 @ =0x0000090D
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, .L080B3ACC @ =0x0000091F
	adds r0, r4, r1
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	adds r3, #0xaa
	adds r0, r4, r3
	ldr r1, [r5]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, .L080B3AD0 @ =0x00000814
	adds r0, r4, r1
	movs r1, #0xc7
	bl func_08008B6C
	b .L080B3B98
	.align 2, 0
.L080B3AB8: .4byte 0x00000844
.L080B3ABC: .4byte 0x00000929
.L080B3AC0: .4byte 0x00000884
.L080B3AC4: .4byte 0x00000848
.L080B3AC8: .4byte 0x0000090D
.L080B3ACC: .4byte 0x0000091F
.L080B3AD0: .4byte 0x00000814
.L080B3AD4:
	cmp r0, #1
	bne .L080B3B40
	mov r3, r8
	str r3, [r2]
	lsls r1, r1, #1
	movs r2, #0x8f
	lsls r2, r2, #4
	adds r0, r4, r2
	adds r0, r0, r1
	strh r3, [r0]
	ldr r3, .L080B3B30 @ =0x00000915
	adds r0, r4, r3
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	ldr r2, [r5]
	lsls r1, r2, #2
	subs r3, #0xcd
	adds r0, r4, r3
	adds r0, r0, r1
	str r7, [r0]
	adds r3, #0x14
	adds r0, r4, r3
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldr r1, .L080B3B34 @ =0x0000091A
	adds r0, r4, r1
	adds r0, r0, r2
	strb r7, [r0]
	ldr r2, .L080B3B38 @ =0x00000924
	adds r0, r4, r2
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	adds r3, #0xc3
	adds r0, r4, r3
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	ldr r1, .L080B3B3C @ =0x00000814
	adds r0, r4, r1
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B3B98
	.align 2, 0
.L080B3B30: .4byte 0x00000915
.L080B3B34: .4byte 0x0000091A
.L080B3B38: .4byte 0x00000924
.L080B3B3C: .4byte 0x00000814
.L080B3B40:
	ldr r2, .L080B3B78 @ =0x00000814
	adds r0, r4, r2
	movs r1, #0x6c
	bl func_08008B6C
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r6, r0
	mov r3, r8
	str r3, [r0]
	ldr r2, .L080B3B7C @ =0x00000924
	adds r0, r4, r2
	adds r0, r0, r1
	strb r7, [r0]
	ldr r2, [r5]
	lsls r1, r2, #2
	ldr r3, .L080B3B80 @ =0x00000848
	adds r0, r4, r3
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #4
	bne .L080B3B88
	mov r0, sb
	str r0, [r1]
	ldr r1, .L080B3B84 @ =0x0000091A
	adds r0, r4, r1
	b .L080B3B94
	.align 2, 0
.L080B3B78: .4byte 0x00000814
.L080B3B7C: .4byte 0x00000924
.L080B3B80: .4byte 0x00000848
.L080B3B84: .4byte 0x0000091A
.L080B3B88:
	cmp r0, #5
	bne .L080B3B98
	movs r0, #6
	str r0, [r1]
	ldr r3, .L080B3BA4 @ =0x0000091A
	adds r0, r4, r3
.L080B3B94:
	adds r0, r0, r2
	strb r7, [r0]
.L080B3B98:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3BA4: .4byte 0x0000091A

	thumb_func_start func_080B3BA8
func_080B3BA8: @ 0x080B3BA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, .L080B3BCC @ =0x00000818
	adds r0, r4, r1
	movs r1, #0xb8
	bl func_08008B6C
	ldr r0, .L080B3BD0 @ =0x0000083C
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne .L080B3BD4
	movs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl func_080B0934
	b .L080B3BDE
	.align 2, 0
.L080B3BCC: .4byte 0x00000818
.L080B3BD0: .4byte 0x0000083C
.L080B3BD4:
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl func_080B0970
.L080B3BDE:
	pop {r4}
	pop {r0}
	bx r0

