.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_080C0D90
func_080C0D90: @ 0x080C0D90
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_080BCCE0
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080C0DC0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080C0DC0:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080C0DCC
func_080C0DCC: @ 0x080C0DCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r6, r0, #0
	str r1, [sp, #0x14]
	bl func_08008444
	ldr r0, .L080C11C0 @ =vtable_unk_080E8554
	str r0, [r6, #4]
	movs r0, #3
	add r7, sp, #0x10
	movs r1, #1
	rsbs r1, r1, #0
.L080C0DEC:
	subs r0, #1
	cmp r0, r1
	bne .L080C0DEC
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
	ldr r2, .L080C11C4 @ =0x0000051C
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
	ldr r1, .L080C11C8 @ =gUnk_0873E5B0
	bl func_0805E6CC
	movs r2, #0xa4
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11CC @ =gUnk_0873DE44
	bl func_0805E6CC
	ldr r2, .L080C11D0 @ =0x00000524
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11D4 @ =gUnk_087405A0
	bl func_0805E6CC
	movs r2, #0xa5
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11D8 @ =gUnk_0858BA28
	bl func_0805E6CC
	ldr r2, .L080C11DC @ =0x0000052C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11E0 @ =gUnk_0873D5FC
	bl func_0805E6CC
	movs r2, #0xa6
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11E4 @ =gUnk_08740908
	bl func_0805E6CC
	ldr r2, .L080C11E8 @ =0x00000534
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11EC @ =gUnk_0871D51C
	bl func_0805E6CC
	movs r2, #0xa7
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11F0 @ =gUnk_0872BE64
	bl func_0805E6CC
	ldr r2, .L080C11F4 @ =0x0000053C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080C11F8 @ =gUnk_0873D6D8
	bl func_0805E6CC
	movs r2, #0xa8
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
	ldr r0, .L080C11FC @ =vtable_unk_080E5B80
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xc
	bl func_08009300
	ldr r1, .L080C1200 @ =0x00000544
	adds r0, r6, r1
	str r5, [r0]
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0x10
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
	ldr r0, .L080C1204 @ =0x0000061C
	adds r3, r6, r0
	movs r1, #0x18
	adds r2, #0x70
	adds r4, r6, r2
	adds r0, #0x74
	adds r5, r6, r0
	adds r2, #0x10
	adds r7, r6, r2
	adds r0, #0x80
	adds r0, r0, r6
	mov ip, r0
	adds r2, #0x80
	adds r2, r2, r6
	mov r8, r2
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r0, r0, r6
	mov sb, r0
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r2, r2, r6
	mov sl, r2
	movs r0, #0xe8
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x3c]
	movs r2, #0xe9
	lsls r2, r2, #3
	adds r2, r6, r2
	str r2, [sp, #0x40]
	movs r0, #0xec
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x44]
	movs r2, #0xed
	lsls r2, r2, #3
	adds r2, r6, r2
	str r2, [sp, #0x48]
	movs r0, #0xee
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x4c]
	movs r2, #0xf5
	lsls r2, r2, #3
	adds r2, r6, r2
	str r2, [sp, #0x18]
	movs r0, #0xf6
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x1c]
	movs r2, #0xf7
	lsls r2, r2, #3
	adds r2, r6, r2
	str r2, [sp, #0x20]
	movs r0, #0xfa
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x24]
	movs r2, #0xfb
	lsls r2, r2, #3
	adds r2, r6, r2
	str r2, [sp, #0x28]
	movs r0, #0xfc
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x2c]
	movs r2, #0xff
	lsls r2, r2, #3
	adds r2, r6, r2
	str r2, [sp, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r0, r6, r0
	str r0, [sp, #0x34]
	ldr r2, .L080C1208 @ =0x00000808
	adds r2, r6, r2
	str r2, [sp, #0x38]
	movs r2, #0
	movs r0, #1
	rsbs r0, r0, #0
.L080C108A:
	stm r3!, {r2}
	subs r1, #1
	cmp r1, r0
	bne .L080C108A
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r4]
	strh r1, [r4, #4]
	str r1, [r5]
	strh r1, [r5, #4]
	str r1, [r7]
	strh r1, [r7, #4]
	movs r2, #0xd4
	lsls r2, r2, #3
	adds r0, r6, r2
	str r1, [r0]
	ldr r0, .L080C120C @ =0x000006A4
	adds r1, r6, r0
	movs r0, #0x18
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080C10BE:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080C10BE
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r4, #0
	str r4, [r0]
	strh r4, [r0, #4]
	mov r2, ip
	str r4, [r2]
	strh r4, [r2, #4]
	mov r0, r8
	str r4, [r0]
	strh r4, [r0, #4]
	mov r1, sb
	str r4, [r1]
	strh r4, [r1, #4]
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	ldr r1, .L080C1210 @ =0x0000072C
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	mov r0, sl
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r1, [sp, #0x3c]
	str r4, [r1]
	strh r4, [r1, #4]
	ldr r2, [sp, #0x40]
	str r4, [r2]
	strh r4, [r2, #4]
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r6, r1
	str r4, [r0]
	ldr r2, .L080C1214 @ =0x00000754
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r2, [sp, #0x44]
	str r4, [r2]
	strh r4, [r2, #4]
	ldr r0, [sp, #0x48]
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r1, [sp, #0x4c]
	str r4, [r1]
	strh r4, [r1, #4]
	movs r2, #0xf3
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	ldr r1, .L080C1218 @ =0x0000079C
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r0, [sp, #0x18]
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r1, [sp, #0x1c]
	str r4, [r1]
	strh r4, [r1, #4]
	ldr r2, [sp, #0x20]
	str r4, [r2]
	strh r4, [r2, #4]
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r6, r1
	str r4, [r0]
	ldr r2, .L080C121C @ =0x000007C4
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r2, [sp, #0x24]
	str r4, [r2]
	strh r4, [r2, #4]
	ldr r0, [sp, #0x28]
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r1, [sp, #0x2c]
	str r4, [r1]
	strh r4, [r1, #4]
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	ldr r1, .L080C1220 @ =0x000007EC
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r0, [sp, #0x30]
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r1, [sp, #0x34]
	str r4, [r1]
	strh r4, [r1, #4]
	ldr r2, [sp, #0x38]
	str r4, [r2]
	strh r4, [r2, #4]
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #0
	bl func_08008B54
	ldr r2, .L080C1224 @ =0x00000814
	adds r0, r6, r2
	b .L080C1228
	.align 2, 0
.L080C11C0: .4byte vtable_unk_080E8554
.L080C11C4: .4byte 0x0000051C
.L080C11C8: .4byte gUnk_0873E5B0
.L080C11CC: .4byte gUnk_0873DE44
.L080C11D0: .4byte 0x00000524
.L080C11D4: .4byte gUnk_087405A0
.L080C11D8: .4byte gUnk_0858BA28
.L080C11DC: .4byte 0x0000052C
.L080C11E0: .4byte gUnk_0873D5FC
.L080C11E4: .4byte gUnk_08740908
.L080C11E8: .4byte 0x00000534
.L080C11EC: .4byte gUnk_0871D51C
.L080C11F0: .4byte gUnk_0872BE64
.L080C11F4: .4byte 0x0000053C
.L080C11F8: .4byte gUnk_0873D6D8
.L080C11FC: .4byte vtable_unk_080E5B80
.L080C1200: .4byte 0x00000544
.L080C1204: .4byte 0x0000061C
.L080C1208: .4byte 0x00000808
.L080C120C: .4byte 0x000006A4
.L080C1210: .4byte 0x0000072C
.L080C1214: .4byte 0x00000754
.L080C1218: .4byte 0x0000079C
.L080C121C: .4byte 0x000007C4
.L080C1220: .4byte 0x000007EC
.L080C1224: .4byte 0x00000814
.L080C1228:
	movs r1, #1
	bl func_08008B54
	ldr r1, .L080C129C @ =0x00000818
	adds r0, r6, r1
	movs r1, #2
	bl func_08008B54
	ldr r2, .L080C12A0 @ =0x0000081C
	adds r0, r6, r2
	movs r1, #3
	bl func_08008B54
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #4
	bl func_08008B54
	ldr r2, .L080C12A4 @ =0x00000824
	adds r0, r6, r2
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080C12A8 @ =vtable_unk_080E5B70
	str r1, [r0, #8]
	movs r1, #0x83
	lsls r1, r1, #4
	adds r0, r6, r1
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080C12AC @ =vtable_unk_080E5B60
	str r1, [r0, #8]
	adds r2, #0x18
	adds r0, r6, r2
	bl func_080E52A0
	ldr r1, .L080C12B0 @ =0x00000974
	adds r0, r6, r1
	str r4, [r0]
	movs r2, #0x98
	lsls r2, r2, #4
	adds r1, r6, r2
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	str r0, [r1]
	ldrb r1, [r2, #4]
	ldr r2, .L080C12B4 @ =0x00000988
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #0
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080C129C: .4byte 0x00000818
.L080C12A0: .4byte 0x0000081C
.L080C12A4: .4byte 0x00000824
.L080C12A8: .4byte vtable_unk_080E5B70
.L080C12AC: .4byte vtable_unk_080E5B60
.L080C12B0: .4byte 0x00000974
.L080C12B4: .4byte 0x00000988

	.section .text.tail080C12C4, "ax", %progbits
	thumb_func_start func_080C12C4
func_080C12C4: @ 0x080C12C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x1c]
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_080C14BC
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	ldr r0, .L080C1360 @ =0x00000544
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080C1364 @ =0x00000889
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
	bl func_080C3B18
	adds r0, r7, #0
	bl func_080C3C18
	adds r0, r7, #0
	bl func_080C160C
	adds r0, r7, #0
	bl func_080C16D4
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r7, r1
	movs r1, #0x22
	bl func_08008B6C
	ldr r1, .L080C1368 @ =0x0000089C
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	cmp r0, #7
	beq .L080C13CC
.L080C1344:
	adds r0, r7, #0
	bl func_080087C8
	ldr r1, .L080C1368 @ =0x0000089C
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #6
	bhi .L080C13C2
	lsls r0, r0, #2
	ldr r1, .L080C136C @ =.L080C1370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C1360: .4byte 0x00000544
.L080C1364: .4byte 0x00000889
.L080C1368: .4byte 0x0000089C
.L080C136C: .4byte .L080C1370
.L080C1370: @ jump table
	.4byte .L080C138C @ case 0
	.4byte .L080C1394 @ case 1
	.4byte .L080C139C @ case 2
	.4byte .L080C13A4 @ case 3
	.4byte .L080C13AC @ case 4
	.4byte .L080C13B4 @ case 5
	.4byte .L080C13BC @ case 6
.L080C138C:
	adds r0, r7, #0
	bl func_080C3D04
	b .L080C13C2
.L080C1394:
	adds r0, r7, #0
	bl func_080C516C
	b .L080C13C2
.L080C139C:
	adds r0, r7, #0
	bl func_080C5378
	b .L080C13C2
.L080C13A4:
	adds r0, r7, #0
	bl func_080C5648
	b .L080C13C2
.L080C13AC:
	adds r0, r7, #0
	bl func_080C5710
	b .L080C13C2
.L080C13B4:
	adds r0, r7, #0
	bl func_080C5A6C
	b .L080C13C2
.L080C13BC:
	adds r0, r7, #0
	bl func_080C608C
.L080C13C2:
	ldr r1, .L080C14A8 @ =0x0000089C
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #7
	bne .L080C1344
.L080C13CC:
	ldr r0, .L080C14AC @ =0x00000544
	adds r4, r7, r0
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C13FA
	ldr r1, .L080C14B0 @ =0x00000889
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
.L080C13FA:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	bge .L080C146E
	ldr r1, .L080C14B4 @ =0x0000051C
	adds r1, r7, r1
	str r1, [sp, #0x20]
	ldr r0, .L080C14B8 @ =0x00000814
	adds r0, r0, r7
	mov sl, r0
.L080C1412:
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
	bl func_080C2D54
	ldr r1, .L080C14AC @ =0x00000544
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080C1412
.L080C146E:
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
	beq .L080C1494
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080C1494:
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
.L080C14A8: .4byte 0x0000089C
.L080C14AC: .4byte 0x00000544
.L080C14B0: .4byte 0x00000889
.L080C14B4: .4byte 0x0000051C
.L080C14B8: .4byte 0x00000814

	.section .text.tail080C14C8, "ax", %progbits
	thumb_func_start func_080C14C8
func_080C14C8: @ 0x080C14C8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, .L080C15DC @ =0x0000083C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15E0 @ =0x00000844
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15E4 @ =0x0000084C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15E8 @ =0x00000854
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15EC @ =0x0000085C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15F0 @ =0x00000864
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15F4 @ =0x0000086C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15F8 @ =0x0000087C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C15FC @ =0x00000884
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C1600 @ =0x00000874
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C1604 @ =0x0000088C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080C1608 @ =0x00000894
	adds r5, r5, r0
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080C15DC: .4byte 0x0000083C
.L080C15E0: .4byte 0x00000844
.L080C15E4: .4byte 0x0000084C
.L080C15E8: .4byte 0x00000854
.L080C15EC: .4byte 0x0000085C
.L080C15F0: .4byte 0x00000864
.L080C15F4: .4byte 0x0000086C
.L080C15F8: .4byte 0x0000087C
.L080C15FC: .4byte 0x00000884
.L080C1600: .4byte 0x00000874
.L080C1604: .4byte 0x0000088C
.L080C1608: .4byte 0x00000894

	thumb_func_start func_080C160C
func_080C160C: @ 0x080C160C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	ldr r1, .L080C16AC @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, .L080C16B0 @ =0x0600F000
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	ldr r4, .L080C16B4 @ =0x0600F800
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_08008EB8
	ldr r0, .L080C16B8 @ =gUnk_0873F3C8
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L080C16BC @ =gUnk_0873F5D4
	mov r1, r8
	bl Unpack
	ldr r0, .L080C16C0 @ =gUnk_0873F6AC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080C16C4 @ =gUnk_087400E4
	ldr r1, .L080C16C8 @ =0x05000020
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
	ldr r3, .L080C16CC @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sb
	bl func_08008918
	mov r2, sp
	ldr r3, .L080C16D0 @ =0x00001F42
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
.L080C16AC: .4byte 0x06007FE0
.L080C16B0: .4byte 0x0600F000
.L080C16B4: .4byte 0x0600F800
.L080C16B8: .4byte gUnk_0873F3C8
.L080C16BC: .4byte gUnk_0873F5D4
.L080C16C0: .4byte gUnk_0873F6AC
.L080C16C4: .4byte gUnk_087400E4
.L080C16C8: .4byte 0x05000020
.L080C16CC: .4byte 0x00001E41
.L080C16D0: .4byte 0x00001F42

	thumb_func_start func_080C16D4
func_080C16D4: @ 0x080C16D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd4
	mov sb, r0
	ldr r0, .L080C17EC @ =gUnk_080F9F78
	ldr r0, [r0]
	ldr r1, .L080C17F0 @ =0x05000360
	movs r2, #0x20
	bl func_08008E64
	mov r0, sb
	bl func_080C14C8
	ldr r1, .L080C17F4 @ =0x0500024A
	ldr r0, .L080C17F8 @ =0x05000362
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, .L080C17FC @ =0x05000364
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	ldr r2, .L080C1800 @ =0x0000675E
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa9
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	ldr r0, .L080C1804 @ =0x0000097B
	add r0, sb
	ldrb r0, [r0]
	add r1, sp, #0x10
	movs r2, #0
	bl func_0804EC84
	ldr r1, .L080C1808 @ =0x05000240
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, .L080C180C @ =0x00000303
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, .L080C1810 @ =0x00004F15
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	ldr r6, .L080C1814 @ =0x00007FFF
	adds r0, r6, #0
	strh r0, [r1]
	adds r1, #2
	ldr r7, .L080C1818 @ =0x000052F8
	adds r0, r7, #0
	strh r0, [r1]
	add r0, sp, #0x44
	movs r5, #4
	movs r6, #2
	movs r1, #0
	mov r8, r1
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x44]
	mov r4, sb
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	movs r2, #1
	mov sl, r2
	add r0, sp, #0x48
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x48]
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
	ldr r0, .L080C181C @ =0x0000083C
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r6, .L080C1820 @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x14
	adds r1, r4, #0
	bl func_08008F0C
	add r7, sp, #0x14
	mov r8, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C1824
	cmp r1, #0
	beq .L080C17D6
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C17D6:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r5, sp
	adds r5, #0x54
	str r5, [sp, #0xc0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0xc8]
	b .L080C18F4
	.align 2, 0
.L080C17EC: .4byte gUnk_080F9F78
.L080C17F0: .4byte 0x05000360
.L080C17F4: .4byte 0x0500024A
.L080C17F8: .4byte 0x05000362
.L080C17FC: .4byte 0x05000364
.L080C1800: .4byte 0x0000675E
.L080C1804: .4byte 0x0000097B
.L080C1808: .4byte 0x05000240
.L080C180C: .4byte 0x00000303
.L080C1810: .4byte 0x00004F15
.L080C1814: .4byte 0x00007FFF
.L080C1818: .4byte 0x000052F8
.L080C181C: .4byte 0x0000083C
.L080C1820: .4byte 0x06010000
.L080C1824:
	str r1, [sp, #0xcc]
	mov r7, sl
	str r7, [sp, #0x50]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L080C183C
	adds r0, r1, #0
.L080C183C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C185A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080C185E
	mov r0, sl
	bl func_080D3BC0
	b .L080C185E
.L080C185A:
	movs r0, #0
	mov sl, r0
.L080C185E:
	adds r6, r0, #0
	str r6, [sp, #0xd0]
	ldr r2, [r5]
	adds r3, r6, #0
	mov r4, sp
	adds r4, #0x54
	str r4, [sp, #0xc0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0xc8]
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C1892
.L080C1878:
	cmp r3, #0
	beq .L080C1888
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1888:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C1878
.L080C1892:
	adds r6, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L080C18AE
	cmp r6, #0
	beq .L080C18AA
	adds r0, r6, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C18AA:
	adds r6, #0x10
	b .L080C18D0
.L080C18AE:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080C18CE
.L080C18B6:
	cmp r2, #0
	beq .L080C18C6
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C18C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C18B6
.L080C18CE:
	adds r6, r2, #0
.L080C18D0:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C18E0
.L080C18DA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C18DA
.L080C18E0:
	cmp r0, #0
	beq .L080C18E8
	bl free
.L080C18E8:
	ldr r0, [sp, #0xd0]
	add r0, sl
	ldr r7, [sp, #0xd0]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080C18F4:
	movs r4, #0xa9
	lsls r4, r4, #3
	add r4, sb
	ldr r0, .L080C1A3C @ =0x0000083C
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
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	str r0, [r4]
	str r1, [r4, #4]
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0xa4
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xaa
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C1952
	bl __builtin_delete
.L080C1952:
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
	ldr r6, .L080C1A40 @ =0x00000554
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C1980
	bl __builtin_delete
.L080C1980:
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
	ldr r5, .L080C1A44 @ =0x00000844
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #3
	strh r0, [r1, #4]
	ldr r0, [r6]
	mov r1, r8
	strb r1, [r0, #0x18]
	movs r4, #0xab
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
	ldr r0, [sp, #0xc8]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0xc8]
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r6}
	stm r4!, {r3, r6}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xac
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
	beq .L080C1A0A
	ldrh r3, [r4, #4]
.L080C1A0A:
	lsls r2, r2, #5
	ldr r0, .L080C1A48 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x14
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C1A4C
	cmp r1, #0
	beq .L080C1A34
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1A34:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C1B0E
	.align 2, 0
.L080C1A3C: .4byte 0x0000083C
.L080C1A40: .4byte 0x00000554
.L080C1A44: .4byte 0x00000844
.L080C1A48: .4byte 0x06010000
.L080C1A4C:
	str r1, [sp, #0xcc]
	mov r5, r8
	str r5, [sp, #0x60]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080C1A66
	adds r0, r1, #0
.L080C1A66:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C1A84
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C1A88
	mov r0, r8
	bl func_080D3BC0
	b .L080C1A88
.L080C1A84:
	movs r0, #0
	mov r8, r0
.L080C1A88:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C1AA6
.L080C1A92:
	cmp r3, #0
	beq .L080C1AA2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1AA2:
	adds r2, #0x10
	adds r3, #0x10
.L080C1AA6:
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C1A92
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L080C1AC8
	cmp r5, #0
	beq .L080C1AC4
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1AC4:
	adds r5, #0x10
	b .L080C1AEA
.L080C1AC8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C1AE8
.L080C1AD0:
	cmp r2, #0
	beq .L080C1AE0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1AE0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C1AD0
.L080C1AE8:
	adds r5, r2, #0
.L080C1AEA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C1AFA
.L080C1AF4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C1AF4
.L080C1AFA:
	cmp r0, #0
	beq .L080C1B02
	bl free
.L080C1B02:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C1B0E:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xad
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C1B28
	ldrh r3, [r2, #4]
.L080C1B28:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080C1B58 @ =0x05000260
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C1B5C
	cmp r1, #0
	beq .L080C1B4E
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1B4E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C1C22
	.align 2, 0
.L080C1B58: .4byte 0x05000260
.L080C1B5C:
	str r1, [sp, #0xcc]
	movs r0, #1
	str r0, [sp, #0x68]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L080C1B76
	adds r0, r1, #0
.L080C1B76:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C1B94
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C1B98
	mov r0, r8
	bl func_080D3BC0
	b .L080C1B98
.L080C1B94:
	movs r0, #0
	mov r8, r0
.L080C1B98:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C1BC0
.L080C1BA6:
	cmp r3, #0
	beq .L080C1BB6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1BB6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C1BA6
.L080C1BC0:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L080C1BDC
	cmp r5, #0
	beq .L080C1BD8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1BD8:
	adds r5, #0x10
	b .L080C1BFE
.L080C1BDC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C1BFC
.L080C1BE4:
	cmp r2, #0
	beq .L080C1BF4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1BF4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C1BE4
.L080C1BFC:
	adds r5, r2, #0
.L080C1BFE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C1C0E
.L080C1C08:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C1C08
.L080C1C0E:
	cmp r0, #0
	beq .L080C1C16
	bl free
.L080C1C16:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C1C22:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0xa5
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xaf
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C1C4C
	bl __builtin_delete
.L080C1C4C:
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
	ldr r6, .L080C1D44 @ =0x0000057C
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C1C7C
	bl __builtin_delete
.L080C1C7C:
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
	ldr r5, .L080C1D48 @ =0x00000864
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #7
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #8]
	ldr r0, [r6]
	strb r1, [r0, #0x18]
	movs r4, #0xb0
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
	movs r4, #0xb1
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
	beq .L080C1D10
	ldrh r3, [r4, #4]
.L080C1D10:
	lsls r2, r2, #5
	ldr r4, .L080C1D4C @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C1D50
	cmp r1, #0
	beq .L080C1D3A
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1D3A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C1E16
	.align 2, 0
.L080C1D44: .4byte 0x0000057C
.L080C1D48: .4byte 0x00000864
.L080C1D4C: .4byte 0x06010000
.L080C1D50:
	str r1, [sp, #0xcc]
	mov r4, r8
	str r4, [sp, #0x70]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L080C1D6A
	adds r0, r1, #0
.L080C1D6A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C1D88
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C1D8C
	mov r0, r8
	bl func_080D3BC0
	b .L080C1D8C
.L080C1D88:
	movs r0, #0
	mov r8, r0
.L080C1D8C:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C1DB4
.L080C1D9A:
	cmp r3, #0
	beq .L080C1DAA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1DAA:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C1D9A
.L080C1DB4:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L080C1DD0
	cmp r5, #0
	beq .L080C1DCC
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1DCC:
	adds r5, #0x10
	b .L080C1DF2
.L080C1DD0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C1DF0
.L080C1DD8:
	cmp r2, #0
	beq .L080C1DE8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1DE8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C1DD8
.L080C1DF0:
	adds r5, r2, #0
.L080C1DF2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C1E02
.L080C1DFC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C1DFC
.L080C1E02:
	cmp r0, #0
	beq .L080C1E0A
	bl free
.L080C1E0A:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C1E16:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xb2
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C1E30
	ldrh r3, [r2, #4]
.L080C1E30:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080C1E60 @ =0x050002E0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C1E64
	cmp r1, #0
	beq .L080C1E56
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1E56:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C1F2A
	.align 2, 0
.L080C1E60: .4byte 0x050002E0
.L080C1E64:
	str r1, [sp, #0xcc]
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080C1E7E
	adds r0, r1, #0
.L080C1E7E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C1E9C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C1EA0
	mov r0, r8
	bl func_080D3BC0
	b .L080C1EA0
.L080C1E9C:
	movs r0, #0
	mov r8, r0
.L080C1EA0:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C1EC8
.L080C1EAE:
	cmp r3, #0
	beq .L080C1EBE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1EBE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C1EAE
.L080C1EC8:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L080C1EE4
	cmp r5, #0
	beq .L080C1EE0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C1EE0:
	adds r5, #0x10
	b .L080C1F06
.L080C1EE4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C1F04
.L080C1EEC:
	cmp r2, #0
	beq .L080C1EFC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C1EFC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C1EEC
.L080C1F04:
	adds r5, r2, #0
.L080C1F06:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C1F16
.L080C1F10:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C1F10
.L080C1F16:
	cmp r0, #0
	beq .L080C1F1E
	bl free
.L080C1F1E:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C1F2A:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0xa7
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xe5
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C1F54
	bl __builtin_delete
.L080C1F54:
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
	ldr r6, .L080C203C @ =0x0000072C
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C1F84
	bl __builtin_delete
.L080C1F84:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #6
	bl func_0805E860
	ldr r4, [r6]
	ldr r5, .L080C2040 @ =0x0000086C
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #8
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r4, #0xe6
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
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xe7
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
	beq .L080C2008
	ldrh r3, [r4, #4]
.L080C2008:
	lsls r2, r2, #5
	ldr r0, .L080C2044 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x14
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C2048
	cmp r1, #0
	beq .L080C2032
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C2032:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C210A
	.align 2, 0
.L080C203C: .4byte 0x0000072C
.L080C2040: .4byte 0x0000086C
.L080C2044: .4byte 0x06010000
.L080C2048:
	str r1, [sp, #0xcc]
	mov r5, r8
	str r5, [sp, #0x80]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x7c]
	add r1, sp, #0x80
	add r0, sp, #0x7c
	cmp r4, #1
	bhs .L080C2062
	adds r0, r1, #0
.L080C2062:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2080
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C2084
	mov r0, r8
	bl func_080D3BC0
	b .L080C2084
.L080C2080:
	movs r0, #0
	mov r8, r0
.L080C2084:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C20A2
.L080C208E:
	cmp r3, #0
	beq .L080C209E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C209E:
	adds r2, #0x10
	adds r3, #0x10
.L080C20A2:
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C208E
	adds r5, r3, #0
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne .L080C20C4
	cmp r5, #0
	beq .L080C20C0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C20C0:
	adds r5, #0x10
	b .L080C20E6
.L080C20C4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C20E4
.L080C20CC:
	cmp r2, #0
	beq .L080C20DC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C20DC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C20CC
.L080C20E4:
	adds r5, r2, #0
.L080C20E6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C20F6
.L080C20F0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C20F0
.L080C20F6:
	cmp r0, #0
	beq .L080C20FE
	bl free
.L080C20FE:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C210A:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xe8
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C2124
	ldrh r3, [r2, #4]
.L080C2124:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080C2154 @ =0x05000300
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C2158
	cmp r1, #0
	beq .L080C214A
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C214A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C221E
	.align 2, 0
.L080C2154: .4byte 0x05000300
.L080C2158:
	str r1, [sp, #0xcc]
	movs r0, #1
	str r0, [sp, #0x88]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x84]
	add r1, sp, #0x88
	add r0, sp, #0x84
	cmp r4, #1
	bhs .L080C2172
	adds r0, r1, #0
.L080C2172:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2190
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C2194
	mov r0, r8
	bl func_080D3BC0
	b .L080C2194
.L080C2190:
	movs r0, #0
	mov r8, r0
.L080C2194:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C21BC
.L080C21A2:
	cmp r3, #0
	beq .L080C21B2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C21B2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C21A2
.L080C21BC:
	adds r5, r3, #0
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne .L080C21D8
	cmp r5, #0
	beq .L080C21D4
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C21D4:
	adds r5, #0x10
	b .L080C21FA
.L080C21D8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C21F8
.L080C21E0:
	cmp r2, #0
	beq .L080C21F0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C21F0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C21E0
.L080C21F8:
	adds r5, r2, #0
.L080C21FA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C220A
.L080C2204:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C2204
.L080C220A:
	cmp r0, #0
	beq .L080C2212
	bl free
.L080C2212:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C221E:
	movs r0, #0x14
	bl __builtin_new
	ldr r7, .L080C23B8 @ =0x0000052C
	add r7, sb
	ldr r1, [r7]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r5, r0, #0
	movs r4, #0xb4
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r4]
	cmp r5, r0
	beq .L080C2246
	bl __builtin_delete
.L080C2246:
	str r5, [r4]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	str r6, [r4, #0xc]
	mov r1, r8
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r6, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r5, .L080C23BC @ =0x000005A4
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C227A
	bl __builtin_delete
.L080C227A:
	str r4, [r5]
	ldr r0, .L080C23C0 @ =0x000008B4
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r4]
	ldr r0, .L080C23C4 @ =0x000008B5
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r4, #2]
	ldr r0, .L080C23C8 @ =0x0000087C
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r2, #1
	mov sl, r2
	strh r2, [r0, #8]
	ldr r0, [r5]
	mov r3, sl
	strb r3, [r0, #0x18]
	movs r0, #0x14
	bl __builtin_new
	ldr r1, [r7]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xb9
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C22D0
	bl __builtin_delete
.L080C22D0:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	str r6, [r4, #0xc]
	mov r5, r8
	strb r5, [r4, #0x10]
	strb r5, [r4, #0x11]
	str r6, [r4, #0x14]
	strb r5, [r4, #0x18]
	ldr r6, .L080C23CC @ =0x000005CC
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C22FE
	bl __builtin_delete
.L080C22FE:
	str r4, [r6]
	ldr r0, [r7]
	ldr r1, .L080C23D0 @ =0x0000091A
	bl func_0805E860
	ldr r4, [r6]
	ldr r5, .L080C23D4 @ =0x00000884
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #0xa
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	strh r1, [r0, #8]
	ldr r0, [r6]
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r4, #0xba
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
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xbb
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
	beq .L080C2384
	ldrh r3, [r4, #4]
.L080C2384:
	lsls r2, r2, #5
	ldr r0, .L080C23D8 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x14
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C23DC
	cmp r1, #0
	beq .L080C23AE
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C23AE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C24A0
	.align 2, 0
.L080C23B8: .4byte 0x0000052C
.L080C23BC: .4byte 0x000005A4
.L080C23C0: .4byte 0x000008B4
.L080C23C4: .4byte 0x000008B5
.L080C23C8: .4byte 0x0000087C
.L080C23CC: .4byte 0x000005CC
.L080C23D0: .4byte 0x0000091A
.L080C23D4: .4byte 0x00000884
.L080C23D8: .4byte 0x06010000
.L080C23DC:
	str r1, [sp, #0xcc]
	add r0, sp, #0x90
	movs r5, #1
	str r5, [r0]
	ldr r1, [r6]
	ldr r7, [sp, #0xcc]
	subs r1, r7, r1
	asrs r4, r1, #4
	str r4, [sp, #0x8c]
	ldr r1, [r0]
	add r2, sp, #0x8c
	cmp r4, r1
	bhs .L080C23F8
	adds r2, r0, #0
.L080C23F8:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2416
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C241A
	mov r0, r8
	bl func_080D3BC0
	b .L080C241A
.L080C2416:
	movs r0, #0
	mov r8, r0
.L080C241A:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C2438
.L080C2424:
	cmp r3, #0
	beq .L080C2434
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2434:
	adds r2, #0x10
	adds r3, #0x10
.L080C2438:
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C2424
	adds r5, r3, #0
	ldr r0, [sp, #0x90]
	cmp r0, #1
	bne .L080C245A
	cmp r5, #0
	beq .L080C2456
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C2456:
	adds r5, #0x10
	b .L080C247C
.L080C245A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C247A
.L080C2462:
	cmp r2, #0
	beq .L080C2472
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2472:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C2462
.L080C247A:
	adds r5, r2, #0
.L080C247C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C248C
.L080C2486:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C2486
.L080C248C:
	cmp r0, #0
	beq .L080C2494
	bl free
.L080C2494:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C24A0:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xbc
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C24BA
	ldrh r3, [r2, #4]
.L080C24BA:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080C24E8 @ =0x05000340
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C24EC
	cmp r1, #0
	beq .L080C24E0
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C24E0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C25B4
	.align 2, 0
.L080C24E8: .4byte 0x05000340
.L080C24EC:
	str r1, [sp, #0xcc]
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xcc]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C2508
	adds r0, r1, #0
.L080C2508:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2526
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C252A
	mov r0, r8
	bl func_080D3BC0
	b .L080C252A
.L080C2526:
	movs r0, #0
	mov r8, r0
.L080C252A:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C2552
.L080C2538:
	cmp r3, #0
	beq .L080C2548
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2548:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C2538
.L080C2552:
	adds r5, r3, #0
	ldr r1, [sp, #0x98]
	cmp r1, #1
	bne .L080C256E
	cmp r5, #0
	beq .L080C256A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C256A:
	adds r5, #0x10
	b .L080C2590
.L080C256E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C258E
.L080C2576:
	cmp r2, #0
	beq .L080C2586
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2586:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C2576
.L080C258E:
	adds r5, r2, #0
.L080C2590:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C25A0
.L080C259A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C259A
.L080C25A0:
	cmp r0, #0
	beq .L080C25A8
	bl free
.L080C25A8:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C25B4:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080C27C4 @ =0x0000052C
	add r1, sb
	ldr r1, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	movs r2, #0
	adds r3, r7, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r6, #0xbe
	lsls r6, r6, #3
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C25DE
	bl __builtin_delete
.L080C25DE:
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
	ldr r5, .L080C27C8 @ =0x000005F4
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C260E
	bl __builtin_delete
.L080C260E:
	str r4, [r5]
	ldr r0, [r6]
	movs r1, #0x98
	lsls r1, r1, #4
	add r1, sb
	ldr r2, [r1]
	movs r1, #0x54
	muls r1, r2, r1
	ldr r2, .L080C27CC @ =0x0000042C
	adds r1, r1, r2
	bl func_0805E860
	ldr r1, [r5]
	ldr r0, .L080C27D0 @ =0x000008B4
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, .L080C27D4 @ =0x000008B5
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r1, #2]
	ldr r4, [r5]
	ldr r0, .L080C27D8 @ =0x0000084C
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #4
	strh r0, [r1, #4]
	ldr r1, [r5]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	ldr r0, [r5]
	strb r2, [r0, #0x18]
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080C27DC @ =0x00000534
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	adds r3, r7, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r5, #0xd4
	lsls r5, r5, #3
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C2680
	bl __builtin_delete
.L080C2680:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r3, #0
	str r3, [sp, #0xbc]
.L080C268E:
	movs r7, #0
	ldr r4, [sp, #0xbc]
	lsls r4, r4, #2
	mov sl, r4
	ldr r5, [sp, #0xbc]
	lsls r5, r5, #4
	mov r8, r5
.L080C269C:
	ldr r0, [sp, #0xbc]
	add r0, sl
	adds r5, r0, r7
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r6, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r1, #0
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	lsls r6, r5, #2
	mov r2, sb
	adds r5, r6, r2
	ldr r3, .L080C27E0 @ =0x000006A4
	adds r5, r5, r3
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C26D8
	bl __builtin_delete
.L080C26D8:
	str r4, [r5]
	mov r4, sb
	adds r0, r6, r4
	ldr r5, .L080C27E0 @ =0x000006A4
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r0, r7, #4
	adds r0, #0x50
	strh r0, [r1]
	adds r0, r6, r4
	adds r0, r0, r5
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	strh r0, [r1, #2]
	adds r0, r6, r4
	adds r0, r0, r5
	ldr r4, [r0]
	ldr r5, .L080C27E4 @ =0x00000854
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	mov r1, sb
	adds r0, r6, r1
	ldr r2, .L080C27E0 @ =0x000006A4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #5
	strh r0, [r1, #4]
	mov r3, sb
	adds r0, r6, r3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r4, #1
	strh r4, [r0, #8]
	adds r0, r6, r3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r6, #1
	strb r6, [r0, #0x18]
	adds r7, #1
	cmp r7, #4
	ble .L080C269C
	movs r0, #0xd4
	lsls r0, r0, #3
	add r0, sb
	ldr r0, [r0]
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
	movs r1, #0xe1
	lsls r1, r1, #3
	add r1, sb
	add r0, sp, #0x14
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xe2
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
	beq .L080C2794
	ldrh r3, [r4, #4]
.L080C2794:
	lsls r2, r2, #5
	ldr r4, .L080C27E8 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C27EC
	cmp r1, #0
	beq .L080C27BA
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C27BA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C28B8
	.align 2, 0
.L080C27C4: .4byte 0x0000052C
.L080C27C8: .4byte 0x000005F4
.L080C27CC: .4byte 0x0000042C
.L080C27D0: .4byte 0x000008B4
.L080C27D4: .4byte 0x000008B5
.L080C27D8: .4byte 0x0000084C
.L080C27DC: .4byte 0x00000534
.L080C27E0: .4byte 0x000006A4
.L080C27E4: .4byte 0x00000854
.L080C27E8: .4byte 0x06010000
.L080C27EC:
	str r1, [sp, #0xcc]
	add r1, sp, #0xa0
	movs r3, #1
	str r3, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0xcc]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080C280A
	mov r0, sl
.L080C280A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2828
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C282C
	mov r0, r8
	bl func_080D3BC0
	b .L080C282C
.L080C2828:
	movs r0, #0
	mov r8, r0
.L080C282C:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0xcc]
	cmp r2, r5
	beq .L080C2854
.L080C283A:
	cmp r3, #0
	beq .L080C284A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C284A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	bne .L080C283A
.L080C2854:
	adds r5, r3, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L080C2872
	cmp r5, #0
	beq .L080C286E
	adds r0, r5, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C286E:
	adds r5, #0x10
	b .L080C2894
.L080C2872:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C2892
.L080C287A:
	cmp r2, #0
	beq .L080C288A
	adds r0, r2, #0
	add r1, sp, #0x14
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C288A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C287A
.L080C2892:
	adds r5, r2, #0
.L080C2894:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C28A4
.L080C289E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C289E
.L080C28A4:
	cmp r0, #0
	beq .L080C28AC
	bl free
.L080C28AC:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C28B8:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xe3
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C28D2
	ldrh r3, [r2, #4]
.L080C28D2:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080C2900 @ =0x050002A0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C2904
	cmp r1, #0
	beq .L080C28F8
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C28F8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C29CC
	.align 2, 0
.L080C2900: .4byte 0x050002A0
.L080C2904:
	str r1, [sp, #0xcc]
	movs r0, #1
	add r1, sp, #0xa8
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xcc]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C2920
	adds r0, r1, #0
.L080C2920:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C293E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C2942
	mov r0, r8
	bl func_080D3BC0
	b .L080C2942
.L080C293E:
	movs r0, #0
	mov r8, r0
.L080C2942:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C296A
.L080C2950:
	cmp r3, #0
	beq .L080C2960
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2960:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C2950
.L080C296A:
	adds r5, r3, #0
	ldr r1, [sp, #0xa8]
	cmp r1, #1
	bne .L080C2986
	cmp r5, #0
	beq .L080C2982
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C2982:
	adds r5, #0x10
	b .L080C29A8
.L080C2986:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C29A6
.L080C298E:
	cmp r2, #0
	beq .L080C299E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C299E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C298E
.L080C29A6:
	adds r5, r2, #0
.L080C29A8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C29B8
.L080C29B2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C29B2
.L080C29B8:
	cmp r0, #0
	beq .L080C29C0
	bl free
.L080C29C0:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C29CC:
	ldr r0, [sp, #0xbc]
	adds r0, #1
	str r0, [sp, #0xbc]
	cmp r0, #4
	bgt .L080C29D8
	b .L080C268E
.L080C29D8:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0xa6
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r5, #0xc3
	lsls r5, r5, #3
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C2A02
	bl __builtin_delete
.L080C2A02:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r1, #0
	str r1, [sp, #0xbc]
.L080C2A10:
	movs r7, #0
	ldr r2, [sp, #0xbc]
	lsls r2, r2, #2
	mov sl, r2
	ldr r3, [sp, #0xbc]
	lsls r3, r3, #4
	mov r8, r3
	ldr r4, [sp, #0xbc]
	adds r4, #1
	str r4, [sp, #0xc4]
.L080C2A24:
	ldr r0, [sp, #0xbc]
	add r0, sl
	adds r5, r0, r7
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r6, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r1, #0
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	lsls r6, r5, #2
	mov r2, sb
	adds r5, r6, r2
	ldr r3, .L080C2B4C @ =0x0000061C
	adds r5, r5, r3
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C2A60
	bl __builtin_delete
.L080C2A60:
	str r4, [r5]
	mov r4, sb
	adds r0, r6, r4
	ldr r5, .L080C2B4C @ =0x0000061C
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r0, r7, #4
	adds r0, #0x50
	strh r0, [r1]
	adds r0, r6, r4
	adds r0, r0, r5
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	strh r0, [r1, #2]
	adds r0, r6, r4
	adds r0, r0, r5
	ldr r4, [r0]
	ldr r5, .L080C2B50 @ =0x0000085C
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	mov r1, sb
	adds r0, r6, r1
	ldr r2, .L080C2B4C @ =0x0000061C
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #6
	strh r0, [r1, #4]
	mov r3, sb
	adds r0, r6, r3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r4, #1
	strh r4, [r0, #8]
	adds r0, r6, r3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r6, #1
	strb r6, [r0, #0x18]
	adds r7, #1
	cmp r7, #4
	ble .L080C2A24
	movs r0, #0xc3
	lsls r0, r0, #3
	add r0, sb
	ldr r0, [r0]
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
	movs r1, #0xd0
	lsls r1, r1, #3
	add r1, sb
	add r0, sp, #0x14
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xd1
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
	beq .L080C2B1C
	ldrh r3, [r4, #4]
.L080C2B1C:
	lsls r2, r2, #5
	ldr r4, .L080C2B54 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C2B58
	cmp r1, #0
	beq .L080C2B42
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2B42:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C2C24
	.align 2, 0
.L080C2B4C: .4byte 0x0000061C
.L080C2B50: .4byte 0x0000085C
.L080C2B54: .4byte 0x06010000
.L080C2B58:
	str r1, [sp, #0xcc]
	add r1, sp, #0xb0
	movs r3, #1
	str r3, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0xcc]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080C2B76
	mov r0, sl
.L080C2B76:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2B94
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C2B98
	mov r0, r8
	bl func_080D3BC0
	b .L080C2B98
.L080C2B94:
	movs r0, #0
	mov r8, r0
.L080C2B98:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0xcc]
	cmp r2, r5
	beq .L080C2BC0
.L080C2BA6:
	cmp r3, #0
	beq .L080C2BB6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2BB6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	bne .L080C2BA6
.L080C2BC0:
	adds r5, r3, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L080C2BDE
	cmp r5, #0
	beq .L080C2BDA
	adds r0, r5, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C2BDA:
	adds r5, #0x10
	b .L080C2C00
.L080C2BDE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C2BFE
.L080C2BE6:
	cmp r2, #0
	beq .L080C2BF6
	adds r0, r2, #0
	add r1, sp, #0x14
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2BF6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C2BE6
.L080C2BFE:
	adds r5, r2, #0
.L080C2C00:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C2C10
.L080C2C0A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C2C0A
.L080C2C10:
	cmp r0, #0
	beq .L080C2C18
	bl free
.L080C2C18:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C2C24:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xd2
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C2C3E
	ldrh r3, [r2, #4]
.L080C2C3E:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080C2C6C @ =0x050002C0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C2C70
	cmp r1, #0
	beq .L080C2C64
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C2C64:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C2D38
	.align 2, 0
.L080C2C6C: .4byte 0x050002C0
.L080C2C70:
	str r1, [sp, #0xcc]
	movs r0, #1
	add r1, sp, #0xb8
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xcc]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xb4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C2C8C
	adds r0, r1, #0
.L080C2C8C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C2CAA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C2CAE
	mov r0, r8
	bl func_080D3BC0
	b .L080C2CAE
.L080C2CAA:
	movs r0, #0
	mov r8, r0
.L080C2CAE:
	adds r5, r0, #0
	str r5, [sp, #0xd0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xcc]
	cmp r2, r7
	beq .L080C2CD6
.L080C2CBC:
	cmp r3, #0
	beq .L080C2CCC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2CCC:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xcc]
	cmp r2, r0
	bne .L080C2CBC
.L080C2CD6:
	adds r5, r3, #0
	ldr r1, [sp, #0xb8]
	cmp r1, #1
	bne .L080C2CF2
	cmp r5, #0
	beq .L080C2CEE
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C2CEE:
	adds r5, #0x10
	b .L080C2D14
.L080C2CF2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C2D12
.L080C2CFA:
	cmp r2, #0
	beq .L080C2D0A
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2D0A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C2CFA
.L080C2D12:
	adds r5, r2, #0
.L080C2D14:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C2D24
.L080C2D1E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C2D1E
.L080C2D24:
	cmp r0, #0
	beq .L080C2D2C
	bl free
.L080C2D2C:
	ldr r0, [sp, #0xd0]
	add r0, r8
	ldr r7, [sp, #0xd0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C2D38:
	ldr r0, [sp, #0xc4]
	str r0, [sp, #0xbc]
	cmp r0, #4
	bgt .L080C2D42
	b .L080C2A10
.L080C2D42:
	add sp, #0xd4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080C2D54
func_080C2D54: @ 0x080C2D54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r8, r0
	ldr r0, .L080C2FA8 @ =0x0000096B
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C2E0A
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xf4
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C2D86
	ldrh r2, [r3, #4]
.L080C2D86:
	ldr r0, .L080C2FAC @ =0x0000079C
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080C2DAA
	ldrh r2, [r0, #4]
.L080C2DAA:
	ldr r0, .L080C2FB0 @ =0x000007C4
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080C2DCE
	ldrh r2, [r0, #4]
.L080C2DCE:
	ldr r0, .L080C2FB4 @ =0x000007EC
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	movs r4, #0xef
	lsls r4, r4, #3
	add r4, r8
	movs r5, #3
.L080C2DE2:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080C2E02
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [r4]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080C2E02:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bge .L080C2DE2
.L080C2E0A:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	movs r1, #0xa9
	lsls r1, r1, #3
	add r1, r8
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080C2E34
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, .L080C2FB8 @ =0x0000054C
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080C2E34:
	ldr r0, .L080C2FBC @ =0x0000089C
	add r0, r8
	ldr r1, [r0]
	cmp r1, #4
	bne .L080C2E48
	ldr r0, .L080C2FC0 @ =0x000008A4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #1
	beq .L080C2E58
.L080C2E48:
	cmp r1, #3
	bne .L080C2E7E
	movs r0, #0x8a
	lsls r0, r0, #4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #2
	beq .L080C2E7E
.L080C2E58:
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xab
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C2E72
	ldrh r2, [r3, #4]
.L080C2E72:
	ldr r0, .L080C2FC4 @ =0x00000554
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080C2E7E:
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xb0
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C2E98
	ldrh r2, [r3, #4]
.L080C2E98:
	ldr r0, .L080C2FC8 @ =0x0000057C
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r0, .L080C2FCC @ =0x0000096D
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C2ED2
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0xeb
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080C2EC6
	ldrh r2, [r0, #4]
.L080C2EC6:
	ldr r0, .L080C2FD0 @ =0x00000754
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080C2ED2:
	ldr r0, .L080C2FD4 @ =0x000008BC
	add r0, r8
	ldr r0, [r0]
	cmp r0, #9
	beq .L080C2EDE
	b .L080C31E8
.L080C2EDE:
	ldr r1, .L080C2FD8 @ =0x0000072C
	add r1, r8
	ldr r2, [r1]
	ldr r0, .L080C2FDC @ =0x000008B4
	add r0, r8
	ldrb r0, [r0]
	subs r0, #8
	strh r0, [r2]
	ldr r1, [r1]
	ldr r0, .L080C2FE0 @ =0x000008B5
	add r0, r8
	ldrb r0, [r0]
	subs r0, #0x20
	strh r0, [r1, #2]
	movs r5, #0xe5
	lsls r5, r5, #3
	add r5, r8
	ldr r0, [r5]
	bl func_0805E8F0
	adds r1, r0, #0
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt .L080C2F10
	b .L080C31C2
.L080C2F10:
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge .L080C2F1C
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x10]
.L080C2F1C:
	movs r4, #0xe6
	lsls r4, r4, #3
	add r4, r8
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
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xe7
	lsls r4, r4, #3
	add r4, r8
	ldr r6, [r4]
	ldr r0, .L080C2FE4 @ =0x0000086C
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080C2F78
	ldrh r3, [r4, #4]
.L080C2F78:
	lsls r2, r2, #5
	ldr r4, .L080C2FE8 @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r6, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C2FEC
	cmp r1, #0
	beq .L080C2FA0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C2FA0:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C30B2
	.align 2, 0
.L080C2FA8: .4byte 0x0000096B
.L080C2FAC: .4byte 0x0000079C
.L080C2FB0: .4byte 0x000007C4
.L080C2FB4: .4byte 0x000007EC
.L080C2FB8: .4byte 0x0000054C
.L080C2FBC: .4byte 0x0000089C
.L080C2FC0: .4byte 0x000008A4
.L080C2FC4: .4byte 0x00000554
.L080C2FC8: .4byte 0x0000057C
.L080C2FCC: .4byte 0x0000096D
.L080C2FD0: .4byte 0x00000754
.L080C2FD4: .4byte 0x000008BC
.L080C2FD8: .4byte 0x0000072C
.L080C2FDC: .4byte 0x000008B4
.L080C2FE0: .4byte 0x000008B5
.L080C2FE4: .4byte 0x0000086C
.L080C2FE8: .4byte 0x06010000
.L080C2FEC:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080C3006
	adds r0, r1, #0
.L080C3006:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3024
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C3028
	mov r0, sb
	bl func_080D3BC0
	b .L080C3028
.L080C3024:
	movs r0, #0
	mov sb, r0
.L080C3028:
	adds r4, r0, #0
	str r4, [sp, #0x54]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r4, [sp, #0x50]
	cmp r2, r4
	beq .L080C3050
.L080C3036:
	cmp r3, #0
	beq .L080C3046
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3046:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x50]
	cmp r2, r6
	bne .L080C3036
.L080C3050:
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080C306C
	cmp r4, #0
	beq .L080C3068
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3068:
	adds r4, #0x10
	b .L080C308E
.L080C306C:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C308C
.L080C3074:
	cmp r2, #0
	beq .L080C3084
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3084:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3074
.L080C308C:
	adds r4, r2, #0
.L080C308E:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C309E
.L080C3098:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C3098
.L080C309E:
	cmp r0, #0
	beq .L080C30A6
	bl free
.L080C30A6:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r1, [sp, #0x54]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C30B2:
	mov r0, r8
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xe8
	lsls r2, r2, #3
	add r2, r8
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C30CC
	ldrh r3, [r2, #4]
.L080C30CC:
	adds r5, r4, #0
	mov r0, sp
	ldr r2, .L080C30F8 @ =0x05000300
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C30FC
	cmp r1, #0
	beq .L080C30F0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C30F0:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C31C2
	.align 2, 0
.L080C30F8: .4byte 0x05000300
.L080C30FC:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080C3116
	adds r0, r1, #0
.L080C3116:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3134
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C3138
	mov r0, sb
	bl func_080D3BC0
	b .L080C3138
.L080C3134:
	movs r0, #0
	mov sb, r0
.L080C3138:
	adds r4, r0, #0
	str r4, [sp, #0x54]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x50]
	cmp r2, r7
	beq .L080C3160
.L080C3146:
	cmp r3, #0
	beq .L080C3156
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3156:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bne .L080C3146
.L080C3160:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080C317C
	cmp r4, #0
	beq .L080C3178
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C3178:
	adds r4, #0x10
	b .L080C319E
.L080C317C:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C319C
.L080C3184:
	cmp r2, #0
	beq .L080C3194
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3194:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3184
.L080C319C:
	adds r4, r2, #0
.L080C319E:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C31AE
.L080C31A8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C31A8
.L080C31AE:
	cmp r0, #0
	beq .L080C31B6
	bl free
.L080C31B6:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r7, [sp, #0x54]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C31C2:
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xe6
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C31DC
	ldrh r2, [r3, #4]
.L080C31DC:
	ldr r0, .L080C321C @ =0x0000072C
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080C31E8:
	ldr r0, .L080C3220 @ =0x000008C5
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C31F4
	b .L080C34FC
.L080C31F4:
	ldr r0, .L080C3224 @ =0x0000089C
	add r0, r8
	ldr r0, [r0]
	cmp r0, #2
	beq .L080C3234
	cmp r0, #0
	beq .L080C3234
	ldr r2, .L080C3228 @ =0x000005F4
	add r2, r8
	ldr r1, [r2]
	ldr r0, .L080C322C @ =0x000008B4
	add r0, r8
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	ldr r0, .L080C3230 @ =0x000008B5
	add r0, r8
	ldrb r0, [r0]
	adds r0, #0xf
	b .L080C324A
	.align 2, 0
.L080C321C: .4byte 0x0000072C
.L080C3220: .4byte 0x000008C5
.L080C3224: .4byte 0x0000089C
.L080C3228: .4byte 0x000005F4
.L080C322C: .4byte 0x000008B4
.L080C3230: .4byte 0x000008B5
.L080C3234:
	ldr r2, .L080C32EC @ =0x000005F4
	add r2, r8
	ldr r1, [r2]
	ldr r0, .L080C32F0 @ =0x0000097D
	add r0, r8
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	ldr r0, .L080C32F4 @ =0x0000097E
	add r0, r8
	ldrb r0, [r0]
.L080C324A:
	strh r0, [r1, #2]
	movs r5, #0xbe
	lsls r5, r5, #3
	add r5, r8
	ldr r0, [r5]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080C3260
	b .L080C34D6
.L080C3260:
	movs r4, #0xbf
	lsls r4, r4, #3
	add r4, r8
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
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #3
	add r4, r8
	ldr r6, [r4]
	ldr r0, .L080C32F8 @ =0x0000084C
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080C32BC
	ldrh r3, [r4, #4]
.L080C32BC:
	lsls r2, r2, #5
	ldr r4, .L080C32FC @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r6, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C3300
	cmp r1, #0
	beq .L080C32E4
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C32E4:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C33C6
	.align 2, 0
.L080C32EC: .4byte 0x000005F4
.L080C32F0: .4byte 0x0000097D
.L080C32F4: .4byte 0x0000097E
.L080C32F8: .4byte 0x0000084C
.L080C32FC: .4byte 0x06010000
.L080C3300:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080C331A
	adds r0, r1, #0
.L080C331A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3338
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C333C
	mov r0, sb
	bl func_080D3BC0
	b .L080C333C
.L080C3338:
	movs r0, #0
	mov sb, r0
.L080C333C:
	adds r4, r0, #0
	str r4, [sp, #0x54]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r4, [sp, #0x50]
	cmp r2, r4
	beq .L080C3364
.L080C334A:
	cmp r3, #0
	beq .L080C335A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C335A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x50]
	cmp r2, r6
	bne .L080C334A
.L080C3364:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080C3380
	cmp r4, #0
	beq .L080C337C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C337C:
	adds r4, #0x10
	b .L080C33A2
.L080C3380:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C33A0
.L080C3388:
	cmp r2, #0
	beq .L080C3398
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3398:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3388
.L080C33A0:
	adds r4, r2, #0
.L080C33A2:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C33B2
.L080C33AC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C33AC
.L080C33B2:
	cmp r0, #0
	beq .L080C33BA
	bl free
.L080C33BA:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r1, [sp, #0x54]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C33C6:
	mov r0, r8
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xc1
	lsls r2, r2, #3
	add r2, r8
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C33E0
	ldrh r3, [r2, #4]
.L080C33E0:
	adds r5, r4, #0
	mov r0, sp
	ldr r2, .L080C340C @ =0x05000280
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C3410
	cmp r1, #0
	beq .L080C3404
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C3404:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C34D6
	.align 2, 0
.L080C340C: .4byte 0x05000280
.L080C3410:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080C342A
	adds r0, r1, #0
.L080C342A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3448
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C344C
	mov r0, sb
	bl func_080D3BC0
	b .L080C344C
.L080C3448:
	movs r0, #0
	mov sb, r0
.L080C344C:
	adds r4, r0, #0
	str r4, [sp, #0x54]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x50]
	cmp r2, r7
	beq .L080C3474
.L080C345A:
	cmp r3, #0
	beq .L080C346A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C346A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bne .L080C345A
.L080C3474:
	adds r4, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080C3490
	cmp r4, #0
	beq .L080C348C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C348C:
	adds r4, #0x10
	b .L080C34B2
.L080C3490:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C34B0
.L080C3498:
	cmp r2, #0
	beq .L080C34A8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C34A8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3498
.L080C34B0:
	adds r4, r2, #0
.L080C34B2:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C34C2
.L080C34BC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C34BC
.L080C34C2:
	cmp r0, #0
	beq .L080C34CA
	bl free
.L080C34CA:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r7, [sp, #0x54]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C34D6:
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xbf
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C34F0
	ldrh r2, [r3, #4]
.L080C34F0:
	ldr r0, .L080C35DC @ =0x000005F4
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080C34FC:
	ldr r2, .L080C35E0 @ =0x000005A4
	add r2, r8
	ldr r1, [r2]
	ldr r0, .L080C35E4 @ =0x000008B4
	add r0, r8
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	ldr r0, .L080C35E8 @ =0x000008B5
	add r0, r8
	ldrb r0, [r0]
	strh r0, [r1, #2]
	ldr r5, .L080C35EC @ =0x000008C4
	add r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq .L080C353C
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, r8
	ldr r4, [r0]
	mov r0, r8
	bl func_080C7B38
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r0, #0
	strb r0, [r5]
.L080C353C:
	movs r5, #0xb4
	lsls r5, r5, #3
	add r5, r8
	ldr r0, [r5]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080C3550
	b .L080C37CE
.L080C3550:
	movs r4, #0xb5
	lsls r4, r4, #3
	add r4, r8
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
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xb6
	lsls r4, r4, #3
	add r4, r8
	ldr r6, [r4]
	ldr r0, .L080C35F0 @ =0x0000087C
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080C35AC
	ldrh r3, [r4, #4]
.L080C35AC:
	lsls r2, r2, #5
	ldr r4, .L080C35F4 @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r6, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C35F8
	cmp r1, #0
	beq .L080C35D4
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C35D4:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C36BE
	.align 2, 0
.L080C35DC: .4byte 0x000005F4
.L080C35E0: .4byte 0x000005A4
.L080C35E4: .4byte 0x000008B4
.L080C35E8: .4byte 0x000008B5
.L080C35EC: .4byte 0x000008C4
.L080C35F0: .4byte 0x0000087C
.L080C35F4: .4byte 0x06010000
.L080C35F8:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x44]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r1, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L080C3612
	adds r0, r1, #0
.L080C3612:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3630
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C3634
	mov r0, sb
	bl func_080D3BC0
	b .L080C3634
.L080C3630:
	movs r0, #0
	mov sb, r0
.L080C3634:
	adds r4, r0, #0
	str r4, [sp, #0x54]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r4, [sp, #0x50]
	cmp r2, r4
	beq .L080C365C
.L080C3642:
	cmp r3, #0
	beq .L080C3652
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3652:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x50]
	cmp r2, r6
	bne .L080C3642
.L080C365C:
	adds r4, r3, #0
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L080C3678
	cmp r4, #0
	beq .L080C3674
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3674:
	adds r4, #0x10
	b .L080C369A
.L080C3678:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C3698
.L080C3680:
	cmp r2, #0
	beq .L080C3690
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3690:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3680
.L080C3698:
	adds r4, r2, #0
.L080C369A:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C36AA
.L080C36A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C36A4
.L080C36AA:
	cmp r0, #0
	beq .L080C36B2
	bl free
.L080C36B2:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r1, [sp, #0x54]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C36BE:
	mov r0, r8
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xb7
	lsls r2, r2, #3
	add r2, r8
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C36D8
	ldrh r3, [r2, #4]
.L080C36D8:
	adds r5, r4, #0
	mov r0, sp
	ldr r2, .L080C3704 @ =0x05000380
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C3708
	cmp r1, #0
	beq .L080C36FC
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C36FC:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C37CE
	.align 2, 0
.L080C3704: .4byte 0x05000380
.L080C3708:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L080C3722
	adds r0, r1, #0
.L080C3722:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3740
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C3744
	mov r0, sb
	bl func_080D3BC0
	b .L080C3744
.L080C3740:
	movs r0, #0
	mov sb, r0
.L080C3744:
	adds r4, r0, #0
	str r4, [sp, #0x54]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x50]
	cmp r2, r7
	beq .L080C376C
.L080C3752:
	cmp r3, #0
	beq .L080C3762
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3762:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bne .L080C3752
.L080C376C:
	adds r4, r3, #0
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L080C3788
	cmp r4, #0
	beq .L080C3784
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C3784:
	adds r4, #0x10
	b .L080C37AA
.L080C3788:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C37A8
.L080C3790:
	cmp r2, #0
	beq .L080C37A0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C37A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3790
.L080C37A8:
	adds r4, r2, #0
.L080C37AA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C37BA
.L080C37B4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C37B4
.L080C37BA:
	cmp r0, #0
	beq .L080C37C2
	bl free
.L080C37C2:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r7, [sp, #0x54]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C37CE:
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xb5
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C37E8
	ldrh r2, [r3, #4]
.L080C37E8:
	ldr r0, .L080C38C0 @ =0x000005A4
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r7, .L080C38C4 @ =0x000006A4
	add r7, r8
	ldr r6, .L080C38C8 @ =0x00000905
	add r6, r8
	movs r5, #0x18
.L080C37FE:
	ldrb r0, [r6]
	cmp r0, #0
	beq .L080C3826
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xe1
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C381E
	ldrh r2, [r3, #4]
.L080C381E:
	ldr r3, [r7]
	adds r0, r4, #0
	bl func_0805E99C
.L080C3826:
	adds r7, #4
	adds r6, #4
	subs r5, #1
	cmp r5, #0
	bge .L080C37FE
	ldr r0, .L080C38CC @ =0x0000096C
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C3874
	ldr r4, .L080C38D0 @ =0x000005CC
	add r4, r8
	ldr r1, [r4]
	ldr r0, .L080C38D4 @ =0x000008B4
	add r0, r8
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r4]
	ldr r0, .L080C38D8 @ =0x000008B5
	add r0, r8
	ldrb r0, [r0]
	strh r0, [r1, #2]
	mov r0, r8
	bl func_08008920
	adds r5, r0, #0
	movs r3, #0xba
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C386C
	ldrh r2, [r3, #4]
.L080C386C:
	ldr r3, [r4]
	adds r0, r5, #0
	bl func_0805E99C
.L080C3874:
	ldr r7, .L080C38DC @ =0x0000061C
	add r7, r8
	ldr r6, .L080C38E0 @ =0x00000904
	add r6, r8
	movs r5, #0x18
.L080C387E:
	ldrb r0, [r6]
	cmp r0, #0
	beq .L080C38A6
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	movs r3, #0xd0
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080C389E
	ldrh r2, [r3, #4]
.L080C389E:
	ldr r3, [r7]
	adds r0, r4, #0
	bl func_0805E99C
.L080C38A6:
	adds r7, #4
	adds r6, #4
	subs r5, #1
	cmp r5, #0
	bge .L080C387E
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C38C0: .4byte 0x000005A4
.L080C38C4: .4byte 0x000006A4
.L080C38C8: .4byte 0x00000905
.L080C38CC: .4byte 0x0000096C
.L080C38D0: .4byte 0x000005CC
.L080C38D4: .4byte 0x000008B4
.L080C38D8: .4byte 0x000008B5
.L080C38DC: .4byte 0x0000061C
.L080C38E0: .4byte 0x00000904

	thumb_func_start func_080C38E4
func_080C38E4: @ 0x080C38E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sb, r0
	cmp r1, #0x3c
	beq .L080C38F8
	b .L080C3AF6
.L080C38F8:
	ldr r5, .L080C3984 @ =0x0000097B
	add r5, sb
	ldrb r0, [r5]
	subs r0, #1
	movs r1, #0
	mov sl, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bne .L080C391C
	movs r0, #0x81
	lsls r0, r0, #4
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	bl func_08008C28
.L080C391C:
	ldrb r0, [r5]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	ldrb r0, [r5]
	cmp r0, #9
	bhi .L080C3942
	add r0, sp, #0x10
	ldr r1, .L080C3988 @ =gUnk_08108000
	movs r2, #2
	bl memcpy
	add r1, sp, #0xc
	adds r0, r1, #0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	movs r0, #0x30
	strb r0, [r1]
.L080C3942:
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
	bls .L080C398C
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
	b .L080C39AA
	.align 2, 0
.L080C3984: .4byte 0x0000097B
.L080C3988: .4byte gUnk_08108000
.L080C398C:
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
.L080C39AA:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	ldr r0, .L080C39F8 @ =0x0000083C
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r4, #0
	lsls r2, r2, #5
	ldr r7, .L080C39FC @ =0x06010000
	adds r2, r2, r7
	add r0, sp, #0x14
	mov r1, r8
	bl func_08008F0C
	add r0, sp, #0x14
	mov r8, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C3A00
	cmp r1, #0
	beq .L080C39EE
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C39EE:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C3AC6
	.align 2, 0
.L080C39F8: .4byte 0x0000083C
.L080C39FC: .4byte 0x06010000
.L080C3A00:
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
	bhs .L080C3A1A
	adds r0, r1, #0
.L080C3A1A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C3A38
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080C3A3C
	mov r0, sl
	bl func_080D3BC0
	b .L080C3A3C
.L080C3A38:
	movs r0, #0
	mov sl, r0
.L080C3A3C:
	adds r4, r0, #0
	str r4, [sp, #0x3c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x38]
	cmp r2, r7
	beq .L080C3A64
.L080C3A4A:
	cmp r3, #0
	beq .L080C3A5A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3A5A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080C3A4A
.L080C3A64:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080C3A80
	cmp r4, #0
	beq .L080C3A7C
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C3A7C:
	adds r4, #0x10
	b .L080C3AA2
.L080C3A80:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080C3AA0
.L080C3A88:
	cmp r2, #0
	beq .L080C3A98
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C3A98:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C3A88
.L080C3AA0:
	adds r4, r2, #0
.L080C3AA2:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C3AB2
.L080C3AAC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C3AAC
.L080C3AB2:
	cmp r0, #0
	beq .L080C3ABA
	bl free
.L080C3ABA:
	ldr r0, [sp, #0x3c]
	add r0, sl
	ldr r7, [sp, #0x3c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080C3AC6:
	ldr r0, .L080C3B08 @ =0x0000097B
	add r0, sb
	ldrb r1, [r0]
	cmp r1, #0
	bne .L080C3AF6
	ldr r0, .L080C3B0C @ =0x0000097F
	add r0, sb
	strb r1, [r0]
	ldr r1, .L080C3B10 @ =0x0000089C
	add r1, sb
	movs r0, #5
	str r0, [r1]
	movs r0, #0x81
	lsls r0, r0, #4
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #1
	bl func_08008C28
	ldr r0, .L080C3B14 @ =0x00000818
	add r0, sb
	movs r1, #0xbb
	bl func_08008B6C
.L080C3AF6:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C3B08: .4byte 0x0000097B
.L080C3B0C: .4byte 0x0000097F
.L080C3B10: .4byte 0x0000089C
.L080C3B14: .4byte 0x00000818

	thumb_func_start func_080C3B18
func_080C3B18: @ 0x080C3B18
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r2, r0, #0
	mov r1, sp
	ldr r0, .L080C3B58 @ =gUnk_08108004
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, .L080C3B5C @ =0x00000984
	adds r1, r2, r0
	movs r3, #0x98
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	ldr r4, .L080C3B60 @ =0x00000988
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #2
	bhi .L080C3B64
	movs r5, #0x8b
	lsls r5, r5, #4
	adds r1, r2, r5
	movs r0, #0
	b .L080C3BEC
	.align 2, 0
.L080C3B58: .4byte gUnk_08108004
.L080C3B5C: .4byte 0x00000984
.L080C3B60: .4byte 0x00000988
.L080C3B64:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080C3B78
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r1, r2, r0
	movs r0, #1
	b .L080C3BEC
.L080C3B78:
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080C3B8C
	movs r3, #0x8b
	lsls r3, r3, #4
	adds r1, r2, r3
	movs r0, #2
	b .L080C3BEC
.L080C3B8C:
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi .L080C3BA2
	movs r4, #0x8b
	lsls r4, r4, #4
	adds r1, r2, r4
	movs r0, #3
	b .L080C3BEC
.L080C3BA2:
	adds r0, r1, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080C3BB8
	movs r5, #0x8b
	lsls r5, r5, #4
	adds r1, r2, r5
	movs r0, #4
	b .L080C3BEC
.L080C3BB8:
	adds r0, r1, #0
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080C3BCE
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r1, r2, r0
	movs r0, #5
	b .L080C3BEC
.L080C3BCE:
	adds r0, r1, #0
	subs r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080C3BE4
	movs r3, #0x8b
	lsls r3, r3, #4
	adds r1, r2, r3
	movs r0, #6
	b .L080C3BEC
.L080C3BE4:
	movs r4, #0x8b
	lsls r4, r4, #4
	adds r1, r2, r4
	movs r0, #7
.L080C3BEC:
	str r0, [r1]
	ldr r1, .L080C3C10 @ =gUnk_08107FE0
	movs r5, #0x8b
	lsls r5, r5, #4
	adds r0, r2, r5
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r3, .L080C3C14 @ =0x0000097C
	adds r1, r2, r3
	strb r0, [r1]
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080C3C10: .4byte gUnk_08107FE0
.L080C3C14: .4byte 0x0000097C

	thumb_func_start func_080C3C18
func_080C3C18: @ 0x080C3C18
	push {r4, lr}
	ldr r1, .L080C3CE0 @ =0x000008BC
	adds r2, r0, r1
	movs r1, #2
	str r1, [r2]
	ldr r2, .L080C3CE4 @ =0x000008C4
	adds r1, r0, r2
	movs r2, #0
	movs r3, #1
	strb r3, [r1]
	ldr r4, .L080C3CE8 @ =0x000008C5
	adds r1, r0, r4
	strb r2, [r1]
	subs r4, #0x29
	adds r1, r0, r4
	str r2, [r1]
	adds r4, #8
	adds r1, r0, r4
	str r2, [r1]
	subs r4, #4
	adds r1, r0, r4
	str r2, [r1]
	adds r4, #8
	adds r1, r0, r4
	str r2, [r1]
	adds r4, #4
	adds r1, r0, r4
	str r2, [r1]
	adds r4, #0xbc
	adds r1, r0, r4
	strb r3, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r2, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r2, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r2, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r3, [r1]
	ldr r3, .L080C3CEC @ =0x0000096D
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #4
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	subs r4, #2
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #9
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #0xc
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #1
	adds r1, r0, r3
	strb r2, [r1]
	subs r4, #0xc6
	adds r3, r0, r4
	movs r1, #0x78
	strb r1, [r3]
	ldr r1, .L080C3CF0 @ =0x000008B5
	adds r3, r0, r1
	movs r1, #0x98
	strb r1, [r3]
	ldr r3, .L080C3CF4 @ =0x000008B7
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #2
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #2
	adds r1, r0, r4
	strb r2, [r1]
	ldr r1, .L080C3CF8 @ =0x0000097B
	adds r3, r0, r1
	movs r1, #0x19
	strb r1, [r3]
	ldr r3, .L080C3CFC @ =0x0000097E
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #0xc5
	adds r1, r0, r4
	strb r2, [r1]
	ldr r1, .L080C3D00 @ =0x0000097F
	adds r0, r0, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080C3CE0: .4byte 0x000008BC
.L080C3CE4: .4byte 0x000008C4
.L080C3CE8: .4byte 0x000008C5
.L080C3CEC: .4byte 0x0000096D
.L080C3CF0: .4byte 0x000008B5
.L080C3CF4: .4byte 0x000008B7
.L080C3CF8: .4byte 0x0000097B
.L080C3CFC: .4byte 0x0000097E
.L080C3D00: .4byte 0x0000097F

	thumb_func_start func_080C3D04
func_080C3D04: @ 0x080C3D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x80]
	movs r1, #0
	str r1, [sp, #0x84]
	movs r2, #0
	str r2, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0x8c]
	movs r4, #0
	str r4, [sp, #0x90]
	movs r6, #0
	str r6, [sp, #0x94]
	str r0, [sp, #0x98]
	str r1, [sp, #0x9c]
	str r2, [sp, #0xa0]
	ldr r3, .L080C3DB4 @ =0x00000904
	adds r0, r7, r3
	movs r1, #0x18
.L080C3D36:
	strb r2, [r0]
	strb r2, [r0, #1]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge .L080C3D36
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r4, #0xba
	lsls r4, r4, #5
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r6, .L080C3DB8 @ =0x0000051C
	ldr r0, [r6, r7]
	mov sl, r0
	adds r0, r7, #0
	bl func_080088DC
	mov sb, r0
	adds r0, r7, #0
	bl func_08008920
	str r0, [sp, #0xa4]
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	ldr r2, .L080C3DBC @ =0x00000814
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0xa4]
	adds r3, r5, #0
	bl func_08050D3C
	ldr r4, [r6, r7]
	adds r0, r7, #0
	bl func_080C7B64
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_08050E50
	ldr r3, .L080C3DC0 @ =0x0000089C
	adds r0, r7, r3
	bl .L080C5144
	.align 2, 0
.L080C3DB4: .4byte 0x00000904
.L080C3DB8: .4byte 0x0000051C
.L080C3DBC: .4byte 0x00000814
.L080C3DC0: .4byte 0x0000089C

	thumb_func_start sub_080C3DC4
sub_080C3DC4: @ 0x080C3DC4
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r6, .L080C3E2C @ =0x0000051C
	adds r4, r7, r6
	ldr r0, [r4]
	bl func_08050D34
	adds r6, r0, #0
	ldr r4, [r4]
	mov sb, r4
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	mov sl, r0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	ldr r2, .L080C3E30 @ =0x00000814
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080C3E22
	b .L080C4128
.L080C3E22:
	lsls r0, r0, #2
	ldr r1, .L080C3E34 @ =.L080C3E38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C3E2C: .4byte 0x0000051C
.L080C3E30: .4byte 0x00000814
.L080C3E34: .4byte .L080C3E38
.L080C3E38: @ jump table
	.4byte .L080C3E54 @ case 0
	.4byte .L080C4128 @ case 1
	.4byte .L080C4128 @ case 2
	.4byte .L080C3FA0 @ case 3
	.4byte .L080C4128 @ case 4
	.4byte .L080C4128 @ case 5
	.4byte .L080C4128 @ case 6
.L080C3E54:
	ldr r3, [sp, #0x80]
	cmp r3, #8
	bne .L080C3E68
	ldr r4, .L080C3E64 @ =0x0000089C
	adds r1, r7, r4
	movs r0, #1
	str r0, [r1]
	b .L080C4128
	.align 2, 0
.L080C3E64: .4byte 0x0000089C
.L080C3E68:
	ldr r6, [sp, #0x80]
	cmp r6, #5
	bne .L080C3F2C
	movs r0, #1
	str r0, [sp, #0x9c]
	ldr r1, [sp, #0xa0]
	cmp r1, #0
	bne .L080C3E7A
	b .L080C4128
.L080C3E7A:
	ldr r2, .L080C3F1C @ =0x0000051C
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_08050D5C
	movs r3, #6
	str r3, [sp, #0x80]
	movs r4, #0
	str r4, [sp, #0x84]
	adds r0, r7, #0
	bl func_080C3C18
	movs r2, #0
	ldr r6, .L080C3F20 @ =0x00000904
	adds r0, r7, r6
	movs r1, #0x18
.L080C3E9A:
	strb r2, [r0]
	strb r2, [r0, #1]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge .L080C3E9A
	ldr r0, .L080C3F24 @ =0x00000544
	adds r4, r7, r0
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C3ED4
	ldr r1, .L080C3F28 @ =0x00000889
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
.L080C3ED4:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	bge .L080C3EF6
	ldr r1, .L080C3F24 @ =0x00000544
	adds r4, r7, r1
.L080C3EE4:
	adds r0, r7, #0
	bl func_080087C8
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080C3EE4
.L080C3EF6:
	ldr r2, .L080C3F24 @ =0x00000544
	adds r4, r7, r2
	ldr r0, [r4]
	ldr r1, .L080C3F28 @ =0x00000889
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
	b .L080C4128
	.align 2, 0
.L080C3F1C: .4byte 0x0000051C
.L080C3F20: .4byte 0x00000904
.L080C3F24: .4byte 0x00000544
.L080C3F28: .4byte 0x00000889
.L080C3F2C:
	ldr r3, [sp, #0x80]
	cmp r3, #4
	bne .L080C3F50
	movs r4, #1
	str r4, [sp, #0x94]
	ldr r6, [sp, #0x98]
	cmp r6, #0
	bne .L080C3F3E
	b .L080C4128
.L080C3F3E:
	ldr r1, .L080C3F4C @ =0x0000051C
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	movs r2, #5
	b .L080C3F6E
	.align 2, 0
.L080C3F4C: .4byte 0x0000051C
.L080C3F50:
	ldr r4, [sp, #0x80]
	cmp r4, #3
	bne .L080C3F7C
	movs r6, #1
	str r6, [sp, #0x8c]
	ldr r0, [sp, #0x90]
	cmp r0, #0
	bne .L080C3F62
	b .L080C4128
.L080C3F62:
	ldr r1, .L080C3F78 @ =0x0000051C
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	movs r2, #4
.L080C3F6E:
	str r2, [sp, #0x80]
	movs r3, #0
	str r3, [sp, #0x84]
	b .L080C4128
	.align 2, 0
.L080C3F78: .4byte 0x0000051C
.L080C3F7C:
	ldr r4, .L080C3F9C @ =0x0000051C
	adds r0, r7, r4
	ldr r0, [r0]
	bl func_08050D5C
	ldr r6, [sp, #0x80]
	cmp r6, #0
	bne .L080C3F8E
	b .L080C4128
.L080C3F8E:
	cmp r6, #6
	bne .L080C3F94
	b .L080C4128
.L080C3F94:
	adds r6, #1
	str r6, [sp, #0x80]
	b .L080C4128
	.align 2, 0
.L080C3F9C: .4byte 0x0000051C
.L080C3FA0:
	cmp r6, #5
	bgt .L080C3FB0
	cmp r6, #4
	blt .L080C3FAA
	b .L080C4128
.L080C3FAA:
	cmp r6, #1
	beq .L080C3FC8
	b .L080C3FB6
.L080C3FB0:
	cmp r6, #6
	bne .L080C3FB6
	b .L080C40C8
.L080C3FB6:
	ldr r1, .L080C3FC4 @ =0x0000051C
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D74
	b .L080C4128
	.align 2, 0
.L080C3FC4: .4byte 0x0000051C
.L080C3FC8:
	ldr r2, [sp, #0x80]
	cmp r2, #8
	bls .L080C3FD0
	b .L080C4128
.L080C3FD0:
	lsls r0, r2, #2
	ldr r1, .L080C3FDC @ =.L080C3FE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C3FDC: .4byte .L080C3FE0
.L080C3FE0: @ jump table
	.4byte .L080C4004 @ case 0
	.4byte .L080C4128 @ case 1
	.4byte .L080C4024 @ case 2
	.4byte .L080C403C @ case 3
	.4byte .L080C4054 @ case 4
	.4byte .L080C406C @ case 5
	.4byte .L080C4084 @ case 6
	.4byte .L080C4128 @ case 7
	.4byte .L080C40B0 @ case 8
.L080C4004:
	ldr r3, .L080C4014 @ =0x0000051C
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080C4018 @ =gUnk_08108020
	ldr r2, .L080C401C @ =gUnk_0810803C
	ldr r3, .L080C4020 @ =gUnk_08108040
	b .L080C4090
	.align 2, 0
.L080C4014: .4byte 0x0000051C
.L080C4018: .4byte gUnk_08108020
.L080C401C: .4byte gUnk_0810803C
.L080C4020: .4byte gUnk_08108040
.L080C4024:
	ldr r4, .L080C4034 @ =0x0000051C
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, .L080C4038 @ =gUnk_08108044
	bl func_08050D8C
	b .L080C4128
	.align 2, 0
.L080C4034: .4byte 0x0000051C
.L080C4038: .4byte gUnk_08108044
.L080C403C:
	ldr r6, .L080C404C @ =0x0000051C
	adds r0, r7, r6
	ldr r0, [r0]
	ldr r1, .L080C4050 @ =gUnk_08108070
	bl func_08050D8C
	b .L080C4128
	.align 2, 0
.L080C404C: .4byte 0x0000051C
.L080C4050: .4byte gUnk_08108070
.L080C4054:
	ldr r1, .L080C4064 @ =0x0000051C
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, .L080C4068 @ =gUnk_081080EC
	bl func_08050D8C
	b .L080C4128
	.align 2, 0
.L080C4064: .4byte 0x0000051C
.L080C4068: .4byte gUnk_081080EC
.L080C406C:
	ldr r2, .L080C407C @ =0x0000051C
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L080C4080 @ =gUnk_08108168
	bl func_08050D8C
	b .L080C4128
	.align 2, 0
.L080C407C: .4byte 0x0000051C
.L080C4080: .4byte gUnk_08108168
.L080C4084:
	ldr r3, .L080C40A0 @ =0x0000051C
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080C40A4 @ =gUnk_081081D8
	ldr r2, .L080C40A8 @ =gUnk_081081E4
	ldr r3, .L080C40AC @ =gUnk_081081F4
.L080C4090:
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L080C4128
	.align 2, 0
.L080C40A0: .4byte 0x0000051C
.L080C40A4: .4byte gUnk_081081D8
.L080C40A8: .4byte gUnk_081081E4
.L080C40AC: .4byte gUnk_081081F4
.L080C40B0:
	ldr r4, .L080C40C0 @ =0x0000051C
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, .L080C40C4 @ =gUnk_08108204
	bl func_08050D8C
	b .L080C4128
	.align 2, 0
.L080C40C0: .4byte 0x0000051C
.L080C40C4: .4byte gUnk_08108204
.L080C40C8:
	ldr r6, .L080C40DC @ =0x0000051C
	adds r0, r7, r6
	ldr r0, [r0]
	bl func_08050DF0
	cmp r0, #1
	beq .L080C40E0
	cmp r0, #2
	beq .L080C40F8
	b .L080C4128
	.align 2, 0
.L080C40DC: .4byte 0x0000051C
.L080C40E0:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne .L080C40EC
	movs r1, #1
	str r1, [sp, #0x80]
	b .L080C4128
.L080C40EC:
	ldr r2, [sp, #0x80]
	cmp r2, #6
	bne .L080C4128
	movs r3, #7
	str r3, [sp, #0x80]
	b .L080C4128
.L080C40F8:
	ldr r4, [sp, #0x80]
	cmp r4, #0
	bne .L080C4104
	movs r6, #7
	str r6, [sp, #0x80]
	b .L080C4128
.L080C4104:
	ldr r0, [sp, #0x80]
	cmp r0, #6
	bne .L080C4128
	movs r1, #1
	str r1, [sp, #0x80]
	movs r2, #0
	str r2, [sp, #0x84]
	movs r3, #0
	str r3, [sp, #0x8c]
	movs r4, #0
	str r4, [sp, #0x90]
	movs r6, #0
	str r6, [sp, #0x94]
	movs r0, #0
	str r0, [sp, #0x98]
	movs r1, #0
	str r1, [sp, #0x9c]
	str r2, [sp, #0xa0]
.L080C4128:
	ldr r3, [sp, #0x80]
	cmp r3, #4
	bne .L080C4130
	b .L080C45EC
.L080C4130:
	cmp r3, #4
	bgt .L080C413C
	cmp r3, #3
	beq .L080C414A
	bl .L080C513A
.L080C413C:
	ldr r4, [sp, #0x80]
	cmp r4, #5
	bne .L080C4146
	bl sub_080C4AE0
.L080C4146:
	bl .L080C513A
.L080C414A:
	ldr r6, [sp, #0x8c]
	cmp r6, #0
	bne .L080C4154
	bl .L080C513A
.L080C4154:
	ldr r0, [sp, #0x84]
	cmp r0, #0
	bne .L080C41A8
	ldr r2, .L080C4198 @ =0x000008C5
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L080C419C @ =0x00000818
	adds r0, r7, r3
	movs r1, #0xbe
	bl func_08008B6C
	add r0, sp, #0x10
	adds r1, r7, #0
	movs r2, #1
	bl func_080C7B7C
	ldr r0, [sp, #0x10]
	adds r0, #8
	ldr r4, .L080C41A0 @ =0x0000097D
	adds r1, r7, r4
	strb r0, [r1]
	add r0, sp, #0x14
	adds r1, r7, #0
	movs r2, #1
	bl func_080C7B7C
	ldr r0, [sp, #0x14]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r6, .L080C41A4 @ =0x0000097E
	adds r1, r7, r6
	bl .L080C4B28
	.align 2, 0
.L080C4198: .4byte 0x000008C5
.L080C419C: .4byte 0x00000818
.L080C41A0: .4byte 0x0000097D
.L080C41A4: .4byte 0x0000097E
.L080C41A8:
	ldr r0, [sp, #0x84]
	cmp r0, #0x14
	bne .L080C41BC
	ldr r2, .L080C41B8 @ =0x00000908
	adds r1, r7, r2
	bl .L080C4B4A
	.align 2, 0
.L080C41B8: .4byte 0x00000908
.L080C41BC:
	ldr r3, [sp, #0x84]
	cmp r3, #0x1e
	bne .L080C4214
	ldr r4, .L080C4204 @ =0x000008C5
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1]
	add r0, sp, #0x18
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x18]
	adds r0, #8
	ldr r6, .L080C4208 @ =0x0000097D
	adds r1, r7, r6
	strb r0, [r1]
	add r0, sp, #0x1c
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x1c]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r2, .L080C420C @ =0x0000097E
	adds r1, r7, r2
	strb r0, [r1]
	ldr r3, .L080C4210 @ =0x00000818
	adds r0, r7, r3
.L080C41F8:
	movs r1, #0xbe
	bl func_08008B6C
	movs r5, #0x1f
	bl .L080C5138
	.align 2, 0
.L080C4204: .4byte 0x000008C5
.L080C4208: .4byte 0x0000097D
.L080C420C: .4byte 0x0000097E
.L080C4210: .4byte 0x00000818
.L080C4214:
	ldr r4, [sp, #0x84]
	cmp r4, #0x32
	bne .L080C4224
	movs r6, #0x96
	lsls r6, r6, #4
	adds r1, r7, r6
	bl sub_080C4BBC
.L080C4224:
	ldr r0, [sp, #0x84]
	cmp r0, #0x3c
	bne .L080C4314
	ldr r1, .L080C42FC @ =0x000008C5
	adds r0, r7, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L080C4300 @ =0x00000908
	adds r0, r7, r2
	strb r1, [r0]
	movs r3, #0x96
	lsls r3, r3, #4
	adds r0, r7, r3
	strb r1, [r0]
	ldr r6, .L080C4304 @ =0x00000544
	adds r4, r7, r6
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C426E
	ldr r1, .L080C4308 @ =0x00000889
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
.L080C426E:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	movs r5, #0x3d
	cmp r2, #0
	bge .L080C4298
.L080C427C:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r1, .L080C4304 @ =0x00000544
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080C427C
.L080C4298:
	ldr r2, .L080C4304 @ =0x00000544
	adds r4, r7, r2
	ldr r0, [r4]
	ldr r1, .L080C4308 @ =0x00000889
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
	ldr r3, .L080C430C @ =0x000008B4
	adds r1, r7, r3
	movs r0, #0x78
	strb r0, [r1]
	ldr r6, .L080C4310 @ =0x000008B5
	adds r1, r7, r6
	movs r0, #0x51
	strb r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C42DA
	bl .L080C5138
.L080C42DA:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r1, .L080C4304 @ =0x00000544
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C42DA
	bl .L080C5138
	.align 2, 0
.L080C42FC: .4byte 0x000008C5
.L080C4300: .4byte 0x00000908
.L080C4304: .4byte 0x00000544
.L080C4308: .4byte 0x00000889
.L080C430C: .4byte 0x000008B4
.L080C4310: .4byte 0x000008B5
.L080C4314:
	ldr r5, [sp, #0x84]
	adds r5, #1
	ldr r2, [sp, #0x84]
	cmp r2, #0x3c
	bgt .L080C4322
	bl .L080C5138
.L080C4322:
	ldr r3, .L080C433C @ =0x000008BC
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #8
	bls .L080C4330
	bl .L080C5138
.L080C4330:
	lsls r0, r0, #2
	ldr r1, .L080C4340 @ =.L080C4344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C433C: .4byte 0x000008BC
.L080C4340: .4byte .L080C4344
.L080C4344: @ jump table
	.4byte .L080C4368 @ case 0
	.4byte .L080C5138 @ case 1
	.4byte .L080C43DC @ case 2
	.4byte .L080C43F4 @ case 3
	.4byte .L080C4470 @ case 4
	.4byte .L080C44A8 @ case 5
	.4byte .L080C44DC @ case 6
	.4byte .L080C4514 @ case 7
	.4byte .L080C454C @ case 8
.L080C4368:
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	ldr r6, .L080C43C8 @ =0x000008BC
	adds r1, r7, r6
	movs r0, #8
	str r0, [r1]
	ldr r1, .L080C43CC @ =0x000008C4
	adds r0, r7, r1
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080C43D0 @ =0x000008B5
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r4, #5
	adds r0, r7, r4
	strb r2, [r0]
	subs r6, #0xa4
	adds r0, r7, r6
	movs r1, #0xbe
	bl func_08008B6C
	add r0, sp, #0x20
	adds r1, r7, #0
	movs r2, #1
	bl func_080C7B7C
	ldr r0, [sp, #0x20]
	adds r0, #8
	ldr r2, .L080C43D4 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x24
	adds r1, r7, #0
	movs r2, #1
	bl func_080C7B7C
	ldr r0, [sp, #0x24]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C43D8 @ =0x0000097E
	adds r1, r7, r3
	bl .L080C5026
	.align 2, 0
.L080C43C8: .4byte 0x000008BC
.L080C43CC: .4byte 0x000008C4
.L080C43D0: .4byte 0x000008B5
.L080C43D4: .4byte 0x0000097D
.L080C43D8: .4byte 0x0000097E
.L080C43DC:
	ldr r4, .L080C43EC @ =0x000008BC
	adds r1, r7, r4
	movs r0, #5
	str r0, [r1]
	ldr r6, .L080C43F0 @ =0x000008C4
	adds r1, r7, r6
	bl .L080C5024
	.align 2, 0
.L080C43EC: .4byte 0x000008BC
.L080C43F0: .4byte 0x000008C4
.L080C43F4:
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r0, #6
	str r0, [r1]
	ldr r2, .L080C4454 @ =0x000008BC
	adds r1, r7, r2
	movs r0, #8
	str r0, [r1]
	ldr r3, .L080C4458 @ =0x000008C4
	adds r0, r7, r3
	movs r2, #1
	strb r2, [r0]
	ldr r4, .L080C445C @ =0x000008B5
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldr r6, .L080C4460 @ =0x000008C5
	adds r0, r7, r6
	strb r2, [r0]
	ldr r1, .L080C4464 @ =0x00000818
	adds r0, r7, r1
	movs r1, #0xbe
	bl func_08008B6C
	add r0, sp, #0x28
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x28]
	adds r0, #8
	ldr r2, .L080C4468 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x2c
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x2c]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C446C @ =0x0000097E
	adds r1, r7, r3
	bl .L080C5026
	.align 2, 0
.L080C4454: .4byte 0x000008BC
.L080C4458: .4byte 0x000008C4
.L080C445C: .4byte 0x000008B5
.L080C4460: .4byte 0x000008C5
.L080C4464: .4byte 0x00000818
.L080C4468: .4byte 0x0000097D
.L080C446C: .4byte 0x0000097E
.L080C4470:
	ldr r4, .L080C449C @ =0x000008B4
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x68
	beq .L080C448C
	bl .L080C5138
.L080C448C:
	ldr r6, .L080C44A0 @ =0x000008BC
	adds r0, r7, r6
	str r2, [r0]
	ldr r0, .L080C44A4 @ =0x000008C4
	adds r1, r7, r0
	bl .L080C5044
	.align 2, 0
.L080C449C: .4byte 0x000008B4
.L080C44A0: .4byte 0x000008BC
.L080C44A4: .4byte 0x000008C4
.L080C44A8:
	ldr r2, .L080C44D0 @ =0x000008B4
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x88
	beq .L080C44C2
	bl .L080C5138
.L080C44C2:
	ldr r3, .L080C44D4 @ =0x000008BC
	adds r1, r7, r3
	movs r0, #7
	str r0, [r1]
	ldr r4, .L080C44D8 @ =0x000008C4
	bl .L080C5042
	.align 2, 0
.L080C44D0: .4byte 0x000008B4
.L080C44D4: .4byte 0x000008BC
.L080C44D8: .4byte 0x000008C4
.L080C44DC:
	ldr r6, .L080C4508 @ =0x000008B5
	adds r1, r7, r6
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x31
	beq .L080C44F6
	bl .L080C5138
.L080C44F6:
	ldr r0, .L080C450C @ =0x000008BC
	adds r1, r7, r0
	movs r0, #4
	str r0, [r1]
	ldr r2, .L080C4510 @ =0x000008C4
	adds r1, r7, r2
	bl .L080C5044
	.align 2, 0
.L080C4508: .4byte 0x000008B5
.L080C450C: .4byte 0x000008BC
.L080C4510: .4byte 0x000008C4
.L080C4514:
	ldr r3, .L080C4540 @ =0x000008B5
	adds r1, r7, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x71
	beq .L080C452E
	bl .L080C5138
.L080C452E:
	ldr r4, .L080C4544 @ =0x000008BC
	adds r1, r7, r4
	movs r0, #3
	str r0, [r1]
	ldr r6, .L080C4548 @ =0x000008C4
	adds r1, r7, r6
	bl .L080C5044
	.align 2, 0
.L080C4540: .4byte 0x000008B5
.L080C4544: .4byte 0x000008BC
.L080C4548: .4byte 0x000008C4
.L080C454C:
	ldr r0, [sp, #0x88]
	adds r0, #1
	str r0, [sp, #0x88]
	cmp r0, #0x14
	bne .L080C4584
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #6
	bne .L080C456C
	movs r2, #0x96
	lsls r2, r2, #4
	adds r1, r7, r2
	bl .L080C5024
.L080C456C:
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #2
	beq .L080C4578
	bl .L080C5138
.L080C4578:
	ldr r3, .L080C4580 @ =0x00000908
	adds r1, r7, r3
	bl .L080C5044
	.align 2, 0
.L080C4580: .4byte 0x00000908
.L080C4584:
	ldr r5, [sp, #0x84]
	adds r5, #1
	ldr r4, [sp, #0x88]
	cmp r4, #0x3c
	beq .L080C4592
	bl .L080C5138
.L080C4592:
	movs r6, #0
	str r6, [sp, #0x88]
	ldr r1, .L080C45E0 @ =0x000008C5
	adds r0, r7, r1
	strb r6, [r0]
	ldr r3, .L080C45E4 @ =0x000008BC
	adds r4, r7, r3
	movs r6, #0x8c
	lsls r6, r6, #4
	adds r1, r7, r6
	ldr r0, [r1]
	str r0, [r4]
	ldr r0, .L080C45E8 @ =0x000008C4
	adds r3, r7, r0
	movs r0, #1
	strb r0, [r3]
	subs r6, #0xb
	adds r2, r7, r6
	ldrb r0, [r2]
	adds r0, #0xa
	strb r0, [r2]
	ldr r1, [r1]
	cmp r1, #2
	beq .L080C45C6
	bl .L080C5138
.L080C45C6:
	movs r0, #1
	str r0, [sp, #0x90]
	adds r6, #0x53
	add r0, sp, #0x88
	ldrb r0, [r0]
	strb r0, [r6, r7]
	adds r6, #0x58
	add r0, sp, #0x88
	ldrb r0, [r0]
	strb r0, [r6, r7]
	str r1, [r4]
	add r1, sp, #0x90
	b .L080C4AC2
	.align 2, 0
.L080C45E0: .4byte 0x000008C5
.L080C45E4: .4byte 0x000008BC
.L080C45E8: .4byte 0x000008C4
.L080C45EC:
	ldr r4, [sp, #0x94]
	cmp r4, #0
	bne .L080C45F6
	bl .L080C513A
.L080C45F6:
	ldr r6, [sp, #0x84]
	cmp r6, #0
	bne .L080C4650
	ldr r0, .L080C4640 @ =0x000008C5
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	add r0, sp, #0x30
	adds r1, r7, #0
	movs r2, #3
	bl func_080C7B7C
	ldr r0, [sp, #0x30]
	adds r0, #8
	ldr r2, .L080C4644 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x34
	adds r1, r7, #0
	movs r2, #3
	bl func_080C7B7C
	ldr r0, [sp, #0x34]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C4648 @ =0x0000097E
	adds r1, r7, r3
	strb r0, [r1]
	ldr r4, .L080C464C @ =0x00000818
	adds r0, r7, r4
	movs r1, #0xbe
	bl func_08008B6C
	movs r5, #1
	bl .L080C5138
	.align 2, 0
.L080C4640: .4byte 0x000008C5
.L080C4644: .4byte 0x0000097D
.L080C4648: .4byte 0x0000097E
.L080C464C: .4byte 0x00000818
.L080C4650:
	ldr r6, [sp, #0x84]
	cmp r6, #0x14
	bne .L080C465E
	movs r0, #0x91
	lsls r0, r0, #4
	adds r1, r7, r0
	b .L080C4B4A
.L080C465E:
	ldr r1, [sp, #0x84]
	cmp r1, #0x1e
	bne .L080C46AC
	ldr r2, .L080C469C @ =0x000008C5
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	add r0, sp, #0x38
	adds r1, r7, #0
	movs r2, #0x14
	bl func_080C7B7C
	ldr r0, [sp, #0x38]
	adds r0, #8
	ldr r3, .L080C46A0 @ =0x0000097D
	adds r1, r7, r3
	strb r0, [r1]
	add r0, sp, #0x3c
	adds r1, r7, #0
	movs r2, #0x14
	bl func_080C7B7C
	ldr r0, [sp, #0x3c]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r4, .L080C46A4 @ =0x0000097E
	adds r1, r7, r4
	strb r0, [r1]
	ldr r6, .L080C46A8 @ =0x00000818
	adds r0, r7, r6
	b .L080C41F8
	.align 2, 0
.L080C469C: .4byte 0x000008C5
.L080C46A0: .4byte 0x0000097D
.L080C46A4: .4byte 0x0000097E
.L080C46A8: .4byte 0x00000818
.L080C46AC:
	ldr r0, [sp, #0x84]
	cmp r0, #0x32
	bne .L080C46BC
	ldr r2, .L080C46B8 @ =0x00000954
	b .L080C4BBA
	.align 2, 0
.L080C46B8: .4byte 0x00000954
.L080C46BC:
	ldr r3, [sp, #0x84]
	cmp r3, #0x3c
	bne .L080C47AC
	ldr r4, .L080C4794 @ =0x000008C5
	adds r0, r7, r4
	movs r1, #0
	strb r1, [r0]
	movs r6, #0x91
	lsls r6, r6, #4
	adds r0, r7, r6
	strb r1, [r0]
	ldr r2, .L080C4798 @ =0x00000954
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, .L080C479C @ =0x00000544
	adds r4, r7, r3
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C4706
	ldr r1, .L080C47A0 @ =0x00000889
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
.L080C4706:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	movs r5, #0x3d
	cmp r2, #0
	bge .L080C4730
.L080C4714:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r4, .L080C479C @ =0x00000544
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080C4714
.L080C4730:
	ldr r6, .L080C479C @ =0x00000544
	adds r4, r7, r6
	ldr r0, [r4]
	ldr r1, .L080C47A0 @ =0x00000889
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
	ldr r0, .L080C47A4 @ =0x000008B4
	adds r1, r7, r0
	movs r0, #0x78
	strb r0, [r1]
	ldr r2, .L080C47A8 @ =0x000008B5
	adds r1, r7, r2
	movs r0, #0x51
	strb r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C4772
	bl .L080C5138
.L080C4772:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r3, .L080C479C @ =0x00000544
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C4772
	bl .L080C5138
	.align 2, 0
.L080C4794: .4byte 0x000008C5
.L080C4798: .4byte 0x00000954
.L080C479C: .4byte 0x00000544
.L080C47A0: .4byte 0x00000889
.L080C47A4: .4byte 0x000008B4
.L080C47A8: .4byte 0x000008B5
.L080C47AC:
	ldr r5, [sp, #0x84]
	adds r5, #1
	ldr r4, [sp, #0x84]
	cmp r4, #0x3c
	bgt .L080C47BA
	bl .L080C5138
.L080C47BA:
	ldr r6, .L080C47D4 @ =0x000008BC
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #8
	bls .L080C47C8
	bl .L080C5138
.L080C47C8:
	lsls r0, r0, #2
	ldr r1, .L080C47D8 @ =.L080C47DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C47D4: .4byte 0x000008BC
.L080C47D8: .4byte .L080C47DC
.L080C47DC: @ jump table
	.4byte .L080C4800 @ case 0
	.4byte .L080C5138 @ case 1
	.4byte .L080C4884 @ case 2
	.4byte .L080C489C @ case 3
	.4byte .L080C4920 @ case 4
	.4byte .L080C4954 @ case 5
	.4byte .L080C4988 @ case 6
	.4byte .L080C49B8 @ case 7
	.4byte .L080C49EC @ case 8
.L080C4800:
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r0, #4
	str r0, [r1]
	ldr r2, .L080C486C @ =0x000008BC
	adds r1, r7, r2
	movs r0, #8
	str r0, [r1]
	ldr r3, .L080C4870 @ =0x000008C4
	adds r0, r7, r3
	movs r2, #1
	strb r2, [r0]
	ldr r4, .L080C4874 @ =0x000008B5
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldr r6, .L080C4878 @ =0x000008C5
	adds r0, r7, r6
	strb r2, [r0]
	add r0, sp, #0x40
	adds r1, r7, #0
	movs r2, #3
	bl func_080C7B7C
	ldr r0, [sp, #0x40]
	adds r0, #8
	ldr r2, .L080C487C @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x44
	adds r1, r7, #0
	movs r2, #3
	bl func_080C7B7C
	ldr r0, [sp, #0x44]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C4880 @ =0x0000097E
	adds r1, r7, r3
	strb r0, [r1]
	subs r4, #0x95
	adds r0, r7, r4
	movs r1, #0xbc
	bl func_08008B6C
	subs r6, #0xad
	adds r0, r7, r6
	movs r1, #0xbe
	bl func_08008B6C
	bl .L080C5028
	.align 2, 0
.L080C486C: .4byte 0x000008BC
.L080C4870: .4byte 0x000008C4
.L080C4874: .4byte 0x000008B5
.L080C4878: .4byte 0x000008C5
.L080C487C: .4byte 0x0000097D
.L080C4880: .4byte 0x0000097E
.L080C4884:
	ldr r0, .L080C4894 @ =0x000008BC
	adds r1, r7, r0
	movs r0, #5
	str r0, [r1]
	ldr r2, .L080C4898 @ =0x000008C4
	adds r1, r7, r2
	b .L080C5024
	.align 2, 0
.L080C4894: .4byte 0x000008BC
.L080C4898: .4byte 0x000008C4
.L080C489C:
	movs r3, #0x8c
	lsls r3, r3, #4
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	ldr r4, .L080C4908 @ =0x000008BC
	adds r1, r7, r4
	movs r0, #8
	str r0, [r1]
	ldr r6, .L080C490C @ =0x000008C4
	adds r0, r7, r6
	movs r2, #1
	strb r2, [r0]
	ldr r0, .L080C4910 @ =0x000008B5
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldr r1, .L080C4914 @ =0x000008C5
	adds r0, r7, r1
	strb r2, [r0]
	add r0, sp, #0x48
	adds r1, r7, #0
	movs r2, #0x14
	bl func_080C7B7C
	ldr r0, [sp, #0x48]
	adds r0, #8
	ldr r2, .L080C4918 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x4c
	adds r1, r7, #0
	movs r2, #0x14
	bl func_080C7B7C
	ldr r0, [sp, #0x4c]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C491C @ =0x0000097E
	adds r1, r7, r3
	strb r0, [r1]
	subs r4, #0x9c
	adds r0, r7, r4
	movs r1, #0xbc
	bl func_08008B6C
	subs r6, #0xac
	adds r0, r7, r6
	movs r1, #0xbe
	bl func_08008B6C
	b .L080C5028
	.align 2, 0
.L080C4908: .4byte 0x000008BC
.L080C490C: .4byte 0x000008C4
.L080C4910: .4byte 0x000008B5
.L080C4914: .4byte 0x000008C5
.L080C4918: .4byte 0x0000097D
.L080C491C: .4byte 0x0000097E
.L080C4920:
	ldr r0, .L080C4948 @ =0x000008B4
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x58
	beq .L080C493A
	bl .L080C5138
.L080C493A:
	ldr r2, .L080C494C @ =0x000008BC
	adds r1, r7, r2
	movs r0, #7
	str r0, [r1]
	ldr r3, .L080C4950 @ =0x000008C4
	adds r1, r7, r3
	b .L080C5044
	.align 2, 0
.L080C4948: .4byte 0x000008B4
.L080C494C: .4byte 0x000008BC
.L080C4950: .4byte 0x000008C4
.L080C4954:
	ldr r4, .L080C497C @ =0x000008B4
	adds r1, r7, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x88
	beq .L080C496E
	bl .L080C5138
.L080C496E:
	ldr r6, .L080C4980 @ =0x000008BC
	adds r1, r7, r6
	movs r0, #6
	str r0, [r1]
	ldr r0, .L080C4984 @ =0x000008C4
	adds r1, r7, r0
	b .L080C5044
	.align 2, 0
.L080C497C: .4byte 0x000008B4
.L080C4980: .4byte 0x000008BC
.L080C4984: .4byte 0x000008C4
.L080C4988:
	ldr r2, .L080C49AC @ =0x000008B5
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x31
	beq .L080C49A2
	b .L080C5138
.L080C49A2:
	ldr r3, .L080C49B0 @ =0x000008BC
	adds r0, r7, r3
	str r2, [r0]
	ldr r4, .L080C49B4 @ =0x000008C4
	b .L080C5042
	.align 2, 0
.L080C49AC: .4byte 0x000008B5
.L080C49B0: .4byte 0x000008BC
.L080C49B4: .4byte 0x000008C4
.L080C49B8:
	ldr r6, .L080C49E0 @ =0x000008B5
	adds r1, r7, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x71
	beq .L080C49D0
	b .L080C5138
.L080C49D0:
	ldr r0, .L080C49E4 @ =0x000008BC
	adds r1, r7, r0
	movs r0, #3
	str r0, [r1]
	ldr r2, .L080C49E8 @ =0x000008C4
	adds r1, r7, r2
	b .L080C5044
	.align 2, 0
.L080C49E0: .4byte 0x000008B5
.L080C49E4: .4byte 0x000008BC
.L080C49E8: .4byte 0x000008C4
.L080C49EC:
	ldr r3, [sp, #0x88]
	adds r3, #1
	str r3, [sp, #0x88]
	cmp r3, #0x14
	bne .L080C4A20
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #4
	bne .L080C4A0A
	movs r6, #0x91
	lsls r6, r6, #4
	adds r1, r7, r6
	b .L080C5024
.L080C4A0A:
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #2
	beq .L080C4A14
	b .L080C5138
.L080C4A14:
	ldr r0, .L080C4A1C @ =0x00000954
	adds r1, r7, r0
	b .L080C5044
	.align 2, 0
.L080C4A1C: .4byte 0x00000954
.L080C4A20:
	ldr r1, [sp, #0x88]
	cmp r1, #0x32
	bne .L080C4A5C
	movs r2, #0x82
	lsls r2, r2, #4
	adds r0, r7, r2
	movs r1, #0x6c
	bl func_08008B6C
	movs r3, #0x8c
	lsls r3, r3, #4
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #4
	bne .L080C4A48
	ldr r4, .L080C4A44 @ =0x00000911
	adds r1, r7, r4
	b .L080C5024
	.align 2, 0
.L080C4A44: .4byte 0x00000911
.L080C4A48:
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #2
	beq .L080C4A52
	b .L080C5138
.L080C4A52:
	ldr r6, .L080C4A58 @ =0x00000955
	adds r1, r7, r6
	b .L080C5044
	.align 2, 0
.L080C4A58: .4byte 0x00000955
.L080C4A5C:
	ldr r5, [sp, #0x84]
	adds r5, #1
	ldr r0, [sp, #0x88]
	cmp r0, #0x3c
	beq .L080C4A68
	b .L080C5138
.L080C4A68:
	movs r1, #0
	str r1, [sp, #0x88]
	ldr r2, .L080C4AD4 @ =0x000008C5
	adds r0, r7, r2
	strb r1, [r0]
	ldr r6, .L080C4AD8 @ =0x000008BC
	adds r4, r7, r6
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r1, r7, r0
	ldr r0, [r1]
	str r0, [r4]
	subs r2, #1
	adds r3, r7, r2
	movs r0, #1
	strb r0, [r3]
	subs r6, #7
	adds r2, r7, r6
	ldrb r0, [r2]
	adds r0, #0xa
	strb r0, [r2]
	ldr r1, [r1]
	cmp r1, #2
	beq .L080C4A9A
	b .L080C5138
.L080C4A9A:
	movs r0, #1
	str r0, [sp, #0x98]
	adds r6, #0x5b
	add r0, sp, #0x88
	ldrb r0, [r0]
	strb r0, [r6, r7]
	adds r6, #0x44
	add r0, sp, #0x88
	ldrb r0, [r0]
	strb r0, [r6, r7]
	subs r6, #0x43
	add r0, sp, #0x88
	ldrb r0, [r0]
	strb r0, [r6, r7]
	adds r6, #0x44
	add r0, sp, #0x88
	ldrb r0, [r0]
	strb r0, [r6, r7]
	str r1, [r4]
	add r1, sp, #0x98
.L080C4AC2:
	ldrb r1, [r1]
	strb r1, [r3]
.L080C4AC6:
	ldr r3, .L080C4ADC @ =0x000008B4
	adds r1, r7, r3
	movs r0, #0x78
	strb r0, [r1]
	movs r0, #0x98
	strb r0, [r2]
	b .L080C5138
	.align 2, 0
.L080C4AD4: .4byte 0x000008C5
.L080C4AD8: .4byte 0x000008BC
.L080C4ADC: .4byte 0x000008B4

	thumb_func_start sub_080C4AE0
sub_080C4AE0: @ 0x080C4AE0
	ldr r4, [sp, #0x9c]
	cmp r4, #0
	bne .L080C4AE8
	b .L080C513A
.L080C4AE8:
	ldr r6, [sp, #0x84]
	cmp r6, #0
	bne .L080C4B40
	ldr r0, .L080C4B30 @ =0x000008C5
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, .L080C4B34 @ =0x00000818
	adds r0, r7, r1
	movs r1, #0xbe
	bl func_08008B6C
	add r0, sp, #0x50
	adds r1, r7, #0
	movs r2, #5
	bl func_080C7B7C
	ldr r0, [sp, #0x50]
	adds r0, #8
	ldr r2, .L080C4B38 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x54
	adds r1, r7, #0
	movs r2, #5
	bl func_080C7B7C
	ldr r0, [sp, #0x54]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C4B3C @ =0x0000097E
	adds r1, r7, r3
.L080C4B28:
	strb r0, [r1]
	movs r5, #1
	b .L080C5138
	.align 2, 0
.L080C4B30: .4byte 0x000008C5
.L080C4B34: .4byte 0x00000818
.L080C4B38: .4byte 0x0000097D
.L080C4B3C: .4byte 0x0000097E
.L080C4B40:
	ldr r4, [sp, #0x84]
	cmp r4, #0x14
	bne .L080C4B58
	ldr r6, .L080C4B54 @ =0x00000918
	adds r1, r7, r6
.L080C4B4A:
	movs r0, #1
	strb r0, [r1]
	movs r5, #0x15
	b .L080C5138
	.align 2, 0
.L080C4B54: .4byte 0x00000918
.L080C4B58:
	ldr r0, [sp, #0x84]
	cmp r0, #0x1e
	bne .L080C4BB0
	ldr r2, .L080C4BA0 @ =0x000008C5
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L080C4BA4 @ =0x00000818
	adds r0, r7, r3
	movs r1, #0xbe
	bl func_08008B6C
	add r0, sp, #0x58
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x58]
	adds r0, #8
	ldr r4, .L080C4BA8 @ =0x0000097D
	adds r1, r7, r4
	strb r0, [r1]
	add r0, sp, #0x5c
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x5c]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r6, .L080C4BAC @ =0x0000097E
	adds r1, r7, r6
	strb r0, [r1]
	movs r5, #0x1f
	b .L080C5138
	.align 2, 0
.L080C4BA0: .4byte 0x000008C5
.L080C4BA4: .4byte 0x00000818
.L080C4BA8: .4byte 0x0000097D
.L080C4BAC: .4byte 0x0000097E
.L080C4BB0:
	ldr r0, [sp, #0x84]
	cmp r0, #0x32
	bne .L080C4BC4
	movs r2, #0x96
	lsls r2, r2, #4
.L080C4BBA:
	adds r1, r7, r2

	thumb_func_start sub_080C4BBC
sub_080C4BBC: @ 0x080C4BBC
	movs r0, #1
	strb r0, [r1]
	movs r5, #0x33
	b .L080C5138
.L080C4BC4:
	ldr r3, [sp, #0x84]
	cmp r3, #0x3c
	bne .L080C4C1C
	ldr r4, .L080C4C0C @ =0x000008C5
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1]
	ldr r6, .L080C4C10 @ =0x00000818
	adds r0, r7, r6
	movs r1, #0xbe
	bl func_08008B6C
	add r0, sp, #0x60
	adds r1, r7, #0
	movs r2, #0xd
	bl func_080C7B7C
	ldr r0, [sp, #0x60]
	adds r0, #8
	ldr r2, .L080C4C14 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x64
	adds r1, r7, #0
	movs r2, #0xd
	bl func_080C7B7C
	ldr r0, [sp, #0x64]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C4C18 @ =0x0000097E
	adds r1, r7, r3
	strb r0, [r1]
	movs r5, #0x3d
	b .L080C5138
	.align 2, 0
.L080C4C0C: .4byte 0x000008C5
.L080C4C10: .4byte 0x00000818
.L080C4C14: .4byte 0x0000097D
.L080C4C18: .4byte 0x0000097E
.L080C4C1C:
	ldr r4, [sp, #0x84]
	cmp r4, #0x50
	bne .L080C4C34
	ldr r6, .L080C4C30 @ =0x00000938
	adds r1, r7, r6
	movs r0, #1
	strb r0, [r1]
	movs r5, #0x51
	b .L080C5138
	.align 2, 0
.L080C4C30: .4byte 0x00000938
.L080C4C34:
	ldr r0, [sp, #0x84]
	cmp r0, #0x5a
	bne .L080C4D28
	ldr r1, .L080C4D0C @ =0x000008C5
	adds r0, r7, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L080C4D10 @ =0x00000918
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, .L080C4D14 @ =0x00000938
	adds r0, r7, r3
	strb r1, [r0]
	movs r4, #0x96
	lsls r4, r4, #4
	adds r0, r7, r4
	strb r1, [r0]
	ldr r6, .L080C4D18 @ =0x00000544
	adds r4, r7, r6
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C4C84
	ldr r1, .L080C4D1C @ =0x00000889
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
.L080C4C84:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	movs r5, #0x5b
	cmp r2, #0
	bge .L080C4CAE
.L080C4C92:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r1, .L080C4D18 @ =0x00000544
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080C4C92
.L080C4CAE:
	ldr r2, .L080C4D18 @ =0x00000544
	adds r4, r7, r2
	ldr r0, [r4]
	ldr r1, .L080C4D1C @ =0x00000889
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
	ldr r3, .L080C4D20 @ =0x000008B4
	adds r1, r7, r3
	movs r0, #0x78
	strb r0, [r1]
	ldr r6, .L080C4D24 @ =0x000008B5
	adds r1, r7, r6
	movs r0, #0x51
	strb r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C4CEE
	b .L080C5138
.L080C4CEE:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r1, .L080C4D18 @ =0x00000544
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C4CEE
	b .L080C5138
	.align 2, 0
.L080C4D0C: .4byte 0x000008C5
.L080C4D10: .4byte 0x00000918
.L080C4D14: .4byte 0x00000938
.L080C4D18: .4byte 0x00000544
.L080C4D1C: .4byte 0x00000889
.L080C4D20: .4byte 0x000008B4
.L080C4D24: .4byte 0x000008B5
.L080C4D28:
	ldr r5, [sp, #0x84]
	adds r5, #1
	ldr r2, [sp, #0x84]
	cmp r2, #0x5a
	bgt .L080C4D34
	b .L080C5138
.L080C4D34:
	ldr r3, .L080C4D4C @ =0x000008BC
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #9
	bls .L080C4D40
	b .L080C5138
.L080C4D40:
	lsls r0, r0, #2
	ldr r1, .L080C4D50 @ =.L080C4D54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C4D4C: .4byte 0x000008BC
.L080C4D50: .4byte .L080C4D54
.L080C4D54: @ jump table
	.4byte .L080C5138 @ case 0
	.4byte .L080C4D7C @ case 1
	.4byte .L080C4DAC @ case 2
	.4byte .L080C5138 @ case 3
	.4byte .L080C4DC0 @ case 4
	.4byte .L080C4E54 @ case 5
	.4byte .L080C4F18 @ case 6
	.4byte .L080C4FC8 @ case 7
	.4byte .L080C4FF8 @ case 8
	.4byte .L080C50FC @ case 9
.L080C4D7C:
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r1, r7, r4
	movs r0, #6
	str r0, [r1]
	ldr r6, .L080C4DA4 @ =0x000008BC
	adds r1, r7, r6
	movs r0, #9
	str r0, [r1]
	ldr r0, .L080C4DA8 @ =0x000008C4
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r7, r1
	movs r1, #0xc7
	bl func_08008B6C
	b .L080C5028
	.align 2, 0
.L080C4DA4: .4byte 0x000008BC
.L080C4DA8: .4byte 0x000008C4
.L080C4DAC:
	ldr r2, .L080C4DB8 @ =0x000008BC
	adds r1, r7, r2
	movs r0, #6
	str r0, [r1]
	ldr r3, .L080C4DBC @ =0x000008C4
	b .L080C5022
	.align 2, 0
.L080C4DB8: .4byte 0x000008BC
.L080C4DBC: .4byte 0x000008C4
.L080C4DC0:
	ldr r4, .L080C4E40 @ =0x000008B4
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x58
	beq .L080C4DD8
	b .L080C5138
.L080C4DD8:
	movs r6, #0x8c
	lsls r6, r6, #4
	adds r1, r7, r6
	movs r0, #7
	str r0, [r1]
	ldr r0, .L080C4E44 @ =0x000008BC
	adds r1, r7, r0
	movs r0, #8
	str r0, [r1]
	ldr r1, .L080C4E48 @ =0x000008C4
	adds r0, r7, r1
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080C4E4C @ =0x000008B5
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r4, #0x11
	adds r0, r7, r4
	strb r2, [r0]
	add r0, sp, #0x68
	adds r1, r7, #0
	movs r2, #5
	bl func_080C7B7C
	ldr r0, [sp, #0x68]
	adds r0, #8
	adds r6, #0xbd
	adds r1, r7, r6
	strb r0, [r1]
	add r0, sp, #0x6c
	adds r1, r7, #0
	movs r2, #5
	bl func_080C7B7C
	ldr r0, [sp, #0x6c]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r2, .L080C4E50 @ =0x0000097E
	adds r1, r7, r2
	strb r0, [r1]
	movs r3, #0x82
	lsls r3, r3, #4
	adds r0, r7, r3
	movs r1, #0xbc
	bl func_08008B6C
	subs r4, #0xad
	adds r0, r7, r4
	b .L080C4FAC
	.align 2, 0
.L080C4E40: .4byte 0x000008B4
.L080C4E44: .4byte 0x000008BC
.L080C4E48: .4byte 0x000008C4
.L080C4E4C: .4byte 0x000008B5
.L080C4E50: .4byte 0x0000097E
.L080C4E54:
	ldr r6, .L080C4E8C @ =0x000008B4
	adds r1, r7, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x68
	bne .L080C4E94
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r2, r7, r0
	ldr r3, .L080C4E90 @ =0x000008BC
	adds r1, r7, r3
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #9
	str r0, [r1]
	movs r4, #0x82
	lsls r4, r4, #4
	adds r0, r7, r4
	movs r1, #0xc7
	bl func_08008B6C
	adds r6, #0x10
	adds r1, r7, r6
	b .L080C5024
	.align 2, 0
.L080C4E8C: .4byte 0x000008B4
.L080C4E90: .4byte 0x000008BC
.L080C4E94:
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x88
	beq .L080C4E9E
	b .L080C5138
.L080C4E9E:
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	movs r2, #1
	str r2, [r0]
	ldr r3, .L080C4F00 @ =0x000008BC
	adds r1, r7, r3
	movs r0, #8
	str r0, [r1]
	ldr r4, .L080C4F04 @ =0x000008C4
	adds r0, r7, r4
	strb r2, [r0]
	ldr r6, .L080C4F08 @ =0x000008B5
	adds r1, r7, r6
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldr r1, .L080C4F0C @ =0x000008C5
	adds r0, r7, r1
	strb r2, [r0]
	add r0, sp, #0x70
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x70]
	adds r0, #8
	ldr r2, .L080C4F10 @ =0x0000097D
	adds r1, r7, r2
	strb r0, [r1]
	add r0, sp, #0x74
	adds r1, r7, #0
	movs r2, #0x17
	bl func_080C7B7C
	ldr r0, [sp, #0x74]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C4F14 @ =0x0000097E
	adds r1, r7, r3
	strb r0, [r1]
	subs r4, #0xa4
	adds r0, r7, r4
	movs r1, #0xbc
	bl func_08008B6C
	subs r6, #0x9d
	adds r0, r7, r6
	b .L080C4FAC
	.align 2, 0
.L080C4F00: .4byte 0x000008BC
.L080C4F04: .4byte 0x000008C4
.L080C4F08: .4byte 0x000008B5
.L080C4F0C: .4byte 0x000008C5
.L080C4F10: .4byte 0x0000097D
.L080C4F14: .4byte 0x0000097E
.L080C4F18:
	ldr r0, .L080C4F38 @ =0x000008B5
	adds r2, r7, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne .L080C4F44
	ldr r2, .L080C4F3C @ =0x000008BC
	adds r1, r7, r2
	movs r0, #4
	str r0, [r1]
	ldr r3, .L080C4F40 @ =0x000008C4
	b .L080C5022
	.align 2, 0
.L080C4F38: .4byte 0x000008B5
.L080C4F3C: .4byte 0x000008BC
.L080C4F40: .4byte 0x000008C4
.L080C4F44:
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x51
	beq .L080C4F4E
	b .L080C5138
.L080C4F4E:
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	ldr r6, .L080C4FB4 @ =0x000008BC
	adds r1, r7, r6
	movs r0, #8
	str r0, [r1]
	ldr r1, .L080C4FB8 @ =0x000008C4
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	subs r0, #0xa
	strb r0, [r2]
	ldr r2, .L080C4FBC @ =0x000008C5
	adds r0, r7, r2
	strb r1, [r0]
	add r0, sp, #0x78
	adds r1, r7, #0
	movs r2, #0xd
	bl func_080C7B7C
	ldr r0, [sp, #0x78]
	adds r0, #8
	ldr r3, .L080C4FC0 @ =0x0000097D
	adds r1, r7, r3
	strb r0, [r1]
	add r0, sp, #0x7c
	adds r1, r7, #0
	movs r2, #0xd
	bl func_080C7B7C
	ldr r0, [sp, #0x7c]
	lsrs r0, r0, #8
	adds r0, #0x18
	adds r4, #0xbe
	adds r1, r7, r4
	strb r0, [r1]
	subs r6, #0x9c
	adds r0, r7, r6
	movs r1, #0xbc
	bl func_08008B6C
	ldr r1, .L080C4FC4 @ =0x00000818
	adds r0, r7, r1
.L080C4FAC:
	movs r1, #0xbe
	bl func_08008B6C
	b .L080C5138
	.align 2, 0
.L080C4FB4: .4byte 0x000008BC
.L080C4FB8: .4byte 0x000008C4
.L080C4FBC: .4byte 0x000008C5
.L080C4FC0: .4byte 0x0000097D
.L080C4FC4: .4byte 0x00000818
.L080C4FC8:
	ldr r2, .L080C4FEC @ =0x000008B5
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x71
	beq .L080C4FE0
	b .L080C5138
.L080C4FE0:
	ldr r3, .L080C4FF0 @ =0x000008BC
	adds r1, r7, r3
	movs r0, #5
	str r0, [r1]
	ldr r4, .L080C4FF4 @ =0x000008C4
	b .L080C5042
	.align 2, 0
.L080C4FEC: .4byte 0x000008B5
.L080C4FF0: .4byte 0x000008BC
.L080C4FF4: .4byte 0x000008C4
.L080C4FF8:
	ldr r6, [sp, #0x88]
	adds r6, #1
	str r6, [sp, #0x88]
	cmp r6, #0x14
	bne .L080C504A
	ldr r1, .L080C5014 @ =0x000008B5
	adds r0, r7, r1
	ldrb r0, [r0]
	adds r0, #0xa
	cmp r0, #0x41
	bne .L080C501C
	ldr r2, .L080C5018 @ =0x00000918
	adds r1, r7, r2
	b .L080C5024
	.align 2, 0
.L080C5014: .4byte 0x000008B5
.L080C5018: .4byte 0x00000918
.L080C501C:
	cmp r0, #0x51
	bne .L080C5034
	ldr r3, .L080C5030 @ =0x00000938
.L080C5022:
	adds r1, r7, r3
.L080C5024:
	movs r0, #1
.L080C5026:
	strb r0, [r1]
.L080C5028:
	ldr r5, [sp, #0x84]
	adds r5, #1
	b .L080C5138
	.align 2, 0
.L080C5030: .4byte 0x00000938
.L080C5034:
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x71
	beq .L080C503E
	b .L080C5138
.L080C503E:
	movs r4, #0x96
	lsls r4, r4, #4
.L080C5042:
	adds r1, r7, r4
.L080C5044:
	movs r0, #1
	strb r0, [r1]
	b .L080C5138
.L080C504A:
	ldr r6, [sp, #0x88]
	cmp r6, #0x32
	bne .L080C507C
	ldr r1, .L080C5074 @ =0x000008B5
	adds r0, r7, r1
	ldrb r0, [r0]
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r0, #0x37
	bne .L080C5138
	ldr r2, .L080C5078 @ =0x00000919
	adds r0, r7, r2
	movs r1, #1
	strb r1, [r0]
	movs r3, #0x82
	lsls r3, r3, #4
	adds r0, r7, r3
	movs r1, #0x6c
	bl func_08008B6C
	b .L080C5138
	.align 2, 0
.L080C5074: .4byte 0x000008B5
.L080C5078: .4byte 0x00000919
.L080C507C:
	ldr r5, [sp, #0x84]
	adds r5, #1
	ldr r4, [sp, #0x88]
	cmp r4, #0x3c
	bne .L080C5138
	movs r6, #0
	str r6, [sp, #0x88]
	ldr r1, .L080C50F0 @ =0x000008C5
	adds r0, r7, r1
	strb r6, [r0]
	ldr r4, .L080C50F4 @ =0x000008BC
	adds r3, r7, r4
	movs r6, #0x8c
	lsls r6, r6, #4
	adds r0, r7, r6
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, .L080C50F8 @ =0x000008C4
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	subs r4, #7
	adds r2, r7, r4
	ldrb r0, [r2]
	adds r0, #0xa
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x51
	bne .L080C5138
	movs r6, #1
	str r6, [sp, #0xa0]
	adds r4, #0x63
	adds r0, r7, r4
	add r6, sp, #0x88
	ldrb r6, [r6]
	strb r6, [r0]
	adds r4, #0x20
	adds r0, r7, r4
	add r6, sp, #0x88
	ldrb r6, [r6]
	strb r6, [r0]
	adds r4, #0x28
	adds r0, r7, r4
	add r6, sp, #0x88
	ldrb r6, [r6]
	strb r6, [r0]
	subs r4, #0x27
	adds r0, r7, r4
	add r6, sp, #0x88
	ldrb r6, [r6]
	strb r6, [r0]
	movs r0, #2
	str r0, [r3]
	add r0, sp, #0xa0
	ldrb r0, [r0]
	strb r0, [r1]
	b .L080C4AC6
	.align 2, 0
.L080C50F0: .4byte 0x000008C5
.L080C50F4: .4byte 0x000008BC
.L080C50F8: .4byte 0x000008C4
.L080C50FC:
	ldr r4, [sp, #0x88]
	adds r4, #1
	str r4, [sp, #0x88]
	ldr r5, [sp, #0x84]
	adds r5, #1
	cmp r4, #0x3c
	bne .L080C5138
	ldr r6, .L080C5160 @ =0x000008BC
	adds r1, r7, r6
	movs r2, #0x8c
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r3, .L080C5164 @ =0x000008C4
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	movs r4, #0
	str r4, [sp, #0x88]
	movs r6, #0xe5
	lsls r6, r6, #3
	adds r2, r7, r6
	ldr r1, [r2]
	adds r0, #0xff
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	movs r1, #6
	bl func_0805E860
.L080C5138:
	str r5, [sp, #0x84]
.L080C513A:
	adds r0, r7, #0
	bl func_080C2D54
	ldr r1, .L080C5168 @ =0x0000089C
	adds r0, r7, r1
.L080C5144:
	ldr r0, [r0]
	cmp r0, #0
	bne .L080C514E
	bl sub_080C3DC4
.L080C514E:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C5160: .4byte 0x000008BC
.L080C5164: .4byte 0x000008C4
.L080C5168: .4byte 0x0000089C

	thumb_func_start func_080C516C
func_080C516C: @ 0x080C516C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	ldr r1, .L080C5250 @ =0x0000097C
	adds r0, r7, r1
	ldrb r0, [r0]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	add r0, sp, #0x10
	ldr r5, .L080C5254 @ =gUnk_08108218
	adds r1, r5, #0
	movs r2, #6
	bl memcpy
	add r0, sp, #0x18
	ldr r6, .L080C5258 @ =gUnk_08108220
	adds r1, r6, #0
	movs r2, #0xf
	bl memcpy
	add r0, sp, #0x28
	ldr r2, .L080C525C @ =gUnk_08108230
	mov r8, r2
	mov r1, r8
	movs r2, #0xa
	bl memcpy
	add r4, sp, #0x34
	ldr r1, [r5]
	str r1, [sp, #0x34]
	ldrh r0, [r5, #4]
	strh r0, [r4, #4]
	str r1, [sp, #0x34]
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl strcat
	adds r0, r4, #0
	add r1, sp, #0xc
	bl strcat
	adds r0, r4, #0
	mov r1, r8
	bl strcat
	movs r0, #0
	str r0, [sp, #0x5c]
	add r4, sp, #0x58
	movs r2, #0
	ldr r1, .L080C5260 @ =0x00000904
	adds r0, r7, r1
	movs r1, #0x18
.L080C51E2:
	strb r2, [r0]
	strb r2, [r0, #1]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge .L080C51E2
	movs r2, #1
	str r2, [sp, #0x60]
	adds r0, r7, #0
	bl func_08008918
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r4]
	strh r1, [r0]
	ldr r0, .L080C5264 @ =0x0000051C
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050E5C
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
	ldr r2, .L080C5268 @ =0x00000814
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	b .L080C534E
	.align 2, 0
.L080C5250: .4byte 0x0000097C
.L080C5254: .4byte gUnk_08108218
.L080C5258: .4byte gUnk_08108220
.L080C525C: .4byte gUnk_08108230
.L080C5260: .4byte 0x00000904
.L080C5264: .4byte 0x0000051C
.L080C5268: .4byte 0x00000814
.L080C526C:
	adds r0, r7, #0
	bl func_080087C8
	ldr r2, .L080C52CC @ =0x0000051C
	adds r4, r7, r2
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
	ldr r2, .L080C52D0 @ =0x00000814
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
	bhi .L080C534E
	lsls r0, r0, #2
	ldr r1, .L080C52D4 @ =.L080C52D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C52CC: .4byte 0x0000051C
.L080C52D0: .4byte 0x00000814
.L080C52D4: .4byte .L080C52D8
.L080C52D8: @ jump table
	.4byte .L080C52F4 @ case 0
	.4byte .L080C5334 @ case 1
	.4byte .L080C5334 @ case 2
	.4byte .L080C5318 @ case 3
	.4byte .L080C5334 @ case 4
	.4byte .L080C5334 @ case 5
	.4byte .L080C5334 @ case 6
.L080C52F4:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne .L080C5308
	ldr r2, .L080C5304 @ =0x0000089C
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L080C534E
	.align 2, 0
.L080C5304: .4byte 0x0000089C
.L080C5308:
	ldr r1, .L080C5314 @ =0x0000051C
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	b .L080C534E
	.align 2, 0
.L080C5314: .4byte 0x0000051C
.L080C5318:
	mov r2, sl
	cmp r2, #1
	bne .L080C5334
	ldr r0, .L080C5370 @ =0x0000051C
	adds r4, r7, r0
	ldr r0, [r4]
	add r1, sp, #0x34
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	movs r1, #0
	str r1, [sp, #0x60]
.L080C5334:
	ldr r2, [sp, #0x5c]
	adds r2, #1
	str r2, [sp, #0x5c]
	cmp r2, #0x78
	ble .L080C534E
	ldr r0, .L080C5370 @ =0x0000051C
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	bl func_08050D74
.L080C534E:
	adds r0, r7, #0
	bl func_080C2D54
	ldr r1, .L080C5374 @ =0x0000089C
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	bne .L080C5360
	b .L080C526C
.L080C5360:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C5370: .4byte 0x0000051C
.L080C5374: .4byte 0x0000089C

	thumb_func_start func_080C5378
func_080C5378: @ 0x080C5378
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r6, r0, #0
	ldr r0, .L080C54E0 @ =0x000008B4
	adds r1, r6, r0
	movs r0, #0x78
	strb r0, [r1]
	ldr r2, .L080C54E4 @ =0x000008B5
	adds r1, r6, r2
	movs r0, #0x98
	strb r0, [r1]
	ldr r3, .L080C54E8 @ =0x000008BC
	adds r1, r6, r3
	movs r0, #2
	str r0, [r1]
	ldr r0, .L080C54EC @ =0x000008C4
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	str r2, [sp, #0x28]
	ldr r1, .L080C54F0 @ =gUnk_08107FE0
	subs r3, #0xc
	adds r0, r6, r3
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	str r1, [sp, #0x2c]
	ldrb r2, [r0, #1]
	mov r8, r2
	ldrb r0, [r0, #2]
	str r0, [sp, #0x30]
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0x34]
	movs r1, #0
	ldr r2, .L080C54F4 @ =0x00000904
	adds r0, r6, r2
	movs r5, #0x18
.L080C53D4:
	strb r1, [r0]
	strb r1, [r0, #1]
	adds r0, #4
	subs r5, #1
	cmp r5, #0
	bge .L080C53D4
	movs r3, #1
	rsbs r3, r3, #0
	add r3, r8
	mov sb, r3
	movs r1, #0
	ldr r2, .L080C54F8 @ =0x000008C8
	adds r0, r6, r2
	movs r5, #0xe
.L080C53F0:
	strb r1, [r0]
	strb r1, [r0, #1]
	adds r0, #4
	subs r5, #1
	cmp r5, #0
	bge .L080C53F0
	movs r1, #0
	add r0, sp, #0x18
.L080C5400:
	strb r1, [r0]
	subs r0, #1
	cmp r0, sp
	bge .L080C5400
	movs r5, #0
	cmp r5, r8
	bge .L080C5430
	ldr r3, .L080C54FC @ =0x000008CA
	adds r7, r6, r3
.L080C5412:
	movs r4, #0x19
	subs r4, r4, r5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl rand
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	strb r0, [r7]
	adds r7, #4
	adds r5, #1
	cmp r5, r8
	blt .L080C5412
.L080C5430:
	ldr r2, .L080C54FC @ =0x000008CA
	adds r0, r6, r2
	ldrb r0, [r0]
	mov r3, sp
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1]
	movs r5, #0
	cmp r5, sb
	bge .L080C5488
	adds r7, r2, #0
.L080C5446:
	adds r2, r5, #1
	lsls r0, r2, #2
	adds r4, r6, r0
	adds r1, r4, r7
	ldrb r3, [r1]
	movs r0, #0xff
	strb r0, [r1]
	cmp r3, #0
	blt .L080C5472
	ldr r0, .L080C54FC @ =0x000008CA
	adds r1, r4, r0
.L080C545C:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C546E
	subs r3, #1
.L080C546E:
	cmp r3, #0
	bge .L080C545C
.L080C5472:
	lsls r0, r2, #2
	adds r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0]
	mov r3, sp
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1]
	adds r5, r2, #0
	cmp r5, sb
	blt .L080C5446
.L080C5488:
	mov r0, r8
	cmp r0, #0xe
	bgt .L080C549A
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, .L080C54F8 @ =0x000008C8
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
.L080C549A:
	adds r0, r6, #0
	bl func_08008918
	movs r2, #0xb2
	lsls r2, r2, #5
	adds r1, r2, #0
	ldr r3, [sp, #0x34]
	strh r1, [r3]
	strh r1, [r0]
	adds r0, r6, #0
	bl func_080C2D54
	ldr r1, .L080C5500 @ =0x0000089C
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #2
	beq .L080C54BE
	b .L080C562E
.L080C54BE:
	movs r2, #0x8a
	lsls r2, r2, #4
	adds r7, r6, r2
	mov r8, r6
	ldr r3, .L080C54F8 @ =0x000008C8
	adds r5, r6, r3
.L080C54CA:
	adds r0, r6, #0
	bl func_080087C8
	ldr r1, [r7]
	cmp r1, #1
	beq .L080C55B4
	cmp r1, #1
	bgt .L080C5504
	cmp r1, #0
	beq .L080C550C
	b .L080C561C
	.align 2, 0
.L080C54E0: .4byte 0x000008B4
.L080C54E4: .4byte 0x000008B5
.L080C54E8: .4byte 0x000008BC
.L080C54EC: .4byte 0x000008C4
.L080C54F0: .4byte gUnk_08107FE0
.L080C54F4: .4byte 0x00000904
.L080C54F8: .4byte 0x000008C8
.L080C54FC: .4byte 0x000008CA
.L080C5500: .4byte 0x0000089C
.L080C5504:
	cmp r1, #2
	bne .L080C550A
	b .L080C5600
.L080C550A:
	b .L080C561C
.L080C550C:
	mov r0, sl
	cmp r0, #0
	bne .L080C5574
	ldrb r0, [r5]
	cmp r0, #0
	beq .L080C551E
	movs r0, #1
	str r0, [r7]
	b .L080C561C
.L080C551E:
	ldr r2, .L080C5560 @ =0x000008C5
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L080C5564 @ =0x00000818
	adds r0, r6, r3
	movs r1, #0xbe
	bl func_08008B6C
	ldr r4, .L080C5568 @ =0x000008CA
	add r4, r8
	ldrb r2, [r4]
	add r0, sp, #0x20
	adds r1, r6, #0
	bl func_080C7B7C
	ldr r0, [sp, #0x20]
	adds r0, #8
	ldr r2, .L080C556C @ =0x0000097D
	adds r1, r6, r2
	strb r0, [r1]
	ldrb r2, [r4]
	add r0, sp, #0x24
	adds r1, r6, #0
	bl func_080C7B7C
	ldr r0, [sp, #0x24]
	lsrs r0, r0, #8
	adds r0, #0x18
	ldr r3, .L080C5570 @ =0x0000097E
	adds r1, r6, r3
	strb r0, [r1]
	b .L080C55A8
	.align 2, 0
.L080C5560: .4byte 0x000008C5
.L080C5564: .4byte 0x00000818
.L080C5568: .4byte 0x000008CA
.L080C556C: .4byte 0x0000097D
.L080C5570: .4byte 0x0000097E
.L080C5574:
	mov r0, sl
	cmp r0, #0x14
	bne .L080C5590
	ldrb r0, [r5, #2]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, .L080C558C @ =0x00000904
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b .L080C55A8
	.align 2, 0
.L080C558C: .4byte 0x00000904
.L080C5590:
	ldr r2, [sp, #0x2c]
	cmp sl, r2
	bne .L080C55A8
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r3
	ldr r2, .L080C55B0 @ =0x000008C5
	adds r0, r6, r2
	strb r1, [r0]
	movs r3, #4
	add r8, r3
	adds r5, #4
.L080C55A8:
	movs r0, #1
	add sl, r0
	b .L080C561C
	.align 2, 0
.L080C55B0: .4byte 0x000008C5
.L080C55B4:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x30]
	cmp r1, r2
	bne .L080C55EE
	movs r0, #2
	str r0, [r7]
	ldr r3, .L080C55F8 @ =0x00000544
	adds r4, r6, r3
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C55EE
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L080C55FC @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080C55EE:
	ldr r0, [sp, #0x28]
	adds r0, #1
	str r0, [sp, #0x28]
	b .L080C561C
	.align 2, 0
.L080C55F8: .4byte 0x00000544
.L080C55FC: .4byte 0x00000889
.L080C5600:
	ldr r1, .L080C5640 @ =0x00000544
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	cmp r0, #0
	bne .L080C561C
	str r0, [r7]
	ldr r2, .L080C5644 @ =0x0000089C
	adds r1, r6, r2
	movs r0, #3
	str r0, [r1]
.L080C561C:
	adds r0, r6, #0
	bl func_080C2D54
	ldr r3, .L080C5644 @ =0x0000089C
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #2
	bne .L080C562E
	b .L080C54CA
.L080C562E:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C5640: .4byte 0x00000544
.L080C5644: .4byte 0x0000089C

	thumb_func_start func_080C5648
func_080C5648: @ 0x080C5648
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	movs r2, #0
	ldr r1, .L080C56F0 @ =0x00000904
	adds r0, r5, r1
	movs r1, #0x18
.L080C5656:
	strb r2, [r0]
	strb r2, [r0, #1]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge .L080C5656
	ldr r3, .L080C56F4 @ =0x000008B4
	adds r1, r5, r3
	movs r2, #0
	movs r0, #0x78
	strb r0, [r1]
	ldr r0, .L080C56F8 @ =0x000008B5
	adds r1, r5, r0
	movs r0, #0x51
	strb r0, [r1]
	ldr r1, .L080C56FC @ =0x000008B7
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	adds r3, #2
	adds r0, r5, r3
	strb r1, [r0]
	ldr r1, .L080C5700 @ =0x000008B9
	adds r0, r5, r1
	strb r2, [r0]
	adds r3, #2
	adds r0, r5, r3
	strb r2, [r0]
	ldr r0, .L080C5704 @ =0x00000544
	adds r4, r5, r0
	ldr r0, [r4]
	subs r1, #0x30
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	adds r0, r5, #0
	bl func_080C2D54
	ldr r1, .L080C5708 @ =0x00000818
	adds r0, r5, r1
	movs r1, #0xbb
	bl func_08008B6C
	ldr r3, .L080C570C @ =0x0000089C
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080C56E8
	adds r4, r5, r3
	movs r6, #4
.L080C56CE:
	adds r0, r5, #0
	bl func_080087C8
	cmp r7, #0x78
	bne .L080C56DA
	str r6, [r4]
.L080C56DA:
	adds r7, #1
	adds r0, r5, #0
	bl func_080C2D54
	ldr r0, [r4]
	cmp r0, #3
	beq .L080C56CE
.L080C56E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C56F0: .4byte 0x00000904
.L080C56F4: .4byte 0x000008B4
.L080C56F8: .4byte 0x000008B5
.L080C56FC: .4byte 0x000008B7
.L080C5700: .4byte 0x000008B9
.L080C5704: .4byte 0x00000544
.L080C5708: .4byte 0x00000818
.L080C570C: .4byte 0x0000089C

	thumb_func_start func_080C5710
func_080C5710: @ 0x080C5710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x30]
	movs r0, #0x14
	bl __builtin_new
	ldr r2, .L080C57E4 @ =0x00000524
	adds r1, r6, r2
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r3, #0xaa
	lsls r3, r3, #3
	adds r5, r6, r3
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C574A
	bl __builtin_delete
.L080C574A:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r7, #0xab
	lsls r7, r7, #3
	adds r4, r6, r7
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
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r5, r7}
	stm r4!, {r1, r5, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	movs r7, #0xac
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r7, [r4]
	ldr r1, .L080C57E8 @ =0x00000844
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080C57B0
	ldrh r3, [r4, #4]
.L080C57B0:
	str r5, [sp, #0x34]
	lsls r2, r2, #5
	ldr r4, .L080C57EC @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C57F0
	cmp r1, #0
	beq .L080C57DA
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C57DA:
	ldr r3, [sp, #0x34]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080C58C0
	.align 2, 0
.L080C57E4: .4byte 0x00000524
.L080C57E8: .4byte 0x00000844
.L080C57EC: .4byte 0x06010000
.L080C57F0:
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
	bhs .L080C580C
	adds r0, r1, #0
.L080C580C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C582A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C582E
	mov r0, sb
	bl func_080D3BC0
	b .L080C582E
.L080C582A:
	movs r0, #0
	mov sb, r0
.L080C582E:
	adds r4, r0, #0
	mov r8, r4
	ldr r7, [sp, #0x34]
	ldr r2, [r7]
	mov r3, r8
	b .L080C584E
.L080C583A:
	cmp r3, #0
	beq .L080C584A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C584A:
	adds r2, #0x10
	adds r3, #0x10
.L080C584E:
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080C583A
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080C5870
	cmp r4, #0
	beq .L080C586C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C586C:
	adds r4, #0x10
	b .L080C5898
.L080C5870:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080C5896
.L080C5878:
	cmp r2, #0
	beq .L080C5888
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C5888:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080C5878
.L080C5896:
	adds r4, r2, #0
.L080C5898:
	ldr r0, [sp, #0x34]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C58AA
.L080C58A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C58A4
.L080C58AA:
	cmp r0, #0
	beq .L080C58B2
	bl free
.L080C58B2:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x34]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080C58C0:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xad
	lsls r3, r3, #3
	adds r2, r6, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C58DA
	ldrh r3, [r2, #4]
.L080C58DA:
	str r4, [sp, #0x34]
	mov r0, sp
	ldr r2, .L080C5908 @ =0x05000260
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080C590C
	cmp r1, #0
	beq .L080C58FE
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C58FE:
	ldr r1, [sp, #0x34]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080C59E0
	.align 2, 0
.L080C5908: .4byte 0x05000260
.L080C590C:
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
	bhs .L080C5928
	adds r0, r1, #0
.L080C5928:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C5946
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C594A
	mov r0, sb
	bl func_080D3BC0
	b .L080C594A
.L080C5946:
	movs r0, #0
	mov sb, r0
.L080C594A:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x34]
	ldr r2, [r4]
	mov r3, r8
	ldr r5, [sp, #0x38]
	cmp r2, r5
	beq .L080C5974
.L080C595A:
	cmp r3, #0
	beq .L080C596A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C596A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x38]
	cmp r2, r7
	bne .L080C595A
.L080C5974:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080C5990
	cmp r4, #0
	beq .L080C598C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C598C:
	adds r4, #0x10
	b .L080C59B8
.L080C5990:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080C59B6
.L080C5998:
	cmp r2, #0
	beq .L080C59A8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C59A8:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080C5998
.L080C59B6:
	adds r4, r2, #0
.L080C59B8:
	ldr r0, [sp, #0x34]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C59CA
.L080C59C4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C59C4
.L080C59CA:
	cmp r0, #0
	beq .L080C59D2
	bl free
.L080C59D2:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x34]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080C59E0:
	adds r0, r6, #0
	bl func_080C2D54
	ldr r3, .L080C59EC @ =0x0000089C
	adds r0, r6, r3
	b .L080C5A50
	.align 2, 0
.L080C59EC: .4byte 0x0000089C
.L080C59F0:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r4, .L080C5A0C @ =0x000008A4
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #0
	beq .L080C5A10
	cmp r0, #1
	beq .L080C5A40
	b .L080C5A46
	.align 2, 0
.L080C5A0C: .4byte 0x000008A4
.L080C5A10:
	adds r0, r6, #0
	bl func_080C7BF0
	adds r0, r6, #0
	bl func_080C7DF8
	adds r0, r6, #0
	bl func_080C76D4
	adds r0, r6, #0
	bl func_080C7D78
	ldr r5, [sp, #0x30]
	adds r5, #1
	str r5, [sp, #0x30]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080C38E4
	cmp r5, #0x3c
	bne .L080C5A46
	movs r7, #0
	str r7, [sp, #0x30]
	b .L080C5A46
.L080C5A40:
	adds r0, r6, #0
	bl func_080C7D78
.L080C5A46:
	adds r0, r6, #0
	bl func_080C2D54
	ldr r1, .L080C5A68 @ =0x0000089C
	adds r0, r6, r1
.L080C5A50:
	ldr r0, [r0]
	cmp r0, #4
	beq .L080C59F0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C5A68: .4byte 0x0000089C

	thumb_func_start func_080C5A6C
func_080C5A6C: @ 0x080C5A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x50]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	movs r4, #0
	add r2, sp, #0x50
	ldrh r2, [r2]
	strh r2, [r0, #0x10]
	movs r3, #0xb4
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	add r5, sp, #0x50
	ldrh r5, [r5]
	strh r5, [r0, #0x10]
	movs r6, #0xe5
	lsls r6, r6, #3
	adds r2, r7, r6
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	movs r1, #6
	bl func_0805E860
	ldr r1, .L080C5AD4 @ =0x000008C5
	adds r0, r7, r1
	strb r4, [r0]
	ldr r2, .L080C5AD8 @ =0x000008BC
	adds r1, r7, r2
	movs r0, #3
	str r0, [r1]
	ldr r3, .L080C5ADC @ =0x000008C4
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080C2D54
	ldr r4, .L080C5AE0 @ =0x0000089C
	adds r0, r7, r4
	b .L080C5E3E
	.align 2, 0
.L080C5AD4: .4byte 0x000008C5
.L080C5AD8: .4byte 0x000008BC
.L080C5ADC: .4byte 0x000008C4
.L080C5AE0: .4byte 0x0000089C
.L080C5AE4:
	adds r0, r7, #0
	bl func_080087C8
	ldr r5, .L080C5BE0 @ =0x000008AC
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	ble .L080C5AF6
	b .L080C5E1C
.L080C5AF6:
	ldr r6, [sp, #0x50]
	adds r6, #1
	str r6, [sp, #0x58]
	ldr r2, [sp, #0x50]
	cmp r2, #0xb4
	beq .L080C5B04
	b .L080C5E00
.L080C5B04:
	adds r0, #1
	str r0, [r1]
	ldr r3, .L080C5BE4 @ =0x0000089C
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	ldr r4, .L080C5BE8 @ =0x00000969
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x14
	bl __builtin_new
	movs r5, #0xa4
	lsls r5, r5, #3
	adds r1, r7, r5
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	movs r6, #0xaa
	lsls r6, r6, #3
	adds r5, r7, r6
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C5B42
	bl __builtin_delete
.L080C5B42:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x10
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x10
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	movs r0, #0xab
	lsls r0, r0, #3
	adds r1, r7, r0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	movs r0, #0xac
	lsls r0, r0, #3
	adds r5, r7, r0
	ldr r1, [r5]
	mov r8, r1
	ldr r2, .L080C5BEC @ =0x00000844
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r5]
	movs r3, #0
	str r4, [sp, #0x54]
	cmp r0, #0
	beq .L080C5BAE
	ldrh r3, [r5, #4]
.L080C5BAE:
	lsls r2, r2, #5
	ldr r4, .L080C5BF0 @ =0x06010000
	adds r2, r2, r4
	ldr r0, [sp, #0x54]
	mov r1, r8
	bl func_08008F0C
	ldr r5, [sp, #0x54]
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C5BF4
	cmp r1, #0
	beq .L080C5BD8
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C5BD8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C5CC2
	.align 2, 0
.L080C5BE0: .4byte 0x000008AC
.L080C5BE4: .4byte 0x0000089C
.L080C5BE8: .4byte 0x00000969
.L080C5BEC: .4byte 0x00000844
.L080C5BF0: .4byte 0x06010000
.L080C5BF4:
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
	bhs .L080C5C0C
	adds r0, r1, #0
.L080C5C0C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C5C2A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C5C2E
	mov r0, sb
	bl func_080D3BC0
	b .L080C5C2E
.L080C5C2A:
	movs r0, #0
	mov sb, r0
.L080C5C2E:
	adds r5, r0, #0
	str r5, [sp, #0x60]
	ldr r2, [r6]
	mov ip, r5
	ldr r5, [sp, #0x50]
	adds r5, #1
	str r5, [sp, #0x58]
	cmp r2, r8
	beq .L080C5C5A
.L080C5C40:
	mov r0, ip
	cmp r0, #0
	beq .L080C5C50
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C5C50:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080C5C40
.L080C5C5A:
	mov r5, ip
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080C5C76
	cmp r5, #0
	beq .L080C5C72
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C5C72:
	adds r5, #0x10
	b .L080C5C9E
.L080C5C76:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080C5C9C
.L080C5C7E:
	cmp r2, #0
	beq .L080C5C8E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C5C8E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080C5C7E
.L080C5C9C:
	adds r5, r2, #0
.L080C5C9E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C5CAE
.L080C5CA8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C5CA8
.L080C5CAE:
	cmp r0, #0
	beq .L080C5CB6
	bl free
.L080C5CB6:
	ldr r0, [sp, #0x60]
	add r0, sb
	ldr r1, [sp, #0x60]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C5CC2:
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xad
	lsls r3, r3, #3
	adds r2, r7, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C5CDC
	ldrh r3, [r2, #4]
.L080C5CDC:
	adds r6, r4, #0
	add r0, sp, #0x10
	ldr r2, .L080C5D0C @ =0x05000260
	bl func_08008F0C
	ldr r4, [sp, #0x54]
	mov sl, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C5D10
	cmp r1, #0
	beq .L080C5D02
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C5D02:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C5DDA
	.align 2, 0
.L080C5D0C: .4byte 0x05000260
.L080C5D10:
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
	bhs .L080C5D28
	adds r0, r1, #0
.L080C5D28:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C5D46
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C5D4A
	mov r0, sb
	bl func_080D3BC0
	b .L080C5D4A
.L080C5D46:
	movs r0, #0
	mov sb, r0
.L080C5D4A:
	adds r5, r0, #0
	str r5, [sp, #0x60]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080C5D72
.L080C5D56:
	mov r4, ip
	cmp r4, #0
	beq .L080C5D68
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C5D68:
	adds r2, #0x10
	movs r5, #0x10
	add ip, r5
	cmp r2, r8
	bne .L080C5D56
.L080C5D72:
	mov r5, ip
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080C5D8E
	cmp r5, #0
	beq .L080C5D8A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C5D8A:
	adds r5, #0x10
	b .L080C5DB6
.L080C5D8E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080C5DB4
.L080C5D96:
	cmp r2, #0
	beq .L080C5DA6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C5DA6:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080C5D96
.L080C5DB4:
	adds r5, r2, #0
.L080C5DB6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C5DC6
.L080C5DC0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C5DC0
.L080C5DC6:
	cmp r0, #0
	beq .L080C5DCE
	bl free
.L080C5DCE:
	ldr r0, [sp, #0x60]
	add r0, sb
	ldr r1, [sp, #0x60]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C5DDA:
	ldr r2, .L080C5E08 @ =0x0000096E
	adds r1, r7, r2
	ldr r3, .L080C5E0C @ =0x0000096F
	adds r2, r7, r3
	ldrb r0, [r2]
	ldrb r4, [r1]
	adds r0, r0, r4
	strb r0, [r1]
	movs r5, #0
	strb r5, [r2]
	ldr r6, .L080C5E10 @ =0x00000979
	adds r0, r7, r6
	strb r5, [r0]
	ldr r1, .L080C5E14 @ =0x0000097A
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, .L080C5E18 @ =0x000008C5
	adds r0, r7, r2
	strb r5, [r0]
.L080C5E00:
	ldr r3, [sp, #0x58]
	str r3, [sp, #0x50]
	b .L080C5E34
	.align 2, 0
.L080C5E08: .4byte 0x0000096E
.L080C5E0C: .4byte 0x0000096F
.L080C5E10: .4byte 0x00000979
.L080C5E14: .4byte 0x0000097A
.L080C5E18: .4byte 0x000008C5
.L080C5E1C:
	ldr r4, .L080C5F98 @ =0x0000089C
	adds r1, r7, r4
	movs r0, #6
	str r0, [r1]
	ldr r5, .L080C5F9C @ =0x0000096E
	adds r1, r7, r5
	ldr r6, .L080C5FA0 @ =0x0000096F
	adds r0, r7, r6
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
.L080C5E34:
	adds r0, r7, #0
	bl func_080C2D54
	ldr r3, .L080C5F98 @ =0x0000089C
	adds r0, r7, r3
.L080C5E3E:
	ldr r0, [r0]
	cmp r0, #5
	bne .L080C5E46
	b .L080C5AE4
.L080C5E46:
	ldr r4, .L080C5F98 @ =0x0000089C
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #2
	beq .L080C5E52
	b .L080C607A
.L080C5E52:
	ldr r5, .L080C5FA4 @ =0x00000544
	adds r4, r7, r5
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080C5E80
	ldr r1, .L080C5FA8 @ =0x00000889
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
.L080C5E80:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x54]
	add r0, sp, #0x40
	mov sl, r0
	movs r2, #0xc
	adds r2, r2, r7
	mov sb, r2
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x5c]
	cmp r1, #0
	bge .L080C5EBE
.L080C5EA2:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080C2D54
	ldr r4, .L080C5FA4 @ =0x00000544
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080C5EA2
.L080C5EBE:
	ldr r5, .L080C5FA4 @ =0x00000544
	adds r4, r7, r5
	ldr r0, [r4]
	ldr r1, .L080C5FA8 @ =0x00000889
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
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r0, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	movs r1, #0
	mov r8, r1
	strh r6, [r0, #0x10]
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	strh r6, [r0, #0x10]
	movs r3, #0xe5
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	strh r6, [r0, #0x10]
	ldr r4, .L080C5FAC @ =0x0000097B
	adds r1, r7, r4
	movs r0, #0x19
	strb r0, [r1]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	movs r4, #4
	movs r5, #2
	add r0, sp, #0x40
	strh r4, [r0]
	mov r0, sl
	strh r5, [r0, #2]
	ldr r0, [sp, #0x40]
	mov r1, sb
	movs r2, #0
	bl func_0804E7A0
	movs r1, #1
	mov sl, r1
	add r0, sp, #0x44
	strh r4, [r0]
	ldr r2, [sp, #0x5c]
	strh r5, [r2, #2]
	ldr r0, [sp, #0x44]
	add r3, sp, #0xc
	str r3, [sp]
	mov r4, r8
	str r4, [sp, #4]
	str r1, [sp, #8]
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, .L080C5FB0 @ =0x0000083C
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	adds r7, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080C5FB4 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x10
	mov r1, sb
	adds r3, r6, #0
	bl func_08008F0C
	ldr r1, [sp, #0x54]
	mov r8, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080C5FB8
	cmp r1, #0
	beq .L080C5F90
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C5F90:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080C607A
	.align 2, 0
.L080C5F98: .4byte 0x0000089C
.L080C5F9C: .4byte 0x0000096E
.L080C5FA0: .4byte 0x0000096F
.L080C5FA4: .4byte 0x00000544
.L080C5FA8: .4byte 0x00000889
.L080C5FAC: .4byte 0x0000097B
.L080C5FB0: .4byte 0x0000083C
.L080C5FB4: .4byte 0x06010000
.L080C5FB8:
	str r1, [sp, #0x64]
	mov r5, sl
	str r5, [sp, #0x4c]
	ldr r0, [r7]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L080C5FD2
	adds r0, r1, #0
.L080C5FD2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C5FF0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C5FF4
	mov r0, sb
	bl func_080D3BC0
	b .L080C5FF4
.L080C5FF0:
	movs r0, #0
	mov sb, r0
.L080C5FF4:
	adds r5, r0, #0
	mov sl, r5
	ldr r2, [r7]
	mov r3, sl
	b .L080C6012
.L080C5FFE:
	cmp r3, #0
	beq .L080C600E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C600E:
	adds r2, #0x10
	adds r3, #0x10
.L080C6012:
	ldr r0, [sp, #0x64]
	cmp r2, r0
	bne .L080C5FFE
	adds r5, r3, #0
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L080C6034
	cmp r5, #0
	beq .L080C6030
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6030:
	adds r5, #0x10
	b .L080C6056
.L080C6034:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C6054
.L080C603C:
	cmp r2, #0
	beq .L080C604C
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C604C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C603C
.L080C6054:
	adds r5, r2, #0
.L080C6056:
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C6066
.L080C6060:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6060
.L080C6066:
	cmp r0, #0
	beq .L080C606E
	bl free
.L080C606E:
	mov r0, sb
	add r0, sl
	mov r6, sl
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080C607A:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080C608C
func_080C608C: @ 0x080C608C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x13c
	mov sl, r0
	ldr r0, .L080C61D4 @ =0x0000096E
	add r0, sl
	ldrb r0, [r0]
	ldr r5, .L080C61D8 @ =0x00000978
	add r5, sl
	ldrb r1, [r5]
	subs r0, r0, r1
	adds r4, r0, #0
	ldr r2, .L080C61DC @ =0x00000974
	add r2, sl
	movs r3, #0x97
	lsls r3, r3, #4
	add r3, sl
	ldrb r0, [r3]
	adds r0, r4, r0
	subs r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	bge .L080C60C4
	movs r0, #0
	str r0, [r2]
.L080C60C4:
	ldr r1, .L080C61E0 @ =0x0000097C
	add r1, sl
	ldr r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blt .L080C60D8
	ldr r1, .L080C61E4 @ =0x0000096A
	add r1, sl
	movs r0, #1
	strb r0, [r1]
.L080C60D8:
	str r4, [sp, #0x30]
	ldrb r0, [r3]
	str r0, [sp, #0x34]
	ldrb r0, [r5]
	str r0, [sp, #0x38]
	ldr r0, [r2]
	str r0, [sp, #0x3c]
	add r5, sp, #0x20
	add r4, sp, #0x30
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl memcpy
	add r0, sp, #0x10
	adds r1, r5, #0
	movs r2, #0x10
	bl memcpy
	mov r0, sl
	bl func_08008918
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r4]
	strh r1, [r0]
	ldr r5, .L080C61E8 @ =0x0000051C
	add r5, sl
	movs r6, #0
	ldr r0, [r5]
	cmp r6, r0
	beq .L080C6124
	cmp r0, #0
	beq .L080C6124
	movs r1, #3
	bl func_08050D0C
.L080C6124:
	str r6, [r5]
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0x30
	bl func_0800835C
	add r4, sp, #0x34
	adds r0, r4, #0
	bl func_0800770C
	movs r0, #0
	str r0, [sp]
	add r3, sp, #0x30
	str r3, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x18
	movs r3, #0
	bl func_08050CC0
	ldr r6, .L080C61E8 @ =0x0000051C
	add r6, sl
	adds r5, r0, #0
	ldr r0, [r6]
	cmp r5, r0
	beq .L080C6168
	cmp r0, #0
	beq .L080C6168
	movs r1, #3
	bl func_08050D0C
.L080C6168:
	str r5, [r6]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0x30
	movs r1, #2
	bl func_08008364
	ldr r0, .L080C61E8 @ =0x0000051C
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
	ldr r1, .L080C61EC @ =0x00000814
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	ldr r0, .L080C61E4 @ =0x0000096A
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C61F0
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0xa8
	lsls r1, r1, #3
	b .L080C61F8
	.align 2, 0
.L080C61D4: .4byte 0x0000096E
.L080C61D8: .4byte 0x00000978
.L080C61DC: .4byte 0x00000974
.L080C61E0: .4byte 0x0000097C
.L080C61E4: .4byte 0x0000096A
.L080C61E8: .4byte 0x0000051C
.L080C61EC: .4byte 0x00000814
.L080C61F0:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080C6324 @ =0x0000053C
.L080C61F8:
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	movs r4, #0xea
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080C6218
	bl __builtin_delete
.L080C6218:
	str r5, [r4]
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
	ldr r5, .L080C6328 @ =0x00000754
	add r5, sl
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C6248
	bl __builtin_delete
.L080C6248:
	str r4, [r5]
	movs r4, #0xea
	lsls r4, r4, #3
	add r4, sl
	mov r8, r4
	ldr r0, [r4]
	movs r1, #0
	bl func_0805E860
	ldr r0, [r5]
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r5]
	strh r1, [r0, #2]
	ldr r4, [r5]
	ldr r6, .L080C632C @ =0x00000874
	add r6, sl
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #9
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r5, #1
	strb r5, [r0, #0x18]
	movs r5, #0xeb
	lsls r5, r5, #3
	add r5, sl
	mov r7, r8
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x40
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	ldm r4!, {r0, r1, r2}
	stm r5!, {r0, r1, r2}
	ldm r4!, {r0, r3, r7}
	stm r5!, {r0, r3, r7}
	ldm r4!, {r1, r2}
	stm r5!, {r1, r2}
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xec
	lsls r4, r4, #3
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080C62DC
	ldrh r3, [r4, #4]
.L080C62DC:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r4, .L080C6330 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x30
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x30
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C6334
	cmp r1, #0
	beq .L080C6308
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6308:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r4, sp
	adds r4, #0x70
	str r4, [sp, #0x11c]
	mov r5, sp
	adds r5, #0x38
	str r5, [sp, #0x114]
	mov r6, sp
	adds r6, #0xb4
	str r6, [sp, #0x128]
	b .L080C6406
	.align 2, 0
.L080C6324: .4byte 0x0000053C
.L080C6328: .4byte 0x00000754
.L080C632C: .4byte 0x00000874
.L080C6330: .4byte 0x06010000
.L080C6334:
	str r1, [sp, #0x134]
	movs r7, #1
	str r7, [sp, #0x64]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L080C634C
	adds r0, r1, #0
.L080C634C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C636A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C636E
	mov r0, r8
	bl func_080D3BC0
	b .L080C636E
.L080C636A:
	movs r0, #0
	mov r8, r0
.L080C636E:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r4, sp
	adds r4, #0x70
	str r4, [sp, #0x11c]
	mov r5, sp
	adds r5, #0x38
	str r5, [sp, #0x114]
	mov r7, sp
	adds r7, #0xb4
	str r7, [sp, #0x128]
	b .L080C639E
.L080C638A:
	cmp r3, #0
	beq .L080C639A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C639A:
	adds r2, #0x10
	adds r3, #0x10
.L080C639E:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C638A
	adds r5, r3, #0
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L080C63C0
	cmp r5, #0
	beq .L080C63BC
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C63BC:
	adds r5, #0x10
	b .L080C63E2
.L080C63C0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C63E0
.L080C63C8:
	cmp r2, #0
	beq .L080C63D8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C63D8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C63C8
.L080C63E0:
	adds r5, r2, #0
.L080C63E2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C63F2
.L080C63EC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C63EC
.L080C63F2:
	cmp r0, #0
	beq .L080C63FA
	bl free
.L080C63FA:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C6406:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xed
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C6420
	ldrh r3, [r2, #4]
.L080C6420:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080C6450 @ =0x05000320
	bl func_08008F0C
	add r0, sp, #0x30
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C6454
	cmp r1, #0
	beq .L080C6446
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6446:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C651A
	.align 2, 0
.L080C6450: .4byte 0x05000320
.L080C6454:
	str r1, [sp, #0x134]
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r1, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L080C646E
	adds r0, r1, #0
.L080C646E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C648C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6490
	mov r0, r8
	bl func_080D3BC0
	b .L080C6490
.L080C648C:
	movs r0, #0
	mov r8, r0
.L080C6490:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080C64B8
.L080C649E:
	cmp r3, #0
	beq .L080C64AE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C64AE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C649E
.L080C64B8:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L080C64D4
	cmp r5, #0
	beq .L080C64D0
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C64D0:
	adds r5, #0x10
	b .L080C64F6
.L080C64D4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C64F4
.L080C64DC:
	cmp r2, #0
	beq .L080C64EC
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C64EC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C64DC
.L080C64F4:
	adds r5, r2, #0
.L080C64F6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C6506
.L080C6500:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6500
.L080C6506:
	cmp r0, #0
	beq .L080C650E
	bl free
.L080C650E:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C651A:
	movs r0, #0
	str r0, [sp, #0xf4]
	ldr r1, .L080C65A4 @ =0x0000088C
	add r1, sl
	str r1, [sp, #0xf8]
.L080C6524:
	ldr r2, [sp, #0xf4]
	lsls r5, r2, #3
	movs r3, #0xef
	lsls r3, r3, #3
	adds r1, r5, r3
	add r1, sl
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	movs r0, #0
	add r1, sp, #0x30
	movs r2, #0
	bl func_0804EC84
	ldr r6, [sp, #0xf4]
	lsls r4, r6, #6
	adds r0, r4, r6
	lsls r6, r0, #2
	mov r7, sl
	adds r1, r6, r7
	add r0, sp, #0x70
	movs r2, #4
	strh r2, [r0]
	movs r7, #2
	ldr r3, [sp, #0x11c]
	strh r7, [r3, #2]
	ldr r0, [sp, #0x70]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0xf4]
	cmp r3, #2
	beq .L080C65A8
	add r0, sp, #0x30
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r5, sl
	adds r1, r6, r5
	movs r3, #5
	add r0, sp, #0x74
	movs r6, #4
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x74]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	add r6, sp, #0x30
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080C65DA
	.align 2, 0
.L080C65A4: .4byte 0x0000088C
.L080C65A8:
	add r0, sp, #0x30
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0x78
	movs r3, #4
	strh r3, [r0]
	add r5, sp, #0xf4
	ldrh r5, [r5]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x78]
	add r6, sp, #0x30
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xc6
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080C65DA:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0xf4]
	adds r4, r4, r0
	lsls r4, r4, #2
	add r4, sl
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r2, [sp, #0xf8]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r3, [sp, #0x124]
	adds r2, r3, r2
	lsls r2, r2, #5
	ldr r6, .L080C663C @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x38
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r7, [sp, #0x114]
	mov sb, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C6640
	cmp r1, #0
	beq .L080C662E
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C662E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0xf4]
	adds r5, #1
	str r5, [sp, #0x120]
	b .L080C6708
	.align 2, 0
.L080C663C: .4byte 0x06010000
.L080C6640:
	str r1, [sp, #0x134]
	movs r0, #1
	str r0, [sp, #0x80]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x7c]
	add r1, sp, #0x80
	add r0, sp, #0x7c
	cmp r4, #1
	bhs .L080C665A
	adds r0, r1, #0
.L080C665A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6678
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C667C
	mov r0, r8
	bl func_080D3BC0
	b .L080C667C
.L080C6678:
	movs r0, #0
	mov r8, r0
.L080C667C:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r7, [sp, #0xf4]
	adds r7, #1
	str r7, [sp, #0x120]
	b .L080C66A0
.L080C668C:
	cmp r3, #0
	beq .L080C669C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C669C:
	adds r2, #0x10
	adds r3, #0x10
.L080C66A0:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C668C
	adds r6, r3, #0
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne .L080C66C2
	cmp r6, #0
	beq .L080C66BE
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C66BE:
	adds r6, #0x10
	b .L080C66E4
.L080C66C2:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080C66E2
.L080C66CA:
	cmp r2, #0
	beq .L080C66DA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C66DA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C66CA
.L080C66E2:
	adds r6, r2, #0
.L080C66E4:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C66F4
.L080C66EE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C66EE
.L080C66F4:
	cmp r0, #0
	beq .L080C66FC
	bl free
.L080C66FC:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080C6708:
	ldr r0, [sp, #0xf4]
	cmp r0, #3
	beq .L080C674A
	ldr r4, [sp, #0x124]
	add r4, sl
	movs r1, #0xef
	lsls r1, r1, #3
	adds r4, r4, r1
	ldr r2, [sp, #0xf8]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_08007D4C
	adds r3, r0, #0
	ldr r5, [sp, #0x124]
	adds r3, r3, r5
	ldr r6, [sp, #0xf4]
	lsls r2, r6, #4
	adds r2, #0x6d
	movs r7, #2
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x84
	movs r1, #0x78
	bl func_0804EA94
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x88]
	b .L080C677C
.L080C674A:
	movs r4, #0xf2
	lsls r4, r4, #3
	add r4, sl
	ldr r2, [sp, #0xf8]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_08007D4C
	adds r3, r0, #0
	adds r3, #0x18
	movs r5, #2
	str r5, [sp]
	movs r6, #0
	str r6, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x8c
	movs r1, #0xc8
	movs r2, #0x8d
	bl func_0804EA94
	add r0, sp, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0]
.L080C677C:
	str r0, [r4]
	str r1, [r4, #4]
	ldr r7, [sp, #0x120]
	str r7, [sp, #0xf4]
	adds r0, r7, #0
	cmp r0, #3
	bgt .L080C678C
	b .L080C6524
.L080C678C:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080C68B4 @ =0x0000052C
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xf3
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C67B4
	bl __builtin_delete
.L080C67B4:
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
	ldr r6, .L080C68B8 @ =0x0000079C
	add r6, sl
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C67E4
	bl __builtin_delete
.L080C67E4:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0x98
	lsls r1, r1, #4
	add r1, sl
	ldr r2, [r1]
	movs r1, #0x54
	muls r1, r2, r1
	ldr r2, .L080C68BC @ =0x0000042C
	adds r1, r1, r2
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0x70
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0x85
	strh r0, [r1, #2]
	ldr r4, [r6]
	ldr r5, .L080C68C0 @ =0x00000894
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #4
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r3, #1
	mov r8, r3
	mov r4, r8
	strb r4, [r0, #0x18]
	movs r4, #0xf4
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
	add r0, sp, #0x38
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x114]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x114]
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xf5
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
	beq .L080C6882
	ldrh r3, [r4, #4]
.L080C6882:
	lsls r2, r2, #5
	ldr r4, .L080C68C4 @ =0x06010000
	adds r2, r2, r4
	ldr r0, [sp, #0x114]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r5, [sp, #0x114]
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C68C8
	cmp r1, #0
	beq .L080C68AC
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C68AC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C6990
	.align 2, 0
.L080C68B4: .4byte 0x0000052C
.L080C68B8: .4byte 0x0000079C
.L080C68BC: .4byte 0x0000042C
.L080C68C0: .4byte 0x00000894
.L080C68C4: .4byte 0x06010000
.L080C68C8:
	str r1, [sp, #0x134]
	add r1, sp, #0x98
	mov r4, r8
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C68E4
	adds r0, r1, #0
.L080C68E4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6902
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6906
	mov r0, r8
	bl func_080D3BC0
	b .L080C6906
.L080C6902:
	movs r0, #0
	mov r8, r0
.L080C6906:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080C692E
.L080C6914:
	cmp r3, #0
	beq .L080C6924
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6924:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C6914
.L080C692E:
	adds r5, r3, #0
	ldr r1, [sp, #0x98]
	cmp r1, #1
	bne .L080C694A
	cmp r5, #0
	beq .L080C6946
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6946:
	adds r5, #0x10
	b .L080C696C
.L080C694A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C696A
.L080C6952:
	cmp r2, #0
	beq .L080C6962
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6962:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C6952
.L080C696A:
	adds r5, r2, #0
.L080C696C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C697C
.L080C6976:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6976
.L080C697C:
	cmp r0, #0
	beq .L080C6984
	bl free
.L080C6984:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C6990:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xf6
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C69AA
	ldrh r3, [r2, #4]
.L080C69AA:
	adds r6, r4, #0
	add r0, sp, #0x38
	ldr r2, .L080C69D8 @ =0x05000280
	bl func_08008F0C
	ldr r0, [sp, #0x114]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C69DC
	cmp r1, #0
	beq .L080C69D0
	adds r0, r1, #0
	ldr r1, [sp, #0x114]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C69D0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C6AA4
	.align 2, 0
.L080C69D8: .4byte 0x05000280
.L080C69DC:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C69F8
	adds r0, r1, #0
.L080C69F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6A16
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6A1A
	mov r0, r8
	bl func_080D3BC0
	b .L080C6A1A
.L080C6A16:
	movs r0, #0
	mov r8, r0
.L080C6A1A:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080C6A42
.L080C6A28:
	cmp r3, #0
	beq .L080C6A38
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6A38:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C6A28
.L080C6A42:
	adds r5, r3, #0
	ldr r1, [sp, #0xa0]
	cmp r1, #1
	bne .L080C6A5E
	cmp r5, #0
	beq .L080C6A5A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6A5A:
	adds r5, #0x10
	b .L080C6A80
.L080C6A5E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C6A7E
.L080C6A66:
	cmp r2, #0
	beq .L080C6A76
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6A76:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C6A66
.L080C6A7E:
	adds r5, r2, #0
.L080C6A80:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C6A90
.L080C6A8A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6A8A
.L080C6A90:
	cmp r0, #0
	beq .L080C6A98
	bl free
.L080C6A98:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C6AA4:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080C6BB0 @ =0x00000534
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xf8
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C6ACC
	bl __builtin_delete
.L080C6ACC:
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
	ldr r6, .L080C6BB4 @ =0x000007C4
	add r6, sl
	ldr r0, [r6]
	cmp r4, r0
	beq .L080C6AFC
	bl __builtin_delete
.L080C6AFC:
	str r4, [r6]
	movs r0, #0x68
	strh r0, [r4]
	movs r0, #0x7d
	strh r0, [r4, #2]
	ldr r5, .L080C6BB8 @ =0x00000854
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r4, #0xf9
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
	add r0, sp, #0x38
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x114]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x114]
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xfa
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
	beq .L080C6B7E
	ldrh r3, [r4, #4]
.L080C6B7E:
	lsls r2, r2, #5
	ldr r0, .L080C6BBC @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0x114]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0x114]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C6BC0
	cmp r1, #0
	beq .L080C6BA8
	adds r0, r1, #0
	ldr r1, [sp, #0x114]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6BA8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C6C84
	.align 2, 0
.L080C6BB0: .4byte 0x00000534
.L080C6BB4: .4byte 0x000007C4
.L080C6BB8: .4byte 0x00000854
.L080C6BBC: .4byte 0x06010000
.L080C6BC0:
	str r1, [sp, #0x134]
	add r1, sp, #0xa8
	mov r5, r8
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x134]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C6BDC
	adds r0, r1, #0
.L080C6BDC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6BFA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6BFE
	mov r0, r8
	bl func_080D3BC0
	b .L080C6BFE
.L080C6BFA:
	movs r0, #0
	mov r8, r0
.L080C6BFE:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C6C1C
.L080C6C08:
	cmp r3, #0
	beq .L080C6C18
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6C18:
	adds r2, #0x10
	adds r3, #0x10
.L080C6C1C:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C6C08
	adds r5, r3, #0
	ldr r1, [sp, #0xa8]
	cmp r1, #1
	bne .L080C6C3E
	cmp r5, #0
	beq .L080C6C3A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6C3A:
	adds r5, #0x10
	b .L080C6C60
.L080C6C3E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C6C5E
.L080C6C46:
	cmp r2, #0
	beq .L080C6C56
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6C56:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C6C46
.L080C6C5E:
	adds r5, r2, #0
.L080C6C60:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C6C70
.L080C6C6A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6C6A
.L080C6C70:
	cmp r0, #0
	beq .L080C6C78
	bl free
.L080C6C78:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C6C84:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xfb
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C6C9E
	ldrh r3, [r2, #4]
.L080C6C9E:
	adds r6, r4, #0
	add r0, sp, #0x38
	ldr r2, .L080C6CCC @ =0x050002A0
	bl func_08008F0C
	ldr r0, [sp, #0x114]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C6CD0
	cmp r1, #0
	beq .L080C6CC4
	adds r0, r1, #0
	ldr r1, [sp, #0x114]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6CC4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C6D98
	.align 2, 0
.L080C6CCC: .4byte 0x050002A0
.L080C6CD0:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xb0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C6CEC
	adds r0, r1, #0
.L080C6CEC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6D0A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6D0E
	mov r0, r8
	bl func_080D3BC0
	b .L080C6D0E
.L080C6D0A:
	movs r0, #0
	mov r8, r0
.L080C6D0E:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080C6D36
.L080C6D1C:
	cmp r3, #0
	beq .L080C6D2C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6D2C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C6D1C
.L080C6D36:
	adds r5, r3, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #1
	bne .L080C6D52
	cmp r5, #0
	beq .L080C6D4E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6D4E:
	adds r5, #0x10
	b .L080C6D74
.L080C6D52:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C6D72
.L080C6D5A:
	cmp r2, #0
	beq .L080C6D6A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6D6A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C6D5A
.L080C6D72:
	adds r5, r2, #0
.L080C6D74:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C6D84
.L080C6D7E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6D7E
.L080C6D84:
	cmp r0, #0
	beq .L080C6D8C
	bl free
.L080C6D8C:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C6D98:
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
	ldr r5, .L080C6E88 @ =0x000007EC
	add r5, sl
	ldr r0, [r5]
	cmp r4, r0
	beq .L080C6DC6
	bl __builtin_delete
.L080C6DC6:
	str r4, [r5]
	movs r0, #0x68
	strh r0, [r4]
	movs r0, #0x8d
	strh r0, [r4, #2]
	ldr r0, .L080C6E8C @ =0x0000086C
	add r0, sl
	mov r8, r0
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #8
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #1
	strb r1, [r0, #0x18]
	movs r4, #0xfe
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xa7
	lsls r0, r0, #3
	add r0, sl
	ldr r5, [r0]
	ldr r6, [r5]
	ldr r0, [sp, #0x128]
	ldr r3, [r6, #0xc]
	adds r1, r5, #0
	movs r2, #6
	bl _call_via_r3
	add r0, sp, #0xb4
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	add r0, sp, #0x38
	ldr r3, [r6, #0x10]
	adds r1, r5, #0
	bl _call_via_r3
	ldr r0, [sp, #0x114]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x114]
	ldm r0!, {r2, r3, r5}
	stm r4!, {r2, r3, r5}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xff
	lsls r4, r4, #3
	add r4, sl
	ldr r7, [r4]
	mov r6, r8
	ldr r1, [r6, #4]
	mov r0, r8
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080C6E54
	ldrh r3, [r4, #4]
.L080C6E54:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r0, .L080C6E90 @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0x114]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0x114]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C6E94
	cmp r1, #0
	beq .L080C6E80
	adds r0, r1, #0
	ldr r1, [sp, #0x114]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6E80:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C6F58
	.align 2, 0
.L080C6E88: .4byte 0x000007EC
.L080C6E8C: .4byte 0x0000086C
.L080C6E90: .4byte 0x06010000
.L080C6E94:
	str r1, [sp, #0x134]
	add r1, sp, #0xc0
	movs r5, #1
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x134]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xbc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C6EB0
	adds r0, r1, #0
.L080C6EB0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6ECE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6ED2
	mov r0, r8
	bl func_080D3BC0
	b .L080C6ED2
.L080C6ECE:
	movs r0, #0
	mov r8, r0
.L080C6ED2:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C6EF0
.L080C6EDC:
	cmp r3, #0
	beq .L080C6EEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6EEC:
	adds r2, #0x10
	adds r3, #0x10
.L080C6EF0:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C6EDC
	adds r5, r3, #0
	ldr r1, [sp, #0xc0]
	cmp r1, #1
	bne .L080C6F12
	cmp r5, #0
	beq .L080C6F0E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6F0E:
	adds r5, #0x10
	b .L080C6F34
.L080C6F12:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C6F32
.L080C6F1A:
	cmp r2, #0
	beq .L080C6F2A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C6F2A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C6F1A
.L080C6F32:
	adds r5, r2, #0
.L080C6F34:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C6F44
.L080C6F3E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C6F3E
.L080C6F44:
	cmp r0, #0
	beq .L080C6F4C
	bl free
.L080C6F4C:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C6F58:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C6F72
	ldrh r3, [r2, #4]
.L080C6F72:
	adds r6, r4, #0
	add r0, sp, #0x38
	ldr r2, .L080C6FA0 @ =0x05000300
	bl func_08008F0C
	ldr r0, [sp, #0x114]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C6FA4
	cmp r1, #0
	beq .L080C6F98
	adds r0, r1, #0
	ldr r1, [sp, #0x114]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C6F98:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C706C
	.align 2, 0
.L080C6FA0: .4byte 0x05000300
.L080C6FA4:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xc8
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xc4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C6FC0
	adds r0, r1, #0
.L080C6FC0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C6FDE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C6FE2
	mov r0, r8
	bl func_080D3BC0
	b .L080C6FE2
.L080C6FDE:
	movs r0, #0
	mov r8, r0
.L080C6FE2:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080C700A
.L080C6FF0:
	cmp r3, #0
	beq .L080C7000
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C7000:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C6FF0
.L080C700A:
	adds r5, r3, #0
	ldr r1, [sp, #0xc8]
	cmp r1, #1
	bne .L080C7026
	cmp r5, #0
	beq .L080C7022
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C7022:
	adds r5, #0x10
	b .L080C7048
.L080C7026:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C7046
.L080C702E:
	cmp r2, #0
	beq .L080C703E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C703E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C702E
.L080C7046:
	adds r5, r2, #0
.L080C7048:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C7058
.L080C7052:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C7052
.L080C7058:
	cmp r0, #0
	beq .L080C7060
	bl free
.L080C7060:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C706C:
	movs r0, #0x81
	lsls r0, r0, #4
	add r0, sl
	ldr r2, .L080C70A4 @ =0x0000FFFF
	movs r1, #0xcd
	bl func_08008C38
	mov r0, sl
	bl func_080C2D54
	movs r0, #0
	str r0, [sp, #0xfc]
	movs r1, #0
	str r1, [sp, #0x100]
	ldr r1, [sp, #0x114]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xc
.L080C7090:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge .L080C7090
	movs r2, #0
	str r2, [sp, #0x104]
	movs r3, #0
	str r3, [sp, #0x108]
	b .L080C76B2
	.align 2, 0
.L080C70A4: .4byte 0x0000FFFF
.L080C70A8:
	mov r0, sl
	bl func_080087C8
	mov r0, sl
	bl func_080088B8
	ldr r1, .L080C70D4 @ =0x000008A8
	add r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bne .L080C70D8
	ldr r4, [sp, #0xfc]
	adds r4, #1
	str r4, [sp, #0xfc]
	cmp r4, #0x78
	beq .L080C70CA
	b .L080C76AC
.L080C70CA:
	movs r5, #0
	str r5, [sp, #0xfc]
	movs r0, #1
	b .L080C76AA
	.align 2, 0
.L080C70D4: .4byte 0x000008A8
.L080C70D8:
	mov r0, sl
	bl func_080088D4
	str r0, [sp, #0x10c]
	ldr r4, .L080C713C @ =0x0000051C
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
	ldr r1, .L080C7140 @ =0x00000814
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
	bhi .L080C7190
	lsls r0, r0, #2
	ldr r1, .L080C7144 @ =.L080C7148
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C713C: .4byte 0x0000051C
.L080C7140: .4byte 0x00000814
.L080C7144: .4byte .L080C7148
.L080C7148: @ jump table
	.4byte .L080C7164 @ case 0
	.4byte .L080C7190 @ case 1
	.4byte .L080C7190 @ case 2
	.4byte .L080C7174 @ case 3
	.4byte .L080C7190 @ case 4
	.4byte .L080C7190 @ case 5
	.4byte .L080C7190 @ case 6
.L080C7164:
	ldr r0, .L080C7170 @ =0x0000051C
	add r0, sl
	ldr r0, [r0]
	bl func_08050D5C
	b .L080C7190
	.align 2, 0
.L080C7170: .4byte 0x0000051C
.L080C7174:
	cmp r7, #1
	bne .L080C7190
	ldr r4, .L080C71A8 @ =0x0000051C
	add r4, sl
	ldr r0, [r4]
	ldr r1, .L080C71AC @ =gUnk_0810823C
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	ldr r0, .L080C71B0 @ =0x0000096B
	add r0, sl
	strb r7, [r0]
.L080C7190:
	ldr r0, .L080C71B4 @ =0x000008A8
	add r0, sl
	ldr r0, [r0]
	cmp r0, #2
	bne .L080C719C
	b .L080C7634
.L080C719C:
	cmp r0, #2
	bgt .L080C71B8
	cmp r0, #1
	beq .L080C71C0
	b .L080C76AC
	.align 2, 0
.L080C71A8: .4byte 0x0000051C
.L080C71AC: .4byte gUnk_0810823C
.L080C71B0: .4byte 0x0000096B
.L080C71B4: .4byte 0x000008A8
.L080C71B8:
	cmp r0, #3
	bne .L080C71BE
	b .L080C768C
.L080C71BE:
	b .L080C76AC
.L080C71C0:
	ldr r0, .L080C7200 @ =0x0000096B
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C71CC
	b .L080C76AC
.L080C71CC:
	ldr r6, [sp, #0x108]
	adds r6, #1
	str r6, [sp, #0x108]
	ldr r7, [sp, #0x104]
	lsls r7, r7, #2
	str r7, [sp, #0x130]
	cmp r6, #0x14
	beq .L080C71DE
	b .L080C73DC
.L080C71DE:
	movs r0, #0
	str r0, [sp, #0x108]
	ldr r2, [sp, #0x114]
	adds r1, r2, r7
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r3, [sp, #0x104]
	cmp r3, #2
	beq .L080C7204
	movs r0, #0x82
	lsls r0, r0, #4
	add r0, sl
	movs r1, #0xbf
	bl func_08008B6C
	b .L080C7210
	.align 2, 0
.L080C7200: .4byte 0x0000096B
.L080C7204:
	movs r0, #0x82
	lsls r0, r0, #4
	add r0, sl
	movs r1, #0xc0
	bl func_08008B6C
.L080C7210:
	ldr r4, [sp, #0x114]
	ldr r5, [sp, #0x130]
	adds r0, r4, r5
	ldr r0, [r0]
	add r1, sp, #0x30
	movs r2, #0
	bl func_0804EC84
	ldr r6, [sp, #0x104]
	lsls r4, r6, #6
	adds r0, r4, r6
	lsls r5, r0, #2
	mov r7, sl
	adds r1, r5, r7
	add r0, sp, #0xcc
	movs r6, #4
	movs r7, #2
	movs r2, #0
	mov r8, r2
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	bl func_0804E7A0
	ldr r0, [sp, #0x104]
	cmp r0, #2
	beq .L080C727E
	add r0, sp, #0x30
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r3, sl
	adds r1, r5, r3
	movs r3, #5
	add r0, sp, #0xd0
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	add r6, sp, #0x30
	str r6, [sp]
	mov r7, r8
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080C72AE
.L080C727E:
	add r0, sp, #0x30
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r3, #7
	add r0, sp, #0xd4
	strh r6, [r0]
	add r1, sp, #0x104
	ldrh r1, [r1]
	strh r1, [r0, #2]
	ldr r0, [r0]
	movs r1, #0xc6
	lsls r1, r1, #2
	add r1, sl
	add r5, sp, #0x30
	str r5, [sp]
	mov r6, r8
	str r6, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
.L080C72AE:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x104]
	adds r4, r4, r7
	lsls r4, r4, #2
	add r4, sl
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, .L080C730C @ =0x0000088C
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r2, r7, #3
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r1, .L080C7310 @ =0x06010000
	adds r2, r2, r1
	add r0, sp, #0x48
	adds r1, r4, #0
	bl func_08008F0C
	add r2, sp, #0x48
	mov sb, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, sb
	str r3, [sp, #0x118]
	cmp r1, r0
	beq .L080C7314
	cmp r1, #0
	beq .L080C7304
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C7304:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C73DC
	.align 2, 0
.L080C730C: .4byte 0x0000088C
.L080C7310: .4byte 0x06010000
.L080C7314:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x134]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C7330
	adds r0, r1, #0
.L080C7330:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C734E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C7352
	mov r0, r8
	bl func_080D3BC0
	b .L080C7352
.L080C734E:
	movs r0, #0
	mov r8, r0
.L080C7352:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x134]
	cmp r2, r4
	beq .L080C737A
.L080C7360:
	cmp r3, #0
	beq .L080C7370
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C7370:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x134]
	cmp r2, r6
	bne .L080C7360
.L080C737A:
	adds r6, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L080C7396
	cmp r6, #0
	beq .L080C7392
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C7392:
	adds r6, #0x10
	b .L080C73B8
.L080C7396:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080C73B6
.L080C739E:
	cmp r2, #0
	beq .L080C73AE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C73AE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C739E
.L080C73B6:
	adds r6, r2, #0
.L080C73B8:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C73C8
.L080C73C2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C73C2
.L080C73C8:
	cmp r0, #0
	beq .L080C73D0
	bl free
.L080C73D0:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r1, [sp, #0x138]
	str r1, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080C73DC:
	ldr r2, [sp, #0x114]
	ldr r3, [sp, #0x130]
	adds r0, r2, r3
	adds r1, r3, #0
	add r1, sp
	adds r1, #0x10
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne .L080C73F6
	ldr r4, [sp, #0x104]
	adds r4, #1
	str r4, [sp, #0x104]
.L080C73F6:
	movs r0, #9
	ldr r5, [sp, #0x10c]
	ands r0, r5
	cmp r0, #0
	bne .L080C7402
	b .L080C7604
.L080C7402:
	movs r6, #0
	str r6, [sp, #0xf4]
	mov r7, sp
	adds r7, #0x48
	str r7, [sp, #0x118]
	mov r0, sp
	adds r0, #0xe0
	str r0, [sp, #0x12c]
	mov r1, sp
	adds r1, #0xe4
	str r1, [sp, #0x110]
.L080C7418:
	ldr r2, [sp, #0xf4]
	lsls r0, r2, #2
	ldr r3, [sp, #0x114]
	adds r1, r3, r0
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	bl func_0804EC84
	ldr r5, [sp, #0xf4]
	lsls r4, r5, #6
	adds r0, r4, r5
	lsls r5, r0, #2
	mov r6, sl
	adds r1, r5, r6
	add r0, sp, #0xe0
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
	ldr r7, [sp, #0xf4]
	cmp r7, #2
	beq .L080C7492
	add r0, sp, #0x30
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r0, sl
	adds r1, r5, r0
	movs r3, #5
	movs r6, #4
	ldr r5, [sp, #0x110]
	strh r6, [r5]
	movs r7, #2
	strh r7, [r5, #2]
	ldr r0, [r5]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	add r6, sp, #0x30
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080C74C4
.L080C7492:
	add r0, sp, #0x30
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0xe8
	movs r3, #4
	strh r3, [r0]
	add r5, sp, #0xf4
	ldrh r5, [r5]
	strh r5, [r0, #2]
	ldr r0, [r0]
	add r6, sp, #0x30
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xc6
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080C74C4:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0xf4]
	adds r4, r4, r0
	lsls r4, r4, #2
	add r4, sl
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r0, .L080C7528 @ =0x0000088C
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0xf4]
	lsls r2, r3, #3
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r6, .L080C752C @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x48
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r7, [sp, #0x118]
	mov sb, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C7530
	cmp r1, #0
	beq .L080C7518
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C7518:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0xf4]
	adds r5, #1
	str r5, [sp, #0x120]
	b .L080C75FA
	.align 2, 0
.L080C7528: .4byte 0x0000088C
.L080C752C: .4byte 0x06010000
.L080C7530:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xf0
	str r0, [r1]
	ldr r0, [r5]
	ldr r6, [sp, #0x134]
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0xec
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C754C
	adds r0, r1, #0
.L080C754C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C756A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C756E
	mov r0, r8
	bl func_080D3BC0
	b .L080C756E
.L080C756A:
	movs r0, #0
	mov r8, r0
.L080C756E:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r7, [sp, #0xf4]
	adds r7, #1
	str r7, [sp, #0x120]
	b .L080C7592
.L080C757E:
	cmp r3, #0
	beq .L080C758E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C758E:
	adds r2, #0x10
	adds r3, #0x10
.L080C7592:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080C757E
	adds r6, r3, #0
	ldr r1, [sp, #0xf0]
	cmp r1, #1
	bne .L080C75B4
	cmp r6, #0
	beq .L080C75B0
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C75B0:
	adds r6, #0x10
	b .L080C75D6
.L080C75B4:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080C75D4
.L080C75BC:
	cmp r2, #0
	beq .L080C75CC
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C75CC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C75BC
.L080C75D4:
	adds r6, r2, #0
.L080C75D6:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C75E6
.L080C75E0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C75E0
.L080C75E6:
	cmp r0, #0
	beq .L080C75EE
	bl free
.L080C75EE:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080C75FA:
	ldr r0, [sp, #0x120]
	str r0, [sp, #0xf4]
	cmp r0, #3
	bgt .L080C7604
	b .L080C7418
.L080C7604:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne .L080C76AC
	ldr r2, [sp, #0x114]
	ldr r1, [r2, #4]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne .L080C76AC
	ldr r1, [r2, #8]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne .L080C76AC
	ldr r1, [r2, #0xc]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bne .L080C76AC
	ldr r1, .L080C7630 @ =0x000008A8
	add r1, sl
	movs r0, #2
	b .L080C76AA
	.align 2, 0
.L080C7630: .4byte 0x000008A8
.L080C7634:
	ldr r3, [sp, #0x100]
	adds r3, #1
	str r3, [sp, #0x100]
	cmp r3, #0x3c
	bne .L080C7672
	ldr r1, .L080C765C @ =0x0000096D
	add r1, sl
	movs r0, #1
	strb r0, [r1]
	ldr r0, .L080C7660 @ =0x0000096A
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C7668
	ldr r0, .L080C7664 @ =0x00000818
	add r0, sl
	movs r1, #0xb7
	bl func_08008B6C
	b .L080C7672
	.align 2, 0
.L080C765C: .4byte 0x0000096D
.L080C7660: .4byte 0x0000096A
.L080C7664: .4byte 0x00000818
.L080C7668:
	ldr r0, .L080C7684 @ =0x00000818
	add r0, sl
	movs r1, #0xb6
	bl func_08008B6C
.L080C7672:
	ldr r4, [sp, #0x100]
	cmp r4, #0xf0
	bne .L080C76AC
	movs r5, #0
	str r5, [sp, #0x100]
	ldr r1, .L080C7688 @ =0x000008A8
	add r1, sl
	movs r0, #3
	b .L080C76AA
	.align 2, 0
.L080C7684: .4byte 0x00000818
.L080C7688: .4byte 0x000008A8
.L080C768C:
	ldr r6, [sp, #0x100]
	adds r6, #1
	str r6, [sp, #0x100]
	movs r0, #9
	ldr r7, [sp, #0x10c]
	ands r0, r7
	cmp r0, #0
	bne .L080C76A4
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r6, r0
	bne .L080C76AC
.L080C76A4:
	ldr r1, .L080C76D0 @ =0x0000089C
	add r1, sl
	movs r0, #7
.L080C76AA:
	str r0, [r1]
.L080C76AC:
	mov r0, sl
	bl func_080C2D54
.L080C76B2:
	ldr r0, .L080C76D0 @ =0x0000089C
	add r0, sl
	ldr r0, [r0]
	cmp r0, #6
	bne .L080C76BE
	b .L080C70A8
.L080C76BE:
	add sp, #0x13c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C76D0: .4byte 0x0000089C

	thumb_func_start func_080C76D4
func_080C76D4: @ 0x080C76D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl func_080088C4
	adds r6, r0, #0
	ldr r1, .L080C76F8 @ =0x000008BC
	adds r0, r5, r1
	ldr r0, [r0]
	subs r0, #4
	cmp r0, #5
	bls .L080C76EC
	b .L080C7B12
.L080C76EC:
	lsls r0, r0, #2
	ldr r1, .L080C76FC @ =.L080C7700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C76F8: .4byte 0x000008BC
.L080C76FC: .4byte .L080C7700
.L080C7700: @ jump table
	.4byte .L080C7718 @ case 0
	.4byte .L080C77C4 @ case 1
	.4byte .L080C7844 @ case 2
	.4byte .L080C78EC @ case 3
	.4byte .L080C7990 @ case 4
	.4byte .L080C7AC0 @ case 5
.L080C7718:
	ldr r4, .L080C7768 @ =0x000008B4
	adds r2, r5, r4
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0x58
	bls .L080C77A4
	subs r0, #2
	strb r0, [r2]
	ldr r0, .L080C776C @ =0x000008B8
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L080C7778
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L080C7770 @ =0x000008B6
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq .L080C775A
	b .L080C7B12
.L080C775A:
	adds r4, #8
	adds r0, r5, r4
	str r1, [r0]
	ldr r0, .L080C7774 @ =0x000008C4
	adds r1, r5, r0
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C7768: .4byte 0x000008B4
.L080C776C: .4byte 0x000008B8
.L080C7770: .4byte 0x000008B6
.L080C7774: .4byte 0x000008C4
.L080C7778:
	cmp r2, #0
	beq .L080C777E
	b .L080C7B12
.L080C777E:
	movs r0, #0x20
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq .L080C778C
	b .L080C7B12
.L080C778C:
	ldr r2, .L080C779C @ =0x000008BC
	adds r0, r5, r2
	str r1, [r0]
	ldr r4, .L080C77A0 @ =0x000008C4
	adds r1, r5, r4
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C779C: .4byte 0x000008BC
.L080C77A0: .4byte 0x000008C4
.L080C77A4:
	cmp r1, #0x58
	beq .L080C77AA
	b .L080C7B12
.L080C77AA:
	ldr r0, .L080C77BC @ =0x000008BC
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	ldr r2, .L080C77C0 @ =0x000008C4
	adds r1, r5, r2
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C77BC: .4byte 0x000008BC
.L080C77C0: .4byte 0x000008C4
.L080C77C4:
	ldr r4, .L080C7808 @ =0x000008B4
	adds r2, r5, r4
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0x97
	bhi .L080C7826
	adds r0, #2
	strb r0, [r2]
	ldr r0, .L080C780C @ =0x000008B8
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0x10
	bne .L080C7814
	movs r0, #0
	strb r0, [r1]
	adds r4, #2
	adds r1, r5, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080C7800
	b .L080C7B12
.L080C7800:
	ldr r1, .L080C7810 @ =0x000008BC
	adds r0, r5, r1
	b .L080C7830
	.align 2, 0
.L080C7808: .4byte 0x000008B4
.L080C780C: .4byte 0x000008B8
.L080C7810: .4byte 0x000008BC
.L080C7814:
	cmp r2, #0
	beq .L080C781A
	b .L080C7B12
.L080C781A:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq .L080C7824
	b .L080C7B12
.L080C7824:
	b .L080C782C
.L080C7826:
	cmp r1, #0x98
	beq .L080C782C
	b .L080C7B12
.L080C782C:
	ldr r4, .L080C783C @ =0x000008BC
	adds r0, r5, r4
.L080C7830:
	movs r1, #1
	str r1, [r0]
	ldr r2, .L080C7840 @ =0x000008C4
	adds r0, r5, r2
	strb r1, [r0]
	b .L080C7B12
	.align 2, 0
.L080C783C: .4byte 0x000008BC
.L080C7840: .4byte 0x000008C4
.L080C7844:
	ldr r4, .L080C7894 @ =0x000008B5
	adds r2, r5, r4
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0x31
	bls .L080C78CC
	subs r0, #2
	strb r0, [r2]
	ldr r0, .L080C7898 @ =0x000008B9
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L080C78A4
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L080C789C @ =0x000008B7
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0
	beq .L080C7882
	b .L080C7B12
.L080C7882:
	adds r4, #7
	adds r1, r5, r4
	movs r0, #2
	str r0, [r1]
	ldr r0, .L080C78A0 @ =0x000008C4
	adds r1, r5, r0
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C7894: .4byte 0x000008B5
.L080C7898: .4byte 0x000008B9
.L080C789C: .4byte 0x000008B7
.L080C78A0: .4byte 0x000008C4
.L080C78A4:
	cmp r2, #0
	beq .L080C78AA
	b .L080C7B12
.L080C78AA:
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0
	beq .L080C78B4
	b .L080C7B12
.L080C78B4:
	ldr r2, .L080C78C4 @ =0x000008BC
	adds r1, r5, r2
	movs r0, #2
	str r0, [r1]
	ldr r4, .L080C78C8 @ =0x000008C4
	adds r1, r5, r4
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C78C4: .4byte 0x000008BC
.L080C78C8: .4byte 0x000008C4
.L080C78CC:
	cmp r1, #0x31
	beq .L080C78D2
	b .L080C7B12
.L080C78D2:
	ldr r0, .L080C78E4 @ =0x000008BC
	adds r1, r5, r0
	movs r0, #2
	str r0, [r1]
	ldr r2, .L080C78E8 @ =0x000008C4
	adds r1, r5, r2
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C78E4: .4byte 0x000008BC
.L080C78E8: .4byte 0x000008C4
.L080C78EC:
	ldr r4, .L080C7938 @ =0x000008B5
	adds r2, r5, r4
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0x70
	bhi .L080C7970
	adds r0, #2
	strb r0, [r2]
	ldr r0, .L080C793C @ =0x000008B9
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	bne .L080C7948
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L080C7940 @ =0x000008B7
	adds r1, r5, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq .L080C7926
	b .L080C7B12
.L080C7926:
	adds r4, #7
	adds r1, r5, r4
	movs r0, #3
	str r0, [r1]
	ldr r0, .L080C7944 @ =0x000008C4
	adds r1, r5, r0
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C7938: .4byte 0x000008B5
.L080C793C: .4byte 0x000008B9
.L080C7940: .4byte 0x000008B7
.L080C7944: .4byte 0x000008C4
.L080C7948:
	cmp r0, #0
	beq .L080C794E
	b .L080C7B12
.L080C794E:
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq .L080C7958
	b .L080C7B12
.L080C7958:
	ldr r2, .L080C7968 @ =0x000008BC
	adds r1, r5, r2
	movs r0, #3
	str r0, [r1]
	ldr r4, .L080C796C @ =0x000008C4
	adds r1, r5, r4
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C7968: .4byte 0x000008BC
.L080C796C: .4byte 0x000008C4
.L080C7970:
	cmp r1, #0x71
	beq .L080C7976
	b .L080C7B12
.L080C7976:
	ldr r0, .L080C7988 @ =0x000008BC
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	ldr r2, .L080C798C @ =0x000008C4
	adds r1, r5, r2
	movs r0, #1
	b .L080C7B10
	.align 2, 0
.L080C7988: .4byte 0x000008BC
.L080C798C: .4byte 0x000008C4
.L080C7990:
	ldr r4, .L080C79C0 @ =0x000008B6
	adds r2, r5, r4
	ldr r1, .L080C79C4 @ =0x000008B7
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r1, r0, r2
	ldr r2, .L080C79C8 @ =0x00000979
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C79D0
	adds r4, #0xf
	adds r1, r5, r4
	movs r0, #1
	strb r0, [r1]
	ldr r0, .L080C79CC @ =0x000008B5
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	b .L080C7A0E
	.align 2, 0
.L080C79C0: .4byte 0x000008B6
.L080C79C4: .4byte 0x000008B7
.L080C79C8: .4byte 0x00000979
.L080C79CC: .4byte 0x000008B5
.L080C79D0:
	cmp r0, #0x14
	bne .L080C79E8
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r1, .L080C79E4 @ =0x00000904
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b .L080C7A0E
	.align 2, 0
.L080C79E4: .4byte 0x00000904
.L080C79E8:
	cmp r0, #0x32
	bne .L080C7A0E
	ldr r2, .L080C7A94 @ =0x00000969
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C7A0E
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, .L080C7A98 @ =0x00000905
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #0x6c
	bl func_08008B6C
.L080C7A0E:
	ldr r4, .L080C7A9C @ =0x00000979
	adds r2, r5, r4
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne .L080C7B12
	ldr r0, .L080C7AA0 @ =0x000008B5
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #0xa
	strb r0, [r1]
	ldr r1, .L080C7AA4 @ =0x000008C5
	adds r0, r5, r1
	strb r3, [r0]
	strb r3, [r2]
	ldr r2, .L080C7AA8 @ =0x000008BC
	adds r1, r5, r2
	subs r4, #0xb9
	adds r0, r5, r4
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, .L080C7AAC @ =0x000008C4
	adds r0, r5, r1
	movs r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq .L080C7A56
	adds r2, #0xac
	adds r0, r5, r2
	strb r3, [r0]
.L080C7A56:
	ldr r4, .L080C7AB0 @ =0x0000097F
	adds r2, r5, r4
	ldr r1, .L080C7AB4 @ =gUnk_08107FE0
	subs r4, #0xcf
	adds r0, r5, r4
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne .L080C7B12
	strb r3, [r2]
	ldr r0, .L080C7AB8 @ =0x0000089C
	adds r1, r5, r0
	movs r0, #5
	str r0, [r1]
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	bl func_08008C28
	ldr r2, .L080C7ABC @ =0x00000818
	adds r0, r5, r2
	movs r1, #0xbb
	bl func_08008B6C
	b .L080C7B12
	.align 2, 0
.L080C7A94: .4byte 0x00000969
.L080C7A98: .4byte 0x00000905
.L080C7A9C: .4byte 0x00000979
.L080C7AA0: .4byte 0x000008B5
.L080C7AA4: .4byte 0x000008C5
.L080C7AA8: .4byte 0x000008BC
.L080C7AAC: .4byte 0x000008C4
.L080C7AB0: .4byte 0x0000097F
.L080C7AB4: .4byte gUnk_08107FE0
.L080C7AB8: .4byte 0x0000089C
.L080C7ABC: .4byte 0x00000818
.L080C7AC0:
	ldr r4, .L080C7B2C @ =0x0000097A
	adds r1, r5, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne .L080C7B12
	movs r0, #0
	strb r0, [r1]
	ldr r0, .L080C7B30 @ =0x000008BC
	adds r1, r5, r0
	movs r2, #0x8c
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1]
	subs r4, #0xb6
	adds r0, r5, r4
	movs r4, #1
	strb r4, [r0]
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r2, r5, r0
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	movs r1, #6
	bl func_0805E860
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq .L080C7B12
	ldr r2, .L080C7B34 @ =0x00000968
	adds r1, r5, r2
	movs r0, #0
.L080C7B10:
	strb r0, [r1]
.L080C7B12:
	ldr r4, .L080C7B34 @ =0x00000968
	adds r1, r5, r4
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080C7B26
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	bne .L080C7B26
	strb r0, [r1]
.L080C7B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080C7B2C: .4byte 0x0000097A
.L080C7B30: .4byte 0x000008BC
.L080C7B34: .4byte 0x00000968

	thumb_func_start func_080C7B38
func_080C7B38: @ 0x080C7B38
	ldr r2, .L080C7B5C @ =gUnk_08108268
	ldr r3, .L080C7B60 @ =0x000008BC
	adds r1, r0, r3
	ldr r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0x98
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
.L080C7B5C: .4byte gUnk_08108268
.L080C7B60: .4byte 0x000008BC

	thumb_func_start func_080C7B64
func_080C7B64: @ 0x080C7B64
	ldr r1, .L080C7B74 @ =gUnk_0810827C
	ldr r2, .L080C7B78 @ =0x00000984
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080C7B74: .4byte gUnk_0810827C
.L080C7B78: .4byte 0x00000984

	thumb_func_start func_080C7B7C
func_080C7B7C: @ 0x080C7B7C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, .L080C7BE8 @ =0xFFFFFF00
	ands r3, r4
	orrs r3, r2
	ldr r0, .L080C7BEC @ =0xFFFF00FF
	ands r3, r0
	adds r1, r3, #0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls .L080C7BBC
	adds r2, r4, #0
.L080C7B9A:
	subs r0, r1, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ands r3, r2
	orrs r3, r0
	lsrs r0, r3, #8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, .L080C7BEC @ =0xFFFF00FF
	ands r3, r1
	orrs r3, r0
	adds r1, r3, #0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi .L080C7B9A
.L080C7BBC:
	lsls r0, r3, #0x1c
	movs r1, #0xa0
	lsls r1, r1, #0x17
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	ldr r1, .L080C7BE8 @ =0xFFFFFF00
	ands r3, r1
	orrs r3, r0
	lsrs r0, r3, #8
	lsls r0, r0, #0x1c
	movs r1, #0xa0
	lsls r1, r1, #0x16
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r1, .L080C7BEC @ =0xFFFF00FF
	ands r3, r1
	orrs r3, r0
	str r3, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080C7BE8: .4byte 0xFFFFFF00
.L080C7BEC: .4byte 0xFFFF00FF

	thumb_func_start func_080C7BF0
func_080C7BF0: @ 0x080C7BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	bl func_080088C4
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L080C7C08
	b .L080C7D60
.L080C7C08:
	ldr r1, .L080C7C84 @ =0x000008BC
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #3
	ble .L080C7C14
	b .L080C7D60
.L080C7C14:
	ldr r2, .L080C7C88 @ =0x00000968
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C7C20
	b .L080C7D60
.L080C7C20:
	subs r2, #0xa8
	adds r0, r4, r2
	str r1, [r0]
	ldr r0, .L080C7C8C @ =0x0000096F
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, .L080C7C90 @ =0x000008B6
	adds r2, r4, r1
	adds r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r2, r2, r0
	mov sb, r2
	movs r2, #0
	mov r8, r2
	ldr r0, .L080C7C94 @ =0x00000978
	adds r2, r4, r0
	ldr r1, .L080C7C84 @ =0x000008BC
	adds r7, r4, r1
	subs r0, #0xb4
	adds r0, r0, r4
	mov ip, r0
	movs r6, #1
	adds r1, #0xd
	adds r5, r4, r1
	ldr r0, .L080C7C98 @ =0x000008C8
	adds r1, r4, r0
	adds r0, #0xa1
	adds r3, r4, r0
.L080C7C64:
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080C7C9C
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #9
	str r0, [r7]
	mov r1, ip
	strb r6, [r1]
	strb r6, [r3]
	movs r2, #0x82
	lsls r2, r2, #4
	adds r0, r4, r2
	b .L080C7CBE
	.align 2, 0
.L080C7C84: .4byte 0x000008BC
.L080C7C88: .4byte 0x00000968
.L080C7C8C: .4byte 0x0000096F
.L080C7C90: .4byte 0x000008B6
.L080C7C94: .4byte 0x00000978
.L080C7C98: .4byte 0x000008C8
.L080C7C9C:
	ldrb r0, [r1, #2]
	cmp r0, sb
	bne .L080C7D20
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L080C7CC6
	movs r0, #9
	str r0, [r7]
	mov r0, ip
	strb r6, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	strb r6, [r3]
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r4, r1
.L080C7CBE:
	movs r1, #0xc7
	bl func_08008B6C
	b .L080C7D2E
.L080C7CC6:
	strb r6, [r5]
	ldr r2, .L080C7CE8 @ =0x0000096F
	adds r0, r4, r2
	ldrb r0, [r0]
	subs r0, #1
	cmp r8, r0
	bne .L080C7CEC
	ldrb r0, [r3]
	cmp r0, #0
	bne .L080C7CEC
	movs r0, #0x97
	lsls r0, r0, #4
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b .L080C7CEE
	.align 2, 0
.L080C7CE8: .4byte 0x0000096F
.L080C7CEC:
	strb r6, [r3]
.L080C7CEE:
	movs r0, #8
	str r0, [r7]
	mov r1, ip
	strb r6, [r1]
	movs r2, #0x82
	lsls r2, r2, #4
	adds r0, r4, r2
	movs r1, #0xbc
	bl func_08008B6C
	ldr r1, .L080C7D18 @ =0x00000818
	adds r0, r4, r1
	movs r1, #0xbe
	bl func_08008B6C
	ldr r2, .L080C7D1C @ =0x0000097F
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b .L080C7D2E
	.align 2, 0
.L080C7D18: .4byte 0x00000818
.L080C7D1C: .4byte 0x0000097F
.L080C7D20:
	adds r5, #4
	adds r1, #4
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #0xe
	ble .L080C7C64
.L080C7D2E:
	mov r1, r8
	cmp r1, #0xf
	bne .L080C7D60
	ldr r2, .L080C7D6C @ =0x00000978
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, .L080C7D70 @ =0x000008BC
	adds r1, r4, r0
	movs r0, #9
	str r0, [r1]
	ldr r1, .L080C7D74 @ =0x000008C4
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	subs r2, #0xf
	adds r0, r4, r2
	strb r1, [r0]
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0xc7
	bl func_08008B6C
.L080C7D60:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C7D6C: .4byte 0x00000978
.L080C7D70: .4byte 0x000008BC
.L080C7D74: .4byte 0x000008C4

	thumb_func_start func_080C7D78
func_080C7D78: @ 0x080C7D78
	push {r4, lr}
	adds r4, r0, #0
	bl func_080088CC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq .L080C7DF2
	ldr r1, .L080C7DA4 @ =0x0000081C
	adds r0, r4, r1
	movs r1, #0xb8
	bl func_08008B6C
	ldr r2, .L080C7DA8 @ =0x000008A4
	adds r1, r4, r2
	ldr r2, [r1]
	cmp r2, #0
	beq .L080C7DAC
	cmp r2, #1
	beq .L080C7DCE
	b .L080C7DF2
	.align 2, 0
.L080C7DA4: .4byte 0x0000081C
.L080C7DA8: .4byte 0x000008A4
.L080C7DAC:
	movs r0, #1
	str r0, [r1]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	strh r2, [r0, #0x10]
	subs r1, #0x50
	adds r0, r4, r1
	ldr r0, [r0]
	strh r2, [r0, #0x10]
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	strh r2, [r0, #0x10]
	b .L080C7DF2
.L080C7DCE:
	movs r0, #0
	str r0, [r1]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	subs r2, #0x50
	adds r0, r4, r2
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r0, r4, r2
	ldr r0, [r0]
	strh r1, [r0, #0x10]
.L080C7DF2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080C7DF8
func_080C7DF8: @ 0x080C7DF8
	push {r4, lr}
	adds r4, r0, #0
	bl func_080088C4
	adds r2, r0, #0
	ldr r0, .L080C7E28 @ =0x000008BC
	adds r3, r4, r0
	ldr r1, [r3]
	cmp r1, #7
	bgt .L080C7E9A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq .L080C7E2C
	cmp r1, #6
	beq .L080C7E2C
	cmp r1, #7
	beq .L080C7E2C
	cmp r1, #4
	beq .L080C7E2C
	movs r0, #4
	str r0, [r3]
	b .L080C7E92
	.align 2, 0
.L080C7E28: .4byte 0x000008BC
.L080C7E2C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq .L080C7E50
	ldr r0, .L080C7E4C @ =0x000008BC
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #6
	beq .L080C7E50
	cmp r0, #7
	beq .L080C7E50
	cmp r0, #5
	beq .L080C7E50
	movs r0, #5
	b .L080C7E90
	.align 2, 0
.L080C7E4C: .4byte 0x000008BC
.L080C7E50:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq .L080C7E74
	ldr r0, .L080C7E70 @ =0x000008BC
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #4
	beq .L080C7E74
	cmp r0, #5
	beq .L080C7E74
	cmp r0, #6
	beq .L080C7E74
	movs r0, #6
	b .L080C7E90
	.align 2, 0
.L080C7E70: .4byte 0x000008BC
.L080C7E74:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq .L080C7E9A
	ldr r0, .L080C7EA0 @ =0x000008BC
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #4
	beq .L080C7E9A
	cmp r0, #5
	beq .L080C7E9A
	cmp r0, #7
	beq .L080C7E9A
	movs r0, #7
.L080C7E90:
	str r0, [r1]
.L080C7E92:
	ldr r0, .L080C7EA4 @ =0x000008C4
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
.L080C7E9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080C7EA0: .4byte 0x000008BC
.L080C7EA4: .4byte 0x000008C4
