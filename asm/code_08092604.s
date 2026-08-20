.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08092604
func_08092604: @ 0x08092604
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_0809152C
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
	beq .L08092634
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08092634:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08092640
func_08092640: @ 0x08092640
	push {r4, r5, lr}
	adds r4, r0, #0
	bl func_080CE19C
	ldr r0, .L08092688 @ =vtable_unk_080E7DD8
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x98
	movs r3, #0
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0xfc
	ldr r1, [r4, #8]
	ldr r5, .L0809268C @ =0x00001C34
	adds r0, r1, r5
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r4, r0
	subs r5, #8
	adds r0, r1, r5
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r5, #0xc
	adds r1, r1, r5
	str r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	str r3, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L08092688: .4byte vtable_unk_080E7DD8
.L0809268C: .4byte 0x00001C34

	thumb_func_start func_08092690
func_08092690: @ 0x08092690
	push {lr}
	ldr r2, .L080926A0 @ =vtable_unk_080E7DD8
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L080926A0: .4byte vtable_unk_080E7DD8

	thumb_func_start func_080926A4
func_080926A4: @ 0x080926A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r5, r7
	bhs .L08092708
.L080926B2:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	adds r1, r5, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092702
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r1, [r6, #0x78]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L08092750 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CB304
.L08092702:
	adds r5, #1
	cmp r5, r7
	blo .L080926B2
.L08092708:
	adds r7, r6, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092746
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r6, #0x78]
	ldr r6, .L08092750 @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080CBAF0
.L08092746:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08092750: .4byte gUnk_086678A0

	thumb_func_start func_08092754
func_08092754: @ 0x08092754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bhs .L080927DE
.L08092762:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080927D8
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L08092792
	cmp r0, #1
	beq .L080927A4
	b .L080927B8
.L08092792:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L080927B4
.L080927A4:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L080927B4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L080927B8:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080927C8
	movs r4, #0xb0
	lsls r4, r4, #1
.L080927C8:
	ldr r0, [r5, #0x7c]
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, .L08092808 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L080927D8:
	adds r6, #1
	cmp r6, r7
	blo .L08092762
.L080927DE:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080927F2
	b .L08092934
.L080927F2:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L080927FE
	b .L08092934
.L080927FE:
	lsls r0, r0, #2
	ldr r1, .L0809280C @ =.L08092810
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08092808: .4byte gUnk_086678A0
.L0809280C: .4byte .L08092810
.L08092810: @ jump table
	.4byte .L08092828 @ case 0
	.4byte .L08092864 @ case 1
	.4byte .L080928A4 @ case 2
	.4byte .L080928D8 @ case 3
	.4byte .L08092928 @ case 4
	.4byte .L08092934 @ case 5
.L08092828:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092858
	movs r6, #0xb0
	lsls r6, r6, #1
.L08092858:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092860 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08092916
	.align 2, 0
.L08092860: .4byte gUnk_086678A0
.L08092864:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092898
	movs r6, #0xb0
	lsls r6, r6, #1
.L08092898:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080928A0 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08092916
	.align 2, 0
.L080928A0: .4byte gUnk_086678A0
.L080928A4:
	ldr r0, [r5, #8]
	ldr r2, .L080928BC @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L080928C8
	ldr r0, [r5, #0x7c]
	ldr r1, .L080928C0 @ =gUnk_0858BA28
	ldr r2, .L080928C4 @ =0x000003DA
	b .L08092916
	.align 2, 0
.L080928BC: .4byte 0x00001C70
.L080928C0: .4byte gUnk_0858BA28
.L080928C4: .4byte 0x000003DA
.L080928C8:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080928D4 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L08092916
	.align 2, 0
.L080928D4: .4byte gUnk_0858BA28
.L080928D8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r5, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L08092934
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L08092910
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092908 @ =gUnk_0858BA28
	ldr r2, .L0809290C @ =0x0000073D
	b .L08092916
	.align 2, 0
.L08092908: .4byte gUnk_0858BA28
.L0809290C: .4byte 0x0000073D
.L08092910:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092920 @ =gUnk_0858BA28
	ldr r2, .L08092924 @ =0x00000734
.L08092916:
	movs r3, #1
	bl func_080CCE58
	b .L08092934
	.align 2, 0
.L08092920: .4byte gUnk_0858BA28
.L08092924: .4byte 0x00000734
.L08092928:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0809293C @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CCE58
.L08092934:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809293C: .4byte gUnk_086678A0

	thumb_func_start func_08092940
func_08092940: @ 0x08092940
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x98
	mov r1, r8
	strb r1, [r5]
	cmp r7, #0
	beq .L0809298E
	cmp r7, #9
	beq .L080929B4
	cmp r7, #8
	bgt .L08092A02
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	b .L080929D2
.L0809298E:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	add r2, sp, #8
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CF05C
	b .L08092A38
.L080929B4:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CF67C
	b .L08092A38
.L080929D2:
	adds r5, r6, #0
	adds r5, #0x98
	mov r0, sb
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #9
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl func_080CF05C
	b .L08092A38
.L08092A02:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
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
	bne .L08092A3A
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CFA38
.L08092A38:
	mov r8, r0
.L08092A3A:
	mov r0, r8
	cmp r0, #0
	beq .L08092A50
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L08092A5E
.L08092A50:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08092A6C @ =gUnk_081003F0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L08092A5E:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08092A6C: .4byte gUnk_081003F0

	thumb_func_start func_08092A70
func_08092A70: @ 0x08092A70
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	cmp r1, #0
	bne .L08092A8C
	adds r0, #0xfc
	ldr r0, [r0]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092A8A
	b .L08092C84
.L08092A8A:
	b .L08092C62
.L08092A8C:
	cmp r1, #8
	bgt .L08092AC2
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #0xc
	movs r2, #2
	bl memcpy
	add r0, sp, #0xc
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092AC0
	b .L08092C84
.L08092AC0:
	b .L08092C62
.L08092AC2:
	cmp r1, #9
	beq .L08092AC8
	b .L08092C04
.L08092AC8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092ADC
	b .L08092C84
.L08092ADC:
	ldr r0, [r4]
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #1
	beq .L08092B5C
	cmp r6, #1
	bgt .L08092AF2
	cmp r6, #0
	beq .L08092AF8
	b .L08092C62
.L08092AF2:
	cmp r6, #2
	beq .L08092BDC
	b .L08092C62
.L08092AF8:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092B28
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092B24 @ =gUnk_081003F4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, r2
	b .L08092C80
	.align 2, 0
.L08092B24: .4byte gUnk_081003F4
.L08092B28:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092B50 @ =gUnk_08100420
	ldr r2, .L08092B54 @ =gUnk_08100430
	ldr r3, .L08092B58 @ =gUnk_08100434
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	b .L08092CB8
	.align 2, 0
.L08092B50: .4byte gUnk_08100420
.L08092B54: .4byte gUnk_08100430
.L08092B58: .4byte gUnk_08100434
.L08092B5C:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092B8C
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092B88 @ =gUnk_081003F4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, r2
	b .L08092C80
	.align 2, 0
.L08092B88: .4byte gUnk_081003F4
.L08092B8C:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x14
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L08092C62
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092BD0 @ =gUnk_08100420
	ldr r2, .L08092BD4 @ =gUnk_08100430
	ldr r3, .L08092BD8 @ =gUnk_08100434
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	b .L08092CBC
	.align 2, 0
.L08092BD0: .4byte gUnk_08100420
.L08092BD4: .4byte gUnk_08100430
.L08092BD8: .4byte gUnk_08100434
.L08092BDC:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092C00 @ =gUnk_08100438
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x45
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r5, r2
	str r6, [r0]
	b .L08092C84
	.align 2, 0
.L08092C00: .4byte gUnk_08100438
.L08092C04:
	add r6, sp, #0x10
	movs r2, #0x82
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
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092C84
	adds r0, r6, #0
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092C62
	adds r0, r6, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L08092C94
	adds r0, r6, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x15
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq .L08092C94
.L08092C62:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092C90 @ =gUnk_081003F4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
.L08092C80:
	movs r0, #2
	str r0, [r1]
.L08092C84:
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L08092CBC
	.align 2, 0
.L08092C90: .4byte gUnk_081003F4
.L08092C94:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092CC4 @ =gUnk_08100420
	ldr r2, .L08092CC8 @ =gUnk_08100430
	ldr r3, .L08092CCC @ =gUnk_08100434
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, r2
.L08092CB8:
	movs r0, #1
	str r0, [r1]
.L08092CBC:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08092CC4: .4byte gUnk_08100420
.L08092CC8: .4byte gUnk_08100430
.L08092CCC: .4byte gUnk_08100434

	thumb_func_start func_08092CD0
func_08092CD0: @ 0x08092CD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #9
	bne .L08092CFC
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F528
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092CF8 @ =gUnk_086678A0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #1
	bl func_080CCE58
	b .L08092D38
	.align 2, 0
.L08092CF8: .4byte gUnk_086678A0
.L08092CFC:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl TryWrap__12RucksackItem
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, .L08092D58 @ =gUnk_086678A0
	movs r3, #0xb0
	lsls r3, r3, #1
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CC728
.L08092D38:
	ldr r0, [r5, #8]
	ldr r1, .L08092D5C @ =0x00001AA8
	adds r0, r0, r1
	movs r1, #0x64
	bl func_0809ACC0
	ldr r0, [r5, #8]
	ldr r1, .L08092D60 @ =0x00001CD4
	adds r0, r0, r1
	movs r1, #1
	bl func_080A0A54
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08092D58: .4byte gUnk_086678A0
.L08092D5C: .4byte 0x00001AA8
.L08092D60: .4byte 0x00001CD4

	thumb_func_start func_08092D64
func_08092D64: @ 0x08092D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x82
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
	ldr r0, .L08092FA0 @ =gUnk_08100450
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
	beq .L08092DDC
	cmp r1, #0
	beq .L08092DDC
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08092DDC:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_080926A4
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
	ldr r0, .L08092FA4 @ =gUnk_08100458
	str r0, [sp]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r3, r8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L08092E3C
	cmp r1, #0
	beq .L08092E3C
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08092E3C:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	adds r0, r7, #0
	mov r1, r8
	bl func_08092754
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	adds r6, r7, #0
	adds r6, #0x8c
	mov r8, r0
	ldr r5, [r6]
	mov sb, r6
	cmp r8, r5
	beq .L08092E9C
	cmp r5, #0
	beq .L08092E9C
	ldr r0, .L08092FA8 @ =vtable_unk_080E5A28
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
.L08092E9C:
	mov r0, r8
	str r0, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	adds r6, r0, #0
	ldr r5, [r1]
	cmp r6, r5
	beq .L08092EEE
	cmp r5, #0
	beq .L08092EEE
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
	ldr r0, .L08092FA8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L08092EEE:
	mov r2, r8
	str r6, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092940
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #8
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
	ldr r0, .L08092FAC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L08092FB0 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r2, #0
	str r2, [sp, #0x10]
	mov sl, r2
.L08092F56:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne .L08092F56
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq .L08092F7E
	b .L08093194
.L08092F7E:
	mov r6, sb
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	cmp r0, #1
	bne .L08092F94
	b .L080930B8
.L08092F94:
	cmp r0, #1
	bgt .L08092FB4
	cmp r0, #0
	beq .L08092FBC
	b .L08092F56
	.align 2, 0
.L08092FA0: .4byte gUnk_08100450
.L08092FA4: .4byte gUnk_08100458
.L08092FA8: .4byte vtable_unk_080E5A28
.L08092FAC: .4byte vtable_unk_080E5B80
.L08092FB0: .4byte 0x00000889
.L08092FB4:
	cmp r0, #2
	bne .L08092FBA
	b .L08093128
.L08092FBA:
	b .L08092F56
.L08092FBC:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08092FD2
	ldr r0, [r6]
	bl func_080CDA44
	b .L08093044
.L08092FD2:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08092FE8
	ldr r0, [r6]
	bl func_080CDB08
	b .L08093044
.L08092FE8:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08092FFE
	ldr r0, [r6]
	bl func_080CDCD0
	b .L08093044
.L08092FFE:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08093014
	ldr r0, [r6]
	bl func_080CDC00
	b .L08093044
.L08093014:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L08093036
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08093038
.L08093036:
	movs r4, #1
.L08093038:
	cmp r4, #0
	beq .L08093050
	mov r2, sb
	ldr r0, [r2]
	bl func_080CDD7C
.L08093044:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L080930A0
.L08093050:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L0809306C
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092A70
	b .L080930A0
.L0809306C:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080930A0
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	ldr r1, .L080930B4 @ =gUnk_08100460
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #1
	mov sl, r2
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
.L080930A0:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L080930AC
	b .L08092F56
.L080930AC:
	adds r0, r7, #0
	bl func_08092940
	b .L08092F56
	.align 2, 0
.L080930B4: .4byte gUnk_08100460
.L080930B8:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L080930C4
	b .L08092F56
.L080930C4:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_08050DF0
	adds r5, r0, #0
	cmp r5, #1
	beq .L080930DA
	cmp r5, #2
	beq .L08093108
	b .L08092F56
.L080930DA:
	adds r0, r4, #0
	ldr r1, .L08093104 @ =gUnk_08100490
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092CD0
	movs r2, #1
	mov sl, r2
	movs r0, #2
	mov r1, r8
	str r0, [r1]
	b .L08092F56
	.align 2, 0
.L08093104: .4byte gUnk_08100490
.L08093108:
	adds r0, r4, #0
	ldr r1, .L08093124 @ =gUnk_081004BC
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	mov r2, r8
	str r5, [r2]
	b .L08092F56
	.align 2, 0
.L08093124: .4byte gUnk_081004BC
.L08093128:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08093134
	b .L08092F56
.L08093134:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050E5C
	mov r0, sl
	cmp r0, #0
	beq .L0809317C
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08093170
	movs r1, #1
	str r1, [sp, #0x10]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L08093178 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L08093170:
	mov r2, r8
	str r4, [r2]
	b .L08093188
	.align 2, 0
.L08093178: .4byte 0x00000889
.L0809317C:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092940
.L08093188:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b .L08092F56
.L08093194:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080931B0
func_080931B0: @ 0x080931B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L080931DC @ =vtable_unk_080E7DE4
	str r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r5, #0
	bl func_08092640
	str r0, [r4, #4]
	ldr r1, [r6]
	movs r0, #0
	str r0, [r6]
	str r1, [r4, #8]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080931DC: .4byte vtable_unk_080E7DE4

