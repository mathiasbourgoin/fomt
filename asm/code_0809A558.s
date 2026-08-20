	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0809A558
func_0809A558: @ 0x0809A558
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_08094F6C
	ldr r1, [sp]
	cmp r1, #0
	beq .L0809A57A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0809A57A:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0809A58C
func_0809A58C: @ 0x0809A58C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r0, .L0809A618 @ =gUnk_0810110C
	mov r8, r0
	add r1, sp, #0x10
	movs r0, #0
	strh r0, [r1]
	ldr r2, [sp, #0x28]
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r1, #6]
	mov r3, r8
	ldrh r0, [r3]
	mov sl, r1
	cmp r0, #0
	bne .L0809A5BC
	b .L0809A88C
.L0809A5BC:
	adds r2, #2
	str r2, [sp, #0x2c]
.L0809A5C0:
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x28]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	ldr r2, [sp, #0x2c]
	mov r1, sp
	movs r3, #7
.L0809A5D6:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge .L0809A5D6
	movs r2, #0
	mov ip, r2
	mov r3, r8
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq .L0809A610
	movs r2, #0x42
	ands r2, r4
	cmp r2, #2
	beq .L0809A60C
	movs r1, #0x40
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov ip, r0
.L0809A60C:
	ldr r0, .L0809A61C @ =0x0000FFBD
	ands r4, r0
.L0809A610:
	movs r3, #0
	movs r6, #1
	adds r1, r5, #0
	b .L0809A622
	.align 2, 0
.L0809A618: .4byte gUnk_0810110C
.L0809A61C: .4byte 0x0000FFBD
.L0809A620:
	adds r3, #1
.L0809A622:
	cmp r3, #0xb
	bgt .L0809A640
	adds r2, r6, #0
	lsls r2, r3
	ands r2, r1
	cmp r2, #0
	beq .L0809A620
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq .L0809A63C
	eors r4, r2
	b .L0809A620
.L0809A63C:
	movs r0, #1
	mov ip, r0
.L0809A640:
	cmp r4, #0
	beq .L0809A684
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq .L0809A67C
	adds r2, r0, #0
	ldrh r1, [r2]
	cmp r1, #0
	beq .L0809A67C
	mov r3, sl
.L0809A656:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq .L0809A674
	eors r4, r1
	movs r0, #2
	ldrsb r0, [r2, r0]
	ldrh r1, [r3, #2]
	adds r1, r1, r0
	strh r1, [r3, #2]
	movs r0, #3
	ldrsb r0, [r2, r0]
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
.L0809A674:
	adds r2, #4
	ldrh r1, [r2]
	cmp r1, #0
	bne .L0809A656
.L0809A67C:
	cmp r4, #0
	beq .L0809A684
	movs r2, #1
	mov ip, r2
.L0809A684:
	mov r3, r8
	ldr r4, [r3, #8]
	ldrh r0, [r4]
	cmp r0, #0
	bne .L0809A690
	b .L0809A7DC
.L0809A690:
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #8
	mov sb, r0
.L0809A698:
	ldr r6, .L0809A6B0 @ =0x0000FFFF
	ldrh r1, [r4]
	ldr r0, .L0809A6B4 @ =0x00000201
	cmp r1, r0
	beq .L0809A6F2
	cmp r1, r0
	bgt .L0809A6B8
	subs r0, #1
	cmp r1, r0
	beq .L0809A6CC
	b .L0809A76C
	.align 2, 0
.L0809A6B0: .4byte 0x0000FFFF
.L0809A6B4: .4byte 0x00000201
.L0809A6B8:
	ldr r0, .L0809A6C8 @ =0x00000202
	cmp r1, r0
	beq .L0809A718
	adds r0, #1
	cmp r1, r0
	beq .L0809A73E
	b .L0809A76C
	.align 2, 0
.L0809A6C8: .4byte 0x00000202
.L0809A6CC:
	movs r1, #0
	ldrh r0, [r7]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls .L0809A74C
.L0809A6DA:
	adds r1, #1
	cmp r1, #7
	bgt .L0809A7AC
	lsls r0, r1, #1
	add r0, sp
	ldrh r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L0809A6DA
	b .L0809A766
.L0809A6F2:
	movs r1, #0
	ldrh r0, [r7]
	subs r0, #0x1d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls .L0809A74C
.L0809A700:
	adds r1, #1
	cmp r1, #7
	bgt .L0809A7AC
	lsls r0, r1, #1
	add r0, sp
	ldrh r0, [r0]
	subs r0, #0x1d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L0809A700
	b .L0809A766
.L0809A718:
	movs r1, #0
	ldrh r0, [r7]
	subs r0, #0x23
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls .L0809A74C
.L0809A726:
	adds r1, #1
	cmp r1, #7
	bgt .L0809A7AC
	lsls r0, r1, #1
	add r0, sp
	ldrh r0, [r0]
	subs r0, #0x23
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L0809A726
	b .L0809A766
.L0809A73E:
	movs r1, #0
	ldrh r0, [r7]
	subs r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L0809A750
.L0809A74C:
	movs r6, #0
	b .L0809A7AC
.L0809A750:
	adds r1, #1
	cmp r1, #7
	bgt .L0809A7AC
	lsls r0, r1, #1
	add r0, sp
	ldrh r0, [r0]
	subs r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L0809A750
.L0809A766:
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	b .L0809A7AC
.L0809A76C:
	movs r2, #0
	ldrh r1, [r4]
	ldr r3, .L0809A7A0 @ =0x00000FFF
	ands r3, r1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, sp
.L0809A77E:
	ldrh r0, [r1]
	cmp r0, r3
	bne .L0809A7A4
	lsls r0, r2, #0x10
	lsrs r6, r0, #0x10
	cmp r5, #0
	beq .L0809A7AC
	movs r2, #0x80
	lsls r2, r2, #8
.L0809A790:
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne .L0809A790
	b .L0809A7AC
	.align 2, 0
.L0809A7A0: .4byte 0x00000FFF
.L0809A7A4:
	adds r1, #2
	adds r2, #1
	cmp r2, #7
	ble .L0809A77E
.L0809A7AC:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne .L0809A7C8
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	bne .L0809A7D2
	movs r2, #1
	mov ip, r2
	b .L0809A7DC
.L0809A7C8:
	lsls r0, r0, #1
	mov r3, sp
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
.L0809A7D2:
	adds r4, #2
	ldrh r0, [r4]
	cmp r0, #0
	beq .L0809A7DC
	b .L0809A698
.L0809A7DC:
	movs r2, #0
	mov r1, sp
	movs r3, #7
.L0809A7E2:
	ldrh r0, [r1]
	cmp r0, #0
	beq .L0809A7F2
	lsls r0, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r2, r0, #0x10
.L0809A7F2:
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge .L0809A7E2
	cmp r2, #0
	beq .L0809A848
	mov r1, r8
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq .L0809A848
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #0
	beq .L0809A848
	mov r3, sl
	movs r7, #0
.L0809A812:
	movs r4, #0
	adds r6, r2, #4
	ldrh r5, [r2]
	mov r1, sp
.L0809A81A:
	ldrh r0, [r1]
	cmp r0, r5
	bne .L0809A838
	strh r7, [r1]
	movs r0, #2
	ldrsb r0, [r2, r0]
	ldrh r1, [r3, #2]
	adds r1, r1, r0
	strh r1, [r3, #2]
	movs r0, #3
	ldrsb r0, [r2, r0]
	ldrh r2, [r3, #4]
	adds r0, r0, r2
	strh r0, [r3, #4]
	b .L0809A840
.L0809A838:
	adds r1, #2
	adds r4, #1
	cmp r4, #7
	ble .L0809A81A
.L0809A840:
	adds r2, r6, #0
	ldrh r0, [r2]
	cmp r0, #0
	bne .L0809A812
.L0809A848:
	movs r2, #0
	mov r1, sp
	movs r3, #7
.L0809A84E:
	ldrh r0, [r1]
	cmp r0, #0
	beq .L0809A85E
	lsls r0, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r2, r0, #0x10
.L0809A85E:
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge .L0809A84E
	cmp r2, #0
	beq .L0809A86E
	movs r0, #1
	mov ip, r0
.L0809A86E:
	mov r1, ip
	cmp r1, #0
	bne .L0809A87E
	mov r2, r8
	ldrh r0, [r2]
	mov r3, sl
	strh r0, [r3]
	b .L0809A88C
.L0809A87E:
	movs r4, #0x14
	add r8, r4
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq .L0809A88C
	b .L0809A5C0
.L0809A88C:
	ldr r1, [sp, #0x24]
	mov r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp, #0x24]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809A8AC
func_0809A8AC: @ 0x0809A8AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r2, r5, #0
	movs r4, #0x7f
	ldr r0, .L0809A92C @ =gUnk_0810110C
	mov sb, r0
	movs r6, #0
	ldr r1, .L0809A930 @ =0xFFFFF000
	mov r8, r1
	movs r0, #0x11
	rsbs r0, r0, #0
	mov ip, r0
	movs r7, #1
	rsbs r7, r7, #0
.L0809A8CE:
	strh r6, [r2]
	ldrh r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strh r0, [r2, #0x12]
	ldrb r1, [r2, #0x13]
	mov r0, ip
	ands r0, r1
	strb r0, [r2, #0x13]
	adds r3, r2, #0
	adds r3, #0x14
	subs r4, #1
	movs r1, #7
	adds r0, r2, #0
	adds r0, #0x10
.L0809A8EC:
	strh r6, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L0809A8EC
	adds r2, r3, #0
	cmp r4, r7
	bne .L0809A8CE
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L0809A934 @ =0x00000A01
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	movs r0, #0
	movs r3, #0
	mov r2, sb
	b .L0809A950
	.align 2, 0
.L0809A92C: .4byte gUnk_0810110C
.L0809A930: .4byte 0xFFFFF000
.L0809A934: .4byte 0x00000A01
.L0809A938:
	cmp r1, r0
	beq .L0809A94E
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2]
.L0809A94E:
	adds r2, #0x14
.L0809A950:
	ldrh r1, [r2]
	cmp r1, #0
	bne .L0809A938
	ldr r1, .L0809A96C @ =0x00000A06
	adds r0, r5, r1
	strb r3, [r0]
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809A96C: .4byte 0x00000A06

	thumb_func_start func_0809A970
func_0809A970: @ 0x0809A970
	push {r4, lr}
	lsls r3, r2, #2
	adds r3, r3, r2
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r3, [r0, #0x12]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldrh r4, [r1, #0x12]
	ldr r2, .L0809A9BC @ =0xFFFFF000
	ands r2, r4
	orrs r2, r3
	strh r2, [r1, #0x12]
	ldrb r2, [r0, #0x13]
	movs r3, #0x10
	ands r3, r2
	ldrb r4, [r1, #0x13]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r1, #0x13]
	adds r2, r0, #2
	adds r1, #2
	movs r3, #7
.L0809A9A6:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge .L0809A9A6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0809A9BC: .4byte 0xFFFFF000

	thumb_func_start func_0809A9C0
func_0809A9C0: @ 0x0809A9C0
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	adds r3, r0, #0
	movs r1, #0
	ldr r4, .L0809AA10 @ =0x00000A06
	adds r0, r3, r4
	ldrb r4, [r0]
	cmp r1, r4
	bge .L0809AA22
	ldrh r5, [r2]
	ldr r7, .L0809AA14 @ =0xFFFFF000
	adds r6, r2, #2
	adds r4, r0, #0
.L0809A9DA:
	ldrh r0, [r3]
	cmp r0, r5
	bne .L0809AA18
	ldrb r0, [r3, #0x13]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x13]
	ldrh r1, [r2, #0x12]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #0x12]
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x12]
	adds r2, r6, #0
	adds r1, r3, #2
	movs r3, #7
.L0809A9FE:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge .L0809A9FE
	b .L0809AA22
	.align 2, 0
.L0809AA10: .4byte 0x00000A06
.L0809AA14: .4byte 0xFFFFF000
.L0809AA18:
	adds r3, #0x14
	adds r1, #1
	ldrb r0, [r4]
	cmp r1, r0
	blt .L0809A9DA
.L0809AA22:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0809AA28
func_0809AA28: @ 0x0809AA28
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, .L0809AA54 @ =0x00000A06
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge .L0809AA4E
	adds r2, r1, #0
	adds r1, r0, #0
.L0809AA3C:
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0809AA46
	adds r3, #1
.L0809AA46:
	adds r2, #0x14
	subs r1, #1
	cmp r1, #0
	bne .L0809AA3C
.L0809AA4E:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
.L0809AA54: .4byte 0x00000A06

	thumb_func_start func_0809AA58
func_0809AA58: @ 0x0809AA58
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	adds r0, r1, #0
	subs r0, #0x9b
	cmp r0, #5
	bhi .L0809AAC8
	lsls r0, r0, #2
	ldr r1, .L0809AA74 @ =.L0809AA78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809AA74: .4byte .L0809AA78
.L0809AA78: @ jump table
	.4byte .L0809AA90 @ case 0
	.4byte .L0809AA96 @ case 1
	.4byte .L0809AAA0 @ case 2
	.4byte .L0809AAA8 @ case 3
	.4byte .L0809AAB0 @ case 4
	.4byte .L0809AAB8 @ case 5
.L0809AA90:
	movs r0, #0xa0
	lsls r0, r0, #4
	b .L0809AABA
.L0809AA96:
	ldr r0, .L0809AA9C @ =0x00000A01
	b .L0809AABA
	.align 2, 0
.L0809AA9C: .4byte 0x00000A01
.L0809AAA0:
	ldr r0, .L0809AAA4 @ =0x00000A02
	b .L0809AABA
	.align 2, 0
.L0809AAA4: .4byte 0x00000A02
.L0809AAA8:
	ldr r0, .L0809AAAC @ =0x00000A03
	b .L0809AABA
	.align 2, 0
.L0809AAAC: .4byte 0x00000A03
.L0809AAB0:
	ldr r0, .L0809AAB4 @ =0x00000A04
	b .L0809AABA
	.align 2, 0
.L0809AAB4: .4byte 0x00000A04
.L0809AAB8:
	ldr r0, .L0809AAD0 @ =0x00000A05
.L0809AABA:
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne .L0809AAC8
	movs r0, #1
	strb r0, [r1]
	movs r3, #1
.L0809AAC8:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
.L0809AAD0: .4byte 0x00000A05

	thumb_func_start func_0809AAD4
func_0809AAD4: @ 0x0809AAD4
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, .L0809AB04 @ =0x00000A06
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge .L0809AAFE
	adds r2, r0, #0
.L0809AAE6:
	ldrh r0, [r1]
	cmp r0, #0xab
	bhi .L0809AAF6
	ldrb r0, [r1, #0x13]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0809AAF6
	adds r3, #1
.L0809AAF6:
	adds r1, #0x14
	subs r2, #1
	cmp r2, #0
	bne .L0809AAE6
.L0809AAFE:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
.L0809AB04: .4byte 0x00000A06

	thumb_func_start func_0809AB08
func_0809AB08: @ 0x0809AB08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	mov r8, r0
	adds r5, r1, #0
	mov ip, r2
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	movs r6, #0
	movs r2, #0
	ldr r1, .L0809AB58 @ =0x00000A06
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge .L0809AB6E
	add r4, sp, #0x14
	adds r3, r5, #0
	adds r1, r5, #0
.L0809AB30:
	ldrh r0, [r3]
	cmp r0, #0xab
	bhi .L0809AB5E
	ldrb r0, [r3, #0x13]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0809AB5E
	cmp r6, ip
	bne .L0809AB5C
	adds r0, r4, #0
	bl func_0809A58C
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	b .L0809AB6E
	.align 2, 0
.L0809AB58: .4byte 0x00000A06
.L0809AB5C:
	adds r6, #1
.L0809AB5E:
	adds r3, #0x14
	adds r1, #0x14
	adds r2, #1
	ldr r7, .L0809AB88 @ =0x00000A06
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r2, r0
	blt .L0809AB30
.L0809AB6E:
	mov r1, r8
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809AB88: .4byte 0x00000A06

	thumb_func_start func_0809AB8C
func_0809AB8C: @ 0x0809AB8C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	str r0, [r4]
	ldrb r1, [r4, #4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4, #4]
	movs r1, #0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xfc
	str r1, [r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r0, r4, #0
	bl func_0809AE6C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0809ABD8
func_0809ABD8: @ 0x0809ABD8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r3, r0, #0
	adds r5, r1, #0
	adds r4, r3, #0
	adds r4, #0xfc
	movs r0, #0
	ldr r1, [r4]
	cmp r1, #0
	bne .L0809ABEE
	movs r0, #1
.L0809ABEE:
	cmp r0, #0
	beq .L0809AC14
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	cmp r1, #3
	bhi .L0809AC14
	lsls r0, r1, #3
	adds r0, #4
	adds r2, r4, r0
	cmp r2, #0
	beq .L0809AC0E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0809AC0E:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
.L0809AC14:
	movs r0, #0
	ldr r1, [r3, #8]
	adds r4, r3, #0
	adds r4, #8
	cmp r1, #0
	bne .L0809AC22
	movs r0, #1
.L0809AC22:
	cmp r0, #0
	beq .L0809AC48
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0x1d
	bhi .L0809AC48
	lsls r0, r1, #3
	adds r0, #4
	adds r2, r4, r0
	cmp r2, #0
	beq .L0809AC42
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
.L0809AC42:
	ldr r0, [r3, #8]
	adds r0, #1
	str r0, [r3, #8]
.L0809AC48:
	ldr r0, [r3]
	adds r1, r0, #0
	ldr r6, .L0809ACB4 @ =0x3B9ACA00
	subs r0, r6, r1
	cmp r0, r5
	bls .L0809AC56
	adds r0, r5, #0
.L0809AC56:
	adds r1, r1, r0
	str r1, [r3]
	ldr r0, .L0809ACB8 @ =0x05F5E0FF
	cmp r1, r0
	bls .L0809AC68
	ldrb r0, [r3, #4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #4]
.L0809AC68:
	ldr r0, [r3, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r4, r4, r0
	adds r1, r3, #0
	adds r1, #0xfc
	ldr r0, [r1]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r2, [r4]
	subs r0, r6, r2
	cmp r0, r5
	bls .L0809AC8A
	adds r0, r5, #0
.L0809AC8A:
	adds r0, r2, r0
	str r0, [r4]
	ldr r2, [r1]
	subs r0, r6, r2
	cmp r0, r5
	bls .L0809AC98
	adds r0, r5, #0
.L0809AC98:
	adds r0, r2, r0
	str r0, [r1]
	ldr r1, [r4]
	ldr r0, .L0809ACBC @ =0x0001869F
	cmp r1, r0
	bls .L0809ACAC
	ldrb r0, [r3, #4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #4]
.L0809ACAC:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0809ACB4: .4byte 0x3B9ACA00
.L0809ACB8: .4byte 0x05F5E0FF
.L0809ACBC: .4byte 0x0001869F

	thumb_func_start func_0809ACC0
func_0809ACC0: @ 0x0809ACC0
	push {r4, r5, lr}
	sub sp, #0x10
	mov ip, r0
	adds r4, r1, #0
	mov r3, ip
	adds r3, #0xfc
	movs r0, #0
	ldr r1, [r3]
	cmp r1, #0
	bne .L0809ACD6
	movs r0, #1
.L0809ACD6:
	cmp r0, #0
	beq .L0809ACFC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	cmp r1, #3
	bhi .L0809ACFC
	lsls r0, r1, #3
	adds r0, #4
	adds r2, r3, r0
	cmp r2, #0
	beq .L0809ACF6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0809ACF6:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
.L0809ACFC:
	movs r0, #0
	mov r2, ip
	ldr r1, [r2, #8]
	mov r3, ip
	adds r3, #8
	cmp r1, #0
	bne .L0809AD0C
	movs r0, #1
.L0809AD0C:
	cmp r0, #0
	beq .L0809AD34
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0x1d
	bhi .L0809AD34
	lsls r0, r1, #3
	adds r0, #4
	adds r2, r3, r0
	cmp r2, #0
	beq .L0809AD2C
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
.L0809AD2C:
	mov r1, ip
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
.L0809AD34:
	mov r2, ip
	ldr r0, [r2]
	cmp r4, r0
	bls .L0809AD40
	movs r0, #0
	b .L0809AD96
.L0809AD40:
	adds r1, r0, #0
	cmp r0, r4
	bls .L0809AD48
	adds r1, r4, #0
.L0809AD48:
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1]
	ldr r0, [r1, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r3, r0
	adds r1, #0xfc
	ldr r0, [r1]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r2, [r3, #4]
	ldr r5, .L0809ADA0 @ =0x3B9ACA00
	subs r0, r5, r2
	cmp r0, r4
	bls .L0809AD70
	adds r0, r4, #0
.L0809AD70:
	adds r0, r2, r0
	str r0, [r3, #4]
	ldr r2, [r1, #4]
	subs r0, r5, r2
	cmp r0, r4
	bls .L0809AD7E
	adds r0, r4, #0
.L0809AD7E:
	adds r0, r2, r0
	str r0, [r1, #4]
	ldr r1, [r3, #4]
	ldr r0, .L0809ADA4 @ =0x0001869F
	cmp r1, r0
	bls .L0809AD94
	mov r2, ip
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #4]
.L0809AD94:
	movs r0, #1
.L0809AD96:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0809ADA0: .4byte 0x3B9ACA00
.L0809ADA4: .4byte 0x0001869F

	thumb_func_start func_0809ADA8
func_0809ADA8: @ 0x0809ADA8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	mov ip, r0
	mov r3, ip
	adds r3, #8
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #8]
	cmp r0, #0
	bne .L0809ADBE
	movs r1, #1
.L0809ADBE:
	cmp r1, #0
	bne .L0809ADF6
	movs r2, #0x90
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bhs .L0809ADDA
	str r0, [r2]
.L0809ADDA:
	movs r2, #0x92
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	mov r4, ip
	ldr r0, [r4, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r0, [r0, #4]
	cmp r1, r0
	bhs .L0809ADF6
	str r0, [r2]
.L0809ADF6:
	mov r6, ip
	adds r6, #8
	mov r0, ip
	ldr r1, [r0, #8]
	cmp r1, #0x1d
	bls .L0809AE3E
	adds r5, r6, #0
	mov r7, ip
	adds r7, #0xc
.L0809AE08:
	cmp r1, #0
	beq .L0809AE36
	lsls r0, r1, #3
	adds r0, #4
	adds r0, r6, r0
	mov r1, ip
	adds r1, #0x14
	cmp r1, r0
	beq .L0809AE30
	adds r3, r1, #0
	adds r4, r7, #0
	subs r0, r0, r3
	asrs r2, r0, #3
	cmp r2, #0
	ble .L0809AE30
.L0809AE26:
	ldm r3!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bgt .L0809AE26
.L0809AE30:
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
.L0809AE36:
	mov r2, ip
	ldr r1, [r2, #8]
	cmp r1, #0x1d
	bhi .L0809AE08
.L0809AE3E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	cmp r1, #0x1d
	bhi .L0809AE62
	lsls r0, r1, #3
	adds r0, #4
	adds r2, r6, r0
	cmp r2, #0
	beq .L0809AE5A
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0809AE5A:
	mov r4, ip
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
.L0809AE62:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809AE6C
func_0809AE6C: @ 0x0809AE6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	mov r3, ip
	adds r3, #8
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #8]
	cmp r0, #0
	bne .L0809AE8A
	movs r1, #1
.L0809AE8A:
	cmp r1, #0
	bne .L0809AEC2
	movs r2, #0x90
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bhs .L0809AEA6
	str r0, [r2]
.L0809AEA6:
	movs r2, #0x92
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	mov r4, ip
	ldr r0, [r4, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r0, [r0, #4]
	cmp r1, r0
	bhs .L0809AEC2
	str r0, [r2]
.L0809AEC2:
	mov r0, ip
	adds r0, #0xfc
	movs r1, #0
	ldr r3, [r0]
	adds r6, r0, #0
	cmp r3, #0
	bne .L0809AED2
	movs r1, #1
.L0809AED2:
	cmp r1, #0
	bne .L0809AF08
	movs r2, #0x94
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	subs r0, r3, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r1, r0
	bhs .L0809AEEE
	str r0, [r2]
.L0809AEEE:
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	ldr r0, [r6]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r1, r0
	bhs .L0809AF08
	str r0, [r2]
.L0809AF08:
	ldr r0, [r6]
	movs r1, #8
	add r1, ip
	mov sl, r1
	add r2, sp, #8
	mov sb, r2
	movs r4, #0xc
	add r4, ip
	mov r8, r4
	cmp r0, #3
	bls .L0809AF5E
	adds r4, r6, #0
	movs r7, #0x80
	lsls r7, r7, #1
	add r7, ip
.L0809AF26:
	ldr r0, [r4]
	cmp r0, #0
	beq .L0809AF58
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r6, r0
	movs r1, #0x84
	lsls r1, r1, #1
	add r1, ip
	cmp r1, r0
	beq .L0809AF52
	adds r3, r1, #0
	adds r5, r7, #0
	subs r0, r0, r3
	asrs r2, r0, #3
	cmp r2, #0
	ble .L0809AF52
.L0809AF48:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bgt .L0809AF48
.L0809AF52:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
.L0809AF58:
	ldr r0, [r4]
	cmp r0, #3
	bhi .L0809AF26
.L0809AF5E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r1, r6, #0
	ldr r0, [r1]
	cmp r0, #3
	bhi .L0809AF84
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0809AF7E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0809AF7E:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
.L0809AF84:
	mov r1, sb
	movs r0, #0
	str r0, [sp, #8]
	str r0, [r1, #4]
	mov r4, sl
	movs r5, #1
	adds r6, r1, #0
	mov r1, ip
	ldr r0, [r1, #8]
	cmp r5, r0
	bls .L0809AFD6
	lsls r0, r0, #3
	adds r0, #4
	mov r1, r8
	adds r0, r4, r0
	cmp r1, r0
	beq .L0809AFB0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
.L0809AFAA:
	stm r1!, {r2, r3}
	cmp r1, r0
	bne .L0809AFAA
.L0809AFB0:
	ldr r1, [r4]
	lsls r0, r1, #3
	adds r0, #4
	subs r3, r5, r1
	adds r2, r4, r0
	cmp r3, #0
	beq .L0809AFD2
.L0809AFBE:
	cmp r2, #0
	beq .L0809AFCA
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0809AFCA:
	subs r3, #1
	adds r2, #8
	cmp r3, #0
	bne .L0809AFBE
.L0809AFD2:
	str r5, [r4]
	b .L0809B008
.L0809AFD6:
	mov r3, r8
	movs r2, #1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
.L0809AFDE:
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne .L0809AFDE
	adds r5, r3, #0
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r4, r0
	adds r2, r0, #0
	adds r1, r5, #0
	ldr r3, [r4]
	cmp r1, r2
	beq .L0809B000
.L0809AFFA:
	adds r1, #8
	cmp r1, r2
	bne .L0809AFFA
.L0809B000:
	subs r0, r0, r5
	asrs r0, r0, #3
	subs r0, r3, r0
	str r0, [r4]
.L0809B008:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0809B018
func_0809B018: @ 0x0809B018
	push {lr}
	adds r3, r0, #0
	adds r3, #8
	ldr r2, [r0, #8]
	cmp r1, r2
	blo .L0809B028
	adds r0, #0xc
	b .L0809B032
.L0809B028:
	adds r0, r1, #1
	subs r0, r2, r0
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r3, r0
.L0809B032:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809B038
func_0809B038: @ 0x0809B038
	push {lr}
	adds r3, r0, #0
	adds r3, #0xfc
	ldr r2, [r3]
	cmp r1, r2
	blo .L0809B04C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	b .L0809B056
.L0809B04C:
	adds r0, r1, #1
	subs r0, r2, r0
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r3, r0
.L0809B056:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809B05C
func_0809B05C: @ 0x0809B05C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #8
	ldr r0, [r2, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r2, [r3]
	ldr r0, [r1]
	cmp r2, r0
	blo .L0809B07E
	adds r1, r3, #0
.L0809B07E:
	ldr r0, [r1]
	pop {r1}
	bx r1

	thumb_func_start func_0809B084
func_0809B084: @ 0x0809B084
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #8
	ldr r0, [r2, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r2, [r3]
	ldr r0, [r1, #4]
	adds r1, #4
	cmp r2, r0
	blo .L0809B0A8
	adds r1, r3, #0
.L0809B0A8:
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809B0B0
func_0809B0B0: @ 0x0809B0B0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xfc
	ldr r0, [r1]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r2, [r3]
	ldr r0, [r1]
	cmp r2, r0
	blo .L0809B0D2
	adds r1, r3, #0
.L0809B0D2:
	ldr r0, [r1]
	pop {r1}
	bx r1

	thumb_func_start func_0809B0D8
func_0809B0D8: @ 0x0809B0D8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xfc
	ldr r0, [r1]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r2, [r3]
	ldr r0, [r1, #4]
	adds r1, #4
	cmp r2, r0
	blo .L0809B0FC
	adds r1, r3, #0
.L0809B0FC:
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
