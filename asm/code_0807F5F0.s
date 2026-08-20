	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0807F5F0
func_0807F5F0: @ 0x0807F5F0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_0807EF90
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
.L0807F60C:
	.byte 0x10, 0xB5, 0x83, 0xB0
	.byte 0x04, 0x1C, 0x49, 0x68, 0x68, 0x46, 0xFF, 0xF7, 0x73, 0xFC, 0x00, 0x9A, 0x68, 0x46, 0x01, 0x90
	.byte 0x02, 0x92, 0x01, 0x1C, 0x00, 0x20, 0x08, 0x60, 0x22, 0x60, 0x00, 0x98, 0x80, 0xF7, 0xEC, 0xFF
	.byte 0x20, 0x1C, 0x03, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_0807F63C
func_0807F63C: @ 0x0807F63C
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L0807F668 @ =vtable_unk_080E7C78
	str r0, [r4, #4]
	ldr r1, .L0807F66C @ =0x000006A4
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
.L0807F668: .4byte vtable_unk_080E7C78
.L0807F66C: .4byte 0x000006A4

	thumb_func_start func_0807F670
func_0807F670: @ 0x0807F670
	push {lr}
	ldr r2, .L0807F680 @ =vtable_unk_080E7C78
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L0807F680: .4byte vtable_unk_080E7C78

	thumb_func_start func_0807F684
func_0807F684: @ 0x0807F684
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, [r1]
	movs r0, #0
	cmp r2, #2
	bgt .L0807F69E
	movs r0, #1
.L0807F69E:
	cmp r0, #0
	bne .L0807F6BC
	ldr r0, .L0807F6B8 @ =gUnk_080FE484
	lsls r1, r2, #3
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, sp
	bl __4ToolUi
	mov r0, sp
	bl GetDesc__C4Tool
	b .L0807F6D4
	.align 2, 0
.L0807F6B8: .4byte gUnk_080FE484
.L0807F6BC:
	mov r4, sp
	adds r4, #1
	ldr r1, .L0807F6E4 @ =gUnk_080FE484
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetDesc__C7Article
.L0807F6D4:
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CABEC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0807F6E4: .4byte gUnk_080FE484

	thumb_func_start func_0807F6E8
func_0807F6E8: @ 0x0807F6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd0
	adds r7, r0, #0
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #4
	mov sl, r0
	add r6, sp, #0x18
	ldr r1, .L0807F7E4 @ =gUnk_086678A0
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
	adds r6, r7, #0
	adds r6, #0x20
	movs r4, #0x24
	adds r4, r4, r7
	mov ip, r4
	ldr r0, [r7, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r6, r0
	adds r4, r0, #0
	mov r5, ip
	adds r1, r5, #0
	ldr r2, [r6]
	ldr r3, [r7, #0x1c]
	cmp r1, r4
	beq .L0807F778
.L0807F772:
	adds r1, #0x10
	cmp r1, r4
	bne .L0807F772
.L0807F778:
	mov r1, ip
	subs r0, r0, r1
	asrs r0, r0, #4
	subs r0, r2, r0
	str r0, [r6]
	adds r0, r3, #0
	bl func_08075DD4
	movs r2, #0
	mov r8, r2
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r8, r0
	blo .L0807F79A
	b .L0807F8AE
.L0807F79A:
	adds r4, r3, #0
	adds r4, r7, r4
	str r4, [sp, #0xcc]
	add r5, sp, #0xc4
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r6, r7, r0
	add r1, sp, #0x4c
	mov sb, r1
.L0807F7AC:
	add r1, sp, #8
	mov r2, sl
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r2, [r6]
	lsls r0, r2, #3
	ldr r1, .L0807F7E8 @ =gUnk_080FE484
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r5]
	str r1, [r5, #4]
	movs r0, #0
	cmp r2, #2
	bgt .L0807F7CC
	movs r0, #1
.L0807F7CC:
	cmp r0, #0
	bne .L0807F7EC
	add r4, sp, #0xc0
	ldr r1, [r5]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
	b .L0807F7FE
	.align 2, 0
.L0807F7E4: .4byte gUnk_086678A0
.L0807F7E8: .4byte gUnk_080FE484
.L0807F7EC:
	mov r4, sp
	adds r4, #0xc1
	ldr r1, [r5]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
.L0807F7FE:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
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
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xa0
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
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0807F866
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807F860
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807F860:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0807F866:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	mov r3, sl
	lsls r4, r3, #6
	adds r1, r1, r4
	adds r1, #0x32
	ldr r0, [r5, #4]
	movs r2, #0x20
	str r2, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	movs r1, #0
	str r1, [sp]
	movs r3, #0x20
	str r3, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r4, #2
	add sl, r4
	adds r6, #4
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0xcc]
	ldr r0, [r1]
	cmp r8, r0
	bhs .L0807F8AE
	b .L0807F7AC
.L0807F8AE:
	ldr r0, .L0807F8C4 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	mov r0, sl
	add sp, #0xd0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807F8C4: .4byte vtable_unk_080E5A28

	thumb_func_start func_0807F8C8
func_0807F8C8: @ 0x0807F8C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r6, r0, #0
	bl func_08008724
	adds r0, r6, #0
	bl func_080C85A0
	movs r5, #1
	ldr r4, [r6, #8]
	movs r3, #0xc8
	str r3, [sp, #0x18]
	ldrb r0, [r4, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r2, sp, #0x1c
	add r0, sp, #0x18
	cmp r3, r1
	bls .L0807F902
	adds r0, r2, #0
.L0807F902:
	ldr r0, [r0]
	cmp r0, #1
	bne .L0807F914
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bgt .L0807F914
	movs r5, #0
.L0807F914:
	ldr r0, [r6, #8]
	ldr r1, .L0807FBFC @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E940
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807F926
	movs r5, #0
.L0807F926:
	cmp r5, #0
	beq .L0807F94A
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F94A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F944
	movs r0, #0
	str r0, [r2]
.L0807F944:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F94A:
	movs r5, #1
	ldr r4, [r6, #8]
	movs r3, #0xc8
	str r3, [sp, #0x20]
	ldrb r0, [r4, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x24]
	add r2, sp, #0x24
	add r0, sp, #0x20
	cmp r3, r1
	bls .L0807F96C
	adds r0, r2, #0
.L0807F96C:
	ldr r0, [r0]
	cmp r0, #1
	bne .L0807F97E
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bgt .L0807F97E
	movs r5, #0
.L0807F97E:
	ldr r0, [r6, #8]
	ldr r4, .L0807FC00 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807F9B2
	ldr r0, [r6, #8]
	adds r0, r0, r4
	bl func_0800F204
	cmp r0, #1
	bne .L0807F9B2
	ldr r0, [r6, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x28
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x5e
	bne .L0807F9B2
	movs r5, #0
.L0807F9B2:
	ldr r0, [r6, #8]
	ldr r3, .L0807FC04 @ =0x00001C38
	adds r0, r0, r3
	movs r1, #0x5e
	bl GetFirstSlotWithArticle__C8RucksackUi
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq .L0807F9C8
	movs r5, #0
.L0807F9C8:
	ldr r0, [r6, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L0807F9F0
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	movs r1, #0x5e
	bl GetFirstSlotWith__C5ShelfUi
	cmp r0, r4
	beq .L0807F9F0
	movs r5, #0
.L0807F9F0:
	cmp r5, #0
	beq .L0807FA14
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FA14
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FA0E
	movs r0, #1
	str r0, [r2]
.L0807FA0E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FA14:
	ldr r0, [r6, #8]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetShelf__9FarmHouse
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	ldr r0, [r6, #8]
	ldr r5, .L0807FC08 @ =0x000021C7
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L0807FA38
	movs r2, #0
.L0807FA38:
	cmp r2, #0
	beq .L0807FA5C
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FA5C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FA56
	movs r0, #2
	str r0, [r2]
.L0807FA56:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FA5C:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FA7C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FA76
	movs r0, #3
	str r0, [r2]
.L0807FA76:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FA7C:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FA9C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FA96
	movs r0, #4
	str r0, [r2]
.L0807FA96:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FA9C:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r6, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FABC
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FAB6
	movs r0, #5
	str r0, [r2]
.L0807FAB6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FABC:
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r1, r6, r5
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FADC
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FAD6
	movs r0, #6
	str r0, [r2]
.L0807FAD6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FADC:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FAFC
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FAF6
	movs r0, #7
	str r0, [r2]
.L0807FAF6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FAFC:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FB1C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FB16
	movs r0, #8
	str r0, [r2]
.L0807FB16:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FB1C:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807FB3C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807FB36
	movs r0, #9
	str r0, [r2]
.L0807FB36:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807FB3C:
	adds r0, r6, #0
	bl func_0807F6E8
	adds r4, r0, #0
	ldr r0, [r6, #0x1c]
	movs r5, #0xc
	ldrsh r1, [r6, r5]
	bl func_08075C88
	ldr r0, [r6, #0x1c]
	adds r1, r4, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r1, [r6, #0x10]
	adds r0, r6, #0
	bl func_0807F684
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0807FC0C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L0807FC10 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #0
	str r0, [sp, #0x3c]
.L0807FBBA:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r3, [sp, #4]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807FBD6
	bl .L08080430
.L0807FBD6:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq .L0807FBE0
	bl sub_08080440
.L0807FBE0:
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #4
	bls .L0807FBF0
	bl .L08080430
.L0807FBF0:
	lsls r0, r0, #2
	ldr r1, .L0807FC14 @ =.L0807FC18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807FBFC: .4byte 0x00001BD8
.L0807FC00: .4byte 0x00001C2C
.L0807FC04: .4byte 0x00001C38
.L0807FC08: .4byte 0x000021C7
.L0807FC0C: .4byte vtable_unk_080E5B80
.L0807FC10: .4byte 0x00000889
.L0807FC14: .4byte .L0807FC18
.L0807FC18: @ jump table
	.4byte .L0807FC2C @ case 0
	.4byte .L080801D0 @ case 1
	.4byte .L08080204 @ case 2
	.4byte .L0808022C @ case 3
	.4byte .L080803EC @ case 4
.L0807FC2C:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	cmp r0, r1
	beq .L0807FC3A
	adds r0, r6, #0
	bl func_0807F684
.L0807FC3A:
	ldr r3, .L0807FCB4 @ =0x000006A1
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807FC46
	b .L08080160
.L0807FC46:
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r2, [r0]
	lsls r0, r2, #3
	ldr r1, .L0807FCB8 @ =gUnk_080FE484
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	add r1, sp, #0x2c
	ldr r5, [r1, #4]
	str r5, [sp, #0x40]
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r5, #0
	mov sb, r5
	ldr r0, [r6, #8]
	ldr r3, .L0807FCBC @ =0x00001C38
	adds r0, r0, r3
	movs r3, #0
	mov sl, r1
	cmp r2, #2
	bgt .L0807FC82
	movs r3, #1
.L0807FC82:
	cmp r3, #0
	beq .L0807FC88
	b .L0807FD94
.L0807FC88:
	ldr r1, [sp, #0x2c]
	bl GetAvailableSpaceForTool__C8RucksackUi
	mov r8, r0
	ldr r0, [r6, #8]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r1, [sp, #0x2c]
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r4, r0, #0
	ldr r0, [r6, #8]
	ldr r5, .L0807FCC0 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807FCC4
	movs r7, #0x63
	b .L0807FCF2
	.align 2, 0
.L0807FCB4: .4byte 0x000006A1
.L0807FCB8: .4byte gUnk_080FE484
.L0807FCBC: .4byte 0x00001C38
.L0807FCC0: .4byte 0x00001C34
.L0807FCC4:
	ldr r0, [r6, #8]
	ldr r1, .L0807FD88 @ =0x00001C34
	adds r0, r0, r1
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne .L0807FCE2
	movs r2, #1
.L0807FCE2:
	cmp r2, #0
	beq .L0807FCF2
	ldr r0, [r6, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r7, r1, r0
.L0807FCF2:
	mov r2, r8
	adds r0, r2, r4
	adds r4, r0, r7
	cmp r4, #0
	bne .L0807FD1A
	ldr r1, .L0807FD8C @ =gUnk_080FE4D4
	adds r0, r6, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x74
	bl func_08050E50
	movs r5, #0xe1
	lsls r5, r5, #3
	adds r1, r6, r5
	movs r0, #2
	str r0, [r1]
.L0807FD1A:
	ldr r0, [r6, #8]
	ldr r1, .L0807FD90 @ =0x00001C38
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	bl GetAmountOfTool__C8RucksackUi
	mov r8, r0
	ldr r0, [r6, #8]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [sp, #0x2c]
	bl GetAmountOf__C9ToolChestUi
	adds r5, r0, #0
	ldr r0, [r6, #8]
	ldr r7, .L0807FD88 @ =0x00001C34
	adds r0, r0, r7
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807FD76
	ldr r0, [r6, #8]
	adds r3, r7, #0
	adds r0, r0, r3
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne .L0807FD68
	movs r2, #1
.L0807FD68:
	cmp r2, #0
	beq .L0807FD76
	ldr r0, [r6, #8]
	adds r0, r0, r7
	bl GetAmount__C9ToolStack
	mov sb, r0
.L0807FD76:
	mov r0, r8
	add r0, sb
	adds r0, r0, r5
	add r1, sp, #8
	movs r2, #7
	bl func_0804EC84
	b .L0807FDFA
	.align 2, 0
.L0807FD88: .4byte 0x00001C34
.L0807FD8C: .4byte gUnk_080FE4D4
.L0807FD90: .4byte 0x00001C38
.L0807FD94:
	bl GetEmptyItemSlotCount__C8Rucksack
	adds r4, r0, #0
	ldr r0, [r6, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L0807FDBE
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x2c]
	bl GetAvailableSpaceFor__C5ShelfUi
	adds r5, r0, #0
.L0807FDBE:
	ldr r0, [r6, #8]
	ldr r3, .L0807FF88 @ =0x00001C2C
	adds r0, r0, r3
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807FDD2
	movs r0, #1
	mov r8, r0
.L0807FDD2:
	adds r0, r4, r5
	mov r1, r8
	adds r4, r0, r1
	cmp r4, #0
	bne .L0807FDFA
	ldr r1, .L0807FF8C @ =gUnk_080FE50C
	adds r0, r6, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x74
	bl func_08050E50
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r6, r3
	movs r0, #2
	str r0, [r1]
.L0807FDFA:
	ldr r0, [r6, #8]
	ldr r5, .L0807FF90 @ =0x00001AA8
	adds r3, r0, r5
	ldr r0, [r3]
	movs r2, #0
	mov r5, sl
	ldr r1, [r5, #4]
	cmp r0, r1
	blo .L0807FE0E
	movs r2, #1
.L0807FE0E:
	cmp r2, #0
	bne .L0807FE14
	b .L0808013C
.L0807FE14:
	cmp r4, #0
	bne .L0807FE1A
	b .L080801B6
.L0807FE1A:
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r5, #0
	mov sl, r5
	cmp r0, #2
	bgt .L0807FE34
	movs r0, #1
	mov sl, r0
.L0807FE34:
	mov r2, sl
	cmp r2, #0
	beq .L0807FE3C
	b .L0807FFA8
.L0807FE3C:
	ldr r3, .L0807FF94 @ =0x00000684
	adds r0, r6, r3
	ldr r1, [sp, #0x40]
	adds r2, r4, #0
	movs r3, #5
	bl func_080CA8B4
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
	movs r0, #3
	str r0, [r1]
	mov r5, sp
	adds r5, #0x36
	ldr r1, [sp, #0x2c]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r0, .L0807FF98 @ =0x000006A4
	adds r4, r6, r0
	mov r1, sl
	strb r1, [r4]
	adds r0, r5, #0
	bl GetName__C4Tool
	mov sb, r0
	adds r7, r4, #0
	mov r5, sb
	adds r0, r7, #0
	bl strlen
	adds r2, r7, r0
	mov r8, r2
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L0807FEA6
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L0807FE94
	adds r5, r4, #0
.L0807FE94:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r3, r8
	adds r0, r3, r5
	mov r4, sl
	strb r4, [r0]
.L0807FEA6:
	ldr r5, .L0807FF9C @ =gUnk_080FE540
	mov sb, r5
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L0807FEDC
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L0807FECA
	adds r5, r4, #0
.L0807FECA:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807FEDC:
	ldr r0, .L0807FFA0 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r7, #0
	bl strlen
	adds r3, r7, r0
	mov r8, r3
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L0807FF14
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L0807FF02
	adds r5, r4, #0
.L0807FF02:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r4, r8
	adds r1, r4, r5
	movs r0, #0
	strb r0, [r1]
.L0807FF14:
	adds r0, r7, #0
	bl strlen
	adds r5, r7, r0
	mov r8, r5
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L0807FF46
	add r0, sp, #8
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L0807FF34
	adds r5, r4, #0
.L0807FF34:
	mov r0, r8
	add r1, sp, #8
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807FF46:
	ldr r0, .L0807FFA4 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl strlen
	adds r7, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807FF7A
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807FF6A
	adds r4, r5, #0
.L0807FF6A:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807FF7A:
	ldr r2, .L0807FF98 @ =0x000006A4
	adds r1, r6, r2
	adds r0, r6, #0
	bl func_080CABEC
	b .L080801B6
	.align 2, 0
.L0807FF88: .4byte 0x00001C2C
.L0807FF8C: .4byte gUnk_080FE50C
.L0807FF90: .4byte 0x00001AA8
.L0807FF94: .4byte 0x00000684
.L0807FF98: .4byte 0x000006A4
.L0807FF9C: .4byte gUnk_080FE540
.L0807FFA0: .4byte gUnk_08117828
.L0807FFA4: .4byte gUnk_08117814
.L0807FFA8:
	movs r7, #1
	movs r5, #1
	adds r0, r3, #0
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [sp, #0x2c]
	cmp r0, #0x35
	bne .L0807FFC8
	ldr r0, [r6, #8]
	ldr r3, .L08080030 @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800ED20
.L0807FFC8:
	ldr r0, [r6, #8]
	ldr r4, .L08080034 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807FFF6
	movs r7, #0
	ldr r4, [r6, #8]
	ldr r5, .L08080034 @ =0x00001C2C
	adds r4, r4, r5
	mov r5, sp
	adds r5, #0x37
	ldr r1, [sp, #0x2c]
	adds r0, r5, #0
	bl __7ArticleUi
	ldrb r1, [r5]
	adds r0, r4, #0
	bl func_0800F3E8
	movs r5, #0
.L0807FFF6:
	cmp r7, #0
	beq .L08080050
	ldr r0, [r6, #8]
	ldr r1, .L08080038 @ =0x00001C38
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	adds r2, r7, #0
	bl AddAmountOfArticle__8RucksackUiUi
	adds r4, r0, #0
	cmp r7, r4
	bls .L08080010
	movs r5, #0
.L08080010:
	cmp r4, #0
	beq .L08080050
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x2c]
	adds r2, r4, #0
	bl AddAmountOf__5ShelfUiUi
	cmp r5, #0
	beq .L08080040
	ldr r1, .L0808003C @ =gUnk_080FE548
	b .L08080042
	.align 2, 0
.L08080030: .4byte 0x00001BD8
.L08080034: .4byte 0x00001C2C
.L08080038: .4byte 0x00001C38
.L0808003C: .4byte gUnk_080FE548
.L08080040:
	ldr r1, .L0808004C @ =gUnk_080FE5C8
.L08080042:
	adds r0, r6, #0
	bl func_080CABA0
	b .L08080058
	.align 2, 0
.L0808004C: .4byte gUnk_080FE5C8
.L08080050:
	ldr r1, .L08080124 @ =gUnk_080FE63C
	adds r0, r6, #0
	bl func_080CABA0
.L08080058:
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x73
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
	movs r0, #1
	str r0, [r1]
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r4, r6, r5
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #2
	bne .L080800AC
	ldr r2, [r6, #8]
	ldr r0, .L08080128 @ =0x0000218C
	adds r2, r2, r0
	ldr r3, [r2]
	lsls r1, r3, #0xf
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xd
	ldr r0, .L0808012C @ =0xFFFE1FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
	ldr r2, [r6, #8]
	ldr r1, .L08080130 @ =0x000021C7
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
.L080800AC:
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r3, r4, r0
	ldr r0, [r3]
	cmp r0, #2
	bhi .L08080118
	ldr r0, [r4]
	cmp r0, #0
	beq .L080800DE
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	adds r1, r3, #4
	cmp r1, r0
	beq .L080800D8
	cmp r0, r1
	beq .L080800D8
	subs r2, r0, r1
	adds r0, r3, #0
	bl memmove
.L080800D8:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
.L080800DE:
	adds r0, r6, #0
	bl func_0807F6E8
	adds r4, r0, #0
	ldr r0, [r6, #0x1c]
	adds r1, r4, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, [r6, #0x1c]
	movs r2, #0xc
	ldrsh r3, [r0, r2]
	adds r1, r3, #0
	cmp r3, #0
	bge .L08080102
	adds r1, r3, #7
.L08080102:
	asrs r1, r1, #3
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r3, r4
	cmp r2, #0
	bge .L08080112
	ldr r5, .L08080134 @ =0x00000107
	adds r2, r3, r5
.L08080112:
	asrs r2, r2, #3
	bl func_08075BC8
.L08080118:
	ldr r0, .L08080138 @ =0x0000070C
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	b .L080801B6
	.align 2, 0
.L08080124: .4byte gUnk_080FE63C
.L08080128: .4byte 0x0000218C
.L0808012C: .4byte 0xFFFE1FFF
.L08080130: .4byte 0x000021C7
.L08080134: .4byte 0x00000107
.L08080138: .4byte 0x0000070C
.L0808013C:
	ldr r1, .L0808015C @ =gUnk_080FE66C
	adds r0, r6, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x74
	bl func_08050E50
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #2
	b .L080801B4
	.align 2, 0
.L0808015C: .4byte gUnk_080FE66C
.L08080160:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080801B6
	ldr r3, .L08080190 @ =0x0000070C
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08080198
	ldr r1, .L08080194 @ =gUnk_080FE6B0
	adds r0, r6, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0x73
	bl func_08050E50
	b .L080801AC
	.align 2, 0
.L08080190: .4byte 0x0000070C
.L08080194: .4byte gUnk_080FE6B0
.L08080198:
	ldr r1, .L080801CC @ =gUnk_080FE6E4
	adds r0, r6, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r6, r5
	movs r1, #0x74
	bl func_08050E50
.L080801AC:
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #4
.L080801B4:
	str r0, [r1]
.L080801B6:
	ldr r0, [r6, #0x10]
	str r0, [r6, #0x14]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_080C9020
	b .L08080430
	.align 2, 0
.L080801CC: .4byte gUnk_080FE6E4
.L080801D0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #3
	beq .L080801DE
	b .L08080430
.L080801DE:
	ldr r1, .L08080200 @ =gUnk_080FE708
	adds r0, r6, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x72
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
	movs r0, #2
	str r0, [r1]
	b .L08080430
	.align 2, 0
.L08080200: .4byte gUnk_080FE708
.L08080204:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r0, [r0]
	cmp r0, #3
	beq .L08080212
	b .L08080430
.L08080212:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	bl func_08050E5C
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r6, #0x14]
	b .L08080430
.L0808022C:
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0808023E
	b .L080803A8
.L0808023E:
	ldr r3, .L080802BC @ =0x00000684
	adds r0, r6, r3
	ldr r7, [r0, #0x14]
	movs r4, #1
	mov r8, r4
	bl func_080CAAF4
	ldr r1, [r6, #0x10]
	adds r0, r6, #0
	bl func_0807F684
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L080802C0 @ =gUnk_080FE484
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r0, [r6, #8]
	ldr r1, .L080802C4 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [sp, #0x30]
	muls r1, r7, r1
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [r6, #8]
	ldr r5, .L080802C8 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080802CC
	ldr r5, [r6, #8]
	ldr r2, .L080802C8 @ =0x00001C34
	adds r5, r5, r2
	add r4, sp, #0x38
	ldr r1, [sp, #0x2c]
	adds r0, r4, #0
	bl __4ToolUi
	ldrb r1, [r4]
	mov r0, sp
	adds r2, r7, #0
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	bl memcpy
	b .L08080378
	.align 2, 0
.L080802BC: .4byte 0x00000684
.L080802C0: .4byte gUnk_080FE484
.L080802C4: .4byte 0x00001AA8
.L080802C8: .4byte 0x00001C34
.L080802CC:
	ldr r0, [r6, #8]
	ldr r3, .L08080318 @ =0x00001C34
	adds r0, r0, r3
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne .L080802EC
	movs r2, #1
.L080802EC:
	cmp r2, #0
	beq .L08080328
	ldr r0, [r6, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r7, r4
	bls .L0808031C
	ldr r0, [r6, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	subs r7, r7, r4
	cmp r4, #0
	beq .L08080328
	movs r4, #0
	mov r8, r4
	b .L08080328
	.align 2, 0
.L08080318: .4byte 0x00001C34
.L0808031C:
	ldr r0, [r6, #8]
	adds r0, r0, r5
	adds r1, r7, #0
	bl AddAmount__9ToolStackUi
	movs r7, #0
.L08080328:
	cmp r7, #0
	beq .L08080378
	ldr r0, [r6, #8]
	ldr r5, .L08080360 @ =0x00001C38
	adds r0, r0, r5
	ldr r1, [sp, #0x2c]
	adds r2, r7, #0
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r7, r2
	bls .L08080344
	movs r0, #0
	mov r8, r0
.L08080344:
	cmp r2, #0
	beq .L08080378
	ldr r0, [r6, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	bl AddAmountOf__9ToolChestUiUi
	mov r2, r8
	cmp r2, #0
	beq .L08080368
	ldr r1, .L08080364 @ =gUnk_080FE548
	b .L0808036A
	.align 2, 0
.L08080360: .4byte 0x00001C38
.L08080364: .4byte gUnk_080FE548
.L08080368:
	ldr r1, .L08080374 @ =gUnk_080FE5C8
.L0808036A:
	adds r0, r6, #0
	bl func_080CABA0
	b .L08080380
	.align 2, 0
.L08080374: .4byte gUnk_080FE5C8
.L08080378:
	ldr r1, .L080803A0 @ =gUnk_080FE63C
	adds r0, r6, #0
	bl func_080CABA0
.L08080380:
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x73
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r0, r6, r4
	movs r1, #1
	str r1, [r0]
	ldr r5, .L080803A4 @ =0x0000070C
	adds r0, r6, r5
	strb r1, [r0]
	b .L08080430
	.align 2, 0
.L080803A0: .4byte gUnk_080FE63C
.L080803A4: .4byte 0x0000070C
.L080803A8:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080803D4
	ldr r1, .L080803D0 @ =0x00000684
	adds r0, r6, r1
	bl func_080CAAF4
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	ldr r1, [r6, #0x10]
	adds r0, r6, #0
	bl func_0807F684
	b .L08080430
	.align 2, 0
.L080803D0: .4byte 0x00000684
.L080803D4:
	ldr r3, .L080803E8 @ =0x00000684
	adds r1, r6, r3
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L08080430
	adds r0, r1, #0
	bl func_080CA98C
	b .L08080430
	.align 2, 0
.L080803E8: .4byte 0x00000684
.L080803EC:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #3
	bne .L08080430
	ldr r2, [sp, #4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne .L08080430
	movs r5, #0xe1
	lsls r5, r5, #3
	adds r0, r6, r5
	str r1, [r0]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r1, .L0808043C @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L08080430:
	adds r0, r6, #0
	bl func_080C96C4
	bl .L0807FBBA
	.align 2, 0
.L0808043C: .4byte 0x00000889

	thumb_func_start sub_08080440
sub_08080440: @ 0x08080440
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
