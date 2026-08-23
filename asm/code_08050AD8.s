    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_08050AD8
func_08050AD8: @ 0x08050AD8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	blo .L08050AEA
	bl func_080ADD20
	cmp r5, r0
	blo .L08050AF2
.L08050AEA:
	adds r0, r4, #0
	bl func_08050B3C
	b .L08050B36
.L08050AF2:
	movs r0, #0xee
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq .L08050B0E
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r5
	beq .L08050B36
	b .L08050B14
.L08050B0E:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
.L08050B14:
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r1, r5, #0
	bl func_080ADCA4
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
.L08050B36:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_08050B3C
func_08050B3C: @ 0x08050B3C
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_08050B50
func_08050B50: @ 0x08050B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r4, r1, #0
	cmp r4, #0
	beq .L08050B6E
	adds r0, r4, #0
	bl strlen
	adds r6, r0, #0
	b .L08050B70
.L08050B6E:
	movs r6, #0
.L08050B70:
	subs r0, r6, #1
	cmp r0, #0xb
	bls .L08050B7E
	mov r0, r8
	bl func_08050C18
	b .L08050C06
.L08050B7E:
	adds r7, r4, #0
	movs r5, #0
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x14]
	movs r2, #4
	mov sl, r2
	movs r0, #2
	mov sb, r0
.L08050B90:
	lsls r1, r5, #6
	adds r1, r1, r5
	lsls r1, r1, #2
	add r1, r8
	add r0, sp, #0xc
	mov r2, sl
	strh r2, [r0]
	mov r2, sb
	ldr r0, [sp, #0x14]
	strh r2, [r0, #2]
	ldr r0, [sp, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r4, r1, r2
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	adds r5, #1
	cmp r6, #0
	beq .L08050BF0
	add r2, sp, #4
	adds r1, r4, #0
	add r4, sp, #0x10
	add r3, sp, #8
.L08050BC2:
	ldrb r0, [r7]
	strb r0, [r2]
	adds r7, #1
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	beq .L08050BD4
	cmp r2, r3
	bne .L08050BC2
.L08050BD4:
	movs r0, #0
	strb r0, [r2]
	add r0, sp, #0x10
	mov r2, sl
	strh r2, [r0]
	mov r0, sb
	strh r0, [r4, #2]
	ldr r0, [sp, #0x10]
	add r2, sp, #4
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
.L08050BF0:
	cmp r5, #2
	bls .L08050B90
	movs r2, #0xf8
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
.L08050C06:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050C18
func_08050C18: @ 0x08050C18
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_08050C2C
func_08050C2C: @ 0x08050C2C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, .L08050C44 @ =0x00000504
	adds r0, r2, r1
	ldrh r0, [r0, #0x20]
	cmp r3, r0
	blo .L08050C48
	adds r0, r2, #0
	bl func_08050C64
	b .L08050C5C
	.align 2, 0
.L08050C44: .4byte 0x00000504
.L08050C48:
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r2, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, .L08050C60 @ =0x00000534
	adds r0, r2, r1
	adds r1, r3, #0
	bl func_0805E860
.L08050C5C:
	pop {r0}
	bx r0
	.align 2, 0
.L08050C60: .4byte 0x00000534

	thumb_func_start func_08050C64
func_08050C64: @ 0x08050C64
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
.L08050C70:
	.byte 0x10, 0xB5, 0x83, 0xB0, 0x04, 0x1C, 0x02, 0xAA, 0x00, 0x20, 0x10, 0x70, 0x68, 0x46, 0x12, 0x1A
	.byte 0x00, 0x21, 0x82, 0xF0, 0xFF, 0xFE, 0x68, 0x46, 0x02, 0x30, 0x01, 0x22, 0x02, 0x70, 0x69, 0x46
	.byte 0x03, 0x31, 0x15, 0x20, 0x08, 0x70, 0x68, 0x46, 0x07, 0x30, 0x02, 0x70, 0x21, 0x1C, 0x68, 0x46
	.byte 0x0C, 0xC8, 0x0C, 0xC1, 0x20, 0x1C, 0x03, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x03, 0x21, 0x02, 0x48, 0x02, 0x40, 0x0A, 0x43, 0x10, 0x1C, 0x70, 0x47, 0x00, 0xFF, 0xFF, 0xFF

	thumb_func_start func_08050CC0
func_08050CC0: @ 0x08050CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sb, r1
	mov sl, r2
	adds r7, r3, #0
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r6, [sp, #0x34]
	ldr r0, .L08050D08 @ =0x00000554
	bl __builtin_new
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r1, sb
	mov r2, sl
	adds r3, r7, #0
	bl func_0804F288
	mov r1, r8
	str r0, [r1]
	mov r0, r8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08050D08: .4byte 0x00000554

	thumb_func_start func_08050D0C
func_08050D0C: @ 0x08050D0C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq .L08050D1E
	movs r1, #3
	bl func_0804F69C
.L08050D1E:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L08050D2C
	adds r0, r4, #0
	bl __builtin_delete
.L08050D2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050D34
func_08050D34: @ 0x08050D34
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
