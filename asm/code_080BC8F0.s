	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080BC8FC
func_080BC8FC: @ 0x080BC8FC
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_080B44EC
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
	beq .L080BC92C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080BC92C:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080BC938
func_080BC938: @ 0x080BC938
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	bl func_08008444
	ldr r0, .L080BCC78 @ =vtable_unk_080E8538
	str r0, [r6, #4]
	movs r0, #2
	add r7, sp, #0x10
	movs r1, #1
	rsbs r1, r1, #0
.L080BC954:
	subs r0, #1
	cmp r0, r1
	bne .L080BC954
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
	ldr r1, .L080BCC7C @ =gUnk_0873E5B0
	bl func_0805E6CC
	ldr r2, .L080BCC80 @ =0x0000041C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCC84 @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCC88 @ =gUnk_086678A0
	bl func_0805E6CC
	ldr r2, .L080BCC8C @ =0x00000424
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCC90 @ =gUnk_087405A0
	bl func_0805E6CC
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCC94 @ =gUnk_0858BA28
	bl func_0805E6CC
	ldr r2, .L080BCC98 @ =0x0000042C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCC9C @ =gUnk_0871D51C
	bl func_0805E6CC
	movs r2, #0x86
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCCA0 @ =gUnk_0872BE64
	bl func_0805E6CC
	ldr r2, .L080BCCA4 @ =0x00000434
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080BCCA8 @ =gUnk_0873D6D8
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
	ldr r0, .L080BCCAC @ =vtable_unk_080E5B80
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xc
	bl func_08009300
	ldr r1, .L080BCCB0 @ =0x0000043C
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
	movs r1, #0
	bl func_08008B54
	ldr r1, .L080BCCB4 @ =0x0000057C
	adds r0, r6, r1
	movs r1, #1
	bl func_08008B54
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r0, r6, r2
	movs r1, #2
	bl func_08008B54
	ldr r1, .L080BCCB8 @ =0x00000584
	adds r0, r6, r1
	movs r1, #3
	bl func_08008B54
	movs r2, #0xb1
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080BCCBC @ =vtable_unk_080E5B70
	str r1, [r0, #8]
	ldr r1, .L080BCCC0 @ =0x00000594
	adds r0, r6, r1
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080BCCC4 @ =vtable_unk_080E5B60
	str r1, [r0, #8]
	adds r2, #0x28
	adds r5, r6, r2
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r0, #0xb7
	lsls r0, r0, #3
	adds r5, r6, r0
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r5, r6, r1
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r2, #0xb9
	lsls r2, r2, #3
	adds r5, r6, r2
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r0, #0xba
	lsls r0, r0, #3
	adds r5, r6, r0
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r1, #0xbb
	lsls r1, r1, #3
	adds r5, r6, r1
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r2, #0xbc
	lsls r2, r2, #3
	adds r5, r6, r2
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r0, #0xbd
	lsls r0, r0, #3
	adds r5, r6, r0
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r5, r6, r1
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	ldr r2, .L080BCCC8 @ =0x00000604
	adds r0, r6, r2
	str r4, [r0]
	ldr r0, .L080BCCCC @ =0x00000614
	adds r1, r6, r0
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	ldrb r1, [r2, #4]
	ldr r2, .L080BCCD0 @ =0x0000061C
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080BCC78: .4byte vtable_unk_080E8538
.L080BCC7C: .4byte gUnk_0873E5B0
.L080BCC80: .4byte 0x0000041C
.L080BCC84: .4byte gUnk_0873DE44
.L080BCC88: .4byte gUnk_086678A0
.L080BCC8C: .4byte 0x00000424
.L080BCC90: .4byte gUnk_087405A0
.L080BCC94: .4byte gUnk_0858BA28
.L080BCC98: .4byte 0x0000042C
.L080BCC9C: .4byte gUnk_0871D51C
.L080BCCA0: .4byte gUnk_0872BE64
.L080BCCA4: .4byte 0x00000434
.L080BCCA8: .4byte gUnk_0873D6D8
.L080BCCAC: .4byte vtable_unk_080E5B80
.L080BCCB0: .4byte 0x0000043C
.L080BCCB4: .4byte 0x0000057C
.L080BCCB8: .4byte 0x00000584
.L080BCCBC: .4byte vtable_unk_080E5B70
.L080BCCC0: .4byte 0x00000594
.L080BCCC4: .4byte vtable_unk_080E5B60
.L080BCCC8: .4byte 0x00000604
.L080BCCCC: .4byte 0x00000614
.L080BCCD0: .4byte 0x0000061C

	.if 0
	thumb_func_start func_080BCCD4
func_080BCCD4: @ 0x080BCCD4
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	.endif
	.section .text.tail080BCCE0, "ax", %progbits
	thumb_func_start func_080BCCE0
func_080BCCE0: @ 0x080BCCE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x1c]
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_080BCEBC
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	ldr r0, .L080BCD80 @ =0x0000043C
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080BCD84 @ =0x00000889
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
	bl func_080BE954
	adds r0, r7, #0
	bl func_080BEA34
	adds r0, r7, #0
	bl func_080BCFAC
	adds r0, r7, #0
	bl func_080BD064
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #0x22
	bl func_08008B6C
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	cmp r0, #5
	beq .L080BCDD2
.L080BCD62:
	adds r0, r7, #0
	bl func_080087C8
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L080BCDC6
	lsls r0, r0, #2
	ldr r1, .L080BCD88 @ =.L080BCD8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080BCD80: .4byte 0x0000043C
.L080BCD84: .4byte 0x00000889
.L080BCD88: .4byte .L080BCD8C
.L080BCD8C: @ jump table
	.4byte .L080BCDA0 @ case 0
	.4byte .L080BCDA8 @ case 1
	.4byte .L080BCDB0 @ case 2
	.4byte .L080BCDB8 @ case 3
	.4byte .L080BCDC0 @ case 4
.L080BCDA0:
	adds r0, r7, #0
	bl func_080BEAD4
	b .L080BCDC6
.L080BCDA8:
	adds r0, r7, #0
	bl func_080BF0EC
	b .L080BCDC6
.L080BCDB0:
	adds r0, r7, #0
	bl func_080BF2EC
	b .L080BCDC6
.L080BCDB8:
	adds r0, r7, #0
	bl func_080BF348
	b .L080BCDC6
.L080BCDC0:
	adds r0, r7, #0
	bl func_080BF764
.L080BCDC6:
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #5
	bne .L080BCD62
.L080BCDD2:
	ldr r0, .L080BCEB0 @ =0x0000043C
	adds r4, r7, r0
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080BCE00
	ldr r1, .L080BCEB4 @ =0x00000889
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
.L080BCE00:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	bge .L080BCE76
	movs r1, #0x83
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x20]
	ldr r0, .L080BCEB8 @ =0x0000057C
	adds r0, r0, r7
	mov sl, r0
.L080BCE1A:
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
	bl func_080BDF40
	ldr r1, .L080BCEB0 @ =0x0000043C
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080BCE1A
.L080BCE76:
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
	beq .L080BCE9C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080BCE9C:
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
.L080BCEB0: .4byte 0x0000043C
.L080BCEB4: .4byte 0x00000889
.L080BCEB8: .4byte 0x0000057C

	.section .text.tail080BCEC8, "ax", %progbits
	thumb_func_start func_080BCEC8
func_080BCEC8: @ 0x080BCEC8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xb7
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xb9
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xba
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xbb
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xbd
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xbc
	lsls r0, r0, #3
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

	thumb_func_start func_080BCFAC
func_080BCFAC: @ 0x080BCFAC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, .L080BD044 @ =0x0600F000
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	ldr r4, .L080BD048 @ =0x0600F800
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_08008EB8
	ldr r0, .L080BD04C @ =gUnk_0873BE24
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L080BD050 @ =gUnk_0873BF48
	mov r1, r8
	bl Unpack
	ldr r0, .L080BD054 @ =gUnk_0873BFF0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080BD058 @ =gUnk_0873CBF4
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
	ldr r3, .L080BD05C @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sb
	bl func_08008918
	mov r2, sp
	ldr r3, .L080BD060 @ =0x00001F42
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
.L080BD044: .4byte 0x0600F000
.L080BD048: .4byte 0x0600F800
.L080BD04C: .4byte gUnk_0873BE24
.L080BD050: .4byte gUnk_0873BF48
.L080BD054: .4byte gUnk_0873BFF0
.L080BD058: .4byte gUnk_0873CBF4
.L080BD05C: .4byte 0x00001E41
.L080BD060: .4byte 0x00001F42

	thumb_func_start func_080BD064
func_080BD064: @ 0x080BD064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	mov sb, r0
	ldr r0, .L080BD17C @ =gUnk_080F9F78
	ldr r0, [r0]
	ldr r1, .L080BD180 @ =0x05000320
	movs r2, #0x20
	bl func_08008E64
	mov r0, sb
	bl func_080BCEC8
	ldr r1, .L080BD184 @ =0x0500024A
	ldr r0, .L080BD188 @ =0x05000322
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, .L080BD18C @ =0x05000324
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	ldr r2, .L080BD190 @ =0x0000675E
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	ldr r0, .L080BD194 @ =0x000005FD
	add r0, sb
	ldrb r0, [r0]
	add r1, sp, #0x10
	movs r2, #0
	bl func_0804EC84
	ldr r1, .L080BD198 @ =0x05000240
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, .L080BD19C @ =0x00000303
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, .L080BD1A0 @ =0x00004F15
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	ldr r6, .L080BD1A4 @ =0x00007FFF
	adds r0, r6, #0
	strh r0, [r1]
	adds r1, #2
	ldr r7, .L080BD1A8 @ =0x000052F8
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
	movs r0, #0xb6
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r6, .L080BD1AC @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x14
	adds r1, r4, #0
	bl func_08008F0C
	add r7, sp, #0x14
	mov r8, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080BD1B0
	cmp r1, #0
	beq .L080BD168
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD168:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r5, sp
	adds r5, #0x54
	str r5, [sp, #0xa0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0x9c]
	b .L080BD280
	.align 2, 0
.L080BD17C: .4byte gUnk_080F9F78
.L080BD180: .4byte 0x05000320
.L080BD184: .4byte 0x0500024A
.L080BD188: .4byte 0x05000322
.L080BD18C: .4byte 0x05000324
.L080BD190: .4byte 0x0000675E
.L080BD194: .4byte 0x000005FD
.L080BD198: .4byte 0x05000240
.L080BD19C: .4byte 0x00000303
.L080BD1A0: .4byte 0x00004F15
.L080BD1A4: .4byte 0x00007FFF
.L080BD1A8: .4byte 0x000052F8
.L080BD1AC: .4byte 0x06010000
.L080BD1B0:
	str r1, [sp, #0xa4]
	mov r7, sl
	str r7, [sp, #0x50]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L080BD1C8
	adds r0, r1, #0
.L080BD1C8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BD1E6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080BD1EA
	mov r0, sl
	bl func_080D3BC0
	b .L080BD1EA
.L080BD1E6:
	movs r0, #0
	mov sl, r0
.L080BD1EA:
	adds r6, r0, #0
	str r6, [sp, #0xa8]
	ldr r2, [r5]
	adds r3, r6, #0
	mov r4, sp
	adds r4, #0x54
	str r4, [sp, #0xa0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0x9c]
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BD21E
.L080BD204:
	cmp r3, #0
	beq .L080BD214
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD214:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BD204
.L080BD21E:
	adds r6, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L080BD23A
	cmp r6, #0
	beq .L080BD236
	adds r0, r6, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD236:
	adds r6, #0x10
	b .L080BD25C
.L080BD23A:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080BD25A
.L080BD242:
	cmp r2, #0
	beq .L080BD252
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD252:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BD242
.L080BD25A:
	adds r6, r2, #0
.L080BD25C:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BD26C
.L080BD266:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BD266
.L080BD26C:
	cmp r0, #0
	beq .L080BD274
	bl free
.L080BD274:
	ldr r0, [sp, #0xa8]
	add r0, sl
	ldr r7, [sp, #0xa8]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080BD280:
	movs r4, #0x88
	lsls r4, r4, #3
	add r4, sb
	movs r0, #0xb6
	lsls r0, r0, #3
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
	ldr r0, [sp, #0xa0]
	movs r1, #0xd0
	movs r2, #8
	bl func_0804EA94
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	str r0, [r4]
	str r1, [r4, #4]
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080BD3C4 @ =0x0000041C
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x8c
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080BD2DE
	bl __builtin_delete
.L080BD2DE:
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
	ldr r6, .L080BD3C8 @ =0x00000464
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080BD30C
	bl __builtin_delete
.L080BD30C:
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
	movs r5, #0xb7
	lsls r5, r5, #3
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #3
	strh r0, [r1, #4]
	movs r4, #0x8d
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
	ldr r0, [sp, #0x9c]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x9c]
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x8e
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
	beq .L080BD392
	ldrh r3, [r4, #4]
.L080BD392:
	lsls r2, r2, #5
	ldr r4, .L080BD3CC @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BD3D0
	cmp r1, #0
	beq .L080BD3BC
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD3BC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BD496
	.align 2, 0
.L080BD3C4: .4byte 0x0000041C
.L080BD3C8: .4byte 0x00000464
.L080BD3CC: .4byte 0x06010000
.L080BD3D0:
	str r1, [sp, #0xa4]
	mov r4, r8
	str r4, [sp, #0x60]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080BD3EA
	adds r0, r1, #0
.L080BD3EA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BD408
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BD40C
	mov r0, r8
	bl func_080D3BC0
	b .L080BD40C
.L080BD408:
	movs r0, #0
	mov r8, r0
.L080BD40C:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BD434
.L080BD41A:
	cmp r3, #0
	beq .L080BD42A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD42A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BD41A
.L080BD434:
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L080BD450
	cmp r5, #0
	beq .L080BD44C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD44C:
	adds r5, #0x10
	b .L080BD472
.L080BD450:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BD470
.L080BD458:
	cmp r2, #0
	beq .L080BD468
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD468:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BD458
.L080BD470:
	adds r5, r2, #0
.L080BD472:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BD482
.L080BD47C:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BD47C
.L080BD482:
	cmp r0, #0
	beq .L080BD48A
	bl free
.L080BD48A:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BD496:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x8f
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080BD4B0
	ldrh r3, [r2, #4]
.L080BD4B0:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080BD4E0 @ =0x05000260
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BD4E4
	cmp r1, #0
	beq .L080BD4D6
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD4D6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BD5AA
	.align 2, 0
.L080BD4E0: .4byte 0x05000260
.L080BD4E4:
	str r1, [sp, #0xa4]
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
	bhs .L080BD4FE
	adds r0, r1, #0
.L080BD4FE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BD51C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BD520
	mov r0, r8
	bl func_080D3BC0
	b .L080BD520
.L080BD51C:
	movs r0, #0
	mov r8, r0
.L080BD520:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BD548
.L080BD52E:
	cmp r3, #0
	beq .L080BD53E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD53E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BD52E
.L080BD548:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L080BD564
	cmp r5, #0
	beq .L080BD560
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD560:
	adds r5, #0x10
	b .L080BD586
.L080BD564:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BD584
.L080BD56C:
	cmp r2, #0
	beq .L080BD57C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD57C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BD56C
.L080BD584:
	adds r5, r2, #0
.L080BD586:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BD596
.L080BD590:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BD590
.L080BD596:
	cmp r0, #0
	beq .L080BD59E
	bl free
.L080BD59E:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BD5AA:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x85
	lsls r1, r1, #3
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
	beq .L080BD5D4
	bl __builtin_delete
.L080BD5D4:
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
	ldr r6, .L080BD6CC @ =0x000004B4
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080BD604
	bl __builtin_delete
.L080BD604:
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
	movs r5, #0xba
	lsls r5, r5, #3
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #8]
	ldr r0, [r6]
	strb r1, [r0, #0x18]
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
	beq .L080BD69A
	ldrh r3, [r4, #4]
.L080BD69A:
	lsls r2, r2, #5
	ldr r4, .L080BD6D0 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BD6D4
	cmp r1, #0
	beq .L080BD6C4
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD6C4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BD79A
	.align 2, 0
.L080BD6CC: .4byte 0x000004B4
.L080BD6D0: .4byte 0x06010000
.L080BD6D4:
	str r1, [sp, #0xa4]
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
	bhs .L080BD6EE
	adds r0, r1, #0
.L080BD6EE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BD70C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BD710
	mov r0, r8
	bl func_080D3BC0
	b .L080BD710
.L080BD70C:
	movs r0, #0
	mov r8, r0
.L080BD710:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BD738
.L080BD71E:
	cmp r3, #0
	beq .L080BD72E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD72E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BD71E
.L080BD738:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L080BD754
	cmp r5, #0
	beq .L080BD750
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD750:
	adds r5, #0x10
	b .L080BD776
.L080BD754:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BD774
.L080BD75C:
	cmp r2, #0
	beq .L080BD76C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD76C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BD75C
.L080BD774:
	adds r5, r2, #0
.L080BD776:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BD786
.L080BD780:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BD780
.L080BD786:
	cmp r0, #0
	beq .L080BD78E
	bl free
.L080BD78E:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BD79A:
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
	beq .L080BD7B4
	ldrh r3, [r2, #4]
.L080BD7B4:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080BD7E4 @ =0x050002A0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BD7E8
	cmp r1, #0
	beq .L080BD7DA
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD7DA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BD8AE
	.align 2, 0
.L080BD7E4: .4byte 0x050002A0
.L080BD7E8:
	str r1, [sp, #0xa4]
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
	bhs .L080BD802
	adds r0, r1, #0
.L080BD802:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BD820
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BD824
	mov r0, r8
	bl func_080D3BC0
	b .L080BD824
.L080BD820:
	movs r0, #0
	mov r8, r0
.L080BD824:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BD84C
.L080BD832:
	cmp r3, #0
	beq .L080BD842
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD842:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BD832
.L080BD84C:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L080BD868
	cmp r5, #0
	beq .L080BD864
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BD864:
	adds r5, #0x10
	b .L080BD88A
.L080BD868:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BD888
.L080BD870:
	cmp r2, #0
	beq .L080BD880
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD880:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BD870
.L080BD888:
	adds r5, r2, #0
.L080BD88A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BD89A
.L080BD894:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BD894
.L080BD89A:
	cmp r0, #0
	beq .L080BD8A2
	bl free
.L080BD8A2:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BD8AE:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0xa5
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080BD8D8
	bl __builtin_delete
.L080BD8D8:
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
	ldr r6, .L080BD9C4 @ =0x0000052C
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080BD908
	bl __builtin_delete
.L080BD908:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0x80
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0x30
	strh r0, [r1, #2]
	ldr r4, [r6]
	movs r5, #0xbb
	lsls r5, r5, #3
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #6
	strh r0, [r1, #4]
	movs r4, #0xa6
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
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xa7
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
	beq .L080BD990
	ldrh r3, [r4, #4]
.L080BD990:
	lsls r2, r2, #5
	ldr r4, .L080BD9C8 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BD9CC
	cmp r1, #0
	beq .L080BD9BA
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BD9BA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BDA92
	.align 2, 0
.L080BD9C4: .4byte 0x0000052C
.L080BD9C8: .4byte 0x06010000
.L080BD9CC:
	str r1, [sp, #0xa4]
	movs r0, #1
	str r0, [sp, #0x80]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x7c]
	add r1, sp, #0x80
	add r0, sp, #0x7c
	cmp r4, #1
	bhs .L080BD9E6
	adds r0, r1, #0
.L080BD9E6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BDA04
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BDA08
	mov r0, r8
	bl func_080D3BC0
	b .L080BDA08
.L080BDA04:
	movs r0, #0
	mov r8, r0
.L080BDA08:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0xa4]
	cmp r2, r5
	beq .L080BDA30
.L080BDA16:
	cmp r3, #0
	beq .L080BDA26
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDA26:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	bne .L080BDA16
.L080BDA30:
	adds r5, r3, #0
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne .L080BDA4C
	cmp r5, #0
	beq .L080BDA48
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BDA48:
	adds r5, #0x10
	b .L080BDA6E
.L080BDA4C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BDA6C
.L080BDA54:
	cmp r2, #0
	beq .L080BDA64
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDA64:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BDA54
.L080BDA6C:
	adds r5, r2, #0
.L080BDA6E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BDA7E
.L080BDA78:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BDA78
.L080BDA7E:
	cmp r0, #0
	beq .L080BDA86
	bl free
.L080BDA86:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BDA92:
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
	beq .L080BDAAC
	ldrh r3, [r2, #4]
.L080BDAAC:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080BDADC @ =0x050002C0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BDAE0
	cmp r1, #0
	beq .L080BDAD2
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BDAD2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BDBA6
	.align 2, 0
.L080BDADC: .4byte 0x050002C0
.L080BDAE0:
	str r1, [sp, #0xa4]
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
	bhs .L080BDAFA
	adds r0, r1, #0
.L080BDAFA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BDB18
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BDB1C
	mov r0, r8
	bl func_080D3BC0
	b .L080BDB1C
.L080BDB18:
	movs r0, #0
	mov r8, r0
.L080BDB1C:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BDB44
.L080BDB2A:
	cmp r3, #0
	beq .L080BDB3A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDB3A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BDB2A
.L080BDB44:
	adds r5, r3, #0
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne .L080BDB60
	cmp r5, #0
	beq .L080BDB5C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BDB5C:
	adds r5, #0x10
	b .L080BDB82
.L080BDB60:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BDB80
.L080BDB68:
	cmp r2, #0
	beq .L080BDB78
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDB78:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BDB68
.L080BDB80:
	adds r5, r2, #0
.L080BDB82:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BDB92
.L080BDB8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BDB8C
.L080BDB92:
	cmp r0, #0
	beq .L080BDB9A
	bl free
.L080BDB9A:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BDBA6:
	movs r0, #0x14
	bl __builtin_new
	ldr r7, .L080BDD3C @ =0x0000042C
	add r7, sb
	ldr r1, [r7]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r5, r0, #0
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r4]
	cmp r5, r0
	beq .L080BDBCE
	bl __builtin_delete
.L080BDBCE:
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
	ldr r5, .L080BDD40 @ =0x000004DC
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080BDC02
	bl __builtin_delete
.L080BDC02:
	str r4, [r5]
	movs r0, #0x85
	strh r0, [r4]
	movs r0, #0x50
	strh r0, [r4, #2]
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #0xa
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
	movs r7, #0xa0
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080BDC52
	bl __builtin_delete
.L080BDC52:
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
	ldr r6, .L080BDD44 @ =0x00000504
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080BDC80
	bl __builtin_delete
.L080BDC80:
	str r4, [r6]
	ldr r0, [r7]
	ldr r1, .L080BDD48 @ =0x0000091A
	bl func_0805E860
	ldr r4, [r6]
	movs r5, #0xbd
	lsls r5, r5, #3
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
	strh r1, [r0, #8]
	ldr r0, [r6]
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r4, #0xa1
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
	movs r4, #0xa2
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
	beq .L080BDD08
	ldrh r3, [r4, #4]
.L080BDD08:
	lsls r2, r2, #5
	ldr r0, .L080BDD4C @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x14
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BDD50
	cmp r1, #0
	beq .L080BDD32
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BDD32:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BDE14
	.align 2, 0
.L080BDD3C: .4byte 0x0000042C
.L080BDD40: .4byte 0x000004DC
.L080BDD44: .4byte 0x00000504
.L080BDD48: .4byte 0x0000091A
.L080BDD4C: .4byte 0x06010000
.L080BDD50:
	str r1, [sp, #0xa4]
	add r0, sp, #0x90
	movs r5, #1
	str r5, [r0]
	ldr r1, [r6]
	ldr r7, [sp, #0xa4]
	subs r1, r7, r1
	asrs r4, r1, #4
	str r4, [sp, #0x8c]
	ldr r1, [r0]
	add r2, sp, #0x8c
	cmp r4, r1
	bhs .L080BDD6C
	adds r2, r0, #0
.L080BDD6C:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BDD8A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BDD8E
	mov r0, r8
	bl func_080D3BC0
	b .L080BDD8E
.L080BDD8A:
	movs r0, #0
	mov r8, r0
.L080BDD8E:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080BDDAC
.L080BDD98:
	cmp r3, #0
	beq .L080BDDA8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDDA8:
	adds r2, #0x10
	adds r3, #0x10
.L080BDDAC:
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BDD98
	adds r5, r3, #0
	ldr r0, [sp, #0x90]
	cmp r0, #1
	bne .L080BDDCE
	cmp r5, #0
	beq .L080BDDCA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BDDCA:
	adds r5, #0x10
	b .L080BDDF0
.L080BDDCE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BDDEE
.L080BDDD6:
	cmp r2, #0
	beq .L080BDDE6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDDE6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BDDD6
.L080BDDEE:
	adds r5, r2, #0
.L080BDDF0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BDE00
.L080BDDFA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BDDFA
.L080BDE00:
	cmp r0, #0
	beq .L080BDE08
	bl free
.L080BDE08:
	ldr r0, [sp, #0xa8]
	add r0, r8
	ldr r7, [sp, #0xa8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BDE14:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r1, #0xa3
	lsls r1, r1, #3
	add r1, sb
	ldr r0, [r1]
	adds r2, r0, #0
	movs r3, #0
	cmp r2, #0
	beq .L080BDE2E
	ldrh r3, [r1, #4]
.L080BDE2E:
	adds r6, r4, #0
	add r0, sp, #0x14
	adds r1, r2, #0
	ldr r2, .L080BDE60 @ =0x05000300
	bl func_08008F0C
	add r0, sp, #0x14
	mov r8, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BDE64
	cmp r1, #0
	beq .L080BDE56
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BDE56:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BDF30
	.align 2, 0
.L080BDE60: .4byte 0x05000300
.L080BDE64:
	str r1, [sp, #0xa4]
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xa4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080BDE82
	mov r0, sl
.L080BDE82:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BDEA0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BDEA4
	mov r0, sb
	bl func_080D3BC0
	b .L080BDEA4
.L080BDEA0:
	movs r0, #0
	mov sb, r0
.L080BDEA4:
	adds r5, r0, #0
	str r5, [sp, #0xa8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xa4]
	cmp r2, r7
	beq .L080BDECC
.L080BDEB2:
	cmp r3, #0
	beq .L080BDEC2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDEC2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xa4]
	cmp r2, r0
	bne .L080BDEB2
.L080BDECC:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080BDEEA
	cmp r5, #0
	beq .L080BDEE6
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDEE6:
	adds r5, #0x10
	b .L080BDF0C
.L080BDEEA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BDF0A
.L080BDEF2:
	cmp r2, #0
	beq .L080BDF02
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BDF02:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BDEF2
.L080BDF0A:
	adds r5, r2, #0
.L080BDF0C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BDF1C
.L080BDF16:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BDF16
.L080BDF1C:
	cmp r0, #0
	beq .L080BDF24
	bl free
.L080BDF24:
	ldr r0, [sp, #0xa8]
	add r0, sb
	ldr r1, [sp, #0xa8]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BDF30:
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080BDF40
func_080BDF40: @ 0x080BDF40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r5, r0, #0
	ldr r1, .L080BE0FC @ =0x0000060B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BDF88
	movs r2, #0x89
	lsls r2, r2, #3
	adds r4, r5, r2
	movs r6, #2
.L080BDF60:
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080BDF80
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [r4]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080BDF80:
	adds r4, #8
	subs r6, #1
	cmp r6, #0
	bge .L080BDF60
.L080BDF88:
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	movs r4, #0x88
	lsls r4, r4, #3
	adds r1, r5, r4
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080BDFB2
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r1]
	str r1, [r0]
	ldr r6, .L080BE100 @ =0x00000444
	adds r1, r5, r6
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080BDFB2:
	ldr r7, .L080BE104 @ =0x000005A4
	adds r0, r5, r7
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bls .L080BDFCA
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bne .L080BDFEE
.L080BDFCA:
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080BDFE2
	ldrh r2, [r0, #4]
.L080BDFE2:
	ldr r3, .L080BE108 @ =0x00000464
	adds r0, r5, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080BDFEE:
	ldr r4, .L080BE0FC @ =0x0000060B
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BE01E
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r6, #0x92
	lsls r6, r6, #3
	adds r3, r5, r6
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BE012
	ldrh r2, [r3, #4]
.L080BE012:
	ldr r7, .L080BE10C @ =0x0000048C
	adds r0, r5, r7
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080BE01E:
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0x97
	lsls r0, r0, #3
	adds r3, r5, r0
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BE038
	ldrh r2, [r3, #4]
.L080BE038:
	ldr r3, .L080BE110 @ =0x000004B4
	adds r0, r5, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	movs r4, #0xb4
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r0, [r0]
	subs r0, #4
	cmp r0, #1
	bhi .L080BE054
	b .L080BE344
.L080BE054:
	movs r7, #0xa5
	lsls r7, r7, #3
	adds r6, r5, r7
	ldr r0, [r6]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080BE068
	b .L080BE308
.L080BE068:
	movs r0, #0xa6
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r0, [r6]
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
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	movs r7, #0xa7
	lsls r7, r7, #3
	adds r4, r5, r7
	ldr r7, [r4]
	movs r1, #0xbb
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BE0C6
	ldrh r3, [r4, #4]
.L080BE0C6:
	str r6, [sp, #0x40]
	lsls r2, r2, #5
	ldr r4, .L080BE114 @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BE118
	cmp r1, #0
	beq .L080BE0F0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE0F0:
	ldr r3, [sp, #0x40]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080BE1E8
	.align 2, 0
.L080BE0FC: .4byte 0x0000060B
.L080BE100: .4byte 0x00000444
.L080BE104: .4byte 0x000005A4
.L080BE108: .4byte 0x00000464
.L080BE10C: .4byte 0x0000048C
.L080BE110: .4byte 0x000004B4
.L080BE114: .4byte 0x06010000
.L080BE118:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x40]
	ldr r0, [r4]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080BE134
	adds r0, r1, #0
.L080BE134:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BE152
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BE156
	mov r0, sb
	bl func_080D3BC0
	b .L080BE156
.L080BE152:
	movs r0, #0
	mov sb, r0
.L080BE156:
	adds r4, r0, #0
	mov r8, r4
	ldr r7, [sp, #0x40]
	ldr r2, [r7]
	mov r3, r8
	b .L080BE176
.L080BE162:
	cmp r3, #0
	beq .L080BE172
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE172:
	adds r2, #0x10
	adds r3, #0x10
.L080BE176:
	ldr r0, [sp, #0x44]
	cmp r2, r0
	bne .L080BE162
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080BE198
	cmp r4, #0
	beq .L080BE194
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BE194:
	adds r4, #0x10
	b .L080BE1C0
.L080BE198:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080BE1BE
.L080BE1A0:
	cmp r2, #0
	beq .L080BE1B0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE1B0:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080BE1A0
.L080BE1BE:
	adds r4, r2, #0
.L080BE1C0:
	ldr r0, [sp, #0x40]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BE1D2
.L080BE1CC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BE1CC
.L080BE1D2:
	cmp r0, #0
	beq .L080BE1DA
	bl free
.L080BE1DA:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x40]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080BE1E8:
	adds r0, r5, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xa8
	lsls r3, r3, #3
	adds r2, r5, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080BE202
	ldrh r3, [r2, #4]
.L080BE202:
	str r4, [sp, #0x40]
	mov r0, sp
	ldr r2, .L080BE230 @ =0x050002C0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080BE234
	cmp r1, #0
	beq .L080BE226
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE226:
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080BE308
	.align 2, 0
.L080BE230: .4byte 0x050002C0
.L080BE234:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x40]
	ldr r0, [r2]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080BE250
	adds r0, r1, #0
.L080BE250:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BE26E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BE272
	mov r0, sb
	bl func_080D3BC0
	b .L080BE272
.L080BE26E:
	movs r0, #0
	mov sb, r0
.L080BE272:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x40]
	ldr r2, [r4]
	mov r3, r8
	ldr r6, [sp, #0x44]
	cmp r2, r6
	beq .L080BE29C
.L080BE282:
	cmp r3, #0
	beq .L080BE292
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE292:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x44]
	cmp r2, r7
	bne .L080BE282
.L080BE29C:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080BE2B8
	cmp r4, #0
	beq .L080BE2B4
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BE2B4:
	adds r4, #0x10
	b .L080BE2E0
.L080BE2B8:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080BE2DE
.L080BE2C0:
	cmp r2, #0
	beq .L080BE2D0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE2D0:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080BE2C0
.L080BE2DE:
	adds r4, r2, #0
.L080BE2E0:
	ldr r0, [sp, #0x40]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BE2F2
.L080BE2EC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BE2EC
.L080BE2F2:
	cmp r0, #0
	beq .L080BE2FA
	bl free
.L080BE2FA:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x40]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080BE308:
	ldr r3, .L080BE33C @ =0x000005AC
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080BE372
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r6, #0xa6
	lsls r6, r6, #3
	adds r3, r5, r6
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BE32C
	ldrh r2, [r3, #4]
.L080BE32C:
	ldr r7, .L080BE340 @ =0x0000052C
	adds r0, r5, r7
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	b .L080BE372
	.align 2, 0
.L080BE33C: .4byte 0x000005AC
.L080BE340: .4byte 0x0000052C
.L080BE344:
	ldr r1, .L080BE3A0 @ =0x0000060B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BE372
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r2, #0xa6
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080BE366
	ldrh r2, [r0, #4]
.L080BE366:
	ldr r3, .L080BE3A4 @ =0x0000052C
	adds r0, r5, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080BE372:
	movs r4, #0xb4
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L080BE3A8
	cmp r0, #0
	beq .L080BE3A8
	movs r6, #0x9b
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r4, [r0]
	adds r0, r5, #0
	bl func_080C09D8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	b .L080BE3D0
	.align 2, 0
.L080BE3A0: .4byte 0x0000060B
.L080BE3A4: .4byte 0x0000052C
.L080BE3A8:
	ldr r7, .L080BE478 @ =0x0000060E
	adds r6, r5, r7
	ldrb r0, [r6]
	cmp r0, #0
	beq .L080BE3D0
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl func_080C09D8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r0, #0
	strb r0, [r6]
.L080BE3D0:
	movs r2, #0x9b
	lsls r2, r2, #3
	adds r6, r5, r2
	ldr r0, [r6]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080BE3E4
	b .L080BE670
.L080BE3E4:
	movs r3, #0x9c
	lsls r3, r3, #3
	adds r4, r5, r3
	ldr r0, [r6]
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
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	movs r2, #0x9d
	lsls r2, r2, #3
	adds r4, r5, r2
	ldr r7, [r4]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BE442
	ldrh r3, [r4, #4]
.L080BE442:
	str r6, [sp, #0x40]
	lsls r2, r2, #5
	ldr r4, .L080BE47C @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BE480
	cmp r1, #0
	beq .L080BE46C
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE46C:
	ldr r3, [sp, #0x40]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080BE550
	.align 2, 0
.L080BE478: .4byte 0x0000060E
.L080BE47C: .4byte 0x06010000
.L080BE480:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r4, [sp, #0x40]
	ldr r0, [r4]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080BE49C
	adds r0, r1, #0
.L080BE49C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BE4BA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BE4BE
	mov r0, sb
	bl func_080D3BC0
	b .L080BE4BE
.L080BE4BA:
	movs r0, #0
	mov sb, r0
.L080BE4BE:
	adds r4, r0, #0
	mov r8, r4
	ldr r7, [sp, #0x40]
	ldr r2, [r7]
	mov r3, r8
	b .L080BE4DE
.L080BE4CA:
	cmp r3, #0
	beq .L080BE4DA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE4DA:
	adds r2, #0x10
	adds r3, #0x10
.L080BE4DE:
	ldr r0, [sp, #0x44]
	cmp r2, r0
	bne .L080BE4CA
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080BE500
	cmp r4, #0
	beq .L080BE4FC
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BE4FC:
	adds r4, #0x10
	b .L080BE528
.L080BE500:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080BE526
.L080BE508:
	cmp r2, #0
	beq .L080BE518
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE518:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080BE508
.L080BE526:
	adds r4, r2, #0
.L080BE528:
	ldr r0, [sp, #0x40]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BE53A
.L080BE534:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BE534
.L080BE53A:
	cmp r0, #0
	beq .L080BE542
	bl free
.L080BE542:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x40]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080BE550:
	adds r0, r5, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0x9e
	lsls r3, r3, #3
	adds r2, r5, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080BE56A
	ldrh r3, [r2, #4]
.L080BE56A:
	str r4, [sp, #0x40]
	mov r0, sp
	ldr r2, .L080BE598 @ =0x05000340
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080BE59C
	cmp r1, #0
	beq .L080BE58E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE58E:
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080BE670
	.align 2, 0
.L080BE598: .4byte 0x05000340
.L080BE59C:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r0, [r2]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080BE5B8
	adds r0, r1, #0
.L080BE5B8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BE5D6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BE5DA
	mov r0, sb
	bl func_080D3BC0
	b .L080BE5DA
.L080BE5D6:
	movs r0, #0
	mov sb, r0
.L080BE5DA:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x40]
	ldr r2, [r4]
	mov r3, r8
	ldr r6, [sp, #0x44]
	cmp r2, r6
	beq .L080BE604
.L080BE5EA:
	cmp r3, #0
	beq .L080BE5FA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE5FA:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x44]
	cmp r2, r7
	bne .L080BE5EA
.L080BE604:
	adds r4, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080BE620
	cmp r4, #0
	beq .L080BE61C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BE61C:
	adds r4, #0x10
	b .L080BE648
.L080BE620:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080BE646
.L080BE628:
	cmp r2, #0
	beq .L080BE638
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE638:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080BE628
.L080BE646:
	adds r4, r2, #0
.L080BE648:
	ldr r0, [sp, #0x40]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BE65A
.L080BE654:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BE654
.L080BE65A:
	cmp r0, #0
	beq .L080BE662
	bl free
.L080BE662:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x40]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080BE670:
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r6, #0x9c
	lsls r6, r6, #3
	adds r3, r5, r6
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BE68A
	ldrh r2, [r3, #4]
.L080BE68A:
	ldr r7, .L080BE714 @ =0x000004DC
	adds r0, r5, r7
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r1, .L080BE718 @ =0x0000060D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BE6D2
	ldr r2, .L080BE71C @ =0x00000504
	adds r4, r5, r2
	ldr r1, [r4]
	movs r3, #0xc1
	lsls r3, r3, #3
	adds r0, r5, r3
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r4]
	movs r0, #0x50
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl func_08008920
	movs r6, #0xa1
	lsls r6, r6, #3
	adds r3, r5, r6
	ldr r1, [r3]
	movs r2, #0
	cmp r1, #0
	beq .L080BE6CC
	ldrh r2, [r3, #4]
.L080BE6CC:
	ldr r3, [r4]
	bl func_0805E99C
.L080BE6D2:
	ldr r7, .L080BE720 @ =0x0000060C
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BE702
	adds r0, r5, #0
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0xab
	lsls r0, r0, #3
	adds r3, r5, r0
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BE6F6
	ldrh r2, [r3, #4]
.L080BE6F6:
	ldr r3, .L080BE724 @ =0x00000554
	adds r0, r5, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080BE702:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BE714: .4byte 0x000004DC
.L080BE718: .4byte 0x0000060D
.L080BE71C: .4byte 0x00000504
.L080BE720: .4byte 0x0000060C
.L080BE724: .4byte 0x00000554

	thumb_func_start func_080BE728
func_080BE728: @ 0x080BE728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sb, r0
	cmp r1, #0x3c
	beq .L080BE73C
	b .L080BE93A
.L080BE73C:
	ldr r5, .L080BE7C8 @ =0x000005FD
	add r5, sb
	ldrb r0, [r5]
	subs r0, #1
	movs r1, #0
	mov sl, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bne .L080BE760
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	bl func_08008C28
.L080BE760:
	ldrb r0, [r5]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	ldrb r0, [r5]
	cmp r0, #9
	bhi .L080BE786
	add r0, sp, #0x10
	ldr r1, .L080BE7CC @ =gUnk_08107DB8
	movs r2, #2
	bl memcpy
	add r1, sp, #0xc
	adds r0, r1, #0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	movs r0, #0x30
	strb r0, [r1]
.L080BE786:
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
	bls .L080BE7D0
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
	b .L080BE7EE
	.align 2, 0
.L080BE7C8: .4byte 0x000005FD
.L080BE7CC: .4byte gUnk_08107DB8
.L080BE7D0:
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
.L080BE7EE:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r4, #0
	lsls r2, r2, #5
	ldr r7, .L080BE83C @ =0x06010000
	adds r2, r2, r7
	add r0, sp, #0x14
	mov r1, r8
	bl func_08008F0C
	add r0, sp, #0x14
	mov r8, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080BE840
	cmp r1, #0
	beq .L080BE834
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BE834:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080BE906
	.align 2, 0
.L080BE83C: .4byte 0x06010000
.L080BE840:
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
	bhs .L080BE85A
	adds r0, r1, #0
.L080BE85A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BE878
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080BE87C
	mov r0, sl
	bl func_080D3BC0
	b .L080BE87C
.L080BE878:
	movs r0, #0
	mov sl, r0
.L080BE87C:
	adds r4, r0, #0
	str r4, [sp, #0x3c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x38]
	cmp r2, r7
	beq .L080BE8A4
.L080BE88A:
	cmp r3, #0
	beq .L080BE89A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE89A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080BE88A
.L080BE8A4:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080BE8C0
	cmp r4, #0
	beq .L080BE8BC
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BE8BC:
	adds r4, #0x10
	b .L080BE8E2
.L080BE8C0:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080BE8E0
.L080BE8C8:
	cmp r2, #0
	beq .L080BE8D8
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BE8D8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BE8C8
.L080BE8E0:
	adds r4, r2, #0
.L080BE8E2:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BE8F2
.L080BE8EC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BE8EC
.L080BE8F2:
	cmp r0, #0
	beq .L080BE8FA
	bl free
.L080BE8FA:
	ldr r0, [sp, #0x3c]
	add r0, sl
	ldr r7, [sp, #0x3c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080BE906:
	ldr r0, .L080BE94C @ =0x000005FD
	add r0, sb
	ldrb r2, [r0]
	cmp r2, #0
	bne .L080BE93A
	movs r1, #0xb4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #4
	str r0, [r1]
	ldr r0, .L080BE950 @ =0x000005AC
	add r0, sb
	str r2, [r0]
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #1
	bl func_08008C28
	movs r0, #0xb0
	lsls r0, r0, #3
	add r0, sb
	movs r1, #0xbb
	bl func_08008B6C
.L080BE93A:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BE94C: .4byte 0x000005FD
.L080BE950: .4byte 0x000005AC

	thumb_func_start func_080BE954
func_080BE954: @ 0x080BE954
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r2, r0, #0
	mov r1, sp
	ldr r0, .L080BE994 @ =gUnk_08107DBC
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r1, r2, r0
	ldr r3, .L080BE998 @ =0x00000614
	adds r0, r2, r3
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	ldr r4, .L080BE99C @ =0x0000061C
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #2
	bhi .L080BE9A0
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r1, r2, r5
	movs r0, #2
	b .L080BEA28
	.align 2, 0
.L080BE994: .4byte gUnk_08107DBC
.L080BE998: .4byte 0x00000614
.L080BE99C: .4byte 0x0000061C
.L080BE9A0:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080BE9B4
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r1, r2, r0
	movs r0, #3
	b .L080BEA28
.L080BE9B4:
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080BE9C8
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r2, r3
	movs r0, #4
	b .L080BEA28
.L080BE9C8:
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi .L080BE9DE
	movs r4, #0xc0
	lsls r4, r4, #3
	adds r1, r2, r4
	movs r0, #5
	b .L080BEA28
.L080BE9DE:
	adds r0, r1, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080BE9F4
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r1, r2, r5
	movs r0, #7
	b .L080BEA28
.L080BE9F4:
	adds r0, r1, #0
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080BEA0A
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r1, r2, r0
	movs r0, #9
	b .L080BEA28
.L080BEA0A:
	adds r0, r1, #0
	subs r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080BEA20
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r2, r3
	movs r0, #0xa
	b .L080BEA28
.L080BEA20:
	movs r4, #0xc0
	lsls r4, r4, #3
	adds r1, r2, r4
	movs r0, #0xb
.L080BEA28:
	strb r0, [r1]
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080BEA34
func_080BEA34: @ 0x080BEA34
	push {r4, lr}
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r1, r0, r2
	movs r2, #0
	str r2, [r1]
	ldr r3, .L080BEAC4 @ =0x000005A4
	adds r1, r0, r3
	str r2, [r1]
	movs r4, #0xb5
	lsls r4, r4, #3
	adds r1, r0, r4
	str r2, [r1]
	adds r3, #8
	adds r1, r0, r3
	str r2, [r1]
	adds r4, #0x53
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #0x4e
	adds r1, r0, r3
	strb r2, [r1]
	subs r4, #2
	adds r1, r0, r4
	strb r2, [r1]
	subs r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #4
	adds r3, r0, r4
	movs r1, #0x3c
	strb r1, [r3]
	ldr r3, .L080BEAC8 @ =0x000005FE
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #2
	adds r1, r0, r4
	strb r2, [r1]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r3, r0, r1
	movs r1, #0x85
	strb r1, [r3]
	ldr r3, .L080BEACC @ =0x00000609
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #0xb
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #4
	adds r1, r0, r4
	movs r3, #1
	strb r3, [r1]
	subs r4, #2
	adds r1, r0, r4
	strb r2, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r3, [r1]
	ldr r3, .L080BEAD0 @ =0x0000060F
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #3
	adds r0, r0, r4
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080BEAC4: .4byte 0x000005A4
.L080BEAC8: .4byte 0x000005FE
.L080BEACC: .4byte 0x00000609
.L080BEAD0: .4byte 0x0000060F

	thumb_func_start func_080BEAD4
func_080BEAD4: @ 0x080BEAD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, .L080BEB78 @ =0x00000611
	adds r0, r7, r2
	strb r1, [r0]
	ldr r1, .L080BEB7C @ =0x00000612
	adds r0, r7, r1
	mov r2, sp
	ldrb r2, [r2, #0x14]
	strb r2, [r0]
	movs r3, #0
	str r3, [sp, #0x18]
	movs r0, #0x85
	lsls r0, r0, #8
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xba
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0]
	mov sl, r1
	adds r0, r7, #0
	bl func_080088DC
	mov sb, r0
	adds r0, r7, #0
	bl func_08008920
	str r0, [sp, #0x20]
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	ldr r2, .L080BEB80 @ =0x0000057C
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sl
	mov r1, sb
	ldr r2, [sp, #0x20]
	adds r3, r5, #0
	bl func_08050D3C
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	bl func_080C0B58
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_08050E50
	b .L080BF0CC
	.align 2, 0
.L080BEB78: .4byte 0x00000611
.L080BEB7C: .4byte 0x00000612
.L080BEB80: .4byte 0x0000057C
.L080BEB84:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r2, #0x83
	lsls r2, r2, #3
	adds r4, r7, r2
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
	ldr r3, .L080BEBF0 @ =0x0000057C
	adds r1, r7, r3
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080BEBE4
	b .L080BEEA6
.L080BEBE4:
	lsls r0, r0, #2
	ldr r1, .L080BEBF4 @ =.L080BEBF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080BEBF0: .4byte 0x0000057C
.L080BEBF4: .4byte .L080BEBF8
.L080BEBF8: @ jump table
	.4byte .L080BEC14 @ case 0
	.4byte .L080BEEA6 @ case 1
	.4byte .L080BEEA6 @ case 2
	.4byte .L080BECBC @ case 3
	.4byte .L080BEE8A @ case 4
	.4byte .L080BEEA6 @ case 5
	.4byte .L080BEEA6 @ case 6
.L080BEC14:
	ldr r0, [sp, #0x10]
	cmp r0, #8
	bne .L080BEC26
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
	b .L080BEEA6
.L080BEC26:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	bl func_08050D5C
	ldr r0, [sp, #0x10]
	cmp r0, #5
	beq .L080BEC3A
	b .L080BEEA6
.L080BEC3A:
	ldr r1, .L080BEC6C @ =0x0000043C
	adds r4, r7, r1
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080BEC68
	ldr r1, .L080BEC70 @ =0x00000889
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
.L080BEC68:
	ldr r0, [r4]
	b .L080BEC86
	.align 2, 0
.L080BEC6C: .4byte 0x0000043C
.L080BEC70: .4byte 0x00000889
.L080BEC74:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080BDF40
	ldr r2, .L080BECB4 @ =0x0000043C
	adds r0, r7, r2
	ldr r0, [r0]
.L080BEC86:
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080BEC74
	ldr r3, .L080BECB4 @ =0x0000043C
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, .L080BECB8 @ =0x00000889
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
	b .L080BEEA6
	.align 2, 0
.L080BECB4: .4byte 0x0000043C
.L080BECB8: .4byte 0x00000889
.L080BECBC:
	cmp r6, #5
	bgt .L080BECCC
	cmp r6, #4
	blt .L080BECC6
	b .L080BEEA6
.L080BECC6:
	cmp r6, #1
	beq .L080BECE0
	b .L080BECD2
.L080BECCC:
	cmp r6, #6
	bne .L080BECD2
	b .L080BEE40
.L080BECD2:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D74
	b .L080BEEA6
.L080BECE0:
	ldr r2, [sp, #0x10]
	cmp r2, #7
	bls .L080BECE8
	b .L080BEEA6
.L080BECE8:
	lsls r0, r2, #2
	ldr r1, .L080BECF4 @ =.L080BECF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080BECF4: .4byte .L080BECF8
.L080BECF8: @ jump table
	.4byte .L080BED18 @ case 0
	.4byte .L080BED40 @ case 1
	.4byte .L080BED5C @ case 2
	.4byte .L080BED78 @ case 3
	.4byte .L080BED98 @ case 4
	.4byte .L080BEDC8 @ case 5
	.4byte .L080BEEA6 @ case 6
	.4byte .L080BEE20 @ case 7
.L080BED18:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080BED34 @ =gUnk_08107DD8
	ldr r2, .L080BED38 @ =gUnk_08107DF4
	ldr r3, .L080BED3C @ =gUnk_08107DF8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L080BEEA6
	.align 2, 0
.L080BED34: .4byte gUnk_08107DD8
.L080BED38: .4byte gUnk_08107DF4
.L080BED3C: .4byte gUnk_08107DF8
.L080BED40:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, .L080BED58 @ =gUnk_08107DFC
	bl func_08050D8C
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	b .L080BEEA6
	.align 2, 0
.L080BED58: .4byte gUnk_08107DFC
.L080BED5C:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080BED74 @ =gUnk_08107E24
	bl func_08050D8C
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	b .L080BEEA6
	.align 2, 0
.L080BED74: .4byte gUnk_08107E24
.L080BED78:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, .L080BED94 @ =gUnk_08107E58
	bl func_08050D8C
	movs r2, #0
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	b .L080BEEA6
	.align 2, 0
.L080BED94: .4byte gUnk_08107E58
.L080BED98:
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080BEDC0 @ =gUnk_08107EC8
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r3, .L080BEDC4 @ =0x00000611
	adds r0, r7, r3
	strb r1, [r0]
	b .L080BEEA6
	.align 2, 0
.L080BEDC0: .4byte gUnk_08107EC8
.L080BEDC4: .4byte 0x00000611
.L080BEDC8:
	movs r2, #0x83
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L080BEE08 @ =gUnk_08107F18
	ldr r2, .L080BEE0C @ =gUnk_08107F2C
	ldr r3, .L080BEE10 @ =gUnk_08107F3C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r3, .L080BEE14 @ =0x00000612
	adds r0, r7, r3
	strb r4, [r0]
	ldr r1, .L080BEE18 @ =0x000005AC
	adds r0, r7, r1
	str r4, [r0]
	ldr r2, .L080BEE1C @ =0x00000609
	adds r0, r7, r2
	strb r4, [r0]
	subs r3, #4
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x14]
	b .L080BEEA6
	.align 2, 0
.L080BEE08: .4byte gUnk_08107F18
.L080BEE0C: .4byte gUnk_08107F2C
.L080BEE10: .4byte gUnk_08107F3C
.L080BEE14: .4byte 0x00000612
.L080BEE18: .4byte 0x000005AC
.L080BEE1C: .4byte 0x00000609
.L080BEE20:
	movs r2, #0x83
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L080BEE3C @ =gUnk_08107F4C
	bl func_08050D8C
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	b .L080BEEA6
	.align 2, 0
.L080BEE3C: .4byte gUnk_08107F4C
.L080BEE40:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050DF0
	cmp r0, #1
	beq .L080BEE56
	cmp r0, #2
	beq .L080BEE6E
	b .L080BEEA6
.L080BEE56:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne .L080BEE62
	movs r3, #1
	str r3, [sp, #0x10]
	b .L080BEEA6
.L080BEE62:
	ldr r0, [sp, #0x10]
	cmp r0, #6
	bne .L080BEEA6
	movs r1, #7
	str r1, [sp, #0x10]
	b .L080BEEA6
.L080BEE6E:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne .L080BEE7A
	movs r3, #7
	str r3, [sp, #0x10]
	b .L080BEEA6
.L080BEE7A:
	ldr r0, [sp, #0x10]
	cmp r0, #6
	bne .L080BEEA6
	movs r1, #1
	str r1, [sp, #0x10]
	movs r2, #0
	str r2, [sp, #0x18]
	b .L080BEEA6
.L080BEE8A:
	cmp r6, #5
	bne .L080BEEA6
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne .L080BEEA6
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bne .L080BEEA6
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050DD8
.L080BEEA6:
	ldr r4, [sp, #0x10]
	subs r4, #1
	cmp r4, #3
	beq .L080BEEF0
	cmp r4, #3
	bgt .L080BEEB8
	cmp r4, #2
	beq .L080BEEC0
	b .L080BF0C6
.L080BEEB8:
	cmp r4, #4
	bne .L080BEEBE
	b .L080BEFEC
.L080BEEBE:
	b .L080BF0C6
.L080BEEC0:
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne .L080BEED8
	ldr r3, .L080BEEE8 @ =0x00000609
	adds r0, r7, r3
	movs r1, #1
	strb r1, [r0]
	ldr r2, .L080BEEEC @ =0x0000060E
	adds r0, r7, r2
	strb r1, [r0]
	movs r3, #1
	str r3, [sp, #0x14]
.L080BEED8:
	movs r1, #0xb0
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #0xbd
	bl func_08008B88
	b .L080BF0C6
	.align 2, 0
.L080BEEE8: .4byte 0x00000609
.L080BEEEC: .4byte 0x0000060E
.L080BEEF0:
	ldr r2, .L080BEF1C @ =0x00000611
	adds r5, r7, r2
	ldrb r0, [r5]
	cmp r0, #0
	bne .L080BEF06
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r1, #0xbd
	bl func_08008B88
.L080BEF06:
	ldr r0, [sp, #0x14]
	cmp r0, #0x1e
	bne .L080BEF28
	ldr r1, .L080BEF20 @ =0x000005AC
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L080BEF24 @ =0x0000060E
	adds r0, r7, r2
	strb r1, [r0]
	b .L080BEFDA
	.align 2, 0
.L080BEF1C: .4byte 0x00000611
.L080BEF20: .4byte 0x000005AC
.L080BEF24: .4byte 0x0000060E
.L080BEF28:
	ldr r3, [sp, #0x14]
	cmp r3, #0x3c
	bne .L080BEF3C
	ldr r0, .L080BEF38 @ =0x000005AC
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
	b .L080BEF48
	.align 2, 0
.L080BEF38: .4byte 0x000005AC
.L080BEF3C:
	ldr r3, [sp, #0x14]
	cmp r3, #0x5a
	bne .L080BEF5C
	ldr r1, .L080BEF54 @ =0x000005AC
	adds r0, r7, r1
	str r4, [r0]
.L080BEF48:
	ldr r2, .L080BEF58 @ =0x0000060E
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	b .L080BEFDA
	.align 2, 0
.L080BEF54: .4byte 0x000005AC
.L080BEF58: .4byte 0x0000060E
.L080BEF5C:
	ldr r3, [sp, #0x14]
	cmp r3, #0x78
	bne .L080BEF80
	movs r0, #1
	strb r0, [r5]
	ldr r2, .L080BEF7C @ =0x0000060E
	adds r1, r7, r2
	strb r0, [r1]
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r1, #0xc7
	bl func_08008B6C
	b .L080BEFDA
	.align 2, 0
.L080BEF7C: .4byte 0x0000060E
.L080BEF80:
	ldr r0, [sp, #0x14]
	subs r0, #0x79
	cmp r0, #0x1c
	bhi .L080BEF9E
	ldr r0, [sp, #0x1c]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x1c]
	lsrs r0, r0, #0x18
	movs r2, #0xc1
	lsls r2, r2, #3
	adds r1, r7, r2
	strb r0, [r1]
	b .L080BEFDA
.L080BEF9E:
	ldr r3, [sp, #0x14]
	cmp r3, #0x96
	bne .L080BEFDA
	movs r0, #0x85
	lsls r0, r0, #8
	str r0, [sp, #0x1c]
	movs r2, #0xc1
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r2, #0
	movs r0, #0x85
	strb r0, [r1]
	strb r2, [r5]
	ldr r3, .L080BEFE4 @ =0x000005AC
	adds r0, r7, r3
	str r2, [r0]
	ldr r0, .L080BEFE8 @ =0x0000060E
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #1
	str r2, [sp, #0x18]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	bl func_08050DE4
.L080BEFDA:
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x14]
	b .L080BF0C6
	.align 2, 0
.L080BEFE4: .4byte 0x000005AC
.L080BEFE8: .4byte 0x0000060E
.L080BEFEC:
	ldr r1, .L080BF018 @ =0x00000612
	adds r4, r7, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080BF002
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r0, r7, r2
	movs r1, #0xbd
	bl func_08008B88
.L080BF002:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	bne .L080BF024
	strb r3, [r4]
	ldr r1, .L080BF01C @ =0x000005AC
	adds r0, r7, r1
	ldr r2, [sp, #0x14]
	str r2, [r0]
	ldr r3, .L080BF020 @ =0x0000060E
	adds r1, r7, r3
	b .L080BF056
	.align 2, 0
.L080BF018: .4byte 0x00000612
.L080BF01C: .4byte 0x000005AC
.L080BF020: .4byte 0x0000060E
.L080BF024:
	ldr r0, [sp, #0x14]
	cmp r0, #0x1e
	beq .L080BF06A
	ldr r3, [sp, #0x14]
	cmp r3, #0x3c
	beq .L080BF04A
	ldr r3, [sp, #0x14]
	cmp r3, #0x5a
	bne .L080BF044
	ldr r0, .L080BF040 @ =0x000005AC
	adds r1, r7, r0
	movs r0, #3
	b .L080BF050
	.align 2, 0
.L080BF040: .4byte 0x000005AC
.L080BF044:
	ldr r3, [sp, #0x14]
	cmp r3, #0x78
	bne .L080BF064
.L080BF04A:
	ldr r0, .L080BF05C @ =0x000005AC
	adds r1, r7, r0
	movs r0, #2
.L080BF050:
	str r0, [r1]
	ldr r2, .L080BF060 @ =0x0000060E
	adds r1, r7, r2
.L080BF056:
	movs r0, #1
	strb r0, [r1]
	b .L080BF0C0
	.align 2, 0
.L080BF05C: .4byte 0x000005AC
.L080BF060: .4byte 0x0000060E
.L080BF064:
	ldr r3, [sp, #0x14]
	cmp r3, #0x96
	bne .L080BF084
.L080BF06A:
	ldr r1, .L080BF07C @ =0x000005AC
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L080BF080 @ =0x0000060E
	adds r0, r7, r2
	strb r1, [r0]
	b .L080BF0C0
	.align 2, 0
.L080BF07C: .4byte 0x000005AC
.L080BF080: .4byte 0x0000060E
.L080BF084:
	ldr r3, [sp, #0x14]
	cmp r3, #0xb4
	bne .L080BF0A8
	movs r0, #1
	strb r0, [r4]
	ldr r2, .L080BF0A4 @ =0x0000060E
	adds r1, r7, r2
	strb r0, [r1]
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r1, #0xbc
	bl func_08008B6C
	b .L080BF0C0
	.align 2, 0
.L080BF0A4: .4byte 0x0000060E
.L080BF0A8:
	ldr r0, [sp, #0x14]
	cmp r0, #0xd2
	bne .L080BF0C0
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050DE4
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0x14]
.L080BF0C0:
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
.L080BF0C6:
	adds r0, r7, #0
	bl func_080BDF40
.L080BF0CC:
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080BF0DA
	b .L080BEB84
.L080BF0DA:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080BF0EC
func_080BF0EC: @ 0x080BF0EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrb r0, [r0]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	add r0, sp, #0x10
	ldr r4, .L080BF1CC @ =gUnk_08107F60
	adds r1, r4, #0
	movs r2, #6
	bl memcpy
	add r0, sp, #0x18
	ldr r6, .L080BF1D0 @ =gUnk_08107F68
	adds r1, r6, #0
	movs r2, #0xf
	bl memcpy
	add r0, sp, #0x28
	ldr r2, .L080BF1D4 @ =gUnk_08107F78
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
	ldr r2, .L080BF1D8 @ =0x0000057C
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl func_08050D3C
	adds r0, r7, #0
	bl func_080BDF40
	movs r3, #0xb4
	lsls r3, r3, #3
	adds r0, r7, r3
	b .L080BF2D4
	.align 2, 0
.L080BF1CC: .4byte gUnk_08107F60
.L080BF1D0: .4byte gUnk_08107F68
.L080BF1D4: .4byte gUnk_08107F78
.L080BF1D8: .4byte 0x0000057C
.L080BF1DC:
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
	ldr r2, .L080BF244 @ =0x0000057C
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
	bhi .L080BF2A6
	lsls r0, r0, #2
	ldr r1, .L080BF248 @ =.L080BF24C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080BF244: .4byte 0x0000057C
.L080BF248: .4byte .L080BF24C
.L080BF24C: @ jump table
	.4byte .L080BF268 @ case 0
	.4byte .L080BF2A6 @ case 1
	.4byte .L080BF2A6 @ case 2
	.4byte .L080BF288 @ case 3
	.4byte .L080BF2A6 @ case 4
	.4byte .L080BF2A6 @ case 5
	.4byte .L080BF2A6 @ case 6
.L080BF268:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	bne .L080BF27A
	movs r0, #0xb4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
	b .L080BF2A6
.L080BF27A:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	b .L080BF2A6
.L080BF288:
	mov r2, sl
	cmp r2, #1
	bne .L080BF2A6
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
.L080BF2A6:
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	bne .L080BF2C8
	ldr r2, [sp, #0x60]
	adds r2, #1
	str r2, [sp, #0x60]
	cmp r2, #0x78
	ble .L080BF2C8
	movs r3, #0x83
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	bl func_08050D74
.L080BF2C8:
	adds r0, r7, #0
	bl func_080BDF40
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r7, r1
.L080BF2D4:
	ldr r0, [r0]
	cmp r0, #1
	bne .L080BF2DC
	b .L080BF1DC
.L080BF2DC:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080BF2EC
func_080BF2EC: @ 0x080BF2EC
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
	bl func_080BDF40
	movs r1, #0xb0
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #0xbb
	bl func_08008B6C
	movs r3, #0xb4
	lsls r3, r3, #3
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #2
	bne .L080BF340
	adds r5, r4, r3
	movs r7, #3
.L080BF326:
	adds r0, r4, #0
	bl func_080087C8
	adds r0, r4, #0
	bl func_080BDF40
	adds r6, #1
	cmp r6, #0x78
	ble .L080BF33A
	str r7, [r5]
.L080BF33A:
	ldr r0, [r5]
	cmp r0, #2
	beq .L080BF326
.L080BF340:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080BF348
func_080BF348: @ 0x080BF348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x34]
	movs r1, #0
	str r1, [sp, #0x30]
	movs r2, #0x85
	lsls r2, r2, #8
	str r2, [sp, #0x38]
	movs r0, #0x14
	bl __builtin_new
	movs r3, #0x84
	lsls r3, r3, #3
	adds r1, r5, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x8c
	lsls r7, r7, #3
	adds r6, r5, r7
	ldr r0, [r6]
	cmp r4, r0
	beq .L080BF38E
	bl __builtin_delete
.L080BF38E:
	str r4, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r0, [r6]
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
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	movs r7, #0x8e
	lsls r7, r7, #3
	adds r4, r5, r7
	ldr r7, [r4]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BF3F6
	ldrh r3, [r4, #4]
.L080BF3F6:
	str r6, [sp, #0x3c]
	lsls r2, r2, #5
	ldr r4, .L080BF42C @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BF430
	cmp r1, #0
	beq .L080BF420
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BF420:
	ldr r3, [sp, #0x3c]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080BF500
	.align 2, 0
.L080BF42C: .4byte 0x06010000
.L080BF430:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x3c]
	ldr r0, [r4]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080BF44C
	adds r0, r1, #0
.L080BF44C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BF46A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BF46E
	mov r0, sb
	bl func_080D3BC0
	b .L080BF46E
.L080BF46A:
	movs r0, #0
	mov sb, r0
.L080BF46E:
	adds r4, r0, #0
	mov r8, r4
	ldr r7, [sp, #0x3c]
	ldr r2, [r7]
	mov r3, r8
	b .L080BF48E
.L080BF47A:
	cmp r3, #0
	beq .L080BF48A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BF48A:
	adds r2, #0x10
	adds r3, #0x10
.L080BF48E:
	ldr r0, [sp, #0x40]
	cmp r2, r0
	bne .L080BF47A
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080BF4B0
	cmp r4, #0
	beq .L080BF4AC
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BF4AC:
	adds r4, #0x10
	b .L080BF4D8
.L080BF4B0:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080BF4D6
.L080BF4B8:
	cmp r2, #0
	beq .L080BF4C8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BF4C8:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080BF4B8
.L080BF4D6:
	adds r4, r2, #0
.L080BF4D8:
	ldr r0, [sp, #0x3c]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BF4EA
.L080BF4E4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BF4E4
.L080BF4EA:
	cmp r0, #0
	beq .L080BF4F2
	bl free
.L080BF4F2:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x3c]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080BF500:
	adds r0, r5, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0x8f
	lsls r3, r3, #3
	adds r2, r5, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080BF51A
	ldrh r3, [r2, #4]
.L080BF51A:
	str r4, [sp, #0x3c]
	mov r0, sp
	ldr r2, .L080BF548 @ =0x05000260
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080BF54C
	cmp r1, #0
	beq .L080BF53E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BF53E:
	ldr r1, [sp, #0x3c]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080BF730
	.align 2, 0
.L080BF548: .4byte 0x05000260
.L080BF54C:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x3c]
	ldr r0, [r2]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080BF568
	adds r0, r1, #0
.L080BF568:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BF586
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BF58A
	mov r0, sb
	bl func_080D3BC0
	b .L080BF58A
.L080BF586:
	movs r0, #0
	mov sb, r0
.L080BF58A:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x3c]
	ldr r2, [r4]
	mov r3, r8
	ldr r6, [sp, #0x40]
	cmp r2, r6
	beq .L080BF5B4
.L080BF59A:
	cmp r3, #0
	beq .L080BF5AA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BF5AA:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x40]
	cmp r2, r7
	bne .L080BF59A
.L080BF5B4:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080BF5D0
	cmp r4, #0
	beq .L080BF5CC
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BF5CC:
	adds r4, #0x10
	b .L080BF5F8
.L080BF5D0:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080BF5F6
.L080BF5D8:
	cmp r2, #0
	beq .L080BF5E8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BF5E8:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080BF5D8
.L080BF5F6:
	adds r4, r2, #0
.L080BF5F8:
	ldr r0, [sp, #0x3c]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BF60A
.L080BF604:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BF604
.L080BF60A:
	cmp r0, #0
	beq .L080BF612
	bl free
.L080BF612:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x3c]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
	b .L080BF730
.L080BF622:
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	ldr r4, .L080BF644 @ =0x000005A4
	adds r0, r5, r4
	ldr r4, [r0]
	cmp r4, #1
	beq .L080BF69C
	cmp r4, #1
	bgt .L080BF648
	cmp r4, #0
	beq .L080BF654
	b .L080BF730
	.align 2, 0
.L080BF644: .4byte 0x000005A4
.L080BF648:
	cmp r4, #3
	bgt .L080BF730
	adds r0, r5, #0
	bl func_080C0CA4
	b .L080BF730
.L080BF654:
	adds r0, r5, #0
	bl func_080C0B70
	ldr r6, .L080BF694 @ =0x000005FB
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r7, [sp, #0x30]
	adds r7, #1
	str r7, [sp, #0x30]
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080BE728
	cmp r7, #0x3c
	bne .L080BF67A
	movs r0, #0
	str r0, [sp, #0x30]
.L080BF67A:
	ldr r1, .L080BF698 @ =0x00000609
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BF730
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #0xbd
	bl func_08008B88
	b .L080BF730
	.align 2, 0
.L080BF694: .4byte 0x000005FB
.L080BF698: .4byte 0x00000609
.L080BF69C:
	adds r0, r5, #0
	bl func_080C0CA4
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne .L080BF730
	ldr r3, [sp, #0x30]
	adds r3, #1
	str r3, [sp, #0x30]
	adds r0, r5, #0
	adds r1, r3, #0
	bl func_080BE728
	ldr r6, [sp, #0x30]
	cmp r6, #0x3c
	bne .L080BF6C8
	movs r7, #0
	str r7, [sp, #0x30]
.L080BF6C8:
	ldr r0, .L080BF754 @ =0x0000060A
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne .L080BF714
	ldr r1, [sp, #0x34]
	cmp r1, #0x20
	bgt .L080BF6EC
	ldr r0, [sp, #0x38]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x38]
	lsrs r0, r0, #0x18
	movs r6, #0xc1
	lsls r6, r6, #3
	adds r1, r5, r6
	strb r0, [r1]
.L080BF6EC:
	ldrb r0, [r2]
	cmp r0, #0
	bne .L080BF714
	ldr r7, [sp, #0x34]
	cmp r7, #0x21
	bne .L080BF714
	ldr r1, .L080BF758 @ =0x0000060F
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, .L080BF75C @ =0x0000060E
	adds r0, r5, r2
	strb r4, [r0]
	movs r3, #0x85
	lsls r3, r3, #8
	str r3, [sp, #0x38]
	movs r4, #0xc1
	lsls r4, r4, #3
	adds r1, r5, r4
	movs r0, #0x85
	strb r0, [r1]
.L080BF714:
	ldr r6, [sp, #0x34]
	adds r6, #1
	str r6, [sp, #0x34]
	cmp r6, #0x3c
	bne .L080BF730
	movs r7, #0
	str r7, [sp, #0x34]
	ldr r1, .L080BF75C @ =0x0000060E
	adds r0, r5, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, .L080BF760 @ =0x000005A4
	adds r0, r5, r2
	str r7, [r0]
.L080BF730:
	adds r0, r5, #0
	bl func_080BDF40
	movs r3, #0xb4
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080BF744
	b .L080BF622
.L080BF744:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BF754: .4byte 0x0000060A
.L080BF758: .4byte 0x0000060F
.L080BF75C: .4byte 0x0000060E
.L080BF760: .4byte 0x000005A4

	thumb_func_start func_080BF764
func_080BF764: @ 0x080BF764
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10c
	mov sl, r0
	ldr r2, .L080BF9A4 @ =0x00000604
	add r2, sl
	ldr r4, .L080BF9A8 @ =0x000005FE
	add r4, sl
	ldrb r0, [r4]
	ldr r3, .L080BF9AC @ =0x000005FF
	add r3, sl
	ldrb r1, [r3]
	subs r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	bge .L080BF78E
	movs r0, #0
	str r0, [r2]
.L080BF78E:
	ldrb r0, [r4]
	str r0, [sp, #0x28]
	ldrb r0, [r3]
	str r0, [sp, #0x2c]
	ldr r0, [r2]
	str r0, [sp, #0x30]
	add r5, sp, #0x1c
	add r4, sp, #0x28
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl memcpy
	add r0, sp, #0x10
	adds r1, r5, #0
	movs r2, #0xc
	bl memcpy
	movs r0, #0
	str r0, [sp, #0xcc]
	mov r0, sl
	bl func_08008918
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r4]
	strh r1, [r0]
	movs r5, #0x83
	lsls r5, r5, #3
	add r5, sl
	ldr r0, [r5]
	ldr r3, [sp, #0xcc]
	cmp r3, r0
	beq .L080BF7DE
	cmp r0, #0
	beq .L080BF7DE
	movs r1, #3
	bl func_08050D0C
.L080BF7DE:
	movs r0, #0
	str r0, [r5]
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0x28
	bl func_0800835C
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl func_0800770C
	movs r0, #0
	str r0, [sp]
	add r6, sp, #0x28
	str r6, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x18
	movs r3, #0
	bl func_08050CC0
	movs r6, #0x83
	lsls r6, r6, #3
	add r6, sl
	adds r5, r0, #0
	ldr r0, [r6]
	cmp r5, r0
	beq .L080BF826
	cmp r0, #0
	beq .L080BF826
	movs r1, #3
	bl func_08050D0C
.L080BF826:
	str r5, [r6]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0x28
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
	ldr r1, .L080BF9B0 @ =0x0000057C
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080BF9B4 @ =0x00000424
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
	beq .L080BF8A6
	bl __builtin_delete
.L080BF8A6:
	str r4, [r7]
	ldr r1, .L080BF9B8 @ =0x000001C9
	adds r0, r4, #0
	bl func_0805E860
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
	ldr r5, .L080BF9BC @ =0x0000048C
	add r5, sl
	ldr r0, [r5]
	cmp r4, r0
	beq .L080BF8DE
	bl __builtin_delete
.L080BF8DE:
	str r4, [r5]
	movs r0, #0x60
	strh r0, [r4]
	movs r0, #0x75
	strh r0, [r4, #2]
	movs r6, #0xb8
	lsls r6, r6, #3
	add r6, sl
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #4
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r5, #0x92
	lsls r5, r5, #3
	add r5, sl
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x34
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x34
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	ldm r4!, {r0, r3, r7}
	stm r5!, {r0, r3, r7}
	ldm r4!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r4!, {r0, r7}
	stm r5!, {r0, r7}
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0x93
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
	beq .L080BF962
	ldrh r3, [r4, #4]
.L080BF962:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r1, .L080BF9C0 @ =0x06010000
	adds r2, r2, r1
	add r0, sp, #0x28
	adds r1, r7, #0
	bl func_08008F0C
	add r2, sp, #0x28
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BF9C4
	cmp r1, #0
	beq .L080BF98E
	adds r0, r1, #0
	add r1, sp, #0x28
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080BF98E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r6, sp
	adds r6, #0x6c
	str r6, [sp, #0xf8]
	mov r7, sp
	adds r7, #0x30
	str r7, [sp, #0xe8]
	b .L080BFA94
	.align 2, 0
.L080BF9A4: .4byte 0x00000604
.L080BF9A8: .4byte 0x000005FE
.L080BF9AC: .4byte 0x000005FF
.L080BF9B0: .4byte 0x0000057C
.L080BF9B4: .4byte 0x00000424
.L080BF9B8: .4byte 0x000001C9
.L080BF9BC: .4byte 0x0000048C
.L080BF9C0: .4byte 0x06010000
.L080BF9C4:
	str r1, [sp, #0x104]
	mov r0, r8
	str r0, [sp, #0x58]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x54]
	add r1, sp, #0x58
	add r0, sp, #0x54
	cmp r4, #1
	bhs .L080BF9DC
	adds r0, r1, #0
.L080BF9DC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BF9FA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BF9FE
	mov r0, r8
	bl func_080D3BC0
	b .L080BF9FE
.L080BF9FA:
	movs r0, #0
	mov r8, r0
.L080BF9FE:
	adds r5, r0, #0
	str r5, [sp, #0x108]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r4, sp
	adds r4, #0x6c
	str r4, [sp, #0xf8]
	mov r5, sp
	adds r5, #0x30
	str r5, [sp, #0xe8]
	ldr r7, [sp, #0x104]
	cmp r2, r7
	beq .L080BFA32
.L080BFA18:
	cmp r3, #0
	beq .L080BFA28
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFA28:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080BFA18
.L080BFA32:
	adds r5, r3, #0
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne .L080BFA4E
	cmp r5, #0
	beq .L080BFA4A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFA4A:
	adds r5, #0x10
	b .L080BFA70
.L080BFA4E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BFA6E
.L080BFA56:
	cmp r2, #0
	beq .L080BFA66
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFA66:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BFA56
.L080BFA6E:
	adds r5, r2, #0
.L080BFA70:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BFA80
.L080BFA7A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BFA7A
.L080BFA80:
	cmp r0, #0
	beq .L080BFA88
	bl free
.L080BFA88:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BFA94:
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
	beq .L080BFAAE
	ldrh r3, [r2, #4]
.L080BFAAE:
	adds r6, r4, #0
	add r0, sp, #0x28
	ldr r2, .L080BFADC @ =0x05000280
	bl func_08008F0C
	add r0, sp, #0x28
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BFAE0
	cmp r1, #0
	beq .L080BFAD4
	adds r0, r1, #0
	add r1, sp, #0x28
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFAD4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BFBA6
	.align 2, 0
.L080BFADC: .4byte 0x05000280
.L080BFAE0:
	str r1, [sp, #0x104]
	movs r0, #1
	str r0, [sp, #0x60]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080BFAFA
	adds r0, r1, #0
.L080BFAFA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BFB18
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BFB1C
	mov r0, r8
	bl func_080D3BC0
	b .L080BFB1C
.L080BFB18:
	movs r0, #0
	mov r8, r0
.L080BFB1C:
	adds r5, r0, #0
	str r5, [sp, #0x108]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x104]
	cmp r2, r7
	beq .L080BFB44
.L080BFB2A:
	cmp r3, #0
	beq .L080BFB3A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFB3A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080BFB2A
.L080BFB44:
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L080BFB60
	cmp r5, #0
	beq .L080BFB5C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFB5C:
	adds r5, #0x10
	b .L080BFB82
.L080BFB60:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BFB80
.L080BFB68:
	cmp r2, #0
	beq .L080BFB78
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFB78:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BFB68
.L080BFB80:
	adds r5, r2, #0
.L080BFB82:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BFB92
.L080BFB8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BFB8C
.L080BFB92:
	cmp r0, #0
	beq .L080BFB9A
	bl free
.L080BFB9A:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BFBA6:
	ldr r4, .L080BFC68 @ =0x0000052C
	add r4, sl
	ldr r1, [r4]
	movs r0, #0x58
	strh r0, [r1]
	ldr r1, [r4]
	movs r0, #0x7d
	strh r0, [r1, #2]
	ldr r5, [r4]
	movs r6, #0xbb
	lsls r6, r6, #3
	add r6, sl
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	strh r0, [r5, #6]
	ldr r0, [r4]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r4, #0xa6
	lsls r4, r4, #3
	add r4, sl
	movs r0, #0xa5
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x28
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x28
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x28
	ldm r0!, {r3, r5, r7}
	stm r4!, {r3, r5, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r5, r7}
	stm r4!, {r5, r7}
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xa7
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
	beq .L080BFC32
	ldrh r3, [r4, #4]
.L080BFC32:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r0, .L080BFC6C @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x28
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x28
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BFC70
	cmp r1, #0
	beq .L080BFC5E
	adds r0, r1, #0
	add r1, sp, #0x28
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFC5E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BFD32
	.align 2, 0
.L080BFC68: .4byte 0x0000052C
.L080BFC6C: .4byte 0x06010000
.L080BFC70:
	str r1, [sp, #0x104]
	mov r5, r8
	str r5, [sp, #0x68]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L080BFC8A
	adds r0, r1, #0
.L080BFC8A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BFCA8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BFCAC
	mov r0, r8
	bl func_080D3BC0
	b .L080BFCAC
.L080BFCA8:
	movs r0, #0
	mov r8, r0
.L080BFCAC:
	adds r5, r0, #0
	str r5, [sp, #0x108]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080BFCCA
.L080BFCB6:
	cmp r3, #0
	beq .L080BFCC6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFCC6:
	adds r2, #0x10
	adds r3, #0x10
.L080BFCCA:
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080BFCB6
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L080BFCEC
	cmp r5, #0
	beq .L080BFCE8
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFCE8:
	adds r5, #0x10
	b .L080BFD0E
.L080BFCEC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BFD0C
.L080BFCF4:
	cmp r2, #0
	beq .L080BFD04
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFD04:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BFCF4
.L080BFD0C:
	adds r5, r2, #0
.L080BFD0E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BFD1E
.L080BFD18:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BFD18
.L080BFD1E:
	cmp r0, #0
	beq .L080BFD26
	bl free
.L080BFD26:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BFD32:
	movs r0, #0
	str r0, [sp, #0xc8]
	movs r1, #0xb9
	lsls r1, r1, #3
	add r1, sl
	str r1, [sp, #0xd0]
.L080BFD3E:
	ldr r2, [sp, #0xc8]
	lsls r5, r2, #3
	movs r3, #0x89
	lsls r3, r3, #3
	adds r1, r5, r3
	add r1, sl
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	movs r0, #0
	add r1, sp, #0x28
	movs r2, #0
	bl func_0804EC84
	ldr r6, [sp, #0xc8]
	lsls r4, r6, #6
	adds r0, r4, r6
	lsls r6, r0, #2
	mov r7, sl
	adds r1, r6, r7
	add r0, sp, #0x6c
	movs r2, #4
	strh r2, [r0]
	movs r7, #2
	ldr r3, [sp, #0xf8]
	strh r7, [r3, #2]
	ldr r0, [sp, #0x6c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	str r5, [sp, #0xf4]
	ldr r3, [sp, #0xc8]
	cmp r3, #1
	beq .L080BFDBE
	add r0, sp, #0x28
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r5, sl
	adds r1, r6, r5
	movs r3, #5
	add r0, sp, #0x70
	movs r6, #4
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x70]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	add r6, sp, #0x28
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080BFDEE
.L080BFDBE:
	add r0, sp, #0x28
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0x74
	movs r3, #4
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [sp, #0x74]
	add r6, sp, #0x28
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080BFDEE:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0xc8]
	adds r4, r4, r0
	lsls r4, r4, #2
	add r4, sl
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r2, [sp, #0xd0]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r3, [sp, #0xf4]
	adds r2, r3, r2
	lsls r2, r2, #5
	ldr r6, .L080BFE50 @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x30
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r7, [sp, #0xe8]
	mov sb, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080BFE54
	cmp r1, #0
	beq .L080BFE42
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFE42:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0xc8]
	adds r5, #1
	str r5, [sp, #0xf0]
	b .L080BFF1C
	.align 2, 0
.L080BFE50: .4byte 0x06010000
.L080BFE54:
	str r1, [sp, #0x104]
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L080BFE6E
	adds r0, r1, #0
.L080BFE6E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BFE8C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BFE90
	mov r0, r8
	bl func_080D3BC0
	b .L080BFE90
.L080BFE8C:
	movs r0, #0
	mov r8, r0
.L080BFE90:
	adds r6, r0, #0
	str r6, [sp, #0x108]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r7, [sp, #0xc8]
	adds r7, #1
	str r7, [sp, #0xf0]
	b .L080BFEB4
.L080BFEA0:
	cmp r3, #0
	beq .L080BFEB0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFEB0:
	adds r2, #0x10
	adds r3, #0x10
.L080BFEB4:
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080BFEA0
	adds r6, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L080BFED6
	cmp r6, #0
	beq .L080BFED2
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BFED2:
	adds r6, #0x10
	b .L080BFEF8
.L080BFED6:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080BFEF6
.L080BFEDE:
	cmp r2, #0
	beq .L080BFEEE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BFEEE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BFEDE
.L080BFEF6:
	adds r6, r2, #0
.L080BFEF8:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BFF08
.L080BFF02:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BFF02
.L080BFF08:
	cmp r0, #0
	beq .L080BFF10
	bl free
.L080BFF10:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080BFF1C:
	ldr r0, [sp, #0xc8]
	cmp r0, #2
	beq .L080BFF5E
	ldr r4, [sp, #0xf4]
	add r4, sl
	movs r1, #0x89
	lsls r1, r1, #3
	adds r4, r4, r1
	ldr r2, [sp, #0xd0]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_08007D4C
	adds r3, r0, #0
	ldr r5, [sp, #0xf4]
	adds r3, r3, r5
	ldr r6, [sp, #0xc8]
	lsls r2, r6, #4
	adds r2, #0x6d
	movs r7, #2
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x80
	movs r1, #0x68
	bl func_0804EA94
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x84]
	b .L080BFF8E
.L080BFF5E:
	movs r4, #0x8b
	lsls r4, r4, #3
	add r4, sl
	ldr r2, [sp, #0xd0]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_08007D4C
	adds r3, r0, #0
	adds r3, #0x10
	ldr r5, [sp, #0xc8]
	str r5, [sp]
	movs r6, #0
	str r6, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x88
	movs r1, #0xb8
	movs r2, #0x8d
	bl func_0804EA94
	ldr r0, [sp, #0x88]
	ldr r1, [sp, #0x8c]
.L080BFF8E:
	str r0, [r4]
	str r1, [r4, #4]
	ldr r7, [sp, #0xf0]
	str r7, [sp, #0xc8]
	adds r0, r7, #0
	cmp r0, #2
	bgt .L080BFF9E
	b .L080BFD3E
.L080BFF9E:
	ldr r0, .L080BFFE0 @ =0x00000604
	add r0, sl
	movs r1, #0xc0
	lsls r1, r1, #3
	add r1, sl
	ldr r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bge .L080BFFE4
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
	movs r4, #0xaa
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080BFFDA
	bl __builtin_delete
.L080BFFDA:
	str r5, [r4]
	b .L080C0018
	.align 2, 0
.L080BFFE0: .4byte 0x00000604
.L080BFFE4:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080C0110 @ =0x00000434
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	movs r4, #0xaa
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080C000C
	bl __builtin_delete
.L080C000C:
	str r5, [r4]
	movs r1, #0xc2
	lsls r1, r1, #3
	add r1, sl
	movs r0, #1
	strb r0, [r1]
.L080C0018:
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
	ldr r7, .L080C0114 @ =0x00000554
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080C0046
	bl __builtin_delete
.L080C0046:
	str r4, [r7]
	movs r6, #0xaa
	lsls r6, r6, #3
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
	movs r5, #0xbc
	lsls r5, r5, #3
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r7]
	movs r0, #7
	strh r0, [r1, #4]
	ldr r0, [r7]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r4, #0xab
	lsls r4, r4, #3
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
	ldr r0, [sp, #0xe8]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0xe8]
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xac
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
	beq .L080C00DC
	ldrh r3, [r4, #4]
.L080C00DC:
	lsls r2, r2, #5
	ldr r0, .L080C0118 @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0xe8]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0xe8]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C011C
	cmp r1, #0
	beq .L080C0106
	adds r0, r1, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C0106:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C01E0
	.align 2, 0
.L080C0110: .4byte 0x00000434
.L080C0114: .4byte 0x00000554
.L080C0118: .4byte 0x06010000
.L080C011C:
	str r1, [sp, #0x104]
	add r1, sp, #0x94
	mov r5, r8
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x104]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C0138
	adds r0, r1, #0
.L080C0138:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C0156
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C015A
	mov r0, r8
	bl func_080D3BC0
	b .L080C015A
.L080C0156:
	movs r0, #0
	mov r8, r0
.L080C015A:
	adds r5, r0, #0
	str r5, [sp, #0x108]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C0178
.L080C0164:
	cmp r3, #0
	beq .L080C0174
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C0174:
	adds r2, #0x10
	adds r3, #0x10
.L080C0178:
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080C0164
	adds r5, r3, #0
	ldr r1, [sp, #0x94]
	cmp r1, #1
	bne .L080C019A
	cmp r5, #0
	beq .L080C0196
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C0196:
	adds r5, #0x10
	b .L080C01BC
.L080C019A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C01BA
.L080C01A2:
	cmp r2, #0
	beq .L080C01B2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C01B2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C01A2
.L080C01BA:
	adds r5, r2, #0
.L080C01BC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C01CC
.L080C01C6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C01C6
.L080C01CC:
	cmp r0, #0
	beq .L080C01D4
	bl free
.L080C01D4:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C01E0:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xad
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080C01FA
	ldrh r3, [r2, #4]
.L080C01FA:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080C0228 @ =0x050002E0
	bl func_08008F0C
	ldr r0, [sp, #0xe8]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C022C
	cmp r1, #0
	beq .L080C0220
	adds r0, r1, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C0220:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C02F4
	.align 2, 0
.L080C0228: .4byte 0x050002E0
.L080C022C:
	str r1, [sp, #0x104]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x104]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C0248
	adds r0, r1, #0
.L080C0248:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C0266
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C026A
	mov r0, r8
	bl func_080D3BC0
	b .L080C026A
.L080C0266:
	movs r0, #0
	mov r8, r0
.L080C026A:
	adds r5, r0, #0
	str r5, [sp, #0x108]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x104]
	cmp r2, r7
	beq .L080C0292
.L080C0278:
	cmp r3, #0
	beq .L080C0288
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C0288:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080C0278
.L080C0292:
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080C02AE
	cmp r5, #0
	beq .L080C02AA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C02AA:
	adds r5, #0x10
	b .L080C02D0
.L080C02AE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C02CE
.L080C02B6:
	cmp r2, #0
	beq .L080C02C6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C02C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C02B6
.L080C02CE:
	adds r5, r2, #0
.L080C02D0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C02E0
.L080C02DA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C02DA
.L080C02E0:
	cmp r0, #0
	beq .L080C02E8
	bl free
.L080C02E8:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C02F4:
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, sl
	ldr r2, .L080C0328 @ =0x0000FFFF
	movs r1, #0xcd
	bl func_08008C38
	mov r0, sl
	bl func_080BDF40
	movs r0, #0
	str r0, [sp, #0xd4]
	movs r1, #0
	str r1, [sp, #0xd8]
	ldr r1, [sp, #0xe8]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #8
.L080C0318:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge .L080C0318
	movs r2, #0
	str r2, [sp, #0xdc]
	b .L080C08F0
	.align 2, 0
.L080C0328: .4byte 0x0000FFFF
.L080C032C:
	mov r0, sl
	bl func_080087C8
	mov r0, sl
	bl func_080088B8
	movs r1, #0xb5
	lsls r1, r1, #3
	add r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bne .L080C0358
	ldr r3, [sp, #0xd4]
	adds r3, #1
	str r3, [sp, #0xd4]
	cmp r3, #0x78
	beq .L080C0350
	b .L080C08EA
.L080C0350:
	movs r4, #0
	str r4, [sp, #0xd4]
	movs r0, #1
	b .L080C08E8
.L080C0358:
	mov r0, sl
	bl func_080088D4
	str r0, [sp, #0xe0]
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
	ldr r1, .L080C03BC @ =0x0000057C
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
	bhi .L080C040C
	lsls r0, r0, #2
	ldr r1, .L080C03C0 @ =.L080C03C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080C03BC: .4byte 0x0000057C
.L080C03C0: .4byte .L080C03C4
.L080C03C4: @ jump table
	.4byte .L080C03E0 @ case 0
	.4byte .L080C040C @ case 1
	.4byte .L080C040C @ case 2
	.4byte .L080C03EE @ case 3
	.4byte .L080C040C @ case 4
	.4byte .L080C040C @ case 5
	.4byte .L080C040C @ case 6
.L080C03E0:
	movs r0, #0x83
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	bl func_08050D5C
	b .L080C040C
.L080C03EE:
	cmp r7, #1
	bne .L080C040C
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	ldr r1, .L080C0424 @ =gUnk_08107F84
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	ldr r0, .L080C0428 @ =0x0000060B
	add r0, sl
	strb r7, [r0]
.L080C040C:
	movs r0, #0xb5
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	cmp r0, #2
	bne .L080C041A
	b .L080C0878
.L080C041A:
	cmp r0, #2
	bgt .L080C042C
	cmp r0, #1
	beq .L080C0434
	b .L080C08EA
	.align 2, 0
.L080C0424: .4byte gUnk_08107F84
.L080C0428: .4byte 0x0000060B
.L080C042C:
	cmp r0, #3
	bne .L080C0432
	b .L080C08C8
.L080C0432:
	b .L080C08EA
.L080C0434:
	ldr r0, .L080C04D4 @ =0x0000060B
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C0440
	b .L080C08EA
.L080C0440:
	ldr r5, [sp, #0xcc]
	adds r5, #1
	str r5, [sp, #0xcc]
	ldr r6, [sp, #0xdc]
	lsls r6, r6, #2
	str r6, [sp, #0x100]
	cmp r5, #0x14
	beq .L080C0452
	b .L080C0630
.L080C0452:
	movs r7, #0
	str r7, [sp, #0xcc]
	ldr r0, [sp, #0xe8]
	adds r4, r0, r6
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #0xb0
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0x6a
	bl func_08008B6C
	ldr r0, [r4]
	add r1, sp, #0x28
	movs r2, #0
	bl func_0804EC84
	ldr r1, [sp, #0xdc]
	lsls r4, r1, #6
	adds r0, r4, r1
	lsls r5, r0, #2
	mov r2, sl
	adds r1, r5, r2
	add r0, sp, #0xa0
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
	ldr r0, [sp, #0xdc]
	cmp r0, #1
	beq .L080C04D8
	add r0, sp, #0x28
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r3, sl
	adds r1, r5, r3
	movs r3, #5
	add r0, sp, #0xa4
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	add r6, sp, #0x28
	str r6, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080C0504
	.align 2, 0
.L080C04D4: .4byte 0x0000060B
.L080C04D8:
	add r0, sp, #0x28
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r3, #7
	add r0, sp, #0xa8
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	add r5, sp, #0x28
	str r5, [sp]
	ldr r6, [sp, #0xcc]
	str r6, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
.L080C0504:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0xdc]
	adds r4, r4, r7
	lsls r4, r4, #2
	add r4, sl
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r2, r7, #3
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r1, .L080C0564 @ =0x06010000
	adds r2, r2, r1
	add r0, sp, #0x3c
	adds r1, r4, #0
	bl func_08008F0C
	add r2, sp, #0x3c
	mov sb, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, sb
	str r3, [sp, #0xec]
	cmp r1, r0
	beq .L080C0568
	cmp r1, #0
	beq .L080C055C
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C055C:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C0630
	.align 2, 0
.L080C0564: .4byte 0x06010000
.L080C0568:
	str r1, [sp, #0x104]
	movs r0, #1
	add r1, sp, #0xb0
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x104]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C0584
	adds r0, r1, #0
.L080C0584:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C05A2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C05A6
	mov r0, r8
	bl func_080D3BC0
	b .L080C05A6
.L080C05A2:
	movs r0, #0
	mov r8, r0
.L080C05A6:
	adds r6, r0, #0
	str r6, [sp, #0x108]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x104]
	cmp r2, r4
	beq .L080C05CE
.L080C05B4:
	cmp r3, #0
	beq .L080C05C4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C05C4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x104]
	cmp r2, r6
	bne .L080C05B4
.L080C05CE:
	adds r6, r3, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #1
	bne .L080C05EA
	cmp r6, #0
	beq .L080C05E6
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C05E6:
	adds r6, #0x10
	b .L080C060C
.L080C05EA:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080C060A
.L080C05F2:
	cmp r2, #0
	beq .L080C0602
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C0602:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C05F2
.L080C060A:
	adds r6, r2, #0
.L080C060C:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C061C
.L080C0616:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C0616
.L080C061C:
	cmp r0, #0
	beq .L080C0624
	bl free
.L080C0624:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r1, [sp, #0x108]
	str r1, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080C0630:
	ldr r2, [sp, #0xe8]
	ldr r3, [sp, #0x100]
	adds r0, r2, r3
	adds r1, r3, #0
	add r1, sp
	adds r1, #0x10
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne .L080C064A
	ldr r4, [sp, #0xdc]
	adds r4, #1
	str r4, [sp, #0xdc]
.L080C064A:
	movs r0, #9
	ldr r5, [sp, #0xe0]
	ands r0, r5
	cmp r0, #0
	bne .L080C0656
	b .L080C0854
.L080C0656:
	movs r6, #0
	str r6, [sp, #0xc8]
	mov r7, sp
	adds r7, #0x3c
	str r7, [sp, #0xec]
	mov r0, sp
	adds r0, #0xb4
	str r0, [sp, #0xfc]
	mov r1, sp
	adds r1, #0xb8
	str r1, [sp, #0xe4]
.L080C066C:
	ldr r2, [sp, #0xc8]
	lsls r0, r2, #2
	ldr r3, [sp, #0xe8]
	adds r1, r3, r0
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x28
	movs r2, #0
	bl func_0804EC84
	ldr r5, [sp, #0xc8]
	lsls r4, r5, #6
	adds r0, r4, r5
	lsls r5, r0, #2
	mov r6, sl
	adds r1, r5, r6
	add r0, sp, #0xb4
	movs r7, #4
	strh r7, [r0]
	movs r3, #2
	ldr r2, [sp, #0xfc]
	strh r3, [r2, #2]
	ldr r0, [r0]
	movs r6, #0x88
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	bl func_0804E7A0
	ldr r7, [sp, #0xc8]
	cmp r7, #1
	beq .L080C06E6
	add r0, sp, #0x28
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r0, sl
	adds r1, r5, r0
	movs r3, #5
	movs r6, #4
	ldr r5, [sp, #0xe4]
	strh r6, [r5]
	movs r7, #2
	strh r7, [r5, #2]
	ldr r0, [r5]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	add r6, sp, #0x28
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080C0716
.L080C06E6:
	add r0, sp, #0x28
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0xbc
	movs r3, #4
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [r0]
	add r6, sp, #0x28
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080C0716:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0xc8]
	adds r4, r4, r0
	lsls r4, r4, #2
	add r4, sl
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0xc8]
	lsls r2, r3, #3
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r6, .L080C077C @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x3c
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r7, [sp, #0xec]
	mov sb, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C0780
	cmp r1, #0
	beq .L080C076C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C076C:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0xc8]
	adds r5, #1
	str r5, [sp, #0xf0]
	b .L080C084A
	.align 2, 0
.L080C077C: .4byte 0x06010000
.L080C0780:
	str r1, [sp, #0x104]
	movs r0, #1
	add r1, sp, #0xc4
	str r0, [r1]
	ldr r0, [r5]
	ldr r6, [sp, #0x104]
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0xc0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C079C
	adds r0, r1, #0
.L080C079C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C07BA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C07BE
	mov r0, r8
	bl func_080D3BC0
	b .L080C07BE
.L080C07BA:
	movs r0, #0
	mov r8, r0
.L080C07BE:
	adds r6, r0, #0
	str r6, [sp, #0x108]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r7, [sp, #0xc8]
	adds r7, #1
	str r7, [sp, #0xf0]
	b .L080C07E2
.L080C07CE:
	cmp r3, #0
	beq .L080C07DE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C07DE:
	adds r2, #0x10
	adds r3, #0x10
.L080C07E2:
	ldr r0, [sp, #0x104]
	cmp r2, r0
	bne .L080C07CE
	adds r6, r3, #0
	ldr r1, [sp, #0xc4]
	cmp r1, #1
	bne .L080C0804
	cmp r6, #0
	beq .L080C0800
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C0800:
	adds r6, #0x10
	b .L080C0826
.L080C0804:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080C0824
.L080C080C:
	cmp r2, #0
	beq .L080C081C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C081C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C080C
.L080C0824:
	adds r6, r2, #0
.L080C0826:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C0836
.L080C0830:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C0830
.L080C0836:
	cmp r0, #0
	beq .L080C083E
	bl free
.L080C083E:
	ldr r0, [sp, #0x108]
	add r0, r8
	ldr r7, [sp, #0x108]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080C084A:
	ldr r0, [sp, #0xf0]
	str r0, [sp, #0xc8]
	cmp r0, #2
	bgt .L080C0854
	b .L080C066C
.L080C0854:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne .L080C08EA
	ldr r2, [sp, #0xe8]
	ldr r1, [r2, #4]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne .L080C08EA
	ldr r1, [r2, #8]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne .L080C08EA
	movs r1, #0xb5
	lsls r1, r1, #3
	add r1, sl
	movs r0, #2
	b .L080C08E8
.L080C0878:
	ldr r3, [sp, #0xd8]
	adds r3, #1
	str r3, [sp, #0xd8]
	cmp r3, #0x3c
	bne .L080C08B4
	ldr r1, .L080C08A4 @ =0x0000060C
	add r1, sl
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xc2
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C08A8
	movs r0, #0xb0
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0xb7
	bl func_08008B6C
	b .L080C08B4
	.align 2, 0
.L080C08A4: .4byte 0x0000060C
.L080C08A8:
	movs r0, #0xb0
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0xb6
	bl func_08008B6C
.L080C08B4:
	ldr r4, [sp, #0xd8]
	cmp r4, #0xf0
	bne .L080C08EA
	movs r5, #0
	str r5, [sp, #0xd8]
	movs r1, #0xb5
	lsls r1, r1, #3
	add r1, sl
	movs r0, #3
	b .L080C08E8
.L080C08C8:
	ldr r6, [sp, #0xd8]
	adds r6, #1
	str r6, [sp, #0xd8]
	movs r0, #9
	ldr r7, [sp, #0xe0]
	ands r0, r7
	cmp r0, #0
	bne .L080C08E0
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r6, r0
	bne .L080C08EA
.L080C08E0:
	movs r1, #0xb4
	lsls r1, r1, #3
	add r1, sl
	movs r0, #5
.L080C08E8:
	str r0, [r1]
.L080C08EA:
	mov r0, sl
	bl func_080BDF40
.L080C08F0:
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	cmp r0, #4
	bne .L080C08FE
	b .L080C032C
.L080C08FE:
	add sp, #0x10c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080C0910
func_080C0910: @ 0x080C0910
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, .L080C0934 @ =0x000005FA
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0x13
	bne .L080C0950
	ldr r1, .L080C0938 @ =0x000005AC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #3
	bne .L080C0940
	ldr r2, .L080C093C @ =0x0000060A
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	b .L080C09C4
	.align 2, 0
.L080C0934: .4byte 0x000005FA
.L080C0938: .4byte 0x000005AC
.L080C093C: .4byte 0x0000060A
.L080C0940:
	ldr r3, .L080C094C @ =0x0000060A
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	b .L080C09C4
	.align 2, 0
.L080C094C: .4byte 0x0000060A
.L080C0950:
	cmp r0, #0x14
	bne .L080C09C4
	ldr r1, .L080C098C @ =0x000005F9
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r4, r3
	strb r1, [r0]
	strb r1, [r2]
	ldr r2, .L080C0990 @ =0x00000609
	adds r0, r4, r2
	strb r1, [r0]
	adds r3, #0x12
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C0998
	ldr r1, .L080C0994 @ =0x000005FF
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	subs r2, #0x89
	adds r0, r4, r2
	movs r1, #0xc7
	bl func_08008B6C
	b .L080C09AE
	.align 2, 0
.L080C098C: .4byte 0x000005F9
.L080C0990: .4byte 0x00000609
.L080C0994: .4byte 0x000005FF
.L080C0998:
	ldr r3, .L080C09CC @ =0x000005FE
	adds r0, r4, r3
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r1, #0xb0
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #0xbc
	bl func_08008B6C
.L080C09AE:
	ldr r2, .L080C09D0 @ =0x000005AC
	adds r1, r4, r2
	movs r0, #0
	str r0, [r1]
	ldr r3, .L080C09D4 @ =0x0000060E
	adds r0, r4, r3
	movs r1, #1
	strb r1, [r0]
	subs r2, #8
	adds r0, r4, r2
	str r1, [r0]
.L080C09C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080C09CC: .4byte 0x000005FE
.L080C09D0: .4byte 0x000005AC
.L080C09D4: .4byte 0x0000060E

	thumb_func_start func_080C09D8
func_080C09D8: @ 0x080C09D8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080C0A08
	cmp r0, #3
	beq .L080C0A80
	ldr r2, .L080C0A00 @ =gUnk_08107FB0
	ldr r3, .L080C0A04 @ =0x00000614
	adds r0, r4, r3
	ldr r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	b .L080C0B44
	.align 2, 0
.L080C0A00: .4byte gUnk_08107FB0
.L080C0A04: .4byte 0x00000614
.L080C0A08:
	ldr r1, .L080C0A24 @ =0x00000612
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C0A30
	ldr r2, .L080C0A28 @ =gUnk_08107FB0
	ldr r3, .L080C0A2C @ =0x00000614
	adds r0, r4, r3
	ldr r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	ldrh r2, [r2]
	adds r0, r0, r2
	b .L080C0B44
	.align 2, 0
.L080C0A24: .4byte 0x00000612
.L080C0A28: .4byte gUnk_08107FB0
.L080C0A2C: .4byte 0x00000614
.L080C0A30:
	ldr r1, .L080C0A4C @ =0x00000611
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C0A58
	ldr r2, .L080C0A50 @ =gUnk_08107FB0
	ldr r3, .L080C0A54 @ =0x00000614
	adds r0, r4, r3
	ldr r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	ldrh r2, [r2, #4]
	adds r0, r0, r2
	b .L080C0B44
	.align 2, 0
.L080C0A4C: .4byte 0x00000611
.L080C0A50: .4byte gUnk_08107FB0
.L080C0A54: .4byte 0x00000614
.L080C0A58:
	ldr r2, .L080C0A74 @ =gUnk_08107FB0
	ldr r1, .L080C0A78 @ =0x00000609
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r3, .L080C0A7C @ =0x000005AC
	adds r0, r4, r3
	ldr r0, [r0]
	adds r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	b .L080C0B36
	.align 2, 0
.L080C0A74: .4byte gUnk_08107FB0
.L080C0A78: .4byte 0x00000609
.L080C0A7C: .4byte 0x000005AC
.L080C0A80:
	ldr r3, .L080C0AA0 @ =0x000005A4
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	beq .L080C0AAC
	cmp r0, #1
	beq .L080C0AD0
	ldr r2, .L080C0AA4 @ =gUnk_08107FB0
	ldr r1, .L080C0AA8 @ =0x00000614
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	b .L080C0B44
	.align 2, 0
.L080C0AA0: .4byte 0x000005A4
.L080C0AA4: .4byte gUnk_08107FB0
.L080C0AA8: .4byte 0x00000614
.L080C0AAC:
	ldr r2, .L080C0AC8 @ =gUnk_08107FB0
	ldr r3, .L080C0ACC @ =0x00000609
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r1, r1, #2
	subs r3, #0x5d
	adds r0, r4, r3
	ldr r0, [r0]
	adds r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	b .L080C0B36
	.align 2, 0
.L080C0AC8: .4byte gUnk_08107FB0
.L080C0ACC: .4byte 0x00000609
.L080C0AD0:
	ldr r3, .L080C0AF0 @ =0x0000060F
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080C0AFC
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L080C0AF4 @ =gUnk_08107FB0
	ldr r1, .L080C0AF8 @ =0x00000614
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	b .L080C0B44
	.align 2, 0
.L080C0AF0: .4byte 0x0000060F
.L080C0AF4: .4byte gUnk_08107FB0
.L080C0AF8: .4byte 0x00000614
.L080C0AFC:
	ldr r2, .L080C0B18 @ =0x0000060A
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C0B24
	ldr r2, .L080C0B1C @ =gUnk_08107FB0
	ldr r3, .L080C0B20 @ =0x00000614
	adds r0, r4, r3
	ldr r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	ldrh r2, [r2]
	adds r0, r0, r2
	b .L080C0B44
	.align 2, 0
.L080C0B18: .4byte 0x0000060A
.L080C0B1C: .4byte gUnk_08107FB0
.L080C0B20: .4byte 0x00000614
.L080C0B24:
	bl rand
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	ldr r0, .L080C0B50 @ =gUnk_08107FB0
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
.L080C0B36:
	ldr r2, .L080C0B54 @ =0x00000614
	adds r0, r4, r2
	ldr r2, [r0]
	movs r0, #0x54
	muls r0, r2, r0
	ldrh r1, [r1]
	adds r0, r0, r1
.L080C0B44:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080C0B50: .4byte gUnk_08107FB0
.L080C0B54: .4byte 0x00000614

	thumb_func_start func_080C0B58
func_080C0B58: @ 0x080C0B58
	ldr r1, .L080C0B6C @ =gUnk_08107FC6
	movs r2, #0xc3
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080C0B6C: .4byte gUnk_08107FC6

	thumb_func_start func_080C0B70
func_080C0B70: @ 0x080C0B70
	push {r4, r5, lr}
	adds r5, r0, #0
	bl func_080088CC
	adds r4, r0, #0
	adds r0, r5, #0
	bl func_080C0CA4
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	bne .L080C0B8E
	adds r0, r5, #0
	bl func_080C0B94
.L080C0B8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080C0B94
func_080C0B94: @ 0x080C0B94
	push {r4, r5, lr}
	adds r4, r0, #0
	bl func_080088CC
	adds r2, r0, #0
	movs r5, #1
	ands r2, r5
	cmp r2, #0
	bne .L080C0BDC
	ldr r0, .L080C0BD0 @ =0x00000609
	adds r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq .L080C0C8E
	ldr r0, .L080C0BD4 @ =0x000005FC
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne .L080C0C8E
	strb r2, [r3]
	ldr r3, .L080C0BD8 @ =0x0000060E
	adds r0, r4, r3
	strb r5, [r0]
	strb r2, [r1]
	b .L080C0C8E
	.align 2, 0
.L080C0BD0: .4byte 0x00000609
.L080C0BD4: .4byte 0x000005FC
.L080C0BD8: .4byte 0x0000060E
.L080C0BDC:
	ldr r0, .L080C0C3C @ =0x00000609
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080C0BEC
	ldr r2, .L080C0C40 @ =0x0000060E
	adds r0, r4, r2
	strb r5, [r0]
.L080C0BEC:
	movs r2, #0
	strb r5, [r1]
	ldr r3, .L080C0C44 @ =0x000005FC
	adds r0, r4, r3
	strb r2, [r0]
	ldr r0, .L080C0C48 @ =0x000005FA
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls .L080C0C88
	cmp r0, #0x14
	bhi .L080C0C88
	ldr r1, .L080C0C4C @ =0x000005FB
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi .L080C0C54
	subs r3, #4
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	strb r2, [r0]
	ldrb r0, [r1]
	cmp r0, #4
	bls .L080C0C80
	strb r2, [r1]
	ldr r0, .L080C0C50 @ =0x000005AC
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #2
	bgt .L080C0C80
	adds r0, #1
	b .L080C0C78
	.align 2, 0
.L080C0C3C: .4byte 0x00000609
.L080C0C40: .4byte 0x0000060E
.L080C0C44: .4byte 0x000005FC
.L080C0C48: .4byte 0x000005FA
.L080C0C4C: .4byte 0x000005FB
.L080C0C50: .4byte 0x000005AC
.L080C0C54:
	ldr r3, .L080C0C94 @ =0x000005F9
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r3, #1
	adds r0, r4, r3
	strb r2, [r0]
	ldrb r0, [r1]
	cmp r0, #2
	bls .L080C0C80
	strb r2, [r1]
	ldr r0, .L080C0C98 @ =0x000005AC
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	ble .L080C0C80
	subs r0, #1
.L080C0C78:
	str r0, [r1]
	ldr r1, .L080C0C9C @ =0x0000060E
	adds r0, r4, r1
	strb r5, [r0]
.L080C0C80:
	ldr r2, .L080C0CA0 @ =0x000005FB
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
.L080C0C88:
	adds r0, r4, #0
	bl func_080C0910
.L080C0C8E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080C0C94: .4byte 0x000005F9
.L080C0C98: .4byte 0x000005AC
.L080C0C9C: .4byte 0x0000060E
.L080C0CA0: .4byte 0x000005FB

	thumb_func_start func_080C0CA4
func_080C0CA4: @ 0x080C0CA4
	push {r4, lr}
	adds r4, r0, #0
	bl func_080088CC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq .L080C0D14
	ldr r1, .L080C0CD4 @ =0x00000584
	adds r0, r4, r1
	movs r1, #0xb8
	bl func_08008B6C
	ldr r0, .L080C0CD8 @ =0x000005A4
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #1
	beq .L080C0CEA
	cmp r0, #1
	bgt .L080C0CDC
	cmp r0, #0
	beq .L080C0CE6
	b .L080C0D14
	.align 2, 0
.L080C0CD4: .4byte 0x00000584
.L080C0CD8: .4byte 0x000005A4
.L080C0CDC:
	cmp r0, #2
	beq .L080C0D10
	cmp r0, #3
	beq .L080C0CFC
	b .L080C0D14
.L080C0CE6:
	movs r0, #2
	b .L080C0D12
.L080C0CEA:
	movs r0, #3
	str r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	b .L080C0D14
.L080C0CFC:
	movs r0, #1
	str r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	b .L080C0D14
.L080C0D10:
	movs r0, #0
.L080C0D12:
	str r0, [r1]
.L080C0D14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
