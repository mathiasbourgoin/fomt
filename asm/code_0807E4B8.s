	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

.L0807E478:
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x0D, 0x48
	.byte 0x20, 0x60, 0xA1, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
	.byte 0x55, 0xF0, 0x40, 0xFA, 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C
	.byte 0x03, 0x21, 0x55, 0xF0, 0x37, 0xFA, 0x20, 0x1C, 0x29, 0x1C, 0x82, 0xF7, 0x9F, 0xF9, 0x30, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x20, 0x7C, 0x0E, 0x08

	thumb_func_start func_0807E4B8
func_0807E4B8: @ 0x0807E4B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_0807DE3C
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0807E4D4
func_0807E4D4: @ 0x0807E4D4
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L0807E500 @ =vtable_unk_080E7C40
	str r0, [r4, #4]
	ldr r1, .L0807E504 @ =0x000006A4
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
.L0807E500: .4byte vtable_unk_080E7C40
.L0807E504: .4byte 0x000006A4

	thumb_func_start func_0807E508
func_0807E508: @ 0x0807E508
	push {lr}
	ldr r2, .L0807E518 @ =vtable_unk_080E7C40
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L0807E518: .4byte vtable_unk_080E7C40

	thumb_func_start func_0807E51C
func_0807E51C: @ 0x0807E51C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, .L0807E554 @ =gUnk_080FE050
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
	bl __4FoodUi
	mov r0, sp
	bl GetDesc__C4Food
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CABEC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0807E554: .4byte gUnk_080FE050

	thumb_func_start func_0807E558
func_0807E558: @ 0x0807E558
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807E590
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807E58A
	movs r0, #0
	str r0, [r2]
.L0807E58A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807E590:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807E5B0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807E5AA
	movs r0, #2
	str r0, [r2]
.L0807E5AA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807E5B0:
	ldr r0, [r7, #8]
	adds r0, #0x54
	movs r1, #0x32
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807E5EE
	ldr r0, [r7, #8]
	adds r0, #0x54
	movs r1, #0x32
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x31
	bls .L0807E5EE
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807E5EE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807E5E8
	movs r0, #1
	str r0, [r2]
.L0807E5E8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807E5EE:
	ldr r0, [r7, #8]
	adds r0, #0x54
	movs r1, #0x33
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807E62C
	ldr r0, [r7, #8]
	adds r0, #0x54
	movs r1, #0x33
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x31
	bls .L0807E62C
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807E62C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807E626
	movs r0, #3
	str r0, [r2]
.L0807E626:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807E62C:
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #4
	mov sl, r0
	add r6, sp, #0x18
	ldr r1, .L0807E840 @ =gUnk_086678A0
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
	str r1, [sp, #0xe8]
	cmp r6, r0
	bhs .L0807E78A
	adds r2, r4, #0
	adds r2, r7, r2
	str r2, [sp, #0xcc]
	adds r3, r7, #0
	adds r3, #0x20
	str r3, [sp, #0xd0]
	add r4, sp, #0xc4
	mov r8, r4
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r5, r7, r0
	add r1, sp, #0x4c
	mov sb, r1
.L0807E6B4:
	add r1, sp, #8
	mov r2, sl
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #3
	ldr r1, .L0807E844 @ =gUnk_080FE050
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #0xc4
	str r0, [r2]
	str r1, [r2, #4]
	ldr r1, [r2]
	ldr r0, [sp, #0xe8]
	bl __4FoodUi
	ldr r0, [sp, #0xe8]
	bl GetIconId__C4Food
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	bl func_0805E860
	ldr r1, [sp, #0x4c]
	ldr r3, [r1]
	mov r4, sb
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xa4
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x80
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0807E744
	lsls r0, r0, #4
	adds r0, #4
	ldr r3, [sp, #0xd0]
	adds r0, r3, r0
	cmp r0, #0
	beq .L0807E73E
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807E73E:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0807E744:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	mov r0, sl
	lsls r4, r0, #6
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, r8
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
	ldr r1, [sp, #0xcc]
	ldr r0, [r1]
	cmp r6, r0
	blo .L0807E6B4
.L0807E78A:
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
	bl func_0807E51C
	adds r0, r7, #0
	bl func_08008918
	movs r1, #0x3f
	ldr r3, [sp, #0xe8]
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
	ldr r0, .L0807E848 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	ldr r0, [sp, #0xe8]
	str r4, [r0]
	ldr r1, .L0807E84C @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0xe8]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r4, #0
	str r4, [sp, #0xd4]
.L0807E804:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [sp, #0xe8]
	ldr r3, [r0]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807E820
	b .L0807EDE4
.L0807E820:
	ldr r1, [sp, #0xd4]
	cmp r1, #0
	beq .L0807E828
	b .L0807EDF0
.L0807E828:
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #4
	bls .L0807E836
	b .L0807EDE4
.L0807E836:
	lsls r0, r0, #2
	ldr r1, .L0807E850 @ =.L0807E854
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807E840: .4byte gUnk_086678A0
.L0807E844: .4byte gUnk_080FE050
.L0807E848: .4byte vtable_unk_080E5B80
.L0807E84C: .4byte 0x00000889
.L0807E850: .4byte .L0807E854
.L0807E854: @ jump table
	.4byte .L0807E868 @ case 0
	.4byte .L0807EBC0 @ case 1
	.4byte .L0807EBF4 @ case 2
	.4byte .L0807EC1C @ case 3
	.4byte .L0807ED9C @ case 4
.L0807E868:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807E876
	adds r0, r7, #0
	bl func_0807E51C
.L0807E876:
	ldr r3, .L0807E9C0 @ =0x000006A1
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807E882
	b .L0807EB5C
.L0807E882:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807E9C4 @ =gUnk_080FE050
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r4, #4]
	str r0, [sp, #0xd8]
	movs r1, #0
	str r1, [sp, #0xdc]
	mov sl, r1
	ldr r0, [r7, #8]
	ldr r2, .L0807E9C8 @ =0x00001C38
	adds r0, r0, r2
	bl GetEmptyItemSlotCount__C8Rucksack
	adds r6, r0, #0
	ldr r0, [r7, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	mov sb, r3
	add r0, sb
	bl GetFridge__9FarmHouse
	mov r8, r4
	cmp r0, #0
	beq .L0807E8E0
	ldr r0, [r7, #8]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetFridge__9FarmHouse
	mov r2, r8
	ldr r1, [r2]
	bl GetAvailableSpaceFor__C6FridgeUi
	mov sl, r0
.L0807E8E0:
	ldr r0, [r7, #8]
	ldr r5, .L0807E9CC @ =0x00001C2C
	adds r0, r0, r5
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807E8F4
	movs r3, #1
	str r3, [sp, #0xdc]
.L0807E8F4:
	ldr r4, [sp, #0xdc]
	adds r0, r6, r4
	add sl, r0
	movs r0, #0
	str r0, [sp, #0xe0]
	movs r1, #0
	str r1, [sp, #0xe4]
	ldr r0, [r7, #8]
	ldr r2, .L0807E9C8 @ =0x00001C38
	adds r0, r0, r2
	mov r3, r8
	ldr r1, [r3]
	bl GetAmountOfFood__C8RucksackUi
	adds r6, r0, #0
	ldr r0, [r7, #8]
	add r0, sb
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L0807E930
	ldr r0, [r7, #8]
	add r0, sb
	bl GetFridge__9FarmHouse
	mov r4, r8
	ldr r1, [r4]
	bl GetAmountOf__C6FridgeUi
	str r0, [sp, #0xe4]
.L0807E930:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl func_0800F190
	lsls r0, r0, #0x18
	add r4, sp, #0xa4
	cmp r0, #0
	bne .L0807E970
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl func_0800F204
	cmp r0, #0
	bne .L0807E970
	ldr r1, [r7, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl func_0800F20C
	adds r0, r4, #0
	bl GetId__C4Food
	movs r2, #0
	mov r3, r8
	ldr r1, [r3]
	cmp r0, r1
	bne .L0807E968
	movs r2, #1
.L0807E968:
	cmp r2, #0
	beq .L0807E970
	movs r0, #1
	str r0, [sp, #0xe0]
.L0807E970:
	ldr r1, [sp, #0xe0]
	adds r0, r6, r1
	ldr r2, [sp, #0xe4]
	adds r0, r0, r2
	adds r1, r4, #0
	movs r2, #7
	bl func_0804EC84
	ldr r0, [r7, #8]
	ldr r3, .L0807E9D0 @ =0x00001AA8
	adds r0, r0, r3
	ldr r1, [r0]
	movs r2, #0
	mov r4, r8
	ldr r0, [r4, #4]
	cmp r1, r0
	blo .L0807E994
	movs r2, #1
.L0807E994:
	cmp r2, #0
	bne .L0807E99A
	b .L0807EB38
.L0807E99A:
	mov r0, sl
	cmp r0, #0
	bne .L0807E9D8
	ldr r1, .L0807E9D4 @ =gUnk_080FE070
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x79
	bl func_08050E50
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	b .L0807EBA4
	.align 2, 0
.L0807E9C0: .4byte 0x000006A1
.L0807E9C4: .4byte gUnk_080FE050
.L0807E9C8: .4byte 0x00001C38
.L0807E9CC: .4byte 0x00001C2C
.L0807E9D0: .4byte 0x00001AA8
.L0807E9D4: .4byte gUnk_080FE070
.L0807E9D8:
	ldr r3, .L0807EB24 @ =0x00000684
	adds r0, r7, r3
	ldr r1, [sp, #0xd8]
	mov r2, sl
	movs r3, #5
	bl func_080CA8B4
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #3
	str r0, [r1]
	add r5, sp, #0xb4
	mov r0, r8
	ldr r1, [r0]
	adds r0, r5, #0
	bl __4FoodUi
	ldr r1, .L0807EB28 @ =0x000006A4
	adds r4, r7, r1
	movs r2, #0
	mov sl, r2
	mov r3, sl
	strb r3, [r4]
	adds r0, r5, #0
	bl GetName__C4Food
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807EA44
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807EA32
	adds r5, r6, #0
.L0807EA32:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0807EA44:
	ldr r0, .L0807EB2C @ =gUnk_080FE0BC
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807EA7A
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807EA68
	adds r5, r6, #0
.L0807EA68:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807EA7A:
	ldr r0, .L0807EB30 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807EAB2
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807EAA0
	adds r5, r6, #0
.L0807EAA0:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807EAB2:
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807EAE4
	add r0, sp, #0xa4
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807EAD2
	adds r5, r6, #0
.L0807EAD2:
	mov r0, r8
	add r1, sp, #0xa4
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807EAE4:
	ldr r0, .L0807EB34 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807EB18
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807EB08
	adds r4, r5, #0
.L0807EB08:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807EB18:
	ldr r3, .L0807EB28 @ =0x000006A4
	adds r1, r7, r3
	adds r0, r7, #0
	bl func_080CABEC
	b .L0807EBA6
	.align 2, 0
.L0807EB24: .4byte 0x00000684
.L0807EB28: .4byte 0x000006A4
.L0807EB2C: .4byte gUnk_080FE0BC
.L0807EB30: .4byte gUnk_08117828
.L0807EB34: .4byte gUnk_08117814
.L0807EB38:
	ldr r1, .L0807EB58 @ =gUnk_080FE0C4
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x7d
	bl func_08050E50
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	b .L0807EBA4
	.align 2, 0
.L0807EB58: .4byte gUnk_080FE0C4
.L0807EB5C:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807EBA6
	ldr r1, .L0807EB80 @ =0x0000070C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807EB88
	ldr r1, .L0807EB84 @ =gUnk_080FE10C
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807EB90
	.align 2, 0
.L0807EB80: .4byte 0x0000070C
.L0807EB84: .4byte gUnk_080FE10C
.L0807EB88:
	ldr r1, .L0807EBBC @ =gUnk_080FE134
	adds r0, r7, #0
	bl func_080CABA0
.L0807EB90:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x79
	bl func_08050E50
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #4
.L0807EBA4:
	str r0, [r1]
.L0807EBA6:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	b .L0807EDE4
	.align 2, 0
.L0807EBBC: .4byte gUnk_080FE134
.L0807EBC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807EBCE
	b .L0807EDE4
.L0807EBCE:
	ldr r1, .L0807EBF0 @ =gUnk_080FE180
	adds r0, r7, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x79
	bl func_08050E50
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	b .L0807EDE4
	.align 2, 0
.L0807EBF0: .4byte gUnk_080FE180
.L0807EBF4:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807EC02
	b .L0807EDE4
.L0807EC02:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_08050E5C
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r7, #0x14]
	b .L0807EDE4
.L0807EC1C:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0807EC2E
	b .L0807ED58
.L0807EC2E:
	ldr r3, .L0807ECF4 @ =0x00000684
	adds r0, r7, r3
	ldr r6, [r0, #0x14]
	movs r5, #1
	bl func_080CAAF4
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807E51C
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807ECF8 @ =gUnk_080FE050
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r7, #8]
	ldr r1, .L0807ECFC @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [r4, #4]
	muls r1, r6, r1
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	ldr r2, .L0807ED00 @ =0x00001C2C
	adds r0, r0, r2
	bl func_0800F190
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0807ECB0
	subs r6, #1
	ldr r5, [r7, #8]
	ldr r3, .L0807ED00 @ =0x00001C2C
	adds r5, r5, r3
	add r4, sp, #0xa4
	mov r0, r8
	ldr r1, [r0]
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl func_0800F3B0
	movs r5, #0
.L0807ECB0:
	cmp r6, #0
	beq .L0807ED28
	ldr r0, [r7, #8]
	ldr r1, .L0807ED04 @ =0x00001C38
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2]
	adds r2, r6, #0
	bl AddAmountOfFood__8RucksackUiUi
	adds r4, r0, #0
	cmp r6, r4
	bls .L0807ECCC
	movs r5, #0
.L0807ECCC:
	cmp r4, #0
	beq .L0807ED28
	ldr r0, [r7, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetFridge__9FarmHouse
	mov r2, r8
	ldr r1, [r2]
	adds r2, r4, #0
	bl AddAmountOf__6FridgeUiUi
	cmp r5, #0
	beq .L0807ED0C
	ldr r1, .L0807ED08 @ =gUnk_080FE19C
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807ED14
	.align 2, 0
.L0807ECF4: .4byte 0x00000684
.L0807ECF8: .4byte gUnk_080FE050
.L0807ECFC: .4byte 0x00001AA8
.L0807ED00: .4byte 0x00001C2C
.L0807ED04: .4byte 0x00001C38
.L0807ED08: .4byte gUnk_080FE19C
.L0807ED0C:
	ldr r1, .L0807ED24 @ =gUnk_080FE1E8
	adds r0, r7, #0
	bl func_080CABA0
.L0807ED14:
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x79
	bl func_08050E50
	b .L0807ED3C
	.align 2, 0
.L0807ED24: .4byte gUnk_080FE1E8
.L0807ED28:
	ldr r1, .L0807ED50 @ =gUnk_080FE238
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x7a
	bl func_08050E50
.L0807ED3C:
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L0807ED54 @ =0x0000070C
	adds r0, r7, r2
	strb r1, [r0]
	b .L0807EDE4
	.align 2, 0
.L0807ED50: .4byte gUnk_080FE238
.L0807ED54: .4byte 0x0000070C
.L0807ED58:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807ED84
	ldr r3, .L0807ED80 @ =0x00000684
	adds r0, r7, r3
	bl func_080CAAF4
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807E51C
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	str r4, [r0]
	b .L0807EDE4
	.align 2, 0
.L0807ED80: .4byte 0x00000684
.L0807ED84:
	ldr r2, .L0807ED98 @ =0x00000684
	adds r1, r7, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L0807EDE4
	adds r0, r1, #0
	bl func_080CA98C
	b .L0807EDE4
	.align 2, 0
.L0807ED98: .4byte 0x00000684
.L0807ED9C:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807EDE4
	ldr r4, [sp, #0xe8]
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne .L0807EDE4
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r0, r7, r3
	str r1, [r0]
	movs r4, #1
	str r4, [sp, #0xd4]
	ldr r1, .L0807EDEC @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0xe8]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L0807EDE4:
	adds r0, r7, #0
	bl func_080C96C4
	b .L0807E804
	.align 2, 0
.L0807EDEC: .4byte 0x00000889
.L0807EDF0:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L0807EE10 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807EE10: .4byte vtable_unk_080E5A28
