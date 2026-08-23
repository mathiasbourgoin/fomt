.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_0808EDCC
func_0808EDCC: @ 0x0808EDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov r8, r1
	movs r7, #0
	cmp r1, #0
	beq .L0808EE3E
.L0808EDDE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r7, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EE38
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808EE94 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r5, #0x78]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, .L0808EE98 @ =gUnk_086678A0
	adds r3, r6, #0
	bl func_080CB304
.L0808EE38:
	adds r7, #1
	cmp r7, r8
	blo .L0808EDDE
.L0808EE3E:
	adds r7, r5, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EE86
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808EE94 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r5, #0x78]
	ldr r5, .L0808EE98 @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBAF0
.L0808EE86:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808EE94: .4byte 0x00001BD8
.L0808EE98: .4byte gUnk_086678A0

	thumb_func_start func_0808EE9C
func_0808EE9C: @ 0x0808EE9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	movs r7, #0
.L0808EEAA:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r2, r8
	lsls r1, r2, #3
	adds r1, r1, r7
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EF14
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r6, #8]
	ldr r2, .L0808EF0C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r6, #0x7c]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, .L0808EF10 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808EF1C
	.align 2, 0
.L0808EF0C: .4byte 0x00001BD8
.L0808EF10: .4byte gUnk_086678A0
.L0808EF14:
	ldr r0, [r6, #0x7c]
	adds r1, r7, #0
	bl func_080CCDEC
.L0808EF1C:
	adds r7, #1
	cmp r7, #7
	bls .L0808EEAA
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808EF30
func_0808EF30: @ 0x0808EF30
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEB80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808EE9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808EF4C
func_0808EF4C: @ 0x0808EF4C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEBC0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808EE9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808EF68
func_0808EF68: @ 0x0808EF68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov sb, r0
	cmp r7, #0
	bne .L0808EFA6
	adds r5, r6, #0
	adds r5, #0xfc
	ldr r0, [r5]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808F048
	adds r4, r6, #0
	adds r4, #0x98
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	mov r1, sp
	strb r0, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	movs r3, #1
	b .L0808F042
.L0808EFA6:
	cmp r7, #9
	beq .L0808F048
	cmp r7, #8
	bgt .L0808EFFE
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r6
	mov r8, r1
	ldr r4, [r1]
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
	bne .L0808F048
	adds r5, r6, #0
	adds r5, #0x98
	mov r0, r8
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
	adds r2, #1
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	b .L0808F040
.L0808EFFE:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808F048
	adds r4, r6, #0
	adds r4, #0x98
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #2
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
.L0808F040:
	movs r3, #0
.L0808F042:
	bl func_080CF05C
	mov sb, r0
.L0808F048:
	mov r0, sb
	cmp r0, #0
	beq .L0808F05E
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808F06C
.L0808F05E:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0808F07C @ =gUnk_08100144
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808F06C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808F07C: .4byte gUnk_08100144

	thumb_func_start func_0808F080
func_0808F080: @ 0x0808F080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x38]
	cmp r1, #0
	bne .L0808F09C
	b .L0808F766
.L0808F09C:
	cmp r1, #8
	ble .L0808F0A2
	b .L0808F3CE
.L0808F0A2:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sl, r4
	cmp r0, #0
	beq .L0808F136
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
	beq .L0808F0DC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808F0DE
.L0808F0DC:
	movs r1, #1
.L0808F0DE:
	cmp r1, #0
	beq .L0808F0E4
	b .L0808F766
.L0808F0E4:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
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
	bl ExtractToolAt__8RucksackUi
	mov r2, sl
	ldr r0, [r2]
	adds r1, r5, #0
	b .L0808F6C2
.L0808F136:
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r5, sp, #0x14
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x20
	mov r3, sl
	ldr r1, [r3]
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	mov r8, r5
	cmp r0, #0
	beq .L0808F1A8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808F1A4 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x38]
	str r1, [r0]
	movs r2, #0
	str r2, [sp, #0x38]
	b .L0808F766
	.align 2, 0
.L0808F1A4: .4byte gUnk_08117B10
.L0808F1A8:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L0808F1B6
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne .L0808F1B8
.L0808F1B6:
	movs r1, #1
.L0808F1B8:
	cmp r1, #0
	beq .L0808F1BE
	b .L0808F36C
.L0808F1BE:
	add r6, sp, #0x24
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x3c]
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #2
	bl memcpy
	add r5, sp, #0x20
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x2c
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2d
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808F214
	movs r1, #1
.L0808F214:
	cmp r1, #0
	beq .L0808F2EA
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	cmp r5, r0
	blo .L0808F27E
	mov r0, sl
	ldr r4, [r0]
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r1, [sp, #0x3c]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x28
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	mov r2, sl
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808F766
.L0808F27E:
	mov r3, sl
	ldr r0, [r3]
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r0, [sp, #0x3c]
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r1, sl
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	ldr r2, [sp, #0x3c]
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	b .L0808F766
.L0808F2EA:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	mov r0, r8
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r3, [r7, #0x78]
	mov r8, r3
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	mov r4, sl
	ldr r6, [r4]
	ldr r0, [sp, #0x3c]
	ldr r5, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	adds r1, r5, #0
	bl ExtractToolAt__8RucksackUi
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r1, [sp, #0x3c]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #0x20
	b .L0808F6C2
.L0808F36C:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	mov r4, sl
	ldr r1, [r4]
	movs r2, #2
	bl memcpy
	ldr r5, [r4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	b .L0808F6C2
.L0808F3CE:
	adds r0, r7, #0
	mov r1, sb
	ldr r2, [sp, #0x34]
	bl func_080CE184
	str r0, [sp, #0x40]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	movs r1, #0xfc
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F498
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F414
	b .L0808F766
.L0808F414:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r6, r0, #0
	mov r2, r8
	ldr r0, [r2]
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #8
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #8]
	ldr r4, .L0808F490 @ =0x00001BD8
	adds r0, r0, r4
	adds r1, r6, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2e
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r7, #0x78]
	ldr r6, .L0808F494 @ =gUnk_086678A0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	beq .L0808F48C
	b .L0808F766
.L0808F48C:
	b .L0808F586
	.align 2, 0
.L0808F490: .4byte 0x00001BD8
.L0808F494: .4byte gUnk_086678A0
.L0808F498:
	mov r2, r8
	ldr r0, [r2]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F4D4
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808F4D0 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [sp, #0x38]
	str r4, [r0]
	movs r0, #0
	str r0, [sp, #0x38]
	b .L0808F766
	.align 2, 0
.L0808F4D0: .4byte gUnk_08117B10
.L0808F4D4:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F4E2
	b .L0808F6D4
.L0808F4E2:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2f
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x30
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808F510
	movs r1, #1
.L0808F510:
	cmp r1, #0
	beq .L0808F60A
	mov r2, r8
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r4, r0
	blo .L0808F59C
	mov r3, r8
	ldr r4, [r3]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #8
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	mov r1, r8
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	beq .L0808F586
	b .L0808F766
.L0808F586:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808F766
.L0808F59C:
	mov r2, r8
	ldr r0, [r2]
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r1, r8
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	beq .L0808F5E2
	b .L0808F766
.L0808F5E2:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808F766
.L0808F60A:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3]
	bl GetTool__C9ToolStack
	adds r6, r0, #0
	ldr r0, [r7, #8]
	ldr r1, .L0808F6CC @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x31
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r7, #0x78]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r5, #0
	ldr r1, .L0808F6D0 @ =gUnk_086678A0
	adds r2, r4, #0
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	bne .L0808F6A8
	ldr r0, [r7, #8]
	ldr r2, .L0808F6CC @ =0x00001BD8
	adds r0, r0, r2
	adds r1, r6, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x32
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r3, r8
	ldr r0, [r3]
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, .L0808F6D0 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L0808F6A8:
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	mov r2, r8
	ldr r1, [r2]
	movs r2, #2
	bl memcpy
	mov r3, r8
	ldr r0, [r3]
	add r1, sp, #4
.L0808F6C2:
	movs r2, #2
	bl memcpy
	b .L0808F766
	.align 2, 0
.L0808F6CC: .4byte 0x00001BD8
.L0808F6D0: .4byte gUnk_086678A0
.L0808F6D4:
	mov r4, r8
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	adds r5, r0, #0
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	bne .L0808F73E
	ldr r0, [r7, #8]
	ldr r1, .L0808F77C @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r5, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x33
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r2, r8
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	ldr r2, .L0808F780 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
.L0808F73E:
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	mov r4, r8
	ldr r1, [r4]
	movs r2, #2
	bl memcpy
	ldr r5, [r4]
	add r4, sp, #8
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
.L0808F766:
	add r1, sp, #0x38
	ldrb r0, [r1]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0808F77C: .4byte 0x00001BD8
.L0808F780: .4byte gUnk_086678A0

	thumb_func_start func_0808F784
func_0808F784: @ 0x0808F784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	str r1, [sp, #0x48]
	mov sb, r2
	movs r0, #1
	str r0, [sp, #0x4c]
	cmp r2, #0
	bne .L0808F7B0
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	b .L0808F7C4
.L0808F7B0:
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq .L0808F7B8
	b .L0808FA38
.L0808F7B8:
	mov r2, sb
	cmp r2, #8
	bgt .L0808F7D2
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
.L0808F7C4:
	bl func_0808F080
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	bl .L080908B0
.L0808F7D2:
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r3, sp, #0x10
	mov r8, r3
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	mov r1, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r6, sp, #0x1c
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r1, [r4]
	adds r0, r6, #0
	movs r2, #2
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x50]
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	add r5, sp, #0x20
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0808F85E
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_0808F080
	bl .L080908B0
.L0808F85E:
	add r0, sp, #0x1c
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F898
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808F894 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [sp, #0x4c]
	str r4, [r0]
	movs r0, #0
	str r0, [sp, #0x4c]
	bl .L080908B0
	.align 2, 0
.L0808F894: .4byte gUnk_08117B10
.L0808F898:
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq .L0808F8A6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L0808F8A8
.L0808F8A6:
	movs r1, #1
.L0808F8A8:
	cmp r1, #0
	beq .L0808F8AE
	b .L0808F9EE
.L0808F8AE:
	add r0, sp, #0x1c
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r6, r5, #0
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808F8DC
	movs r1, #1
.L0808F8DC:
	cmp r1, #0
	beq .L0808F99C
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	add r0, sp, #0x1c
	bl GetAmount__C9ToolStack
	cmp r4, r0
	blo .L0808F956
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r4, r0, #0
	add r0, sp, #0x1c
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	ldr r5, [r2]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	bl .L080908B0
.L0808F956:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r1, r8
	ldr r0, [r1]
	adds r1, r4, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r2, r8
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl .L080907D6
.L0808F99C:
	mov r3, r8
	ldr r0, [r3]
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #0x1c
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	add r0, sp, #0x10
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r0, [r7, #0x7c]
	mov r8, r0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	b .L080900E2
.L0808F9EE:
	mov r1, r8
	ldr r5, [r1]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #0x1c
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r3, [r7, #0x7c]
	mov r8, r3
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	b .L080900E2
.L0808FA38:
	ldr r4, [sp, #0x48]
	cmp r4, #8
	ble .L0808FA40
	b .L080900F6
.L0808FA40:
	mov r0, sb
	cmp r0, #8
	ble .L0808FA48
	b .L0808FDAE
.L0808FA48:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r5, sp, #8
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x54]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x54]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x28
	mov sl, r4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	mov r1, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FAEA
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FAEA
	bl .L080908B0
.L0808FAEA:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FB58
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x18
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	mov r0, sl
	b .L0808FED2
.L0808FB58:
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FBC6
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x18
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r1, [r7, #0x78]
	mov r8, r1
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x54]
	b .L0808FED2
.L0808FBC6:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808FBF4
	movs r1, #1
.L0808FBF4:
	cmp r1, #0
	bne .L0808FBFA
	b .L0808FD32
.L0808FBFA:
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L0808FC92
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x18
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	b .L0808FFE8
.L0808FC92:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	bl .L080908B0
.L0808FD32:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r3, [r7, #0x78]
	mov r8, r3
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	mov r0, sl
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	mov r8, r4
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x54]
	b .L0808FED2
.L0808FDAE:
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	str r0, [sp, #0x58]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r5, sp, #8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x5c]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x5c]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x60]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	ldr r1, [sp, #0x60]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FE60
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FE60
	bl .L080908B0
.L0808FE60:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FEE8
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
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
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x60]
.L0808FED2:
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	bl .L080908B0
.L0808FEE8:
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FF38
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x24
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r1, [r7, #0x7c]
	mov r8, r1
	b .L080900D0
.L0808FF38:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x38
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808FF64
	movs r1, #1
.L0808FF64:
	cmp r1, #0
	bne .L0808FF6A
	b .L08090074
.L0808FF6A:
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L08090000
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
.L0808FFE8:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	bl .L080908B0
.L08090000:
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	b .L080907D6
.L08090074:
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	mov r8, r4
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x60]
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r0, [r7, #0x7c]
	mov r8, r0
.L080900D0:
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x5c]
.L080900E2:
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CCA40
	b .L080908B0
.L080900F6:
	adds r1, r7, #0
	adds r1, #0x90
	str r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	bl func_080CE184
	str r0, [sp, #0x64]
	mov r2, sb
	cmp r2, #8
	ble .L08090116
	b .L08090500
.L08090116:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x6c]
	ldr r0, [r3]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r4, sp, #8
	mov sl, r4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	mov r0, sl
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090174
	mov r0, sl
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090174
	b .L080908B0
.L08090174:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090224
	ldr r1, [sp, #0x6c]
	ldr r0, [r1]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, sl
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, sl
	bl GetTool__C9ToolStack
	adds r5, r0, #0
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
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
	ldr r3, [sp, #0x68]
	ldr r0, [r3]
	bl func_080CF054
	cmp r4, r0
	beq .L080901F0
	b .L080908B0
.L080901F0:
	ldr r0, [r7, #8]
	ldr r4, .L08090220 @ =0x00001BD8
	adds r0, r0, r4
	adds r1, r5, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3a
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, sl
	b .L080905F4
	.align 2, 0
.L08090220: .4byte 0x00001BD8
.L08090224:
	mov r0, sl
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080902CC
	ldr r1, [sp, #0x6c]
	ldr r0, [r1]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r7, #8]
	ldr r3, .L080902C4 @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3b
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r2, .L080902C8 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	b .L08090750
	.align 2, 0
.L080902C4: .4byte 0x00001BD8
.L080902C8: .4byte gUnk_086678A0
.L080902CC:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x3c
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	mov r0, sl
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3d
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L080902F8
	movs r1, #1
.L080902F8:
	cmp r1, #0
	bne .L080902FE
	b .L08090422
.L080902FE:
	mov r0, sl
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L08090398
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x6c]
	ldr r0, [r3]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	b .L08090750
.L08090398:
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x6c]
	ldr r0, [r3]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0809040E
	b .L080908B0
.L0809040E:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r0, [r2]
	b .L080907D4
.L08090422:
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r4, [sp, #0x6c]
	ldr r0, [r4]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, sl
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r4, r0, #0
	mov r0, sl
	bl GetTool__C9ToolStack
	mov r8, r0
	ldr r0, [r7, #8]
	ldr r1, .L080904F8 @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3e
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r2, .L080904FC @ =gUnk_086678A0
	mov sb, r2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r3, [sp, #0x68]
	ldr r0, [r3]
	bl func_080CF054
	cmp r4, r0
	beq .L080904BC
	b .L080908B0
.L080904BC:
	ldr r0, [r7, #8]
	ldr r4, .L080904F8 @ =0x00001BD8
	adds r0, r0, r4
	mov r1, r8
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3f
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, sl
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	b .L08090600
	.align 2, 0
.L080904F8: .4byte 0x00001BD8
.L080904FC: .4byte gUnk_086678A0
.L08090500:
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x70]
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r2, sp, #8
	mov r8, r2
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	mov r0, r8
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809055E
	mov r0, r8
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809055E
	b .L080908B0
.L0809055E:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090610
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, r8
	bl GetTool__C9ToolStack
	adds r5, r0, #0
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r3, [sp, #0x70]
	ldr r0, [r3]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L080905C8
	b .L080908B0
.L080905C8:
	ldr r0, [r7, #8]
	ldr r2, .L08090608 @ =0x00001BD8
	adds r0, r0, r2
	adds r1, r5, #0
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #0x40
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
.L080905F4:
	bl GetAmount__C9ToolStack
	ldr r2, .L0809060C @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
.L08090600:
	adds r3, r4, #0
	bl func_080CC728
	b .L080908B0
	.align 2, 0
.L08090608: .4byte 0x00001BD8
.L0809060C: .4byte gUnk_086678A0
.L08090610:
	mov r0, r8
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080906A4
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r7, #8]
	ldr r3, .L0809069C @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x41
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r2, .L080906A0 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	b .L08090750
	.align 2, 0
.L0809069C: .4byte 0x00001BD8
.L080906A0: .4byte gUnk_086678A0
.L080906A4:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x42
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	mov r0, r8
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x43
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L080906D2
	movs r1, #1
.L080906D2:
	cmp r1, #0
	bne .L080906D8
	b .L080907EA
.L080906D8:
	mov r0, r8
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r4, r0
	bls .L08090770
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r2, [sp, #0x70]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r3, [sp, #0x68]
	ldr r0, [r3]
.L08090750:
	bl func_080CF054
	cmp r4, r0
	beq .L0809075A
	b .L080908B0
.L0809075A:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L080908B0
.L08090770:
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl SubtractAmount__9ToolStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L080908B0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
.L080907D4:
	ldr r1, [sp, #0x64]
.L080907D6:
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L080908B0
.L080907EA:
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r4, r0, #0
	mov r0, r8
	bl GetTool__C9ToolStack
	mov sl, r0
	ldr r0, [r7, #8]
	ldr r2, .L080908C4 @ =0x00001BD8
	adds r0, r0, r2
	adds r1, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #0x44
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r3, .L080908C8 @ =gUnk_086678A0
	mov sb, r3
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L080908B0
	ldr r0, [r7, #8]
	ldr r2, .L080908C4 @ =0x00001BD8
	adds r0, r0, r2
	mov r1, sl
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x45
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
.L080908B0:
	add r3, sp, #0x4c
	ldrb r0, [r3]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080908C4: .4byte 0x00001BD8
.L080908C8: .4byte gUnk_086678A0

	thumb_func_start func_080908CC
func_080908CC: @ 0x080908CC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl func_080CAC70
	cmp r5, #0
	bne .L080908E6
	ldr r0, [r6, #0x78]
	bl func_080CB2FC
	b .L08090914
.L080908E6:
	cmp r5, #8
	bgt .L08090900
	ldr r4, [r6, #0x78]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	b .L08090914
.L08090900:
	ldr r4, [r6, #0x7c]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
.L08090914:
	mov r1, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq .L08090928
	ldr r0, [sp, #8]
	cmp r0, #0
	bne .L0809092A
.L08090928:
	movs r1, #1
.L0809092A:
	cmp r1, #0
	bne .L08090952
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0809095C @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
.L08090952:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0809095C: .4byte gUnk_08117ADC

	thumb_func_start func_08090960
func_08090960: @ 0x08090960
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
	ldr r0, .L08090BC8 @ =gUnk_08100148
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
	beq .L080909D8
	cmp r1, #0
	beq .L080909D8
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080909D8:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_0808EDCC
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
	ldr r0, .L08090BCC @ =gUnk_08100150
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
	beq .L08090A38
	cmp r1, #0
	beq .L08090A38
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08090A38:
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
	str r4, [sp, #0x10]
	cmp r5, r0
	beq .L08090A64
	cmp r0, #0
	beq .L08090A64
	movs r1, #3
	bl func_080CE3DC
.L08090A64:
	str r5, [r4]
	ldr r1, [sp, #0x10]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0808EE9C
	ldr r2, [sp, #0x10]
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
	beq .L08090ACE
	cmp r5, #0
	beq .L08090ACE
	ldr r0, .L08090BD0 @ =vtable_unk_080E5A28
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
.L08090ACE:
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
	beq .L08090B24
	cmp r5, #0
	beq .L08090B24
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
	ldr r0, .L08090BD0 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L08090B24:
	mov r2, sl
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808EF68
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
	ldr r0, .L08090BD4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L08090BD8 @ =0x00000889
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
	movs r1, #0
	mov r8, r1
.L08090B8A:
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
	cmp r0, #0
	blt .L08090B8A
	mov r2, r8
	cmp r2, #0
	beq .L08090BB0
	b .L08090E38
.L08090BB0:
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	beq .L08090BDC
	cmp r0, #1
	bne .L08090BC6
	b .L08090E1E
.L08090BC6:
	b .L08090B8A
	.align 2, 0
.L08090BC8: .4byte gUnk_08100148
.L08090BCC: .4byte gUnk_08100150
.L08090BD0: .4byte vtable_unk_080E5A28
.L08090BD4: .4byte vtable_unk_080E5B80
.L08090BD8: .4byte 0x00000889
.L08090BDC:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08090C04
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #9
	ble .L08090BFC
	cmp r0, #0xd
	bgt .L08090BFC
	adds r0, r7, #0
	bl func_0808EF4C
.L08090BFC:
	ldr r0, [r6]
	bl func_080CDA44
	b .L08090C82
.L08090C04:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08090C28
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0xd
	ble .L08090C20
	adds r0, r7, #0
	bl func_0808EF30
.L08090C20:
	ldr r0, [r6]
	bl func_080CDB08
	b .L08090C82
.L08090C28:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08090C3E
	ldr r0, [r6]
	bl func_080CDCD0
	b .L08090C82
.L08090C3E:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08090C54
	ldr r0, [r6]
	bl func_080CDC00
	b .L08090C82
.L08090C54:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L08090C76
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08090C78
.L08090C76:
	movs r4, #1
.L08090C78:
	cmp r4, #0
	beq .L08090C8E
	ldr r0, [r6]
	bl func_080CDD7C
.L08090C82:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L08090E0C
.L08090C8E:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08090D9A
	mov r1, sb
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08090CCC
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L08090CBC
	adds r0, r3, #0
	movs r2, #0
	bl func_080CEC84
	b .L08090E0C
.L08090CBC:
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r3, #0
	bl func_080CEC84
	b .L08090E0C
.L08090CCC:
	ldr r0, [r6]
	ldr r4, [r0, #4]
	adds r0, r3, #0
	bl func_080CF050
	cmp r4, r0
	bne .L08090D56
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #9
	ble .L08090D32
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L08090D32
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808F784
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090D8E
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808EF68
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, sb
	ldr r0, [r1]
	bl func_080CECD0
	b .L08090E0C
.L08090D32:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r4, r0, #0
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_0808F080
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08090D70
	b .L08090D8E
.L08090D56:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808F784
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090D8E
.L08090D70:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808EF68
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L08090E0C
.L08090D8E:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L08090E0C
.L08090D9A:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08090DF4
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08090DBE
	adds r0, r1, #0
	bl func_080CECD0
	b .L08090E0C
.L08090DBE:
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08090E0C
	movs r1, #1
	mov r8, r1
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L08090DF0 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L08090E0C
	.align 2, 0
.L08090DF0: .4byte 0x00000889
.L08090DF4:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08090E0C
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080908CC
.L08090E0C:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L08090E16
	b .L08090B8A
.L08090E16:
	adds r0, r7, #0
	bl func_0808EF68
	b .L08090B8A
.L08090E1E:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08090E2A
	b .L08090B8A
.L08090E2A:
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_0808EF68
	mov r2, r8
	str r2, [r4]
	b .L08090B8A
.L08090E38:
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
