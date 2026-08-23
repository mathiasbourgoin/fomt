    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0803A8A4
func_0803A8A4: @ 0x0803A8A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, [sp, #0x10]
	adds r1, r5, #0
	subs r1, #0x34
	ldr r0, .L0803A8C4 @ =0x000001FF
	cmp r1, r0
	bhi .L0803A908
	subs r0, #0xcc
	cmp r5, r0
	ble .L0803A8CC
	ldr r0, .L0803A8C8 @ =0xFFFFFECC
	adds r4, r5, r0
	movs r0, #1
	b .L0803A8D0
	.align 2, 0
.L0803A8C4: .4byte 0x000001FF
.L0803A8C8: .4byte 0xFFFFFECC
.L0803A8CC:
	adds r4, r1, #0
	movs r0, #0
.L0803A8D0:
	cmp r4, #0
	bne .L0803A8D8
	movs r0, #0x38
	b .L0803AB28
.L0803A8D8:
	cmp r4, #9
	bne .L0803A8E4
	cmp r0, #1
	bne .L0803A8E4
	movs r0, #0x3d
	b .L0803AB28
.L0803A8E4:
	adds r0, r4, #0
	movs r1, #5
	bl __umodsi3
	cmp r0, #0
	bne .L0803A8F4
	movs r0, #0x39
	b .L0803AB28
.L0803A8F4:
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne .L0803A904
	movs r0, #0x3a
	b .L0803AB28
.L0803A904:
	movs r0, #0x3b
	b .L0803AB28
.L0803A908:
	cmp r5, #0x33
	bls .L0803A90E
	b .L0803AB26
.L0803A90E:
	lsls r0, r5, #2
	ldr r1, .L0803A918 @ =.L0803A91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0803A918: .4byte .L0803A91C
.L0803A91C: @ jump table
	.4byte .L0803AA3C @ case 0
	.4byte .L0803AA1C @ case 1
	.4byte .L0803A9EC @ case 2
	.4byte .L0803AA28 @ case 3
	.4byte .L0803AA32 @ case 4
	.4byte .L0803AA04 @ case 5
	.4byte .L0803A9F8 @ case 6
	.4byte .L0803AA10 @ case 7
	.4byte .L0803AA46 @ case 8
	.4byte .L0803AAD6 @ case 9
	.4byte .L0803AADA @ case 10
	.4byte .L0803AADE @ case 11
	.4byte .L0803AAC2 @ case 12
	.4byte .L0803AAB6 @ case 13
	.4byte .L0803AAF6 @ case 14
	.4byte .L0803AAAA @ case 15
	.4byte .L0803AAAE @ case 16
	.4byte .L0803AA50 @ case 17
	.4byte .L0803AAFE @ case 18
	.4byte .L0803AABA @ case 19
	.4byte .L0803AABE @ case 20
	.4byte .L0803AA9E @ case 21
	.4byte .L0803AAA2 @ case 22
	.4byte .L0803AAA6 @ case 23
	.4byte .L0803AAC6 @ case 24
	.4byte .L0803AACA @ case 25
	.4byte .L0803AACE @ case 26
	.4byte .L0803AAD2 @ case 27
	.4byte .L0803AAFA @ case 28
	.4byte .L0803AA74 @ case 29
	.4byte .L0803AAF2 @ case 30
	.4byte .L0803AA8E @ case 31
	.4byte .L0803AA92 @ case 32
	.4byte .L0803AA96 @ case 33
	.4byte .L0803AA9A @ case 34
	.4byte .L0803AB02 @ case 35
	.4byte .L0803AAB2 @ case 36
	.4byte .L0803AA62 @ case 37
	.4byte .L0803AAEA @ case 38
	.4byte .L0803AB06 @ case 39
	.4byte .L0803AAEE @ case 40
	.4byte .L0803AAE2 @ case 41
	.4byte .L0803AAE6 @ case 42
	.4byte .L0803AB0A @ case 43
	.4byte .L0803AB1E @ case 44
	.4byte .L0803AB1E @ case 45
	.4byte .L0803AB1E @ case 46
	.4byte .L0803AB22 @ case 47
	.4byte .L0803AB0E @ case 48
	.4byte .L0803AB12 @ case 49
	.4byte .L0803AB16 @ case 50
	.4byte .L0803AB1A @ case 51
.L0803A9EC:
	movs r0, #0
	cmp r4, #3
	beq .L0803A9F4
	b .L0803AB28
.L0803A9F4:
	movs r0, #1
	b .L0803AB28
.L0803A9F8:
	movs r0, #3
	cmp r4, #3
	bne .L0803AA00
	b .L0803AB28
.L0803AA00:
	movs r0, #2
	b .L0803AB28
.L0803AA04:
	movs r0, #5
	cmp r4, #3
	bne .L0803AA0C
	b .L0803AB28
.L0803AA0C:
	movs r0, #4
	b .L0803AB28
.L0803AA10:
	movs r0, #7
	cmp r4, #3
	bne .L0803AA18
	b .L0803AB28
.L0803AA18:
	movs r0, #6
	b .L0803AB28
.L0803AA1C:
	movs r0, #9
	cmp r4, #3
	bne .L0803AA24
	b .L0803AB28
.L0803AA24:
	movs r0, #8
	b .L0803AB28
.L0803AA28:
	movs r0, #0xd
	cmp r4, #3
	beq .L0803AB28
	movs r0, #0xc
	b .L0803AB28
.L0803AA32:
	movs r0, #0xb
	cmp r4, #3
	beq .L0803AB28
	movs r0, #0xa
	b .L0803AB28
.L0803AA3C:
	movs r0, #0xf
	cmp r4, #3
	beq .L0803AB28
	movs r0, #0xe
	b .L0803AB28
.L0803AA46:
	movs r0, #0x11
	cmp r4, #3
	beq .L0803AB28
	movs r0, #0x10
	b .L0803AB28
.L0803AA50:
	cmp r3, #0
	beq .L0803AA5A
	cmp r3, #1
	beq .L0803AA5E
	b .L0803AB26
.L0803AA5A:
	movs r0, #0x24
	b .L0803AB28
.L0803AA5E:
	movs r0, #0x25
	b .L0803AB28
.L0803AA62:
	cmp r6, #0
	beq .L0803AA6C
	cmp r6, #1
	beq .L0803AA70
	b .L0803AB26
.L0803AA6C:
	movs r0, #0x26
	b .L0803AB28
.L0803AA70:
	movs r0, #0x27
	b .L0803AB28
.L0803AA74:
	cmp r2, #1
	beq .L0803AA86
	cmp r2, #1
	blo .L0803AA82
	cmp r2, #2
	beq .L0803AA8A
	b .L0803AB26
.L0803AA82:
	movs r0, #0x29
	b .L0803AB28
.L0803AA86:
	movs r0, #0x2a
	b .L0803AB28
.L0803AA8A:
	movs r0, #0x2b
	b .L0803AB28
.L0803AA8E:
	movs r0, #0x12
	b .L0803AB28
.L0803AA92:
	movs r0, #0x13
	b .L0803AB28
.L0803AA96:
	movs r0, #0x14
	b .L0803AB28
.L0803AA9A:
	movs r0, #0x15
	b .L0803AB28
.L0803AA9E:
	movs r0, #0x16
	b .L0803AB28
.L0803AAA2:
	movs r0, #0x17
	b .L0803AB28
.L0803AAA6:
	movs r0, #0x18
	b .L0803AB28
.L0803AAAA:
	movs r0, #0x19
	b .L0803AB28
.L0803AAAE:
	movs r0, #0x1a
	b .L0803AB28
.L0803AAB2:
	movs r0, #0x1b
	b .L0803AB28
.L0803AAB6:
	movs r0, #0x1c
	b .L0803AB28
.L0803AABA:
	movs r0, #0x1d
	b .L0803AB28
.L0803AABE:
	movs r0, #0x1e
	b .L0803AB28
.L0803AAC2:
	movs r0, #0x1f
	b .L0803AB28
.L0803AAC6:
	movs r0, #0x20
	b .L0803AB28
.L0803AACA:
	movs r0, #0x21
	b .L0803AB28
.L0803AACE:
	movs r0, #0x22
	b .L0803AB28
.L0803AAD2:
	movs r0, #0x23
	b .L0803AB28
.L0803AAD6:
	movs r0, #0x28
	b .L0803AB28
.L0803AADA:
	movs r0, #0x2c
	b .L0803AB28
.L0803AADE:
	movs r0, #0x2d
	b .L0803AB28
.L0803AAE2:
	movs r0, #0x2e
	b .L0803AB28
.L0803AAE6:
	movs r0, #0x2f
	b .L0803AB28
.L0803AAEA:
	movs r0, #0x30
	b .L0803AB28
.L0803AAEE:
	movs r0, #0x31
	b .L0803AB28
.L0803AAF2:
	movs r0, #0x32
	b .L0803AB28
.L0803AAF6:
	movs r0, #0x33
	b .L0803AB28
.L0803AAFA:
	movs r0, #0x34
	b .L0803AB28
.L0803AAFE:
	movs r0, #0x35
	b .L0803AB28
.L0803AB02:
	movs r0, #0x36
	b .L0803AB28
.L0803AB06:
	movs r0, #0x37
	b .L0803AB28
.L0803AB0A:
	movs r0, #0x3c
	b .L0803AB28
.L0803AB0E:
	movs r0, #0x3e
	b .L0803AB28
.L0803AB12:
	movs r0, #0x3f
	b .L0803AB28
.L0803AB16:
	movs r0, #0x40
	b .L0803AB28
.L0803AB1A:
	movs r0, #0x41
	b .L0803AB28
.L0803AB1E:
	movs r0, #0x10
	b .L0803AB28
.L0803AB22:
	movs r0, #0x11
	b .L0803AB28
.L0803AB26:
	movs r0, #0
.L0803AB28:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803AB30
func_0803AB30: @ 0x0803AB30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sb, r0
	mov sl, r1
	mov r6, sb
	stm r6!, {r1}
	movs r7, #2
	add r0, sp, #0x20
	mov r8, r0
	mov r1, sp
	adds r1, #0x24
	str r1, [sp, #0x2c]
	movs r5, #0
	adds r4, r6, #0
.L0803AB54:
	str r5, [r4]
	strh r5, [r4, #4]
	str r5, [r4, #8]
	strh r5, [r4, #0xc]
	str r5, [r4, #0x10]
	strh r5, [r4, #0x14]
	str r5, [r4, #0x18]
	strh r5, [r4, #0x1c]
	adds r0, r6, #0
	adds r0, #0x20
	bl func_08007874
	str r5, [r4, #0x24]
	adds r4, #0x2c
	adds r6, #0x2c
	subs r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne .L0803AB54
	mov r6, sb
	adds r6, #0x88
	movs r0, #0
	str r0, [r6]
	mov r0, sb
	adds r0, #0x9c
	movs r4, #1
	strb r4, [r0]
	mov r2, sl
	ldr r0, [r2]
	ldr r2, [r0, #0x48]
	mov r0, sl
	movs r1, #0xf
	bl _call_via_r2
	mov r3, r8
	strb r0, [r3]
	adds r5, r6, #0
	ldr r2, [r5]
	cmp r4, r2
	bls .L0803ABCA
	mov r0, sb
	adds r0, #0x8c
	adds r2, #4
	adds r2, r5, r2
	ldrb r1, [r3]
	subs r2, r2, r0
	bl memset
	ldr r2, [r5]
	adds r0, r2, #4
	adds r0, r5, r0
	add r1, sp, #0x20
	ldrb r1, [r1]
	subs r2, r4, r2
	bl memset
	str r4, [r5]
	b .L0803ABEA
.L0803ABCA:
	mov r0, sb
	adds r0, #0x8c
	mov r4, sb
	adds r4, #0x8d
	mov r2, r8
	ldrb r1, [r2]
	subs r2, r4, r0
	bl memset
	ldr r0, [r5]
	adds r0, #4
	adds r0, r5, r0
	subs r0, r0, r4
	ldr r1, [r6]
	subs r1, r1, r0
	str r1, [r6]
.L0803ABEA:
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [r0, #0x68]
	mov r0, sl
	bl _call_via_r1
	mov r8, r0
	movs r7, #0
.L0803ABFA:
	movs r0, #0x2c
	adds r6, r7, #0
	muls r6, r0, r6
	add r6, sb
	adds r4, r6, #4
	ldr r0, .L0803AC74 @ =0x0000091A
	adds r2, r7, r0
	mov r1, r8
	ldr r5, [r1]
	ldr r0, [sp, #0x2c]
	ldr r3, [r5, #0xc]
	bl _call_via_r3
	ldr r0, [sp, #0x24]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r5, #0x10]
	mov r1, r8
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	adds r4, r6, #0
	adds r4, #0x24
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	strh r0, [r6, #0x2c]
	adds r7, #1
	cmp r7, #2
	bls .L0803ABFA
	mov r0, sb
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0803AC74: .4byte 0x0000091A

	thumb_func_start func_0803AC78
func_0803AC78: @ 0x0803AC78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r0, [r6]
	ldr r2, [r0]
	adds r4, r6, #0
	adds r4, #0x88
	adds r1, r6, #0
	adds r1, #0x8c
	ldrb r1, [r1]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	adds r0, r6, #4
	cmp r0, #0
	beq .L0803ACBE
	adds r5, r4, #0
	cmp r0, r5
	beq .L0803ACBE
	adds r7, r0, #0
.L0803ACA4:
	subs r5, #0x2c
	adds r4, r5, #0
	adds r4, #0x20
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r7, r5
	bne .L0803ACA4
.L0803ACBE:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq .L0803ACCE
	adds r0, r6, #0
	bl __builtin_delete
.L0803ACCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0803ACD8
func_0803ACD8: @ 0x0803ACD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sb, r0
	adds r5, r1, #0
	movs r0, #0
	mov sl, r0
.L0803ACEC:
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r0, #4
	add r4, sb
	adds r6, r4, #0
	adds r6, #8
	ldr r7, [r4, #8]
	add r0, sb
	adds r0, #0x24
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r3, #0
	cmp r0, #0
	beq .L0803AD14
	ldrh r3, [r6, #4]
.L0803AD14:
	lsls r2, r2, #5
	ldr r4, .L0803AD50 @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov r6, sp
	str r6, [sp, #0x18]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0803AD54
	cmp r1, #0
	beq .L0803AD3E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0803AD3E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	movs r4, #1
	add sl, r4
	mov r6, sb
	adds r6, #0x8c
	str r6, [sp, #0x1c]
	b .L0803AE28
	.align 2, 0
.L0803AD50: .4byte 0x06010000
.L0803AD54:
	str r1, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r5]
	ldr r7, [sp, #0x20]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L0803AD6E
	adds r0, r2, #0
.L0803AD6E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0803AD8E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0803AD8A
	mov r0, r8
	bl func_080D3BC0
.L0803AD8A:
	ldr r1, [r5]
	b .L0803AD92
.L0803AD8E:
	movs r0, #0
	mov r8, r0
.L0803AD92:
	adds r4, r0, #0
	str r4, [sp, #0x24]
	adds r2, r1, #0
	adds r3, r4, #0
	movs r0, #1
	add sl, r0
	mov r1, sb
	adds r1, #0x8c
	str r1, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	cmp r2, r4
	beq .L0803ADC4
.L0803ADAA:
	cmp r3, #0
	beq .L0803ADBA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0803ADBA:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x20]
	cmp r2, r6
	bne .L0803ADAA
.L0803ADC4:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L0803ADE0
	cmp r4, #0
	beq .L0803ADDC
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0803ADDC:
	adds r4, #0x10
	b .L0803AE02
.L0803ADE0:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0803AE00
.L0803ADE8:
	cmp r2, #0
	beq .L0803ADF8
	adds r0, r2, #0
	ldr r1, [sp, #0x18]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0803ADF8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0803ADE8
.L0803AE00:
	adds r4, r2, #0
.L0803AE02:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0803AE12
.L0803AE0C:
	adds r0, #0x10
	cmp r0, r2
	bne .L0803AE0C
.L0803AE12:
	cmp r1, #0
	beq .L0803AE1C
	adds r0, r1, #0
	bl free
.L0803AE1C:
	ldr r0, [sp, #0x24]
	add r0, r8
	ldr r1, [sp, #0x24]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0803AE28:
	mov r2, sl
	cmp r2, #2
	bhi .L0803AE30
	b .L0803ACEC
.L0803AE30:
	mov r3, sb
	ldr r0, [r3]
	ldr r3, [r0]
	mov r4, sb
	ldr r1, [r4, #0x14]
	ldr r6, [sp, #0x1c]
	ldrb r2, [r6]
	ldr r4, [r3, #0x54]
	movs r3, #1
	bl _call_via_r4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803AE58
func_0803AE58: @ 0x0803AE58
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	ldr r5, [sp, #0x28]
	movs r4, #0x2c
	muls r4, r5, r4
	adds r4, #4
	adds r4, r0, r4
	ldrh r5, [r4, #0x28]
	mov r8, r5
	movs r5, #0x80
	lsls r5, r5, #8
	ldr r6, [r0]
	adds r0, #0x88
	str r5, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r4, r8
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #0xaa
	ldr r4, .L0803AE9C @ =func_030004DC
	bl _call_via_r4
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0803AE9C: .4byte func_030004DC

	thumb_func_start func_0803AEA0
func_0803AEA0: @ 0x0803AEA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	str r3, [sp, #0x50]
	str r1, [r6]
	movs r1, #0
	str r1, [r6, #4]
	adds r5, r6, #0
	adds r5, #0xd0
	str r1, [r5]
	adds r0, #0xe4
	add r2, sp, #0x50
	ldrb r2, [r2]
	strb r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe5
	movs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xe6
	strb r1, [r0]
	adds r0, #2
	str r1, [r0]
	mov r3, sl
	ldr r1, [r3]
	add r4, sp, #0x48
	adds r0, r4, #0
	ldr r3, [r1, #0xc]
	mov r1, sl
	movs r2, #0
	bl _call_via_r3
	ldr r0, [sp, #0x48]
	movs r1, #0
	cmp r0, #0
	beq .L0803AEF6
	ldrh r1, [r4, #4]
.L0803AEF6:
	str r1, [sp, #0x54]
	movs r4, #0
	str r4, [sp, #0x64]
	str r5, [sp, #0x60]
	cmp r4, r1
	bhs .L0803AF9E
	add r7, sp, #0x28
	mov r8, r7
	add r5, sp, #0x20
	adds r0, r6, #4
	str r0, [sp, #0x58]
.L0803AF0C:
	mov r1, sl
	ldr r3, [r1]
	ldr r2, [sp, #0x64]
	lsls r1, r2, #2
	ldr r0, [sp, #0x48]
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r0, r8
	ldr r3, [r3, #0x10]
	mov r1, sl
	bl _call_via_r3
	mov r1, sp
	mov r0, r8
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #0
	bl func_08007B54
	str r0, [r5, #4]
	ldr r1, [r6, #4]
	cmp r1, #4
	bhi .L0803AF82
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	ldr r3, [sp, #0x58]
	adds r4, r3, r0
	cmp r4, #0
	beq .L0803AF7C
	adds r1, r4, #0
	mov r0, sp
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	adds r4, #0x20
	adds r0, r4, #0
	bl func_08007874
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl func_08007CD8
	str r0, [r4, #4]
.L0803AF7C:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
.L0803AF82:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	ldr r3, [sp, #0x64]
	adds r3, #1
	str r3, [sp, #0x64]
	ldr r4, [sp, #0x54]
	cmp r3, r4
	blo .L0803AF0C
.L0803AF9E:
	ldr r7, [sp, #0x50]
	cmp r7, #0
	beq .L0803AFA8
	cmp r7, #1
	beq .L0803AFAC
.L0803AFA8:
	movs r1, #0x10
	b .L0803AFAE
.L0803AFAC:
	movs r1, #0x11
.L0803AFAE:
	mov r2, sb
	ldr r0, [r2]
	ldr r2, [r0, #0x48]
	mov r0, sb
	bl _call_via_r2
	adds r2, r0, #0
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L0803AFD6
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0803AFCE
	strb r2, [r0]
.L0803AFCE:
	ldr r3, [sp, #0x60]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
.L0803AFD6:
	movs r4, #0
	mov r8, r4
	movs r2, #0
	mov r7, sb
	ldr r3, [r7]
	ldr r0, [sp, #0x54]
	cmp r8, r0
	bhs .L0803AFF6
	ldr r1, [sp, #0x48]
.L0803AFE8:
	ldrh r0, [r1, #2]
	add r8, r0
	adds r1, #4
	adds r2, #1
	ldr r4, [sp, #0x54]
	cmp r2, r4
	blo .L0803AFE8
.L0803AFF6:
	ldr r1, [r3, #0x18]
	mov r0, sb
	bl _call_via_r1
	str r0, [sp, #0x5c]
	mov r7, sb
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	mov r0, sb
	bl _call_via_r1
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x88]
	cmp r0, r1
	bhs .L0803B096
	mov r5, sp
.L0803B01A:
	mov r0, sp
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r2, r8
	cmp r2, #0
	beq .L0803B03A
	bl rand
	mov r1, r8
	bl __umodsi3
	b .L0803B03C
.L0803B03A:
	movs r0, #0
.L0803B03C:
	cmp r0, #0
	beq .L0803B050
	movs r3, #0x10
	ldrsh r4, [r5, r3]
	lsls r0, r0, #8
	strh r0, [r5, #0x10]
	mov r0, sp
	bl func_0805E8F0
	strh r4, [r5, #0x10]
.L0803B050:
	add r4, sp, #0x14
	adds r0, r4, #0
	mov r1, sp
	ldr r2, [sp, #0x5c]
	mov r3, sb
	bl func_0803B454
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r1, [r2]
	cmp r1, #0x1f
	bhi .L0803B08A
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L0803B084
	adds r1, r4, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [sp, #0x2c]
	str r1, [r0]
.L0803B084:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0803B08A:
	ldr r4, [sp, #0x64]
	adds r4, #1
	str r4, [sp, #0x64]
	ldr r7, [sp, #0x88]
	cmp r4, r7
	blo .L0803B01A
.L0803B096:
	adds r0, r6, #0
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803B0A8
func_0803B0A8: @ 0x0803B0A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, [r7]
	ldr r2, [r0]
	adds r1, r7, #0
	adds r1, #0xd4
	ldrb r1, [r1]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	adds r2, r7, #0
	adds r2, #0xe8
	ldr r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r2, r0
	adds r0, r7, #0
	adds r0, #0xec
	cmp r0, r2
	beq .L0803B0E0
.L0803B0DA:
	adds r0, #0x1c
	cmp r0, r2
	bne .L0803B0DA
.L0803B0E0:
	adds r2, r7, #4
	ldr r1, [r7, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r6, r2, r0
	adds r5, r2, #4
	cmp r5, r6
	beq .L0803B10E
.L0803B0F4:
	adds r4, r5, #0
	adds r4, #0x20
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r5, #0x28
	cmp r5, r6
	bne .L0803B0F4
.L0803B10E:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq .L0803B11E
	adds r0, r7, #0
	bl __builtin_delete
.L0803B11E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0803B128
func_0803B128: @ 0x0803B128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp, #0x18]
	adds r7, r1, #0
	adds r2, r0, #0
	adds r2, #4
	adds r5, r2, #4
	ldr r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	cmp r5, r2
	bne .L0803B152
	b .L0803B280
.L0803B152:
	adds r0, r5, #0
	adds r0, #8
	ldr r4, [r5, #8]
	movs r6, #0
	cmp r4, #0
	beq .L0803B160
	ldrh r6, [r0, #4]
.L0803B160:
	adds r0, r5, #0
	adds r0, #0x28
	str r0, [sp, #0x20]
	cmp r6, #0
	bne .L0803B16C
	b .L0803B276
.L0803B16C:
	subs r0, #8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	lsls r2, r2, #5
	ldr r1, .L0803B1A8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sp
	adds r1, r4, #0
	adds r3, r6, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L0803B1AC
	cmp r1, #0
	beq .L0803B1A0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0803B1A0:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L0803B276
	.align 2, 0
.L0803B1A8: .4byte 0x06010000
.L0803B1AC:
	str r1, [sp, #0x24]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r7]
	ldr r6, [sp, #0x24]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L0803B1C6
	adds r0, r2, #0
.L0803B1C6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0803B1E6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0803B1E2
	mov r0, sb
	bl func_080D3BC0
.L0803B1E2:
	ldr r1, [r7]
	b .L0803B1EA
.L0803B1E6:
	movs r0, #0
	mov sb, r0
.L0803B1EA:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	adds r5, #0x28
	str r5, [sp, #0x20]
	b .L0803B20C
.L0803B1F8:
	cmp r3, #0
	beq .L0803B208
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0803B208:
	adds r2, #0x10
	adds r3, #0x10
.L0803B20C:
	ldr r0, [sp, #0x24]
	cmp r2, r0
	bne .L0803B1F8
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L0803B22E
	cmp r4, #0
	beq .L0803B22A
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0803B22A:
	adds r4, #0x10
	b .L0803B250
.L0803B22E:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0803B24E
.L0803B236:
	cmp r2, #0
	beq .L0803B246
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0803B246:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0803B236
.L0803B24E:
	adds r4, r2, #0
.L0803B250:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0803B260
.L0803B25A:
	adds r0, #0x10
	cmp r0, r2
	bne .L0803B25A
.L0803B260:
	cmp r1, #0
	beq .L0803B26A
	adds r0, r1, #0
	bl free
.L0803B26A:
	mov r0, sb
	add r0, r8
	mov r6, r8
	str r6, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
.L0803B276:
	ldr r5, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	beq .L0803B280
	b .L0803B152
.L0803B280:
	ldr r1, [sp, #0x18]
	ldm r1!, {r0}
	ldr r3, [r0]
	ldr r1, [r1, #0x14]
	ldr r2, [sp, #0x18]
	adds r2, #0xd4
	ldrb r2, [r2]
	ldr r4, [r3, #0x54]
	movs r3, #1
	bl _call_via_r4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B2A8
func_0803B2A8: @ 0x0803B2A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0xe4
	ldrb r2, [r0]
	lsls r1, r2, #4
	ldr r0, .L0803B2D8 @ =gUnk_080F1948
	adds r1, r1, r0
	mov sl, r1
	movs r7, #0
	movs r0, #0
	mov r8, r0
	cmp r2, #0
	beq .L0803B2D0
	cmp r2, #1
	beq .L0803B2DC
.L0803B2D0:
	movs r1, #2
	str r1, [sp]
	b .L0803B2E0
	.align 2, 0
.L0803B2D8: .4byte gUnk_080F1948
.L0803B2DC:
	movs r0, #3
	str r0, [sp]
.L0803B2E0:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	bl _call_via_r1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	mov sb, r0
	movs r6, #0
	cmp r6, sb
	bhs .L0803B356
	adds r4, #0xec
	lsls r0, r7, #3
	mov r1, sl
	adds r5, r0, r1
.L0803B30E:
	adds r0, r4, #0
	bl func_0805E8F0
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L0803B324
	adds r0, r4, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl func_0803B474
.L0803B324:
	movs r0, #1
	add r8, r0
	ldr r1, [sp]
	cmp r8, r1
	blo .L0803B33E
	adds r5, #8
	adds r7, #1
	cmp r7, #1
	bls .L0803B33A
	mov r5, sl
	movs r7, #0
.L0803B33A:
	movs r0, #0
	mov r8, r0
.L0803B33E:
	ldr r0, [r4, #0x14]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r4, #0x1c
	adds r6, #1
	cmp r6, sb
	blo .L0803B30E
.L0803B356:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B368
func_0803B368: @ 0x0803B368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sb, r0
	str r1, [sp, #0x14]
	adds r0, #0xe8
	ldr r0, [r0]
	lsrs r3, r0, #1
	mov r2, sb
	adds r2, #0xe6
	ldrb r1, [r2]
	cmp r1, #0
	beq .L0803B38C
	cmp r1, #1
	beq .L0803B394
.L0803B38C:
	movs r4, #0
	mov sl, r3
	movs r0, #1
	b .L0803B39A
.L0803B394:
	adds r4, r3, #0
	mov sl, r0
	movs r0, #0
.L0803B39A:
	strb r0, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	bl _call_via_r1
	str r0, [sp, #0x18]
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	str r0, [sp, #0x1c]
	mov r8, r4
	cmp r8, sl
	bhs .L0803B43E
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0xf0
	mov r1, sb
	adds r7, r0, r1
	adds r1, #0xd0
	str r1, [sp, #0x24]
.L0803B3D4:
	ldrh r1, [r7, #8]
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x12
	ldrsh r6, [r7, r2]
	ldr r1, [sp, #0x18]
	subs r6, r6, r1
	adds r6, #8
	movs r2, #0xff
	ands r6, r2
	subs r6, #8
	movs r1, #0x16
	ldrsh r5, [r7, r1]
	ldr r2, [sp, #0x1c]
	subs r5, r5, r2
	adds r5, #8
	movs r1, #0xff
	ands r5, r1
	subs r5, #8
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r4, #4
	ldr r2, [sp, #0x20]
	adds r4, r2, r4
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sb
	ldr r1, [r2]
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0x55
	ldr r4, .L0803B450 @ =func_030004DC
	bl _call_via_r4
	adds r7, #0x1c
	movs r1, #1
	add r8, r1
	cmp r8, sl
	blo .L0803B3D4
.L0803B43E:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803B450: .4byte func_030004DC

	thumb_func_start func_0803B454
func_0803B454: @ 0x0803B454
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r1!, {r5, r6}
	stm r0!, {r5, r6}
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl func_0803B474
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803B474
func_0803B474: @ 0x0803B474
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bl rand
	movs r1, #0xf0
	bl __modsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	str r4, [r6, #0x14]
	bl rand
	movs r1, #0xa0
	bl __modsi3
	adds r5, r5, r0
	lsls r5, r5, #0x10
	str r5, [r6, #0x18]
	bl rand
	movs r1, #0x90
	ands r1, r0
	adds r1, #0x60
	strh r1, [r6, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B4B0
func_0803B4B0: @ 0x0803B4B0
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, .L0803B4D8 @ =vtable_unk_080E76E8
	str r0, [r2]
	str r1, [r2, #4]
	adds r0, r2, #0
	adds r0, #8
	movs r1, #3
	movs r4, #0
	movs r3, #1
	rsbs r3, r3, #0
.L0803B4C6:
	strb r4, [r0]
	adds r0, #0x18
	subs r1, #1
	cmp r1, r3
	bne .L0803B4C6
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0803B4D8: .4byte vtable_unk_080E76E8
.L0803B4DC:
	.byte 0xF0, 0xB5, 0x88, 0xB0
	.byte 0x06, 0x1C, 0x0D, 0x1C, 0x04, 0x49, 0x50, 0x18, 0x0C, 0x28, 0x00, 0xD9, 0xD7, 0xE0, 0x80, 0x00
	.byte 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0xDF, 0x00, 0xFF, 0xFF, 0x00, 0xB5, 0x03, 0x08
	.byte 0x34, 0xB5, 0x03, 0x08, 0x70, 0xB5, 0x03, 0x08, 0xA8, 0xB5, 0x03, 0x08, 0x28, 0xB6, 0x03, 0x08
	.byte 0x34, 0xB6, 0x03, 0x08, 0x34, 0xB6, 0x03, 0x08, 0x34, 0xB6, 0x03, 0x08, 0x34, 0xB6, 0x03, 0x08
	.byte 0xBC, 0xB5, 0x03, 0x08, 0xD0, 0xB5, 0x03, 0x08, 0x50, 0xB6, 0x03, 0x08, 0x5C, 0xB6, 0x03, 0x08
	.byte 0x68, 0xB6, 0x03, 0x08, 0x68, 0x68, 0x14, 0x30, 0xCE, 0xF7, 0xF2, 0xFA, 0x00, 0x06, 0x00, 0x28
	.byte 0x0C, 0xD0, 0x68, 0x68, 0x03, 0x49, 0x40, 0x18, 0x00, 0x78, 0x40, 0x07, 0x00, 0x28, 0x05, 0xDA
	.byte 0x01, 0x4D, 0x8D, 0xE0, 0xC8, 0x21, 0x00, 0x00, 0x74, 0x19, 0x0F, 0x08, 0x68, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0xD2, 0xF7, 0xBD, 0xFF, 0x05, 0x1C, 0x83, 0xE0, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00
	.byte 0x68, 0x68, 0x14, 0x30, 0xCE, 0xF7, 0xC4, 0xFA, 0x6F, 0x46, 0x00, 0x28, 0x03, 0xD0, 0x5F, 0xF0
	.byte 0x39, 0xFE, 0x05, 0x1C, 0x00, 0xE0, 0x07, 0x4D, 0x28, 0x1C, 0x98, 0xF0, 0xF5, 0xFA, 0x04, 0x1C
	.byte 0x1F, 0x2C, 0x00, 0xD9, 0x1F, 0x24, 0x38, 0x1C, 0x29, 0x1C, 0x22, 0x1C, 0x98, 0xF0, 0xFA, 0xF9
	.byte 0x39, 0x19, 0x73, 0xE0, 0x80, 0x19, 0x0F, 0x08, 0x68, 0x68, 0x03, 0x49, 0x40, 0x18, 0x5F, 0xF0
	.byte 0x21, 0xFE, 0x05, 0x1C, 0x5D, 0xE0, 0x00, 0x00, 0x70, 0x1C, 0x00, 0x00, 0x68, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0xD2, 0xF7, 0x8F, 0xFF, 0x05, 0x1C, 0x53, 0xE0, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00
	.byte 0x68, 0x68, 0x08, 0x49, 0x40, 0x18, 0x64, 0xF0, 0xD5, 0xFE, 0x07, 0x1C, 0x00, 0x2F, 0x0B, 0xD0
	.byte 0x68, 0x68, 0x04, 0x49, 0x40, 0x18, 0x64, 0xF0, 0xCD, 0xFE, 0x63, 0xF0, 0x6F, 0xFA, 0x05, 0x1C
	.byte 0x3F, 0xE0, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x0A, 0x4D, 0x28, 0x1C, 0x98, 0xF0, 0xBC, 0xFA
	.byte 0x04, 0x1C, 0x1F, 0x2C, 0x00, 0xD9, 0x1F, 0x24, 0x68, 0x46, 0x29, 0x1C, 0x22, 0x1C, 0x98, 0xF0
	.byte 0xC1, 0xF9, 0x69, 0x46, 0x08, 0x19, 0x07, 0x70, 0x01, 0x20, 0x30, 0x70, 0x30, 0x1D, 0x98, 0xF0
	.byte 0x83, 0xFA, 0x43, 0xE0, 0x84, 0x19, 0x0F, 0x08, 0x68, 0x68, 0x14, 0x30, 0xCE, 0xF7, 0x62, 0xFA
	.byte 0x05, 0x1C, 0x1E, 0xE0, 0x01, 0x24, 0x51, 0x00, 0x89, 0x18, 0xC9, 0x00, 0x49, 0x19, 0x03, 0x48
	.byte 0x09, 0x18, 0x68, 0x46, 0x98, 0xF0, 0x70, 0xFA, 0x34, 0x70, 0x23, 0xE0, 0x90, 0x14, 0xE8, 0xFF
	.byte 0x68, 0x68, 0x01, 0x49, 0x0B, 0xE0, 0x00, 0x00, 0xE0, 0x21, 0x00, 0x00, 0x68, 0x68, 0x01, 0x49
	.byte 0x05, 0xE0, 0x00, 0x00, 0xF0, 0x21, 0x00, 0x00, 0x68, 0x68, 0x88, 0x21, 0x89, 0x01, 0x45, 0x18
	.byte 0x28, 0x1C, 0x98, 0xF0, 0x81, 0xFA, 0x04, 0x1C, 0x1F, 0x2C, 0x00, 0xD9, 0x1F, 0x24, 0x68, 0x46
	.byte 0x29, 0x1C, 0x22, 0x1C, 0x98, 0xF0, 0x86, 0xF9, 0x68, 0x46, 0x01, 0x19, 0x00, 0x20, 0x08, 0x70
	.byte 0x01, 0x20, 0x30, 0x70, 0x30, 0x1D, 0x69, 0x46, 0x98, 0xF0, 0x46, 0xFA, 0x06, 0xE0, 0x69, 0x46
	.byte 0x00, 0x20, 0x08, 0x70, 0x30, 0x70, 0x30, 0x1D, 0x98, 0xF0, 0x3E, 0xFA, 0x30, 0x1C, 0x08, 0xB0
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_0803B6B8
func_0803B6B8: @ 0x0803B6B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x16
	bls .L0803B6D0
	movs r4, #0x16
.L0803B6D0:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r0, #8
	mov r1, sp
	bl strcpy
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B6FC
func_0803B6FC: @ 0x0803B6FC
	push {r4, lr}
	ldr r3, .L0803B714 @ =vtable_unk_080E7748
	str r3, [r0]
	ldr r4, [r1]
	movs r3, #0
	str r3, [r1]
	str r4, [r0, #4]
	str r2, [r0, #8]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0803B714: .4byte vtable_unk_080E7748

	thumb_func_start func_0803B718
func_0803B718: @ 0x0803B718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0xe9
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	ldr r0, [r4, #4]
	movs r6, #0
	str r6, [r4, #4]
	str r0, [sp, #4]
	ldr r4, [r4, #8]
	ldr r0, .L0803B828 @ =__vt_6AScene
	str r0, [r5]
	ldr r0, .L0803B82C @ =vtable_unk_080E7738
	adds r1, r5, #0
	stm r1!, {r0}
	adds r0, r1, #0
	bl func_08008444
	adds r0, r5, #0
	adds r0, #0xc
	bl __13AScriptEngine
	ldr r0, .L0803B830 @ =vtable_unk_080E7708
	str r0, [r5, #8]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, .L0803B834 @ =vtable_unk_080E7714
	str r0, [r1]
	ldr r0, .L0803B838 @ =vtable_unk_080E7728
	str r0, [r5]
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [sp, #4]
	str r6, [sp, #4]
	str r0, [r1]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #8
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	movs r1, #0
	bl func_08008B54
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl func_08008B54
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	bl func_08008B54
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #3
	bl func_08008B54
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #4
	bl func_08008B54
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r5, r1
	str r6, [r0]
	str r6, [r0, #4]
	adds r1, #8
	adds r0, r5, r1
	str r6, [r0, #4]
	adds r1, #8
	adds r0, r5, r1
	movs r2, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	movs r0, #0xe8
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, .L0803B83C @ =0x000003A1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0803B7FE
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0803B7FE:
	str r5, [sp]
	mov r0, sp
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [r0]
	str r5, [r7]
	ldr r1, [sp]
	cmp r1, #0
	beq .L0803B81C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0803B81C:
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0803B828: .4byte __vt_6AScene
.L0803B82C: .4byte vtable_unk_080E7738
.L0803B830: .4byte vtable_unk_080E7708
.L0803B834: .4byte vtable_unk_080E7714
.L0803B838: .4byte vtable_unk_080E7728
.L0803B83C: .4byte 0x000003A1

	thumb_func_start func_0803B840
func_0803B840: @ 0x0803B840
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrh r2, [r4, #0x1c]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x16
	adds r2, #3
	ldr r1, .L0803B8C0 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	orrs r2, r0
	lsls r0, r2, #0x10
	orrs r2, r0
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x10
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	str r2, [sp, #0xc]
	add r0, sp, #0xc
	ldr r2, .L0803B8C4 @ =0x010000A0
	bl CpuFastSet
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	adds r0, r0, r5
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r2, [sp]
	ldrh r2, [r4, #0x1c]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x16
	str r2, [sp, #4]
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1c
	str r2, [sp, #8]
	movs r2, #0
	bl func_08051320
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	ldr r0, .L0803B8C8 @ =gUnk_080F9F78
	ldr r0, [r0]
	lsls r1, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0803B8C0: .4byte 0x000003FF
.L0803B8C4: .4byte 0x010000A0
.L0803B8C8: .4byte gUnk_080F9F78

	thumb_func_start func_0803B8CC
func_0803B8CC: @ 0x0803B8CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	ldr r0, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r4, [sp, #0x34]
	ldr r6, [sp, #0x38]
	movs r7, #0
	mov sb, r7
	mov r7, ip
	strh r1, [r7]
	strh r2, [r7, #2]
	strh r3, [r7, #4]
	strh r0, [r7, #6]
	movs r0, #3
	ands r5, r0
	ldrb r0, [r7, #8]
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	mov r2, r8
	ands r2, r0
	orrs r2, r5
	adds r0, r4, #0
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #2
	subs r1, #0x79
	ands r2, r1
	orrs r2, r0
	mov r8, r2
	mov r0, ip
	strb r2, [r0, #8]
	lsrs r1, r4, #3
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #7
	mov r2, ip
	ldrh r0, [r2, #8]
	ldr r3, .L0803BA7C @ =0xFFFFFE7F
	ands r3, r0
	orrs r3, r1
	strh r3, [r2, #8]
	movs r0, #7
	ands r4, r0
	lsls r4, r4, #6
	adds r4, #0x14
	ldr r7, .L0803BA80 @ =0x000003FF
	str r7, [sp]
	lsls r4, r4, #9
	ldr r5, [r2, #8]
	ldr r0, .L0803BA84 @ =0xFFF801FF
	ands r5, r0
	orrs r5, r4
	str r5, [r2, #8]
	movs r0, #0xf
	ands r6, r0
	lsls r6, r6, #3
	ldrb r0, [r2, #0xa]
	movs r1, #0x79
	rsbs r1, r1, #0
	mov sl, r1
	mov r2, sl
	ands r2, r0
	orrs r2, r6
	mov sl, r2
	mov r6, ip
	strb r2, [r6, #0xa]
	movs r0, #0xff
	ldr r1, [sp, #0x3c]
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r6, #0xa]
	ldr r0, .L0803BA88 @ =0xFFFF807F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0xa]
	ldrb r1, [r6, #0xb]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0xb]
	ldrb r1, [r6, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #0xc]
	movs r7, #0
	strb r7, [r6, #0xd]
	mov r2, ip
	adds r2, #0x10
	mov r0, sb
	str r0, [r6, #0x10]
	str r0, [r2, #4]
	ldr r0, .L0803BA8C @ =vtable_unk_080E5BB4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x10
	str r1, [r2, #0xc]
	mov r6, sb
	str r6, [r1, #4]
	ldr r0, .L0803BA90 @ =vtable_unk_080E5BD8
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x1c
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x1e
	lsls r5, r5, #0xd
	lsrs r7, r5, #0x16
	lsls r3, r3, #9
	adds r2, r3, r7
	ldr r0, .L0803BA94 @ =gUnk_080F9F74
	ldr r0, [r0]
	lsrs r5, r0, #5
	movs r4, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L0803B9C4
	movs r4, #1
.L0803B9C4:
	mov r1, ip
	adds r1, #0x2c
	ldr r0, .L0803BA98 @ =gUnk_080F9F70
	ldr r3, [r0]
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	mov r6, sb
	mov r0, ip
	str r6, [r0, #0x2c]
	str r6, [r1, #4]
	ldr r0, .L0803BA9C @ =vtable_unk_080E7768
	str r0, [r1, #8]
	str r3, [r1, #0xc]
	str r2, [r1, #0x10]
	strb r5, [r1, #0x14]
	strb r4, [r1, #0x15]
	movs r2, #0
	strb r2, [r1, #0x16]
	mov r6, ip
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge .L0803B9F8
	adds r0, #7
.L0803B9F8:
	asrs r0, r0, #3
	str r0, [sp, #4]
	mov r2, ip
	movs r0, #2
	ldrsh r6, [r2, r0]
	cmp r6, #0
	bge .L0803BA08
	adds r6, #7
.L0803BA08:
	asrs r6, r6, #3
	str r6, [sp, #8]
	mov r1, ip
	ldrh r4, [r1, #4]
	lsrs r4, r4, #3
	ldrh r1, [r1, #6]
	lsrs r1, r1, #3
	mov r2, r8
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1b
	mov r6, sl
	lsls r5, r6, #0x19
	mov r2, ip
	adds r2, #0x44
	mov r0, sb
	mov r6, ip
	str r0, [r6, #0x44]
	str r0, [r2, #4]
	ldr r0, .L0803BAA0 @ =vtable_unk_080E7758
	str r0, [r2, #8]
	ldr r0, [sp, #4]
	str r0, [r2, #0xc]
	ldr r6, [sp, #8]
	str r6, [r2, #0x10]
	str r4, [r2, #0x14]
	str r1, [r2, #0x18]
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2, #0x1c]
	subs r0, #0x3f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x1c]
	ldr r1, [sp]
	ands r7, r1
	lsls r3, r7, #5
	ldrh r1, [r2, #0x1c]
	ldr r0, .L0803BAA4 @ =0xFFFF801F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #0x1c]
	lsrs r5, r5, #0x1c
	lsls r5, r5, #0xf
	ldr r0, [r2, #0x1c]
	ldr r1, .L0803BAA8 @ =0xFFF87FFF
	ands r0, r1
	orrs r0, r5
	str r0, [r2, #0x1c]
	mov r0, ip
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0803BA7C: .4byte 0xFFFFFE7F
.L0803BA80: .4byte 0x000003FF
.L0803BA84: .4byte 0xFFF801FF
.L0803BA88: .4byte 0xFFFF807F
.L0803BA8C: .4byte vtable_unk_080E5BB4
.L0803BA90: .4byte vtable_unk_080E5BD8
.L0803BA94: .4byte gUnk_080F9F74
.L0803BA98: .4byte gUnk_080F9F70
.L0803BA9C: .4byte vtable_unk_080E7768
.L0803BAA0: .4byte vtable_unk_080E7758
.L0803BAA4: .4byte 0xFFFF801F
.L0803BAA8: .4byte 0xFFF87FFF

	thumb_func_start func_0803BAAC
func_0803BAAC: @ 0x0803BAAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	adds r4, r2, #0
	mov sl, r3
	ldrb r2, [r7, #0xb]
	lsrs r1, r2, #7
	ldrb r0, [r7, #0xc]
	movs r3, #0x7f
	ands r0, r3
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #1
	beq .L0803BADC
	cmp r0, #1
	ble .L0803BB18
	cmp r0, #2
	beq .L0803BAFC
	b .L0803BB18
.L0803BADC:
	ldrb r0, [r7, #0xd]
	cmp r0, #8
	bls .L0803BAF8
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r7, #0xb]
	ldrb r1, [r7, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #0xc]
	b .L0803BB18
.L0803BAF8:
	adds r0, #1
	b .L0803BB16
.L0803BAFC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne .L0803BB14
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r7, #0xb]
	ldrb r1, [r7, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0xc]
	b .L0803BB18
.L0803BB14:
	subs r0, #1
.L0803BB16:
	strb r0, [r7, #0xd]
.L0803BB18:
	adds r3, r7, #0
	adds r3, #0x10
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r3, #0xc]
	cmp r0, r1
	bne .L0803BB2A
	movs r2, #1
.L0803BB2A:
	cmp r2, #0
	bne .L0803BB3A
	ldr r0, [r4, #8]
	ldr r2, [r0, #0x1c]
	adds r0, r4, #0
	adds r1, r3, #0
	bl _call_via_r2
.L0803BB3A:
	ldrb r0, [r7, #0xb]
	lsrs r0, r0, #7
	ldrb r1, [r7, #0xc]
	movs r2, #0x7f
	ands r1, r2
	lsls r1, r1, #1
	orrs r1, r0
	cmp r1, #0
	bne .L0803BB4E
	b .L0803BCA8
.L0803BB4E:
	movs r0, #0
	mov r8, r0
	ldrb r4, [r7, #8]
	lsls r2, r4, #0x1e
	lsrs r2, r2, #0x1e
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	mov r5, sb
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	lsls r3, r2, #1
	lsls r2, r2, #2
	mov r5, sp
	ldrh r1, [r7, #8]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r5]
	adds r3, #8
	add r3, sb
	strh r1, [r3]
	mov r0, sp
	mov r1, r8
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x10
	add r0, sb
	strh r1, [r0]
	mov r1, sp
	ldrh r5, [r7, #2]
	rsbs r0, r5, #0
	strh r0, [r1]
	adds r2, #0x12
	add r2, sb
	strh r0, [r2]
	ldrb r6, [r7, #0xd]
	strb r4, [r1, #4]
	cmp r6, #8
	bls .L0803BBDC
	mov r3, sp
	ldrh r0, [r7]
	lsls r2, r0, #8
	ldrh r1, [r7, #4]
	adds r0, r0, r1
	orrs r2, r0
	strh r2, [r3]
	mov r0, sb
	adds r0, #0x40
	strh r2, [r0]
	mov r2, sp
	lsls r1, r5, #8
	ldrh r0, [r7, #6]
	adds r0, r5, r0
	orrs r1, r0
	strh r1, [r2]
	mov r0, sb
	adds r0, #0x44
	strh r1, [r0]
	b .L0803BC44
.L0803BBDC:
	ldrh r4, [r7, #6]
	adds r0, r4, #0
	muls r0, r6, r0
	movs r1, #9
	bl __udivsi3
	mov r8, r0
	movs r2, #2
	ldrsh r5, [r7, r2]
	adds r4, r5, r4
	adds r5, r5, r4
	lsrs r0, r5, #0x1f
	adds r5, r5, r0
	asrs r5, r5, #1
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r0, r0, #1
	subs r5, r5, r0
	ldrh r4, [r7, #4]
	adds r0, r4, #0
	muls r0, r6, r0
	movs r1, #9
	bl __udivsi3
	movs r1, #0
	ldrsh r2, [r7, r1]
	adds r4, r2, r4
	adds r2, r2, r4
	lsrs r1, r2, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	subs r2, r2, r1
	mov r3, sp
	lsls r1, r2, #8
	adds r2, r2, r0
	orrs r1, r2
	strh r1, [r3]
	mov r0, sb
	adds r0, #0x40
	strh r1, [r0]
	mov r1, sp
	lsls r0, r5, #8
	add r5, r8
	orrs r0, r5
	strh r0, [r1]
	mov r1, sb
	adds r1, #0x44
	strh r0, [r1]
.L0803BC44:
	mov r0, sp
	movs r1, #0x3f
	strh r1, [r0]
	mov r3, sb
	adds r3, #0x48
	strh r1, [r3]
	mov r2, sp
	ldrb r4, [r2, #4]
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #1
	lsls r4, r0
	bics r1, r4
	strh r1, [r2]
	mov r0, sb
	adds r0, #0x4a
	strh r1, [r0]
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x18
	cmp r2, #2
	bne .L0803BC80
	ldrh r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r3]
	ldr r0, .L0803BCA4 @ =0x08083F40
	orrs r4, r0
	mov r5, sb
	str r4, [r5, #0x50]
.L0803BC80:
	cmp r2, #1
	bne .L0803BCD8
	adds r3, r7, #0
	adds r3, #0x2c
	ldr r1, [r7, #0x2c]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0803BCD8
	mov r1, sl
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	mov r0, sl
	adds r1, r3, #0
	bl _call_via_r2
	b .L0803BCD8
	.align 2, 0
.L0803BCA4: .4byte 0x08083F40
.L0803BCA8:
	ldrb r0, [r7, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r1, r0
	mov r2, sb
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	adds r3, r7, #0
	adds r3, #0x2c
	ldr r1, [r7, #0x2c]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0803BCD8
	mov r4, sl
	ldr r0, [r4, #8]
	ldr r2, [r0, #0x14]
	mov r0, sl
	adds r1, r3, #0
	bl _call_via_r2
.L0803BCD8:
	ldrb r1, [r7, #0xb]
	lsrs r1, r1, #7
	ldrb r0, [r7, #0xc]
	movs r2, #0x7f
	ands r0, r2
	lsls r0, r0, #1
	orrs r0, r1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803BCF8
func_0803BCF8: @ 0x0803BCF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	lsrs r0, r0, #7
	ldrb r1, [r4, #0xc]
	movs r2, #0x7f
	ands r1, r2
	lsls r5, r1, #1
	orrs r5, r0
	cmp r5, #0
	bne .L0803BD32
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	adds r6, r4, #0
	adds r6, #0x10
	cmp r0, #1
	beq .L0803BD26
	adds r1, r4, #0
	adds r1, #0x2c
	adds r0, r6, #0
	bl func_08009940
.L0803BD26:
	adds r1, r4, #0
	adds r1, #0x44
	adds r0, r6, #0
	bl func_08009940
	strb r5, [r4, #0xd]
.L0803BD32:
	ldrb r3, [r4, #0xb]
	lsrs r0, r3, #7
	ldrb r1, [r4, #0xc]
	movs r2, #0x7f
	ands r1, r2
	lsls r1, r1, #1
	orrs r1, r0
	cmp r1, #0
	blt .L0803BD58
	cmp r1, #2
	bgt .L0803BD58
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xc]
.L0803BD58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803BD60
func_0803BD60: @ 0x0803BD60
	push {r4, lr}
	adds r4, r0, #0
	bl func_0803BCF8
	ldrb r0, [r4, #0xb]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	movs r0, #9
	strb r0, [r4, #0xd]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803BD88
func_0803BD88: @ 0x0803BD88
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0xb]
	lsrs r1, r3, #7
	ldrb r0, [r2, #0xc]
	movs r4, #0x7f
	ands r0, r4
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #0
	beq .L0803BDB2
	adds r0, r4, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xc]
.L0803BDB2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803BDB8
func_0803BDB8: @ 0x0803BDB8
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0xb]
	lsrs r1, r3, #7
	ldrb r0, [r2, #0xc]
	movs r4, #0x7f
	ands r0, r4
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #0
	beq .L0803BDDE
	adds r0, r4, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
.L0803BDDE:
	pop {r4}
	pop {r0}
	bx r0

	.section .text.tail0803BDEC, "ax", %progbits
	thumb_func_start func_0803BDEC
func_0803BDEC: @ 0x0803BDEC
	ldrh r3, [r0]
	adds r3, r3, r1
	strh r3, [r0]
	ldrh r1, [r0, #2]
	adds r1, r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_0803BDFC
func_0803BDFC: @ 0x0803BDFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	ldr r0, .L0803BE4C @ =vtable_unk_080E7778
	str r0, [r4, #4]
	movs r0, #0x64
	bl __builtin_new
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [sp, #0x40]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x44]
	str r1, [sp, #0x10]
	mov r1, r8
	mov r2, sb
	mov r3, sl
	bl func_0803B8CC
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0803BE4C: .4byte vtable_unk_080E7778

	thumb_func_start func_0803BE50
func_0803BE50: @ 0x0803BE50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, .L0803BE98 @ =vtable_unk_080E7778
	str r0, [r5, #4]
	ldr r4, [r5]
	cmp r4, #0
	beq .L0803BE84
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl func_080098AC
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl func_080098AC
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #2
	bl func_080098DC
	adds r0, r4, #0
	bl __builtin_delete
.L0803BE84:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq .L0803BE92
	adds r0, r5, #0
	bl __builtin_delete
.L0803BE92:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0803BE98: .4byte vtable_unk_080E7778
