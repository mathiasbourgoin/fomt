	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

.L080804E8:
	.byte 0x00, 0xB5, 0x00, 0x20, 0x02, 0x29, 0x00, 0xDC
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_080804F8
func_080804F8: @ 0x080804F8
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L08080524 @ =vtable_unk_080E7C94
	str r0, [r4, #4]
	ldr r1, .L08080528 @ =0x000006A4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L08080524: .4byte vtable_unk_080E7C94
.L08080528: .4byte 0x000006A4

	thumb_func_start func_0808052C
func_0808052C: @ 0x0808052C
	push {lr}
	ldr r2, .L0808053C @ =vtable_unk_080E7C94
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L0808053C: .4byte vtable_unk_080E7C94

	thumb_func_start func_08080540
func_08080540: @ 0x08080540
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
	bhi .L08080578
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08080572
	movs r0, #0
	str r0, [r2]
.L08080572:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08080578:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08080598
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08080592
	movs r0, #1
	str r0, [r2]
.L08080592:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08080598:
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r3, #4
	mov sl, r3
	add r6, sp, #0x18
	ldr r1, .L080807CC @ =gUnk_086678A0
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
	bhs .L080806F6
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
.L08080620:
	add r1, sp, #8
	mov r2, sl
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #3
	ldr r1, .L080807D0 @ =gUnk_080FE740
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
	bhi .L080806B0
	lsls r0, r0, #4
	adds r0, #4
	ldr r3, [sp, #0xd0]
	adds r0, r3, r0
	cmp r0, #0
	beq .L080806AA
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080806AA:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L080806B0:
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
	blo .L08080620
.L080806F6:
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
	ldr r1, .L080807D0 @ =gUnk_080FE740
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [sp, #0xe8]
	bl __4FoodUi
	ldr r0, [sp, #0xe8]
	bl GetDesc__C4Food
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CABEC
	adds r0, r7, #0
	bl func_08008918
	movs r1, #0x3f
	ldr r4, [sp, #0xe8]
	strh r1, [r4]
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
	ldr r0, .L080807D4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	ldr r0, [sp, #0xe8]
	str r4, [r0]
	ldr r1, .L080807D8 @ =0x00000889
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
.L08080792:
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
	bge .L080807AE
	b .L08080D64
.L080807AE:
	ldr r1, [sp, #0xd4]
	cmp r1, #0
	beq .L080807B6
	b .L08080D70
.L080807B6:
	ldr r2, .L080807DC @ =0x000006A4
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #4
	bls .L080807C2
	b .L08080D64
.L080807C2:
	lsls r0, r0, #2
	ldr r1, .L080807E0 @ =.L080807E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080807CC: .4byte gUnk_086678A0
.L080807D0: .4byte gUnk_080FE740
.L080807D4: .4byte vtable_unk_080E5B80
.L080807D8: .4byte 0x00000889
.L080807DC: .4byte 0x000006A4
.L080807E0: .4byte .L080807E4
.L080807E4: @ jump table
	.4byte .L080807F8 @ case 0
	.4byte .L08080B70 @ case 1
	.4byte .L08080CF4 @ case 2
	.4byte .L08080B9C @ case 3
	.4byte .L08080D28 @ case 4
.L080807F8:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	cmp r0, r2
	beq .L0808082A
	add r4, sp, #0xa4
	ldr r1, .L080808EC @ =gUnk_080FE740
	lsls r0, r2, #2
	adds r0, r0, r7
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl __4FoodUi
	adds r0, r4, #0
	bl GetDesc__C4Food
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CABEC
.L0808082A:
	ldr r4, .L080808F0 @ =0x000006A1
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08080836
	b .L08080B10
.L08080836:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L080808EC @ =gUnk_080FE740
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r2, [r4, #4]
	str r2, [sp, #0xd8]
	movs r3, #0
	str r3, [sp, #0xe0]
	mov sb, r3
	ldr r0, [r7, #8]
	ldr r1, .L080808F4 @ =0x00001C38
	adds r0, r0, r1
	bl GetEmptyItemSlotCount__C8Rucksack
	adds r5, r0, #0
	ldr r0, [r7, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	bl GetFridge__9FarmHouse
	mov r8, r4
	cmp r0, #0
	beq .L08080892
	ldr r0, [r7, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetFridge__9FarmHouse
	ldr r1, [r4]
	bl GetAvailableSpaceFor__C6FridgeUi
	mov sb, r0
.L08080892:
	ldr r0, [r7, #8]
	ldr r6, .L080808F8 @ =0x00001C2C
	adds r0, r0, r6
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080808A6
	movs r4, #1
	str r4, [sp, #0xe0]
.L080808A6:
	ldr r1, [sp, #0xe0]
	adds r0, r5, r1
	add r0, sb
	str r0, [sp, #0xdc]
	ldr r3, [r7, #8]
	ldr r2, .L080808FC @ =0x00001AA8
	adds r0, r3, r2
	ldr r1, [r0]
	movs r2, #0
	mov r4, r8
	ldr r0, [r4, #4]
	cmp r1, r0
	blo .L080808C2
	movs r2, #1
.L080808C2:
	cmp r2, #0
	bne .L080808C8
	b .L08080AEC
.L080808C8:
	ldr r0, [sp, #0xdc]
	cmp r0, #0
	bne .L08080908
	ldr r1, .L08080900 @ =gUnk_080FE750
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x8c
	bl func_08050E50
	ldr r2, .L08080904 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #1
	b .L08080B52
	.align 2, 0
.L080808EC: .4byte gUnk_080FE740
.L080808F0: .4byte 0x000006A1
.L080808F4: .4byte 0x00001C38
.L080808F8: .4byte 0x00001C2C
.L080808FC: .4byte 0x00001AA8
.L08080900: .4byte gUnk_080FE750
.L08080904: .4byte 0x000006A4
.L08080908:
	movs r4, #0
	str r4, [sp, #0xe4]
	mov sb, r4
	ldr r1, .L08080AD0 @ =0x00001C38
	adds r0, r3, r1
	mov r2, r8
	ldr r1, [r2]
	bl GetAmountOfFood__C8RucksackUi
	adds r5, r0, #0
	ldr r0, [r7, #8]
	add r0, sl
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L0808093A
	ldr r0, [r7, #8]
	add r0, sl
	bl GetFridge__9FarmHouse
	mov r3, r8
	ldr r1, [r3]
	bl GetAmountOf__C6FridgeUi
	mov sb, r0
.L0808093A:
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl func_0800F190
	lsls r0, r0, #0x18
	add r4, sp, #0xa4
	cmp r0, #0
	bne .L0808097A
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl func_0800F204
	cmp r0, #0
	bne .L0808097A
	ldr r1, [r7, #8]
	adds r1, r1, r6
	adds r0, r4, #0
	bl func_0800F20C
	adds r0, r4, #0
	bl GetId__C4Food
	movs r2, #0
	mov r3, r8
	ldr r1, [r3]
	cmp r0, r1
	bne .L08080972
	movs r2, #1
.L08080972:
	cmp r2, #0
	beq .L0808097A
	movs r0, #1
	str r0, [sp, #0xe4]
.L0808097A:
	ldr r1, [sp, #0xe4]
	adds r0, r5, r1
	add r0, sb
	adds r1, r4, #0
	movs r2, #7
	bl func_0804EC84
	add r5, sp, #0xb4
	mov r2, r8
	ldr r1, [r2]
	adds r0, r5, #0
	bl __4FoodUi
	ldr r3, .L08080AD4 @ =0x000006AC
	adds r4, r7, r3
	movs r0, #0
	mov sl, r0
	mov r1, sl
	strb r1, [r4]
	adds r0, r5, #0
	bl GetName__C4Food
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L080809DC
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080809CA
	adds r5, r6, #0
.L080809CA:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r3, r8
	adds r0, r3, r5
	mov r1, sl
	strb r1, [r0]
.L080809DC:
	ldr r2, .L08080AD8 @ =gUnk_080FE7A0
	mov sb, r2
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08080A12
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08080A00
	adds r5, r6, #0
.L08080A00:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L08080A12:
	ldr r0, .L08080ADC @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08080A4A
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08080A38
	adds r5, r6, #0
.L08080A38:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L08080A4A:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08080A7C
	add r0, sp, #0xa4
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08080A6A
	adds r5, r6, #0
.L08080A6A:
	mov r0, r8
	add r1, sp, #0xa4
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L08080A7C:
	ldr r0, .L08080AE0 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L08080AB0
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08080AA0
	adds r4, r5, #0
.L08080AA0:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08080AB0:
	ldr r2, .L08080AD4 @ =0x000006AC
	adds r1, r7, r2
	adds r0, r7, #0
	bl func_080CABEC
	ldr r3, .L08080AE4 @ =0x00000684
	adds r0, r7, r3
	ldr r1, [sp, #0xd8]
	ldr r2, [sp, #0xdc]
	movs r3, #5
	bl func_080CA8B4
	ldr r4, .L08080AE8 @ =0x000006A4
	adds r1, r7, r4
	movs r0, #3
	b .L08080B52
	.align 2, 0
.L08080AD0: .4byte 0x00001C38
.L08080AD4: .4byte 0x000006AC
.L08080AD8: .4byte gUnk_080FE7A0
.L08080ADC: .4byte gUnk_08117828
.L08080AE0: .4byte gUnk_08117814
.L08080AE4: .4byte 0x00000684
.L08080AE8: .4byte 0x000006A4
.L08080AEC:
	ldr r1, .L08080B08 @ =gUnk_080FE7A8
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x8a
	bl func_08050E50
	ldr r2, .L08080B0C @ =0x000006A4
	adds r1, r7, r2
	movs r0, #1
	b .L08080B52
	.align 2, 0
.L08080B08: .4byte gUnk_080FE7A8
.L08080B0C: .4byte 0x000006A4
.L08080B10:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08080B54
	movs r3, #0xd5
	lsls r3, r3, #3
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08080B38
	ldr r1, .L08080B34 @ =gUnk_080FE7E0
	adds r0, r7, #0
	bl func_080CABA0
	b .L08080B40
	.align 2, 0
.L08080B34: .4byte gUnk_080FE7E0
.L08080B38:
	ldr r1, .L08080B68 @ =gUnk_080FE800
	adds r0, r7, #0
	bl func_080CABA0
.L08080B40:
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x8a
	bl func_08050E50
	ldr r0, .L08080B6C @ =0x000006A4
	adds r1, r7, r0
	movs r0, #4
.L08080B52:
	str r0, [r1]
.L08080B54:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	b .L08080D64
	.align 2, 0
.L08080B68: .4byte gUnk_080FE800
.L08080B6C: .4byte 0x000006A4
.L08080B70:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #3
	beq .L08080B7E
	b .L08080D64
.L08080B7E:
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	bl func_08050E5C
	ldr r4, .L08080B98 @ =0x000006A4
	adds r1, r7, r4
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r7, #0x14]
	b .L08080D64
	.align 2, 0
.L08080B98: .4byte 0x000006A4
.L08080B9C:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L08080BAE
	b .L08080CB0
.L08080BAE:
	ldr r1, .L08080C68 @ =0x00000684
	adds r0, r7, r1
	ldr r6, [r0, #0x14]
	bl func_080CAAF4
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L08080C6C @ =gUnk_080FE740
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r7, #8]
	ldr r3, .L08080C70 @ =0x00001AA8
	adds r0, r0, r3
	ldr r1, [r4, #4]
	muls r1, r6, r1
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	movs r5, #0
	ldr r0, [r7, #8]
	ldr r1, .L08080C74 @ =0x00001C2C
	adds r0, r0, r1
	bl func_0800F190
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L08080C28
	subs r6, #1
	ldr r5, [r7, #8]
	ldr r2, .L08080C74 @ =0x00001C2C
	adds r5, r5, r2
	add r4, sp, #0xa4
	mov r3, r8
	ldr r1, [r3]
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
	movs r5, #1
.L08080C28:
	cmp r6, #0
	beq .L08080C80
	ldr r0, [r7, #8]
	ldr r4, .L08080C78 @ =0x00001C38
	adds r0, r0, r4
	mov r2, r8
	ldr r1, [r2]
	adds r2, r6, #0
	bl AddAmountOfFood__8RucksackUiUi
	adds r4, r0, #0
	cmp r6, r4
	beq .L08080C44
	movs r5, #1
.L08080C44:
	cmp r4, #0
	beq .L08080C80
	ldr r0, [r7, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetFridge__9FarmHouse
	mov r2, r8
	ldr r1, [r2]
	adds r2, r4, #0
	bl AddAmountOf__6FridgeUiUi
	ldr r1, .L08080C7C @ =gUnk_080FE82C
	adds r0, r7, #0
	bl func_080CABA0
	b .L08080C88
	.align 2, 0
.L08080C68: .4byte 0x00000684
.L08080C6C: .4byte gUnk_080FE740
.L08080C70: .4byte 0x00001AA8
.L08080C74: .4byte 0x00001C2C
.L08080C78: .4byte 0x00001C38
.L08080C7C: .4byte gUnk_080FE82C
.L08080C80:
	ldr r1, .L08080CA8 @ =gUnk_080FE8AC
	adds r0, r7, #0
	bl func_080CABA0
.L08080C88:
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x8a
	bl func_08050E50
	ldr r4, .L08080CAC @ =0x000006A4
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	b .L08080D64
	.align 2, 0
.L08080CA8: .4byte gUnk_080FE8AC
.L08080CAC: .4byte 0x000006A4
.L08080CB0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08080CDC
	ldr r1, .L08080CD4 @ =0x00000684
	adds r0, r7, r1
	bl func_080CAAF4
	ldr r2, .L08080CD8 @ =0x000006A4
	adds r0, r7, r2
	str r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L08080D64
	.align 2, 0
.L08080CD4: .4byte 0x00000684
.L08080CD8: .4byte 0x000006A4
.L08080CDC:
	ldr r3, .L08080CF0 @ =0x00000684
	adds r1, r7, r3
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L08080D64
	adds r0, r1, #0
	bl func_080CA98C
	b .L08080D64
	.align 2, 0
.L08080CF0: .4byte 0x00000684
.L08080CF4:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	bne .L08080D64
	ldr r1, .L08080D20 @ =gUnk_080FE8C0
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x8a
	bl func_08050E50
	ldr r2, .L08080D24 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
	b .L08080D64
	.align 2, 0
.L08080D20: .4byte gUnk_080FE8C0
.L08080D24: .4byte 0x000006A4
.L08080D28:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L08080D64
	ldr r4, [sp, #0xe8]
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08080D64
	movs r0, #1
	str r0, [sp, #0xd4]
	ldr r1, .L08080D6C @ =0x00000889
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
.L08080D64:
	adds r0, r7, #0
	bl func_080C96C4
	b .L08080792
	.align 2, 0
.L08080D6C: .4byte 0x00000889
.L08080D70:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L08080D90 @ =vtable_unk_080E5A28
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
.L08080D90: .4byte vtable_unk_080E5A28
