	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0807EE84
func_0807EE84: @ 0x0807EE84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_0807E558
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0807EEA0
func_0807EEA0: @ 0x0807EEA0
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L0807EECC @ =vtable_unk_080E7C5C
	str r0, [r4, #4]
	ldr r1, .L0807EED0 @ =0x000006A4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0807EECC: .4byte vtable_unk_080E7C5C
.L0807EED0: .4byte 0x000006A4

	thumb_func_start func_0807EED4
func_0807EED4: @ 0x0807EED4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0807EEF8 @ =vtable_unk_080E7C5C
	str r0, [r4, #4]
	ldr r1, .L0807EEFC @ =0x000006AC
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080C8360
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0807EEF8: .4byte vtable_unk_080E7C5C
.L0807EEFC: .4byte 0x000006AC

	thumb_func_start func_0807EF00
func_0807EF00: @ 0x0807EF00
	ldr r2, .L0807EF10 @ =0x000006AC
	adds r1, r1, r2
	ldr r3, [r1]
	movs r2, #0
	str r2, [r1]
	str r3, [r0]
	bx lr
	.align 2, 0
.L0807EF10: .4byte 0x000006AC

	thumb_func_start func_0807EF14
func_0807EF14: @ 0x0807EF14
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r5, .L0807EF68 @ =gUnk_080FE2D8
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
	bne .L0807EF6C
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
	b .L0807EF88
	.align 2, 0
.L0807EF68: .4byte gUnk_080FE2D8
.L0807EF6C:
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
.L0807EF88:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_0807EF90
func_0807EF90: @ 0x0807EF90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807EFC8
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807EFC2
	movs r0, #0
	str r0, [r2]
.L0807EFC2:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807EFC8:
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #0x11
	bhi .L0807F06E
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807EFF4
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807EFEE
	movs r0, #1
	str r0, [r2]
.L0807EFEE:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807EFF4:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F014
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F00E
	movs r0, #2
	str r0, [r2]
.L0807F00E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F014:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F034
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F02E
	movs r0, #3
	str r0, [r2]
.L0807F02E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F034:
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F054
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F04E
	movs r0, #4
	str r0, [r2]
.L0807F04E:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F054:
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F0CE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F0C8
	movs r0, #5
	b .L0807F0C6
.L0807F06E:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F08E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F088
	movs r0, #6
	str r0, [r2]
.L0807F088:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F08E:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F0AE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F0A8
	movs r0, #7
	str r0, [r2]
.L0807F0A8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F0AE:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807F0CE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807F0C8
	movs r0, #8
.L0807F0C6:
	str r0, [r2]
.L0807F0C8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807F0CE:
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r4, #4
	str r4, [sp, #0xe0]
	add r6, sp, #0x34
	ldr r1, .L0807F194 @ =gUnk_086678A0
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
	movs r5, #0
	mov sb, r5
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	add r6, sp, #0xbc
	cmp sb, r0
	blo .L0807F13E
	b .L0807F24C
.L0807F13E:
	add r0, sp, #0x18
	mov r8, r0
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r1, r7, r1
	str r1, [sp, #0xe4]
	mov sl, r8
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r5, r7, r2
	subs r3, #0x34
	str r3, [sp, #0xe8]
.L0807F156:
	add r1, sp, #8
	ldr r4, [sp, #0xe0]
	lsls r0, r4, #3
	strh r0, [r1]
	ldr r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L0807F198 @ =gUnk_080FE2D8
	mov r1, r8
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne .L0807F19C
	ldr r1, [sp, #0x18]
	adds r0, r6, #0
	bl __4FoodUi
	adds r0, r6, #0
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b .L0807F19E
	.align 2, 0
.L0807F194: .4byte gUnk_086678A0
.L0807F198: .4byte gUnk_080FE2D8
.L0807F19C:
	ldr r1, [sp, #0x18]
.L0807F19E:
	ldr r0, [sp, #0xe8]
	bl func_0805E860
	ldr r1, [sp, #0x68]
	ldr r3, [r1]
	ldr r4, [sp, #0xe8]
	ldrh r2, [r4, #0xc]
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
	bhi .L0807F202
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807F1FC
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807F1FC:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0807F202:
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
	blo .L0807F156
.L0807F24C:
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
	bl func_0807EF14
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
	ldr r0, .L0807F30C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [r6]
	ldr r1, .L0807F310 @ =0x00000889
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
	mov sb, r6
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r5, r7, r5
	str r5, [sp, #0xf0]
	ldr r6, .L0807F314 @ =0x000006AC
	adds r6, r6, r7
	mov r8, r6
.L0807F2D0:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807F2EC
	b .L0807F54E
.L0807F2EC:
	ldr r1, [sp, #0xec]
	cmp r1, #0
	beq .L0807F2F4
	b .L0807F55C
.L0807F2F4:
	ldr r2, .L0807F318 @ =0x000006A4
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r0, #1
	bne .L0807F300
	b .L0807F46C
.L0807F300:
	cmp r0, #1
	bgt .L0807F31C
	cmp r0, #0
	beq .L0807F32A
	b .L0807F54E
	.align 2, 0
.L0807F30C: .4byte vtable_unk_080E5B80
.L0807F310: .4byte 0x00000889
.L0807F314: .4byte 0x000006AC
.L0807F318: .4byte 0x000006A4
.L0807F31C:
	cmp r0, #2
	bne .L0807F322
	b .L0807F49E
.L0807F322:
	cmp r0, #3
	bne .L0807F328
	b .L0807F520
.L0807F328:
	b .L0807F54E
.L0807F32A:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807F338
	adds r0, r7, #0
	bl func_0807EF14
.L0807F338:
	ldr r3, .L0807F3BC @ =0x000006A1
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807F430
	add r3, sp, #0x18
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	ldr r5, [sp, #0xf0]
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L0807F3C0 @ =gUnk_080FE2D8
	adds r1, r3, #0
	adds r0, r0, r2
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r7, #8]
	ldr r6, .L0807F3C4 @ =0x00001AA8
	adds r0, r0, r6
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r3, #4]
	mov sl, r3
	cmp r1, r0
	blo .L0807F37C
	movs r2, #1
.L0807F37C:
	cmp r2, #0
	beq .L0807F410
	movs r0, #2
	str r0, [r4]
	movs r0, #0x10
	bl __builtin_new
	adds r5, r0, #0
	ldr r0, .L0807F3C8 @ =0x000006AC
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r5, r0
	beq .L0807F39A
	bl __builtin_delete
.L0807F39A:
	str r5, [r4]
	mov r1, sl
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne .L0807F3CC
	add r4, sp, #0xc0
	ldr r1, [sp, #0x18]
	adds r0, r4, #0
	bl __4FoodUi
	adds r0, r4, #0
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b .L0807F3CE
	.align 2, 0
.L0807F3BC: .4byte 0x000006A1
.L0807F3C0: .4byte gUnk_080FE2D8
.L0807F3C4: .4byte 0x00001AA8
.L0807F3C8: .4byte 0x000006AC
.L0807F3CC:
	ldr r0, [sp, #0x18]
.L0807F3CE:
	str r0, [r5]
	mov r2, r8
	ldr r1, [r2]
	mov r3, sl
	ldr r0, [r3, #0x18]
	str r0, [r1, #4]
	ldr r0, [r7, #8]
	ldr r4, .L0807F40C @ =0x00001C2C
	adds r0, r0, r4
	ldrh r1, [r1]
	bl func_0800F510
	ldr r0, [r7, #8]
	subs r4, #0x54
	adds r0, r0, r4
	mov r5, sl
	ldr r1, [r5, #0x10]
	bl func_0800E9E4
	ldr r0, [r7, #8]
	adds r0, r0, r4
	ldr r1, [r5, #0x14]
	bl func_0800EA68
	mov r6, r8
	ldr r1, [r6]
	ldr r0, [r5, #0x10]
	str r0, [r1, #8]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0xc]
	b .L0807F456
	.align 2, 0
.L0807F40C: .4byte 0x00001C2C
.L0807F410:
	adds r0, r7, #0
	ldr r1, .L0807F42C @ =gUnk_080FE3D4
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x55
	bl func_08050E50
	movs r2, #1
	str r2, [r4]
	b .L0807F456
	.align 2, 0
.L0807F42C: .4byte gUnk_080FE3D4
.L0807F430:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807F456
	adds r0, r7, #0
	ldr r1, .L0807F468 @ =gUnk_080FE404
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x53
	bl func_08050E50
	movs r0, #3
	str r0, [r4]
.L0807F456:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r4, [sp, #0xf0]
	ldr r1, [r4]
	adds r0, r7, #0
	bl func_080C9020
	b .L0807F54E
	.align 2, 0
.L0807F468: .4byte gUnk_080FE404
.L0807F46C:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r1, [r0]
	cmp r1, #3
	bne .L0807F54E
	movs r6, #0xd5
	lsls r6, r6, #3
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807F488
	str r1, [r4]
	b .L0807F54E
.L0807F488:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_08050E5C
	ldr r2, [sp, #0xec]
	str r2, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L0807F54E
.L0807F49E:
	add r3, sp, #0x18
	mov sl, r3
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	ldr r5, [sp, #0xf0]
	adds r0, r5, r0
	ldr r3, [r0]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r2, .L0807F510 @ =gUnk_080FE2D8
	mov r1, sl
	adds r0, r0, r2
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	cmp r3, #0
	beq .L0807F4D6
	ldr r0, [r7, #8]
	ldr r6, .L0807F514 @ =0x00001CD4
	adds r0, r0, r6
	movs r1, #1
	bl func_080A0A1C
.L0807F4D6:
	ldr r0, [r7, #8]
	ldr r1, .L0807F518 @ =0x00001AA8
	adds r0, r0, r1
	mov r2, sl
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
	ldr r1, .L0807F51C @ =gUnk_080FE448
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0x54
	bl func_08050E50
	movs r0, #1
	str r0, [r4]
	b .L0807F54E
	.align 2, 0
.L0807F510: .4byte gUnk_080FE2D8
.L0807F514: .4byte 0x00001CD4
.L0807F518: .4byte 0x00001AA8
.L0807F51C: .4byte gUnk_080FE448
.L0807F520:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807F54E
	movs r2, #1
	str r2, [sp, #0xec]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r1, .L0807F558 @ =0x00000889
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	mov r3, sb
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L0807F54E:
	adds r0, r7, #0
	bl func_080C96C4
	b .L0807F2D0
	.align 2, 0
.L0807F558: .4byte 0x00000889
.L0807F55C:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L0807F57C @ =vtable_unk_080E5A28
	str r0, [sp, #0x34]
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807F57C: .4byte vtable_unk_080E5A28
