.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08090EC4
func_08090EC4: @ 0x08090EC4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08090960
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08090EE0
func_08090EE0: @ 0x08090EE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	bl func_080CE19C
	ldr r0, .L08090F50 @ =vtable_unk_080E7DBC
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x98
	movs r3, #0
	strb r3, [r0]
	adds r2, r6, #0
	adds r2, #0xfc
	ldr r1, [r6, #8]
	ldr r7, .L08090F54 @ =0x00001C34
	adds r0, r1, r7
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r6, r0
	subs r7, #8
	adds r0, r1, r7
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r7, #0xc
	adds r1, r1, r7
	str r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	str r3, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r3, [r0]
	movs r7, #0x88
	lsls r7, r7, #1
	adds r1, r6, r7
	ldr r0, [r5]
	str r3, [r5]
	str r0, [r1]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r4, [r0]
	adds r2, #0xc
	adds r0, r6, r2
	strb r3, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08090F50: .4byte vtable_unk_080E7DBC
.L08090F54: .4byte 0x00001C34

	thumb_func_start func_08090F58
func_08090F58: @ 0x08090F58
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, .L08090FC4 @ =vtable_unk_080E7DBC
	str r0, [r6, #4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L08090F7A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08090F7A:
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r5, [r0]
	cmp r5, #0
	beq .L08090FB6
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
	ldr r0, .L08090FC8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L08090FB6:
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080E3504
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08090FC4: .4byte vtable_unk_080E7DBC
.L08090FC8: .4byte vtable_unk_080E5A28

	thumb_func_start func_08090FCC
func_08090FCC: @ 0x08090FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r7, #0
	beq .L0809103A
.L08090FDA:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
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
	bne .L08091034
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, .L0809108C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r1, [r4, #0x78]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L08091090 @ =gUnk_086678A0
	adds r3, r6, #0
	bl func_080CB304
.L08091034:
	adds r5, #1
	cmp r5, r7
	blo .L08090FDA
.L0809103A:
	adds r7, r4, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091082
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, .L0809108C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r4, #0x78]
	ldr r5, .L08091090 @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBAF0
.L08091082:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809108C: .4byte 0x00001BD8
.L08091090: .4byte gUnk_086678A0

	thumb_func_start func_08091094
func_08091094: @ 0x08091094
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bhs .L0809111E
.L080910A2:
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
	bne .L08091118
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080910D2
	cmp r0, #1
	beq .L080910E4
	b .L080910F8
.L080910D2:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L080910F4
.L080910E4:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L080910F4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L080910F8:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091108
	movs r4, #0xb0
	lsls r4, r4, #1
.L08091108:
	ldr r0, [r5, #0x7c]
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, .L08091148 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L08091118:
	adds r6, #1
	cmp r6, r7
	blo .L080910A2
.L0809111E:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091132
	b .L08091274
.L08091132:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0809113E
	b .L08091274
.L0809113E:
	lsls r0, r0, #2
	ldr r1, .L0809114C @ =.L08091150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091148: .4byte gUnk_086678A0
.L0809114C: .4byte .L08091150
.L08091150: @ jump table
	.4byte .L08091168 @ case 0
	.4byte .L080911A4 @ case 1
	.4byte .L080911E4 @ case 2
	.4byte .L08091218 @ case 3
	.4byte .L08091268 @ case 4
	.4byte .L08091274 @ case 5
.L08091168:
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
	beq .L08091198
	movs r6, #0xb0
	lsls r6, r6, #1
.L08091198:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080911A0 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08091256
	.align 2, 0
.L080911A0: .4byte gUnk_086678A0
.L080911A4:
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
	beq .L080911D8
	movs r6, #0xb0
	lsls r6, r6, #1
.L080911D8:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080911E0 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08091256
	.align 2, 0
.L080911E0: .4byte gUnk_086678A0
.L080911E4:
	ldr r0, [r5, #8]
	ldr r2, .L080911FC @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L08091208
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091200 @ =gUnk_0858BA28
	ldr r2, .L08091204 @ =0x000003DA
	b .L08091256
	.align 2, 0
.L080911FC: .4byte 0x00001C70
.L08091200: .4byte gUnk_0858BA28
.L08091204: .4byte 0x000003DA
.L08091208:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091214 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L08091256
	.align 2, 0
.L08091214: .4byte gUnk_0858BA28
.L08091218:
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
	beq .L08091274
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L08091250
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091248 @ =gUnk_0858BA28
	ldr r2, .L0809124C @ =0x0000073D
	b .L08091256
	.align 2, 0
.L08091248: .4byte gUnk_0858BA28
.L0809124C: .4byte 0x0000073D
.L08091250:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091260 @ =gUnk_0858BA28
	ldr r2, .L08091264 @ =0x00000734
.L08091256:
	movs r3, #1
	bl func_080CCE58
	b .L08091274
	.align 2, 0
.L08091260: .4byte gUnk_0858BA28
.L08091264: .4byte 0x00000734
.L08091268:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0809127C @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CCE58
.L08091274:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809127C: .4byte gUnk_086678A0

	thumb_func_start func_08091280
func_08091280: @ 0x08091280
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
	beq .L080912CE
	cmp r7, #9
	beq .L080912F4
	cmp r7, #8
	bgt .L08091342
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
	bne .L0809137A
	b .L08091312
.L080912CE:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809137A
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	add r2, sp, #8
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CF05C
	b .L08091378
.L080912F4:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809137A
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CF67C
	b .L08091378
.L08091312:
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
	b .L08091378
.L08091342:
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
	bne .L0809137A
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CFA38
.L08091378:
	mov r8, r0
.L0809137A:
	mov r0, r8
	cmp r0, #0
	beq .L08091390
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0809139E
.L08091390:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L080913AC @ =gUnk_08100168
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0809139E:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080913AC: .4byte gUnk_08100168

	thumb_func_start func_080913B0
func_080913B0: @ 0x080913B0
	push {lr}
	sub sp, #4
	mov r0, sp
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	bgt .L080913D2
	mov r0, sp
	bl GetId__C4Tool
	movs r1, #7
	ands r1, r0
	cmp r1, #5
	bne .L080913D2
	movs r0, #1
	b .L080913D4
.L080913D2:
	movs r0, #0
.L080913D4:
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080913DC
func_080913DC: @ 0x080913DC
	push {lr}
	sub sp, #4
	mov r0, sp
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x12
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x13
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x14
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x15
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x1c
	bne .L08091418
.L08091414:
	movs r0, #1
	b .L0809141A
.L08091418:
	movs r0, #0
.L0809141A:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start func_08091420
func_08091420: @ 0x08091420
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #7
	ands r4, r0
	movs r3, #0
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08091482
	lsls r0, r0, #2
	ldr r1, .L08091440 @ =.L08091444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091440: .4byte .L08091444
.L08091444: @ jump table
	.4byte .L08091470 @ case 0
	.4byte .L08091474 @ case 1
	.4byte .L08091478 @ case 2
	.4byte .L0809147C @ case 3
	.4byte .L08091482 @ case 4
	.4byte .L08091482 @ case 5
	.4byte .L08091482 @ case 6
	.4byte .L08091482 @ case 7
	.4byte .L08091482 @ case 8
	.4byte .L08091482 @ case 9
	.4byte .L08091480 @ case 10
.L08091470:
	movs r3, #1
	b .L08091482
.L08091474:
	movs r3, #2
	b .L08091482
.L08091478:
	movs r3, #3
	b .L08091482
.L0809147C:
	movs r3, #4
	b .L08091482
.L08091480:
	movs r3, #7
.L08091482:
	cmp r4, r3
	bne .L0809148A
	movs r5, #1
	b .L08091498
.L0809148A:
	cmp r4, r3
	bls .L08091492
	movs r5, #2
	b .L08091498
.L08091492:
	cmp r4, r3
	bhs .L08091498
	movs r5, #3
.L08091498:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080914A0
func_080914A0: @ 0x080914A0
	push {r4, r5, lr}
	adds r3, r1, #0
	movs r0, #7
	ands r3, r0
	movs r4, #0
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08091502
	lsls r0, r0, #2
	ldr r1, .L080914C0 @ =.L080914C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080914C0: .4byte .L080914C4
.L080914C4: @ jump table
	.4byte .L080914F0 @ case 0
	.4byte .L080914F4 @ case 1
	.4byte .L080914F8 @ case 2
	.4byte .L080914FC @ case 3
	.4byte .L08091502 @ case 4
	.4byte .L08091502 @ case 5
	.4byte .L08091502 @ case 6
	.4byte .L08091502 @ case 7
	.4byte .L08091502 @ case 8
	.4byte .L08091502 @ case 9
	.4byte .L08091500 @ case 10
.L080914F0:
	movs r4, #1
	b .L08091502
.L080914F4:
	movs r4, #2
	b .L08091502
.L080914F8:
	movs r4, #3
	b .L08091502
.L080914FC:
	movs r4, #4
	b .L08091502
.L08091500:
	movs r4, #7
.L08091502:
	cmp r3, r4
	bne .L0809150A
	movs r5, #0
	b .L08091522
.L0809150A:
	cmp r3, r4
	bls .L08091512
	movs r5, #1
	b .L08091522
.L08091512:
	cmp r3, r4
	bhs .L08091522
	subs r5, r4, r3
	cmp r3, #6
	bne .L08091522
	cmp r4, #7
	bne .L08091522
	movs r5, #2
.L08091522:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809152C
func_0809152C: @ 0x0809152C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	str r0, [sp, #0x40]
	adds r7, r1, #0
	adds r0, r7, #0
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
	ldr r0, .L080917E4 @ =gUnk_0810016C
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
	beq .L080915A8
	cmp r1, #0
	beq .L080915A8
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080915A8:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_08090FCC
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
	ldr r0, .L080917E8 @ =gUnk_08100174
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
	beq .L08091608
	cmp r1, #0
	beq .L08091608
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08091608:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	adds r0, r7, #0
	mov r1, r8
	bl func_08091094
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	adds r6, r7, #0
	adds r6, #0x8c
	mov r8, r0
	ldr r5, [r6]
	str r6, [sp, #0x60]
	cmp r8, r5
	beq .L08091668
	cmp r5, #0
	beq .L08091668
	ldr r0, .L080917EC @ =vtable_unk_080E5A28
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
.L08091668:
	mov r0, r8
	str r0, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	adds r6, r7, #0
	adds r6, #0x90
	mov r8, r0
	ldr r5, [r6]
	str r6, [sp, #0x64]
	cmp r8, r5
	beq .L080916BA
	cmp r5, #0
	beq .L080916BA
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
	ldr r0, .L080917EC @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L080916BA:
	mov r1, r8
	str r1, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	adds r6, r0, #0
	ldr r5, [r2]
	cmp r6, r5
	beq .L0809170E
	cmp r5, #0
	beq .L0809170E
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
	ldr r0, .L080917EC @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0809170E:
	mov r0, r8
	str r6, [r0]
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08091280
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
	ldr r0, .L080917F0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L080917F4 @ =0x00000889
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
	movs r2, #0
	str r2, [sp, #0x44]
	movs r0, #0
	str r0, [sp, #0x48]
	movs r1, #0x51
	str r1, [sp, #0x4c]
	movs r2, #0x5f
	str r2, [sp, #0x50]
	str r0, [sp, #0x54]
	movs r1, #0
	str r1, [sp, #0x58]
	movs r2, #0
	str r2, [sp, #0x5c]
.L0809178A:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r0, [sp, #0x14]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne .L0809178A
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq .L080917FC
	movs r0, #0x20
	bl __builtin_new
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r3, [r1]
	str r5, [r1]
	adds r2, #4
	adds r1, r7, r2
	ldrb r4, [r1]
	ldr r2, [r7, #8]
	ldr r1, .L080917F8 @ =vtable_unk_080E5E14
	str r1, [r0]
	str r5, [sp, #0x1c]
	str r3, [r0, #4]
	str r2, [r0, #8]
	movs r1, #0x51
	str r1, [r0, #0xc]
	movs r1, #0x5f
	str r1, [r0, #0x10]
	str r5, [r0, #0x14]
	str r5, [r0, #0x18]
	bl .L080924F4
	.align 2, 0
.L080917E4: .4byte gUnk_0810016C
.L080917E8: .4byte gUnk_08100174
.L080917EC: .4byte vtable_unk_080E5A28
.L080917F0: .4byte vtable_unk_080E5B80
.L080917F4: .4byte 0x00000889
.L080917F8: .4byte vtable_unk_080E5E14
.L080917FC:
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	ldr r0, [r0, #4]
	mov sb, r0
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	cmp r0, #0
	beq .L08091818
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_080CECE8
.L08091818:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #7
	bhi .L0809178A
	lsls r0, r0, #2
	ldr r1, .L08091830 @ =.L08091834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091830: .4byte .L08091834
.L08091834: @ jump table
	.4byte .L08091854 @ case 0
	.4byte .L08091F00 @ case 1
	.4byte .L08092054 @ case 2
	.4byte .L08092352 @ case 3
	.4byte .L08092398 @ case 4
	.4byte .L08092484 @ case 5
	.4byte .L080924B4 @ case 6
	.4byte .L08092514 @ case 7
.L08091854:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0809186C
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	bl func_080CDA44
	b .L080918E4
.L0809186C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08091884
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	bl func_080CDB08
	b .L080918E4
.L08091884:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0809189C
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	bl func_080CDCD0
	b .L080918E4
.L0809189C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080918B4
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	bl func_080CDC00
	b .L080918E4
.L080918B4:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L080918D6
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L080918D8
.L080918D6:
	movs r4, #1
.L080918D8:
	cmp r4, #0
	beq .L080918F0
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	bl func_080CDD7C
.L080918E4:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L08091EE8
.L080918F0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08091900
	b .L08091E88
.L08091900:
	ldr r0, [sp, #0x64]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08091910
	b .L08091C60
.L08091910:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r1, #8
	ble .L08091990
	movs r5, #1
	cmp r1, #9
	bne .L08091938
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_0800F190
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	b .L0809195C
.L08091938:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809195C
	movs r5, #0
.L0809195C:
	cmp r5, #0
	beq .L08091962
	b .L08091EE8
.L08091962:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L0809198C @ =gUnk_0810017C
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L0809198C: .4byte gUnk_0810017C
.L08091990:
	cmp r1, #0
	beq .L08091996
	b .L08091AC0
.L08091996:
	adds r5, r7, #0
	adds r5, #0xfc
	ldr r0, [r5]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080919A8
	b .L08091EE8
.L080919A8:
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	bgt .L08091A94
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080919FC
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L080919F8 @ =gUnk_081001A4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xaa
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L080919F8: .4byte gUnk_081001A4
.L080919FC:
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne .L08091A54
	ldr r4, [r7, #8]
	ldr r0, .L08091A50 @ =0x00001BD8
	adds r4, r4, r0
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
	movs r1, #1
	str r1, [sp, #0x58]
	b .L08091A68
	.align 2, 0
.L08091A50: .4byte 0x00001BD8
.L08091A54:
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
.L08091A68:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091A90 @ =gUnk_081001D4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091A90: .4byte gUnk_081001D4
.L08091A94:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091ABC @ =gUnk_08100208
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091ABC: .4byte gUnk_08100208
.L08091AC0:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r4, [r5]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091AE4
	b .L08091EE8
.L08091AE4:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r6, [r0, #4]
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x38
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	ble .L08091B12
	b .L08091C34
.L08091B12:
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091B64
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091B60 @ =gUnk_081001A4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091B60: .4byte gUnk_081001A4
.L08091B64:
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne .L08091BE0
	ldr r4, [r7, #8]
	ldr r0, .L08091BDC @ =0x00001BD8
	adds r4, r4, r0
	ldr r5, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3a
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
	movs r1, #1
	str r1, [sp, #0x58]
	b .L08091C06
	.align 2, 0
.L08091BDC: .4byte 0x00001BD8
.L08091BE0:
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3b
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
.L08091C06:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091C30 @ =gUnk_081001D4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091C30: .4byte gUnk_081001D4
.L08091C34:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091C5C @ =gUnk_08100208
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091C5C: .4byte gUnk_08100208
.L08091C60:
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	ldr r4, [r0, #4]
	adds r0, r1, #0
	bl func_080CF050
	cmp r4, r0
	bne .L08091C72
	b .L08091EE8
.L08091C72:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L08091CEC
	movs r5, #0
	cmp r1, #0
	bne .L08091C94
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091CB8
	b .L08091CBE
.L08091C94:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091CB8
	movs r5, #1
.L08091CB8:
	cmp r5, #0
	bne .L08091CBE
	b .L08091EE8
.L08091CBE:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091CE8 @ =gUnk_08100224
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091CE8: .4byte gUnk_08100224
.L08091CEC:
	cmp r1, #9
	bne .L08091D90
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [r5]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091D04
	b .L08091EE8
.L08091D04:
	ldr r0, [r5]
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #1
	bne .L08091D64
	ldr r0, [r5]
	bl func_0800F258
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091D64
	movs r2, #0x86
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_080CECD0
	ldr r0, [r4]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r0, [r5]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x3c
	strb r1, [r0]
	bl GetId__C7Article
	str r0, [sp, #0x50]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	b .L08091EE8
.L08091D64:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091D8C @ =gUnk_08100224
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091D8C: .4byte gUnk_08100224
.L08091D90:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091DB4
	b .L08091EE8
.L08091DB4:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r6, [r0, #4]
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetKind__C12RucksackItem
	mov r8, r0
	cmp r0, #1
	bne .L08091E5A
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091E5A
	movs r2, #0x86
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_080CECD0
	ldr r0, [r4]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r5, [r5]
	ldr r0, [r4]
	bl func_080CF050
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3d
	strb r1, [r0]
	bl GetId__C7Article
	str r0, [sp, #0x50]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, r8
	str r2, [r0]
	b .L08091EE8
.L08091E5A:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091E84 @ =gUnk_08100224
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091E84: .4byte gUnk_08100224
.L08091E88:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08091EE8
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08091EB0
	adds r0, r1, #0
	bl func_080CECD0
	b .L08091EE8
.L08091EB0:
	ldr r2, [sp, #0x64]
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08091ECA
	adds r0, r1, #0
	bl func_080CECD0
	movs r0, #0
	str r0, [sp, #0x58]
	b .L08091EE8
.L08091ECA:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	ldr r1, .L08091EFC @ =gUnk_0810026C
	adds r0, r4, #0
	bl func_08050D8C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #7
.L08091EE6:
	str r0, [r1]
.L08091EE8:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp sb, r1
	bne .L08091EF4
	b .L0809178A
.L08091EF4:
	adds r0, r7, #0
	bl func_08091280
	b .L0809178A
	.align 2, 0
.L08091EFC: .4byte gUnk_0810026C
.L08091F00:
	movs r4, #0
	movs r2, #1
	ldr r1, [sp, #0x4c]
	lsrs r0, r1, #3
	cmp r0, #5
	bhi .L08091F4A
	lsls r0, r0, #2
	ldr r1, .L08091F18 @ =.L08091F1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091F18: .4byte .L08091F1C
.L08091F1C: @ jump table
	.4byte .L08091F34 @ case 0
	.4byte .L08091F38 @ case 1
	.4byte .L08091F3C @ case 2
	.4byte .L08091F40 @ case 3
	.4byte .L08091F44 @ case 4
	.4byte .L08091F48 @ case 5
.L08091F34:
	movs r2, #1
	b .L08091F4A
.L08091F38:
	movs r2, #0
	b .L08091F4A
.L08091F3C:
	movs r2, #2
	b .L08091F4A
.L08091F40:
	movs r2, #3
	b .L08091F4A
.L08091F44:
	movs r2, #4
	b .L08091F4A
.L08091F48:
	movs r2, #5
.L08091F4A:
	ldr r0, [sp, #0x50]
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08091FA6
	lsls r0, r0, #2
	ldr r1, .L08091F5C @ =.L08091F60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091F5C: .4byte .L08091F60
.L08091F60: @ jump table
	.4byte .L08091F8C @ case 0
	.4byte .L08091F94 @ case 1
	.4byte .L08091F9C @ case 2
	.4byte .L08091FA4 @ case 3
	.4byte .L08091FA6 @ case 4
	.4byte .L08091FA6 @ case 5
	.4byte .L08091FA6 @ case 6
	.4byte .L08091FA6 @ case 7
	.4byte .L08091FA6 @ case 8
	.4byte .L08091FA6 @ case 9
	.4byte .L08091FA4 @ case 10
.L08091F8C:
	ldr r4, .L08091F90 @ =0x00001770
	b .L08091FA6
	.align 2, 0
.L08091F90: .4byte 0x00001770
.L08091F94:
	ldr r4, .L08091F98 @ =0x00004650
	b .L08091FA6
	.align 2, 0
.L08091F98: .4byte 0x00004650
.L08091F9C:
	ldr r4, .L08091FA0 @ =0x00008CA0
	b .L08091FA6
	.align 2, 0
.L08091FA0: .4byte 0x00008CA0
.L08091FA4:
	ldr r4, .L08091FE4 @ =0x0000FFFF
.L08091FA6:
	ldr r0, [r7, #8]
	ldr r1, .L08091FE8 @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r2, #0
	bl func_0800EB2C
	bl func_0800EF68
	cmp r4, r0
	bls .L08091FF0
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091FEC @ =gUnk_0810029C
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_080CECD0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	b .L08092476
	.align 2, 0
.L08091FE4: .4byte 0x0000FFFF
.L08091FE8: .4byte 0x00001BD8
.L08091FEC: .4byte gUnk_0810029C
.L08091FF0:
	adds r0, r7, #0
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	bl func_08091420
	cmp r0, #2
	beq .L08092020
	cmp r0, #2
	bhi .L0809200A
	cmp r0, #1
	beq .L08092012
	bl .L0809178A
.L0809200A:
	cmp r0, #3
	beq .L0809204C
	bl .L0809178A
.L08092012:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L0809201C @ =gUnk_081002D8
	b .L08092456
	.align 2, 0
.L0809201C: .4byte gUnk_081002D8
.L08092020:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08092048 @ =gUnk_08100314
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	movs r0, #1
	str r0, [sp, #0x54]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092048: .4byte gUnk_08100314
.L0809204C:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	b .L080923CC
.L08092054:
	ldr r0, [sp, #0x50]
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L080920C0
	lsls r0, r0, #2
	ldr r1, .L08092068 @ =.L0809206C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08092068: .4byte .L0809206C
.L0809206C: @ jump table
	.4byte .L08092098 @ case 0
	.4byte .L080920A0 @ case 1
	.4byte .L080920A6 @ case 2
	.4byte .L080920B0 @ case 3
	.4byte .L080920C0 @ case 4
	.4byte .L080920C0 @ case 5
	.4byte .L080920C0 @ case 6
	.4byte .L080920C0 @ case 7
	.4byte .L080920C0 @ case 8
	.4byte .L080920C0 @ case 9
	.4byte .L080920BC @ case 10
.L08092098:
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [sp, #0x44]
	b .L080920C0
.L080920A0:
	movs r2, #0xfa
	lsls r2, r2, #3
	b .L080920BE
.L080920A6:
	ldr r0, .L080920AC @ =0x00000BB8
	str r0, [sp, #0x44]
	b .L080920C0
	.align 2, 0
.L080920AC: .4byte 0x00000BB8
.L080920B0:
	ldr r1, .L080920B8 @ =0x00001388
	str r1, [sp, #0x44]
	b .L080920C0
	.align 2, 0
.L080920B8: .4byte 0x00001388
.L080920BC:
	ldr r2, .L08092308 @ =0x0000C350
.L080920BE:
	str r2, [sp, #0x44]
.L080920C0:
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0
	mov sb, r1
	mov r2, sb
	strb r2, [r4]
	ldr r0, .L0809230C @ =gUnk_08100350
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08092100
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080920F0
	adds r4, r5, #0
.L080920F0:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
.L08092100:
	add r4, sp, #0x20
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	mov r0, r8
	bl strlen
	mov r1, r8
	adds r1, r1, r0
	mov sb, r1
	movs r1, #0x9f
	subs r6, r1, r0
	mov sl, r4
	cmp r6, #0
	beq .L0809214A
	mov r0, sl
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08092138
	adds r5, r6, #0
.L08092138:
	mov r0, sb
	mov r1, sl
	adds r2, r5, #0
	bl memcpy
	mov r2, sb
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0809214A:
	mov r4, r8
	ldr r0, .L08092310 @ =gUnk_08100360
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x9f
	subs r6, r1, r0
	cmp r6, #0
	beq .L08092182
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08092170
	adds r5, r6, #0
.L08092170:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L08092182:
	ldr r0, .L08092314 @ =gUnk_08100368
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r4, r4, r0
	movs r1, #0x9f
	subs r6, r1, r0
	cmp r6, #0
	beq .L080921B4
	mov r0, r8
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080921A4
	adds r5, r6, #0
.L080921A4:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl memcpy
	adds r1, r4, r5
	movs r0, #0
	strb r0, [r1]
.L080921B4:
	adds r0, r7, #0
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	bl func_080914A0
	str r0, [sp, #0x48]
	mov r5, sl
	adds r1, r5, #0
	movs r2, #0
	bl func_0804EC84
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x9f
	subs r6, r1, r0
	cmp r6, #0
	beq .L08092202
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080921F0
	adds r5, r6, #0
.L080921F0:
	mov r0, r8
	mov r1, sl
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L08092202:
	adds r6, r4, #0
	ldr r1, .L08092318 @ =gUnk_0810037C
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r2, r6, r0
	mov r8, r2
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0809223A
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08092228
	adds r4, r5, #0
.L08092228:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L0809223A:
	ldr r1, .L0809231C @ =gUnk_08100388
	mov r8, r1
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0809226C
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0809225C
	adds r4, r5, #0
.L0809225C:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0809226C:
	ldr r0, [r7, #8]
	ldr r2, .L08092320 @ =0x00001AA8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	ldr r2, [sp, #0x44]
	cmp r0, r2
	bhs .L0809227E
	movs r1, #1
.L0809227E:
	cmp r1, #0
	beq .L0809232C
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r1, .L08092324 @ =gUnk_08100398
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r2, r6, r0
	mov r8, r2
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080922BE
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080922AC
	adds r4, r5, #0
.L080922AC:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080922BE:
	ldr r1, .L08092328 @ =gUnk_0810039C
	mov r8, r1
	mov r4, r8
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080922F2
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080922E2
	adds r4, r5, #0
.L080922E2:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080922F2:
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_080CECD0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08092334
	.align 2, 0
.L08092308: .4byte 0x0000C350
.L0809230C: .4byte gUnk_08100350
.L08092310: .4byte gUnk_08100360
.L08092314: .4byte gUnk_08100368
.L08092318: .4byte gUnk_0810037C
.L0809231C: .4byte gUnk_08100388
.L08092320: .4byte 0x00001AA8
.L08092324: .4byte gUnk_08100398
.L08092328: .4byte gUnk_0810039C
.L0809232C:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
.L08092334:
	str r0, [r1]
	adds r4, r7, #0
	adds r4, #0x80
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	bl .L0809178A
.L08092352:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08092360
	bl .L0809178A
.L08092360:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_08050E5C
	ldr r1, .L08092390 @ =gUnk_081003DC
	ldr r2, .L08092394 @ =gUnk_081003E0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl func_08050E0C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #4
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092390: .4byte gUnk_081003DC
.L08092394: .4byte gUnk_081003E0
.L08092398:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L080923A6
	bl .L0809178A
.L080923A6:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L080923BC
	cmp r0, #2
	beq .L08092454
	bl .L0809178A
.L080923BC:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq .L080923D4
	movs r1, #0
	str r1, [sp, #0x54]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
.L080923CC:
	movs r0, #2
	str r0, [r1]
	bl .L0809178A
.L080923D4:
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #0
	bne .L080923EE
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #1
	bl SubtractAmount__9ToolStackUi
	b .L08092416
.L080923EE:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	movs r1, #1
	bl SubtractAmount__9ToolStackUi
.L08092416:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq .L08092424
	ldr r1, [sp, #0x4c]
	lsrs r0, r1, #3
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
.L08092424:
	ldr r0, [sp, #0x14]
	ldr r1, .L08092450 @ =0x00000889
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
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #6
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092450: .4byte 0x00000889
.L08092454:
	ldr r1, .L08092480 @ =gUnk_0810026C
.L08092456:
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_080CECD0
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
.L08092476:
	movs r0, #5
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092480: .4byte gUnk_0810026C
.L08092484:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08092492
	bl .L0809178A
.L08092492:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050E5C
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08091280
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	bl .L0809178A
.L080924B4:
	ldr r0, [sp, #0x14]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne .L08092514
	movs r0, #0x20
	bl __builtin_new
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r3, [r1]
	str r5, [r1]
	adds r2, #4
	adds r1, r7, r2
	ldrb r4, [r1]
	ldr r2, [r7, #8]
	ldr r1, .L08092510 @ =vtable_unk_080E5E14
	str r1, [r0]
	str r5, [sp, #0x1c]
	str r3, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [sp, #0x4c]
	str r1, [r0, #0xc]
	ldr r2, [sp, #0x50]
	str r2, [r0, #0x10]
	ldr r1, [sp, #0x44]
	str r1, [r0, #0x14]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
.L080924F4:
	strb r4, [r0, #0x1c]
	str r5, [sp, #0x18]
	ldr r1, [sp, #0x40]
	str r0, [r1]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq .L0809255C
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L0809255C
	.align 2, 0
.L08092510: .4byte vtable_unk_080E5E14
.L08092514:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08092522
	bl .L0809178A
.L08092522:
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08092532
	bl .L0809178A
.L08092532:
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r1, .L08092558 @ =0x00000889
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
	bl .L0809178A
	.align 2, 0
.L08092558: .4byte 0x00000889
.L0809255C:
	ldr r0, [sp, #0x40]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08092570
func_08092570: @ 0x08092570
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L080925C0 @ =vtable_unk_080E7DC8
	str r0, [r6]
	ldr r0, [r5]
	movs r1, #0
	mov r8, r1
	str r1, [r5]
	str r0, [sp]
	movs r0, #0xdc
	lsls r0, r0, #1
	bl __builtin_new
	mov r1, sp
	mov r2, sb
	adds r3, r4, #0
	bl func_08090EE0
	str r0, [r6, #4]
	ldr r0, [r5]
	mov r1, r8
	str r1, [r5]
	str r0, [r6, #8]
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080925C0: .4byte vtable_unk_080E7DC8

