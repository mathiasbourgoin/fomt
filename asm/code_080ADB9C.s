	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED
	thumb_func_start func_080ADBB4
func_080ADBB4: @ 0x080ADBB4
	push {r4, lr}
	sub sp, #8
	ldrb r2, [r0]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, .L080ADBFC @ =gUnk_081074F6
	adds r4, r0, #0
	adds r4, #0x1b
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	add r2, sp, #4
	movs r3, #0
	bl func_080E0E80
	adds r1, r0, #0
	movs r2, #0
	cmp r1, r4
	beq .L080ADBF2
	ldr r0, [sp, #4]
	ldrb r1, [r1]
	cmp r0, r1
	blo .L080ADBF2
	movs r2, #1
.L080ADBF2:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080ADBFC: .4byte gUnk_081074F6

	thumb_func_start func_080ADC00
func_080ADC00: @ 0x080ADC00
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl __builtin_new
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2]
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #8
	str r0, [r2, #8]
	strh r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x10]
	strh r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x18]
	strh r0, [r1, #4]
	str r2, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
.L080ADC30:
	.byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x8E, 0xB0, 0x80, 0x46, 0x0D, 0x1C, 0x20, 0x20, 0x52, 0xF7
	.byte 0xC9, 0xFC, 0x06, 0x1C, 0x0D, 0x49, 0x68, 0x46, 0xB0, 0xF7, 0x40, 0xFD, 0x00, 0x9C, 0x0C, 0xA8
	.byte 0xE3, 0x68, 0x69, 0x46, 0x2A, 0x1C, 0x25, 0xF0, 0x5F, 0xFE, 0x0C, 0x98, 0x02, 0x88, 0x30, 0x1C
	.byte 0x23, 0x69, 0x69, 0x46, 0x25, 0xF0, 0x58, 0xFE, 0x05, 0x48, 0x00, 0x90, 0x40, 0x46, 0x06, 0x60
	.byte 0x0E, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x84, 0xD9, 0x52, 0x08
	.byte 0x28, 0x5A, 0x0E, 0x08

	thumb_func_start func_080ADC84
func_080ADC84: @ 0x080ADC84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	bl __builtin_delete
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq .L080ADC9E
	adds r0, r5, #0
	bl __builtin_delete
.L080ADC9E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080ADCA4
func_080ADCA4: @ 0x080ADCA4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x58
	mov r8, r1
	ldr r4, [r0]
	ldr r1, .L080ADD00 @ =gUnk_0852D984
	add r0, sp, #0x20
	bl func_0805E6CC
	add r6, sp, #0x20
	ldr r5, [sp, #0x20]
	add r0, sp, #0x50
	ldr r3, [r5, #0xc]
	adds r1, r6, #0
	mov r2, r8
	bl _call_via_r3
	ldr r0, [sp, #0x50]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r5, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r0, .L080ADD04 @ =vtable_unk_080E5A28
	str r0, [sp, #0x20]
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	add sp, #0x58
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080ADD00: .4byte gUnk_0852D984
.L080ADD04: .4byte vtable_unk_080E5A28
