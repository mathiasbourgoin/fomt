	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

.L0807D0B4:
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x0D, 0x48, 0x20, 0x60, 0xA1, 0x68
	.byte 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x56, 0xF0, 0x22, 0xFC
	.byte 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x56, 0xF0
	.byte 0x19, 0xFC, 0x20, 0x1C, 0x29, 0x1C, 0x83, 0xF7, 0x81, 0xFB, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xF8, 0x7B, 0x0E, 0x08, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x85, 0xB0, 0x80, 0x46
	.byte 0x0F, 0x1C, 0x78, 0x68, 0xFE, 0xF7, 0xE0, 0xFE, 0x06, 0x1C, 0x01, 0x20, 0x40, 0x42, 0x86, 0x42
	.byte 0x32, 0xD0, 0x10, 0x20, 0x83, 0xF7, 0x5E, 0xFA, 0xBD, 0x68, 0x00, 0x24, 0xBC, 0x60, 0x01, 0xA9
	.byte 0x89, 0x46, 0x3A, 0x69, 0x01, 0x23, 0x12, 0x49, 0x01, 0x60, 0x01, 0x94, 0x45, 0x60, 0x82, 0x60
	.byte 0xC3, 0x60, 0x00, 0x90, 0x14, 0x20, 0x83, 0xF7, 0x4D, 0xFA, 0x00, 0x9D, 0x00, 0x94, 0x3A, 0x69
	.byte 0x03, 0x23, 0x0C, 0x49, 0x01, 0x60, 0x02, 0x94, 0x45, 0x60, 0x82, 0x60, 0xC3, 0x60, 0x06, 0x74
	.byte 0x49, 0x46, 0x03, 0x91, 0x04, 0x90, 0x01, 0x94, 0x41, 0x46, 0x08, 0x60, 0x00, 0x99, 0x00, 0x29
	.byte 0x0F, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x56, 0xF0, 0xD3, 0xFB, 0x08, 0xE0
	.byte 0xA4, 0x5D, 0x0E, 0x08, 0x64, 0x5C, 0x0E, 0x08, 0xB9, 0x68, 0x00, 0x20, 0xB8, 0x60, 0x40, 0x46
	.byte 0x01, 0x60, 0x40, 0x46, 0x05, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_0807D194
func_0807D194: @ 0x0807D194
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L0807D1C0 @ =vtable_unk_080E7C14
	str r0, [r4, #4]
	ldr r1, .L0807D1C4 @ =0x000006A4
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0807D1C0: .4byte vtable_unk_080E7C14
.L0807D1C4: .4byte 0x000006A4
.L0807D1C8:
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x42, 0x60, 0x4B, 0xF0
	.byte 0xC7, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x14, 0x7C, 0x0E, 0x08

	thumb_func_start func_0807D1DC
func_0807D1DC: @ 0x0807D1DC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, .L0807D214 @ =gUnk_080FDDD8
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r0]
	mov r0, sp
	bl __4ToolUi
	mov r0, sp
	bl GetDesc__C4Tool
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CABEC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0807D214: .4byte gUnk_080FDDD8

	thumb_func_start func_0807D218
func_0807D218: @ 0x0807D218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	ldr r0, [r7, #8]
	adds r4, r0, #0
	adds r4, #0x54
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	cmp r2, #1
	beq .L0807D32A
	cmp r2, #1
	bgt .L0807D24A
	cmp r2, #0
	beq .L0807D252
	b .L0807D506
.L0807D24A:
	cmp r2, #2
	bne .L0807D250
	b .L0807D40C
.L0807D250:
	b .L0807D506
.L0807D252:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D270
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807D26A
	str r2, [r0]
.L0807D26A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D270:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D290
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D28A
	movs r0, #1
	str r0, [r2]
.L0807D28A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D290:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D2B0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D2AA
	movs r0, #2
	str r0, [r2]
.L0807D2AA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D2B0:
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D2CE
	adds r0, r4, #0
	movs r1, #0
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D2CE
	movs r5, #1
.L0807D2CE:
	adds r0, r4, #0
	movs r1, #1
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D2EA
	adds r0, r4, #0
	movs r1, #1
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D2EA
	adds r5, #1
.L0807D2EA:
	adds r0, r4, #0
	movs r1, #2
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D306
	adds r0, r4, #0
	movs r1, #2
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D306
	adds r5, #1
.L0807D306:
	cmp r5, #3
	beq .L0807D30C
	b .L0807D4E6
.L0807D30C:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bls .L0807D31A
	b .L0807D4E6
.L0807D31A:
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	bne .L0807D326
	b .L0807D4E0
.L0807D326:
	str r5, [r0]
	b .L0807D4E0
.L0807D32A:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D34A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D344
	movs r0, #4
	str r0, [r2]
.L0807D344:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D34A:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D36A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D364
	movs r0, #5
	str r0, [r2]
.L0807D364:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D36A:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D38A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D384
	movs r0, #6
	str r0, [r2]
.L0807D384:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D38A:
	movs r5, #0
	adds r0, r4, #0
	movs r1, #5
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D3A8
	adds r0, r4, #0
	movs r1, #5
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D3A8
	movs r5, #1
.L0807D3A8:
	adds r0, r4, #0
	movs r1, #6
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D3C4
	adds r0, r4, #0
	movs r1, #6
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D3C4
	adds r5, #1
.L0807D3C4:
	adds r0, r4, #0
	movs r1, #7
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D3E0
	adds r0, r4, #0
	movs r1, #7
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D3E0
	adds r5, #1
.L0807D3E0:
	cmp r5, #3
	bne .L0807D404
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D404
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D3FE
	movs r0, #7
	str r0, [r2]
.L0807D3FE:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D404:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	b .L0807D4EC
.L0807D40C:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D42C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D426
	movs r0, #8
	str r0, [r2]
.L0807D426:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D42C:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D44C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D446
	movs r0, #9
	str r0, [r2]
.L0807D446:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D44C:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D46C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D466
	movs r0, #0xa
	str r0, [r2]
.L0807D466:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D46C:
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D48A
	adds r0, r4, #0
	movs r1, #0xa
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D48A
	movs r5, #1
.L0807D48A:
	adds r0, r4, #0
	movs r1, #0xb
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D4A6
	adds r0, r4, #0
	movs r1, #0xb
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D4A6
	adds r5, #1
.L0807D4A6:
	adds r0, r4, #0
	movs r1, #0xc
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D4C2
	adds r0, r4, #0
	movs r1, #0xc
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D4C2
	adds r5, #1
.L0807D4C2:
	cmp r5, #3
	bne .L0807D4E6
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D4E6
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D4E0
	movs r0, #0xb
	str r0, [r2]
.L0807D4E0:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D4E6:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
.L0807D4EC:
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D506
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D500
	movs r0, #0xc
	str r0, [r2]
.L0807D500:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D506:
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r1, #4
	mov sl, r1
	add r6, sp, #0x18
	ldr r1, .L0807D71C @ =gUnk_086678A0
	adds r0, r6, #0
	bl func_0805E6CC
	add r0, sp, #0x48
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x4c
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x60
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
	add r0, sp, #0x7c
	strb r5, [r0]
	add r3, sp, #0x80
	str r4, [sp, #0x80]
	strh r4, [r3, #4]
	add r2, sp, #0x88
	str r4, [r2]
	strh r4, [r2, #4]
	add r1, sp, #0x90
	str r4, [r1]
	strh r4, [r1, #4]
	add r0, sp, #0x98
	str r4, [r0]
	strh r4, [r0, #4]
	movs r6, #0
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	adds r1, #0x10
	str r1, [sp, #0xe4]
	cmp r6, r0
	bhs .L0807D666
	adds r2, r4, #0
	adds r2, r7, r2
	str r2, [sp, #0xd4]
	adds r3, r7, #0
	adds r3, #0x20
	str r3, [sp, #0xd8]
	add r4, sp, #0xc4
	mov sb, r4
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r5, r7, r0
	add r1, sp, #0x4c
	mov r8, r1
.L0807D58E:
	add r1, sp, #8
	mov r2, sl
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #3
	ldr r1, .L0807D720 @ =gUnk_080FDDD8
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #0xc4
	str r0, [r2]
	str r1, [r2, #4]
	add r4, sp, #0xc0
	ldr r1, [r2]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	bl func_0805E860
	ldr r1, [sp, #0x4c]
	ldr r3, [r1]
	mov r4, r8
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0xe4]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x80
	ldr r0, [sp, #0xe4]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0807D620
	lsls r0, r0, #4
	adds r0, #4
	ldr r4, [sp, #0xd8]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807D61A
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807D61A:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0807D620:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	mov r0, sl
	lsls r4, r0, #6
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, sb
	ldr r0, [r2, #4]
	movs r3, #0x20
	str r3, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r0, #2
	add sl, r0
	adds r5, #4
	adds r6, #1
	ldr r1, [sp, #0xd4]
	ldr r0, [r1]
	cmp r6, r0
	blo .L0807D58E
.L0807D666:
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075C88
	ldr r0, [r7, #0x1c]
	mov r1, sl
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807D1DC
	adds r0, r7, #0
	bl func_08008918
	movs r1, #0x3f
	ldr r3, [sp, #0xe4]
	strh r1, [r3]
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0807D724 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	ldr r0, [sp, #0xe4]
	str r4, [r0]
	ldr r1, .L0807D728 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0xe4]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r4, #0
	str r4, [sp, #0xdc]
.L0807D6E0:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [sp, #0xe4]
	ldr r3, [r0]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807D6FC
	b .L0807DD08
.L0807D6FC:
	ldr r1, [sp, #0xdc]
	cmp r1, #0
	beq .L0807D704
	b .L0807DD14
.L0807D704:
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #4
	bls .L0807D712
	b .L0807DD08
.L0807D712:
	lsls r0, r0, #2
	ldr r1, .L0807D72C @ =.L0807D730
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807D71C: .4byte gUnk_086678A0
.L0807D720: .4byte gUnk_080FDDD8
.L0807D724: .4byte vtable_unk_080E5B80
.L0807D728: .4byte 0x00000889
.L0807D72C: .4byte .L0807D730
.L0807D730: @ jump table
	.4byte .L0807D744 @ case 0
	.4byte .L0807DAA0 @ case 1
	.4byte .L0807DAD4 @ case 2
	.4byte .L0807DAFC @ case 3
	.4byte .L0807DCCC @ case 4
.L0807D744:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807D752
	adds r0, r7, #0
	bl func_0807D1DC
.L0807D752:
	ldr r3, .L0807D7B4 @ =0x000006A1
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807D75E
	b .L0807DA30
.L0807D75E:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807D7B8 @ =gUnk_080FDDD8
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r4, #4]
	str r0, [sp, #0xe0]
	ldr r0, [r7, #8]
	ldr r1, .L0807D7BC @ =0x00001C38
	adds r0, r0, r1
	ldr r1, [r4]
	bl GetAvailableSpaceForTool__C8RucksackUi
	adds r5, r0, #0
	ldr r0, [r7, #8]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r4]
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r5, r5, r0
	ldr r0, [r7, #8]
	ldr r6, .L0807D7C0 @ =0x00001C34
	adds r0, r0, r6
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sb, r4
	cmp r0, #0
	beq .L0807D7C4
	adds r5, #0x63
	b .L0807D7F6
	.align 2, 0
.L0807D7B4: .4byte 0x000006A1
.L0807D7B8: .4byte gUnk_080FDDD8
.L0807D7BC: .4byte 0x00001C38
.L0807D7C0: .4byte 0x00001C34
.L0807D7C4:
	ldr r0, [r7, #8]
	ldr r3, .L0807D898 @ =0x00001C34
	adds r0, r0, r3
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0xcc
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	mov r4, sb
	ldr r1, [r4]
	cmp r0, r1
	bne .L0807D7E4
	movs r2, #1
.L0807D7E4:
	cmp r2, #0
	beq .L0807D7F6
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	adds r1, r5, #0
	adds r1, #0x63
	subs r5, r1, r0
.L0807D7F6:
	ldr r0, [r7, #8]
	ldr r1, .L0807D89C @ =0x00001C38
	adds r0, r0, r1
	mov r2, sb
	ldr r1, [r2]
	bl GetAmountOfTool__C8RucksackUi
	mov r8, r0
	movs r3, #0
	mov sl, r3
	ldr r0, [r7, #8]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r0, r0, r4
	add r1, sp, #0xc4
	ldr r1, [r1]
	bl GetAmountOf__C9ToolChestUi
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ldr r6, .L0807D898 @ =0x00001C34
	adds r0, r0, r6
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807D85A
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xcd
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	mov r3, sb
	ldr r1, [r3]
	cmp r0, r1
	bne .L0807D84C
	movs r2, #1
.L0807D84C:
	cmp r2, #0
	beq .L0807D85A
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	mov sl, r0
.L0807D85A:
	mov r0, r8
	add r0, sl
	adds r0, r0, r4
	add r1, sp, #0xa4
	movs r2, #7
	bl func_0804EC84
	ldr r0, [r7, #8]
	ldr r4, .L0807D8A0 @ =0x00001AA8
	adds r0, r0, r4
	ldr r1, [r0]
	movs r2, #0
	mov r3, sb
	ldr r0, [r3, #4]
	cmp r1, r0
	blo .L0807D87C
	movs r2, #1
.L0807D87C:
	cmp r2, #0
	bne .L0807D882
	b .L0807DA0C
.L0807D882:
	cmp r5, #0
	bne .L0807D8A8
	ldr r1, .L0807D8A4 @ =gUnk_080FDE40
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #2
	b .L0807DA84
	.align 2, 0
.L0807D898: .4byte 0x00001C34
.L0807D89C: .4byte 0x00001C38
.L0807D8A0: .4byte 0x00001AA8
.L0807D8A4: .4byte gUnk_080FDE40
.L0807D8A8:
	ldr r1, .L0807D9F8 @ =0x00000684
	adds r0, r7, r1
	ldr r1, [sp, #0xe0]
	adds r2, r5, #0
	movs r3, #5
	bl func_080CA8B4
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #3
	str r0, [r1]
	mov r5, sp
	adds r5, #0xce
	mov r3, sb
	ldr r1, [r3]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r0, .L0807D9FC @ =0x000006A4
	adds r4, r7, r0
	movs r1, #0
	mov sl, r1
	mov r2, sl
	strb r2, [r4]
	adds r0, r5, #0
	bl GetName__C4Tool
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D916
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D904
	adds r5, r6, #0
.L0807D904:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r1, r8
	adds r0, r1, r5
	mov r2, sl
	strb r2, [r0]
.L0807D916:
	ldr r3, .L0807DA00 @ =gUnk_080FDE70
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D94C
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D93A
	adds r5, r6, #0
.L0807D93A:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807D94C:
	ldr r0, .L0807DA04 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D984
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D972
	adds r5, r6, #0
.L0807D972:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807D984:
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D9B6
	add r0, sp, #0xa4
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D9A4
	adds r5, r6, #0
.L0807D9A4:
	mov r0, r8
	add r1, sp, #0xa4
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807D9B6:
	ldr r0, .L0807DA08 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807D9EA
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807D9DA
	adds r4, r5, #0
.L0807D9DA:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807D9EA:
	ldr r3, .L0807D9FC @ =0x000006A4
	adds r1, r7, r3
	adds r0, r7, #0
	bl func_080CABEC
	b .L0807DA86
	.align 2, 0
.L0807D9F8: .4byte 0x00000684
.L0807D9FC: .4byte 0x000006A4
.L0807DA00: .4byte gUnk_080FDE70
.L0807DA04: .4byte gUnk_08117828
.L0807DA08: .4byte gUnk_08117814
.L0807DA0C:
	ldr r1, .L0807DA2C @ =gUnk_080FDE78
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x46
	bl func_08050E50
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #2
	b .L0807DA84
	.align 2, 0
.L0807DA2C: .4byte gUnk_080FDE78
.L0807DA30:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807DA86
	ldr r1, .L0807DA60 @ =0x0000070C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807DA68
	ldr r1, .L0807DA64 @ =gUnk_080FDEAC
	adds r0, r7, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x43
	bl func_08050E50
	b .L0807DA7C
	.align 2, 0
.L0807DA60: .4byte 0x0000070C
.L0807DA64: .4byte gUnk_080FDEAC
.L0807DA68:
	ldr r1, .L0807DA9C @ =gUnk_080FDEC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x46
	bl func_08050E50
.L0807DA7C:
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #4
.L0807DA84:
	str r0, [r1]
.L0807DA86:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	b .L0807DD08
	.align 2, 0
.L0807DA9C: .4byte gUnk_080FDEC4
.L0807DAA0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807DAAE
	b .L0807DD08
.L0807DAAE:
	ldr r1, .L0807DAD0 @ =gUnk_080FDEDC
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x43
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	b .L0807DD08
	.align 2, 0
.L0807DAD0: .4byte gUnk_080FDEDC
.L0807DAD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807DAE2
	b .L0807DD08
.L0807DAE2:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	bl func_08050E5C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r7, #0x14]
	b .L0807DD08
.L0807DAFC:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0807DB0E
	b .L0807DC88
.L0807DB0E:
	ldr r4, .L0807DB98 @ =0x00000684
	adds r0, r7, r4
	ldr r1, [r0, #0x14]
	mov r8, r1
	movs r6, #1
	bl func_080CAAF4
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807D1DC
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807DB9C @ =gUnk_080FDDD8
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r7, #8]
	ldr r3, .L0807DBA0 @ =0x00001AA8
	adds r0, r0, r3
	ldr r1, [r4, #4]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	ldr r5, .L0807DBA4 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sb, r4
	cmp r0, #0
	beq .L0807DBA8
	ldr r5, [r7, #8]
	ldr r3, .L0807DBA4 @ =0x00001C34
	adds r5, r5, r3
	add r6, sp, #0xa4
	mov r4, sp
	adds r4, #0xcf
	mov r0, sb
	ldr r1, [r0]
	adds r0, r4, #0
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	mov r2, r8
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	b .L0807DC58
	.align 2, 0
.L0807DB98: .4byte 0x00000684
.L0807DB9C: .4byte gUnk_080FDDD8
.L0807DBA0: .4byte 0x00001AA8
.L0807DBA4: .4byte 0x00001C34
.L0807DBA8:
	ldr r0, [r7, #8]
	ldr r1, .L0807DBF4 @ =0x00001C34
	adds r0, r0, r1
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0xd0
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	mov r3, sb
	ldr r1, [r3]
	cmp r0, r1
	bne .L0807DBC8
	movs r2, #1
.L0807DBC8:
	cmp r2, #0
	beq .L0807DC06
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r8, r4
	bls .L0807DBF8
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r0, r8
	subs r0, r0, r4
	mov r8, r0
	cmp r4, #0
	beq .L0807DC06
	movs r6, #0
	b .L0807DC06
	.align 2, 0
.L0807DBF4: .4byte 0x00001C34
.L0807DBF8:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	mov r1, r8
	bl AddAmount__9ToolStackUi
	movs r1, #0
	mov r8, r1
.L0807DC06:
	mov r2, r8
	cmp r2, #0
	beq .L0807DC58
	ldr r0, [r7, #8]
	ldr r3, .L0807DC40 @ =0x00001C38
	adds r0, r0, r3
	mov r4, sb
	ldr r1, [r4]
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r8, r2
	bls .L0807DC22
	movs r6, #0
.L0807DC22:
	cmp r2, #0
	beq .L0807DC58
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, sb
	ldr r1, [r3]
	bl AddAmountOf__9ToolChestUiUi
	cmp r6, #0
	beq .L0807DC48
	ldr r1, .L0807DC44 @ =gUnk_080FDEF8
	b .L0807DC4A
	.align 2, 0
.L0807DC40: .4byte 0x00001C38
.L0807DC44: .4byte gUnk_080FDEF8
.L0807DC48:
	ldr r1, .L0807DC54 @ =gUnk_080FDF50
.L0807DC4A:
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807DC60
	.align 2, 0
.L0807DC54: .4byte gUnk_080FDF50
.L0807DC58:
	ldr r1, .L0807DC80 @ =gUnk_080FDEAC
	adds r0, r7, #0
	bl func_080CABA0
.L0807DC60:
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x44
	bl func_08050E50
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L0807DC84 @ =0x0000070C
	adds r0, r7, r2
	strb r1, [r0]
	b .L0807DD08
	.align 2, 0
.L0807DC80: .4byte gUnk_080FDEAC
.L0807DC84: .4byte 0x0000070C
.L0807DC88:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807DCB4
	ldr r3, .L0807DCB0 @ =0x00000684
	adds r0, r7, r3
	bl func_080CAAF4
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	str r4, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807D1DC
	b .L0807DD08
	.align 2, 0
.L0807DCB0: .4byte 0x00000684
.L0807DCB4:
	ldr r2, .L0807DCC8 @ =0x00000684
	adds r1, r7, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L0807DD08
	adds r0, r1, #0
	bl func_080CA98C
	b .L0807DD08
	.align 2, 0
.L0807DCC8: .4byte 0x00000684
.L0807DCCC:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807DD08
	ldr r4, [sp, #0xe4]
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0807DD08
	movs r0, #1
	str r0, [sp, #0xdc]
	ldr r1, .L0807DD10 @ =0x00000889
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
.L0807DD08:
	adds r0, r7, #0
	bl func_080C96C4
	b .L0807D6E0
	.align 2, 0
.L0807DD10: .4byte 0x00000889
.L0807DD14:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L0807DD34 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807DD34: .4byte vtable_unk_080E5A28
