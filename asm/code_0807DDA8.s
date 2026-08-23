	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

.L0807DDF8:
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x42, 0x60, 0x4A, 0xF0
	.byte 0xAF, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x08, 0x7C, 0x0E, 0x08, 0x10, 0xB5, 0x81, 0xB0
	.byte 0x04, 0x1C, 0x09, 0x48, 0xC9, 0x00, 0x09, 0x18, 0x09, 0x68, 0x68, 0x46, 0x8F, 0xF7, 0x44, 0xFF
	.byte 0x68, 0x46, 0x8F, 0xF7, 0xD7, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x4C, 0xF0, 0xDF, 0xFE, 0x01, 0xB0
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xDF, 0x0F, 0x08

	thumb_func_start func_0807DE3C
func_0807DE3C: @ 0x0807DE3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd8
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0x10
	str r0, [sp, #0xc]
	add r6, sp, #0x18
	ldr r1, .L0807E1F0 @ =gUnk_086678A0
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
	add r5, sp, #0x80
	str r4, [sp, #0x80]
	strh r4, [r5, #4]
	add r0, sp, #0x88
	mov sl, r0
	str r4, [r0]
	strh r4, [r0, #4]
	add r1, sp, #0x90
	mov sb, r1
	str r4, [r1]
	strh r4, [r1, #4]
	add r0, sp, #0x98
	str r4, [r0]
	strh r4, [r0, #4]
	add r1, sp, #8
	movs r0, #0x20
	strh r0, [r1]
	ldr r2, .L0807E1F4 @ =0x000006A4
	adds r0, r7, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807E1F8 @ =gUnk_080FDFA4
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r3, sp, #0xc4
	mov r8, r3
	mov r4, r8
	str r0, [r4]
	str r1, [r4, #4]
	add r6, sp, #0xa0
	ldr r1, [r4]
	adds r0, r6, #0
	bl __4FoodUi
	adds r0, r6, #0
	bl GetIconId__C4Food
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x4c
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [sp, #0x4c]
	ldr r3, [r1]
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
	adds r0, r4, #0
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r1, r2}
	stm r5!, {r1, r2}
	mov r3, sl
	ldr r0, [r3]
	str r0, [sp, #0x10]
	mov r1, sb
	ldr r0, [r1]
	str r0, [sp, #0x14]
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r7, #0x20]
	mov sl, r8
	cmp r0, #0x27
	bhi .L0807DF50
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807DF4A
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807DF4A:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0807DF50:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	movs r4, #4
	lsls r4, r4, #6
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, sl
	ldr r0, [r2, #4]
	movs r6, #0x20
	str r6, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	movs r5, #0
	str r5, [sp]
	str r6, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	adds r0, r7, #0
	bl func_08008918
	movs r1, #0x3f
	add r3, sp, #0xa0
	strh r1, [r3]
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	str r5, [r4]
	str r5, [r4, #4]
	ldr r0, .L0807E1FC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xa0]
	ldr r1, .L0807E200 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xa0]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r4, #0
	str r4, [sp, #0xcc]
	ldr r1, .L0807E1F4 @ =0x000006A4
	adds r0, r7, r1
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807E1F8 @ =gUnk_080FDFA4
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #0xc4
	str r0, [r2]
	str r1, [r2, #4]
	mov r2, sl
	ldr r2, [r2, #4]
	mov sb, r2
	movs r3, #0
	str r3, [sp, #0xd0]
	mov r8, r3
	ldr r0, [r7, #8]
	ldr r4, .L0807E204 @ =0x00001C38
	adds r0, r0, r4
	bl GetEmptyItemSlotCount__C8Rucksack
	adds r6, r0, #0
	ldr r0, [r7, #8]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L0807E028
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetFridge__9FarmHouse
	mov r2, sl
	ldr r1, [r2]
	bl GetAvailableSpaceFor__C6FridgeUi
	mov r8, r0
.L0807E028:
	ldr r0, [r7, #8]
	ldr r4, .L0807E208 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807E03C
	movs r3, #1
	str r3, [sp, #0xd0]
.L0807E03C:
	ldr r0, [sp, #0xd0]
	adds r2, r6, r0
	add r2, r8
	ldr r1, .L0807E20C @ =0x00000684
	adds r0, r7, r1
	mov r1, sb
	movs r3, #5
	bl func_080CA8B4
	movs r2, #0
	mov sb, r2
	mov r8, r2
	ldr r0, [r7, #8]
	ldr r3, .L0807E204 @ =0x00001C38
	adds r0, r0, r3
	mov r2, sl
	ldr r1, [r2]
	bl GetAmountOfFood__C8RucksackUi
	adds r6, r0, #0
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L0807E082
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetFridge__9FarmHouse
	mov r3, sl
	ldr r1, [r3]
	bl GetAmountOf__C6FridgeUi
	mov r8, r0
.L0807E082:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807E0C0
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F204
	cmp r0, #0
	bne .L0807E0C0
	ldr r1, [r7, #8]
	adds r1, r1, r4
	add r0, sp, #0xa4
	bl func_0800F20C
	add r0, sp, #0xa4
	bl GetId__C4Food
	movs r2, #0
	mov r4, sl
	ldr r1, [r4]
	cmp r0, r1
	bne .L0807E0B8
	movs r2, #1
.L0807E0B8:
	cmp r2, #0
	beq .L0807E0C0
	movs r0, #1
	mov sb, r0
.L0807E0C0:
	mov r1, sb
	adds r0, r6, r1
	add r0, r8
	add r1, sp, #0xa4
	movs r2, #7
	bl func_0804EC84
	add r5, sp, #0xb4
	mov r2, sl
	ldr r1, [r2]
	adds r0, r5, #0
	bl __4FoodUi
	movs r3, #0xd5
	lsls r3, r3, #3
	adds r4, r7, r3
	movs r0, #0
	strb r0, [r4]
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
	beq .L0807E120
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807E10E
	adds r5, r6, #0
.L0807E10E:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	movs r3, #0
	strb r3, [r0]
.L0807E120:
	ldr r0, .L0807E210 @ =gUnk_080FDE70
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807E156
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807E144
	adds r5, r6, #0
.L0807E144:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807E156:
	ldr r0, .L0807E214 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807E18E
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807E17C
	adds r5, r6, #0
.L0807E17C:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807E18E:
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807E1C0
	add r0, sp, #0xa4
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807E1AE
	adds r5, r6, #0
.L0807E1AE:
	mov r0, r8
	add r1, sp, #0xa4
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807E1C0:
	ldr r0, .L0807E218 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807E222
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807E1E4
	adds r4, r5, #0
.L0807E1E4:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	b .L0807E21C
	.align 2, 0
.L0807E1F0: .4byte gUnk_086678A0
.L0807E1F4: .4byte 0x000006A4
.L0807E1F8: .4byte gUnk_080FDFA4
.L0807E1FC: .4byte vtable_unk_080E5B80
.L0807E200: .4byte 0x00000889
.L0807E204: .4byte 0x00001C38
.L0807E208: .4byte 0x00001C2C
.L0807E20C: .4byte 0x00000684
.L0807E210: .4byte gUnk_080FDE70
.L0807E214: .4byte gUnk_08117828
.L0807E218: .4byte gUnk_08117814
.L0807E21C:
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807E222:
	movs r3, #0xd5
	lsls r3, r3, #3
	adds r1, r7, r3
	adds r0, r7, #0
	bl func_080CABEC
	mov r4, sp
	adds r4, #0xa0
	str r4, [sp, #0xd4]
	movs r0, #1
	mov sb, r0
.L0807E238:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r1, [sp, #0xd4]
	ldr r3, [r1]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807E254
	b .L0807E406
.L0807E254:
	ldr r2, [sp, #0xcc]
	cmp r2, #0
	beq .L0807E25C
	b .L0807E414
.L0807E25C:
	ldr r4, .L0807E31C @ =0x0000070C
	adds r4, r4, r7
	mov r8, r4
	ldr r0, [r4]
	cmp r0, #1
	bne .L0807E26A
	b .L0807E3D0
.L0807E26A:
	cmp r0, #1
	ble .L0807E270
	b .L0807E406
.L0807E270:
	cmp r0, #0
	beq .L0807E276
	b .L0807E406
.L0807E276:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0807E286
	b .L0807E388
.L0807E286:
	ldr r1, .L0807E320 @ =0x00000684
	adds r0, r7, r1
	ldr r6, [r0, #0x14]
	movs r5, #1
	ldr r0, [r7, #8]
	ldr r2, .L0807E324 @ =0x00001CD4
	adds r0, r0, r2
	adds r1, r6, #0
	bl func_080A0A54
	ldr r0, [r7, #8]
	ldr r3, .L0807E328 @ =0x00001AA8
	adds r0, r0, r3
	mov r4, sl
	ldr r1, [r4, #4]
	muls r1, r6, r1
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [sp, #0xd0]
	cmp r0, #0
	beq .L0807E2E0
	subs r6, r6, r0
	ldr r5, [r7, #8]
	ldr r1, .L0807E32C @ =0x00001C2C
	adds r5, r5, r1
	add r4, sp, #0xb8
	mov r2, sl
	ldr r1, [r2]
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
.L0807E2E0:
	cmp r6, #0
	beq .L0807E300
	ldr r0, [r7, #8]
	ldr r1, .L0807E330 @ =0x00001C38
	adds r0, r0, r1
	mov r2, sl
	ldr r1, [r2]
	adds r2, r6, #0
	bl AddAmountOfFood__8RucksackUiUi
	adds r4, r0, #0
	cmp r6, r4
	bls .L0807E2FC
	movs r5, #0
.L0807E2FC:
	cmp r4, #0
	bne .L0807E338
.L0807E300:
	adds r0, r7, #0
	ldr r1, .L0807E334 @ =gUnk_080FDEAC
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x44
	bl func_08050E50
	mov r4, sb
	mov r0, r8
	str r4, [r0]
	b .L0807E406
	.align 2, 0
.L0807E31C: .4byte 0x0000070C
.L0807E320: .4byte 0x00000684
.L0807E324: .4byte 0x00001CD4
.L0807E328: .4byte 0x00001AA8
.L0807E32C: .4byte 0x00001C2C
.L0807E330: .4byte 0x00001C38
.L0807E334: .4byte gUnk_080FDEAC
.L0807E338:
	ldr r0, [r7, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	mov r2, sl
	ldr r1, [r2]
	adds r2, r4, #0
	bl AddAmountOf__6FridgeUiUi
	cmp r5, #0
	beq .L0807E360
	adds r0, r7, #0
	ldr r1, .L0807E35C @ =gUnk_080FDF50
	bl func_080CABA0
	b .L0807E368
	.align 2, 0
.L0807E35C: .4byte gUnk_080FDF50
.L0807E360:
	adds r0, r7, #0
	ldr r1, .L0807E380 @ =gUnk_080FDFE4
	bl func_080CABA0
.L0807E368:
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x44
	bl func_08050E50
	ldr r4, .L0807E384 @ =0x0000070C
	adds r0, r7, r4
	mov r1, sb
	str r1, [r0]
	b .L0807E406
	.align 2, 0
.L0807E380: .4byte gUnk_080FDFE4
.L0807E384: .4byte 0x0000070C
.L0807E388:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807E3B8
	adds r0, r7, #0
	ldr r1, .L0807E3B4 @ =gUnk_080FE034
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x46
	bl func_08050E50
	mov r3, sb
	mov r4, r8
	str r3, [r4]
	b .L0807E406
	.align 2, 0
.L0807E3B4: .4byte gUnk_080FE034
.L0807E3B8:
	ldr r0, .L0807E3CC @ =0x00000684
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L0807E406
	adds r0, r1, #0
	bl func_080CA98C
	b .L0807E406
	.align 2, 0
.L0807E3CC: .4byte 0x00000684
.L0807E3D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807E406
	movs r0, #2
	mov r2, r8
	str r0, [r2]
	movs r4, #1
	str r4, [sp, #0xcc]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r1, .L0807E410 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0xd4]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L0807E406:
	adds r0, r7, #0
	bl func_080C96C4
	b .L0807E238
	.align 2, 0
.L0807E410: .4byte 0x00000889
.L0807E414:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L0807E434 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	add sp, #0xd8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807E434: .4byte vtable_unk_080E5A28
