	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

.L0807B07C:
	.byte 0x30, 0xB5, 0x04, 0x1C
	.byte 0x0D, 0x1C, 0x0D, 0x48, 0x20, 0x60, 0xA1, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68
	.byte 0x08, 0x1C, 0x03, 0x21, 0x58, 0xF0, 0x3E, 0xFC, 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68
	.byte 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x58, 0xF0, 0x35, 0xFC, 0x20, 0x1C, 0x29, 0x1C, 0x85, 0xF7
	.byte 0x9D, 0xFB, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xDC, 0x7B, 0x0E, 0x08, 0x30, 0xB5, 0x81, 0xB0
	.byte 0x05, 0x1C, 0x0C, 0x1C, 0x61, 0x68, 0x68, 0x46, 0xFE, 0xF7, 0x0C, 0xF8, 0x00, 0x99, 0x00, 0x29
	.byte 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x58, 0xF0, 0x1B, 0xFC, 0xA1, 0x68
	.byte 0x00, 0x20, 0xA0, 0x60, 0x29, 0x60, 0x28, 0x1C, 0x01, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_0807B0F0
func_0807B0F0: @ 0x0807B0F0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl func_080C7F58
	ldr r0, .L0807B10C @ =vtable_unk_080E7BEC
	str r0, [r5, #4]
	ldr r0, .L0807B110 @ =0x000006A4
	adds r1, r5, r0
	cmp r4, #0
	beq .L0807B114
	movs r0, #4
	str r0, [r1]
	b .L0807B116
	.align 2, 0
.L0807B10C: .4byte vtable_unk_080E7BEC
.L0807B110: .4byte 0x000006A4
.L0807B114:
	str r4, [r1]
.L0807B116:
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L0807B164 @ =0x000006EC
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #8
	ldr r7, .L0807B168 @ =gUnk_080FD9EC
	subs r1, #1
.L0807B12C:
	subs r0, #1
	cmp r0, r1
	bne .L0807B12C
	ldr r0, .L0807B16C @ =0x00002234
	adds r6, r5, r0
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L0807B144
	movs r4, #0x7f
.L0807B144:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L0807B170 @ =0x000022B4
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807B164: .4byte 0x000006EC
.L0807B168: .4byte gUnk_080FD9EC
.L0807B16C: .4byte 0x00002234
.L0807B170: .4byte 0x000022B4
.L0807B174:
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x42, 0x60, 0x4D, 0xF0, 0xF1, 0xF8, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xEC, 0x7B, 0x0E, 0x08

	thumb_func_start func_0807B188
func_0807B188: @ 0x0807B188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	adds r6, r0, #0
	movs r0, #4
	str r0, [sp, #0xd8]
	adds r3, r6, #0
	adds r3, #0x20
	adds r5, r6, #0
	adds r5, #0x24
	ldr r0, [r6, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r3, r0
	adds r2, r0, #0
	adds r1, r5, #0
	ldr r4, [r3]
	cmp r1, r2
	beq .L0807B1BA
.L0807B1B4:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807B1B4
.L0807B1BA:
	subs r0, r0, r5
	asrs r0, r0, #4
	subs r0, r4, r0
	str r0, [r3]
	movs r1, #0
	str r1, [sp, #0xdc]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r1, r0
	blo .L0807B1D4
	b .L0807B398
.L0807B1D4:
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0xe4]
	movs r5, #0
	movs r4, #4
	str r4, [sp, #0xe8]
.L0807B1E0:
	movs r7, #0xa9
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [sp, #0xe8]
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L0807B290 @ =gUnk_080FD988
	add r0, sp, #8
	adds r1, r1, r2
	ldm r1!, {r2, r4, r7}
	stm r0!, {r2, r4, r7}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xd0
	str r0, [sp, #0xe0]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bls .L0807B212
	b .L0807B31A
.L0807B212:
	movs r0, #0x10
	ldr r7, [sp, #0xe4]
	str r0, [r7, #4]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r1, .L0807B294 @ =gUnk_086678A0
	bl func_0805E6CC
	add r0, sp, #0x5c
	strh r5, [r0]
	strh r5, [r0, #2]
	add r0, sp, #0x60
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x74
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	add r0, sp, #0x90
	strb r1, [r0]
	add r3, sp, #0x94
	str r5, [r3]
	strh r5, [r3, #4]
	add r2, sp, #0x9c
	str r5, [r2]
	strh r5, [r2, #4]
	add r1, sp, #0xa4
	str r5, [r1]
	strh r5, [r1, #4]
	add r0, sp, #0xac
	str r5, [r0]
	strh r5, [r0, #4]
	ldr r4, [sp, #0xd8]
	lsls r0, r4, #3
	strh r0, [r7]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x1c
	mov r8, r3
	mov sb, r2
	mov sl, r1
	cmp r0, #0
	bne .L0807B298
	add r4, sp, #0xd4
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	b .L0807B2AA
	.align 2, 0
.L0807B290: .4byte gUnk_080FD988
.L0807B294: .4byte gUnk_086678A0
.L0807B298:
	mov r4, sp
	adds r4, #0xd5
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
.L0807B2AA:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	add r4, sp, #0x60
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [sp, #0x60]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x64]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xb4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xb4
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r3, sb
	ldr r0, [r3]
	str r0, [r7, #8]
	mov r4, sl
	ldr r0, [r4]
	str r0, [r7, #0xc]
	adds r1, r6, #0
	adds r1, #0x20
	ldr r0, [r6, #0x20]
	cmp r0, #0x27
	bhi .L0807B316
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807B310
	adds r1, r7, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x28]
	str r1, [r0]
.L0807B310:
	ldr r0, [r6, #0x20]
	adds r0, #1
	str r0, [r6, #0x20]
.L0807B316:
	ldr r0, .L0807B3AC @ =vtable_unk_080E5A28
	str r0, [sp, #0x2c]
.L0807B31A:
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r7, [sp, #0xd8]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #4
	ldr r2, [sp, #0xe0]
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	movs r7, #0x20
	str r7, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [sp, #0xe8]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #2
	bhi .L0807B37C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	ldr r0, [sp, #0x10]
	str r7, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	mov r1, sb
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L0807B37C:
	ldr r2, [sp, #0xd8]
	adds r2, #2
	str r2, [sp, #0xd8]
	ldr r3, [sp, #0xe8]
	adds r3, #4
	str r3, [sp, #0xe8]
	ldr r4, [sp, #0xdc]
	adds r4, #1
	str r4, [sp, #0xdc]
	mov r7, r8
	ldr r0, [r7]
	cmp r4, r0
	bhs .L0807B398
	b .L0807B1E0
.L0807B398:
	ldr r0, [sp, #0xd8]
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807B3AC: .4byte vtable_unk_080E5A28

	thumb_func_start func_0807B3B0
func_0807B3B0: @ 0x0807B3B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov r8, r0
	movs r0, #4
	str r0, [sp, #0x4c]
	mov r4, r8
	adds r4, #0x20
	mov r6, r8
	adds r6, #0x24
	mov r1, r8
	ldr r0, [r1, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	adds r2, r0, #0
	adds r1, r6, #0
	ldr r5, [r4]
	mov r7, r8
	ldr r3, [r7, #8]
	cmp r1, r2
	beq .L0807B3E8
.L0807B3E2:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807B3E2
.L0807B3E8:
	subs r0, r0, r6
	asrs r0, r0, #4
	subs r0, r5, r0
	str r0, [r4]
	movs r0, #0
	str r0, [sp, #0x54]
	b .L0807B8B8
.L0807B3F6:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetChicken__4CoopUi
	str r0, [sp, #0x50]
	movs r0, #0x10
	str r0, [sp, #0x10]
	add r1, sp, #0xc
	ldr r4, [sp, #0x4c]
	lsls r0, r4, #3
	strh r0, [r1]
	ldr r0, .L0807B544 @ =gUnk_0875268C
	str r0, [sp, #0x14]
	ldr r0, .L0807B548 @ =gUnk_0875270C
	str r0, [sp, #0x18]
	mov r1, r8
	adds r1, #0x20
	mov r5, r8
	ldr r0, [r5, #0x20]
	adds r4, r1, #0
	cmp r0, #0x27
	bhi .L0807B444
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807B43C
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B43C:
	mov r5, r8
	ldr r0, [r5, #0x20]
	adds r0, #1
	str r0, [r5, #0x20]
.L0807B444:
	ldr r0, [sp, #0x50]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807B480
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, .L0807B54C @ =gUnk_0875196C
	str r0, [sp, #0x14]
	ldr r0, .L0807B550 @ =gUnk_087519EC
	str r0, [sp, #0x18]
	mov r7, r8
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0807B480
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B478
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807B478:
	mov r5, r8
	ldr r0, [r5, #0x20]
	adds r0, #1
	str r0, [r5, #0x20]
.L0807B480:
	ldr r7, [sp, #0x54]
	lsls r4, r7, #1
	adds r4, r4, r7
	lsls r4, r4, #6
	adds r4, r4, r7
	lsls r4, r4, #2
	mov r0, r8
	adds r1, r4, r0
	movs r2, #0xe2
	lsls r2, r2, #3
	adds r1, r1, r2
	add r0, sp, #0x2c
	movs r5, #0xc
	movs r6, #2
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x2c]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x50]
	bl GetName__C6Animal
	adds r2, r0, #0
	mov r3, r8
	adds r1, r4, r3
	movs r7, #0xe2
	lsls r7, r7, #3
	adds r1, r1, r7
	add r0, sp, #0x30
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x30]
	adds r1, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	ldr r1, [sp, #0x54]
	adds r1, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xd0
	mov sb, r0
	mov r0, r8
	bl func_08008910
	add r4, r8
	adds r4, r4, r7
	adds r4, #4
	adds r6, r0, #0
	mov r5, sb
	lsls r2, r5, #5
	movs r7, #0xc0
	lsls r7, r7, #0x13
	adds r2, r2, r7
	add r0, sp, #0x1c
	adds r1, r4, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	add r0, sp, #0x1c
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807B554
	cmp r1, #0
	beq .L0807B524
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807B524:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x4c]
	lsls r5, r5, #6
	str r5, [sp, #0x60]
	mov r7, sb
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r0, [sp, #0x4c]
	adds r0, #2
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	adds r1, #1
	str r1, [sp, #0x58]
	b .L0807B634
	.align 2, 0
.L0807B544: .4byte gUnk_0875268C
.L0807B548: .4byte gUnk_0875270C
.L0807B54C: .4byte gUnk_0875196C
.L0807B550: .4byte gUnk_087519EC
.L0807B554:
	str r1, [sp, #0x68]
	movs r2, #1
	str r2, [sp, #0x38]
	ldr r0, [r6]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L0807B56E
	adds r0, r1, #0
.L0807B56E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B58C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x64]
	cmp r0, #0
	bne .L0807B592
	adds r0, r4, #0
	bl func_080D3BC0
	b .L0807B592
.L0807B58C:
	movs r0, #0
	movs r4, #0
	str r4, [sp, #0x64]
.L0807B592:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x4c]
	lsls r5, r5, #6
	str r5, [sp, #0x60]
	mov r7, sb
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r0, [sp, #0x4c]
	adds r0, #2
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	adds r1, #1
	str r1, [sp, #0x58]
	ldr r4, [sp, #0x68]
	cmp r2, r4
	beq .L0807B5D2
.L0807B5B8:
	cmp r3, #0
	beq .L0807B5C8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B5C8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x68]
	cmp r2, r5
	bne .L0807B5B8
.L0807B5D2:
	adds r5, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L0807B5EE
	cmp r5, #0
	beq .L0807B5EA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B5EA:
	adds r5, #0x10
	b .L0807B610
.L0807B5EE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807B60E
.L0807B5F6:
	cmp r2, #0
	beq .L0807B606
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B606:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807B5F6
.L0807B60E:
	adds r5, r2, #0
.L0807B610:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807B620
.L0807B61A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807B61A
.L0807B620:
	cmp r0, #0
	beq .L0807B628
	bl free
.L0807B628:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x6c]
	adds r0, r1, r2
	str r2, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807B634:
	mov r3, r8
	ldr r0, [r3, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r4, [sp, #0x60]
	adds r0, r0, r4
	adds r0, #0xc
	mov r5, sb
	lsrs r1, r5, #0x10
	movs r7, #0
	str r7, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #1
	lsls r2, r0, #5
	add r0, sp, #0x1c
	ldr r1, .L0807B698 @ =gUnk_0875254C
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #0x1c
	mov sl, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807B69C
	cmp r1, #0
	beq .L0807B68E
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B68E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807B766
	.align 2, 0
.L0807B698: .4byte gUnk_0875254C
.L0807B69C:
	str r1, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r1, [r6]
	ldr r3, [sp, #0x68]
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r2, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L0807B6B6
	adds r0, r2, #0
.L0807B6B6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B6D6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807B6D2
	mov r0, sb
	bl func_080D3BC0
.L0807B6D2:
	ldr r1, [r6]
	b .L0807B6DA
.L0807B6D6:
	movs r0, #0
	mov sb, r0
.L0807B6DA:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x68]
	cmp r2, r4
	beq .L0807B702
.L0807B6E8:
	cmp r3, #0
	beq .L0807B6F8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B6F8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x68]
	cmp r2, r5
	bne .L0807B6E8
.L0807B702:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L0807B71E
	cmp r5, #0
	beq .L0807B71A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B71A:
	adds r5, #0x10
	b .L0807B740
.L0807B71E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807B73E
.L0807B726:
	cmp r2, #0
	beq .L0807B736
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B736:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807B726
.L0807B73E:
	adds r5, r2, #0
.L0807B740:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0807B750
.L0807B74A:
	adds r0, #0x10
	cmp r0, r2
	bne .L0807B74A
.L0807B750:
	cmp r1, #0
	beq .L0807B75A
	adds r0, r1, #0
	bl free
.L0807B75A:
	ldr r0, [sp, #0x6c]
	add r0, sb
	ldr r1, [sp, #0x6c]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807B766:
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #0x1c
	ldr r1, .L0807B7A0 @ =gUnk_087525CC
	ldr r2, .L0807B7A4 @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #0x1c
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807B7A8
	cmp r1, #0
	beq .L0807B796
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807B796:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807B86E
	.align 2, 0
.L0807B7A0: .4byte gUnk_087525CC
.L0807B7A4: .4byte 0x05000020
.L0807B7A8:
	str r1, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x48]
	ldr r1, [r6]
	ldr r7, [sp, #0x68]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x44]
	add r2, sp, #0x48
	add r0, sp, #0x44
	cmp r4, #1
	bhs .L0807B7C2
	adds r0, r2, #0
.L0807B7C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B7E2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807B7DE
	mov r0, sb
	bl func_080D3BC0
.L0807B7DE:
	ldr r1, [r6]
	b .L0807B7E6
.L0807B7E2:
	movs r0, #0
	mov sb, r0
.L0807B7E6:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	adds r2, r1, #0
	adds r3, r5, #0
	b .L0807B804
.L0807B7F0:
	cmp r3, #0
	beq .L0807B800
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B800:
	adds r2, #0x10
	adds r3, #0x10
.L0807B804:
	ldr r0, [sp, #0x68]
	cmp r2, r0
	bne .L0807B7F0
	adds r5, r3, #0
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne .L0807B826
	cmp r5, #0
	beq .L0807B822
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807B822:
	adds r5, #0x10
	b .L0807B848
.L0807B826:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807B846
.L0807B82E:
	cmp r2, #0
	beq .L0807B83E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B83E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807B82E
.L0807B846:
	adds r5, r2, #0
.L0807B848:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0807B858
.L0807B852:
	adds r0, #0x10
	cmp r0, r2
	bne .L0807B852
.L0807B858:
	cmp r1, #0
	beq .L0807B862
	adds r0, r1, #0
	bl free
.L0807B862:
	ldr r0, [sp, #0x6c]
	add r0, sb
	ldr r7, [sp, #0x6c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807B86E:
	movs r5, #0
	ldr r0, [sp, #0x4c]
	adds r0, #1
	lsls r7, r0, #6
	movs r4, #0x26
	movs r0, #0xf8
	lsls r0, r0, #1
	lsls r6, r0, #0x10
	b .L0807B8A0
.L0807B880:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r7
	adds r0, r0, r4
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
.L0807B8A0:
	mov r0, r8
	ldr r1, [sp, #0x50]
	bl func_0807B8F4
	cmp r5, r0
	blo .L0807B880
	ldr r2, [sp, #0x5c]
	str r2, [sp, #0x4c]
	ldr r3, [sp, #0x58]
	str r3, [sp, #0x54]
	mov r4, r8
	ldr r3, [r4, #8]
.L0807B8B8:
	movs r5, #0x82
	lsls r5, r5, #3
	adds r0, r3, r5
	bl GetCapacity__C4Coop
	ldr r7, [sp, #0x54]
	cmp r7, r0
	bhs .L0807B8DC
	lsls r0, r7, #3
	ldr r1, .L0807B8F0 @ =0x000006AC
	add r1, r8
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq .L0807B8DC
	b .L0807B3F6
.L0807B8DC:
	ldr r0, [sp, #0x4c]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807B8F0: .4byte 0x000006AC

	thumb_func_start func_0807B8F4
func_0807B8F4: @ 0x0807B8F4
	push {lr}
	sub sp, #8
	adds r0, r1, #0
	movs r1, #0xa
	str r1, [sp]
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	str r0, [sp, #4]
	add r2, sp, #4
	ldr r1, [sp]
	mov r3, sp
	cmp r1, r0
	bls .L0807B916
	adds r3, r2, #0
.L0807B916:
	ldr r0, [r3]
	add sp, #8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0807B920
func_0807B920: @ 0x0807B920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L0807B978 @ =gUnk_080FD988
	mov r1, sp
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, .L0807B97C @ =0x00002234
	add r5, r8
	ldr r6, .L0807B980 @ =gUnk_080FD964
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L0807B956
	movs r4, #0x7f
.L0807B956:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bls .L0807B96E
	b .L0807BE4C
.L0807B96E:
	lsls r0, r0, #2
	ldr r1, .L0807B984 @ =.L0807B988
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807B978: .4byte gUnk_080FD988
.L0807B97C: .4byte 0x00002234
.L0807B980: .4byte gUnk_080FD964
.L0807B984: .4byte .L0807B988
.L0807B988: @ jump table
	.4byte .L0807B99C @ case 0
	.4byte .L0807B9B0 @ case 1
	.4byte .L0807B9C6 @ case 2
	.4byte .L0807B9C6 @ case 3
	.4byte .L0807B9D0 @ case 4
.L0807B99C:
	add r4, sp, #0x28
	ldr r1, [sp]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetDesc__C7Article
	adds r1, r0, #0
	b .L0807B9C8
.L0807B9B0:
	mov r4, sp
	adds r4, #0x29
	ldr r1, [sp]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetDesc__C4Tool
	adds r1, r0, #0
	b .L0807B9C8
.L0807B9C6:
	ldr r1, [sp, #0xc]
.L0807B9C8:
	mov r0, r8
	bl func_080CABEC
	b .L0807BE4C
.L0807B9D0:
	mov r4, r8
	ldr r0, [r4, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, [r4, #0x10]
	lsls r2, r2, #3
	ldr r1, .L0807BA30 @ =0x000006AC
	add r1, r8
	adds r1, r1, r2
	ldr r1, [r1]
	bl GetChicken__4CoopUi
	mov sl, r0
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0
	beq .L0807BA3C
	ldr r4, .L0807BA34 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BA38 @ =gUnk_080FD9F0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BABC
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BA1E
	adds r4, r5, #0
.L0807BA1E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	b .L0807BABC
	.align 2, 0
.L0807BA30: .4byte 0x000006AC
.L0807BA34: .4byte 0x00002234
.L0807BA38: .4byte gUnk_080FD9F0
.L0807BA3C:
	mov r0, sl
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L0807BA88
	ldr r4, .L0807BA80 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BA84 @ =gUnk_080FD9FC
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BABC
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BA6E
	adds r4, r5, #0
.L0807BA6E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r2, sb
	strb r2, [r0]
	b .L0807BABC
	.align 2, 0
.L0807BA80: .4byte 0x00002234
.L0807BA84: .4byte gUnk_080FD9FC
.L0807BA88:
	ldr r4, .L0807BB94 @ =0x00002234
	add r4, r8
	ldr r3, .L0807BB98 @ =gUnk_080FDA10
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BABC
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BAAE
	adds r4, r5, #0
.L0807BAAE:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	strb r7, [r0]
.L0807BABC:
	mov r0, sl
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt .L0807BB04
	ldr r4, .L0807BB94 @ =0x00002234
	add r4, r8
	ldr r0, .L0807BB9C @ =gUnk_080FDA20
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BB04
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BAF4
	adds r4, r5, #0
.L0807BAF4:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BB04:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	ldr r6, .L0807BB94 @ =0x00002234
	add r6, r8
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BB42
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BB32
	adds r4, r5, #0
.L0807BB32:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BB42:
	ldr r7, .L0807BBA0 @ =gUnk_080FDA24
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BB72
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BB62
	adds r4, r5, #0
.L0807BB62:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BB72:
	mov r0, sl
	bl GetAge__C6Animal
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	ldrb r1, [r0, #0x11]
	mov r0, sp
	adds r0, #0x2a
	strb r1, [r0]
	adds r6, r0, #0
	cmp r4, #0x1d
	bhi .L0807BBA4
	adds r5, r4, #0
	movs r4, #0
	b .L0807BBB8
	.align 2, 0
.L0807BB94: .4byte 0x00002234
.L0807BB98: .4byte gUnk_080FDA10
.L0807BB9C: .4byte gUnk_080FDA20
.L0807BBA0: .4byte gUnk_080FDA24
.L0807BBA4:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r0, #0
.L0807BBB8:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r3, r1, r2
	cmp r3, #0x1d
	bhi .L0807BBCC
	adds r4, #1
	b .L0807BBCE
.L0807BBCC:
	subs r3, #0x1e
.L0807BBCE:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, r0, r4
	movs r2, #3
	ands r0, r2
	ldrb r2, [r6]
	ands r1, r2
	orrs r1, r0
	movs r0, #0x1f
	ands r3, r0
	lsls r2, r3, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r6]
	mov sl, r1
	lsls r1, r1, #0x1e
	lsrs r6, r1, #0x1e
	cmp r6, #1
	beq .L0807BC50
	cmp r6, #1
	bgt .L0807BC06
	cmp r6, #0
	beq .L0807BC10
	b .L0807BCA4
.L0807BC06:
	cmp r6, #2
	beq .L0807BC60
	cmp r6, #3
	beq .L0807BC70
	b .L0807BCA4
.L0807BC10:
	ldr r4, .L0807BC48 @ =0x00002234
	add r4, r8
	ldr r2, .L0807BC4C @ =gUnk_080FDA40
	mov sb, r2
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BCA4
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BC36
	adds r4, r5, #0
.L0807BC36:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	strb r6, [r0]
	b .L0807BCA4
	.align 2, 0
.L0807BC48: .4byte 0x00002234
.L0807BC4C: .4byte gUnk_080FDA40
.L0807BC50:
	ldr r4, .L0807BC58 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BC5C @ =gUnk_080FDA48
	b .L0807BC76
	.align 2, 0
.L0807BC58: .4byte 0x00002234
.L0807BC5C: .4byte gUnk_080FDA48
.L0807BC60:
	ldr r4, .L0807BC68 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BC6C @ =gUnk_080FDA50
	b .L0807BC76
	.align 2, 0
.L0807BC68: .4byte 0x00002234
.L0807BC6C: .4byte gUnk_080FDA50
.L0807BC70:
	ldr r4, .L0807BE5C @ =0x00002234
	add r4, r8
	ldr r7, .L0807BE60 @ =gUnk_080FDA58
.L0807BC76:
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BCA4
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BC94
	adds r4, r5, #0
.L0807BC94:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BCA4:
	mov r3, sl
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	adds r6, r0, #1
	cmp r6, #9
	bgt .L0807BCE4
	ldr r4, .L0807BE5C @ =0x00002234
	add r4, r8
	ldr r7, .L0807BE64 @ =gUnk_080FDA20
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BCE4
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BCD4
	adds r4, r5, #0
.L0807BCD4:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BCE4:
	mov r4, sl
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	ldr r6, .L0807BE5C @ =0x00002234
	add r6, r8
	ldr r0, .L0807BE64 @ =gUnk_080FDA20
	mov sb, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BD2A
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BD1A
	adds r4, r5, #0
.L0807BD1A:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BD2A:
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BD58
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BD48
	adds r4, r5, #0
.L0807BD48:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BD58:
	ldr r7, .L0807BE68 @ =gUnk_080FDA60
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BD88
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BD78
	adds r4, r5, #0
.L0807BD78:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BD88:
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #3
	movs r1, #0xd6
	lsls r1, r1, #3
	add r1, r8
	adds r1, r1, r0
	ldr r6, [r1]
	ldr r0, .L0807BE6C @ =0x000003E7
	cmp r6, r0
	bgt .L0807BDD4
	ldr r4, .L0807BE5C @ =0x00002234
	add r4, r8
	ldr r2, .L0807BE64 @ =gUnk_080FDA20
	mov sb, r2
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BDD4
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BDC4
	adds r4, r5, #0
.L0807BDC4:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BDD4:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	ldr r6, .L0807BE5C @ =0x00002234
	add r6, r8
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BE12
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BE02
	adds r4, r5, #0
.L0807BE02:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BE12:
	ldr r7, .L0807BE70 @ =gUnk_080FDA78
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BE42
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BE32
	adds r4, r5, #0
.L0807BE32:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BE42:
	ldr r1, .L0807BE5C @ =0x00002234
	add r1, r8
	mov r0, r8
	bl func_080CABEC
.L0807BE4C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807BE5C: .4byte 0x00002234
.L0807BE60: .4byte gUnk_080FDA58
.L0807BE64: .4byte gUnk_080FDA20
.L0807BE68: .4byte gUnk_080FDA60
.L0807BE6C: .4byte 0x000003E7
.L0807BE70: .4byte gUnk_080FDA78

	thumb_func_start func_0807BE74
func_0807BE74: @ 0x0807BE74
	push {r4, lr}
	ldr r0, [r0, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	movs r4, #0xfa
	lsls r4, r4, #1
	bl GetProductRank__C9Livestock
	cmp r0, #4
	bhi .L0807BEC0
	lsls r0, r0, #2
	ldr r1, .L0807BE98 @ =.L0807BE9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807BE98: .4byte .L0807BE9C
.L0807BE9C: @ jump table
	.4byte .L0807BEB0 @ case 0
	.4byte .L0807BEB0 @ case 1
	.4byte .L0807BEB0 @ case 2
	.4byte .L0807BEB6 @ case 3
	.4byte .L0807BEBC @ case 4
.L0807BEB0:
	movs r4, #0xfa
	lsls r4, r4, #1
	b .L0807BEC0
.L0807BEB6:
	movs r4, #0xfa
	lsls r4, r4, #2
	b .L0807BEC0
.L0807BEBC:
	movs r4, #0xfa
	lsls r4, r4, #3
.L0807BEC0:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0807BEC8
func_0807BEC8: @ 0x0807BEC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF00
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BEFA
	movs r0, #0
	str r0, [r2]
.L0807BEFA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF00:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF20
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BF1A
	movs r0, #1
	str r0, [r2]
.L0807BF1A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF20:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF40
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BF3A
	movs r0, #2
	str r0, [r2]
.L0807BF3A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF40:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BF5A
	movs r0, #3
	str r0, [r2]
.L0807BF5A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF60:
	movs r5, #0
	mov sb, r5
	mov r6, sp
	adds r6, #0x6c
	str r6, [sp, #0x9c]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x98]
.L0807BF70:
	mov r2, sb
	lsls r1, r2, #2
	add r1, sb
	lsls r1, r1, #2
	ldr r2, .L0807C02C @ =gUnk_080FD988
	add r0, sp, #0xc
	adds r1, r1, r2
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	mov r3, sb
	lsls r0, r3, #1
	adds r4, r0, r3
	lsls r0, r4, #6
	add r0, sb
	lsls r5, r0, #2
	adds r1, r5, r7
	movs r6, #0xe2
	lsls r6, r6, #3
	adds r1, r1, r6
	add r0, sp, #0x6c
	movs r2, #0xc
	strh r2, [r0]
	movs r6, #2
	ldr r3, [sp, #0x9c]
	strh r6, [r3, #2]
	ldr r0, [sp, #0x6c]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	mov r0, sb
	cmp r0, #1
	bls .L0807BFD8
	adds r1, r5, r7
	ldr r2, [sp, #0x10]
	add r0, sp, #0x70
	movs r3, #0xc
	strh r3, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x70]
	ldr r6, .L0807C030 @ =0x00000714
	adds r1, r1, r6
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
.L0807BFD8:
	lsls r4, r4, #3
	adds r4, #0xd0
	adds r0, r7, #0
	bl func_08008910
	adds r1, r5, r7
	movs r5, #0xe2
	lsls r5, r5, #3
	adds r1, r1, r5
	adds r1, #4
	adds r6, r0, #0
	lsls r4, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r4, r0
	add r0, sp, #0x20
	adds r2, r4, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x8c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807C034
	cmp r1, #0
	beq .L0807C01E
	adds r0, r1, #0
	ldr r1, [sp, #0x8c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807C01E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r5, #1
	add sb, r5
	b .L0807C102
	.align 2, 0
.L0807C02C: .4byte gUnk_080FD988
.L0807C030: .4byte 0x00000714
.L0807C034:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L0807C04C
	adds r0, r1, #0
.L0807C04C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807C06A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0807C06E
	mov r0, sl
	bl func_080D3BC0
	b .L0807C06E
.L0807C06A:
	movs r0, #0
	mov sl, r0
.L0807C06E:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r2, [r6]
	mov ip, r5
	movs r1, #1
	add sb, r1
	cmp r2, r8
	beq .L0807C09A
.L0807C07E:
	mov r3, ip
	cmp r3, #0
	beq .L0807C090
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807C090:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L0807C07E
.L0807C09A:
	mov r5, ip
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L0807C0B6
	cmp r5, #0
	beq .L0807C0B2
	adds r0, r5, #0
	ldr r1, [sp, #0x8c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807C0B2:
	adds r5, #0x10
	b .L0807C0DE
.L0807C0B6:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0807C0DC
.L0807C0BE:
	cmp r2, #0
	beq .L0807C0CE
	adds r0, r2, #0
	ldr r1, [sp, #0x8c]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807C0CE:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0807C0BE
.L0807C0DC:
	adds r5, r2, #0
.L0807C0DE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807C0EE
.L0807C0E8:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807C0E8
.L0807C0EE:
	cmp r0, #0
	beq .L0807C0F6
	bl free
.L0807C0F6:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807C102:
	mov r2, sb
	cmp r2, #4
	bhi .L0807C10A
	b .L0807BF70
.L0807C10A:
	adds r0, r7, #0
	bl func_0807B188
	adds r5, r0, #0
	ldr r0, [r7, #0x1c]
	movs r3, #0xc
	ldrsh r1, [r7, r3]
	bl func_08075C88
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0807B920
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
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
	ldr r0, .L0807C1CC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L0807C1D0 @ =0x00000889
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
	movs r5, #0
	str r5, [sp, #0x90]

	thumb_func_start sub_0807C194
sub_0807C194: @ 0x0807C194
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807C1B0
	bl .L0807D054
.L0807C1B0:
	ldr r6, [sp, #0x90]
	cmp r6, #0
	beq .L0807C1D4
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #1
	rsbs r0, r0, #0
	bl .L0807D05E
	.align 2, 0
.L0807C1CC: .4byte vtable_unk_080E5B80
.L0807C1D0: .4byte 0x00000889
.L0807C1D4:
	ldr r1, .L0807C1EC @ =0x000006A4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0xa
	bls .L0807C1E2
	bl .L0807D054
.L0807C1E2:
	lsls r0, r0, #2
	ldr r1, .L0807C1F0 @ =.L0807C1F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807C1EC: .4byte 0x000006A4
.L0807C1F0: .4byte .L0807C1F4
.L0807C1F4: @ jump table
	.4byte .L0807C220 @ case 0
	.4byte .L0807C9D0 @ case 1
	.4byte .L0807CB60 @ case 2
	.4byte .L0807CD50 @ case 3
	.4byte .L0807CE48 @ case 4
	.4byte .L0807CE78 @ case 5
	.4byte .L0807CEA8 @ case 6
	.4byte .L0807CED4 @ case 7
	.4byte .L0807CF44 @ case 8
	.4byte .L0807CFEC @ case 9
	.4byte .L0807D02C @ case 10
.L0807C220:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807C23A
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0807B920
.L0807C23A:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r1, [r4]
	adds r0, r7, #0
	bl func_080C9020
	ldr r5, .L0807C294 @ =0x000006A1
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807C258
	b .L0807C970
.L0807C258:
	add r5, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L0807C298 @ =gUnk_080FD988
	adds r0, r5, #0
	adds r1, r1, r2
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	cmp r3, #1
	bne .L0807C27E
	b .L0807C484
.L0807C27E:
	cmp r3, #1
	blo .L0807C29C
	cmp r3, #2
	bne .L0807C288
	b .L0807C73C
.L0807C288:
	cmp r3, #3
	bne .L0807C28E
	b .L0807C800
.L0807C28E:
	bl .L0807D054
	.align 2, 0
.L0807C294: .4byte 0x000006A1
.L0807C298: .4byte gUnk_080FD988
.L0807C29C:
	ldr r3, [r7, #8]
	ldr r4, .L0807C2D0 @ =0x00001AA8
	adds r0, r3, r4
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs .L0807C2AE
	movs r2, #1
.L0807C2AE:
	mov sl, r2
	cmp r2, #0
	beq .L0807C2DC
	ldr r1, .L0807C2D4 @ =gUnk_080FDA7C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	ldr r6, .L0807C2D8 @ =0x000006A4
	adds r1, r7, r6
	bl .L0807CF36
	.align 2, 0
.L0807C2D0: .4byte 0x00001AA8
.L0807C2D4: .4byte gUnk_080FDA7C
.L0807C2D8: .4byte 0x000006A4
.L0807C2DC:
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r3, r1
	bl GetStoredBushelCount__C4Coop
	ldr r1, .L0807C2FC @ =0x000003E6
	cmp r0, r1
	bls .L0807C308
	ldr r1, .L0807C300 @ =gUnk_080FDAA8
	adds r0, r7, #0
	bl func_080CABA0
	ldr r2, .L0807C304 @ =0x000006A4
	adds r1, r7, r2
	bl .L0807CF36
	.align 2, 0
.L0807C2FC: .4byte 0x000003E6
.L0807C300: .4byte gUnk_080FDAA8
.L0807C304: .4byte 0x000006A4
.L0807C308:
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetStoredBushelCount__C4Coop
	ldr r1, .L0807C46C @ =0x000003E7
	subs r1, r1, r0
	str r1, [sp, #0x94]
	ldr r4, .L0807C470 @ =0x00000684
	adds r0, r7, r4
	ldr r1, [r5, #8]
	ldr r2, [sp, #0x94]
	movs r3, #5
	bl func_080CA8B4
	ldr r0, [r7, #8]
	movs r5, #0x82
	lsls r5, r5, #3
	adds r0, r0, r5
	bl GetStoredBushelCount__C4Coop
	add r1, sp, #0x30
	movs r2, #7
	bl func_0804EC84
	add r5, sp, #0x7c
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __7ArticleUi
	ldr r6, .L0807C474 @ =0x000022B4
	adds r4, r7, r6
	mov r0, sl
	strb r0, [r4]
	adds r0, r5, #0
	bl GetName__C7Article
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C38A
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C378
	adds r5, r6, #0
.L0807C378:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0807C38A:
	ldr r5, .L0807C478 @ =gUnk_080FDAD4
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C3C0
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C3AE
	adds r5, r6, #0
.L0807C3AE:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807C3C0:
	ldr r0, .L0807C47C @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C3F8
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C3E6
	adds r5, r6, #0
.L0807C3E6:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807C3F8:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C42A
	add r0, sp, #0x30
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C418
	adds r5, r6, #0
.L0807C418:
	mov r0, r8
	add r1, sp, #0x30
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
.L0807C42A:
	ldr r0, .L0807C480 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807C45E
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807C44E
	adds r4, r5, #0
.L0807C44E:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807C45E:
	ldr r0, .L0807C474 @ =0x000022B4
	adds r1, r7, r0
	adds r0, r7, #0
	bl func_080CABEC
	b .L0807C710
	.align 2, 0
.L0807C46C: .4byte 0x000003E7
.L0807C470: .4byte 0x00000684
.L0807C474: .4byte 0x000022B4
.L0807C478: .4byte gUnk_080FDAD4
.L0807C47C: .4byte gUnk_08117828
.L0807C480: .4byte gUnk_08117814
.L0807C484:
	ldr r3, [r7, #8]
	ldr r4, .L0807C4B8 @ =0x00001AA8
	adds r0, r3, r4
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs .L0807C496
	movs r2, #1
.L0807C496:
	cmp r2, #0
	beq .L0807C4C4
	ldr r1, .L0807C4BC @ =gUnk_080FDA7C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	ldr r6, .L0807C4C0 @ =0x000006A4
	adds r1, r7, r6
	bl .L0807CF36
	.align 2, 0
.L0807C4B8: .4byte 0x00001AA8
.L0807C4BC: .4byte gUnk_080FDA7C
.L0807C4C0: .4byte 0x000006A4
.L0807C4C4:
	movs r5, #0
	ldr r1, .L0807C4E8 @ =0x00001C38
	adds r0, r3, r1
	movs r1, #0x4a
	bl GetAvailableSpaceForTool__C8RucksackUi
	adds r6, r0, #0
	ldr r0, [r7, #8]
	ldr r4, .L0807C4EC @ =0x00001C34
	adds r0, r0, r4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807C4F0
	movs r5, #0x63
	b .L0807C522
	.align 2, 0
.L0807C4E8: .4byte 0x00001C38
.L0807C4EC: .4byte 0x00001C34
.L0807C4F0:
	ldr r0, [r7, #8]
	ldr r2, .L0807C558 @ =0x00001C34
	adds r0, r0, r2
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x7d
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x4a
	bne .L0807C522
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L0807C522
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
.L0807C522:
	ldr r0, [r7, #8]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0x4a
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r1, r6, r5
	adds r1, r1, r0
	str r1, [sp, #0x94]
	cmp r1, #0
	bne .L0807C564
	ldr r1, .L0807C55C @ =gUnk_080FDADC
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xe
	bl func_08050E50
	ldr r5, .L0807C560 @ =0x000006A4
	adds r1, r7, r5
	bl .L0807CF36
	.align 2, 0
.L0807C558: .4byte 0x00001C34
.L0807C55C: .4byte gUnk_080FDADC
.L0807C560: .4byte 0x000006A4
.L0807C564:
	ldr r0, [r7, #8]
	ldr r6, .L0807C71C @ =0x00001C38
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	bl GetAmountOfTool__C8RucksackUi
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	bl GetAmountOf__C9ToolChestUi
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ldr r5, .L0807C720 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807C5C2
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x7e
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L0807C5B4
	movs r2, #1
.L0807C5B4:
	cmp r2, #0
	beq .L0807C5C2
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	mov r8, r0
.L0807C5C2:
	mov r2, r8
	adds r0, r6, r2
	adds r0, r0, r4
	add r1, sp, #0x24
	movs r2, #7
	bl func_0804EC84
	mov r5, sp
	adds r5, #0x7f
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r3, .L0807C724 @ =0x000022B4
	adds r4, r7, r3
	movs r6, #0
	mov sl, r6
	mov r0, sl
	strb r0, [r4]
	adds r0, r5, #0
	bl GetName__C4Tool
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C624
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C612
	adds r5, r6, #0
.L0807C612:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0807C624:
	ldr r5, .L0807C728 @ =gUnk_080FDAD4
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C65A
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C648
	adds r5, r6, #0
.L0807C648:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807C65A:
	ldr r0, .L0807C72C @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C692
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C680
	adds r5, r6, #0
.L0807C680:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807C692:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C6C4
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C6B2
	adds r5, r6, #0
.L0807C6B2:
	mov r0, r8
	add r1, sp, #0x24
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
.L0807C6C4:
	ldr r0, .L0807C730 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807C6F8
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807C6E8
	adds r4, r5, #0
.L0807C6E8:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807C6F8:
	ldr r0, .L0807C724 @ =0x000022B4
	adds r1, r7, r0
	adds r0, r7, #0
	bl func_080CABEC
	ldr r1, .L0807C734 @ =0x00000684
	adds r0, r7, r1
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x94]
	movs r3, #5
	bl func_080CA8B4
.L0807C710:
	ldr r2, .L0807C738 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	bl .L0807D054
	.align 2, 0
.L0807C71C: .4byte 0x00001C38
.L0807C720: .4byte 0x00001C34
.L0807C724: .4byte 0x000022B4
.L0807C728: .4byte gUnk_080FDAD4
.L0807C72C: .4byte gUnk_08117828
.L0807C730: .4byte gUnk_08117814
.L0807C734: .4byte 0x00000684
.L0807C738: .4byte 0x000006A4
.L0807C73C:
	ldr r3, [r7, #8]
	ldr r4, .L0807C770 @ =0x00001AA8
	adds r0, r3, r4
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs .L0807C74E
	movs r2, #1
.L0807C74E:
	cmp r2, #0
	beq .L0807C77C
	ldr r1, .L0807C774 @ =gUnk_080FDA7C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	ldr r6, .L0807C778 @ =0x000006A4
	adds r1, r7, r6
	bl .L0807CF36
	.align 2, 0
.L0807C770: .4byte 0x00001AA8
.L0807C774: .4byte gUnk_080FDA7C
.L0807C778: .4byte 0x000006A4
.L0807C77C:
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r3, r4
	bl GetCapacity__C4Coop
	mov r8, r0
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl CountChickens__C4Coop
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	b .L0807C7B0
.L0807C798:
	ldr r0, [r7, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807C7AE
	adds r5, #1
.L0807C7AE:
	adds r4, #1
.L0807C7B0:
	ldr r0, [r7, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetIncubatorCapacity__C4Coop
	cmp r4, r0
	blo .L0807C798
	mov r3, r8
	subs r0, r3, r6
	cmp r0, r5
	bne .L0807C7D8
	ldr r1, .L0807C7D4 @ =gUnk_080FDB0C
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807CF32
	.align 2, 0
.L0807C7D4: .4byte gUnk_080FDB0C
.L0807C7D8:
	ldr r1, .L0807C7F8 @ =gUnk_080FDB38
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xf
	bl func_08050E50
	ldr r6, .L0807C7FC @ =0x000006A4
	adds r1, r7, r6
	movs r0, #3
	str r0, [r1]
	bl .L0807D054
	.align 2, 0
.L0807C7F8: .4byte gUnk_080FDB38
.L0807C7FC: .4byte 0x000006A4
.L0807C800:
	ldr r0, [r7, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUnkEnt__C4Coop
	adds r6, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #7
	ldr r3, .L0807C82C @ =0x000006E4
	adds r0, r7, r3
.L0807C818:
	str r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge .L0807C818
	movs r5, #0
	movs r4, #0x82
	lsls r4, r4, #3
	b .L0807C832
	.align 2, 0
.L0807C82C: .4byte 0x000006E4
.L0807C830:
	adds r5, #1
.L0807C832:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetCapacity__C4Coop
	cmp r5, r0
	bhs .L0807C860
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq .L0807C84A
	cmp r5, r6
	beq .L0807C830
.L0807C84A:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	adds r1, r5, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0807C830
	bl GetGrowthStage__C7Chicken
	cmp r0, #1
	bne .L0807C830
.L0807C860:
	ldr r0, [r7, #8]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetCapacity__C4Coop
	cmp r5, r0
	bne .L0807C880
	ldr r1, .L0807C87C @ =gUnk_080FDB6C
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807CF32
	.align 2, 0
.L0807C87C: .4byte gUnk_080FDB6C
.L0807C880:
	ldr r5, .L0807C8A8 @ =0x000006EC
	adds r2, r7, r5
	movs r0, #0xde
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	subs r0, r0, r1
	asrs r0, r0, #2
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	movs r1, #0
	mov r8, r1
	movs r5, #0
	mov sb, r4
	b .L0807C910
	.align 2, 0
.L0807C8A8: .4byte 0x000006EC
.L0807C8AC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq .L0807C8B8
	cmp r5, r6
	beq .L0807C90E
.L0807C8B8:
	ldr r0, [r7, #8]
	add r0, sb
	adds r1, r5, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0807C90E
	bl GetGrowthStage__C7Chicken
	cmp r0, #1
	bne .L0807C90E
	movs r2, #4
	ldr r3, .L0807C964 @ =0x000006EC
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #7
	bhi .L0807C8EC
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807C8E6
	str r2, [r0]
.L0807C8E6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807C8EC:
	mov r0, r8
	lsls r4, r0, #3
	ldr r1, .L0807C968 @ =0x000006AC
	adds r0, r7, r1
	adds r0, r0, r4
	str r5, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_0807BE74
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	movs r3, #1
	add r8, r3
.L0807C90E:
	adds r5, #1
.L0807C910:
	ldr r0, [r7, #8]
	add r0, sb
	bl GetCapacity__C4Coop
	cmp r5, r0
	blo .L0807C8AC
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_0807B3B0
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	ldr r3, .L0807C96C @ =0x000006A4
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807C964: .4byte 0x000006EC
.L0807C968: .4byte 0x000006AC
.L0807C96C: .4byte 0x000006A4
.L0807C970:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L0807C980
	b .L0807D054
.L0807C980:
	movs r4, #0xd5
	lsls r4, r4, #3
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807C9A8
	ldr r1, .L0807C9A4 @ =gUnk_080FDB9C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	b .L0807C9BC
	.align 2, 0
.L0807C9A4: .4byte gUnk_080FDB9C
.L0807C9A8:
	ldr r1, .L0807C9C8 @ =gUnk_080FDBC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0x11
	bl func_08050E50
.L0807C9BC:
	ldr r0, .L0807C9CC @ =0x000006A4
	adds r1, r7, r0
	movs r0, #9
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807C9C8: .4byte gUnk_080FDBC4
.L0807C9CC: .4byte 0x000006A4
.L0807C9D0:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807C9EA
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r1, #0xde
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0807B920
.L0807C9EA:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r2, .L0807CAF0 @ =0x000006EC
	adds r0, r7, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	ldr r3, .L0807CAF4 @ =0x000006A1
	adds r0, r7, r3
	ldrb r4, [r0]
	cmp r4, #0
	bne .L0807CA06
	b .L0807CB10
.L0807CA06:
	ldr r5, .L0807CAF8 @ =0x00002234
	adds r4, r7, r5
	movs r6, #0
	mov sl, r6
	mov r0, sl
	strb r0, [r4]
	ldr r1, [r7, #0x10]
	lsls r1, r1, #3
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #0x24
	movs r2, #0
	bl func_0804EC84
	ldr r3, .L0807CAFC @ =gUnk_080FDBE8
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r5, r4, r0
	mov r8, r5
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807CA5E
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807CA4C
	adds r5, r6, #0
.L0807CA4C:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r0, r6, r5
	mov r1, sl
	strb r1, [r0]
.L0807CA5E:
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807CA90
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807CA7E
	adds r5, r6, #0
.L0807CA7E:
	mov r0, r8
	add r1, sp, #0x24
	adds r2, r5, #0
	bl memcpy
	mov r3, r8
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
.L0807CA90:
	ldr r5, .L0807CB00 @ =gUnk_080FDA78
	mov r8, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807CAC2
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807CAB2
	adds r4, r5, #0
.L0807CAB2:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807CAC2:
	ldr r6, .L0807CAF8 @ =0x00002234
	adds r1, r7, r6
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r2, .L0807CB04 @ =gUnk_080FDBF8
	ldr r3, .L0807CB08 @ =gUnk_080FDBFC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0xf
	bl func_08050E50
	ldr r2, .L0807CB0C @ =0x000006A4
	adds r1, r7, r2
	movs r0, #8
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CAF0: .4byte 0x000006EC
.L0807CAF4: .4byte 0x000006A1
.L0807CAF8: .4byte 0x00002234
.L0807CAFC: .4byte gUnk_080FDBE8
.L0807CB00: .4byte gUnk_080FDA78
.L0807CB04: .4byte gUnk_080FDBF8
.L0807CB08: .4byte gUnk_080FDBFC
.L0807CB0C: .4byte 0x000006A4
.L0807CB10:
	ldr r3, .L0807CB58 @ =0x000006A3
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807CB1C
	b .L0807D054
.L0807CB1C:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_0807B188
	adds r5, r0, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r3, .L0807CB5C @ =0x000006A4
	adds r0, r7, r3
	str r4, [r0]
	str r4, [r7, #0x10]
	b .L0807CFDE
	.align 2, 0
.L0807CB58: .4byte 0x000006A3
.L0807CB5C: .4byte 0x000006A4
.L0807CB60:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0807CB72
	b .L0807CD10
.L0807CB72:
	ldr r4, .L0807CBD0 @ =0x00000684
	adds r0, r7, r4
	ldr r5, [r0, #0x14]
	mov r8, r5
	bl func_080CAAF4
	add r3, sp, #0x10
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L0807CBD4 @ =gUnk_080FD988
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r2, r5}
	stm r0!, {r2, r5}
	ldr r0, [r7, #8]
	ldr r6, .L0807CBD8 @ =0x00001AA8
	adds r0, r0, r6
	ldr r1, [r3, #8]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	ldr r4, [r4]
	cmp r4, #0
	beq .L0807CBDC
	cmp r4, #1
	beq .L0807CC04
	b .L0807CCF8
	.align 2, 0
.L0807CBD0: .4byte 0x00000684
.L0807CBD4: .4byte gUnk_080FD988
.L0807CBD8: .4byte 0x00001AA8
.L0807CBDC:
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r1, r8
	bl AddStoredBushels__4CoopUi
	ldr r1, .L0807CC00 @ =gUnk_080FDC00
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xe
	bl func_08050E50
	b .L0807CCF8
	.align 2, 0
.L0807CC00: .4byte gUnk_080FDC00
.L0807CC04:
	movs r4, #0
	ldr r0, [r7, #8]
	ldr r5, .L0807CC44 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807CC48
	ldr r5, [r7, #8]
	ldr r6, .L0807CC44 @ =0x00001C34
	adds r5, r5, r6
	add r6, sp, #0x24
	add r4, sp, #0x80
	adds r0, r4, #0
	movs r1, #0x4a
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	mov r2, r8
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	movs r0, #0
	mov r8, r0
	b .L0807CC90
	.align 2, 0
.L0807CC44: .4byte 0x00001C34
.L0807CC48:
	ldr r0, [r7, #8]
	ldr r1, .L0807CCC8 @ =0x00001C34
	adds r0, r0, r1
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x81
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x4a
	bne .L0807CC92
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L0807CC92
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r8, r4
	bhs .L0807CC80
	mov r4, r8
.L0807CC80:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	subs r2, r2, r4
	mov r8, r2
.L0807CC90:
	movs r4, #1
.L0807CC92:
	mov r3, r8
	cmp r3, #0
	beq .L0807CCE4
	ldr r0, [r7, #8]
	ldr r5, .L0807CCCC @ =0x00001C38
	adds r0, r0, r5
	movs r1, #0x4a
	mov r2, r8
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r8, r2
	beq .L0807CCAE
	movs r4, #1
.L0807CCAE:
	cmp r2, #0
	beq .L0807CCE4
	ldr r0, [r7, #8]
	movs r6, #0xe0
	lsls r6, r6, #2
	adds r0, r0, r6
	movs r1, #0x4a
	bl AddAmountOf__9ToolChestUiUi
	cmp r4, #0
	beq .L0807CCD4
	ldr r1, .L0807CCD0 @ =gUnk_080FDC58
	b .L0807CCD6
	.align 2, 0
.L0807CCC8: .4byte 0x00001C34
.L0807CCCC: .4byte 0x00001C38
.L0807CCD0: .4byte gUnk_080FDC58
.L0807CCD4:
	ldr r1, .L0807CCE0 @ =gUnk_080FDCBC
.L0807CCD6:
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807CCEC
	.align 2, 0
.L0807CCE0: .4byte gUnk_080FDCBC
.L0807CCE4:
	ldr r1, .L0807CD08 @ =gUnk_080FDD04
	adds r0, r7, #0
	bl func_080CABA0
.L0807CCEC:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xf
	bl func_08050E50
.L0807CCF8:
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L0807CD0C @ =0x000006A4
	adds r1, r7, r3
	b .L0807CF36
	.align 2, 0
.L0807CD08: .4byte gUnk_080FDD04
.L0807CD0C: .4byte 0x000006A4
.L0807CD10:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807CD38
	ldr r5, .L0807CD30 @ =0x00000684
	adds r0, r7, r5
	bl func_080CAAF4
	ldr r6, .L0807CD34 @ =0x000006A4
	adds r0, r7, r6
	str r4, [r0]
	b .L0807CFDE
	.align 2, 0
.L0807CD30: .4byte 0x00000684
.L0807CD34: .4byte 0x000006A4
.L0807CD38:
	ldr r0, .L0807CD4C @ =0x00000684
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne .L0807CD44
	b .L0807D054
.L0807CD44:
	adds r0, r1, #0
	bl func_080CA98C
	b .L0807D054
	.align 2, 0
.L0807CD4C: .4byte 0x00000684
.L0807CD50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r6, [r0]
	cmp r6, #3
	beq .L0807CD5E
	b .L0807D054
.L0807CD5E:
	add r3, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L0807CE2C @ =gUnk_080FD988
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r4, r5}
	stm r0!, {r4, r5}
	ldr r0, [r7, #8]
	ldr r1, .L0807CE30 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [r3, #8]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	add r1, sp, #0x2c
	movs r4, #0x11
	ldrh r2, [r1]
	ldr r3, .L0807CE34 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0x90
	ldrb r2, [r1, #1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #1]
	movs r4, #1
	ldrh r2, [r1, #2]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r6, r0
	orrs r6, r5
	strb r6, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r4
	strh r3, [r1, #4]
	add r4, sp, #0x24
	movs r5, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
	add r5, sp, #0x40
	ldr r1, .L0807CE38 @ =gUnk_080FD964
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #7
	bl __7ChickenPCcRC13ActorLocationUiUi
	ldr r0, [r7, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r5, #0
	bl InsertChicken__4CoopRC7Chicken
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, .L0807CE3C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r3, .L0807CE40 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #0xa
	str r0, [r1]
	ldr r5, .L0807CE44 @ =0x00002318
	adds r0, r7, r5
	str r4, [r0]
	b .L0807D054
	.align 2, 0
.L0807CE2C: .4byte gUnk_080FD988
.L0807CE30: .4byte 0x00001AA8
.L0807CE34: .4byte 0xFFFFFC00
.L0807CE38: .4byte gUnk_080FD964
.L0807CE3C: .4byte 0x00000889
.L0807CE40: .4byte 0x000006A4
.L0807CE44: .4byte 0x00002318
.L0807CE48:
	ldr r1, .L0807CE70 @ =gUnk_080FDD1C
	adds r0, r7, #0
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xf
	bl func_08050E50
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, .L0807CE74 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #5
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CE70: .4byte gUnk_080FDD1C
.L0807CE74: .4byte 0x000006A4
.L0807CE78:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CE86
	b .L0807D054
.L0807CE86:
	ldr r1, .L0807CEA0 @ =gUnk_080FDD68
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xe
	bl func_08050E50
	ldr r5, .L0807CEA4 @ =0x000006A4
	adds r1, r7, r5
	b .L0807CF36
	.align 2, 0
.L0807CEA0: .4byte gUnk_080FDD68
.L0807CEA4: .4byte 0x000006A4
.L0807CEA8:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CEB6
	b .L0807D054
.L0807CEB6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_08050E5C
	ldr r2, .L0807CED0 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CED0: .4byte 0x000006A4
.L0807CED4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CEE2
	b .L0807D054
.L0807CEE2:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_0807B188
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	ldr r1, .L0807CF3C @ =gUnk_080FDD68
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xe
	bl func_08050E50
.L0807CF32:
	ldr r4, .L0807CF40 @ =0x000006A4
	adds r1, r7, r4
.L0807CF36:
	movs r0, #6
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CF3C: .4byte gUnk_080FDD68
.L0807CF40: .4byte 0x000006A4
.L0807CF44:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CF52
	b .L0807D054
.L0807CF52:
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	adds r5, r0, #0
	cmp r5, #1
	beq .L0807CF6A
	cmp r5, #2
	beq .L0807CFD0
	b .L0807D054
.L0807CF6A:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, .L0807CFC0 @ =0x000006AC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x84]
	str r1, [sp, #0x88]
	ldr r0, [r7, #8]
	ldr r2, .L0807CFC4 @ =0x00001AA8
	adds r0, r0, r2
	ldr r1, [sp, #0x88]
	bl func_0809ABD8
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, [sp, #0x84]
	bl Remove__4CoopUi
	ldr r1, .L0807CFC8 @ =gUnk_080FDD84
	adds r0, r7, #0
	bl func_080CABA0
	adds r0, r4, #0
	movs r1, #0xf
	bl func_08050E50
	ldr r4, .L0807CFCC @ =0x000006A4
	adds r1, r7, r4
	movs r0, #7
	str r0, [r1]
	movs r6, #0xd5
	lsls r6, r6, #3
	adds r0, r7, r6
	strb r5, [r0]
	b .L0807D054
	.align 2, 0
.L0807CFC0: .4byte 0x000006AC
.L0807CFC4: .4byte 0x00001AA8
.L0807CFC8: .4byte gUnk_080FDD84
.L0807CFCC: .4byte 0x000006A4
.L0807CFD0:
	adds r0, r4, #0
	bl func_08050E5C
	ldr r1, .L0807CFE8 @ =0x000006A4
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
.L0807CFDE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L0807D054
	.align 2, 0
.L0807CFE8: .4byte 0x000006A4
.L0807CFEC:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807D054
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0807D054
	movs r3, #1
	str r3, [sp, #0x90]
	ldr r1, .L0807D028 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0807D054
	.align 2, 0
.L0807D028: .4byte 0x00000889
.L0807D02C:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0807D054
	ldr r4, .L0807D050 @ =0x00002318
	adds r0, r7, r4
	ldr r4, [r0]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	adds r0, r4, #0
	b .L0807D05E
	.align 2, 0
.L0807D050: .4byte 0x00002318
.L0807D054:
	adds r0, r7, #0
	bl func_080C96C4
	bl sub_0807C194
.L0807D05E:
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

