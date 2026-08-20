.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_080881EC
func_080881EC: @ 0x080881EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [r5, #4]
	bl func_08086A08
	mov sb, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	beq .L08088290
	ldr r0, [r5, #4]
	bl func_08085EEC
	adds r4, r0, #0
	movs r0, #1
	mov sl, r0
	cmp r4, #0
	beq .L08088220
	movs r1, #2
	mov sl, r1
.L08088220:
	movs r0, #0x10
	bl __builtin_new
	adds r2, r0, #0
	ldr r3, [r5, #8]
	movs r6, #0
	str r6, [r5, #8]
	str r3, [sp, #4]
	movs r7, #1
	cmp r4, #0
	beq .L08088238
	movs r7, #2
.L08088238:
	add r4, sp, #4
	ldr r1, [r5, #0x10]
	ldr r0, .L08088288 @ =vtable_unk_080E5D94
	str r0, [r2]
	str r6, [sp, #4]
	str r3, [r2, #4]
	str r1, [r2, #8]
	str r7, [r2, #0xc]
	str r2, [sp]
	movs r0, #0x14
	bl __builtin_new
	ldr r3, [sp]
	str r6, [sp]
	ldr r2, [r5, #0x10]
	ldr r1, .L0808828C @ =vtable_unk_080E5C64
	str r1, [r0]
	str r6, [sp, #8]
	str r3, [r0, #4]
	str r2, [r0, #8]
	mov r1, sl
	str r1, [r0, #0xc]
	mov r1, sb
	strb r1, [r0, #0x10]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	str r6, [sp, #4]
	mov r1, r8
	str r0, [r1]
	ldr r1, [sp]
	cmp r1, #0
	beq .L0808829A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L0808829A
	.align 2, 0
.L08088288: .4byte vtable_unk_080E5D94
.L0808828C: .4byte vtable_unk_080E5C64
.L08088290:
	ldr r1, [r5, #8]
	movs r0, #0
	str r0, [r5, #8]
	mov r0, r8
	str r1, [r0]
.L0808829A:
	mov r0, r8
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080882AC
func_080882AC: @ 0x080882AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl func_080CE19C
	ldr r0, .L080882FC @ =vtable_unk_080E7D4C
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x98
	movs r5, #0
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0xfc
	ldr r0, [r6, #8]
	ldr r3, .L08088300 @ =0x00001C2C
	adds r1, r0, r3
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r6, r1
	adds r3, #0xc
	adds r1, r0, r3
	str r1, [r2]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r6, r1
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetFridge__9FarmHouse
	str r0, [r4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	str r5, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080882FC: .4byte vtable_unk_080E7D4C
.L08088300: .4byte 0x00001C2C

	thumb_func_start func_08088304
func_08088304: @ 0x08088304
	push {lr}
	ldr r2, .L08088314 @ =vtable_unk_080E7D4C
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L08088314: .4byte vtable_unk_080E7D4C

	thumb_func_start func_08088318
func_08088318: @ 0x08088318
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r5, r7
	bhs .L080883A2
.L08088326:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	adds r1, r5, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808839C
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L08088356
	cmp r0, #1
	beq .L08088368
	b .L0808837C
.L08088356:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L08088378
.L08088368:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L08088378:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L0808837C:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808838C
	movs r4, #0xb0
	lsls r4, r4, #1
.L0808838C:
	ldr r0, [r6, #0x78]
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	ldr r2, .L080883CC @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CB304
.L0808839C:
	adds r5, #1
	cmp r5, r7
	blo .L08088326
.L080883A2:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080883B4
	b .L080884E8
.L080883B4:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L080883C0
	b .L080884E8
.L080883C0:
	lsls r0, r0, #2
	ldr r1, .L080883D0 @ =.L080883D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080883CC: .4byte gUnk_086678A0
.L080883D0: .4byte .L080883D4
.L080883D4: @ jump table
	.4byte .L080883EC @ case 0
	.4byte .L08088424 @ case 1
	.4byte .L08088460 @ case 2
	.4byte .L08088494 @ case 3
	.4byte .L080884DC @ case 4
	.4byte .L080884E8 @ case 5
.L080883EC:
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088416
	movs r5, #0xb0
	lsls r5, r5, #1
.L08088416:
	ldr r0, [r6, #0x78]
	ldr r1, .L08088420 @ =gUnk_086678A0
	adds r2, r5, #0
	b .L080884CA
	.align 2, 0
.L08088420: .4byte gUnk_086678A0
.L08088424:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088452
	movs r5, #0xb0
	lsls r5, r5, #1
.L08088452:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808845C @ =gUnk_086678A0
	adds r2, r5, #0
	b .L080884CA
	.align 2, 0
.L0808845C: .4byte gUnk_086678A0
.L08088460:
	ldr r0, [r6, #8]
	ldr r2, .L08088478 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L08088484
	ldr r0, [r6, #0x78]
	ldr r1, .L0808847C @ =gUnk_0858BA28
	ldr r2, .L08088480 @ =0x000003DA
	b .L080884CA
	.align 2, 0
.L08088478: .4byte 0x00001C70
.L0808847C: .4byte gUnk_0858BA28
.L08088480: .4byte 0x000003DA
.L08088484:
	ldr r0, [r6, #0x78]
	ldr r1, .L08088490 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L080884CA
	.align 2, 0
.L08088490: .4byte gUnk_0858BA28
.L08088494:
	ldr r0, [r4]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r6, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L080884E8
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L080884C4
	ldr r0, [r6, #0x78]
	ldr r1, .L080884BC @ =gUnk_0858BA28
	ldr r2, .L080884C0 @ =0x0000073D
	b .L080884CA
	.align 2, 0
.L080884BC: .4byte gUnk_0858BA28
.L080884C0: .4byte 0x0000073D
.L080884C4:
	ldr r0, [r6, #0x78]
	ldr r1, .L080884D4 @ =gUnk_0858BA28
	ldr r2, .L080884D8 @ =0x00000734
.L080884CA:
	movs r3, #1
	bl func_080CBAF0
	b .L080884E8
	.align 2, 0
.L080884D4: .4byte gUnk_0858BA28
.L080884D8: .4byte 0x00000734
.L080884DC:
	ldr r0, [r6, #0x78]
	ldr r1, .L080884F0 @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CBAF0
.L080884E8:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080884F0: .4byte gUnk_086678A0

	thumb_func_start func_080884F4
func_080884F4: @ 0x080884F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	movs r5, #0
	add r7, sp, #8
.L08088504:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r2, r8
	lsls r1, r2, #3
	adds r1, r1, r5
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088558
	adds r0, r7, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r7, #0
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	ldr r1, [r6, #0x7c]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L08088554 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
	b .L08088560
	.align 2, 0
.L08088554: .4byte gUnk_086678A0
.L08088558:
	ldr r0, [r6, #0x7c]
	adds r1, r5, #0
	bl func_080CCDEC
.L08088560:
	adds r5, #1
	cmp r5, #7
	bls .L08088504
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08088574
func_08088574: @ 0x08088574
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEB80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080884F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08088590
func_08088590: @ 0x08088590
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEBC0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080884F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080885AC
func_080885AC: @ 0x080885AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x98
	strb r7, [r6]
	cmp r1, #0
	bne .L080885DA
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808865A
	ldr r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CF67C
	b .L08088658
.L080885DA:
	cmp r1, #8
	bgt .L08088614
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808865A
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CFA38
	b .L08088658
.L08088614:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	lsls r4, r4, #3
	adds r6, r4, r0
	movs r0, #0x82
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808865A
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetFoodStackAt__6FridgeUi
	adds r1, r0, #0
	mov r0, sp
	bl GetFood__C9FoodStack
	mov r0, sp
	bl GetDesc__C4Food
.L08088658:
	adds r7, r0, #0
.L0808865A:
	cmp r7, #0
	beq .L0808866E
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808867C
.L0808866E:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L08088684 @ =gUnk_08100030
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808867C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08088684: .4byte gUnk_08100030

	thumb_func_start func_08088688
func_08088688: @ 0x08088688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	mov r8, r1
	str r2, [sp, #0x28]
	movs r0, #1
	str r0, [sp, #0x2c]
	cmp r1, #0
	bne .L080886A4
	b .L08088B8C
.L080886A4:
	cmp r1, #8
	ble .L080886AA
	b .L08088876
.L080886AA:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	mov sb, r4
	cmp r0, #0
	beq .L08088738
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L080886E4
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L080886E6
.L080886E4:
	movs r1, #1
.L080886E6:
	cmp r1, #0
	beq .L080886EC
	b .L08088B8C
.L080886EC:
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	add r5, sp, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_0800F418
	b .L08088B8C
.L08088738:
	mov r3, sb
	ldr r0, [r3]
	bl func_0800F204
	cmp r0, #5
	bls .L08088746
	b .L08088B8C
.L08088746:
	lsls r0, r0, #2
	ldr r1, .L08088750 @ =.L08088754
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08088750: .4byte .L08088754
.L08088754: @ jump table
	.4byte .L0808876C @ case 0
	.4byte .L0808876C @ case 1
	.4byte .L08088AC6 @ case 2
	.4byte .L08088AC6 @ case 3
	.4byte .L08088AC6 @ case 4
	.4byte .L08088B8C @ case 5
.L0808876C:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x18
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L080887A0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L080887A2
.L080887A0:
	movs r1, #1
.L080887A2:
	cmp r1, #0
	bne .L08088822
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	add r0, sp, #0x10
	mov r4, sb
	ldr r1, [r4]
	bl func_0800F294
	ldr r0, [r4]
	bl func_0800F390
	add r6, sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [sp, #0x14]
	str r1, [sp, #0x24]
	bl func_0800F418
	b .L08088B8C
.L08088822:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	add r0, sp, #0x24
	mov r2, sb
	ldr r1, [r2]
	bl func_0800F294
	mov r3, sb
	ldr r0, [r3]
	bl func_0800F390
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	b .L08088B8C
.L08088876:
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x28]
	bl func_080CE184
	str r0, [sp, #0x30]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088978
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080888B4
	b .L08088B8C
.L080888B4:
	ldr r5, [r4]
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0xa
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl func_0800F3B0
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
	ldr r5, [r7, #0x78]
	ldr r6, .L0808894C @ =gUnk_086678A0
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	cmp r0, r3
	beq .L08088920
	b .L08088B8C
.L08088920:
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088950
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L08088B8C
	.align 2, 0
.L0808894C: .4byte gUnk_086678A0
.L08088950:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08088B8C
.L08088978:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #4
	ble .L08088984
	b .L08088B8C
.L08088984:
	cmp r0, #1
	blt .L0808898A
	b .L08088B88
.L0808898A:
	cmp r0, #0
	beq .L08088990
	b .L08088B8C
.L08088990:
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r4]
	mov r0, sb
	bl func_0800F20C
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080889AA
	b .L08088AD0
.L080889AA:
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	cmp r0, #1
	bls .L080889B6
	b .L08088B7C
.L080889B6:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088A8C
	ldr r0, [r4]
	bl func_0800F390
	ldr r4, [r4]
	add r5, sp, #0xc
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	ldrb r1, [r5]
	mov r0, sp
	adds r0, #0xd
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0xe
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r4, #0
	bl func_0800F3B0
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	ldr r4, [r7, #0x78]
	ldr r6, .L08088A88 @ =gUnk_086678A0
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	cmp r0, r1
	beq .L08088A5E
	b .L08088B8C
.L08088A5E:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sb
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0x2c]
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L08088B8C
	.align 2, 0
.L08088A88: .4byte gUnk_086678A0
.L08088A8C:
	mov r0, sb
	bl GetId__C4Food
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	eors r0, r5
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L08088AC6
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088ACC @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [sp, #0x2c]
	str r4, [r0]
.L08088AC6:
	movs r0, #0
	str r0, [sp, #0x2c]
	b .L08088B8C
	.align 2, 0
.L08088ACC: .4byte gUnk_08100034
.L08088AD0:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088B64
	ldr r0, [r4]
	bl func_0800F390
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	cmp r0, r2
	bne .L08088B8C
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sb
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L08088B60 @ =gUnk_086678A0
	ldr r0, [sp, #0x2c]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L08088B8C
	.align 2, 0
.L08088B60: .4byte gUnk_086678A0
.L08088B64:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088B84 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x2c]
	str r2, [r0]
.L08088B7C:
	movs r3, #0
	str r3, [sp, #0x2c]
	b .L08088B8C
	.align 2, 0
.L08088B84: .4byte gUnk_08100034
.L08088B88:
	movs r4, #0
	str r4, [sp, #0x2c]
.L08088B8C:
	add r1, sp, #0x2c
	ldrb r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08088BA0
func_08088BA0: @ 0x08088BA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r7, r0, #0
	str r1, [sp, #0x2c]
	mov sl, r2
	movs r0, #1
	str r0, [sp, #0x30]
	cmp r2, #0
	bne .L08088BCC
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	b .L08088D30
.L08088BCC:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq .L08088BD4
	b .L08088DB4
.L08088BD4:
	mov r2, sl
	cmp r2, #8
	bgt .L08088BE8
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_08088688
	bl .L08089AC0
.L08088BE8:
	movs r3, #0xfc
	adds r3, r3, r7
	mov r8, r3
	ldr r0, [r3]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088C10
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_08088688
	bl .L08089AC0
.L08088C10:
	mov r4, r8
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #0
	beq .L08088C1E
	b .L08088D3E
.L08088C1E:
	mov r2, r8
	ldr r1, [r2]
	add r0, sp, #4
	bl func_0800F294
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x34]
	adds r0, r3, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r4, r7, #0
	adds r4, #0x94
	str r4, [sp, #0x3c]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_080CE184
	str r0, [sp, #0x38]
	add r6, sp, #0xc
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0x38]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088CF8
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088CD6
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F390
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x38]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x34]
	bl sub_080895C2
.L08088CD6:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088CF4 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x30]
	str r2, [r0]
	bl .L08089620
	.align 2, 0
.L08088CF4: .4byte gUnk_08100034
.L08088CF8:
	ldr r0, [sp, #0x34]
	bl GetId__C4Food
	adds r5, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	eors r0, r5
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L08088D46
	adds r0, r6, #0
	bl GetAmount__C9FoodStack
	cmp r0, #1
	bne .L08088D3E
	ldr r4, [sp, #0x3c]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
.L08088D30:
	bl func_08088688
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	bl .L08089AC0
.L08088D3E:
	movs r0, #0
	str r0, [sp, #0x30]
	bl .L08089AC0
.L08088D46:
	adds r0, r6, #0
	bl GetAmount__C9FoodStack
	cmp r0, #0x63
	bne .L08088D54
	bl .L080895E0
.L08088D54:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088D96
	mov r2, r8
	ldr r0, [r2]
	bl func_0800F390
	mov r3, sb
	ldr r0, [r3]
	ldr r1, [sp, #0x38]
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [sp, #0x38]
	bl .L08089A0C
.L08088D96:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088DB0 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r3, [sp, #0x30]
	str r3, [r0]
	b .L0808932C
	.align 2, 0
.L08088DB0: .4byte gUnk_08100034
.L08088DB4:
	ldr r0, [sp, #0x2c]
	cmp r0, #8
	ble .L08088DBC
	b .L0808939A
.L08088DBC:
	mov r1, sl
	cmp r1, #8
	ble .L08088DC4
	b .L08088F8E
.L08088DC4:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x18
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CB2E8
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add r4, sp, #0x10
	mov r8, r4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x10]
	add r6, sp, #0x24
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x24]
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088E50
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088E50
	bl .L08089AC0
.L08088E50:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088EC8
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x28
	bl __12RucksackItem
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	bl .L08089AC0
.L08088EC8:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088F22
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x28
	bl __12RucksackItem
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L08088F6E
.L08088F22:
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
.L08088F6E:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	bl .L08089AC0
.L08088F8E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x40]
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_080CE184
	mov sb, r0
	add r4, sp, #8
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #0x44]
	ldr r0, [r2]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L080890BC
	mov r0, r8
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088FF6
	bl .L08089AC0
.L08088FF6:
	add r5, sp, #0xc
	adds r0, r5, #0
	mov r1, r8
	bl GetFood__C9FoodStack
	ldr r3, [sp, #0x40]
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	mov r8, r0
	add r6, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x10]
	mov r4, r8
	str r0, [r4]
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L080890A0 @ =gUnk_086678A0
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080CB304
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080890A4
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	bl .L0808997E
	.align 2, 0
.L080890A0: .4byte gUnk_086678A0
.L080890A4:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r2, [sp, #0x44]
	ldr r0, [r2]
	mov r1, sb
	bl .L08089A0C
.L080890BC:
	mov r0, r8
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080891A0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080890D4
	b .L08089620
.L080890D4:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080890FC
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L080890F8 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x30]
	b .L0808966A
	.align 2, 0
.L080890F8: .4byte gUnk_08100034
.L080890FC:
	add r6, sp, #0xc
	adds r0, r6, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	ldr r3, [sp, #0x44]
	ldr r0, [r3]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	mov r8, r0
	add r5, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	mov r4, r8
	str r0, [r4]
	ldr r0, [sp, #0x40]
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0x10]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808919C @ =gUnk_086678A0
	ldr r1, [sp, #0x30]
	str r1, [sp]
	b .L080895D2
	.align 2, 0
.L0808919C: .4byte gUnk_086678A0
.L080891A0:
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080891AC
	b .L0808966C
.L080891AC:
	add r5, sp, #0xc
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetId__C4Food
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetId__C4Food
	cmp r6, r0
	beq .L080891DE
	mov r0, r8
	bl GetAmount__C9FoodStack
	cmp r0, #1
	beq .L080891DE
	b .L08089620
.L080891DE:
	add r0, sp, #0xc
	bl GetId__C4Food
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetId__C4Food
	cmp r4, r0
	bne .L080891F2
	b .L080892FC
.L080891F2:
	mov r0, r8
	bl GetAmount__C9FoodStack
	str r0, [sp, #0x48]
	cmp r0, #1
	beq .L08089200
	b .L080892FC
.L08089200:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089228
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089224 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x48]
	b .L0808966A
	.align 2, 0
.L08089224: .4byte gUnk_08100034
.L08089228:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #0x14
	mov sb, r0
	add r5, sp, #0x18
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	movs r2, #0x19
	add r2, sp
	mov r8, r2
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	mov r6, sp
	adds r6, #0x1a
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x14]
	str r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0x10
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, .L080892F8 @ =gUnk_086678A0
	ldr r0, [sp, #0x48]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CB304
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0xc
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [sp, #0x48]
	str r1, [sp]
	b .L0808975C
	.align 2, 0
.L080892F8: .4byte gUnk_086678A0
.L080892FC:
	mov r0, r8
	bl GetAmount__C9FoodStack
	cmp r0, #0x63
	bne .L08089308
	b .L0808966C
.L08089308:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089338
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089334 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
.L0808932C:
	movs r4, #0
	str r4, [sp, #0x30]
	b .L08089AC0
	.align 2, 0
.L08089334: .4byte gUnk_08100034
.L08089338:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x14
	bl __12RucksackItem
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sb
	b .L08089A0C
.L0808939A:
	adds r2, r7, #0
	adds r2, #0x90
	str r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	bl func_080CE184
	str r0, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	str r3, [sp, #0x5c]
	mov r4, sl
	cmp r4, #8
	ble .L080893BE
	b .L0808976C
.L080893BE:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r5, sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	mov r8, r5
	cmp r0, #0
	beq .L0808940E
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808940E
	b .L08089AC0
.L0808940E:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080894E4
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L080894E0 @ =gUnk_086678A0
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080CB304
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L080894B4
	b .L08089AC0
.L080894B4:
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080894CA
	b .L08089978
.L080894CA:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r3, sb
	ldr r0, [r3]
	b .L08089A0A
	.align 2, 0
.L080894E0: .4byte gUnk_086678A0
.L080894E4:
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080895E6
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L080895E0
	mov r0, r8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089524
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089520 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x30]
	b .L0808966A
	.align 2, 0
.L08089520: .4byte gUnk_08100034
.L08089524:
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r6, sp, #0xc
	adds r0, r6, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	mov r3, sb
	ldr r0, [r3]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r5, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r4, [sp, #0x50]
	ldr r0, [r4]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L080895AA
	b .L08089AC0
.L080895AA:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	adds r0, r6, #0

	non_word_aligned_thumb_func_start sub_080895C2
sub_080895C2: @ 0x080895C2
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L080895DC @ =gUnk_086678A0
	ldr r0, [sp, #0x30]
	str r0, [sp]
.L080895D2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L08089AC0
	.align 2, 0
.L080895DC: .4byte gUnk_086678A0
.L080895E0:
	movs r1, #0
	str r1, [sp, #0x30]
	b .L08089AC0
.L080895E6:
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L0808966C
	add r5, sp, #0xc
	adds r0, r5, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	adds r6, r0, #0
	adds r0, r5, #0
	bl GetId__C4Food
	cmp r6, r0
	beq .L08089626
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	cmp r0, #1
	beq .L08089626
.L08089620:
	movs r3, #0
	str r3, [sp, #0x30]
	b .L08089AC0
.L08089626:
	add r0, sp, #0x10
	bl GetId__C4Food
	adds r4, r0, #0
	add r0, sp, #0xc
	bl GetId__C4Food
	cmp r4, r0
	bne .L0808963A
	b .L08089AC0
.L0808963A:
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	str r0, [sp, #0x54]
	cmp r0, #1
	beq .L08089648
	b .L08089AC0
.L08089648:
	mov r0, r8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089678
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089674 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x54]
.L0808966A:
	str r1, [r0]
.L0808966C:
	movs r2, #0
	str r2, [sp, #0x30]
	b .L08089AC0
	.align 2, 0
.L08089674: .4byte gUnk_08100034
.L08089678:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #0x14
	mov sb, r0
	add r5, sp, #0x18
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	movs r2, #0x19
	add r2, sp
	mov r8, r2
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	mov r6, sp
	adds r6, #0x1a
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x14]
	str r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0x10
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, .L08089768 @ =gUnk_086678A0
	ldr r0, [sp, #0x54]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CB304
	ldr r1, [sp, #0x5c]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808973E
	b .L08089AC0
.L0808973E:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0xc
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0x54]
	str r2, [sp]
.L0808975C:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L08089AC0
	.align 2, 0
.L08089768: .4byte gUnk_086678A0
.L0808976C:
	adds r3, r7, #0
	adds r3, #0x94
	str r3, [sp, #0x58]
	ldr r0, [r3]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_080CE184
	mov r8, r0
	movs r4, #0x82
	lsls r4, r4, #1
	adds r6, r7, r4
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #8
	mov sb, r0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080897BE
	mov r0, sb
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080897BE
	b .L08089AC0
.L080897BE:
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089854
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r1, sp, #0xc
	mov r8, r1
	mov r0, r8
	bl __9FoodStack
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	ldr r3, [sp, #0x58]
	ldr r1, [r3]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L08089818
	b .L08089AC0
.L08089818:
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	mov r1, sb
	bl GetFood__C9FoodStack
	mov r0, r8
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl GetAmount__C9FoodStack
	ldr r2, .L08089850 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	b .L08089AC0
	.align 2, 0
.L08089850: .4byte gUnk_086678A0
.L08089854:
	mov r0, sb
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080898CC
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r5, sp, #0xc
	adds r0, r5, #0
	bl __9FoodStack
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r4, [r7, #0x7c]
	mov r8, r4
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r6, r0, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	ldr r2, .L080898C8 @ =gUnk_086678A0
	str r0, [sp]
	mov r0, r8
	adds r1, r6, #0
	adds r3, r4, #0
	bl func_080CC728
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x58]
	ldr r1, [r2]
	b .L0808996E
	.align 2, 0
.L080898C8: .4byte gUnk_086678A0
.L080898CC:
	add r4, sp, #0xc
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	adds r5, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sb
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	movs r1, #0
	cmp r5, r0
	bne .L080898F6
	movs r1, #1
.L080898F6:
	cmp r1, #0
	bne .L080898FC
	b .L08089A20
.L080898FC:
	mov r0, sb
	bl GetAmount__C9FoodStack
	adds r4, r0, #0
	movs r5, #0x63
	subs r4, r5, r4
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	cmp r4, r0
	blo .L0808998E
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #0x14
	bl __9FoodStack
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9FoodStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	ldr r4, [sp, #0x58]
	ldr r1, [r4]
.L0808996E:
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L08089978
	b .L08089AC0
.L08089978:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
.L0808997E:
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L08089AC0
.L0808998E:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	mov r0, sb
	bl GetAmount__C9FoodStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl SubtractAmount__9FoodStackUi
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	mov r0, sb
	bl GetAmount__C9FoodStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl AddAmount__9FoodStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x58]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L08089AC0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
.L08089A0A:
	ldr r1, [sp, #0x4c]
.L08089A0C:
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08089AC0
.L08089A20:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	add r1, sp, #4
	bl GetFood__C9FoodStack
	mov r0, r8
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	ldr r1, .L08089AD4 @ =gUnk_086678A0
	mov sl, r1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sl
	adds r3, r4, #0
	bl func_080CC728
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	ldr r3, [sp, #0x58]
	ldr r1, [r3]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L08089AC0
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	mov r1, sb
	bl GetFood__C9FoodStack
	mov r0, r8
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl GetAmount__C9FoodStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sl
	adds r3, r4, #0
	bl func_080CC728
.L08089AC0:
	add r4, sp, #0x30
	ldrb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08089AD4: .4byte gUnk_086678A0

	thumb_func_start func_08089AD8
func_08089AD8: @ 0x08089AD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	cmp r1, #0
	beq .L08089AF0
	b .L08089C8E
.L08089AF0:
	movs r0, #0xfc
	adds r0, r0, r7
	mov sl, r0
	ldr r1, [r0]
	add r0, sp, #4
	bl func_0800F20C
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl func_080CE184
	mov r8, r0
	add r4, sp, #8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089B34
	b .L08089C44
.L08089B34:
	add r0, sp, #0xc
	mov sb, r0
	adds r1, r4, #0
	bl GetFood__C9FoodStack
	add r0, sp, #4
	bl GetId__C4Food
	adds r4, r0, #0
	mov r0, sb
	bl GetId__C4Food
	cmp r4, r0
	bne .L08089B92
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08089EE4
.L08089B92:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r6]
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	mov r0, sl
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r4, #0
	bl func_0800F3B0
	ldr r4, [r7, #0x78]
	ldr r6, .L08089C40 @ =gUnk_086678A0
	mov r0, sb
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	b .L08089EE0
	.align 2, 0
.L08089C40: .4byte gUnk_086678A0
.L08089C44:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	b .L08089EBC
.L08089C8E:
	ldr r0, [sp, #0x1c]
	cmp r0, #8
	ble .L08089C96
	b .L08089EF0
.L08089C96:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl func_080CE184
	mov r8, r0
	add r4, sp, #8
	movs r0, #0x82
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089CF0
	b .L08089E4C
.L08089CF0:
	add r1, sp, #0xc
	mov sb, r1
	mov r0, sb
	adds r1, r4, #0
	bl GetFood__C9FoodStack
	add r0, sp, #4
	bl GetId__C4Food
	adds r4, r0, #0
	mov r0, sb
	bl GetId__C4Food
	cmp r4, r0
	bne .L08089D78
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x10
	bl __12RucksackItem
	ldr r0, [sp, #0x10]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08089EE4
.L08089D78:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r5, r0, #0
	add r6, sp, #0x10
	add r4, sp, #0x18
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x19
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x1a
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r5]
	mov r1, sl
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x14
	adds r0, r4, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x10]
	str r0, [r5]
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sb
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L08089E48 @ =gUnk_086678A0
	mov r8, r0
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	b .L08089EE0
	.align 2, 0
.L08089E48: .4byte gUnk_086678A0
.L08089E4C:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r1, sl
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
.L08089EBC:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L08089EEC @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
.L08089EE0:
	bl func_080CC728
.L08089EE4:
	adds r7, #0x90
	str r7, [sp, #0x34]
	b .L0808A2D8
	.align 2, 0
.L08089EEC: .4byte gUnk_086678A0
.L08089EF0:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	bne .L08089EFC
	movs r0, #0
	str r0, [sp, #0x20]
.L08089EFC:
	adds r4, r7, #0
	adds r4, #0x90
	ldr r0, [r4]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	bl func_080CE184
	str r0, [sp, #0x24]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #0x34]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq .L08089F30
	b .L0808A0D8
.L08089F30:
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x28]
	movs r0, #0xfc
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0]
	ldr r0, [sp, #0x28]
	bl func_0800F20C
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808A048
	add r1, sp, #0xc
	mov sb, r1
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r1, r0, #0
	mov r0, sb
	bl GetFood__C9FoodStack
	mov r0, sb
	bl GetId__C4Food
	adds r4, r0, #0
	ldr r0, [sp, #0x28]
	bl GetId__C4Food
	cmp r4, r0
	bne .L08089F7A
	b .L0808A2D8
.L08089F7A:
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F390
	mov r0, r8
	ldr r4, [r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r4, #0
	bl func_0800F3B0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r4, sp, #0x14
	adds r0, r4, #0
	ldr r1, [sp, #0x28]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r6]
	ldr r4, [r7, #0x78]
	ldr r6, .L0808A044 @ =gUnk_086678A0
	mov r0, sb
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808A01A
	b .L0808A2D8
.L0808A01A:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x28]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L0808A2D8
	.align 2, 0
.L0808A044: .4byte gUnk_086678A0
.L0808A048:
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x28]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808A0AA
	b .L0808A2D8
.L0808A0AA:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x28]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808A0D4 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808A2D8
	.align 2, 0
.L0808A0D4: .4byte gUnk_086678A0
.L0808A0D8:
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetFood__C12RucksackItem
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A110
	b .L0808A228
.L0808A110:
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x30]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r1, r0, #0
	ldr r0, [sp, #0x30]
	bl GetFood__C9FoodStack
	ldr r0, [sp, #0x30]
	bl GetId__C4Food
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetId__C4Food
	cmp r4, r0
	bne .L0808A13C
	b .L0808A2D8
.L0808A13C:
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	mov r8, r0
	add r1, sp, #0x10
	mov sb, r1
	add r4, sp, #0x14
	adds r0, r4, #0
	ldr r1, [sp, #0x30]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r6, sp
	adds r6, #0x15
	ldrb r0, [r6]
	lsls r0, r0, #8
	orrs r0, r1
	mov r5, sp
	adds r5, #0x16
	ldrb r1, [r5]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x10]
	mov r1, r8
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	mov r8, r0
	adds r0, r4, #0
	ldr r1, [sp, #0x2c]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	mov r1, r8
	str r0, [r1]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x30]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808A224 @ =gUnk_086678A0
	mov r8, r0
	movs r6, #1
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808A2D8
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CC728
	b .L0808A2D8
	.align 2, 0
.L0808A224: .4byte gUnk_086678A0
.L0808A228:
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x2c]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808A2D8
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808A2F0 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
.L0808A2D8:
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CECD0
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808A2F0: .4byte gUnk_086678A0

	thumb_func_start func_0808A2F4
func_0808A2F4: @ 0x0808A2F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r7, #0
	bne .L0808A380
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A312
	b .L0808A4AC
.L0808A312:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #0
	beq .L0808A322
	cmp r0, #1
	beq .L0808A344
	b .L0808A3F6
.L0808A322:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A338 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A33C @ =gUnk_08100084
	ldr r3, .L0808A340 @ =gUnk_08100088
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A338: .4byte gUnk_08117ABC
.L0808A33C: .4byte gUnk_08100084
.L0808A340: .4byte gUnk_08100088
.L0808A344:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x10
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808A3F6
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A374 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A378 @ =gUnk_08100084
	ldr r3, .L0808A37C @ =gUnk_08100088
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A374: .4byte gUnk_08117ABC
.L0808A378: .4byte gUnk_08100084
.L0808A37C: .4byte gUnk_08100088
.L0808A380:
	cmp r7, #8
	bgt .L0808A460
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808A3A8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808A3AA
.L0808A3A8:
	movs r2, #1
.L0808A3AA:
	adds r6, r2, #0
	cmp r6, #0
	beq .L0808A3B2
	b .L0808A4AC
.L0808A3B2:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808A440
	add r0, sp, #0xc
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x11
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A420
.L0808A3F6:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A41C @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808A4AC
	.align 2, 0
.L0808A41C: .4byte gUnk_08117ADC
.L0808A420:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A434 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A438 @ =gUnk_08100084
	ldr r3, .L0808A43C @ =gUnk_08100088
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A434: .4byte gUnk_08117ABC
.L0808A438: .4byte gUnk_08100084
.L0808A43C: .4byte gUnk_08100088
.L0808A440:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A454 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A458 @ =gUnk_08100084
	ldr r3, .L0808A45C @ =gUnk_08100088
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A454: .4byte gUnk_08117ABC
.L0808A458: .4byte gUnk_08100084
.L0808A45C: .4byte gUnk_08100088
.L0808A460:
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808A484
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808A486
.L0808A484:
	movs r2, #1
.L0808A486:
	adds r4, r2, #0
	cmp r4, #0
	bne .L0808A4AC
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A4B4 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A4B8 @ =gUnk_08100084
	ldr r3, .L0808A4BC @ =gUnk_08100088
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
.L0808A49E:
	bl func_08050E30
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
.L0808A4AC:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808A4B4: .4byte gUnk_08117ABC
.L0808A4B8: .4byte gUnk_08100084
.L0808A4BC: .4byte gUnk_08100088

	thumb_func_start func_0808A4C0
func_0808A4C0: @ 0x0808A4C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #0
	bne .L0808A4DC
	adds r0, #0xfc
	ldr r0, [r0]
	bl func_0800F390
	ldr r0, [r5, #0x78]
	bl func_080CC0B4
	b .L0808A552
.L0808A4DC:
	cmp r6, #8
	bgt .L0808A512
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808A552
.L0808A512:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CE184
	adds r1, r0, #0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	mov r0, sp
	bl __9FoodStack
	ldr r0, [sp]
	str r0, [r4]
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
.L0808A552:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808A55C
func_0808A55C: @ 0x0808A55C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808A7C8 @ =gUnk_0810008C
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L0808A5D4
	cmp r1, #0
	beq .L0808A5D4
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808A5D4:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_08088318
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808A7CC @ =gUnk_08100094
	str r0, [sp]
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L0808A634
	cmp r1, #0
	beq .L0808A634
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808A634:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	movs r0, #0xc8
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CE2FC
	adds r4, r7, #0
	adds r4, #0x94
	adds r5, r0, #0
	ldr r0, [r4]
	str r4, [sp, #0x18]
	cmp r5, r0
	beq .L0808A660
	cmp r0, #0
	beq .L0808A660
	movs r1, #3
	bl func_080CE3DC
.L0808A660:
	str r5, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080884F4
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	bl func_080CE598
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	movs r1, #0x8c
	adds r1, r1, r7
	mov r8, r1
	mov sb, r0
	ldr r5, [r1]
	mov r6, r8
	cmp sb, r5
	beq .L0808A6CA
	cmp r5, #0
	beq .L0808A6CA
	ldr r0, .L0808A7D0 @ =vtable_unk_080E5A28
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
.L0808A6CA:
	mov r2, sb
	mov r0, r8
	str r2, [r0]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	mov sl, r0
	ldr r5, [r1]
	mov sb, r8
	cmp sl, r5
	beq .L0808A720
	cmp r5, #0
	beq .L0808A720
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
	ldr r0, .L0808A7D0 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0808A720:
	mov r2, sl
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0808A7D4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L0808A7D8 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #0
	mov r8, r1
.L0808A786:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808A786
	mov r2, r8
	cmp r2, #0
	beq .L0808A7AC
	b .L0808AB1C
.L0808A7AC:
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L0808A786
	lsls r0, r0, #2
	ldr r1, .L0808A7DC @ =.L0808A7E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808A7C8: .4byte gUnk_0810008C
.L0808A7CC: .4byte gUnk_08100094
.L0808A7D0: .4byte vtable_unk_080E5A28
.L0808A7D4: .4byte vtable_unk_080E5B80
.L0808A7D8: .4byte 0x00000889
.L0808A7DC: .4byte .L0808A7E0
.L0808A7E0: @ jump table
	.4byte .L0808A7F4 @ case 0
	.4byte .L0808AA52 @ case 1
	.4byte .L0808AA88 @ case 2
	.4byte .L0808AAC6 @ case 3
	.4byte .L0808AAFA @ case 4
.L0808A7F4:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0808A81C
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #9
	ble .L0808A814
	cmp r0, #0xd
	bgt .L0808A814
	adds r0, r7, #0
	bl func_08088590
.L0808A814:
	ldr r0, [r6]
	bl func_080CDA44
	b .L0808A89A
.L0808A81C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0808A840
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0xd
	ble .L0808A838
	adds r0, r7, #0
	bl func_08088574
.L0808A838:
	ldr r0, [r6]
	bl func_080CDB08
	b .L0808A89A
.L0808A840:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0808A856
	ldr r0, [r6]
	bl func_080CDCD0
	b .L0808A89A
.L0808A856:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0808A86C
	ldr r0, [r6]
	bl func_080CDC00
	b .L0808A89A
.L0808A86C:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L0808A88E
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0808A890
.L0808A88E:
	movs r4, #1
.L0808A890:
	cmp r4, #0
	beq .L0808A8A6
	ldr r0, [r6]
	bl func_080CDD7C
.L0808A89A:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L0808AA40
.L0808A8A6:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0808A8B6
	b .L0808A9CE
.L0808A8B6:
	mov r2, sb
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808A8E6
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L0808A8D6
	adds r0, r3, #0
	movs r2, #0
	bl func_080CEC84
	b .L0808AA40
.L0808A8D6:
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r3, #0
	bl func_080CEC84
	b .L0808AA40
.L0808A8E6:
	ldr r0, [r6]
	ldr r4, [r0, #4]
	adds r0, r3, #0
	bl func_080CF050
	cmp r4, r0
	bne .L0808A97E
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #9
	ble .L0808A936
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808A936
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_08088BA0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808A958
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808A9BC
.L0808A936:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r4, r0, #0
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_08088688
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A976
.L0808A958:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, sb
	ldr r0, [r1]
	bl func_080CECD0
	b .L0808AA40
.L0808A976:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808A9BC
.L0808A97E:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_08088BA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A9B6
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808AA40
.L0808A9B6:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
.L0808A9BC:
	ldr r0, [r0]
	cmp r0, #1
	beq .L0808AA40
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808AA40
.L0808A9CE:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808AA28
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808A9F2
	adds r0, r1, #0
	bl func_080CECD0
	b .L0808AA40
.L0808A9F2:
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808AA40
	movs r0, #1
	mov r8, r0
	ldr r1, .L0808AA24 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808AA40
	.align 2, 0
.L0808AA24: .4byte 0x00000889
.L0808AA28:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0808AA40
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808A2F4
.L0808AA40:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L0808AA4A
	b .L0808A786
.L0808AA4A:
	adds r0, r7, #0
	bl func_080885AC
	b .L0808A786
.L0808AA52:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AA5E
	b .L0808A786
.L0808AA5E:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808AA80 @ =gUnk_08100084
	ldr r2, .L0808AA84 @ =gUnk_08100088
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	bl func_08050E0C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L0808A786
	.align 2, 0
.L0808AA80: .4byte gUnk_08100084
.L0808AA84: .4byte gUnk_08100088
.L0808AA88:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AA94
	b .L0808A786
.L0808AA94:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	beq .L0808AAA6
	cmp r0, #2
	beq .L0808AABC
	b .L0808AB06
.L0808AAA6:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_08089AD8
	b .L0808AB06
.L0808AABC:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808AB06
.L0808AAC6:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AAD2
	b .L0808A786
.L0808AAD2:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	bne .L0808AAE8
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808A4C0
.L0808AAE8:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	b .L0808AB16
.L0808AAFA:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AB06
	b .L0808A786
.L0808AB06:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
.L0808AB16:
	movs r0, #0
	str r0, [r1]
	b .L0808A786
.L0808AB1C:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
