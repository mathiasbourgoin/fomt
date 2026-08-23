.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_0808C664
func_0808C664: @ 0x0808C664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r5, r7
	bhs .L0808C6EE
.L0808C672:
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
	bne .L0808C6E8
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L0808C6A2
	cmp r0, #1
	beq .L0808C6B4
	b .L0808C6C8
.L0808C6A2:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L0808C6C4
.L0808C6B4:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L0808C6C4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L0808C6C8:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C6D8
	movs r4, #0xb0
	lsls r4, r4, #1
.L0808C6D8:
	ldr r0, [r6, #0x78]
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	ldr r2, .L0808C718 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CB304
.L0808C6E8:
	adds r5, #1
	cmp r5, r7
	blo .L0808C672
.L0808C6EE:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C700
	b .L0808C834
.L0808C700:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0808C70C
	b .L0808C834
.L0808C70C:
	lsls r0, r0, #2
	ldr r1, .L0808C71C @ =.L0808C720
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808C718: .4byte gUnk_086678A0
.L0808C71C: .4byte .L0808C720
.L0808C720: @ jump table
	.4byte .L0808C738 @ case 0
	.4byte .L0808C770 @ case 1
	.4byte .L0808C7AC @ case 2
	.4byte .L0808C7E0 @ case 3
	.4byte .L0808C828 @ case 4
	.4byte .L0808C834 @ case 5
.L0808C738:
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
	beq .L0808C762
	movs r5, #0xb0
	lsls r5, r5, #1
.L0808C762:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C76C @ =gUnk_086678A0
	adds r2, r5, #0
	b .L0808C816
	.align 2, 0
.L0808C76C: .4byte gUnk_086678A0
.L0808C770:
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
	beq .L0808C79E
	movs r5, #0xb0
	lsls r5, r5, #1
.L0808C79E:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C7A8 @ =gUnk_086678A0
	adds r2, r5, #0
	b .L0808C816
	.align 2, 0
.L0808C7A8: .4byte gUnk_086678A0
.L0808C7AC:
	ldr r0, [r6, #8]
	ldr r2, .L0808C7C4 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L0808C7D0
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C7C8 @ =gUnk_0858BA28
	ldr r2, .L0808C7CC @ =0x000003DA
	b .L0808C816
	.align 2, 0
.L0808C7C4: .4byte 0x00001C70
.L0808C7C8: .4byte gUnk_0858BA28
.L0808C7CC: .4byte 0x000003DA
.L0808C7D0:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C7DC @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L0808C816
	.align 2, 0
.L0808C7DC: .4byte gUnk_0858BA28
.L0808C7E0:
	ldr r0, [r4]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r6, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0808C834
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L0808C810
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C808 @ =gUnk_0858BA28
	ldr r2, .L0808C80C @ =0x0000073D
	b .L0808C816
	.align 2, 0
.L0808C808: .4byte gUnk_0858BA28
.L0808C80C: .4byte 0x0000073D
.L0808C810:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C820 @ =gUnk_0858BA28
	ldr r2, .L0808C824 @ =0x00000734
.L0808C816:
	movs r3, #1
	bl func_080CBAF0
	b .L0808C834
	.align 2, 0
.L0808C820: .4byte gUnk_0858BA28
.L0808C824: .4byte 0x00000734
.L0808C828:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C83C @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CBAF0
.L0808C834:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C83C: .4byte gUnk_086678A0

	thumb_func_start func_0808C840
func_0808C840: @ 0x0808C840
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
.L0808C84A:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r1, r7, #3
	adds r1, r1, r5
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C8A4
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	ldr r1, [r6, #0x7c]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L0808C8A0 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808C8AC
	.align 2, 0
.L0808C8A0: .4byte gUnk_086678A0
.L0808C8A4:
	ldr r0, [r6, #0x7c]
	adds r1, r5, #0
	bl func_080CCDEC
.L0808C8AC:
	adds r5, #1
	cmp r5, #7
	bls .L0808C84A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808C8BC
func_0808C8BC: @ 0x0808C8BC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEB80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808C840
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808C8D8
func_0808C8D8: @ 0x0808C8D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEBC0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808C840
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808C8F4
func_0808C8F4: @ 0x0808C8F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x98
	strb r7, [r6]
	cmp r1, #0
	bne .L0808C922
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C9A2
	ldr r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CF67C
	b .L0808C9A0
.L0808C922:
	cmp r1, #8
	bgt .L0808C95C
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
	bne .L0808C9A2
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CFA38
	b .L0808C9A0
.L0808C95C:
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
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C9A2
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetArticleStackAt__5ShelfUi
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetDesc__C7Article
.L0808C9A0:
	adds r7, r0, #0
.L0808C9A2:
	cmp r7, #0
	beq .L0808C9B6
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808C9C4
.L0808C9B6:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808C9CC @ =gUnk_081000D0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808C9C4:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C9CC: .4byte gUnk_081000D0

	thumb_func_start func_0808C9D0
func_0808C9D0: @ 0x0808C9D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp, #0x2c]
	movs r0, #1
	str r0, [sp, #0x30]
	cmp r1, #0
	bne .L0808C9EC
	b .L0808CEB0
.L0808C9EC:
	cmp r1, #8
	ble .L0808C9F2
	b .L0808CBBE
.L0808C9F2:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0808CA80
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
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
	beq .L0808CA2C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808CA2E
.L0808CA2C:
	movs r1, #1
.L0808CA2E:
	cmp r1, #0
	beq .L0808CA34
	b .L0808CEB0
.L0808CA34:
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
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
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_0800F418
	b .L0808CEB0
.L0808CA80:
	mov r3, r8
	ldr r0, [r3]
	bl func_0800F204
	cmp r0, #5
	bls .L0808CA8E
	b .L0808CEB0
.L0808CA8E:
	lsls r0, r0, #2
	ldr r1, .L0808CA98 @ =.L0808CA9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808CA98: .4byte .L0808CA9C
.L0808CA9C: @ jump table
	.4byte .L0808CAB4 @ case 0
	.4byte .L0808CAB4 @ case 1
	.4byte .L0808CDFE @ case 2
	.4byte .L0808CDFE @ case 3
	.4byte .L0808CDFE @ case 4
	.4byte .L0808CEB0 @ case 5
.L0808CAB4:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
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
	beq .L0808CAE8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808CAEA
.L0808CAE8:
	movs r1, #1
.L0808CAEA:
	cmp r1, #0
	bne .L0808CB6A
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
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
	mov r4, r8
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
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [sp, #0x14]
	str r1, [sp, #0x24]
	bl func_0800F418
	b .L0808CEB0
.L0808CB6A:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
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
	mov r2, r8
	ldr r1, [r2]
	bl func_0800F294
	mov r3, r8
	ldr r0, [r3]
	bl func_0800F390
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	b .L0808CEB0
.L0808CBBE:
	adds r0, r7, #0
	mov r1, sb
	ldr r2, [sp, #0x2c]
	bl func_080CE184
	mov sl, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0808CCAA
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CC02
	b .L0808CEB0
.L0808CC02:
	ldr r4, [r4]
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800F3E8
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl SubtractAmount__12ArticleStackUi
	ldr r4, [r7, #0x78]
	ldr r5, .L0808CC80 @ =gUnk_086678A0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #0x28
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r2, [sp, #0x2c]
	cmp r0, r2
	beq .L0808CC56
	b .L0808CEB0
.L0808CC56:
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CC84
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808CEB0
	.align 2, 0
.L0808CC80: .4byte gUnk_086678A0
.L0808CC84:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808CEB0
.L0808CCAA:
	mov r3, r8
	ldr r0, [r3]
	bl func_0800F204
	cmp r0, #5
	bls .L0808CCB8
	b .L0808CEB0
.L0808CCB8:
	lsls r0, r0, #2
	ldr r1, .L0808CCC4 @ =.L0808CCC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808CCC4: .4byte .L0808CCC8
.L0808CCC8: @ jump table
	.4byte .L0808CEAC @ case 0
	.4byte .L0808CCE0 @ case 1
	.4byte .L0808CEAC @ case 2
	.4byte .L0808CEAC @ case 3
	.4byte .L0808CEAC @ case 4
	.4byte .L0808CEB0 @ case 5
.L0808CCE0:
	mov r4, r8
	ldr r0, [r4]
	bl func_0800F258
	mov r6, sp
	adds r6, #0x2a
	strb r0, [r6]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CCFC
	b .L0808CE08
.L0808CCFC:
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	bls .L0808CD0C
	movs r4, #0
	str r4, [sp, #0x30]
	b .L0808CEB0
.L0808CD0C:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808CDC0
	ldr r0, [r4]
	bl func_0800F390
	ldr r4, [r4]
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800F3E8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	movs r2, #0x2a
	add r2, sp
	ldrb r1, [r2]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	ldr r6, .L0808CDBC @ =gUnk_086678A0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x29
	strb r1, [r0]
	bl GetIconId__C7Article
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
	ldr r3, [sp, #0x2c]
	cmp r0, r3
	beq .L0808CD90
	b .L0808CEB0
.L0808CD90:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x2a
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L0808CEB0
	.align 2, 0
.L0808CDBC: .4byte gUnk_086678A0
.L0808CDC0:
	mov r0, sp
	adds r0, #0x2a
	bl GetId__C7Article
	adds r4, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2b
	strb r1, [r0]
	bl GetId__C7Article
	eors r0, r4
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0808CDFE
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808CE04 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #1
	str r0, [r1]
.L0808CDFE:
	movs r0, #0
	str r0, [sp, #0x30]
	b .L0808CEB0
	.align 2, 0
.L0808CE04: .4byte gUnk_081000D4
.L0808CE08:
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808CE88
	mov r2, r8
	ldr r0, [r2]
	bl func_0800F390
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	ldrb r1, [r6]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r4, [sp, #0x2c]
	cmp r0, r4
	bne .L0808CEB0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808CE84 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808CEB0
	.align 2, 0
.L0808CE84: .4byte gUnk_086678A0
.L0808CE88:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808CEA8 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
	movs r1, #0
	str r1, [sp, #0x30]
	b .L0808CEB0
	.align 2, 0
.L0808CEA8: .4byte gUnk_081000D4
.L0808CEAC:
	movs r2, #0
	str r2, [sp, #0x30]
.L0808CEB0:
	add r3, sp, #0x30
	ldrb r0, [r3]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0808CEC4
func_0808CEC4: @ 0x0808CEC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	str r1, [sp, #0x3c]
	mov sb, r2
	movs r0, #1
	str r0, [sp, #0x40]
	cmp r2, #0
	bne .L0808CEF0
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	b .L0808D042
.L0808CEF0:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq .L0808CEF8
	b .L0808D0C0
.L0808CEF8:
	mov r2, sb
	cmp r2, #8
	bgt .L0808CF0C
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_0808C9D0
	bl .L0808DD3A
.L0808CF0C:
	adds r6, r7, #0
	adds r6, #0xfc
	ldr r0, [r6]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CF32
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_0808C9D0
	bl .L0808DD3A
.L0808CF32:
	ldr r0, [r6]
	bl func_0800F204
	cmp r0, #1
	beq .L0808CF40
	bl .L0808D8A2
.L0808CF40:
	ldr r1, [r6]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	add r4, sp, #0x2c
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x44]
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	add r5, sp, #8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	adds r0, r5, #0
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D004
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808CFE4
	ldr r0, [r6]
	bl func_0800F390
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl .L0808D83C
.L0808CFE4:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D000 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x40]
	str r2, [r0]
	bl .L0808D8A2
	.align 2, 0
.L0808D000: .4byte gUnk_081000D4
.L0808D004:
	adds r0, r4, #0
	bl GetId__C7Article
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2d
	strb r1, [r0]
	bl GetId__C7Article
	eors r0, r4
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0808D050
	adds r0, r5, #0
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	beq .L0808D036
	bl .L0808D8EC
.L0808D036:
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
.L0808D042:
	bl func_0808C9D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x40]
	bl .L0808DD3A
.L0808D050:
	adds r0, r5, #0
	bl GetAmount__C12ArticleStack
	cmp r0, #0x63
	bne .L0808D05E
	bl .L0808D8A2
.L0808D05E:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808D09E
	ldr r0, [r6]
	bl func_0800F390
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl .L0808DC7A
.L0808D09E:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D0BC @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [sp, #0x40]
	str r1, [r0]
	bl .L0808D8EC
	.align 2, 0
.L0808D0BC: .4byte gUnk_081000D4
.L0808D0C0:
	ldr r3, [sp, #0x3c]
	cmp r3, #8
	ble .L0808D0C8
	b .L0808D636
.L0808D0C8:
	mov r0, sb
	cmp r0, #8
	ble .L0808D0D0
	b .L0808D296
.L0808D0D0:
	add r4, sp, #0x10
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	adds r1, r3, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CB2E8
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add r4, sp, #0x1c
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CB2E8
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r6, sp, #8
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D158
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D158
	bl .L0808DD3A
.L0808D158:
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D1D0
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
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
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	bl .L0808DD3A
.L0808D1D0:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D22A
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
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
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808D276
.L0808D22A:
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
.L0808D276:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	bl .L0808DD3A
.L0808D296:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x48]
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
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
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	add r4, sp, #8
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D3A4
	add r0, sp, #8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D302
	bl .L0808DD3A
.L0808D302:
	add r0, sp, #8
	bl GetArticle__C12ArticleStack
	mov r5, sp
	adds r5, #0x2e
	strb r0, [r5]
	ldr r3, [sp, #0x48]
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	ldrb r1, [r5]
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl SubtractAmount__12ArticleStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808D388 @ =gUnk_086678A0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080CB304
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D38C
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	bl .L0808DBEC
	.align 2, 0
.L0808D388: .4byte gUnk_086678A0
.L0808D38C:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl .L0808DC7A
.L0808D3A4:
	add r0, sp, #8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D45E
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #1
	beq .L0808D3BC
	b .L0808D8A2
.L0808D3BC:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D3E8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D3E4 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x40]
	str r2, [r0]
	b .L0808D8A2
	.align 2, 0
.L0808D3E4: .4byte gUnk_081000D4
.L0808D3E8:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	mov r6, sp
	adds r6, #0x2f
	strb r0, [r6]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r5, sp, #0xc
	ldrb r1, [r6]
	adds r0, r5, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	ldr r2, [sp, #0x48]
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
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
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	b .L0808D83C
.L0808D45E:
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #1
	beq .L0808D46A
	b .L0808D85C
.L0808D46A:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	add r5, sp, #0x30
	strb r0, [r5]
	add r0, sp, #8
	bl GetArticle__C12ArticleStack
	mov r4, sp
	adds r4, #0x31
	strb r0, [r4]
	adds r0, r5, #0
	bl GetId__C7Article
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetId__C7Article
	cmp r6, r0
	beq .L0808D49E
	add r0, sp, #8
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	beq .L0808D49E
	b .L0808D8EC
.L0808D49E:
	add r0, sp, #0x30
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x31
	bl GetId__C7Article
	cmp r4, r0
	beq .L0808D598
	add r0, sp, #8
	bl GetAmount__C12ArticleStack
	mov r8, r0
	cmp r0, #1
	bne .L0808D598
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D4E8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D4E4 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r1, r8
	str r1, [r0]
	b .L0808D8EC
	.align 2, 0
.L0808D4E4: .4byte gUnk_081000D4
.L0808D4E8:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	add r0, sp, #0x30
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r5, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	movs r2, #0x31
	add r2, sp
	ldrb r1, [r2]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x31
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, .L0808D594 @ =gUnk_086678A0
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CB304
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x30
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, r8
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808D594: .4byte gUnk_086678A0
.L0808D598:
	add r0, sp, #8
	bl GetAmount__C12ArticleStack
	cmp r0, #0x63
	bne .L0808D5A4
	b .L0808D8EC
.L0808D5A4:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D5D4
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D5D0 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x40]
	b .L0808DD3A
	.align 2, 0
.L0808D5D0: .4byte gUnk_081000D4
.L0808D5D4:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	b .L0808DC7A
.L0808D636:
	adds r3, r7, #0
	adds r3, #0x90
	str r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	bl func_080CE184
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x58]
	mov r1, sb
	cmp r1, #8
	ble .L0808D65A
	b .L0808D9B8
.L0808D65A:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D6AC
	add r0, sp, #8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D6AC
	b .L0808DD3A
.L0808D6AC:
	add r0, sp, #8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D76C
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0xc
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl SubtractAmount__12ArticleStackUi
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x32
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808D768 @ =gUnk_086678A0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r5, #0
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
	beq .L0808D73E
	b .L0808DD3A
.L0808D73E:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D754
	b .L0808DBE6
.L0808D754:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3]
	b .L0808DC78
	.align 2, 0
.L0808D768: .4byte gUnk_086678A0
.L0808D76C:
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D862
	add r0, sp, #8
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808D85C
	add r0, sp, #8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D7AC
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D7A8 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x40]
	str r2, [r0]
	b .L0808D8A2
	.align 2, 0
.L0808D7A8: .4byte gUnk_081000D4
.L0808D7AC:
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r0, sp, #8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808D820
	b .L0808DD3A
.L0808D820:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x33
	strb r1, [r0]
.L0808D83C:
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808D858 @ =gUnk_086678A0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808D858: .4byte gUnk_086678A0
.L0808D85C:
	movs r1, #0
	str r1, [sp, #0x40]
	b .L0808DD3A
.L0808D862:
	add r0, sp, #8
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808D8EC
	add r0, sp, #8
	bl GetArticle__C12RucksackItem
	mov r5, sp
	adds r5, #0x35
	strb r0, [r5]
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	add r4, sp, #0x34
	strb r0, [r4]
	adds r0, r4, #0
	bl GetId__C7Article
	adds r6, r0, #0
	adds r0, r5, #0
	bl GetId__C7Article
	mov sl, r5
	mov r8, r4
	cmp r6, r0
	beq .L0808D8A8
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	beq .L0808D8A8
.L0808D8A2:
	movs r3, #0
	str r3, [sp, #0x40]
	b .L0808DD3A
.L0808D8A8:
	mov r0, r8
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sl
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808D8BC
	b .L0808DD3A
.L0808D8BC:
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	adds r6, r0, #0
	cmp r6, #1
	beq .L0808D8CA
	b .L0808DD3A
.L0808D8CA:
	add r0, sp, #8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D8F8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D8F4 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
.L0808D8EC:
	movs r2, #0
	str r2, [sp, #0x40]
	b .L0808DD3A
	.align 2, 0
.L0808D8F4: .4byte gUnk_081000D4
.L0808D8F8:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	mov r0, sl
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r5, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, r8
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808D9B4 @ =gUnk_086678A0
	mov r8, r0
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	ldr r1, [sp, #0x58]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808D98C
	b .L0808DD3A
.L0808D98C:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sl
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808D9B4: .4byte gUnk_086678A0
.L0808D9B8:
	adds r2, r7, #0
	adds r2, #0x94
	str r2, [sp, #0x54]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	movs r3, #0x82
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #8
	mov r8, r0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	mov r0, r8
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DA16
	mov r0, r8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DA16
	b .L0808DD3A
.L0808DA16:
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DAB8
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12ArticleStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808DA78
	b .L0808DD3A
.L0808DA78:
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	bl GetAmount__C12ArticleStack
	ldr r2, .L0808DAB4 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808DAB4: .4byte gUnk_086678A0
.L0808DAB8:
	mov r0, r8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DB30
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12ArticleStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	ldr r2, .L0808DB2C @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808DBD0
	.align 2, 0
.L0808DB2C: .4byte gUnk_086678A0
.L0808DB30:
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #0x38
	strb r1, [r0]
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, r8
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C7Article
	movs r1, #0
	cmp r4, r0
	bne .L0808DB5C
	movs r1, #1
.L0808DB5C:
	cmp r1, #0
	bne .L0808DB62
	b .L0808DC8E
.L0808DB62:
	mov r0, r8
	bl GetAmount__C12ArticleStack
	adds r4, r0, #0
	movs r5, #0x63
	subs r4, r5, r4
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	cmp r4, r0
	blo .L0808DBFC
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12ArticleStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__12ArticleStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
.L0808DBD0:
	ldr r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808DBE6
	b .L0808DD3A
.L0808DBE6:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
.L0808DBEC:
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808DD3A
.L0808DBFC:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	mov r0, r8
	bl GetAmount__C12ArticleStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl SubtractAmount__12ArticleStackUi
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	mov r0, r8
	bl GetAmount__C12ArticleStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl AddAmount__12ArticleStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L0808DD3A
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
.L0808DC78:
	ldr r1, [sp, #0x4c]
.L0808DC7A:
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808DD3A
.L0808DC8E:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3a
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	ldr r3, .L0808DD50 @ =gUnk_086678A0
	mov sb, r3
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L0808DD3A
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3b
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	bl GetAmount__C12ArticleStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
.L0808DD3A:
	add r3, sp, #0x40
	ldrb r0, [r3]
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0808DD50: .4byte gUnk_086678A0

	thumb_func_start func_0808DD54
func_0808DD54: @ 0x0808DD54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r1, #0
	beq .L0808DD6C
	b .L0808DEC6
.L0808DD6C:
	movs r0, #0xfc
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	bl func_0800F258
	add r1, sp, #0x10
	mov r8, r1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	bl func_080CE184
	mov sb, r0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r6, r7, r2
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808DE94
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	movs r1, #0x11
	add r1, sp
	mov r8, r1
	strb r0, [r1]
	add r0, sp, #0x10
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, r8
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808DE18
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	mov r2, sl
	ldr r0, [r2]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808E0DC
.L0808DE18:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	mov r0, sp
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	mov r2, sl
	ldr r0, [r2]
	mov r2, r8
	ldrb r1, [r2]
	bl func_0800F3E8
	ldr r4, [r7, #0x78]
	ldr r6, .L0808DE90 @ =gUnk_086678A0
	mov r0, r8
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	b .L0808E0D8
	.align 2, 0
.L0808DE90: .4byte gUnk_086678A0
.L0808DE94:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	b .L0808E0B4
.L0808DEC6:
	ldr r2, [sp, #0x18]
	cmp r2, #8
	ble .L0808DECE
	b .L0808E0E8
.L0808DECE:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	movs r1, #0x12
	add r1, sp
	mov r8, r1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	bl func_080CE184
	mov sb, r0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r6, r7, r2
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DF30
	b .L0808E05C
.L0808DF30:
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	movs r1, #0x13
	add r1, sp
	mov r8, r1
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x12
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, r8
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808DFBC
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	mov r2, sl
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808E0DC
.L0808DFBC:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	mov r0, sp
	ldrb r1, [r0, #0x12]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r5, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, r8
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808E058 @ =gUnk_086678A0
	mov r8, r0
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x12
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	b .L0808E0D8
	.align 2, 0
.L0808E058: .4byte gUnk_086678A0
.L0808E05C:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r5, sp, #0xc
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r5, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
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
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
.L0808E0B4:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, r8
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808E0E4 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
.L0808E0D8:
	bl func_080CC728
.L0808E0DC:
	adds r7, #0x90
	str r7, [sp, #0x20]
	b .L0808E426
	.align 2, 0
.L0808E0E4: .4byte gUnk_086678A0
.L0808E0E8:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bne .L0808E0F4
	movs r0, #0
	str r0, [sp, #0x1c]
.L0808E0F4:
	adds r4, r7, #0
	adds r4, #0x90
	ldr r0, [r4]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	bl func_080CE184
	mov sl, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	str r4, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq .L0808E12E
	b .L0808E27C
.L0808E12E:
	movs r0, #0xfc
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	bl func_0800F258
	mov r6, sp
	adds r6, #0x15
	strb r0, [r6]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808E204
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetArticle__C12ArticleStack
	add r6, sp, #0x14
	strb r0, [r6]
	adds r0, r6, #0
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x15
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808E174
	b .L0808E426
.L0808E174:
	mov r2, sb
	ldr r0, [r2]
	bl func_0800F390
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r6]
	bl func_0800F3E8
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	mov r0, sp
	ldrb r1, [r0, #0x15]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	ldr r1, .L0808E200 @ =gUnk_086678A0
	mov r8, r1
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	mov r1, r8
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	bl func_080CF054
	cmp r4, r0
	beq .L0808E1DE
	b .L0808E426
.L0808E1DE:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x15
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	b .L0808E380
	.align 2, 0
.L0808E200: .4byte gUnk_086678A0
.L0808E204:
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	ldrb r1, [r6]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r2, sb
	ldr r0, [r2]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808E24C
	b .L0808E426
.L0808E24C:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808E278 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808E426
	.align 2, 0
.L0808E278: .4byte gUnk_086678A0
.L0808E27C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	mov r6, sp
	adds r6, #0x17
	strb r0, [r6]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808E390
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetArticle__C12ArticleStack
	mov r6, sp
	adds r6, #0x16
	strb r0, [r6]
	adds r0, r6, #0
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x17
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808E2D8
	b .L0808E426
.L0808E2D8:
	mov r2, sb
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #8
	ldrb r1, [r6]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #8]
	str r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	mov r2, sp
	ldrb r1, [r2, #0x17]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808E38C @ =gUnk_086678A0
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
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808E426
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x17
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
.L0808E380:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CC728
	b .L0808E426
	.align 2, 0
.L0808E38C: .4byte gUnk_086678A0
.L0808E390:
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r5, sp, #8
	ldrb r1, [r6]
	adds r0, r5, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r0, sb
	ldr r4, [r0]
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
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
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
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808E426
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808E440 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
.L0808E426:
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	bl func_080CECD0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808E440: .4byte gUnk_086678A0

	thumb_func_start func_0808E444
func_0808E444: @ 0x0808E444
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r7, #0
	bne .L0808E4D0
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808E462
	b .L0808E648
.L0808E462:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #0
	beq .L0808E472
	cmp r0, #1
	beq .L0808E494
	b .L0808E5FC
.L0808E472:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E488 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E48C @ =gUnk_08100120
	ldr r3, .L0808E490 @ =gUnk_08100124
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E488: .4byte gUnk_08117ABC
.L0808E48C: .4byte gUnk_08100120
.L0808E490: .4byte gUnk_08100124
.L0808E494:
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
	beq .L0808E4B0
	b .L0808E5FC
.L0808E4B0:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E4C4 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E4C8 @ =gUnk_08100120
	ldr r3, .L0808E4CC @ =gUnk_08100124
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E4C4: .4byte gUnk_08117ABC
.L0808E4C8: .4byte gUnk_08100120
.L0808E4CC: .4byte gUnk_08100124
.L0808E4D0:
	cmp r7, #8
	bgt .L0808E588
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
	beq .L0808E4F8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808E4FA
.L0808E4F8:
	movs r2, #1
.L0808E4FA:
	adds r6, r2, #0
	cmp r6, #0
	beq .L0808E502
	b .L0808E648
.L0808E502:
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
	bne .L0808E568
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
	bne .L0808E5FC
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E55C @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E560 @ =gUnk_08100120
	ldr r3, .L0808E564 @ =gUnk_08100124
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E55C: .4byte gUnk_08117ABC
.L0808E560: .4byte gUnk_08100120
.L0808E564: .4byte gUnk_08100124
.L0808E568:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E57C @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E580 @ =gUnk_08100120
	ldr r3, .L0808E584 @ =gUnk_08100124
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E57C: .4byte gUnk_08117ABC
.L0808E580: .4byte gUnk_08100120
.L0808E584: .4byte gUnk_08100124
.L0808E588:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #0xc
	movs r2, #2
	bl memcpy
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
	beq .L0808E5D8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808E5DA
.L0808E5D8:
	movs r2, #1
.L0808E5DA:
	cmp r2, #0
	bne .L0808E648
	add r0, sp, #0xc
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x12
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq .L0808E628
.L0808E5FC:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E624 @ =gUnk_08117ADC
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
	b .L0808E648
	.align 2, 0
.L0808E624: .4byte gUnk_08117ADC
.L0808E628:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E650 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E654 @ =gUnk_08100120
	ldr r3, .L0808E658 @ =gUnk_08100124
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
.L0808E63A:
	bl func_08050E30
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
.L0808E648:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808E650: .4byte gUnk_08117ABC
.L0808E654: .4byte gUnk_08100120
.L0808E658: .4byte gUnk_08100124

	thumb_func_start func_0808E65C
func_0808E65C: @ 0x0808E65C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #0
	bne .L0808E678
	adds r0, #0xfc
	ldr r0, [r0]
	bl func_0800F390
	ldr r0, [r5, #0x78]
	bl func_080CC0B4
	b .L0808E6F4
.L0808E678:
	cmp r6, #8
	bgt .L0808E6AE
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
	b .L0808E6F4
.L0808E6AE:
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
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	mov r0, sp
	bl __12ArticleStack
	adds r0, r4, #0
	mov r1, sp
	movs r2, #2
	bl memcpy
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
.L0808E6F4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_0808E6FC
func_0808E6FC: @ 0x0808E6FC
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
	ldr r0, .L0808E968 @ =gUnk_08100128
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
	beq .L0808E774
	cmp r1, #0
	beq .L0808E774
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808E774:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_0808C664
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
	ldr r0, .L0808E96C @ =gUnk_08100130
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
	beq .L0808E7D4
	cmp r1, #0
	beq .L0808E7D4
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808E7D4:
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
	beq .L0808E800
	cmp r0, #0
	beq .L0808E800
	movs r1, #3
	bl func_080CE3DC
.L0808E800:
	str r5, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0808C840
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
	beq .L0808E86A
	cmp r5, #0
	beq .L0808E86A
	ldr r0, .L0808E970 @ =vtable_unk_080E5A28
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
.L0808E86A:
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
	beq .L0808E8C0
	cmp r5, #0
	beq .L0808E8C0
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
	ldr r0, .L0808E970 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0808E8C0:
	mov r2, sl
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
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
	ldr r0, .L0808E974 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L0808E978 @ =0x00000889
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
.L0808E926:
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
	blt .L0808E926
	mov r2, r8
	cmp r2, #0
	beq .L0808E94C
	b .L0808ECBC
.L0808E94C:
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L0808E926
	lsls r0, r0, #2
	ldr r1, .L0808E97C @ =.L0808E980
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808E968: .4byte gUnk_08100128
.L0808E96C: .4byte gUnk_08100130
.L0808E970: .4byte vtable_unk_080E5A28
.L0808E974: .4byte vtable_unk_080E5B80
.L0808E978: .4byte 0x00000889
.L0808E97C: .4byte .L0808E980
.L0808E980: @ jump table
	.4byte .L0808E994 @ case 0
	.4byte .L0808EBF2 @ case 1
	.4byte .L0808EC28 @ case 2
	.4byte .L0808EC66 @ case 3
	.4byte .L0808EC9A @ case 4
.L0808E994:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0808E9BC
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #9
	ble .L0808E9B4
	cmp r0, #0xd
	bgt .L0808E9B4
	adds r0, r7, #0
	bl func_0808C8D8
.L0808E9B4:
	ldr r0, [r6]
	bl func_080CDA44
	b .L0808EA3A
.L0808E9BC:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0808E9E0
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0xd
	ble .L0808E9D8
	adds r0, r7, #0
	bl func_0808C8BC
.L0808E9D8:
	ldr r0, [r6]
	bl func_080CDB08
	b .L0808EA3A
.L0808E9E0:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0808E9F6
	ldr r0, [r6]
	bl func_080CDCD0
	b .L0808EA3A
.L0808E9F6:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0808EA0C
	ldr r0, [r6]
	bl func_080CDC00
	b .L0808EA3A
.L0808EA0C:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L0808EA2E
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0808EA30
.L0808EA2E:
	movs r4, #1
.L0808EA30:
	cmp r4, #0
	beq .L0808EA46
	ldr r0, [r6]
	bl func_080CDD7C
.L0808EA3A:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L0808EBE0
.L0808EA46:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0808EA56
	b .L0808EB6E
.L0808EA56:
	mov r2, sb
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808EA86
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L0808EA76
	adds r0, r3, #0
	movs r2, #0
	bl func_080CEC84
	b .L0808EBE0
.L0808EA76:
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r3, #0
	bl func_080CEC84
	b .L0808EBE0
.L0808EA86:
	ldr r0, [r6]
	ldr r4, [r0, #4]
	adds r0, r3, #0
	bl func_080CF050
	cmp r4, r0
	bne .L0808EB1E
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #9
	ble .L0808EAD6
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808EAD6
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808CEC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EAF8
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808EB5C
.L0808EAD6:
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
	bl func_0808C9D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808EB16
.L0808EAF8:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, sb
	ldr r0, [r1]
	bl func_080CECD0
	b .L0808EBE0
.L0808EB16:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808EB5C
.L0808EB1E:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808CEC4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808EB56
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808EBE0
.L0808EB56:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
.L0808EB5C:
	ldr r0, [r0]
	cmp r0, #1
	beq .L0808EBE0
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808EBE0
.L0808EB6E:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808EBC8
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808EB92
	adds r0, r1, #0
	bl func_080CECD0
	b .L0808EBE0
.L0808EB92:
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808EBE0
	movs r0, #1
	mov r8, r0
	ldr r1, .L0808EBC4 @ =0x00000889
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
	b .L0808EBE0
	.align 2, 0
.L0808EBC4: .4byte 0x00000889
.L0808EBC8:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0808EBE0
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808E444
.L0808EBE0:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L0808EBEA
	b .L0808E926
.L0808EBEA:
	adds r0, r7, #0
	bl func_0808C8F4
	b .L0808E926
.L0808EBF2:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808EBFE
	b .L0808E926
.L0808EBFE:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808EC20 @ =gUnk_08100120
	ldr r2, .L0808EC24 @ =gUnk_08100124
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
	b .L0808E926
	.align 2, 0
.L0808EC20: .4byte gUnk_08100120
.L0808EC24: .4byte gUnk_08100124
.L0808EC28:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808EC34
	b .L0808E926
.L0808EC34:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	beq .L0808EC46
	cmp r0, #2
	beq .L0808EC5C
	b .L0808ECA6
.L0808EC46:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808DD54
	b .L0808ECA6
.L0808EC5C:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808ECA6
.L0808EC66:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808EC72
	b .L0808E926
.L0808EC72:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	bne .L0808EC88
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808E65C
.L0808EC88:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	b .L0808ECB6
.L0808EC9A:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808ECA6
	b .L0808E926
.L0808ECA6:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
.L0808ECB6:
	movs r0, #0
	str r0, [r1]
	b .L0808E926
.L0808ECBC:
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
