.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_0808AC14
func_0808AC14: @ 0x0808AC14
	push {lr}
	ldr r2, .L0808AC24 @ =vtable_unk_080E7D68
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L0808AC24: .4byte vtable_unk_080E7D68

	thumb_func_start func_0808AC28
func_0808AC28: @ 0x0808AC28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	mov sb, r1
	movs r0, #1
	str r0, [sp, #0x34]
	cmp r1, #9
	bne .L0808AC42
	b .L0808B158
.L0808AC42:
	cmp r1, #0
	bne .L0808AC48
	b .L0808B158
.L0808AC48:
	cmp r1, #8
	ble .L0808AC4E
	b .L0808AF80
.L0808AC4E:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sl, r4
	cmp r0, #0
	beq .L0808ACE2
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
	beq .L0808AC88
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808AC8A
.L0808AC88:
	movs r1, #1
.L0808AC8A:
	cmp r1, #0
	beq .L0808AC90
	b .L0808B158
.L0808AC90:
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
	movs r1, #0x82
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
	b .L0808AF78
.L0808ACE2:
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
	beq .L0808AD54
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808AD50 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x34]
	b .L0808B158
	.align 2, 0
.L0808AD50: .4byte gUnk_08117B10
.L0808AD54:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L0808AD62
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne .L0808AD64
.L0808AD62:
	movs r1, #1
.L0808AD64:
	cmp r1, #0
	beq .L0808AD6A
	b .L0808AF18
.L0808AD6A:
	add r6, sp, #0x24
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x38]
	ldr r4, [r1]
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
	add r0, sp, #0x30
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x31
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808ADC0
	movs r1, #1
.L0808ADC0:
	cmp r1, #0
	beq .L0808AE96
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	cmp r5, r0
	blo .L0808AE2A
	mov r2, sl
	ldr r4, [r2]
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x38]
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x28
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	mov r1, sl
	ldr r0, [r1]
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
	b .L0808B158
.L0808AE2A:
	mov r2, sl
	ldr r0, [r2]
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x38]
	ldr r4, [r3]
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
	ldr r2, [sp, #0x38]
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
	b .L0808B158
.L0808AE96:
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
	ldr r0, [sp, #0x38]
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
	ldr r1, [sp, #0x38]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #0x20
	b .L0808AF78
.L0808AF18:
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
	movs r3, #0x82
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
.L0808AF78:
	movs r2, #2
	bl memcpy
	b .L0808B158
.L0808AF80:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B012
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808AFBA
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808AFBC
.L0808AFBA:
	movs r1, #1
.L0808AFBC:
	cmp r1, #0
	beq .L0808AFC2
	b .L0808B158
.L0808AFC2:
	ldr r0, [r7, #0x7c]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CD14C
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	add r5, sp, #0x10
	movs r1, #0x82
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
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_0800F418
	b .L0808B158
.L0808B012:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0808B01E
	b .L0808B158
.L0808B01E:
	lsls r0, r0, #2
	ldr r1, .L0808B028 @ =.L0808B02C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808B028: .4byte .L0808B02C
.L0808B02C: @ jump table
	.4byte .L0808B044 @ case 0
	.4byte .L0808B044 @ case 1
	.4byte .L0808B154 @ case 2
	.4byte .L0808B154 @ case 3
	.4byte .L0808B154 @ case 4
	.4byte .L0808B158 @ case 5
.L0808B044:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x10
	ldr r0, [r7, #0x7c]
	bl func_080CC720
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808B078
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808B07A
.L0808B078:
	movs r1, #1
.L0808B07A:
	cmp r1, #0
	bne .L0808B0FE
	ldr r0, [r7, #0x7c]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CD14C
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	add r0, sp, #0x1c
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r1, [r6]
	bl func_0800F294
	ldr r0, [r6]
	bl func_0800F390
	add r4, sp, #0x20
	mov r8, r4
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	mov r0, r8
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
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	ldr r0, [r6]
	ldr r1, [sp, #0x20]
	str r1, [sp, #0x2c]
	bl func_0800F418
	b .L0808B158
.L0808B0FE:
	ldr r0, [r7, #0x7c]
	bl func_080CD4D4
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	add r0, sp, #0x1c
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, [r4]
	bl func_0800F294
	ldr r0, [r4]
	bl func_0800F390
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	b .L0808B158
.L0808B154:
	movs r3, #0
	str r3, [sp, #0x34]
.L0808B158:
	add r4, sp, #0x34
	ldrb r0, [r4]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0808B16C
func_0808B16C: @ 0x0808B16C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	mov sl, r1
	mov sb, r2
	movs r0, #1
	str r0, [sp, #0x38]
	cmp r2, #0
	beq .L0808B18A
	cmp r2, #9
	bne .L0808B190
.L0808B18A:
	adds r0, r7, #0
	mov r1, sl
	b .L0808B860
.L0808B190:
	mov r1, sl
	cmp r1, #0
	beq .L0808B198
	b .L0808B4D0
.L0808B198:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	str r4, [sp, #0x44]
	cmp r0, #0
	beq .L0808B22E
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
	beq .L0808B1D2
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808B1D4
.L0808B1D2:
	movs r1, #1
.L0808B1D4:
	cmp r1, #0
	beq .L0808B1DC
	bl .L0808BA4A
.L0808B1DC:
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
	movs r1, #0x82
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
	ldr r2, [sp, #0x44]
	ldr r0, [r2]
	adds r1, r5, #0
	b .L0808B4C8
.L0808B22E:
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
	ldr r3, [sp, #0x44]
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
	beq .L0808B2A0
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808B29C @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x38]
	b .L0808BA4A
	.align 2, 0
.L0808B29C: .4byte gUnk_08117B10
.L0808B2A0:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L0808B2AE
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne .L0808B2B0
.L0808B2AE:
	movs r1, #1
.L0808B2B0:
	cmp r1, #0
	beq .L0808B2B6
	b .L0808B466
.L0808B2B6:
	add r5, sp, #0x24
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r4, [r1]
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
	add r6, sp, #0x20
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808B30C
	movs r1, #1
.L0808B30C:
	cmp r1, #0
	beq .L0808B3E4
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	cmp r5, r0
	blo .L0808B39A
	mov r2, sl
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x44]
	ldr r5, [r3]
	add r4, sp, #0x28
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
	mov r0, sl
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
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	b .L0808BA4A
.L0808B39A:
	mov r1, sl
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
	ldr r2, [sp, #0x44]
	ldr r0, [r2]
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	ldr r3, [sp, #0x44]
	ldr r0, [r3]
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
	mov r0, sl
	b .L0808B7A4
.L0808B3E4:
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
	ldr r1, [r7, #0x78]
	mov r8, r1
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
	ldr r2, [sp, #0x44]
	ldr r6, [r2]
	mov r3, sl
	ldr r5, [r3]
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
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #0x20
	b .L0808B4C8
.L0808B466:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r1, [r7, #0x78]
	mov r8, r1
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
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	ldr r3, [sp, #0x44]
	ldr r1, [r3]
	movs r2, #2
	bl memcpy
	ldr r4, [sp, #0x44]
	ldr r5, [r4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
.L0808B4C8:
	movs r2, #2
	bl memcpy
	b .L0808BA4A
.L0808B4D0:
	mov r0, sl
	cmp r0, #9
	bne .L0808B4D8
	b .L0808B85C
.L0808B4D8:
	mov r1, sl
	cmp r1, #8
	ble .L0808B4E0
	b .L0808B856
.L0808B4E0:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r4, [r2]
	adds r0, r7, #0
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
	mov r3, r8
	ldr r4, [r3]
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
	mov r4, sp
	adds r4, #0xc
	str r4, [sp, #0x3c]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x3c]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x40]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x40]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B580
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B580
	b .L0808BA4A
.L0808B580:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B5EE
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sl
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
	add r0, sp, #0x2c
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
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x40]
	b .L0808B842
.L0808B5EE:
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B64A
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
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x2c
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r1, [r7, #0x78]
	mov r8, r1
	b .L0808B830
.L0808B64A:
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
	bne .L0808B678
	movs r1, #1
.L0808B678:
	cmp r1, #0
	bne .L0808B67E
	b .L0808B7C8
.L0808B67E:
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L0808B72A
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
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x2c
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
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808BA4A
.L0808B72A:
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
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sl
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
.L0808B7A4:
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
	b .L0808BA4A
.L0808B7C8:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sl
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
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x40]
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	mov r8, r4
.L0808B830:
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x3c]
.L0808B842:
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	b .L0808BA4A
.L0808B856:
	mov r0, sl
	cmp r0, #9
	bne .L0808B86C
.L0808B85C:
	adds r0, r7, #0
	mov r1, sb
.L0808B860:
	bl func_0808AC28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x38]
	b .L0808BA4A
.L0808B86C:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x10
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CC70C
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add r4, sp, #0x1c
	mov r8, r4
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	add r6, sp, #0x20
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B8F6
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B8F6
	b .L0808BA4A
.L0808B8F6:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B96C
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x20]
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
	add r0, sp, #0x30
	bl __12RucksackItem
	ldr r0, [sp, #0x30]
	str r0, [r4]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808BA4A
.L0808B96C:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B9E2
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x30
	bl __12RucksackItem
	ldr r0, [sp, #0x30]
	str r0, [r4]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	b .L0808BA4A
.L0808B9E2:
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x20]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
.L0808BA4A:
	add r1, sp, #0x38
	ldrb r0, [r1]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0808BA60
func_0808BA60: @ 0x0808BA60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r7, #8
	bgt .L0808BAA6
	cmp r7, #0
	bne .L0808BA78
	ldr r0, [r5, #0x78]
	bl func_080CB2FC
	b .L0808BA8C
.L0808BA78:
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
.L0808BA8C:
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808BA9C
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808BA9E
.L0808BA9C:
	movs r2, #1
.L0808BA9E:
	cmp r2, #0
	beq .L0808BAA4
	b .L0808BC00
.L0808BAA4:
	b .L0808BB8A
.L0808BAA6:
	cmp r7, #9
	bne .L0808BB18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BABE
	b .L0808BC00
.L0808BABE:
	ldr r0, [r4]
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #0
	bne .L0808BACC
	b .L0808BBE0
.L0808BACC:
	cmp r6, #1
	bne .L0808BB8A
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x10
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne .L0808BB8A
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BB0C @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808BB10 @ =gUnk_081000A8
	ldr r3, .L0808BB14 @ =gUnk_081000AC
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	b .L0808BC00
	.align 2, 0
.L0808BB0C: .4byte gUnk_08117ABC
.L0808BB10: .4byte gUnk_081000A8
.L0808BB14: .4byte gUnk_081000AC
.L0808BB18:
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
	beq .L0808BB3C
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808BB3E
.L0808BB3C:
	movs r2, #1
.L0808BB3E:
	adds r6, r2, #0
	cmp r6, #0
	bne .L0808BC00
	movs r1, #0x82
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
	adds r4, r0, #0
	cmp r4, #1
	bne .L0808BBE0
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
	beq .L0808BBB4
.L0808BB8A:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BBB0 @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808BC00
	.align 2, 0
.L0808BBB0: .4byte gUnk_08117ADC
.L0808BBB4:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BBD4 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808BBD8 @ =gUnk_081000A8
	ldr r3, .L0808BBDC @ =gUnk_081000AC
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl func_08050E30
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	b .L0808BC00
	.align 2, 0
.L0808BBD4: .4byte gUnk_08117ABC
.L0808BBD8: .4byte gUnk_081000A8
.L0808BBDC: .4byte gUnk_081000AC
.L0808BBE0:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BC08 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808BC0C @ =gUnk_081000A8
	ldr r3, .L0808BC10 @ =gUnk_081000AC
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl func_08050E30
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
.L0808BC00:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BC08: .4byte gUnk_08117ABC
.L0808BC0C: .4byte gUnk_081000A8
.L0808BC10: .4byte gUnk_081000AC

	thumb_func_start func_0808BC14
func_0808BC14: @ 0x0808BC14
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #9
	bne .L0808BC68
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #1
	bne .L0808BC4E
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x35
	bne .L0808BC4E
	ldr r0, [r5, #8]
	ldr r1, .L0808BC64 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800ED2C
.L0808BC4E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F390
	ldr r0, [r5, #0x7c]
	bl func_080CD4D4
	b .L0808BCC2
	.align 2, 0
.L0808BC64: .4byte 0x00001BD8
.L0808BC68:
	movs r1, #0x82
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
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808BCAE
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #5
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x35
	bne .L0808BCAE
	ldr r0, [r5, #8]
	ldr r1, .L0808BCCC @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800ED2C
.L0808BCAE:
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
.L0808BCC2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BCCC: .4byte 0x00001BD8

	thumb_func_start func_0808BCD0
func_0808BCD0: @ 0x0808BCD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov r8, r1
	movs r7, #0
	cmp r1, #0
	beq .L0808BD42
.L0808BCE2:
	movs r1, #0x82
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
	bne .L0808BD3C
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808BD98 @ =0x00001BD8
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
	ldr r2, .L0808BD9C @ =gUnk_086678A0
	adds r3, r6, #0
	bl func_080CB304
.L0808BD3C:
	adds r7, #1
	cmp r7, r8
	blo .L0808BCE2
.L0808BD42:
	adds r7, r5, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808BD8A
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808BD98 @ =0x00001BD8
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
	ldr r5, .L0808BD9C @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBAF0
.L0808BD8A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BD98: .4byte 0x00001BD8
.L0808BD9C: .4byte gUnk_086678A0

	thumb_func_start func_0808BDA0
func_0808BDA0: @ 0x0808BDA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bhs .L0808BE2A
.L0808BDAE:
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
	bne .L0808BE24
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L0808BDDE
	cmp r0, #1
	beq .L0808BDF0
	b .L0808BE04
.L0808BDDE:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L0808BE00
.L0808BDF0:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L0808BE00:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L0808BE04:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BE14
	movs r4, #0xb0
	lsls r4, r4, #1
.L0808BE14:
	ldr r0, [r5, #0x7c]
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, .L0808BE54 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L0808BE24:
	adds r6, #1
	cmp r6, r7
	blo .L0808BDAE
.L0808BE2A:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BE3E
	b .L0808BF80
.L0808BE3E:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0808BE4A
	b .L0808BF80
.L0808BE4A:
	lsls r0, r0, #2
	ldr r1, .L0808BE58 @ =.L0808BE5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808BE54: .4byte gUnk_086678A0
.L0808BE58: .4byte .L0808BE5C
.L0808BE5C: @ jump table
	.4byte .L0808BE74 @ case 0
	.4byte .L0808BEB0 @ case 1
	.4byte .L0808BEF0 @ case 2
	.4byte .L0808BF24 @ case 3
	.4byte .L0808BF74 @ case 4
	.4byte .L0808BF80 @ case 5
.L0808BE74:
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
	beq .L0808BEA4
	movs r6, #0xb0
	lsls r6, r6, #1
.L0808BEA4:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BEAC @ =gUnk_086678A0
	adds r2, r6, #0
	b .L0808BF62
	.align 2, 0
.L0808BEAC: .4byte gUnk_086678A0
.L0808BEB0:
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
	beq .L0808BEE4
	movs r6, #0xb0
	lsls r6, r6, #1
.L0808BEE4:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BEEC @ =gUnk_086678A0
	adds r2, r6, #0
	b .L0808BF62
	.align 2, 0
.L0808BEEC: .4byte gUnk_086678A0
.L0808BEF0:
	ldr r0, [r5, #8]
	ldr r2, .L0808BF08 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L0808BF14
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF0C @ =gUnk_0858BA28
	ldr r2, .L0808BF10 @ =0x000003DA
	b .L0808BF62
	.align 2, 0
.L0808BF08: .4byte 0x00001C70
.L0808BF0C: .4byte gUnk_0858BA28
.L0808BF10: .4byte 0x000003DA
.L0808BF14:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF20 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L0808BF62
	.align 2, 0
.L0808BF20: .4byte gUnk_0858BA28
.L0808BF24:
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
	beq .L0808BF80
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L0808BF5C
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF54 @ =gUnk_0858BA28
	ldr r2, .L0808BF58 @ =0x0000073D
	b .L0808BF62
	.align 2, 0
.L0808BF54: .4byte gUnk_0858BA28
.L0808BF58: .4byte 0x0000073D
.L0808BF5C:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF6C @ =gUnk_0858BA28
	ldr r2, .L0808BF70 @ =0x00000734
.L0808BF62:
	movs r3, #1
	bl func_080CCE58
	b .L0808BF80
	.align 2, 0
.L0808BF6C: .4byte gUnk_0858BA28
.L0808BF70: .4byte 0x00000734
.L0808BF74:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF88 @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CCE58
.L0808BF80:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BF88: .4byte gUnk_086678A0

	thumb_func_start func_0808BF8C
func_0808BF8C: @ 0x0808BF8C
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
	beq .L0808BFDA
	cmp r7, #9
	beq .L0808C000
	cmp r7, #8
	bgt .L0808C04E
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
	bne .L0808C086
	b .L0808C01E
.L0808BFDA:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C086
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	add r2, sp, #8
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CF05C
	b .L0808C084
.L0808C000:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C086
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CF67C
	b .L0808C084
.L0808C01E:
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
	b .L0808C084
.L0808C04E:
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
	bne .L0808C086
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CFA38
.L0808C084:
	mov r8, r0
.L0808C086:
	mov r0, r8
	cmp r0, #0
	beq .L0808C09C
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808C0AA
.L0808C09C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0808C0B8 @ =gUnk_081000B0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808C0AA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C0B8: .4byte gUnk_081000B0

	thumb_func_start func_0808C0BC
func_0808C0BC: @ 0x0808C0BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
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
	ldr r0, .L0808C2F0 @ =gUnk_081000B4
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
	beq .L0808C134
	cmp r1, #0
	beq .L0808C134
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808C134:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_0808BCD0
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
	ldr r0, .L0808C2F4 @ =gUnk_081000BC
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
	beq .L0808C194
	cmp r1, #0
	beq .L0808C194
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808C194:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	adds r0, r7, #0
	mov r1, r8
	bl func_0808BDA0
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	adds r6, r7, #0
	adds r6, #0x8c
	mov sb, r0
	ldr r5, [r6]
	mov r8, r6
	cmp sb, r5
	beq .L0808C1F4
	cmp r5, #0
	beq .L0808C1F4
	ldr r0, .L0808C2F8 @ =vtable_unk_080E5A28
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
.L0808C1F4:
	mov r0, sb
	str r0, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	adds r6, r7, #0
	adds r6, #0x90
	mov sl, r0
	ldr r5, [r6]
	mov sb, r6
	cmp sl, r5
	beq .L0808C246
	cmp r5, #0
	beq .L0808C246
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
	ldr r0, .L0808C2F8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0808C246:
	mov r1, sl
	str r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
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
	ldr r0, .L0808C2FC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L0808C300 @ =0x00000889
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
	movs r0, #0
	mov sl, r0
.L0808C2AC:
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
	blt .L0808C2AC
	mov r1, sl
	cmp r1, #0
	beq .L0808C2D2
	b .L0808C550
.L0808C2D2:
	mov r4, r8
	ldr r0, [r4]
	ldr r6, [r0, #4]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [r5]
	cmp r0, #1
	bne .L0808C2E6
	b .L0808C502
.L0808C2E6:
	cmp r0, #1
	bgt .L0808C304
	cmp r0, #0
	beq .L0808C30C
	b .L0808C2AC
	.align 2, 0
.L0808C2F0: .4byte gUnk_081000B4
.L0808C2F4: .4byte gUnk_081000BC
.L0808C2F8: .4byte vtable_unk_080E5A28
.L0808C2FC: .4byte vtable_unk_080E5B80
.L0808C300: .4byte 0x00000889
.L0808C304:
	cmp r0, #2
	bne .L0808C30A
	b .L0808C536
.L0808C30A:
	b .L0808C2AC
.L0808C30C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0808C322
	ldr r0, [r4]
	bl func_080CDA44
	b .L0808C394
.L0808C322:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0808C338
	ldr r0, [r4]
	bl func_080CDB08
	b .L0808C394
.L0808C338:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0808C34E
	ldr r0, [r4]
	bl func_080CDCD0
	b .L0808C394
.L0808C34E:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0808C364
	ldr r0, [r4]
	bl func_080CDC00
	b .L0808C394
.L0808C364:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L0808C386
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0808C388
.L0808C386:
	movs r4, #1
.L0808C388:
	cmp r4, #0
	beq .L0808C3A0
	mov r1, r8
	ldr r0, [r1]
	bl func_080CDD7C
.L0808C394:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L0808C4EE
.L0808C3A0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L0808C47A
	mov r0, sb
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808C3CC
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r2, #0
	movs r2, #0
	bl func_080CEC84
	b .L0808C4EE
.L0808C3CC:
	mov r1, r8
	ldr r0, [r1]
	ldr r4, [r0, #4]
	adds r0, r2, #0
	bl func_080CF050
	cmp r4, r0
	bne .L0808C406
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808AC28
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C46E
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	b .L0808C464
.L0808C406:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r0, #8
	bgt .L0808C426
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	cmp r0, #8
	bgt .L0808C46E
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r0, #8
	ble .L0808C432
.L0808C426:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	cmp r0, #8
	ble .L0808C46E
.L0808C432:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	mov r2, r8
	ldr r0, [r2]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808B16C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C46E
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
.L0808C464:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808C4EE
.L0808C46E:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808C4EE
.L0808C47A:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808C4D4
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808C49E
	adds r0, r1, #0
	bl func_080CECD0
	b .L0808C4EE
.L0808C49E:
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808C4EE
	movs r1, #1
	mov sl, r1
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L0808C4D0 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808C4EE
	.align 2, 0
.L0808C4D0: .4byte 0x00000889
.L0808C4D4:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0808C4EE
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BA60
.L0808C4EE:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r6, r1
	bne .L0808C4FA
	b .L0808C2AC
.L0808C4FA:
	adds r0, r7, #0
	bl func_0808BF8C
	b .L0808C2AC
.L0808C502:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808C50E
	b .L0808C2AC
.L0808C50E:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	bne .L0808C524
	ldr r0, [r4]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BC14
.L0808C524:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
	mov r0, sl
	str r0, [r5]
	b .L0808C2AC
.L0808C536:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808C542
	b .L0808C2AC
.L0808C542:
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0808BF8C
	mov r1, sl
	str r1, [r5]
	b .L0808C2AC
.L0808C550:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
