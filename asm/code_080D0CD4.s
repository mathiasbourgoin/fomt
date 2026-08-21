	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080D0CD4
func_080D0CD4: @ 0x080D0CD4
	push {lr}
	adds r1, r0, #0
	ldr r0, .L080D0D08 @ =0x0000FFFF
	cmp r1, r0
	bhi .L080D0D02
	movs r3, #0xff
	ands r3, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	asrs r2, r0, #8
	adds r0, r3, #0
	subs r0, #0x40
	cmp r0, #0xbc
	bhi .L080D0D02
	cmp r2, #0x80
	bls .L080D0D02
	cmp r2, #0xea
	bhi .L080D0D02
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r0, #0x3f
	bhi .L080D0D0C
.L080D0D02:
	movs r0, #1
	rsbs r0, r0, #0
	b .L080D0D22
	.align 2, 0
.L080D0D08: .4byte 0x0000FFFF
.L080D0D0C:
	cmp r2, #0x9f
	bhi .L080D0D14
	subs r2, #0x81
	b .L080D0D16
.L080D0D14:
	subs r2, #0xc1
.L080D0D16:
	subs r3, #0x40
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r0, r1, #6
	subs r0, r0, r1
	adds r0, r0, r3
.L080D0D22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D0D28
func_080D0D28: @ 0x080D0D28
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r6, #0
	movs r5, #1
	rsbs r5, r5, #0
	adds r0, r2, #0
	subs r0, #0xb1
	cmp r0, #0x12
	bls .L080D0D3E
	b .L080D0E20
.L080D0D3E:
	lsls r0, r0, #2
	ldr r1, .L080D0D48 @ =.L080D0D4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080D0D48: .4byte .L080D0D4C
.L080D0D4C: @ jump table
	.4byte .L080D0DB0 @ case 0
	.4byte .L080D0DB8 @ case 1
	.4byte .L080D0DC0 @ case 2
	.4byte .L080D0D98 @ case 3
	.4byte .L080D0E20 @ case 4
	.4byte .L080D0DA0 @ case 5
	.4byte .L080D0DA8 @ case 6
	.4byte .L080D0E20 @ case 7
	.4byte .L080D0E20 @ case 8
	.4byte .L080D0E20 @ case 9
	.4byte .L080D0DC8 @ case 10
	.4byte .L080D0DD0 @ case 11
	.4byte .L080D0DD8 @ case 12
	.4byte .L080D0DE0 @ case 13
	.4byte .L080D0DE8 @ case 14
	.4byte .L080D0DF0 @ case 15
	.4byte .L080D0DF8 @ case 16
	.4byte .L080D0E00 @ case 17
	.4byte .L080D0E08 @ case 18
.L080D0D98:
	ldr r0, .L080D0D9C @ =gUnk_08117B20
	b .L080D0E0A
	.align 2, 0
.L080D0D9C: .4byte gUnk_08117B20
.L080D0DA0:
	ldr r0, .L080D0DA4 @ =gUnk_08117B2C
	b .L080D0E0A
	.align 2, 0
.L080D0DA4: .4byte gUnk_08117B2C
.L080D0DA8:
	ldr r0, .L080D0DAC @ =gUnk_08117B38
	b .L080D0E0A
	.align 2, 0
.L080D0DAC: .4byte gUnk_08117B38
.L080D0DB0:
	ldr r0, .L080D0DB4 @ =gUnk_08117B44
	b .L080D0E0A
	.align 2, 0
.L080D0DB4: .4byte gUnk_08117B44
.L080D0DB8:
	ldr r0, .L080D0DBC @ =gUnk_08117B50
	b .L080D0E0A
	.align 2, 0
.L080D0DBC: .4byte gUnk_08117B50
.L080D0DC0:
	ldr r0, .L080D0DC4 @ =gUnk_08117B5C
	b .L080D0E0A
	.align 2, 0
.L080D0DC4: .4byte gUnk_08117B5C
.L080D0DC8:
	ldr r0, .L080D0DCC @ =gUnk_08117B68
	b .L080D0E0A
	.align 2, 0
.L080D0DCC: .4byte gUnk_08117B68
.L080D0DD0:
	ldr r0, .L080D0DD4 @ =gUnk_08117B74
	b .L080D0E0A
	.align 2, 0
.L080D0DD4: .4byte gUnk_08117B74
.L080D0DD8:
	ldr r0, .L080D0DDC @ =gUnk_08117B80
	b .L080D0E0A
	.align 2, 0
.L080D0DDC: .4byte gUnk_08117B80
.L080D0DE0:
	ldr r0, .L080D0DE4 @ =gUnk_08117B8C
	b .L080D0E0A
	.align 2, 0
.L080D0DE4: .4byte gUnk_08117B8C
.L080D0DE8:
	ldr r0, .L080D0DEC @ =gUnk_08117B98
	b .L080D0E0A
	.align 2, 0
.L080D0DEC: .4byte gUnk_08117B98
.L080D0DF0:
	ldr r0, .L080D0DF4 @ =gUnk_08117BA4
	b .L080D0E0A
	.align 2, 0
.L080D0DF4: .4byte gUnk_08117BA4
.L080D0DF8:
	ldr r0, .L080D0DFC @ =gUnk_08117BB0
	b .L080D0E0A
	.align 2, 0
.L080D0DFC: .4byte gUnk_08117BB0
.L080D0E00:
	ldr r0, .L080D0E04 @ =gUnk_08117BBC
	b .L080D0E0A
	.align 2, 0
.L080D0E04: .4byte gUnk_08117BBC
.L080D0E08:
	ldr r0, .L080D0E18 @ =gUnk_08117BC8
.L080D0E0A:
	adds r1, r4, #0
	ldr r2, .L080D0E1C @ =func_0300085C
	bl _call_via_r2
	movs r0, #1
	b .L080D0EB6
	.align 2, 0
.L080D0E18: .4byte gUnk_08117BC8
.L080D0E1C: .4byte func_0300085C
.L080D0E20:
	cmp r2, #0
	ble .L080D0E58
	cmp r2, #0xff
	bgt .L080D0E3C
	ldr r1, .L080D0E38 @ =gUnk_084FA7A0
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r6, #1
	b .L080D0E58
	.align 2, 0
.L080D0E38: .4byte gUnk_084FA7A0
.L080D0E3C:
	ldr r0, .L080D0E78 @ =0x0000FFFF
	cmp r2, r0
	bgt .L080D0E58
	adds r0, r2, #0
	bl func_080D0CD4
	cmp r0, #0
	blt .L080D0E58
	ldr r1, .L080D0E7C @ =gUnk_08523290
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r6, #2
.L080D0E58:
	cmp r4, #0
	beq .L080D0EAE
	cmp r5, #0
	blt .L080D0EA4
	cmp r6, #1
	beq .L080D0E88
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, .L080D0E80 @ =gUnk_084FA9A0
	adds r0, r0, r1
	adds r1, r4, #0
	ldr r2, .L080D0E84 @ =func_03000714
	bl _call_via_r2
	b .L080D0EAE
	.align 2, 0
.L080D0E78: .4byte 0x0000FFFF
.L080D0E7C: .4byte gUnk_08523290
.L080D0E80: .4byte gUnk_084FA9A0
.L080D0E84: .4byte func_03000714
.L080D0E88:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, .L080D0E9C @ =gUnk_084F90CC
	adds r0, r0, r1
	adds r1, r4, #0
	ldr r2, .L080D0EA0 @ =func_0300085C
	bl _call_via_r2
	b .L080D0EAE
	.align 2, 0
.L080D0E9C: .4byte gUnk_084F90CC
.L080D0EA0: .4byte func_0300085C
.L080D0EA4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x80
	bl memset
.L080D0EAE:
	movs r0, #0
	cmp r5, #0
	blt .L080D0EB6
	adds r0, r6, #0
.L080D0EB6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_080D0EBC
func_080D0EBC: @ 0x080D0EBC
	stm r3!, {r0, r1, r2}
	bx lr
    
    .global func_080D0EC0
func_080D0EC0:
	push {lr}
	movs r0, #0
	pop {r1}
	bx r1

    .global __divsi3
__divsi3:
	cmp r1, #0
	beq func_080D0EC0
	svc #6
	bx lr

    .global __modsi3
__modsi3:
	cmp r1, #0
	beq func_080D0EC0
	svc #6
	adds r0, r1, #0
	bx lr

	non_word_aligned_thumb_func_start __udivsi3
__udivsi3: @ 0x080D0EDA
	adds r3, r0, #0
	orrs r3, r1
	bpl __divsi3
	cmp r1, #0
	beq func_080D0EC0
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo .L080D0F48
	movs r4, #1
	lsls r4, r4, #0x1c
.L080D0EF2:
	cmp r1, r4
	bhs .L080D0F00
	cmp r1, r0
	bhs .L080D0F00
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L080D0EF2
.L080D0F00:
	lsls r4, r4, #3
.L080D0F02:
	cmp r1, r4
	bhs .L080D0F10
	cmp r1, r0
	bhs .L080D0F10
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L080D0F02
.L080D0F10:
	cmp r0, r1
	blo .L080D0F18
	subs r0, r0, r1
	orrs r2, r3
.L080D0F18:
	lsrs r4, r1, #1
	cmp r0, r4
	blo .L080D0F24
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
.L080D0F24:
	lsrs r4, r1, #2
	cmp r0, r4
	blo .L080D0F30
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
.L080D0F30:
	lsrs r4, r1, #3
	cmp r0, r4
	blo .L080D0F3C
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
.L080D0F3C:
	cmp r0, #0
	beq .L080D0F48
	lsrs r3, r3, #4
	beq .L080D0F48
	lsrs r1, r1, #4
	b .L080D0F10
.L080D0F48:
	adds r0, r2, #0
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start __umodsi3
__umodsi3: @ 0x080D0F4E
	adds r3, r0, #0
	orrs r3, r1
	bpl __modsi3
	cmp r1, #0
	beq func_080D0EC0
	movs r3, #1
	cmp r0, r1
	bhs sub_080D0F60
	bx lr

	thumb_func_start sub_080D0F60
sub_080D0F60: @ 0x080D0F60
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
.L080D0F66:
	cmp r1, r4
	bhs .L080D0F74
	cmp r1, r0
	bhs .L080D0F74
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L080D0F66
.L080D0F74:
	lsls r4, r4, #3
.L080D0F76:
	cmp r1, r4
	bhs .L080D0F84
	cmp r1, r0
	bhs .L080D0F84
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L080D0F76
.L080D0F84:
	movs r2, #0
	cmp r0, r1
	blo .L080D0F8C
	subs r0, r0, r1
.L080D0F8C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo .L080D0F9E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L080D0F9E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo .L080D0FB0
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L080D0FB0:
	lsrs r4, r1, #3
	cmp r0, r4
	blo .L080D0FC2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L080D0FC2:
	mov ip, r3
	cmp r0, #0
	beq .L080D0FD0
	lsrs r3, r3, #4
	beq .L080D0FD0
	lsrs r1, r1, #4
	b .L080D0F84
.L080D0FD0:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne sub_080D0FDC
	pop {r4}
	bx lr

	thumb_func_start sub_080D0FDC
sub_080D0FDC: @ 0x080D0FDC
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq .L080D0FEA
	lsrs r4, r1, #3
	adds r0, r0, r4
.L080D0FEA:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq .L080D0FF8
	lsrs r4, r1, #2
	adds r0, r0, r4
.L080D0FF8:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq .L080D1006
	lsrs r4, r1, #1
	adds r0, r0, r4
.L080D1006:
	pop {r4}
	bx lr
	.align 2, 0

	thumb_func_start func_080D100C
func_080D100C: @ 0x080D100C
	ldr r2, .L080D1018 @ =gUnk_03000450
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	str r1, [r2]
	bx lr
	.align 2, 0
.L080D1018: .4byte gUnk_03000450

	thumb_func_start func_080D101C
func_080D101C: @ 0x080D101C
	ldr r2, .L080D1028 @ =gUnk_03000430
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r1, [r2]
	bx lr
	.align 2, 0
.L080D1028: .4byte gUnk_03000430

	thumb_func_start Unpack
Unpack: @ 0x080D102C
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	ldr r2, .L080D11C8 @ =0xFFFFFBE0
	add sp, r2
	mov r7, sp
	ldm r0!, {r4}
	lsrs r4, r4, #8
	push {r4}
	mov r8, r4
	subs r1, #2
	add r8, r1
	movs r2, #0
	adds r3, r2, #0
	movs r4, #8
	bl func_080D11A4
	str r4, [r7]
	adds r6, r4, #0
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1e
	subs r4, #1
	beq .L080D1068
	subs r4, #1
	beq .L080D106E
	ldr r5, .L080D11CC @ =func_080D116A
	b .L080D1076
.L080D1068:
	movs r4, #4
	ldr r5, .L080D11D0 @ =func_080D116E
	b .L080D1072
.L080D106E:
	movs r4, #8
	ldr r5, .L080D11D4 @ =func_080D117E
.L080D1072:
	bl func_080D10F0
.L080D1076:
	mov sb, r5
	push {r1}
	lsls r6, r6, #0x1d
	lsrs r6, r6, #0x1d
	subs r6, #1
	beq .L080D1094
	subs r6, #1
	beq .L080D109A
	subs r6, #1
	beq .L080D10A0
	subs r6, #1
	beq .L080D10A6
	bl sub_080D1224
	b .L080D10AA
.L080D1094:
	bl sub_080D129A
	b .L080D10AA
.L080D109A:
	bl sub_080D12EC
	b .L080D10AA
.L080D10A0:
	bl sub_080D139C
	b .L080D10AA
.L080D10A6:
	bl sub_080D1204
.L080D10AA:
	pop {r0}
	ldr r4, [r7]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1d
	subs r4, #1
	beq .L080D10C4
	subs r4, #1
	beq .L080D10CA
	subs r4, #1
	beq .L080D10D0
	subs r4, #1
	beq .L080D10D6
	b .L080D10DA
.L080D10C4:
	bl func_080D1518
	b .L080D10DA
.L080D10CA:
	bl func_080D1548
	b .L080D10DA
.L080D10D0:
	bl func_080D1564
	b .L080D10DA
.L080D10D6:
	bl func_080D1574
.L080D10DA:
	pop {r0}
	ldr r2, .L080D11D8 @ =0x00000420
	add sp, r2
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080D10F0
func_080D10F0: @ 0x080D10F0
	push {r1, r5, r6, lr}
	mov sl, r4
	movs r6, #1
	subs r5, r6, #2
	lsls r6, r4
	adds r4, r5, #0
	adds r1, r7, #0
	adds r1, #0x20
.L080D1100:
	stm r1!, {r4, r5}
	subs r6, #2
	bgt .L080D1100
	movs r4, #0x20
	mov fp, r4
	movs r5, #0
	mov ip, r5
	mov r6, sl
	lsls r6, r6, #1
.L080D1112:
	lsls r5, r5, #1
	mov r4, sl
	bl func_080D11A4
	tst r4, r4
	beq .L080D1160
	push {r6}
.L080D1120:
	mov sb, r4
	movs r1, #0x20
	mov r6, ip
	tst r6, r6
	beq .L080D1146
.L080D112A:
	adds r4, r5, #0
	lsrs r4, r6
	lsls r4, r4, #0x1f
	lsrs r4, r4, #0x1e
	adds r4, r4, r1
	ldrsh r1, [r7, r4]
	tst r1, r1
	bpl .L080D1142
	mov r1, fp
	adds r1, #4
	mov fp, r1
	strh r1, [r7, r4]
.L080D1142:
	subs r6, #1
	bne .L080D112A
.L080D1146:
	lsls r6, r5, #0x1f
	lsrs r6, r6, #0x1e
	adds r6, r6, r1
	mov r4, sl
	bl func_080D11A4
	mvns r4, r4
	strh r4, [r7, r6]
	adds r5, #1
	mov r4, sb
	subs r4, #1
	bne .L080D1120
	pop {r6}
.L080D1160:
	movs r1, #1
	add ip, r1
	subs r6, #1
	bne .L080D1112
	pop {r1, r5, r6, pc}

	non_word_aligned_thumb_func_start func_080D116A
func_080D116A: @ 0x080D116A
	movs r4, #8
	b func_080D11A4

	non_word_aligned_thumb_func_start func_080D116E
func_080D116E: @ 0x080D116E
	push {r5, r6, lr}
	bl func_080D1186
	lsls r6, r4, #4
	bl func_080D1186
	orrs r4, r6
	pop {r5, r6, pc}

	non_word_aligned_thumb_func_start func_080D117E
func_080D117E: @ 0x080D117E
	push {r5, lr}
	bl func_080D1186
	pop {r5, pc}

	non_word_aligned_thumb_func_start func_080D1186
func_080D1186: @ 0x080D1186
	movs r4, #0x20
.L080D1188:
	subs r3, #1
	bmi sub_080D119E
.L080D118C:
	lsrs r5, r2, #0x1f
	lsls r2, r2, #1
	lsls r5, r5, #1
	adds r5, r5, r4
	ldrsh r4, [r7, r5]
	tst r4, r4
	bpl .L080D1188
	mvns r4, r4
	bx lr

	non_word_aligned_thumb_func_start sub_080D119E
sub_080D119E: @ 0x080D119E
	ldm r0!, {r2}
	adds r3, #0x20
	b .L080D118C
func_080D11A4:
	push {r5, r6, lr}
	movs r5, #0x20
	subs r5, r5, r4
	adds r6, r2, #0
	lsrs r6, r5
	subs r3, r3, r4
	bmi sub_080D11B8
	lsls r2, r4
	adds r4, r6, #0
	pop {r5, r6, pc}

	thumb_func_start sub_080D11B8
sub_080D11B8: @ 0x080D11B8
	ldm r0!, {r2}
	rsbs r5, r3, #0
	adds r4, r2, #0
	lsls r2, r5
	adds r3, #0x20
	lsrs r4, r3
	orrs r4, r6
	pop {r5, r6, pc}
	.align 2, 0
.L080D11C8: .4byte 0xFFFFFBE0
.L080D11CC: .4byte func_080D116A
.L080D11D0: .4byte func_080D116E
.L080D11D4: .4byte func_080D117E
.L080D11D8: .4byte 0x00000420
.L080D11DC:
	.byte 0x06, 0x49, 0x08, 0x60
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start rand
rand: @ 0x080D11E4
	add r0, pc, #0x10
	ldm r0!, {r1, r2, r3}
	ldr r0, [r1]
	muls r0, r2, r0
	adds r0, r0, r3
	str r0, [r1]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	bx lr
	.align 2, 0
.L080D11F8:
	.byte 0x50, 0x0A, 0x00, 0x03, 0x6D, 0x4E, 0xC6, 0x41
	.byte 0x39, 0x30, 0x00, 0x00

	thumb_func_start sub_080D1204
sub_080D1204: @ 0x080D1204
	push {lr}
	mov r6, r8
	subs r6, r6, r1
	mov lr, pc
	bx sb
.L080D120E:
	.byte 0x01, 0x31
	.byte 0xCD, 0x07, 0x02, 0xD4, 0x24, 0x02, 0x54, 0x44, 0x0C, 0x80, 0xA2, 0x46, 0x01, 0x3E, 0xF4, 0xD1
	.byte 0x10, 0xBC, 0x20, 0x47

	thumb_func_start sub_080D1224
sub_080D1224: @ 0x080D1224
	push {lr}
	movs r5, #2
	bl func_080D14EC
	ldr r4, .L080D150C @ =0x080D1292
	mov ip, r4
	movs r4, #2
	bl func_080D11A4
	cmp r4, #2
	blo .L080D125C
	beq .L080D1274
	movs r4, #6
	bl func_080D11A4
	adds r6, r4, #1
	movs r4, #8
	bl func_080D11A4
	adds r1, #1
	lsls r5, r1, #0x1f
	bmi .L080D1256
	lsls r4, r4, #8
	add r4, sl
	strh r4, [r1]
.L080D1256:
	mov sl, r4
	movs r5, #1
	b .L080D145C
.L080D125C:
	lsls r5, r4, #2
	adds r5, r5, r7
	ldrb r4, [r5, #6]
	bl func_080D11A4
	ldrh r5, [r5, #4]
	adds r5, r5, r4
	movs r4, #6
	bl func_080D11A4
	adds r6, r4, #3
	b .L080D145C
.L080D1274:
	movs r4, #6
	bl func_080D11A4
	adds r6, r4, #1
	mov lr, pc
	bx sb
.L080D1280:
	.byte 0x01, 0x31, 0xCD, 0x07, 0x02, 0xD4, 0x24, 0x02, 0x54, 0x44, 0x0C, 0x80, 0xA2, 0x46, 0x01, 0x3E
	.byte 0xF4, 0xD1, 0x41, 0x45, 0xCC, 0xD3, 0x10, 0xBC, 0x20, 0x47

	non_word_aligned_thumb_func_start sub_080D129A
sub_080D129A: @ 0x080D129A
	push {lr}
	movs r5, #4
	bl func_080D14EC
	ldr r4, .L080D1510 @ =0x080D12DE
	mov ip, r4
	subs r3, #1
	bmi .L080D12E6
.L080D12AA:
	lsls r2, r2, #1
	blo .L080D12CC
	movs r4, #2
	bl func_080D11A4
	lsls r5, r4, #2
	adds r5, r5, r7
	ldrb r4, [r5, #6]
	bl func_080D11A4
	ldrh r5, [r5, #4]
	adds r5, r5, r4
	movs r4, #4
	bl func_080D11A4
	adds r6, r4, #3
	b .L080D145C
.L080D12CC:
	mov lr, pc
	bx sb
.L080D12D0:
	.byte 0x01, 0x31, 0xCE, 0x07, 0x02, 0xD4, 0x24, 0x02, 0x54, 0x44, 0x0C, 0x80, 0xA2, 0x46, 0x41, 0x45
	.byte 0xE1, 0xD3, 0x10, 0xBC, 0x20, 0x47
.L080D12E6:
	ldm r0!, {r2}
	adds r3, #0x20
	b .L080D12AA

	thumb_func_start sub_080D12EC
sub_080D12EC: @ 0x080D12EC
	push {lr}
	movs r5, #7
	bl func_080D14EC
	ldr r4, .L080D1514 @ =0x080D1388
	mov ip, r4
	subs r3, #1
	bmi .L080D1390
.L080D12FC:
	lsls r2, r2, #1
	blo .L080D1376
	movs r4, #3
	bl func_080D11A4
	cmp r4, #7
	beq .L080D1322
	lsls r5, r4, #2
	adds r5, r5, r7
	ldrb r4, [r5, #6]
	bl func_080D11A4
	ldrh r5, [r5, #4]
	adds r5, r5, r4
	movs r4, #4
	bl func_080D11A4
	adds r6, r4, #3
	b .L080D145C
.L080D1322:
	movs r6, #0
.L080D1324:
	movs r4, #4
	bl func_080D11A4
	lsls r6, r6, #4
	adds r6, r6, r4
	lsrs r6, r6, #1
	bhs .L080D1324
	subs r3, #1
	bmi .L080D1396
.L080D1336:
	lsls r2, r2, #1
	blo .L080D135C
	movs r4, #3
	bl func_080D11A4
	lsls r5, r4, #2
	adds r5, r5, r7
	ldrb r4, [r5, #6]
	bl func_080D11A4
	ldrh r5, [r5, #4]
	adds r5, r5, r4
	movs r4, #4
	bl func_080D11A4
	lsls r6, r6, #4
	adds r6, r6, r4
	adds r6, #3
	b .L080D145C
.L080D135C:
	adds r6, #1
	mov lr, pc
	bx sb
.L080D1362:
	.byte 0x01, 0x31, 0xCD, 0x07, 0x02, 0xD4, 0x24, 0x02, 0x54, 0x44, 0x0C, 0x80, 0xA2, 0x46
	.byte 0x01, 0x3E, 0xF4, 0xD1, 0x08, 0xE0
.L080D1376:
	mov lr, pc
	bx sb
.L080D137A:
	.byte 0x01, 0x31, 0xCD, 0x07, 0x02, 0xD4
	.byte 0x24, 0x02, 0x54, 0x44, 0x0C, 0x80, 0xA2, 0x46, 0x41, 0x45, 0xB5, 0xD3, 0x10, 0xBC, 0x20, 0x47
.L080D1390:
	ldm r0!, {r2}
	adds r3, #0x20
	b .L080D12FC
.L080D1396:
	ldm r0!, {r2}
	adds r3, #0x20
	b .L080D1336

	thumb_func_start sub_080D139C
sub_080D139C: @ 0x080D139C
	push {lr}
	movs r5, #3
	bl func_080D14EC
.L080D13A4:
	subs r3, #1
	bmi .L080D1450
.L080D13A8:
	lsls r2, r2, #1
	bhs .L080D13C0
	mov lr, pc
	bx sb
.L080D13B0:
	.byte 0x25, 0x1C, 0xFE, 0x46, 0x48, 0x47, 0x24, 0x02, 0x2C, 0x43, 0x02, 0x31, 0x0C, 0x80, 0x43, 0xE0
.L080D13C0:
	movs r4, #2
	bl func_080D11A4
	cmp r4, #3
	beq .L080D13E4
	lsls r5, r4, #2
	adds r5, r5, r7
	ldrb r4, [r5, #6]
	bl func_080D11A4
	ldrh r5, [r5, #4]
	adds r5, r5, r4
	lsls r5, r5, #1
	movs r4, #3
	bl func_080D11A4
	adds r6, r4, #2
	b .L080D143A
.L080D13E4:
	movs r6, #0
.L080D13E6:
	movs r4, #3
	bl func_080D11A4
	lsls r6, r6, #3
	adds r6, r6, r4
	lsrs r6, r6, #1
	bhs .L080D13E6
	subs r3, #1
	bmi .L080D1456
.L080D13F8:
	lsls r2, r2, #1
	blo .L080D1420
	movs r4, #2
	bl func_080D11A4
	lsls r5, r4, #2
	adds r5, r5, r7
	ldrb r4, [r5, #6]
	bl func_080D11A4
	ldrh r5, [r5, #4]
	adds r5, r5, r4
	lsls r5, r5, #1
	movs r4, #3
	bl func_080D11A4
	lsls r6, r6, #3
	adds r6, r6, r4
	adds r6, #2
	b .L080D143A
.L080D1420:
	adds r6, #1
	mov lr, pc
	bx sb
.L080D1426:
	.byte 0x25, 0x1C, 0xFE, 0x46, 0x48, 0x47, 0x24, 0x02, 0x64, 0x19
	.byte 0x02, 0x31, 0x0C, 0x80, 0x01, 0x3E, 0xF4, 0xD1, 0x06, 0xE0
.L080D143A:
	subs r5, r1, r5
.L080D143C:
	adds r5, #2
	ldrh r4, [r5]
	adds r1, #2
	strh r4, [r1]
	subs r6, #1
	bne .L080D143C
	cmp r1, r8
	blo .L080D13A4
	pop {r4}
	bx r4
.L080D1450:
	ldm r0!, {r2}
	adds r3, #0x20
	b .L080D13A8
.L080D1456:
	ldm r0!, {r2}
	adds r3, #0x20
	b .L080D13F8
.L080D145C:
	mov lr, ip
	push {r2, lr}
	mov r2, sl
	cmp r5, #1
	beq sub_080D14C6
	lsls r4, r5, #0x1f
	bne sub_080D1498
	subs r5, r1, r5
	lsls r4, r5, #0x1f
	beq .L080D1482
	adds r5, #1
	ldrh r4, [r5]
	lsrs r4, r4, #8
	lsls r4, r4, #8
	orrs r4, r2
	adds r1, #1
	strh r4, [r1]
	subs r6, #1
	beq .L080D1494
.L080D1482:
	adds r5, #2
	ldrh r4, [r5]
	adds r1, #2
	strh r4, [r1]
	subs r6, #2
	bgt .L080D1482
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	adds r1, r1, r6
.L080D1494:
	mov sl, r2
	pop {r2, pc}

	thumb_func_start sub_080D1498
sub_080D1498: @ 0x080D1498
	subs r5, r1, r5
	lsls r4, r5, #0x1f
	beq .L080D14AA
	adds r5, #1
	ldrh r2, [r5]
	lsrs r2, r2, #8
	adds r1, #1
	subs r6, #1
	beq .L080D14C2
.L080D14AA:
	subs r1, #1
.L080D14AC:
	adds r5, #2
	ldrh r4, [r5]
	lsls r4, r4, #8
	orrs r4, r2
	adds r1, #2
	strh r4, [r1]
	lsrs r2, r4, #0x10
	subs r6, #2
	bgt .L080D14AC
	adds r6, #1
	adds r1, r1, r6
.L080D14C2:
	mov sl, r2
	pop {r2, pc}

	non_word_aligned_thumb_func_start sub_080D14C6
sub_080D14C6: @ 0x080D14C6
	lsls r4, r1, #0x1f
	bpl .L080D14D4
	lsls r4, r2, #8
	orrs r4, r2
	adds r1, #1
	adds r6, #1
	b .L080D14DE
.L080D14D4:
	ldrh r4, [r1]
	lsrs r4, r4, #8
	lsls r2, r4, #8
	orrs r4, r2
.L080D14DC:
	adds r1, #2
.L080D14DE:
	strh r4, [r1]
	subs r6, #2
	bgt .L080D14DC
	lsrs r2, r4, #8
	adds r1, r1, r6
	mov sl, r2
	pop {r2, pc}

	thumb_func_start func_080D14EC
func_080D14EC: @ 0x080D14EC
	push {r1, r7, lr}
	movs r6, #1
.L080D14F0:
	movs r4, #4
	bl func_080D11A4
	adds r4, #1
	strb r4, [r7, #6]
	strh r6, [r7, #4]
	adds r7, #4
	movs r1, #1
	lsls r1, r4
	adds r6, r6, r1
	subs r5, #1
	bne .L080D14F0
	pop {r1, r7, pc}
	.align 2, 0
.L080D150C: .4byte 0x080D1292
.L080D1510: .4byte 0x080D12DE
.L080D1514: .4byte 0x080D1388

	thumb_func_start func_080D1518
func_080D1518: @ 0x080D1518
	movs r6, #0xf
	movs r5, #0
.L080D151C:
	ldrh r2, [r0, #2]
	lsrs r1, r2, #4
	lsrs r3, r2, #0xc
	lsrs r4, r2, #8
	adds r1, r1, r5
	adds r2, r2, r1
	adds r3, r3, r2
	adds r5, r4, r3
	ands r1, r6
	ands r2, r6
	ands r5, r6
	lsls r1, r1, #4
	lsls r3, r3, #0xc
	lsls r4, r5, #8
	orrs r1, r2
	orrs r1, r3
	orrs r1, r4
	strh r1, [r0, #2]
	adds r0, #2
	cmp r0, r8
	blo .L080D151C
	bx lr

	thumb_func_start func_080D1548
func_080D1548: @ 0x080D1548
	movs r5, #0xff
	movs r4, #0
.L080D154C:
	ldrh r2, [r0, #2]
	lsrs r3, r2, #8
	adds r2, r2, r4
	ands r2, r5
	adds r4, r3, r2
	lsls r1, r4, #8
	orrs r1, r2
	strh r1, [r0, #2]
	adds r0, #2
	cmp r0, r8
	blo .L080D154C
	bx lr

	thumb_func_start func_080D1564
func_080D1564: @ 0x080D1564
	movs r4, #0
.L080D1566:
	ldrh r2, [r0, #2]
	adds r4, r4, r2
	strh r4, [r0, #2]
	adds r0, #2
	cmp r0, r8
	blo .L080D1566
	bx lr

	thumb_func_start func_080D1574
func_080D1574: @ 0x080D1574
	movs r3, #0xff
	lsls r6, r3, #8
	movs r4, #0
	movs r5, #0
.L080D157C:
	ldrh r2, [r0, #2]
	adds r4, r4, r2
	ands r4, r3
	adds r5, r5, r2
	ands r5, r6
	adds r1, r5, #0
	orrs r1, r4
	strh r1, [r0, #2]
	adds r0, #2
	cmp r0, r8
	blo .L080D157C
	bx lr
