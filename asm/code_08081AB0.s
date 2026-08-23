.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08081B40
func_08081B40: @ 0x08081B40
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r5, .L08081B94 @ =gUnk_080FEB60
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08081B98
	lsls r0, r3, #2
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	mov r0, sp
	bl __4FoodUi
	mov r0, sp
	bl GetDesc__C4Food
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CABEC
	b .L08081BB4
	.align 2, 0
.L08081B94: .4byte gUnk_080FEB60
.L08081B98:
	lsls r0, r3, #2
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl func_080CABEC
.L08081BB4:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_08081BBC
func_08081BBC: @ 0x08081BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08081BF4
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081BEE
	movs r0, #0
	str r0, [r2]
.L08081BEE:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08081BF4:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08081C14
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081C0E
	movs r0, #1
	str r0, [r2]
.L08081C0E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08081C14:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08081C34
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081C2E
	movs r0, #2
	str r0, [r2]
.L08081C2E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08081C34:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08081C54
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081C4E
	movs r0, #3
	str r0, [r2]
.L08081C4E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08081C54:
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08081C74
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081C6E
	movs r0, #4
	str r0, [r2]
.L08081C6E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08081C74:
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r6, #4
	str r6, [sp, #0xe0]
	add r6, sp, #0x34
	ldr r1, .L08081D38 @ =gUnk_086678A0
	adds r0, r6, #0
	bl func_0805E6CC
	add r0, sp, #0x64
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x68
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x7c
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
	add r0, sp, #0x98
	strb r5, [r0]
	add r3, sp, #0x9c
	str r4, [r3]
	strh r4, [r3, #4]
	add r2, sp, #0xa4
	str r4, [r2]
	strh r4, [r2, #4]
	add r1, sp, #0xac
	str r4, [r1]
	strh r4, [r1, #4]
	add r0, sp, #0xb4
	str r4, [r0]
	strh r4, [r0, #4]
	movs r0, #0
	mov sb, r0
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	add r6, sp, #0xbc
	cmp sb, r0
	blo .L08081CE4
	b .L08081DF0
.L08081CE4:
	add r5, sp, #0x18
	mov r8, r5
	adds r0, r4, #0
	adds r0, r7, r0
	str r0, [sp, #0xe4]
	mov sl, r8
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r5, r7, r1
	subs r2, #0x3c
	str r2, [sp, #0xe8]
.L08081CFA:
	add r1, sp, #8
	ldr r3, [sp, #0xe0]
	lsls r0, r3, #3
	strh r0, [r1]
	ldr r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L08081D3C @ =gUnk_080FEB60
	mov r1, r8
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r4, r8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne .L08081D40
	ldr r1, [sp, #0x18]
	adds r0, r6, #0
	bl __4FoodUi
	adds r0, r6, #0
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b .L08081D42
	.align 2, 0
.L08081D38: .4byte gUnk_086678A0
.L08081D3C: .4byte gUnk_080FEB60
.L08081D40:
	ldr r1, [sp, #0x18]
.L08081D42:
	ldr r0, [sp, #0xe8]
	bl func_0805E860
	ldr r1, [sp, #0x68]
	ldr r3, [r1]
	ldr r0, [sp, #0xe8]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x6c]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xc0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xc0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x9c
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x14]
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L08081DA6
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08081DA0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08081DA0:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L08081DA6:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r3, [sp, #0xe0]
	lsls r4, r3, #6
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, sl
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
	ldr r0, [sp, #0xe0]
	adds r0, #2
	str r0, [sp, #0xe0]
	adds r5, #4
	movs r1, #1
	add sb, r1
	ldr r2, [sp, #0xe4]
	ldr r0, [r2]
	cmp sb, r0
	blo .L08081CFA
.L08081DF0:
	ldr r0, [r7, #0x1c]
	movs r3, #0xc
	ldrsh r1, [r7, r3]
	bl func_08075C88
	ldr r0, [r7, #0x1c]
	ldr r1, [sp, #0xe0]
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_08081B40
	adds r0, r7, #0
	bl func_08008918
	movs r1, #0x3f
	strh r1, [r6]
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
	ldr r0, .L08081EB4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [r6]
	ldr r1, .L08081EB8 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r6]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r4, #0
	str r4, [sp, #0xec]
	str r6, [sp, #0xf0]
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r5, r7, r5
	str r5, [sp, #0xf4]
	ldr r6, .L08081EBC @ =0x000006AC
	adds r6, r6, r7
	mov sb, r6
	add r0, sp, #0x18
	mov r8, r0
.L08081E78:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r1, [sp, #0xf0]
	ldr r3, [r1]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08081E94
	b .L080820E2
.L08081E94:
	ldr r2, [sp, #0xec]
	cmp r2, #0
	beq .L08081E9C
	b .L080820F0
.L08081E9C:
	ldr r5, .L08081EC0 @ =0x000006A4
	adds r4, r7, r5
	ldr r0, [r4]
	cmp r0, #1
	bne .L08081EA8
	b .L08082018
.L08081EA8:
	cmp r0, #1
	bgt .L08081EC4
	cmp r0, #0
	beq .L08081ED2
	b .L080820E2
	.align 2, 0
.L08081EB4: .4byte vtable_unk_080E5B80
.L08081EB8: .4byte 0x00000889
.L08081EBC: .4byte 0x000006AC
.L08081EC0: .4byte 0x000006A4
.L08081EC4:
	cmp r0, #2
	bne .L08081ECA
	b .L0808204A
.L08081ECA:
	cmp r0, #3
	bne .L08081ED0
	b .L080820B4
.L08081ED0:
	b .L080820E2
.L08081ED2:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L08081EE0
	adds r0, r7, #0
	bl func_08081B40
.L08081EE0:
	ldr r6, .L08081F64 @ =0x000006A1
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08081FDC
	add r3, sp, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	ldr r1, [sp, #0xf4]
	adds r0, r1, r0
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L08081F68 @ =gUnk_080FEB60
	adds r1, r3, #0
	adds r0, r0, r2
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r7, #8]
	ldr r1, .L08081F6C @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r3, #4]
	mov sl, r3
	cmp r1, r0
	blo .L08081F24
	movs r2, #1
.L08081F24:
	cmp r2, #0
	beq .L08081FBC
	movs r0, #2
	str r0, [r4]
	movs r0, #0x10
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, .L08081F70 @ =0x000006AC
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r5, r0
	beq .L08081F42
	bl __builtin_delete
.L08081F42:
	str r5, [r4]
	mov r3, sl
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne .L08081F74
	add r4, sp, #0xc0
	ldr r1, [sp, #0x18]
	adds r0, r4, #0
	bl __4FoodUi
	adds r0, r4, #0
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b .L08081F76
	.align 2, 0
.L08081F64: .4byte 0x000006A1
.L08081F68: .4byte gUnk_080FEB60
.L08081F6C: .4byte 0x00001AA8
.L08081F70: .4byte 0x000006AC
.L08081F74:
	ldr r0, [sp, #0x18]
.L08081F76:
	str r0, [r5]
	mov r4, sb
	ldr r1, [r4]
	mov r5, sl
	ldr r0, [r5, #0x18]
	str r0, [r1, #4]
	ldr r0, [r7, #8]
	ldr r6, .L08081FB4 @ =0x00001C2C
	adds r0, r0, r6
	ldrh r1, [r1]
	bl func_0800F510
	ldr r0, [r7, #8]
	ldr r4, .L08081FB8 @ =0x00001BD8
	adds r0, r0, r4
	ldr r1, [r5, #0x10]
	bl func_0800E9E4
	ldr r0, [r7, #8]
	adds r0, r0, r4
	ldr r1, [r5, #0x14]
	bl func_0800EA68
	mov r0, sb
	ldr r1, [r0]
	ldr r0, [r5, #0x10]
	str r0, [r1, #8]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0xc]
	b .L08082002
	.align 2, 0
.L08081FB4: .4byte 0x00001C2C
.L08081FB8: .4byte 0x00001BD8
.L08081FBC:
	adds r0, r7, #0
	ldr r1, .L08081FD8 @ =gUnk_080FEBEC
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x9d
	bl func_08050E50
	movs r2, #1
	str r2, [r4]
	b .L08082002
	.align 2, 0
.L08081FD8: .4byte gUnk_080FEBEC
.L08081FDC:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08082002
	adds r0, r7, #0
	ldr r1, .L08082014 @ =gUnk_080FEC14
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x99
	bl func_08050E50
	movs r0, #3
	str r0, [r4]
.L08082002:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r4, [sp, #0xf4]
	ldr r1, [r4]
	adds r0, r7, #0
	bl func_080C9020
	b .L080820E2
	.align 2, 0
.L08082014: .4byte gUnk_080FEC14
.L08082018:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r1, [r0]
	cmp r1, #3
	bne .L080820E2
	movs r6, #0xd5
	lsls r6, r6, #3
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08082034
	str r1, [r4]
	b .L080820E2
.L08082034:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_08050E5C
	ldr r2, [sp, #0xec]
	str r2, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L080820E2
.L0808204A:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	ldr r3, [sp, #0xf4]
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L080820A8 @ =gUnk_080FEB60
	mov r1, r8
	adds r0, r0, r2
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r7, #8]
	ldr r1, .L080820AC @ =0x00001AA8
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #4]
	bl func_0809ACC0
	movs r3, #0xd5
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r5, #1
	strb r5, [r0]
	adds r0, r7, #0
	bl func_080C8550
	adds r0, r7, #0
	ldr r1, .L080820B0 @ =gUnk_080FEC44
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0x9a
	bl func_08050E50
	movs r0, #1
	str r0, [r4]
	b .L080820E2
	.align 2, 0
.L080820A8: .4byte gUnk_080FEB60
.L080820AC: .4byte 0x00001AA8
.L080820B0: .4byte gUnk_080FEC44
.L080820B4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	bne .L080820E2
	movs r2, #1
	str r2, [sp, #0xec]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r1, .L080820EC @ =0x00000889
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0xf0]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080820E2:
	adds r0, r7, #0
	bl func_080C96C4
	b .L08081E78
	.align 2, 0
.L080820EC: .4byte 0x00000889
.L080820F0:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L08082110 @ =vtable_unk_080E5A28
	str r0, [sp, #0x34]
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08082110: .4byte vtable_unk_080E5A28
