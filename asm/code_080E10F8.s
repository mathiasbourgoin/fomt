    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_080E11EC
func_080E11EC: @ 0x080E11EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	ldr r0, .L080E148C @ =0x000023A0
	adds r1, r6, r0
	ldr r0, .L080E1490 @ =vtable_unk_080E76F8
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r5, r6, r1
	movs r2, #0xa9
	lsls r2, r2, #3
	adds r0, r6, r2
	cmp r0, #0
	beq .L080E1232
	adds r1, #0x18
	adds r4, r6, r1
	cmp r0, r4
	beq .L080E1232
	adds r7, r0, #0
.L080E121C:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r7, r4
	bne .L080E121C
.L080E1232:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r6, r2
	movs r1, #0xe0
	adds r1, r1, r6
	mov r8, r1
	adds r7, r6, #0
	adds r7, #0xb0
	movs r2, #0x80
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #0
	beq .L080E1296
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r5, r6, r1
	cmp r0, r5
	beq .L080E1296
.L080E1266:
	subs r5, #0x10
	adds r4, r5, #0
	adds r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r6, r2
	cmp r0, r5
	bne .L080E1266
.L080E1296:
	movs r0, #0x9f
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0x9d
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0x9c
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0x99
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0x98
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r2, #0x97
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0x96
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0x95
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0x94
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0x93
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0x92
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r2, #0x91
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0x90
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, .L080E1494 @ =vtable_unk_080E5A28
	str r0, [r1]
	subs r2, #0x30
	adds r1, r6, r2
	str r0, [r1]
	subs r2, #0x30
	adds r1, r6, r2
	str r0, [r1]
	subs r2, #0x30
	adds r1, r6, r2
	str r0, [r1]
	subs r2, #0x30
	adds r1, r6, r2
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	str r0, [r7]
	mov r2, sb
	str r0, [r2]
	str r0, [r6, #0x50]
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq .L080E1474
	movs r1, #3
	bl func_08050D0C
.L080E1474:
	adds r0, r6, #0
	mov r1, sl
	bl func_080086BC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E148C: .4byte 0x000023A0
.L080E1490: .4byte vtable_unk_080E76F8
.L080E1494: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E1498
func_080E1498: @ 0x080E1498
	push {lr}
	adds r2, r0, #0
	ldr r0, .L080E14B4 @ =vtable_unk_080E76F8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E14AE
	adds r0, r2, #0
	bl __builtin_delete
.L080E14AE:
	pop {r0}
	bx r0
	.align 2, 0
.L080E14B4: .4byte vtable_unk_080E76F8

	thumb_func_start func_080E14B8
func_080E14B8: @ 0x080E14B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	adds r3, r1, #0
	adds r0, r2, #0
	subs r0, #0xfa
	cmp r0, #5
	bhi .L080E1578
	lsls r0, r0, #2
	ldr r1, .L080E14D4 @ =.L080E14D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080E14D4: .4byte .L080E14D8
.L080E14D8: @ jump table
	.4byte .L080E14F0 @ case 0
	.4byte .L080E1588 @ case 1
	.4byte .L080E1528 @ case 2
	.4byte .L080E152C @ case 3
	.4byte .L080E1530 @ case 4
	.4byte .L080E1534 @ case 5
.L080E14F0:
	ldr r0, [r3, #0x14]
	mov r1, sp
	movs r2, #0
	bl func_0804EC84
	add r5, sp, #8
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E150A
	movs r4, #0x1f
.L080E150A:
	adds r0, r5, #0
	mov r1, sp
	adds r2, r4, #0
	bl memcpy
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7]
	adds r0, r7, #4
	adds r1, r5, #0
	bl strcpy
	b .L080E15B6
.L080E1528:
	ldr r1, [r3, #4]
	b .L080E1536
.L080E152C:
	ldr r1, [r3, #8]
	b .L080E1536
.L080E1530:
	ldr r1, [r3, #0xc]
	b .L080E1536
.L080E1534:
	ldr r1, [r3, #0x10]
.L080E1536:
	cmp r1, #0x80
	beq .L080E1588
	add r6, sp, #8
	movs r0, #0xd
	adds r5, r1, #0
	muls r5, r0, r5
	ldr r0, .L080E1574 @ =gUnk_080FA796
	adds r5, r5, r0
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E1554
	movs r4, #0x1f
.L080E1554:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7]
	adds r0, r7, #4
	adds r1, r6, #0
	bl strcpy
	b .L080E15B6
	.align 2, 0
.L080E1574: .4byte gUnk_080FA796
.L080E1578:
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r7]
	adds r0, r7, #4
	bl strcpy
	b .L080E15B6
.L080E1588:
	ldr r5, [r3, #0x18]
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E1598
	movs r4, #0x1f
.L080E1598:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7]
	adds r0, r7, #4
	mov r1, sp
	bl strcpy
.L080E15B6:
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080E15C0
func_080E15C0: @ 0x080E15C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	movs r0, #0xa7
	lsls r0, r0, #5
	adds r1, r7, r0
	ldr r0, .L080E181C @ =vtable_unk_080E76F8
	str r0, [r1]
	movs r1, #0xcb
	lsls r1, r1, #3
	adds r0, r7, r1
	cmp r0, #0
	beq .L080E162C
	movs r2, #0xd7
	lsls r2, r2, #3
	adds r5, r7, r2
	cmp r0, r5
	beq .L080E162C
.L080E15E8:
	subs r5, #0x18
	adds r0, r5, #0
	adds r0, #8
	cmp r0, #0
	beq .L080E1612
	adds r4, r5, #0
	adds r4, #0x18
	cmp r0, r4
	beq .L080E1612
	adds r6, r0, #0
.L080E15FC:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080E15FC
.L080E1612:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xcb
	lsls r1, r1, #3
	adds r0, r7, r1
	cmp r0, r5
	bne .L080E15E8
.L080E162C:
	movs r2, #0xca
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xc7
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xc5
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xc4
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xc1
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xbd
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xbc
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xba
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, .L080E1820 @ =vtable_unk_080E5A28
	str r0, [r1]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	subs r2, #0x30
	adds r1, r7, r2
	str r0, [r1]
	subs r2, #0x30
	adds r1, r7, r2
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0xe0
	str r0, [r1]
	subs r1, #0x30
	str r0, [r1]
	subs r1, #0x30
	str r0, [r1]
	str r0, [r7, #0x50]
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq .L080E180A
	movs r1, #3
	bl func_08050D0C
.L080E180A:
	adds r0, r7, #0
	mov r1, r8
	bl func_080086BC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E181C: .4byte vtable_unk_080E76F8
.L080E1820: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E1824
func_080E1824: @ 0x080E1824
	push {lr}
	adds r2, r0, #0
	ldr r0, .L080E1840 @ =vtable_unk_080E76F8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E183A
	adds r0, r2, #0
	bl __builtin_delete
.L080E183A:
	pop {r0}
	bx r0
	.align 2, 0
.L080E1840: .4byte vtable_unk_080E76F8

	thumb_func_start func_080E1844
func_080E1844: @ 0x080E1844
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r6, r0, #0
	cmp r2, #0xff
	bne .L080E188C
	ldr r0, [r1, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, .L080E1888 @ =gUnk_080FB000
	adds r5, r1, r0
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E1868
	movs r4, #0x1f
.L080E1868:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6]
	adds r0, r6, #4
	mov r1, sp
	bl strcpy
	b .L080E189A
	.align 2, 0
.L080E1888: .4byte gUnk_080FB000
.L080E188C:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	strb r0, [r6]
	adds r0, r6, #4
	bl strcpy
.L080E189A:
	adds r0, r6, #0
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_080E18A4
func_080E18A4: @ 0x080E18A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, .L080E1958 @ =0x00000AEC
	adds r1, r5, r0
	ldr r0, .L080E195C @ =vtable_unk_080E76F8
	str r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r0, .L080E1960 @ =vtable_unk_080E5A28
	str r0, [r5, #0x50]
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq .L080E1948
	movs r1, #3
	bl func_08050D0C
.L080E1948:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080086BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080E1958: .4byte 0x00000AEC
.L080E195C: .4byte vtable_unk_080E76F8
.L080E1960: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E1964
func_080E1964: @ 0x080E1964
	push {lr}
	adds r2, r0, #0
	ldr r0, .L080E1980 @ =vtable_unk_080E76F8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E197A
	adds r0, r2, #0
	bl __builtin_delete
.L080E197A:
	pop {r0}
	bx r0
	.align 2, 0
.L080E1980: .4byte vtable_unk_080E76F8

	thumb_func_start func_080E1984
func_080E1984: @ 0x080E1984
	push {lr}
	adds r2, r0, #0
	ldr r0, .L080E19A0 @ =vtable_unk_080E5A28
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E199A
	adds r0, r2, #0
	bl __builtin_delete
.L080E199A:
	pop {r0}
	bx r0
	.align 2, 0
.L080E19A0: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E19A4
func_080E19A4: @ 0x080E19A4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	cmp r2, #0xff
	bne .L080E19DE
	ldr r6, [r1, #4]
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E19BE
	movs r4, #0x1f
.L080E19BE:
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5]
	adds r0, r5, #4
	mov r1, sp
	bl strcpy
	b .L080E19EC
.L080E19DE:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	strb r0, [r5]
	adds r0, r5, #4
	bl strcpy
.L080E19EC:
	adds r0, r5, #0
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E19F8
func_080E19F8: @ 0x080E19F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080E1A20 @ =0x00006428
	adds r1, r4, r0
	ldr r0, .L080E1A24 @ =vtable_unk_080E76F8
	str r0, [r1]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq .L080E1A12
	movs r1, #3
	bl func_08050D0C
.L080E1A12:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E1A20: .4byte 0x00006428
.L080E1A24: .4byte vtable_unk_080E76F8

	thumb_func_start func_080E1A28
func_080E1A28: @ 0x080E1A28
	push {lr}
	adds r2, r0, #0
	ldr r0, .L080E1A44 @ =vtable_unk_080E76F8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E1A3E
	adds r0, r2, #0
	bl __builtin_delete
.L080E1A3E:
	pop {r0}
	bx r0
	.align 2, 0
.L080E1A44: .4byte vtable_unk_080E76F8

	.if 0
	thumb_func_start func_080E1A48
func_080E1A48: @ 0x080E1A48
	push {lr}
	bl func_08076EA8
	movs r0, #1
	pop {r1}
	bx r1

	.endif
	.section .text.tail080E1A54, "ax", %progbits
	.if 0
	thumb_func_start func_080E1A54
func_080E1A54: @ 0x080E1A54
	push {lr}
	ldr r2, .L080E1A68 @ =0x000009C4
	adds r3, r0, r2
	ldr r2, .L080E1A6C @ =vtable_unk_080E5A28
	str r2, [r3]
	bl func_08076E0C
	pop {r0}
	bx r0
	.align 2, 0
.L080E1A68: .4byte 0x000009C4
.L080E1A6C: .4byte vtable_unk_080E5A28
	.endif

	.section .text.tail080E1A70, "ax", %progbits

	thumb_func_start func_080E1A70
func_080E1A70: @ 0x080E1A70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	bl func_08076EA8
	movs r0, #0
	mov r8, r0
	ldr r1, .L080E1C08 @ =0x00001268
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x30
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bge .L080E1AB4
	adds r2, r1, #0
	ldr r3, .L080E1C08 @ =0x00001268
	adds r1, r7, r3
.L080E1AA4:
	adds r1, #0x10
	movs r0, #1
	add r8, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, #0x30
	cmp r0, r2
	blt .L080E1AA4
.L080E1AB4:
	ldr r1, .L080E1C0C @ =0x00001264
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, .L080E1C10 @ =0x0000163C
	adds r2, r7, r2
	str r2, [sp, #0x20]
	cmp r8, r0
	bhs .L080E1B40
	adds r3, r1, #0
	adds r3, r3, r7
	mov sl, r3
	movs r0, #0xb2
	lsls r0, r0, #3
	adds r0, r0, r7
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #4
	ldr r2, .L080E1C08 @ =0x00001268
	adds r0, r0, r2
	adds r5, r0, r7
.L080E1ADC:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xa0
	cmp r1, r0
	bgt .L080E1B32
	ldr r0, [r7]
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0
	ldrsh r2, [r5, r0]
	mov r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	ldr r1, [r5, #4]
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r3, #0x10
	bl func_0804EA94
	ldrb r2, [r4]
	cmp r2, #0x7f
	bhi .L080E1B32
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r4, r1
	ldr r0, [sp, #0x10]
	str r0, [r1]
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r4]
.L080E1B32:
	adds r5, #0x10
	movs r0, #1
	add r8, r0
	mov r1, sl
	ldr r0, [r1]
	cmp r8, r0
	blo .L080E1ADC
.L080E1B40:
	movs r2, #0
	mov r8, r2
	ldr r3, [sp, #0x20]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x30
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge .L080E1B70
	adds r2, r1, #0
	ldr r0, .L080E1C10 @ =0x0000163C
	adds r1, r7, r0
.L080E1B60:
	adds r1, #0x10
	movs r3, #1
	add r8, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, #0x30
	cmp r0, r2
	blt .L080E1B60
.L080E1B70:
	ldr r1, .L080E1C14 @ =0x00001638
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r8, r0
	bhs .L080E1BF4
	adds r2, r1, #0
	adds r2, r2, r7
	mov sl, r2
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r3, r3, r7
	mov sb, r3
	mov r1, r8
	lsls r0, r1, #4
	ldr r2, .L080E1C10 @ =0x0000163C
	adds r0, r0, r2
	adds r6, r0, r7
.L080E1B92:
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xa0
	cmp r1, r0
	bgt .L080E1BE6
	ldr r0, [r7]
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0
	ldrsh r2, [r6, r0]
	mov r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	ldr r1, [r6, #4]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r5, sp, #0x18
	adds r0, r5, #0
	movs r3, #5
	bl func_0804EA94
	ldrb r2, [r4]
	cmp r2, #0x7f
	bhi .L080E1BE6
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r4, r1
	ldr r0, [sp, #0x18]
	str r0, [r1]
	ldrh r0, [r5, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r4]
.L080E1BE6:
	adds r6, #0x10
	movs r0, #1
	add r8, r0
	mov r1, sl
	ldr r0, [r1]
	cmp r8, r0
	blo .L080E1B92
.L080E1BF4:
	movs r0, #1
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080E1C08: .4byte 0x00001268
.L080E1C0C: .4byte 0x00001264
.L080E1C10: .4byte 0x0000163C
.L080E1C14: .4byte 0x00001638

	thumb_func_start func_080E1C18
func_080E1C18: @ 0x080E1C18
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, .L080E1C60 @ =0x00001638
	adds r1, r2, r0
	ldr r0, [r1]
	lsls r0, r0, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r4, .L080E1C64 @ =0x0000163C
	adds r0, r2, r4
	cmp r0, r1
	beq .L080E1C38
.L080E1C32:
	adds r0, #0x10
	cmp r0, r1
	bne .L080E1C32
.L080E1C38:
	ldr r0, .L080E1C68 @ =0x00001264
	adds r1, r2, r0
	ldr r0, [r1]
	lsls r0, r0, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r4, .L080E1C6C @ =0x00001268
	adds r0, r2, r4
	cmp r0, r1
	beq .L080E1C52
.L080E1C4C:
	adds r0, #0x10
	cmp r0, r1
	bne .L080E1C4C
.L080E1C52:
	adds r0, r2, #0
	adds r1, r3, #0
	bl func_08076E0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E1C60: .4byte 0x00001638
.L080E1C64: .4byte 0x0000163C
.L080E1C68: .4byte 0x00001264
.L080E1C6C: .4byte 0x00001268

	thumb_func_start func_080E1C70
func_080E1C70: @ 0x080E1C70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	bl func_08076EA8
	movs r0, #0
	mov r8, r0
	ldr r1, .L080E1D4C @ =0x00002168
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x30
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bge .L080E1CB4
	adds r2, r1, #0
	ldr r3, .L080E1D4C @ =0x00002168
	adds r1, r7, r3
.L080E1CA4:
	adds r1, #0x10
	movs r0, #1
	add r8, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, #0x30
	cmp r0, r2
	blt .L080E1CA4
.L080E1CB4:
	ldr r1, .L080E1D50 @ =0x00002164
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r8, r0
	bhs .L080E1D38
	adds r2, r1, #0
	adds r2, r2, r7
	mov sl, r2
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r3, r3, r7
	mov sb, r3
	mov r1, r8
	lsls r0, r1, #4
	ldr r2, .L080E1D4C @ =0x00002168
	adds r0, r0, r2
	adds r5, r0, r7
.L080E1CD6:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xa0
	cmp r1, r0
	bgt .L080E1D2A
	ldr r0, [r7]
	bl func_08008920
	adds r4, r0, #0
	movs r0, #0
	ldrsh r2, [r5, r0]
	mov r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	ldr r1, [r5, #4]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r6, sp, #0x10
	adds r0, r6, #0
	movs r3, #5
	bl func_0804EA94
	ldrb r2, [r4]
	cmp r2, #0x7f
	bhi .L080E1D2A
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r4, r1
	ldr r0, [sp, #0x10]
	str r0, [r1]
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r4]
.L080E1D2A:
	adds r5, #0x10
	movs r0, #1
	add r8, r0
	mov r1, sl
	ldr r0, [r1]
	cmp r8, r0
	blo .L080E1CD6
.L080E1D38:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080E1D4C: .4byte 0x00002168
.L080E1D50: .4byte 0x00002164

	thumb_func_start func_080E1D54
func_080E1D54: @ 0x080E1D54
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, .L080E1D84 @ =0x00002164
	adds r1, r2, r0
	ldr r0, [r1]
	lsls r0, r0, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r4, .L080E1D88 @ =0x00002168
	adds r0, r2, r4
	cmp r0, r1
	beq .L080E1D74
.L080E1D6E:
	adds r0, #0x10
	cmp r0, r1
	bne .L080E1D6E
.L080E1D74:
	adds r0, r2, #0
	adds r1, r3, #0
	bl func_08076E0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E1D84: .4byte 0x00002164
.L080E1D88: .4byte 0x00002168

	.section .text.tail080E1DD4, "ax", %progbits
	thumb_func_start func_080E1DD4
func_080E1DD4: @ 0x080E1DD4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r2, .L080E1E20 @ =vtable_unk_080E5A28
	cmp r0, r1
	beq .L080E1DFA
.L080E1DF4:
	adds r0, #8
	cmp r0, r1
	bne .L080E1DF4
.L080E1DFA:
	str r2, [r4, #0xc]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L080E1E12
	ldr r2, .L080E1E24 @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E1E12:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E1E20: .4byte vtable_unk_080E5A28
.L080E1E24: .4byte 0x000005B4

	thumb_func_start func_080E1E28
func_080E1E28: @ 0x080E1E28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	ldr r1, .L080E1F80 @ =0x00004120
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E1E5E
	adds r1, #0x50
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E1E5E
	ldr r0, .L080E1F80 @ =0x00004120
	adds r6, r5, r0
.L080E1E48:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080E1E48
.L080E1E5E:
	ldr r1, .L080E1F84 @ =0x000040D0
	adds r0, r5, r1
	ldr r1, .L080E1F88 @ =0x00003FA8
	adds r7, r5, r1
	ldr r1, .L080E1F8C @ =0x00003EA4
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0
	beq .L080E1E92
	ldr r1, .L080E1F80 @ =0x00004120
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E1E92
	ldr r0, .L080E1F84 @ =0x000040D0
	adds r6, r5, r0
.L080E1E7C:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r6, r4
	bne .L080E1E7C
.L080E1E92:
	ldr r1, .L080E1F90 @ =0x000040C8
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	ldr r0, .L080E1F94 @ =0x000040C0
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r1, .L080E1F98 @ =0x000040B8
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	ldr r0, .L080E1F9C @ =0x000040B0
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r1, .L080E1FA0 @ =0x00003FA4
	adds r2, r5, r1
	ldr r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r2, r0
	adds r0, r7, #0
	cmp r0, r2
	beq .L080E1EFE
.L080E1EF8:
	adds r0, #0xc
	cmp r0, r2
	bne .L080E1EF8
.L080E1EFE:
	ldr r0, .L080E1FA4 @ =0x00003EA0
	adds r1, r5, r0
	ldr r0, [r1]
	lsls r0, r0, #4
	adds r0, #4
	adds r1, r1, r0
	mov r0, r8
	cmp r0, r1
	beq .L080E1F16
.L080E1F10:
	adds r0, #0x10
	cmp r0, r1
	bne .L080E1F10
.L080E1F16:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #2
	bl func_08050D0C
	ldr r0, .L080E1FA8 @ =vtable_unk_080E5A28
	str r0, [r5, #0x54]
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq .L080E1F5A
	adds r4, r0, #0
	adds r0, #0x28
	movs r1, #2
	bl func_08075DEC
	adds r0, r4, #0
	adds r0, #0x18
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x18]
	cmp r1, r2
	beq .L080E1F4A
.L080E1F44:
	adds r1, #0x40
	cmp r1, r2
	bne .L080E1F44
.L080E1F4A:
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E1F54
	bl free
.L080E1F54:
	adds r0, r4, #0
	bl __builtin_delete
.L080E1F5A:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq .L080E1F6C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E1F6C:
	adds r0, r5, #0
	mov r1, sb
	bl func_080086BC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E1F80: .4byte 0x00004120
.L080E1F84: .4byte 0x000040D0
.L080E1F88: .4byte 0x00003FA8
.L080E1F8C: .4byte 0x00003EA4
.L080E1F90: .4byte 0x000040C8
.L080E1F94: .4byte 0x000040C0
.L080E1F98: .4byte 0x000040B8
.L080E1F9C: .4byte 0x000040B0
.L080E1FA0: .4byte 0x00003FA4
.L080E1FA4: .4byte 0x00003EA0
.L080E1FA8: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E1FAC
func_080E1FAC: @ 0x080E1FAC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r5, #0
	adds r4, #0x30
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq .L080E2008
	movs r1, #3
	bl func_08050D0C
.L080E2008:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080086BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E2018
func_080E2018: @ 0x080E2018
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, #0xe0
	cmp r0, #0
	beq .L080E203E
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E203E
	adds r6, r0, #0
.L080E2030:
	subs r4, #0x30
	adds r0, r4, #0
	movs r1, #0
	bl func_080E20C0
	cmp r6, r4
	bne .L080E2030
.L080E203E:
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r4, r5, #0
	adds r4, #0xa0
	adds r6, r5, #0
	adds r6, #0x18
	cmp r1, r2
	beq .L080E2058
.L080E2052:
	adds r1, #0x1c
	cmp r1, r2
	bne .L080E2052
.L080E2058:
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E2062
	bl free
.L080E2062:
	ldr r0, .L080E2090 @ =vtable_unk_080E5A28
	str r0, [r4]
	str r0, [r5, #0x20]
	adds r0, r6, #0
	movs r1, #2
	bl func_080756D0
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq .L080E2082
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E2082:
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080086BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E2090: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E2094
func_080E2094: @ 0x080E2094
	sub sp, #0xc
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #8
	str r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x10]
	str r0, [r1, #4]
	adds r1, #8
	str r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x20]
	str r0, [r1, #4]
	adds r1, #8
	str r0, [r1, #4]
	adds r0, r2, #0
	add sp, #0xc
	bx lr
	.align 2, 0

	thumb_func_start func_080E20C0
func_080E20C0: @ 0x080E20C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq .L080E20D0
	bl free
.L080E20D0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq .L080E20DA
	bl free
.L080E20DA:
	ldr r0, [r4]
	cmp r0, #0
	beq .L080E20E4
	bl free
.L080E20E4:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L080E20F2
	adds r0, r4, #0
	bl __builtin_delete
.L080E20F2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.section .text.tail080E211C, "ax", %progbits
	thumb_func_start func_080E211C
func_080E211C: @ 0x080E211C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r2, .L080E2168 @ =vtable_unk_080E5A28
	cmp r0, r1
	beq .L080E2142
.L080E213C:
	adds r0, #8
	cmp r0, r1
	bne .L080E213C
.L080E2142:
	str r2, [r4, #0xc]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L080E215A
	ldr r2, .L080E216C @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E215A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E2168: .4byte vtable_unk_080E5A28
.L080E216C: .4byte 0x000005B4

	thumb_func_start func_080E2170
func_080E2170: @ 0x080E2170
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0xc]
	ldr r0, [r3, #8]
	str r0, [r2, #0xc]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq .L080E2182
	str r2, [r0, #4]
.L080E2182:
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r1]
	cmp r2, r0
	bne .L080E2190
	str r3, [r1]
	b .L080E219E
.L080E2190:
	ldr r1, [r2, #4]
	ldr r0, [r1, #8]
	cmp r2, r0
	bne .L080E219C
	str r3, [r1, #8]
	b .L080E219E
.L080E219C:
	str r3, [r1, #0xc]
.L080E219E:
	str r2, [r3, #8]
	str r3, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E21A8
func_080E21A8: @ 0x080E21A8
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #8]
	ldr r0, [r3, #0xc]
	str r0, [r2, #8]
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq .L080E21BA
	str r2, [r0, #4]
.L080E21BA:
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r1]
	cmp r2, r0
	bne .L080E21C8
	str r3, [r1]
	b .L080E21D6
.L080E21C8:
	ldr r1, [r2, #4]
	ldr r0, [r1, #0xc]
	cmp r2, r0
	bne .L080E21D4
	str r3, [r1, #0xc]
	b .L080E21D6
.L080E21D4:
	str r3, [r1, #8]
.L080E21D6:
	str r2, [r3, #0xc]
	str r3, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E21E0
func_080E21E0: @ 0x080E21E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	strb r0, [r4]
	ldr r0, [r5]
	cmp r4, r0
	beq .L080E2286
	ldr r2, [r4, #4]
	ldrb r0, [r2]
	cmp r0, #0
	bne .L080E2286
	movs r6, #1
	movs r7, #0
.L080E21FC:
	ldr r1, [r2, #4]
	ldr r0, [r1, #8]
	cmp r2, r0
	bne .L080E2238
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq .L080E2210
	ldrb r1, [r0]
	cmp r1, #0
	beq .L080E2242
.L080E2210:
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r4, r0
	bne .L080E2222
	adds r4, r1, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080E2170
.L080E2222:
	ldr r0, [r4, #4]
	strb r6, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	strb r7, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	adds r1, r5, #0
	bl func_080E21A8
	b .L080E2278
.L080E2238:
	cmp r0, #0
	beq .L080E2252
	ldrb r1, [r0]
	cmp r1, #0
	bne .L080E2252
.L080E2242:
	strb r6, [r2]
	strb r6, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldr r4, [r0, #4]
	b .L080E2278
.L080E2252:
	ldr r1, [r4, #4]
	ldr r0, [r1, #8]
	cmp r4, r0
	bne .L080E2264
	adds r4, r1, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080E21A8
.L080E2264:
	ldr r0, [r4, #4]
	strb r6, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	strb r7, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	adds r1, r5, #0
	bl func_080E2170
.L080E2278:
	ldr r0, [r5]
	cmp r4, r0
	beq .L080E2286
	ldr r2, [r4, #4]
	ldrb r0, [r2]
	cmp r0, #0
	beq .L080E21FC
.L080E2286:
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E2294
func_080E2294: @ 0x080E2294
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, [sp, #0x14]
	adds r5, r3, #0
	ldr r0, [r6, #4]
	cmp r5, r0
	beq .L080E22BE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L080E22FE
	cmp r2, #0
	bne .L080E22BE
	movs r2, #0
	ldr r1, [r4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bhs .L080E22BA
	movs r2, #1
.L080E22BA:
	cmp r2, #0
	beq .L080E22FE
.L080E22BE:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E22D2
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E22D2:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E22E2
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E22E2:
	adds r4, r2, #0
	str r4, [r5, #8]
	ldr r1, [r6, #4]
	cmp r5, r1
	bne .L080E22F4
	str r4, [r5, #4]
	ldr r0, [r6, #4]
	str r4, [r0, #0xc]
	b .L080E2330
.L080E22F4:
	ldr r0, [r1, #8]
	cmp r5, r0
	bne .L080E2330
	str r4, [r1, #8]
	b .L080E2330
.L080E22FE:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E2312
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E2312:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E2322
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E2322:
	adds r4, r2, #0
	str r4, [r5, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r1, #0xc]
	cmp r5, r0
	bne .L080E2330
	str r4, [r1, #0xc]
.L080E2330:
	str r5, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r6, #4]
	adds r1, #4
	adds r0, r4, #0
	bl func_080E21E0
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	str r4, [r7]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E2354
func_080E2354: @ 0x080E2354
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	bne .L080E236A
	ldr r0, [r2, #4]
	ldr r0, [r0, #4]
	cmp r0, r2
	bne .L080E236A
	ldr r2, [r2, #0xc]
	b .L080E238A
.L080E236A:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq .L080E2380
	adds r1, r0, #0
	b .L080E2376
.L080E2374:
	ldr r1, [r1, #0xc]
.L080E2376:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne .L080E2374
	b .L080E2388
.L080E237E:
	adds r2, r1, #0
.L080E2380:
	ldr r1, [r2, #4]
	ldr r0, [r1, #8]
	cmp r2, r0
	beq .L080E237E
.L080E2388:
	adds r2, r1, #0
.L080E238A:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start func_080E2390
func_080E2390: @ 0x080E2390
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r4, [r1, #4]
	ldr r5, [r4, #4]
	movs r0, #1
	cmp r5, #0
	beq .L080E23C6
	ldr r2, [r7]
.L080E23AA:
	adds r4, r5, #0
	movs r1, #0
	ldr r0, [r4, #0x10]
	cmp r2, r0
	bhs .L080E23B6
	movs r1, #1
.L080E23B6:
	adds r0, r1, #0
	cmp r0, #0
	beq .L080E23C0
	ldr r5, [r4, #8]
	b .L080E23C2
.L080E23C0:
	ldr r5, [r4, #0xc]
.L080E23C2:
	cmp r5, #0
	bne .L080E23AA
.L080E23C6:
	str r4, [sp, #8]
	cmp r0, #0
	beq .L080E2400
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	movs r1, #0
	cmp r4, r0
	bne .L080E23DC
	movs r1, #1
.L080E23DC:
	cmp r1, #0
	beq .L080E23F8
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E2294
	movs r1, #1
	ldr r0, [sp, #0x10]
	b .L080E242A
.L080E23F8:
	adds r0, r4, #0
	bl func_080E2354
	str r0, [sp, #8]
.L080E2400:
	ldr r2, [sp, #8]
	movs r3, #0
	ldr r1, [r2, #0x10]
	ldr r0, [r7]
	cmp r1, r0
	bhs .L080E240E
	movs r3, #1
.L080E240E:
	adds r0, r3, #0
	cmp r0, #0
	beq .L080E2430
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E2294
	movs r1, #1
	ldr r0, [sp, #0xc]
.L080E242A:
	str r0, [r6]
	strb r1, [r6, #4]
	b .L080E2434
.L080E2430:
	str r2, [r6]
	strb r0, [r6, #4]
.L080E2434:
	adds r0, r6, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E2444
func_080E2444: @ 0x080E2444
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, [r6, #4]
	ldr r2, [r2]
	ldr r0, [r1, #8]
	cmp r2, r0
	bne .L080E24D4
	ldr r0, [r6, #8]
	cmp r0, #0
	bne .L080E2474
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E2390
	ldr r0, [sp, #8]
	b .L080E25E8
.L080E2474:
	movs r0, #0
	ldr r1, [r2, #0x10]
	adds r3, r2, #0
	ldr r2, [r4]
	cmp r2, r1
	bhs .L080E2482
	movs r0, #1
.L080E2482:
	mov sb, r0
	cmp r0, #0
	bne .L080E2548
	movs r0, #0
	cmp r1, r2
	bhs .L080E2490
	movs r0, #1
.L080E2490:
	cmp r0, #0
	bne .L080E2498
	str r3, [r7]
	b .L080E25EA
.L080E2498:
	str r3, [sp, #8]
	adds r0, r3, #0
	bl func_080E2B28
	adds r2, r0, #0
	str r2, [sp, #8]
	ldr r0, [r6, #4]
	cmp r2, r0
	bne .L080E24B0
	mov r0, r8
	ldr r3, [r0]
	b .L080E25AE
.L080E24B0:
	movs r3, #0
	ldr r1, [r4]
	ldr r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r1, r0
	bhs .L080E24BE
	movs r3, #1
.L080E24BE:
	cmp r3, #0
	bne .L080E24C4
	b .L080E25DC
.L080E24C4:
	mov r1, r8
	ldr r3, [r1]
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq .L080E25AE
	str r4, [sp]
	mov r0, sb
	b .L080E25C2
.L080E24D4:
	cmp r2, r1
	bne .L080E24FE
	ldr r3, [r2, #0xc]
	movs r5, #0
	ldr r1, [r3, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bhs .L080E24E6
	movs r5, #1
.L080E24E6:
	cmp r5, #0
	beq .L080E24F0
	str r4, [sp]
	str r2, [sp, #4]
	b .L080E25B2
.L080E24F0:
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E2390
	ldr r0, [sp, #8]
	b .L080E25E8
.L080E24FE:
	str r2, [sp, #8]
	adds r0, r2, #0
	bl func_080E2354
	adds r2, r0, #0
	str r2, [sp, #8]
	mov r1, r8
	ldr r3, [r1]
	movs r5, #0
	ldr r1, [r4]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	bhs .L080E251A
	movs r5, #1
.L080E251A:
	mov sb, r5
	cmp r5, #0
	beq .L080E255A
	movs r0, #0
	mov ip, r0
	ldr r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r0, r1
	bhs .L080E2530
	movs r1, #1
	mov ip, r1
.L080E2530:
	mov r0, ip
	cmp r0, #0
	beq .L080E255A
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne .L080E2548
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	b .L080E25CA
.L080E2548:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r3, #0
	bl func_080E2294
	b .L080E25EA
.L080E255A:
	mov r1, r8
	ldr r0, [r1]
	str r0, [sp, #0xc]
	bl func_080E2B28
	mov ip, r0
	str r0, [sp, #0xc]
	movs r0, #1
	mov r1, sb
	eors r1, r0
	mov r0, sb
	cmp r0, #0
	bne .L080E25D2
	mov r1, r8
	ldr r0, [r1]
	movs r5, #0
	ldr r1, [r0, #0x10]
	adds r3, r0, #0
	ldr r2, [r4]
	cmp r1, r2
	bhs .L080E2586
	movs r5, #1
.L080E2586:
	adds r1, r5, #0
	cmp r1, #0
	beq .L080E25D2
	ldr r0, [r6, #4]
	mov r5, ip
	cmp r5, r0
	beq .L080E25A8
	movs r0, #0
	mov ip, r0
	ldr r0, [r5, #0x10]
	cmp r2, r0
	bhs .L080E25A2
	movs r0, #1
	mov ip, r0
.L080E25A2:
	mov r0, ip
	cmp r0, #0
	beq .L080E25D2
.L080E25A8:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne .L080E25BE
.L080E25AE:
	str r4, [sp]
	str r3, [sp, #4]
.L080E25B2:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080E2294
	b .L080E25EA
.L080E25BE:
	str r4, [sp]
	movs r0, #0
.L080E25C2:
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
.L080E25CA:
	adds r3, r5, #0
	bl func_080E2294
	b .L080E25EA
.L080E25D2:
	cmp sb, r1
	bne .L080E25DC
	mov r1, r8
	ldr r0, [r1]
	b .L080E25E8
.L080E25DC:
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E2390
	ldr r0, [sp, #0x10]
.L080E25E8:
	str r0, [r7]
.L080E25EA:
	adds r0, r7, #0
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E25FC
func_080E25FC: @ 0x080E25FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r7, r5, #0
	ldr r1, [r7, #8]
	cmp r1, #0
	beq .L080E2624
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne .L080E2618
	adds r6, r1, #0
	b .L080E2626
.L080E2618:
	adds r7, r0, #0
	b .L080E261E
.L080E261C:
	ldr r7, [r7, #8]
.L080E261E:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne .L080E261C
.L080E2624:
	ldr r6, [r7, #0xc]
.L080E2626:
	cmp r7, r5
	beq .L080E267A
	ldr r0, [r5, #8]
	str r7, [r0, #4]
	ldr r0, [r5, #8]
	str r0, [r7, #8]
	ldr r0, [r5, #0xc]
	cmp r7, r0
	beq .L080E264E
	ldr r4, [r7, #4]
	cmp r6, #0
	beq .L080E2640
	str r4, [r6, #4]
.L080E2640:
	ldr r0, [r7, #4]
	str r6, [r0, #8]
	ldr r0, [r5, #0xc]
	str r0, [r7, #0xc]
	ldr r0, [r5, #0xc]
	str r7, [r0, #4]
	b .L080E2650
.L080E264E:
	adds r4, r7, #0
.L080E2650:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, r5
	bne .L080E265C
	str r7, [r1]
	b .L080E266A
.L080E265C:
	ldr r1, [r5, #4]
	ldr r0, [r1, #8]
	cmp r0, r5
	bne .L080E2668
	str r7, [r1, #8]
	b .L080E266A
.L080E2668:
	str r7, [r1, #0xc]
.L080E266A:
	ldr r0, [r5, #4]
	str r0, [r7, #4]
	ldrb r1, [r7]
	ldrb r0, [r5]
	strb r0, [r7]
	strb r1, [r5]
	adds r7, r5, #0
	b .L080E26E4
.L080E267A:
	ldr r4, [r7, #4]
	cmp r6, #0
	beq .L080E2682
	str r4, [r6, #4]
.L080E2682:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, r7
	bne .L080E268E
	str r6, [r1]
	b .L080E269C
.L080E268E:
	ldr r1, [r7, #4]
	ldr r0, [r1, #8]
	cmp r0, r7
	bne .L080E269A
	str r6, [r1, #8]
	b .L080E269C
.L080E269A:
	str r6, [r1, #0xc]
.L080E269C:
	ldr r0, [r2]
	cmp r0, r5
	bne .L080E26C0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne .L080E26AE
	ldr r0, [r5, #4]
	str r0, [r2]
	b .L080E26C0
.L080E26AE:
	adds r1, r6, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	beq .L080E26BE
.L080E26B6:
	ldr r1, [r1, #8]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L080E26B6
.L080E26BE:
	str r1, [r2]
.L080E26C0:
	ldr r0, [r3]
	cmp r0, r5
	bne .L080E26E4
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L080E26D2
	ldr r0, [r5, #4]
	str r0, [r3]
	b .L080E26E4
.L080E26D2:
	adds r1, r6, #0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq .L080E26E2
.L080E26DA:
	ldr r1, [r1, #0xc]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne .L080E26DA
.L080E26E2:
	str r1, [r3]
.L080E26E4:
	ldrb r0, [r7]
	cmp r0, #0
	bne .L080E26EC
	b .L080E27F0
.L080E26EC:
	b .L080E27D6
.L080E26EE:
	ldr r0, [r4, #8]
	cmp r6, r0
	bne .L080E2760
	ldr r2, [r4, #0xc]
	ldrb r1, [r2]
	cmp r1, #0
	bne .L080E270C
	movs r0, #1
	strb r0, [r2]
	strb r1, [r4]
	adds r0, r4, #0
	mov r1, r8
	bl func_080E2170
	ldr r2, [r4, #0xc]
.L080E270C:
	ldr r3, [r2, #8]
	cmp r3, #0
	beq .L080E271A
	ldrb r0, [r3]
	ldr r1, [r2, #0xc]
	cmp r0, #1
	bne .L080E2726
.L080E271A:
	ldr r1, [r2, #0xc]
	cmp r1, #0
	beq .L080E2792
	ldrb r0, [r1]
	cmp r0, #1
	beq .L080E2792
.L080E2726:
	cmp r1, #0
	beq .L080E2730
	ldrb r0, [r1]
	cmp r0, #1
	bne .L080E2746
.L080E2730:
	cmp r3, #0
	beq .L080E2738
	movs r0, #1
	strb r0, [r3]
.L080E2738:
	movs r0, #0
	strb r0, [r2]
	adds r0, r2, #0
	mov r1, r8
	bl func_080E21A8
	ldr r2, [r4, #0xc]
.L080E2746:
	ldrb r0, [r4]
	strb r0, [r2]
	movs r1, #1
	strb r1, [r4]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq .L080E2756
	strb r1, [r0]
.L080E2756:
	adds r0, r4, #0
	mov r1, r8
	bl func_080E2170
	b .L080E27E8
.L080E2760:
	adds r2, r0, #0
	ldrb r1, [r2]
	cmp r1, #0
	bne .L080E2778
	movs r0, #1
	strb r0, [r2]
	strb r1, [r4]
	adds r0, r4, #0
	mov r1, r8
	bl func_080E21A8
	ldr r2, [r4, #8]
.L080E2778:
	ldr r3, [r2, #0xc]
	cmp r3, #0
	beq .L080E2786
	ldrb r0, [r3]
	ldr r1, [r2, #8]
	cmp r0, #1
	bne .L080E279C
.L080E2786:
	ldr r1, [r2, #8]
	cmp r1, #0
	beq .L080E2792
	ldrb r0, [r1]
	cmp r0, #1
	bne .L080E279C
.L080E2792:
	movs r0, #0
	strb r0, [r2]
	adds r6, r4, #0
	ldr r4, [r6, #4]
	b .L080E27D6
.L080E279C:
	cmp r1, #0
	beq .L080E27A6
	ldrb r0, [r1]
	cmp r0, #1
	bne .L080E27BC
.L080E27A6:
	cmp r3, #0
	beq .L080E27AE
	movs r0, #1
	strb r0, [r3]
.L080E27AE:
	movs r0, #0
	strb r0, [r2]
	adds r0, r2, #0
	mov r1, r8
	bl func_080E2170
	ldr r2, [r4, #8]
.L080E27BC:
	ldrb r0, [r4]
	strb r0, [r2]
	movs r1, #1
	strb r1, [r4]
	ldr r0, [r2, #8]
	cmp r0, #0
	beq .L080E27CC
	strb r1, [r0]
.L080E27CC:
	adds r0, r4, #0
	mov r1, r8
	bl func_080E21A8
	b .L080E27E8
.L080E27D6:
	mov r1, r8
	ldr r0, [r1]
	cmp r6, r0
	beq .L080E27E8
	cmp r6, #0
	beq .L080E26EE
	ldrb r0, [r6]
	cmp r0, #1
	beq .L080E26EE
.L080E27E8:
	cmp r6, #0
	beq .L080E27F0
	movs r0, #1
	strb r0, [r6]
.L080E27F0:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080E27FC
func_080E27FC: @ 0x080E27FC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, [sp, #0x14]
	adds r5, r3, #0
	ldr r0, [r6, #4]
	cmp r5, r0
	beq .L080E2826
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L080E2866
	cmp r2, #0
	bne .L080E2826
	movs r2, #0
	ldr r1, [r4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bhs .L080E2822
	movs r2, #1
.L080E2822:
	cmp r2, #0
	beq .L080E2866
.L080E2826:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E283A
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E283A:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E284A
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E284A:
	adds r4, r2, #0
	str r4, [r5, #8]
	ldr r1, [r6, #4]
	cmp r5, r1
	bne .L080E285C
	str r4, [r5, #4]
	ldr r0, [r6, #4]
	str r4, [r0, #0xc]
	b .L080E2898
.L080E285C:
	ldr r0, [r1, #8]
	cmp r5, r0
	bne .L080E2898
	str r4, [r1, #8]
	b .L080E2898
.L080E2866:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E287A
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E287A:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E288A
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E288A:
	adds r4, r2, #0
	str r4, [r5, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r1, #0xc]
	cmp r5, r0
	bne .L080E2898
	str r4, [r1, #0xc]
.L080E2898:
	str r5, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r6, #4]
	adds r1, #4
	adds r0, r4, #0
	bl func_080E21E0
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	str r4, [r7]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E28BC
func_080E28BC: @ 0x080E28BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r4, [r1, #4]
	ldr r5, [r4, #4]
	movs r0, #1
	cmp r5, #0
	beq .L080E28F2
	ldr r2, [r7]
.L080E28D6:
	adds r4, r5, #0
	movs r1, #0
	ldr r0, [r4, #0x10]
	cmp r2, r0
	bhs .L080E28E2
	movs r1, #1
.L080E28E2:
	adds r0, r1, #0
	cmp r0, #0
	beq .L080E28EC
	ldr r5, [r4, #8]
	b .L080E28EE
.L080E28EC:
	ldr r5, [r4, #0xc]
.L080E28EE:
	cmp r5, #0
	bne .L080E28D6
.L080E28F2:
	str r4, [sp, #8]
	cmp r0, #0
	beq .L080E292C
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	movs r1, #0
	cmp r4, r0
	bne .L080E2908
	movs r1, #1
.L080E2908:
	cmp r1, #0
	beq .L080E2924
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E27FC
	movs r1, #1
	ldr r0, [sp, #0x10]
	b .L080E2956
.L080E2924:
	adds r0, r4, #0
	bl func_080E2354
	str r0, [sp, #8]
.L080E292C:
	ldr r2, [sp, #8]
	movs r3, #0
	ldr r1, [r2, #0x10]
	ldr r0, [r7]
	cmp r1, r0
	bhs .L080E293A
	movs r3, #1
.L080E293A:
	adds r0, r3, #0
	cmp r0, #0
	beq .L080E295C
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E27FC
	movs r1, #1
	ldr r0, [sp, #0xc]
.L080E2956:
	str r0, [r6]
	strb r1, [r6, #4]
	b .L080E2960
.L080E295C:
	str r2, [r6]
	strb r0, [r6, #4]
.L080E2960:
	adds r0, r6, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E2970
func_080E2970: @ 0x080E2970
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, [r6, #4]
	ldr r2, [r2]
	ldr r0, [r1, #8]
	cmp r2, r0
	bne .L080E2A00
	ldr r0, [r6, #8]
	cmp r0, #0
	bne .L080E29A0
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E28BC
	ldr r0, [sp, #8]
	b .L080E2B14
.L080E29A0:
	movs r0, #0
	ldr r1, [r2, #0x10]
	adds r3, r2, #0
	ldr r2, [r4]
	cmp r2, r1
	bhs .L080E29AE
	movs r0, #1
.L080E29AE:
	mov sb, r0
	cmp r0, #0
	bne .L080E2A74
	movs r0, #0
	cmp r1, r2
	bhs .L080E29BC
	movs r0, #1
.L080E29BC:
	cmp r0, #0
	bne .L080E29C4
	str r3, [r7]
	b .L080E2B16
.L080E29C4:
	str r3, [sp, #8]
	adds r0, r3, #0
	bl func_080E2B28
	adds r2, r0, #0
	str r2, [sp, #8]
	ldr r0, [r6, #4]
	cmp r2, r0
	bne .L080E29DC
	mov r0, r8
	ldr r3, [r0]
	b .L080E2ADA
.L080E29DC:
	movs r3, #0
	ldr r1, [r4]
	ldr r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r1, r0
	bhs .L080E29EA
	movs r3, #1
.L080E29EA:
	cmp r3, #0
	bne .L080E29F0
	b .L080E2B08
.L080E29F0:
	mov r1, r8
	ldr r3, [r1]
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq .L080E2ADA
	str r4, [sp]
	mov r0, sb
	b .L080E2AEE
.L080E2A00:
	cmp r2, r1
	bne .L080E2A2A
	ldr r3, [r2, #0xc]
	movs r5, #0
	ldr r1, [r3, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bhs .L080E2A12
	movs r5, #1
.L080E2A12:
	cmp r5, #0
	beq .L080E2A1C
	str r4, [sp]
	str r2, [sp, #4]
	b .L080E2ADE
.L080E2A1C:
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E28BC
	ldr r0, [sp, #8]
	b .L080E2B14
.L080E2A2A:
	str r2, [sp, #8]
	adds r0, r2, #0
	bl func_080E2354
	adds r2, r0, #0
	str r2, [sp, #8]
	mov r1, r8
	ldr r3, [r1]
	movs r5, #0
	ldr r1, [r4]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	bhs .L080E2A46
	movs r5, #1
.L080E2A46:
	mov sb, r5
	cmp r5, #0
	beq .L080E2A86
	movs r0, #0
	mov ip, r0
	ldr r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r0, r1
	bhs .L080E2A5C
	movs r1, #1
	mov ip, r1
.L080E2A5C:
	mov r0, ip
	cmp r0, #0
	beq .L080E2A86
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne .L080E2A74
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	b .L080E2AF6
.L080E2A74:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r3, #0
	bl func_080E27FC
	b .L080E2B16
.L080E2A86:
	mov r1, r8
	ldr r0, [r1]
	str r0, [sp, #0xc]
	bl func_080E2B28
	mov ip, r0
	str r0, [sp, #0xc]
	movs r0, #1
	mov r1, sb
	eors r1, r0
	mov r0, sb
	cmp r0, #0
	bne .L080E2AFE
	mov r1, r8
	ldr r0, [r1]
	movs r5, #0
	ldr r1, [r0, #0x10]
	adds r3, r0, #0
	ldr r2, [r4]
	cmp r1, r2
	bhs .L080E2AB2
	movs r5, #1
.L080E2AB2:
	adds r1, r5, #0
	cmp r1, #0
	beq .L080E2AFE
	ldr r0, [r6, #4]
	mov r5, ip
	cmp r5, r0
	beq .L080E2AD4
	movs r0, #0
	mov ip, r0
	ldr r0, [r5, #0x10]
	cmp r2, r0
	bhs .L080E2ACE
	movs r0, #1
	mov ip, r0
.L080E2ACE:
	mov r0, ip
	cmp r0, #0
	beq .L080E2AFE
.L080E2AD4:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne .L080E2AEA
.L080E2ADA:
	str r4, [sp]
	str r3, [sp, #4]
.L080E2ADE:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080E27FC
	b .L080E2B16
.L080E2AEA:
	str r4, [sp]
	movs r0, #0
.L080E2AEE:
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
.L080E2AF6:
	adds r3, r5, #0
	bl func_080E27FC
	b .L080E2B16
.L080E2AFE:
	cmp sb, r1
	bne .L080E2B08
	mov r1, r8
	ldr r0, [r1]
	b .L080E2B14
.L080E2B08:
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E28BC
	ldr r0, [sp, #0x10]
.L080E2B14:
	str r0, [r7]
.L080E2B16:
	adds r0, r7, #0
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E2B28
func_080E2B28: @ 0x080E2B28
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq .L080E2B46
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq .L080E2B56
.L080E2B3A:
	ldr r1, [r1, #8]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L080E2B3A
	b .L080E2B56
.L080E2B44:
	adds r1, r2, #0
.L080E2B46:
	ldr r2, [r1, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L080E2B44
	ldr r0, [r1, #0xc]
	cmp r0, r2
	beq .L080E2B56
	adds r1, r2, #0
.L080E2B56:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start func_080E2B5C
func_080E2B5C: @ 0x080E2B5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #0
	beq .L080E2B80
.L080E2B66:
	ldr r1, [r4, #0xc]
	adds r0, r6, #0
	bl func_080E2B5C
	ldr r5, [r4, #8]
	cmp r4, #0
	beq .L080E2B7A
	adds r0, r4, #0
	bl free
.L080E2B7A:
	adds r4, r5, #0
	cmp r4, #0
	bne .L080E2B66
.L080E2B80:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E2B88
func_080E2B88: @ 0x080E2B88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #0
	beq .L080E2BAC
.L080E2B92:
	ldr r1, [r4, #0xc]
	adds r0, r6, #0
	bl func_080E2B88
	ldr r5, [r4, #8]
	cmp r4, #0
	beq .L080E2BA6
	adds r0, r4, #0
	bl free
.L080E2BA6:
	adds r4, r5, #0
	cmp r4, #0
	bne .L080E2B92
.L080E2BAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E2BB4
func_080E2BB4: @ 0x080E2BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, [r2, #8]
	str r0, [sp, #0x18]
	ldr r1, [r2, #0x10]
	str r1, [sp, #0x1c]
	ldr r3, [r2]
	movs r0, #0
	cmp r3, #0
	beq .L080E2BD8
	ldrh r0, [r2, #4]
.L080E2BD8:
	lsls r0, r0, #3
	adds r0, r3, r0
	str r0, [sp, #0x20]
	cmp r3, r0
	bne .L080E2BE4
	b .L080E2DA2
.L080E2BE4:
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	ldr r2, [sp]
	lsls r0, r2, #7
	asrs r6, r0, #0x17
	ldr r0, [sp, #0x14]
	adds r6, r6, r0
	str r3, [sp, #0x24]
	cmp r6, #0xef
	ble .L080E2BFC
	b .L080E2D98
.L080E2BFC:
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	ldr r1, [sp, #0x48]
	add r8, r1
	mov r0, r8
	cmp r0, #0x9f
	ble .L080E2C12
	b .L080E2D98
.L080E2C12:
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	lsrs r0, r2, #0x1e
	adds r1, r1, r0
	ldr r2, .L080E2C84 @ =gUnk_080FC066
	lsrs r0, r1, #1
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #2
	asrs r2, r1
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	movs r4, #8
	adds r0, r4, #0
	lsls r0, r1
	adds r0, r6, r0
	cmp r0, #0
	bgt .L080E2C40
	b .L080E2D98
.L080E2C40:
	lsrs r1, r2, #2
	ands r1, r3
	adds r0, r4, #0
	lsls r0, r1
	add r0, r8
	cmp r0, #0
	bgt .L080E2C50
	b .L080E2D98
.L080E2C50:
	ldr r0, [sp, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x11
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	str r0, [sp, #8]
	mov r1, sl
	adds r1, #4
	add r7, sp, #8
	ldr r4, [r1, #4]
	ldr r2, [r4, #4]
	mov ip, r1
	cmp r2, #0
	beq .L080E2C8E
	adds r5, r0, #0
.L080E2C6E:
	movs r3, #0
	ldr r0, [r2, #0x10]
	cmp r0, r5
	bhs .L080E2C78
	movs r3, #1
.L080E2C78:
	cmp r3, #0
	bne .L080E2C88
	adds r4, r2, #0
	ldr r2, [r4, #8]
	b .L080E2C8A
	.align 2, 0
.L080E2C84: .4byte gUnk_080FC066
.L080E2C88:
	ldr r2, [r2, #0xc]
.L080E2C8A:
	cmp r2, #0
	bne .L080E2C6E
.L080E2C8E:
	ldr r3, [r1, #4]
	cmp r4, r3
	beq .L080E2CA4
	movs r2, #0
	ldr r1, [r7]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bhs .L080E2CA0
	movs r2, #1
.L080E2CA0:
	cmp r2, #0
	beq .L080E2CA6
.L080E2CA4:
	adds r4, r3, #0
.L080E2CA6:
	mov r0, ip
	ldr r1, [r0, #4]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080E2CBE
	ldr r1, [r4, #0x14]
	mov r0, sl
	bl func_08007D4C
	b .L080E2CC2
.L080E2CBE:
	movs r0, #1
	rsbs r0, r0, #0
.L080E2CC2:
	mov sb, r0
	cmp r0, #0
	blt .L080E2D98
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	str r0, [sp, #0xc]
	mov r1, sl
	adds r1, #0x18
	add r7, sp, #0xc
	ldr r4, [r1, #4]
	ldr r2, [r4, #4]
	mov ip, r1
	cmp r2, #0
	beq .L080E2D02
	adds r5, r0, #0
.L080E2CE8:
	movs r3, #0
	ldr r0, [r2, #0x10]
	cmp r0, r5
	bhs .L080E2CF2
	movs r3, #1
.L080E2CF2:
	cmp r3, #0
	bne .L080E2CFC
	adds r4, r2, #0
	ldr r2, [r4, #8]
	b .L080E2CFE
.L080E2CFC:
	ldr r2, [r2, #0xc]
.L080E2CFE:
	cmp r2, #0
	bne .L080E2CE8
.L080E2D02:
	ldr r3, [r1, #4]
	cmp r4, r3
	beq .L080E2D18
	movs r2, #0
	ldr r1, [r7]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bhs .L080E2D14
	movs r2, #1
.L080E2D14:
	cmp r2, #0
	beq .L080E2D1A
.L080E2D18:
	adds r4, r3, #0
.L080E2D1A:
	mov r0, ip
	ldr r1, [r0, #4]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080E2D36
	ldr r1, [r4, #0x14]
	mov r0, sl
	adds r0, #0x14
	bl func_080074C0
	adds r4, r0, #0
	b .L080E2D3A
.L080E2D36:
	movs r4, #1
	rsbs r4, r4, #0
.L080E2D3A:
	cmp r4, #0
	blt .L080E2D98
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	ldr r1, .L080E2DB4 @ =0xFFFFFF00
	ldr r3, [sp]
	ands r3, r1
	orrs r3, r0
	ldr r0, .L080E2DB8 @ =0x000001FF
	ands r6, r0
	lsls r1, r6, #0x10
	ldr r0, .L080E2DBC @ =0xFE00FFFF
	ands r3, r0
	orrs r3, r1
	str r3, [sp]
	mov r1, sb
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r1, .L080E2DC0 @ =0xFFFFFC00
	mov r5, sp
	ldr r2, [sp, #4]
	ands r2, r1
	orrs r2, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, .L080E2DC4 @ =0xFFFF0FFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #4]
	ldr r0, [sp, #0x10]
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L080E2D98
	lsls r0, r2, #3
	adds r0, #4
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	str r3, [r0]
	ldrh r1, [r5, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	ldr r1, [sp, #0x10]
	strb r0, [r1]
.L080E2D98:
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq .L080E2DA2
	b .L080E2BE4
.L080E2DA2:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E2DB4: .4byte 0xFFFFFF00
.L080E2DB8: .4byte 0x000001FF
.L080E2DBC: .4byte 0xFE00FFFF
.L080E2DC0: .4byte 0xFFFFFC00
.L080E2DC4: .4byte 0xFFFF0FFF

	thumb_func_start func_080E2DC8
func_080E2DC8: @ 0x080E2DC8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	bl func_08007874
	adds r4, r6, #4
	movs r5, #0
	str r5, [r4, #4]
	movs r0, #0x18
	bl malloc
	cmp r0, #0
	bne .L080E2DE8
	movs r0, #0x18
	bl func_080D3BC0
.L080E2DE8:
	str r0, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r5, [r0]
	str r5, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	adds r0, r6, #0
	adds r0, #0x14
	bl func_08007128
	adds r4, r6, #0
	adds r4, #0x18
	str r5, [r4, #4]
	movs r0, #0x18
	bl malloc
	cmp r0, #0
	bne .L080E2E18
	movs r0, #0x18
	bl func_080D3BC0
.L080E2E18:
	str r0, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r5, [r0]
	str r5, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
.L080E2E34:
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x0A, 0x48, 0xE0, 0x60, 0xA1, 0x68
	.byte 0x00, 0x29, 0x07, 0xD0, 0x08, 0x4A, 0x88, 0x18, 0x00, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
	.byte 0xF0, 0xF7, 0x60, 0xFD, 0x20, 0x1C, 0x29, 0x1C, 0x25, 0xF7, 0x30, 0xFC, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x28, 0x5A, 0x0E, 0x08, 0xB4, 0x05, 0x00, 0x00, 0x00, 0xB5, 0x25, 0xF7
	.byte 0x25, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start func_080E2E78
func_080E2E78: @ 0x080E2E78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #0
	beq .L080E2E9C
.L080E2E82:
	ldr r1, [r4, #0xc]
	adds r0, r6, #0
	bl func_080E2E78
	ldr r5, [r4, #8]
	cmp r4, #0
	beq .L080E2E96
	adds r0, r4, #0
	bl free
.L080E2E96:
	adds r4, r5, #0
	cmp r4, #0
	bne .L080E2E82
.L080E2E9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E2EA4
func_080E2EA4: @ 0x080E2EA4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, [sp, #0x14]
	adds r5, r3, #0
	ldr r0, [r6, #4]
	cmp r5, r0
	beq .L080E2EDE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L080E2F1E
	cmp r2, #0
	bne .L080E2EDE
	adds r2, r5, #0
	adds r2, #0x10
	movs r3, #0
	ldrb r1, [r4]
	ldrb r0, [r5, #0x10]
	cmp r1, r0
	blo .L080E2ED8
	cmp r0, r1
	blo .L080E2EDA
	ldrb r0, [r4, #1]
	ldrb r2, [r2, #1]
	cmp r0, r2
	bhs .L080E2EDA
.L080E2ED8:
	movs r3, #1
.L080E2EDA:
	cmp r3, #0
	beq .L080E2F1E
.L080E2EDE:
	movs r0, #0x18
	bl malloc
	adds r1, r0, #0
	cmp r1, #0
	bne .L080E2EF2
	movs r0, #0x18
	bl func_080D3BC0
	adds r1, r0, #0
.L080E2EF2:
	adds r2, r1, #0
	adds r2, #0x10
	cmp r2, #0
	beq .L080E2F02
	ldr r0, [r4]
	str r0, [r1, #0x10]
	ldrb r0, [r4, #4]
	strb r0, [r2, #4]
.L080E2F02:
	adds r4, r1, #0
	str r4, [r5, #8]
	ldr r1, [r6, #4]
	cmp r5, r1
	bne .L080E2F14
	str r4, [r5, #4]
	ldr r0, [r6, #4]
	str r4, [r0, #0xc]
	b .L080E2F50
.L080E2F14:
	ldr r0, [r1, #8]
	cmp r5, r0
	bne .L080E2F50
	str r4, [r1, #8]
	b .L080E2F50
.L080E2F1E:
	movs r0, #0x18
	bl malloc
	adds r1, r0, #0
	cmp r1, #0
	bne .L080E2F32
	movs r0, #0x18
	bl func_080D3BC0
	adds r1, r0, #0
.L080E2F32:
	adds r2, r1, #0
	adds r2, #0x10
	cmp r2, #0
	beq .L080E2F42
	ldr r0, [r4]
	str r0, [r1, #0x10]
	ldrb r0, [r4, #4]
	strb r0, [r2, #4]
.L080E2F42:
	adds r4, r1, #0
	str r4, [r5, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r1, #0xc]
	cmp r5, r0
	bne .L080E2F50
	str r4, [r1, #0xc]
.L080E2F50:
	str r5, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r6, #4]
	adds r1, #4
	adds r0, r4, #0
	bl func_080E21E0
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	str r4, [r7]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E2F74
func_080E2F74: @ 0x080E2F74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov r8, r1
	adds r6, r2, #0
	ldr r5, [r1, #4]
	ldr r4, [r5, #4]
	movs r0, #1
	cmp r4, #0
	beq .L080E2FBC
	ldrb r2, [r6]
.L080E2F90:
	adds r5, r4, #0
	adds r1, r5, #0
	adds r1, #0x10
	movs r3, #0
	ldrb r0, [r5, #0x10]
	cmp r2, r0
	blo .L080E2FAA
	cmp r0, r2
	blo .L080E2FAC
	ldrb r0, [r6, #1]
	ldrb r1, [r1, #1]
	cmp r0, r1
	bhs .L080E2FAC
.L080E2FAA:
	movs r3, #1
.L080E2FAC:
	adds r0, r3, #0
	cmp r0, #0
	beq .L080E2FB6
	ldr r4, [r4, #8]
	b .L080E2FB8
.L080E2FB6:
	ldr r4, [r4, #0xc]
.L080E2FB8:
	cmp r4, #0
	bne .L080E2F90
.L080E2FBC:
	str r5, [sp, #8]
	cmp r0, #0
	beq .L080E2FF6
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	movs r1, #0
	cmp r5, r0
	bne .L080E2FD2
	movs r1, #1
.L080E2FD2:
	cmp r1, #0
	beq .L080E2FEE
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl func_080E2EA4
	movs r1, #1
	ldr r0, [sp, #0x10]
	b .L080E3036
.L080E2FEE:
	adds r0, r5, #0
	bl func_080E2354
	str r0, [sp, #8]
.L080E2FF6:
	ldr r0, [sp, #8]
	adds r3, r0, #0
	adds r3, #0x10
	movs r1, #0
	mov sb, r1
	ldrb r2, [r0, #0x10]
	ldrb r1, [r6]
	mov ip, r0
	cmp r2, r1
	blo .L080E3016
	cmp r1, r2
	blo .L080E301A
	ldrb r0, [r3, #1]
	ldrb r1, [r6, #1]
	cmp r0, r1
	bhs .L080E301A
.L080E3016:
	movs r0, #1
	mov sb, r0
.L080E301A:
	mov r0, sb
	cmp r0, #0
	beq .L080E303C
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl func_080E2EA4
	movs r1, #1
	ldr r0, [sp, #0xc]
.L080E3036:
	str r0, [r7]
	strb r1, [r7, #4]
	b .L080E3042
.L080E303C:
	mov r1, ip
	str r1, [r7]
	strb r0, [r7, #4]
.L080E3042:
	adds r0, r7, #0
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E3054
func_080E3054: @ 0x080E3054
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	adds r6, r1, #0
	mov sl, r2
	adds r4, r3, #0
	ldr r1, [r6, #4]
	ldr r2, [r2]
	ldr r0, [r1, #8]
	cmp r2, r0
	bne .L080E314C
	ldr r0, [r6, #8]
	cmp r0, #0
	bne .L080E3086
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E2F74
	ldr r0, [sp, #8]
	b .L080E32D2
.L080E3086:
	movs r0, #0x10
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	mov sb, r1
	ldrb r0, [r4]
	adds r3, r0, #0
	ldrb r1, [r2, #0x10]
	adds r5, r2, #0
	mov r8, r0
	cmp r3, r1
	blo .L080E30AC
	cmp r1, r3
	blo .L080E30B0
	ldrb r0, [r4, #1]
	mov r2, ip
	ldrb r2, [r2, #1]
	cmp r0, r2
	bhs .L080E30B0
.L080E30AC:
	movs r0, #1
	mov sb, r0
.L080E30B0:
	mov r1, sb
	cmp r1, #0
	beq .L080E30C4
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	b .L080E32A2
.L080E30C4:
	adds r3, r5, #0
	adds r3, #0x10
	movs r1, #0
	ldrb r2, [r5, #0x10]
	mov r0, r8
	cmp r2, r0
	blo .L080E30DE
	cmp r0, r2
	blo .L080E30E0
	ldrb r0, [r3, #1]
	ldrb r2, [r4, #1]
	cmp r0, r2
	bhs .L080E30E0
.L080E30DE:
	movs r1, #1
.L080E30E0:
	cmp r1, #0
	bne .L080E30E8
	str r5, [r7]
	b .L080E32D4
.L080E30E8:
	str r5, [sp, #8]
	adds r0, r5, #0
	bl func_080E2B28
	adds r2, r0, #0
	str r2, [sp, #8]
	ldr r0, [r6, #4]
	cmp r2, r0
	bne .L080E3104
	mov r0, sl
	ldr r3, [r0]
	str r4, [sp]
	str r3, [sp, #4]
	b .L080E317E
.L080E3104:
	adds r3, r2, #0
	adds r3, #0x10
	movs r1, #0
	mov r8, r1
	ldrb r1, [r4]
	ldrb r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r1, r0
	blo .L080E3122
	cmp r0, r1
	blo .L080E3126
	ldrb r0, [r4, #1]
	ldrb r3, [r3, #1]
	cmp r0, r3
	bhs .L080E3126
.L080E3122:
	movs r2, #1
	mov r8, r2
.L080E3126:
	mov r0, r8
	cmp r0, #0
	bne .L080E312E
	b .L080E32C6
.L080E312E:
	mov r1, sl
	ldr r3, [r1]
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne .L080E313E
	str r4, [sp]
	str r3, [sp, #4]
	b .L080E317E
.L080E313E:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	b .L080E32A2
.L080E314C:
	cmp r2, r1
	bne .L080E3198
	ldr r0, [r2, #0xc]
	adds r2, r0, #0
	adds r2, #0x10
	movs r3, #0
	ldrb r0, [r0, #0x10]
	ldrb r1, [r4]
	cmp r0, r1
	blo .L080E316C
	cmp r1, r0
	blo .L080E316E
	ldrb r0, [r2, #1]
	ldrb r2, [r4, #1]
	cmp r0, r2
	bhs .L080E316E
.L080E316C:
	movs r3, #1
.L080E316E:
	cmp r3, #0
	beq .L080E318A
	ldr r0, [r6, #4]
	ldr r3, [r0, #0xc]
	str r4, [sp]
	mov r1, sl
	ldr r0, [r1]
	str r0, [sp, #4]
.L080E317E:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080E2EA4
	b .L080E32D4
.L080E318A:
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E2F74
	ldr r0, [sp, #8]
	b .L080E32D2
.L080E3198:
	str r2, [sp, #8]
	adds r0, r2, #0
	bl func_080E2354
	str r0, [sp, #8]
	mov r2, sl
	ldr r0, [r2]
	adds r2, r0, #0
	adds r2, #0x10
	movs r3, #0
	ldrb r1, [r4]
	ldrb r0, [r0, #0x10]
	cmp r1, r0
	blo .L080E31C0
	cmp r0, r1
	blo .L080E31C2
	ldrb r0, [r4, #1]
	ldrb r2, [r2, #1]
	cmp r0, r2
	bhs .L080E31C2
.L080E31C0:
	movs r3, #1
.L080E31C2:
	mov sb, r3
	cmp r3, #0
	beq .L080E31FE
	ldr r0, [sp, #8]
	adds r3, r0, #0
	adds r3, #0x10
	movs r1, #0
	mov r8, r1
	ldrb r2, [r0, #0x10]
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r2, r1
	blo .L080E31E8
	cmp r1, r2
	blo .L080E31EC
	ldrb r0, [r3, #1]
	ldrb r2, [r4, #1]
	cmp r0, r2
	bhs .L080E31EC
.L080E31E8:
	movs r0, #1
	mov r8, r0
.L080E31EC:
	mov r1, r8
	cmp r1, #0
	beq .L080E31FE
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq .L080E3298
	mov r2, sl
	ldr r3, [r2]
	b .L080E32AA
.L080E31FE:
	mov r1, sl
	ldr r0, [r1]
	str r0, [sp, #0xc]
	bl func_080E2B28
	str r0, [sp, #0xc]
	movs r0, #1
	mov r1, sb
	eors r1, r0
	mov r2, sb
	cmp r2, #0
	bne .L080E32BC
	mov r1, sl
	ldr r0, [r1]
	movs r2, #0x10
	adds r2, r2, r0
	mov ip, r2
	movs r2, #0
	mov r1, sp
	strb r2, [r1, #0x18]
	ldrb r1, [r4]
	ldrb r3, [r0, #0x10]
	adds r2, r1, #0
	adds r5, r0, #0
	mov r8, r1
	cmp r3, r2
	blo .L080E3242
	cmp r2, r3
	blo .L080E3248
	mov r1, ip
	ldrb r0, [r1, #1]
	ldrb r2, [r4, #1]
	cmp r0, r2
	bhs .L080E3248
.L080E3242:
	movs r1, #1
	mov r0, sp
	strb r1, [r0, #0x18]
.L080E3248:
	mov r2, sp
	ldrb r2, [r2, #0x18]
	adds r1, r2, #0
	mov r0, sb
	cmp r0, #0
	bne .L080E32BC
	cmp r1, #0
	beq .L080E32BC
	ldr r0, [r6, #4]
	ldr r3, [sp, #0xc]
	cmp r3, r0
	beq .L080E3292
	movs r2, #0x10
	adds r2, r2, r3
	mov ip, r2
	movs r2, #0
	mov r0, sp
	strb r2, [r0, #0x1c]
	mov r0, r8
	ldrb r2, [r3, #0x10]
	cmp r0, r2
	blo .L080E3284
	cmp r2, r0
	blo .L080E328A
	ldrb r0, [r4, #1]
	mov r8, r0
	mov r2, ip
	ldrb r2, [r2, #1]
	cmp r8, r2
	bhs .L080E328A
.L080E3284:
	movs r2, #1
	mov r0, sp
	strb r2, [r0, #0x1c]
.L080E328A:
	mov r0, sp
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq .L080E32BC
.L080E3292:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne .L080E32AA
.L080E3298:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
.L080E32A2:
	adds r3, r5, #0
	bl func_080E2EA4
	b .L080E32D4
.L080E32AA:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r3, #0
	bl func_080E2EA4
	b .L080E32D4
.L080E32BC:
	cmp sb, r1
	bne .L080E32C6
	mov r1, sl
	ldr r0, [r1]
	b .L080E32D2
.L080E32C6:
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E2F74
	ldr r0, [sp, #0x10]
.L080E32D2:
	str r0, [r7]
.L080E32D4:
	adds r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080E32E8:
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x05, 0x1C
	.byte 0x88, 0x46, 0xEE, 0x20, 0x40, 0x00, 0x2C, 0x18, 0xA0, 0x68, 0x00, 0x28, 0x0C, 0xD0, 0x60, 0x68
	.byte 0x41, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0xB8, 0xFD, 0x60, 0x68, 0x80, 0x60, 0x60, 0x68, 0x00, 0x21
	.byte 0x41, 0x60, 0x60, 0x68, 0xC0, 0x60, 0xA1, 0x60, 0x60, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xEC, 0xF7
	.byte 0x9F, 0xFF, 0xE6, 0x21, 0x49, 0x00, 0x68, 0x18, 0x42, 0x68, 0x01, 0x68, 0x2C, 0x1C, 0x20, 0x34
	.byte 0x2E, 0x1C, 0x1C, 0x36, 0x2F, 0x1C, 0x18, 0x37, 0x91, 0x42, 0x02, 0xD0, 0x1C, 0x31, 0x91, 0x42
	.byte 0xFC, 0xD1, 0x00, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xEC, 0xF7, 0x8A, 0xFF, 0xCE, 0x20, 0x40, 0x00
	.byte 0x29, 0x18, 0x10, 0x48, 0x08, 0x60, 0xA8, 0x62, 0x20, 0x1C, 0x02, 0x21, 0x92, 0xF7, 0xB8, 0xF9
	.byte 0x30, 0x1C, 0x02, 0x21, 0x59, 0xF7, 0x1C, 0xFA, 0x38, 0x1C, 0x02, 0x21, 0x6D, 0xF7, 0xCE, 0xFC
	.byte 0xE9, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xF0, 0xF7
	.byte 0xC9, 0xFA, 0x28, 0x1C, 0x41, 0x46, 0x25, 0xF7, 0x99, 0xF9, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x28, 0x5A, 0x0E, 0x08

	thumb_func_start func_080E3398
func_080E3398: @ 0x080E3398
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r2, #0
	subs r1, r1, r6
	asrs r3, r1, #2
.L080E33A2:
	cmp r3, #0
	ble .L080E33C8
	asrs r2, r3, #1
	lsls r0, r2, #2
	adds r4, r6, r0
	movs r5, #0
	ldr r1, [r4]
	ldr r0, [r7]
	cmp r1, r0
	bhs .L080E33B8
	movs r5, #1
.L080E33B8:
	cmp r5, #0
	beq .L080E33C4
	adds r6, r4, #4
	subs r0, r3, r2
	subs r3, r0, #1
	b .L080E33A2
.L080E33C4:
	adds r3, r2, #0
	b .L080E33A2
.L080E33C8:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
.L080E33D0:
	.byte 0x70, 0xB5, 0x05, 0x1C, 0x0E, 0x1C, 0xA6, 0x21, 0x09, 0x01, 0x68, 0x18, 0x00, 0x68, 0x00, 0x28
	.byte 0x01, 0xD0, 0xEC, 0xF7, 0x3D, 0xFF, 0x26, 0x4A, 0xAC, 0x18, 0x61, 0x68, 0x20, 0x1C, 0x23, 0xF7
	.byte 0xF7, 0xFF, 0x20, 0x1C, 0x02, 0x21, 0x23, 0xF7, 0xC5, 0xFE, 0x83, 0x20, 0x00, 0x01, 0x2C, 0x18
	.byte 0x61, 0x68, 0x20, 0x1C, 0x24, 0xF7, 0x10, 0xFC, 0x20, 0x1C, 0x02, 0x21, 0x24, 0xF7, 0xEC, 0xFA
	.byte 0x1C, 0x49, 0x6C, 0x18, 0x61, 0x68, 0x20, 0x1C, 0x23, 0xF7, 0xE2, 0xFF, 0x20, 0x1C, 0x02, 0x21
	.byte 0x23, 0xF7, 0xB0, 0xFE, 0x82, 0x22, 0x12, 0x01, 0xAC, 0x18, 0x61, 0x68, 0x20, 0x1C, 0x24, 0xF7
	.byte 0xFB, 0xFB, 0x20, 0x1C, 0x02, 0x21, 0x24, 0xF7, 0xD7, 0xFA, 0x13, 0x48, 0x2C, 0x18, 0x61, 0x68
	.byte 0x20, 0x1C, 0x23, 0xF7, 0xCD, 0xFF, 0x20, 0x1C, 0x02, 0x21, 0x23, 0xF7, 0x9B, 0xFE, 0x81, 0x21
	.byte 0x09, 0x01, 0x6C, 0x18, 0x61, 0x68, 0x20, 0x1C, 0x24, 0xF7, 0xE6, 0xFB, 0x20, 0x1C, 0x02, 0x21
	.byte 0x24, 0xF7, 0xC2, 0xFA, 0x09, 0x4A, 0xA8, 0x18, 0x09, 0x49, 0x01, 0x60, 0x30, 0x3A, 0xA8, 0x18
	.byte 0x01, 0x60, 0x28, 0x1C, 0x31, 0x1C, 0x25, 0xF7, 0x21, 0xF9, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x38, 0x08, 0x00, 0x00, 0x28, 0x08, 0x00, 0x00, 0x18, 0x08, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00
	.byte 0x28, 0x5A, 0x0E, 0x08

	thumb_func_start func_080E3494
func_080E3494: @ 0x080E3494
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	movs r5, #0
	str r5, [r4, #4]
	str r0, [sp, #4]
	movs r0, #0xc
	bl __builtin_new
	add r1, sp, #4
	ldr r2, [r4, #8]
	ldrb r3, [r4, #0xc]
	bl func_08092570
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r5, [r1]
	str r0, [r6]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080E34D2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E34D2:
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_080E34DC
func_080E34DC: @ 0x080E34DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080E34F4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E34F4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_0800080C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E3504
func_080E3504: @ 0x080E3504
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E3518
	movs r1, #3
	bl func_080CE3DC
.L080E3518:
	adds r0, r6, #0
	adds r0, #0x90
	ldr r5, [r0]
	cmp r5, #0
	beq .L080E3552
	adds r4, r5, #0
	adds r4, #0x74
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r0, .L080E35D8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L080E3552:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r5, [r0]
	cmp r5, #0
	beq .L080E358C
	ldr r0, .L080E35D8 @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r0, r5, #0
	bl __builtin_delete
.L080E358C:
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #2
	bl func_08050D0C
	ldr r1, [r6, #0x7c]
	cmp r1, #0
	beq .L080E35AE
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E35AE:
	ldr r1, [r6, #0x78]
	cmp r1, #0
	beq .L080E35C6
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E35C6:
	ldr r0, .L080E35D8 @ =vtable_unk_080E5A28
	str r0, [r6, #0x10]
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080086BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E35D8: .4byte vtable_unk_080E5A28

	.if 0
	thumb_func_start func_080E35DC
func_080E35DC: @ 0x080E35DC
	push {lr}
	subs r0, #8
	bl func_08093308
	pop {r0}
	bx r0

	.endif
	.section .text.tail080E35E8, "ax", %progbits
	thumb_func_start func_080E35E8
func_080E35E8: @ 0x080E35E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, .L080E360C @ =gUnk_081004E0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x39
	bl func_08050E50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E360C: .4byte gUnk_081004E0

	thumb_func_start func_080E3610
func_080E3610: @ 0x080E3610
	push {lr}
	subs r0, #8
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1

	thumb_func_start func_080E3628
func_080E3628: @ 0x080E3628
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, .L080E364C @ =gUnk_08100524
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E364C: .4byte gUnk_08100524

	thumb_func_start func_080E3650
func_080E3650: @ 0x080E3650
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, .L080E3674 @ =gUnk_08100540
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E3674: .4byte gUnk_08100540

	thumb_func_start func_080E3678
func_080E3678: @ 0x080E3678
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	str r1, [r0]
	movs r3, #0xf7
	lsls r3, r3, #2
	adds r0, r2, r3
	str r1, [r0]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r2, r0
	ldr r1, .L080E36B0 @ =gUnk_08100558
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E36B0: .4byte gUnk_08100558

	thumb_func_start func_080E36B4
func_080E36B4: @ 0x080E36B4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	movs r6, #0
	movs r1, #0xf7
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r1, [r4]
	cmp r1, #0
	beq .L080E36CC
	cmp r1, #1
	beq .L080E3700
	b .L080E3726
.L080E36CC:
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r5, r0, r1
	adds r0, r5, #0
	bl func_08050D34
	cmp r0, #3
	bne .L080E3726
	movs r0, #1
	str r0, [r4]
	ldr r1, .L080E36F4 @ =gUnk_08100588
	ldr r2, .L080E36F8 @ =gUnk_0810058C
	ldr r3, .L080E36FC @ =gUnk_08100590
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r0, r5, #0
	bl func_08050E30
	b .L080E3726
	.align 2, 0
.L080E36F4: .4byte gUnk_08100588
.L080E36F8: .4byte gUnk_0810058C
.L080E36FC: .4byte gUnk_08100590
.L080E3700:
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_08050D34
	cmp r0, #3
	bne .L080E3726
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L080E3720
	cmp r0, #2
	beq .L080E3724
	b .L080E3726
.L080E3720:
	movs r6, #2
	b .L080E3726
.L080E3724:
	movs r6, #3
.L080E3726:
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.section .text.tail080E3734, "ax", %progbits
	thumb_func_start func_080E3734
func_080E3734: @ 0x080E3734
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, .L080E3758 @ =gUnk_08100594
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E3758: .4byte gUnk_08100594

	thumb_func_start func_080E375C
func_080E375C: @ 0x080E375C
	push {lr}
	subs r0, #8
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1

	thumb_func_start func_080E3774
func_080E3774: @ 0x080E3774
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, .L080E3794 @ =gUnk_081005D8
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080E3794: .4byte gUnk_081005D8
.L080E3798:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080E379C
func_080E379C: @ 0x080E379C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, .L080E37D8 @ =gUnk_081005EC
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
	movs r2, #0xea
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #4
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E37D8: .4byte gUnk_081005EC

	thumb_func_start func_080E37DC
func_080E37DC: @ 0x080E37DC
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r4, #0
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r2, r1, r0
	ldr r0, [r2]
	cmp r0, #0
	beq .L080E37F6
	cmp r0, #1
	beq .L080E3828
	b .L080E384E
.L080E37F6:
	movs r3, #0xea
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080E384E
	movs r0, #1
	str r0, [r2]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, .L080E3820 @ =gUnk_0810058C
	ldr r2, .L080E3824 @ =gUnk_08100590
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r3, #0
	bl func_08050E0C
	b .L080E384E
	.align 2, 0
.L080E3820: .4byte gUnk_0810058C
.L080E3824: .4byte gUnk_08100590
.L080E3828:
	movs r3, #0xea
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080E384E
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r1, r2
	bl func_08050DF0
	cmp r0, #1
	beq .L080E3848
	cmp r0, #2
	beq .L080E384C
	b .L080E384E
.L080E3848:
	movs r4, #2
	b .L080E384E
.L080E384C:
	movs r4, #3
.L080E384E:
	adds r0, r4, #0
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1

	.section .text.tail080E385C, "ax", %progbits
	.if 0
	thumb_func_start func_080E385C
func_080E385C: @ 0x080E385C
	push {lr}
	subs r0, #8
	bl func_080088C4
	pop {r1}
	bx r1

	thumb_func_start func_080E3868
func_080E3868: @ 0x080E3868
	push {lr}
	subs r0, #8
	bl func_080088CC
	pop {r1}
	bx r1

	.endif
	.section .text.tail080E3874, "ax", %progbits
	thumb_func_start func_080E3874
func_080E3874: @ 0x080E3874
	push {lr}
	adds r2, r0, #0
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E3896
	adds r1, #3
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E3892
	movs r0, #0
	b .L080E38AA
.L080E3892:
	movs r0, #1
	b .L080E38AA
.L080E3896:
	ldr r0, [r2]
	ldr r1, [r0, #0x4c]
	adds r0, r2, #0
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	bne .L080E38A8
	movs r1, #1
.L080E38A8:
	adds r0, r1, #0
.L080E38AA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E38B0
func_080E38B0: @ 0x080E38B0
	push {lr}
	adds r1, r0, #0
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E38C8
	adds r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	b .L080E38DC
.L080E38C8:
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #4]
	cmp r2, #0
	beq .L080E38DA
	ldr r0, [r1, #0x18]
	cmp r2, r0
	beq .L080E38DA
	movs r0, #1
	b .L080E38DC
.L080E38DA:
	movs r0, #0
.L080E38DC:
	pop {r1}
	bx r1

	thumb_func_start func_080E38E0
func_080E38E0: @ 0x080E38E0
	push {lr}
	adds r2, r0, #0
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E38F8
	adds r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	b .L080E390C
.L080E38F8:
	ldr r0, [r2]
	ldr r1, [r0, #0x4c]
	adds r0, r2, #0
	bl _call_via_r1
	cmp r0, #0
	beq .L080E390A
	movs r0, #0
	b .L080E390C
.L080E390A:
	movs r0, #1
.L080E390C:
	pop {r1}
	bx r1

	.section .text.tail080E3914, "ax", %progbits
	.section .text.tail080E3938, "ax", %progbits
	thumb_func_start func_080E3938
func_080E3938: @ 0x080E3938
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E397A
	ldr r0, [r4]
	subs r1, #0xb4
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L080E3986
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne .L080E398A
.L080E397A:
	bl func_080D06D0
	cmp r0, #0
	beq .L080E3986
	cmp r0, #0xb
	bne .L080E398A
.L080E3986:
	movs r0, #0
	b .L080E398C
.L080E398A:
	movs r0, #1
.L080E398C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E3994
func_080E3994: @ 0x080E3994
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E39D6
	ldr r0, [r4]
	subs r1, #0xb0
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L080E39DE
	ldr r0, [r4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne .L080E39DE
.L080E39D6:
	bl func_080D06D0
	cmp r0, #0xb
	beq .L080E39E2
.L080E39DE:
	movs r0, #0
	b .L080E39E4
.L080E39E2:
	movs r0, #1
.L080E39E4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E39EC
func_080E39EC: @ 0x080E39EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080E3A32
	ldr r0, [r4]
	subs r1, #0xb0
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L080E3A2E
	ldr r0, [r4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L080E3A32
.L080E3A2E:
	movs r0, #1
	b .L080E3A3E
.L080E3A32:
	bl func_080D06B4
	adds r1, r0, #0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
.L080E3A3E:
	pop {r4}
	pop {r1}
	bx r1

	.section .text.tail080E3A5C, "ax", %progbits
	.if 0
	thumb_func_start func_080E3A5C
func_080E3A5C: @ 0x080E3A5C
	push {lr}
	adds r0, r1, #0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl func_080D0644
	pop {r0}
	bx r0

	.endif
	.section .text.tail080E3A6C, "ax", %progbits
	.if 0
	thumb_func_start func_080E3A6C
func_080E3A6C: @ 0x080E3A6C
	push {lr}
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #4]
	bl func_080D0558
	pop {r0}
	bx r0
	.align 2, 0
	.endif

	.if 0
	thumb_func_start func_080E3A80
func_080E3A80: @ 0x080E3A80
	push {lr}
	movs r0, #0
	bl func_080D0454
	pop {r0}
	bx r0

	thumb_func_start func_080E3A8C
func_080E3A8C: @ 0x080E3A8C
	push {lr}
	adds r0, r1, #0
	adds r1, r2, #0
	bl func_080D0444
	pop {r0}
	bx r0
	.align 2, 0

	.endif
	.section .text.tail080E3A9C, "ax", %progbits
	thumb_func_start func_080E3A9C
func_080E3A9C: @ 0x080E3A9C
	push {r4, lr}
	adds r3, r0, #0
	cmp r1, #4
	bhi .L080E3B58
	lsls r0, r1, #2
	ldr r1, .L080E3AB0 @ =.L080E3AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080E3AB0: .4byte .L080E3AB4
.L080E3AB4: @ jump table
	.4byte .L080E3AC8 @ case 0
	.4byte .L080E3AD4 @ case 1
	.4byte .L080E3AE8 @ case 2
	.4byte .L080E3B10 @ case 3
	.4byte .L080E3B38 @ case 4
.L080E3AC8:
	movs r0, #0xdc
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	b .L080E3B58
.L080E3AD4:
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080E3AE4 @ =0x000001B9
	b .L080E3B54
	.align 2, 0
.L080E3AE4: .4byte 0x000001B9
.L080E3AE8:
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080E3B08 @ =0x000001B9
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	ldr r1, .L080E3B0C @ =0x000001BB
	adds r0, r3, r1
	b .L080E3B56
	.align 2, 0
.L080E3B08: .4byte 0x000001B9
.L080E3B0C: .4byte 0x000001BB
.L080E3B10:
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r3, r2
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080E3B30 @ =0x000001B9
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r2, [r0]
	ldr r2, .L080E3B34 @ =0x000001BB
	adds r0, r3, r2
	strb r1, [r0]
	b .L080E3B58
	.align 2, 0
.L080E3B30: .4byte 0x000001B9
.L080E3B34: .4byte 0x000001BB
.L080E3B38:
	movs r4, #0xdc
	lsls r4, r4, #1
	adds r0, r3, r4
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #2
.L080E3B54:
	adds r0, r3, r4
.L080E3B56:
	strb r2, [r0]
.L080E3B58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E3B60
func_080E3B60: @ 0x080E3B60
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080E3B7C @ =vtable_unk_080E7F0C
	str r0, [r4]
	bl func_080D02EC
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08094268
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E3B7C: .4byte vtable_unk_080E7F0C

	thumb_func_start func_080E3B80
func_080E3B80: @ 0x080E3B80
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	cmp r2, #0xf1
	beq .L080E3BB0
	cmp r2, #0xf1
	bgt .L080E3B94
	cmp r2, #0xf0
	beq .L080E3B9A
	b .L080E3C22
.L080E3B94:
	cmp r2, #0xff
	beq .L080E3BC8
	b .L080E3C22
.L080E3B9A:
	ldrb r0, [r1, #6]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, .L080E3BAC @ =gUnk_08100AD2
	adds r5, r1, r0
	adds r0, r5, #0
	b .L080E3BF6
	.align 2, 0
.L080E3BAC: .4byte gUnk_08100AD2
.L080E3BB0:
	ldrb r0, [r1, #7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, .L080E3BC4 @ =gUnk_08100BD7
	adds r5, r1, r0
	adds r0, r5, #0
	b .L080E3BF6
	.align 2, 0
.L080E3BC4: .4byte gUnk_08100BD7
.L080E3BC8:
	ldrh r0, [r1, #4]
	cmp r0, #0xab
	bhi .L080E3BE2
	add r4, sp, #0x20
	adds r1, r0, #0
	subs r1, #1
	adds r0, r4, #0
	bl __4FoodUi
	adds r0, r4, #0
	bl GetName__C4Food
	b .L080E3BF4
.L080E3BE2:
	add r4, sp, #0x24
	ldrh r1, [r1, #4]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetName__C7Article
.L080E3BF4:
	adds r5, r0, #0
.L080E3BF6:
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E3C02
	movs r4, #0x1f
.L080E3C02:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6]
	adds r0, r6, #4
	mov r1, sp
	bl strcpy
	b .L080E3C30
.L080E3C22:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	strb r0, [r6]
	adds r0, r6, #4
	bl strcpy
.L080E3C30:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E3C3C
func_080E3C3C: @ 0x080E3C3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, .L080E3D88 @ =0x000033D8
	adds r1, r5, r0
	ldr r0, .L080E3D8C @ =vtable_unk_080E76F8
	str r0, [r1]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r4, r5, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r5, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xbe
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r4, r5, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xba
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, .L080E3D90 @ =vtable_unk_080E5A28
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #0xf8
	str r4, [r0]
	subs r0, #0x30
	str r4, [r0]
	subs r0, #0x30
	str r4, [r0]
	subs r0, #0x18
	movs r1, #2
	bl func_08050D0C
	ldr r1, [r5, #0x7c]
	cmp r1, #0
	beq .L080E3D5E
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E3D5E:
	ldr r1, [r5, #0x78]
	cmp r1, #0
	beq .L080E3D76
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E3D76:
	str r4, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080086BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080E3D88: .4byte 0x000033D8
.L080E3D8C: .4byte vtable_unk_080E76F8
.L080E3D90: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E3D94
func_080E3D94: @ 0x080E3D94
	push {lr}
	adds r2, r0, #0
	ldr r0, .L080E3DB0 @ =vtable_unk_080E76F8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E3DAA
	adds r0, r2, #0
	bl __builtin_delete
.L080E3DAA:
	pop {r0}
	bx r0
	.align 2, 0
.L080E3DB0: .4byte vtable_unk_080E76F8

	thumb_func_start func_080E3DB4
func_080E3DB4: @ 0x080E3DB4
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r3, r0, #0
	subs r0, r5, r3
	asrs r2, r0, #3
	cmp r2, #0
	ble .L080E3DEC
	ldrh r1, [r4]
.L080E3DC6:
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E1C
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E1C
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E1C
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E1C
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bgt .L080E3DC6
.L080E3DEC:
	subs r0, r5, r3
	asrs r0, r0, #1
	cmp r0, #1
	beq .L080E3E14
	cmp r0, #1
	ble .L080E3E20
	cmp r0, #2
	beq .L080E3E0A
	cmp r0, #3
	bne .L080E3E20
	ldrh r0, [r3]
	ldrh r1, [r4]
	cmp r0, r1
	beq .L080E3E1C
	adds r3, #2
.L080E3E0A:
	ldrh r0, [r3]
	ldrh r1, [r4]
	cmp r0, r1
	beq .L080E3E1C
	adds r3, #2
.L080E3E14:
	ldrh r0, [r3]
	ldrh r4, [r4]
	cmp r0, r4
	bne .L080E3E20
.L080E3E1C:
	adds r0, r3, #0
	b .L080E3E22
.L080E3E20:
	adds r0, r5, #0
.L080E3E22:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080E3E28
func_080E3E28: @ 0x080E3E28
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r3, r0, #0
	subs r0, r5, r3
	asrs r2, r0, #3
	cmp r2, #0
	ble .L080E3E60
	ldrh r1, [r4]
.L080E3E3A:
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E90
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E90
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E90
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, r1
	beq .L080E3E90
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bgt .L080E3E3A
.L080E3E60:
	subs r0, r5, r3
	asrs r0, r0, #1
	cmp r0, #1
	beq .L080E3E88
	cmp r0, #1
	ble .L080E3E94
	cmp r0, #2
	beq .L080E3E7E
	cmp r0, #3
	bne .L080E3E94
	ldrh r0, [r3]
	ldrh r1, [r4]
	cmp r0, r1
	beq .L080E3E90
	adds r3, #2
.L080E3E7E:
	ldrh r0, [r3]
	ldrh r1, [r4]
	cmp r0, r1
	beq .L080E3E90
	adds r3, #2
.L080E3E88:
	ldrh r0, [r3]
	ldrh r4, [r4]
	cmp r0, r4
	bne .L080E3E94
.L080E3E90:
	adds r0, r3, #0
	b .L080E3E96
.L080E3E94:
	adds r0, r5, #0
.L080E3E96:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080E3E9C
func_080E3E9C: @ 0x080E3E9C
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r2, #0
	adds r4, r0, #0
	subs r0, r7, r4
	asrs r5, r0, #5
	cmp r5, #0
	ble .L080E3EF2
.L080E3EAC:
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080E3F34
	adds r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080E3F34
	adds r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080E3F34
	adds r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080E3F34
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bgt .L080E3EAC
.L080E3EF2:
	subs r0, r7, r4
	asrs r0, r0, #3
	cmp r0, #1
	beq .L080E3F26
	cmp r0, #1
	ble .L080E3F38
	cmp r0, #2
	beq .L080E3F16
	cmp r0, #3
	bne .L080E3F38
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080E3F34
	adds r4, #8
.L080E3F16:
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080E3F34
	adds r4, #8
.L080E3F26:
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_0809E8E4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080E3F38
.L080E3F34:
	adds r0, r4, #0
	b .L080E3F3A
.L080E3F38:
	adds r0, r7, #0
.L080E3F3A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080E3F40
func_080E3F40: @ 0x080E3F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r6, r0, #0
	adds r3, r1, #0
	cmp r2, #0xf1
	beq .L080E4014
	cmp r2, #0xf1
	bgt .L080E3F56
	cmp r2, #0xf0
	beq .L080E3F5E
	b .L080E4086
.L080E3F56:
	cmp r2, #0xf2
	bne .L080E3F5C
	b .L080E4056
.L080E3F5C:
	b .L080E4086
.L080E3F5E:
	movs r5, #5
	ldrsb r5, [r3, r5]
	cmp r5, #1
	beq .L080E3FAC
	cmp r5, #1
	bgt .L080E3F70
	cmp r5, #0
	beq .L080E3F7A
	b .L080E4086
.L080E3F70:
	cmp r5, #2
	beq .L080E3FD8
	cmp r5, #3
	beq .L080E3FE0
	b .L080E4086
.L080E3F7A:
	ldr r7, .L080E3FA8 @ =gUnk_08104938
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E3F8A
	movs r4, #0x1f
.L080E3F8A:
	mov r0, sp
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	mov r1, sp
	adds r0, r1, r4
	strb r5, [r0]
	movs r0, #1
	strb r0, [r6]
	adds r0, r6, #4
	bl strcpy
	b .L080E4094
	.align 2, 0
.L080E3FA8: .4byte gUnk_08104938
.L080E3FAC:
	ldr r7, .L080E3FD4 @ =gUnk_08104940
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E3FBC
	movs r4, #0x1f
.L080E3FBC:
	mov r0, sp
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	mov r1, sp
	adds r0, r1, r4
	movs r1, #0
	strb r1, [r0]
	strb r5, [r6]
	b .L080E4006
	.align 2, 0
.L080E3FD4: .4byte gUnk_08104940
.L080E3FD8:
	ldr r5, .L080E3FDC @ =gUnk_08104948
	b .L080E3FE2
	.align 2, 0
.L080E3FDC: .4byte gUnk_08104948
.L080E3FE0:
	ldr r5, .L080E4010 @ =gUnk_08104950
.L080E3FE2:
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E3FF0
	movs r4, #0x1f
.L080E3FF0:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6]
.L080E4006:
	adds r0, r6, #4
	mov r1, sp
	bl strcpy
	b .L080E4094
	.align 2, 0
.L080E4010: .4byte gUnk_08104950
.L080E4014:
	movs r0, #4
	ldrsb r0, [r3, r0]
	cmp r0, #9
	bgt .L080E4034
	mov r1, sp
	movs r0, #0x81
	strb r0, [r1]
	movs r0, #0x40
	strb r0, [r1, #1]
	movs r0, #4
	ldrsb r0, [r3, r0]
	adds r1, #2
	movs r2, #0
	bl func_0804EC84
	b .L080E4040
.L080E4034:
	movs r0, #4
	ldrsb r0, [r3, r0]
	mov r1, sp
	movs r2, #0
	bl func_0804EC84
.L080E4040:
	add r5, sp, #0x20
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E4050
	movs r4, #0x1f
.L080E4050:
	adds r0, r5, #0
	mov r1, sp
	b .L080E406C
.L080E4056:
	add r5, sp, #8
	ldr r7, [r3, #8]
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x1f
	bls .L080E4068
	movs r4, #0x1f
.L080E4068:
	adds r0, r5, #0
	adds r1, r7, #0
.L080E406C:
	adds r2, r4, #0
	bl memcpy
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6]
	adds r0, r6, #4
	adds r1, r5, #0
	bl strcpy
	b .L080E4094
.L080E4086:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	strb r0, [r6]
	adds r0, r6, #4
	bl strcpy
.L080E4094:
	adds r0, r6, #0
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E40A0
func_080E40A0: @ 0x080E40A0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, .L080E4188 @ =vtable_unk_080E76F8
	str r0, [r1]
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xce
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xca
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xbe
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xba
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, .L080E418C @ =vtable_unk_080E5A28
	str r0, [r1]
	str r0, [r5, #0x50]
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq .L080E4178
	movs r1, #3
	bl func_08050D0C
.L080E4178:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080086BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080E4188: .4byte vtable_unk_080E76F8
.L080E418C: .4byte vtable_unk_080E5A28
